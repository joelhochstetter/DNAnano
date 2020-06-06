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
	<24.515453, 34.529789, 35.209026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.600122, 34.894436, 35.068085>,  <24.650925, 35.113224, 34.983521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.600122, 34.894436, 35.068085>,  <24.515453, 34.529789, 35.209026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.600122, 34.894436, 35.068085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062191, 0.372356, 0.926004,
		0.975359, -0.174098, 0.135513,
		0.211675, 0.911614, -0.352354,
		24.663626, 35.167919, 34.962379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.129330, 34.835369, 35.586246>,  <24.515453, 34.529789, 35.209026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.129330, 34.835369, 35.586246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860626, 35.094795, 35.443081>,  <24.699404, 35.250450, 35.357182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860626, 35.094795, 35.443081>,  <25.129330, 34.835369, 35.586246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860626, 35.094795, 35.443081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240614, 0.265933, 0.933480,
		0.700603, 0.713194, -0.022589,
		-0.671759, 0.648563, -0.357918,
		24.659098, 35.289364, 35.335705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267483, 35.448914, 35.909424>,  <25.129330, 34.835369, 35.586246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267483, 35.448914, 35.909424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890018, 35.450359, 35.777069>,  <24.663540, 35.451229, 35.697655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890018, 35.450359, 35.777069>,  <25.267483, 35.448914, 35.909424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890018, 35.450359, 35.777069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320814, 0.235116, 0.917496,
		0.081118, 0.971960, -0.220709,
		-0.943662, 0.003619, -0.330891,
		24.606920, 35.451447, 35.677803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192797, 35.991737, 36.269371>,  <25.267483, 35.448914, 35.909424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.192797, 35.991737, 36.269371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441685, 35.928246, 36.576004>,  <25.591017, 35.890148, 36.759983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441685, 35.928246, 36.576004>,  <25.192797, 35.991737, 36.269371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441685, 35.928246, 36.576004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684835, 0.584778, -0.434781,
		-0.379265, 0.795511, 0.472568,
		0.622221, -0.158734, 0.766580,
		25.628351, 35.880627, 36.805977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518385, 36.580952, 36.483047>,  <25.192797, 35.991737, 36.269371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518385, 36.580952, 36.483047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761885, 36.297810, 36.626358>,  <25.907984, 36.127926, 36.712345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761885, 36.297810, 36.626358>,  <25.518385, 36.580952, 36.483047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761885, 36.297810, 36.626358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779818, 0.450777, -0.434377,
		0.145971, 0.543821, 0.826409,
		0.608750, -0.707855, 0.358281,
		25.944510, 36.085453, 36.733841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040945, 36.906544, 36.978115>,  <25.518385, 36.580952, 36.483047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040945, 36.906544, 36.978115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173761, 36.595131, 36.765087>,  <26.253450, 36.408283, 36.637268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173761, 36.595131, 36.765087>,  <26.040945, 36.906544, 36.978115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173761, 36.595131, 36.765087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817635, 0.519083, -0.249050,
		0.470344, -0.352757, 0.808912,
		0.332038, -0.778534, -0.532574,
		26.273373, 36.361572, 36.605316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566359, 37.270359, 37.267761>,  <26.040945, 36.906544, 36.978115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566359, 37.270359, 37.267761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940535, 37.402809, 37.317249>,  <27.165041, 37.482281, 37.346943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940535, 37.402809, 37.317249>,  <26.566359, 37.270359, 37.267761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940535, 37.402809, 37.317249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204750, -0.792882, 0.573948,
		0.288147, -0.511561, -0.809491,
		0.935440, 0.331125, 0.123725,
		27.221167, 37.502148, 37.354366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904305, 36.683353, 37.131748>,  <26.566359, 37.270359, 37.267761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904305, 36.683353, 37.131748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147259, 36.890636, 37.372593>,  <27.293032, 37.015007, 37.517101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.147259, 36.890636, 37.372593>,  <26.904305, 36.683353, 37.131748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.147259, 36.890636, 37.372593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158927, -0.821883, 0.547037,
		0.778349, -0.236570, -0.581557,
		0.607384, 0.518211, 0.602115,
		27.329473, 37.046101, 37.553226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508196, 36.300411, 37.219566>,  <26.904305, 36.683353, 37.131748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508196, 36.300411, 37.219566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466511, 36.547325, 37.531490>,  <27.441500, 36.695473, 37.718643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.466511, 36.547325, 37.531490>,  <27.508196, 36.300411, 37.219566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.466511, 36.547325, 37.531490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411988, -0.686845, 0.598757,
		0.905210, 0.383669, -0.182736,
		-0.104213, 0.617285, 0.779807,
		27.435247, 36.732510, 37.765430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205069, 36.087822, 37.578938>,  <27.508196, 36.300411, 37.219566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205069, 36.087822, 37.578938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009476, 36.336914, 37.823265>,  <27.892120, 36.486370, 37.969860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.009476, 36.336914, 37.823265>,  <28.205069, 36.087822, 37.578938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009476, 36.336914, 37.823265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380670, -0.477707, 0.791762,
		0.784848, 0.619679, -0.003466,
		-0.488982, 0.622732, 0.610820,
		27.862782, 36.523735, 38.006512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710348, 36.304729, 38.108955>,  <28.205069, 36.087822, 37.578938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710348, 36.304729, 38.108955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336411, 36.309475, 38.250900>,  <28.112047, 36.312325, 38.336067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336411, 36.309475, 38.250900>,  <28.710348, 36.304729, 38.108955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336411, 36.309475, 38.250900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290409, -0.549452, 0.783431,
		0.204276, 0.835441, 0.510206,
		-0.934844, 0.011868, 0.354859,
		28.055958, 36.313034, 38.357357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852345, 36.292717, 38.772411>,  <28.710348, 36.304729, 38.108955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852345, 36.292717, 38.772411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459063, 36.220329, 38.762970>,  <28.223093, 36.176899, 38.757305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459063, 36.220329, 38.762970>,  <28.852345, 36.292717, 38.772411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459063, 36.220329, 38.762970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044275, -0.361986, 0.931131,
		-0.177046, 0.914449, 0.363919,
		-0.983206, -0.180966, -0.023602,
		28.164101, 36.166039, 38.755890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616922, 36.434479, 39.471920>,  <28.852345, 36.292717, 38.772411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616922, 36.434479, 39.471920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336836, 36.206776, 39.299572>,  <28.168783, 36.070156, 39.196163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.336836, 36.206776, 39.299572>,  <28.616922, 36.434479, 39.471920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336836, 36.206776, 39.299572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126320, -0.495206, 0.859544,
		-0.702667, 0.656293, 0.274843,
		-0.700216, -0.569255, -0.430867,
		28.126772, 36.035999, 39.170311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053476, 36.359478, 39.974377>,  <28.616922, 36.434479, 39.471920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053476, 36.359478, 39.974377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042603, 36.047451, 39.724335>,  <28.036077, 35.860233, 39.574310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042603, 36.047451, 39.724335>,  <28.053476, 36.359478, 39.974377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042603, 36.047451, 39.724335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074088, -0.625185, 0.776952,
		-0.996881, -0.025192, 0.074789,
		-0.027184, -0.780070, -0.625102,
		28.034447, 35.813431, 39.536804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657928, 35.821110, 40.448719>,  <28.053476, 36.359478, 39.974377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657928, 35.821110, 40.448719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817844, 35.604427, 40.152958>,  <27.913794, 35.474419, 39.975502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817844, 35.604427, 40.152958>,  <27.657928, 35.821110, 40.448719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817844, 35.604427, 40.152958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387501, -0.631161, 0.671922,
		-0.830669, -0.555149, -0.042421,
		0.399791, -0.541706, -0.739406,
		27.937782, 35.441917, 39.931137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601650, 35.192020, 40.687595>,  <27.657928, 35.821110, 40.448719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601650, 35.192020, 40.687595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895931, 35.145428, 40.420712>,  <28.072500, 35.117474, 40.260582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895931, 35.145428, 40.420712>,  <27.601650, 35.192020, 40.687595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895931, 35.145428, 40.420712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344399, -0.783905, 0.516607,
		-0.583206, -0.609857, -0.536606,
		0.735704, -0.116481, -0.667212,
		28.116642, 35.110485, 40.220547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616140, 34.465328, 40.351227>,  <27.601650, 35.192020, 40.687595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616140, 34.465328, 40.351227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990360, 34.595798, 40.297035>,  <28.214891, 34.674080, 40.264519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.990360, 34.595798, 40.297035>,  <27.616140, 34.465328, 40.351227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990360, 34.595798, 40.297035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352648, -0.841283, 0.409735,
		0.019672, -0.431103, -0.902088,
		0.935549, 0.326180, -0.135478,
		28.271025, 34.693653, 40.256393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961512, 33.931408, 40.301441>,  <27.616140, 34.465328, 40.351227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961512, 33.931408, 40.301441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269560, 34.176483, 40.372467>,  <28.454390, 34.323528, 40.415081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.269560, 34.176483, 40.372467>,  <27.961512, 33.931408, 40.301441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.269560, 34.176483, 40.372467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476941, -0.737890, 0.477541,
		0.423606, -0.283077, -0.860480,
		0.770120, 0.612687, 0.177563,
		28.500595, 34.360291, 40.425735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513086, 33.513790, 40.003826>,  <27.961512, 33.931408, 40.301441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513086, 33.513790, 40.003826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610262, 33.780571, 40.285580>,  <28.668568, 33.940639, 40.454632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610262, 33.780571, 40.285580>,  <28.513086, 33.513790, 40.003826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610262, 33.780571, 40.285580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533994, -0.698162, 0.476887,
		0.809834, 0.260282, -0.525759,
		0.242940, 0.666951, 0.704384,
		28.683144, 33.980656, 40.496895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196726, 33.391716, 40.038048>,  <28.513086, 33.513790, 40.003826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196726, 33.391716, 40.038048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111319, 33.586464, 40.376839>,  <29.060074, 33.703312, 40.580112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111319, 33.586464, 40.376839>,  <29.196726, 33.391716, 40.038048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111319, 33.586464, 40.376839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599711, -0.619072, 0.507047,
		0.771205, 0.616205, -0.159797,
		-0.213519, 0.486869, 0.846976,
		29.047262, 33.732525, 40.630932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826853, 33.319809, 40.411747>,  <29.196726, 33.391716, 40.038048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826853, 33.319809, 40.411747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545366, 33.408005, 40.681908>,  <29.376474, 33.460922, 40.844006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545366, 33.408005, 40.681908>,  <29.826853, 33.319809, 40.411747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545366, 33.408005, 40.681908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423071, -0.633668, 0.647669,
		0.570786, 0.741518, 0.352639,
		-0.703715, 0.220489, 0.675404,
		29.334251, 33.474152, 40.884529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165230, 33.566925, 40.998444>,  <29.826853, 33.319809, 40.411747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.165230, 33.566925, 40.998444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797737, 33.465130, 41.119221>,  <29.577242, 33.404053, 41.191685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797737, 33.465130, 41.119221>,  <30.165230, 33.566925, 40.998444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797737, 33.465130, 41.119221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394761, -0.573239, 0.718026,
		-0.009642, 0.778868, 0.627114,
		-0.918733, -0.254483, 0.301939,
		29.522118, 33.388786, 41.209801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084110, 33.771954, 41.644882>,  <30.165230, 33.566925, 40.998444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084110, 33.771954, 41.644882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818855, 33.473736, 41.618320>,  <29.659702, 33.294804, 41.602383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818855, 33.473736, 41.618320>,  <30.084110, 33.771954, 41.644882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818855, 33.473736, 41.618320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519374, -0.522208, 0.676424,
		-0.538981, 0.414075, 0.733513,
		-0.663137, -0.745547, -0.066400,
		29.619915, 33.250072, 41.598400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841358, 33.565536, 42.245625>,  <30.084110, 33.771954, 41.644882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841358, 33.565536, 42.245625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765303, 33.233849, 42.035393>,  <29.719669, 33.034836, 41.909252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.765303, 33.233849, 42.035393>,  <29.841358, 33.565536, 42.245625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765303, 33.233849, 42.035393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335068, -0.558015, 0.759176,
		-0.922809, -0.031756, 0.383947,
		-0.190139, -0.829223, -0.525582,
		29.708261, 32.985081, 41.877720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540644, 33.052078, 42.680527>,  <29.841358, 33.565536, 42.245625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540644, 33.052078, 42.680527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755356, 32.882748, 42.388592>,  <29.884182, 32.781151, 42.213432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755356, 32.882748, 42.388592>,  <29.540644, 33.052078, 42.680527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755356, 32.882748, 42.388592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541577, -0.490420, 0.682776,
		-0.646964, -0.761762, -0.033983,
		0.536779, -0.423328, -0.729837,
		29.916389, 32.755749, 42.169640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536905, 32.338360, 42.663853>,  <29.540644, 33.052078, 42.680527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536905, 32.338360, 42.663853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893452, 32.442829, 42.515659>,  <30.107380, 32.505512, 42.426743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893452, 32.442829, 42.515659>,  <29.536905, 32.338360, 42.663853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893452, 32.442829, 42.515659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452698, -0.554583, 0.698213,
		-0.023108, -0.790079, -0.612569,
		0.891364, 0.261175, -0.370483,
		30.160860, 32.521183, 42.404514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.014486, 31.742918, 42.627308>,  <29.536905, 32.338360, 42.663853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.014486, 31.742918, 42.627308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223885, 32.083179, 42.646652>,  <30.349524, 32.287338, 42.658257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.223885, 32.083179, 42.646652>,  <30.014486, 31.742918, 42.627308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223885, 32.083179, 42.646652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584995, -0.400111, 0.705473,
		0.619463, -0.341021, -0.707085,
		0.523494, 0.850656, 0.048359,
		30.380934, 32.338375, 42.661160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771076, 31.572296, 42.898815>,  <30.014486, 31.742918, 42.627308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771076, 31.572296, 42.898815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707289, 31.963146, 42.955093>,  <30.669016, 32.197655, 42.988861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707289, 31.963146, 42.955093>,  <30.771076, 31.572296, 42.898815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707289, 31.963146, 42.955093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503985, -0.041969, 0.862692,
		0.848864, 0.208480, -0.485764,
		-0.159467, 0.977126, 0.140696,
		30.659449, 32.256283, 42.997303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378210, 32.114117, 43.057850>,  <30.771076, 31.572296, 42.898815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378210, 32.114117, 43.057850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055906, 32.259239, 43.245090>,  <30.862524, 32.346313, 43.357433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055906, 32.259239, 43.245090>,  <31.378210, 32.114117, 43.057850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055906, 32.259239, 43.245090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490925, -0.032934, 0.870579,
		0.331272, 0.931281, -0.151576,
		-0.805761, 0.362811, 0.468099,
		30.814178, 32.368084, 43.385521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525824, 32.721375, 43.626808>,  <31.378210, 32.114117, 43.057850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525824, 32.721375, 43.626808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182049, 32.542526, 43.725967>,  <30.975784, 32.435219, 43.785465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182049, 32.542526, 43.725967>,  <31.525824, 32.721375, 43.626808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182049, 32.542526, 43.725967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427460, -0.362461, 0.828191,
		-0.280445, 0.817745, 0.502637,
		-0.859435, -0.447119, 0.247903,
		30.924219, 32.408390, 43.800339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312231, 32.968994, 44.349190>,  <31.525824, 32.721375, 43.626808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312231, 32.968994, 44.349190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192114, 32.600735, 44.249409>,  <31.120043, 32.379780, 44.189541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.192114, 32.600735, 44.249409>,  <31.312231, 32.968994, 44.349190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192114, 32.600735, 44.249409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376353, -0.354666, 0.855903,
		-0.876459, 0.163142, 0.452994,
		-0.300295, -0.920650, -0.249452,
		31.102026, 32.324539, 44.174572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861357, 32.729607, 44.781483>,  <31.312231, 32.968994, 44.349190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861357, 32.729607, 44.781483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037273, 32.406178, 44.625130>,  <31.142824, 32.212120, 44.531319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037273, 32.406178, 44.625130>,  <30.861357, 32.729607, 44.781483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037273, 32.406178, 44.625130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333877, -0.256841, 0.906950,
		-0.833731, -0.529377, 0.157008,
		0.439793, -0.808574, -0.390884,
		31.169210, 32.163605, 44.507866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236818, 33.052391, 45.126236>,  <30.861357, 32.729607, 44.781483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236818, 33.052391, 45.126236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512550, 33.222393, 45.360909>,  <30.677990, 33.324394, 45.501713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512550, 33.222393, 45.360909>,  <30.236818, 33.052391, 45.126236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512550, 33.222393, 45.360909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165979, 0.880946, -0.443154,
		-0.705176, 0.208103, 0.677805,
		0.689332, 0.425003, 0.586681,
		30.719349, 33.349895, 45.536911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974342, 33.653229, 45.373779>,  <30.236818, 33.052391, 45.126236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974342, 33.653229, 45.373779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374338, 33.654724, 45.375118>,  <30.614336, 33.655621, 45.375923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374338, 33.654724, 45.375118>,  <29.974342, 33.653229, 45.373779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374338, 33.654724, 45.375118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001054, 0.808537, -0.588445,
		-0.004907, 0.588434, 0.808531,
		0.999987, 0.003740, 0.003347,
		30.674334, 33.655846, 45.376122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455063, 34.089180, 45.747536>,  <29.974342, 33.653229, 45.373779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455063, 34.089180, 45.747536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648144, 33.979511, 45.414833>,  <30.763992, 33.913712, 45.215210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648144, 33.979511, 45.414833>,  <30.455063, 34.089180, 45.747536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648144, 33.979511, 45.414833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064535, 0.958287, -0.278427,
		0.873403, 0.080720, 0.480262,
		0.482704, -0.274172, -0.831761,
		30.792955, 33.897259, 45.165306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075823, 34.539753, 45.528088>,  <30.455063, 34.089180, 45.747536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075823, 34.539753, 45.528088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998421, 34.352776, 45.183052>,  <30.951979, 34.240589, 44.976032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998421, 34.352776, 45.183052>,  <31.075823, 34.539753, 45.528088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998421, 34.352776, 45.183052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227666, 0.833811, -0.502919,
		0.954319, -0.293699, -0.054927,
		-0.193505, -0.467440, -0.862586,
		30.940369, 34.212543, 44.924274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709396, 34.503712, 45.042763>,  <31.075823, 34.539753, 45.528088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709396, 34.503712, 45.042763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376574, 34.483578, 44.821800>,  <31.176880, 34.471497, 44.689224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376574, 34.483578, 44.821800>,  <31.709396, 34.503712, 45.042763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376574, 34.483578, 44.821800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246307, 0.858782, -0.449251,
		0.497008, -0.509863, -0.702156,
		-0.832056, -0.050336, -0.552404,
		31.126957, 34.468475, 44.656078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868872, 34.718159, 44.312576>,  <31.709396, 34.503712, 45.042763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868872, 34.718159, 44.312576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474072, 34.780930, 44.326454>,  <31.237192, 34.818592, 44.334782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474072, 34.780930, 44.326454>,  <31.868872, 34.718159, 44.312576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474072, 34.780930, 44.326454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108533, 0.810043, -0.576238,
		-0.118531, -0.564982, -0.816545,
		-0.987001, 0.156924, 0.034696,
		31.177971, 34.828007, 44.336864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763193, 34.836174, 43.615520>,  <31.868872, 34.718159, 44.312576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763193, 34.836174, 43.615520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440659, 34.984676, 43.799690>,  <31.247137, 35.073776, 43.910191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440659, 34.984676, 43.799690>,  <31.763193, 34.836174, 43.615520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440659, 34.984676, 43.799690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123799, 0.655268, -0.745183,
		-0.578353, -0.657870, -0.482406,
		-0.806338, 0.371257, 0.460420,
		31.198757, 35.096054, 43.937817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232258, 34.876057, 43.080212>,  <31.763193, 34.836174, 43.615520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232258, 34.876057, 43.080212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079746, 35.090317, 43.381596>,  <30.988239, 35.218872, 43.562428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079746, 35.090317, 43.381596>,  <31.232258, 34.876057, 43.080212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079746, 35.090317, 43.381596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439942, 0.611688, -0.657487,
		-0.813066, -0.582167, 0.002429,
		-0.381281, 0.535649, 0.753462,
		30.965363, 35.251011, 43.607635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533455, 34.869183, 42.965260>,  <31.232258, 34.876057, 43.080212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533455, 34.869183, 42.965260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673100, 35.190495, 43.158279>,  <30.756887, 35.383282, 43.274094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673100, 35.190495, 43.158279>,  <30.533455, 34.869183, 42.965260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673100, 35.190495, 43.158279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453625, 0.595466, -0.663057,
		-0.819966, 0.012584, 0.572274,
		0.349114, 0.803282, 0.482553,
		30.777834, 35.431480, 43.303047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039135, 35.282715, 42.869007>,  <30.533455, 34.869183, 42.965260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039135, 35.282715, 42.869007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297832, 35.558800, 42.998821>,  <30.453051, 35.724453, 43.076710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297832, 35.558800, 42.998821>,  <30.039135, 35.282715, 42.869007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297832, 35.558800, 42.998821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345611, 0.644521, -0.682016,
		-0.679906, 0.328929, 0.655387,
		0.646746, 0.690216, 0.324532,
		30.491856, 35.765865, 43.096180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590420, 35.932964, 42.982037>,  <30.039135, 35.282715, 42.869007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590420, 35.932964, 42.982037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981842, 36.012897, 42.962067>,  <30.216696, 36.060856, 42.950085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981842, 36.012897, 42.962067>,  <29.590420, 35.932964, 42.982037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981842, 36.012897, 42.962067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195640, 0.825926, -0.528745,
		-0.064427, 0.527174, 0.847311,
		0.978557, 0.199834, -0.049924,
		30.275410, 36.072849, 42.947090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627386, 36.690456, 43.159420>,  <29.590420, 35.932964, 42.982037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627386, 36.690456, 43.159420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929825, 36.582008, 42.921154>,  <30.111288, 36.516941, 42.778194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929825, 36.582008, 42.921154>,  <29.627386, 36.690456, 43.159420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929825, 36.582008, 42.921154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139400, 0.822557, -0.551332,
		0.639444, 0.499895, 0.584137,
		0.756095, -0.271117, -0.595665,
		30.156652, 36.500671, 42.742455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860237, 37.319370, 43.013657>,  <29.627386, 36.690456, 43.159420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860237, 37.319370, 43.013657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018276, 37.072983, 42.741043>,  <30.113100, 36.925152, 42.577477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018276, 37.072983, 42.741043>,  <29.860237, 37.319370, 43.013657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018276, 37.072983, 42.741043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106097, 0.706330, -0.699886,
		0.912491, 0.348832, 0.213718,
		0.395098, -0.615965, -0.681531,
		30.136806, 36.888195, 42.536583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261217, 37.656799, 42.572617>,  <29.860237, 37.319370, 43.013657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261217, 37.656799, 42.572617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203733, 37.338795, 42.336887>,  <30.169243, 37.147991, 42.195450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203733, 37.338795, 42.336887>,  <30.261217, 37.656799, 42.572617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203733, 37.338795, 42.336887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006458, 0.596244, -0.802777,
		0.989599, -0.111559, -0.090819,
		-0.143708, -0.795014, -0.589323,
		30.160622, 37.100292, 42.160091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698149, 37.765411, 42.006176>,  <30.261217, 37.656799, 42.572617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698149, 37.765411, 42.006176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407131, 37.512642, 41.899334>,  <30.232521, 37.360981, 41.835228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407131, 37.512642, 41.899334>,  <30.698149, 37.765411, 42.006176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407131, 37.512642, 41.899334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032299, 0.420455, -0.906738,
		0.685301, -0.651064, -0.326310,
		-0.727543, -0.631929, -0.267110,
		30.188868, 37.323063, 41.819202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901665, 37.374226, 41.427197>,  <30.698149, 37.765411, 42.006176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901665, 37.374226, 41.427197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504477, 37.327126, 41.422340>,  <30.266165, 37.298866, 41.419426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504477, 37.327126, 41.422340>,  <30.901665, 37.374226, 41.427197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504477, 37.327126, 41.422340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044056, 0.462818, -0.885358,
		0.109869, -0.878598, -0.464752,
		-0.992970, -0.117748, -0.012142,
		30.206585, 37.291801, 41.418697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747358, 37.175381, 40.698357>,  <30.901665, 37.374226, 41.427197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747358, 37.175381, 40.698357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384443, 37.269981, 40.837440>,  <30.166695, 37.326740, 40.920891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384443, 37.269981, 40.837440>,  <30.747358, 37.175381, 40.698357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384443, 37.269981, 40.837440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224279, 0.427302, -0.875849,
		-0.355714, -0.872629, -0.334643,
		-0.907285, 0.236498, 0.347710,
		30.112257, 37.340931, 40.941753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269392, 36.839462, 40.280361>,  <30.747358, 37.175381, 40.698357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269392, 36.839462, 40.280361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.054901, 37.136051, 40.441692>,  <29.926207, 37.314007, 40.538490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.054901, 37.136051, 40.441692>,  <30.269392, 36.839462, 40.280361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.054901, 37.136051, 40.441692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359894, 0.231385, -0.903846,
		-0.763505, -0.629822, 0.142778,
		-0.536225, 0.741476, 0.403333,
		29.894033, 37.358494, 40.562691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679914, 36.805744, 39.910347>,  <30.269392, 36.839462, 40.280361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679914, 36.805744, 39.910347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671274, 37.167835, 40.080097>,  <29.666090, 37.385090, 40.181946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.671274, 37.167835, 40.080097>,  <29.679914, 36.805744, 39.910347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.671274, 37.167835, 40.080097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477373, 0.363623, -0.799933,
		-0.878435, -0.219865, 0.424277,
		-0.021600, 0.905228, 0.424377,
		29.664795, 37.439404, 40.207409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938360, 37.096409, 39.773891>,  <29.679914, 36.805744, 39.910347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938360, 37.096409, 39.773891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198383, 37.394928, 39.831123>,  <29.354397, 37.574039, 39.865463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198383, 37.394928, 39.831123>,  <28.938360, 37.096409, 39.773891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198383, 37.394928, 39.831123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291590, 0.418860, -0.859960,
		-0.701712, 0.517303, 0.489895,
		0.650057, 0.746293, 0.143079,
		29.393400, 37.618816, 39.874046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781954, 37.611561, 39.271404>,  <28.938360, 37.096409, 39.773891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781954, 37.611561, 39.271404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127304, 37.781300, 39.380596>,  <29.334515, 37.883141, 39.446110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127304, 37.781300, 39.380596>,  <28.781954, 37.611561, 39.271404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127304, 37.781300, 39.380596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050366, 0.465840, -0.883434,
		-0.502044, 0.776483, 0.380821,
		0.863374, 0.424343, 0.272981,
		29.386316, 37.908604, 39.462490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661421, 38.299252, 39.237209>,  <28.781954, 37.611561, 39.271404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661421, 38.299252, 39.237209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054527, 38.238293, 39.195351>,  <29.290390, 38.201717, 39.170235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054527, 38.238293, 39.195351>,  <28.661421, 38.299252, 39.237209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054527, 38.238293, 39.195351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016874, 0.489758, -0.871695,
		0.184092, 0.858437, 0.478745,
		0.982764, -0.152394, -0.104646,
		29.349356, 38.192574, 39.163956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005287, 38.962456, 39.089909>,  <28.661421, 38.299252, 39.237209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005287, 38.962456, 39.089909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251356, 38.678783, 38.952145>,  <29.398998, 38.508579, 38.869488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251356, 38.678783, 38.952145>,  <29.005287, 38.962456, 39.089909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251356, 38.678783, 38.952145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191207, 0.558016, -0.807501,
		0.764853, 0.430901, 0.478878,
		0.615175, -0.709184, -0.344409,
		29.435909, 38.466026, 38.848824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507746, 39.328171, 38.728035>,  <29.005287, 38.962456, 39.089909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507746, 39.328171, 38.728035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599760, 38.960896, 38.599030>,  <29.654968, 38.740532, 38.521626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599760, 38.960896, 38.599030>,  <29.507746, 39.328171, 38.728035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599760, 38.960896, 38.599030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278699, 0.379676, -0.882141,
		0.932422, 0.113038, 0.343236,
		0.230034, -0.918188, -0.322514,
		29.668770, 38.685440, 38.502274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168682, 39.333282, 38.556549>,  <29.507746, 39.328171, 38.728035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168682, 39.333282, 38.556549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992100, 39.040138, 38.349464>,  <29.886150, 38.864250, 38.225212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992100, 39.040138, 38.349464>,  <30.168682, 39.333282, 38.556549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992100, 39.040138, 38.349464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314318, 0.414116, -0.854232,
		0.840429, -0.539833, 0.047538,
		-0.441456, -0.732863, -0.517714,
		29.859663, 38.820278, 38.194149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684422, 39.082840, 38.205372>,  <30.168682, 39.333282, 38.556549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684422, 39.082840, 38.205372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366903, 38.981503, 37.984207>,  <30.176394, 38.920700, 37.851509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366903, 38.981503, 37.984207>,  <30.684422, 39.082840, 38.205372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366903, 38.981503, 37.984207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418739, 0.431657, -0.798955,
		0.441082, -0.865729, -0.236558,
		-0.793791, -0.253348, -0.552911,
		30.128765, 38.905499, 37.818333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781912, 38.617661, 37.562622>,  <30.684422, 39.082840, 38.205372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781912, 38.617661, 37.562622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447624, 38.826462, 37.494404>,  <30.247051, 38.951740, 37.453472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447624, 38.826462, 37.494404>,  <30.781912, 38.617661, 37.562622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447624, 38.826462, 37.494404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355088, 0.276758, -0.892927,
		-0.418907, -0.806797, -0.416648,
		-0.835721, 0.522000, -0.170548,
		30.196907, 38.983063, 37.443241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631920, 38.191227, 36.960888>,  <30.781912, 38.617661, 37.562622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631920, 38.191227, 36.960888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549986, 37.803394, 37.014496>,  <30.500826, 37.570694, 37.046661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549986, 37.803394, 37.014496>,  <30.631920, 38.191227, 36.960888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549986, 37.803394, 37.014496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685905, 0.239872, 0.687019,
		-0.698266, 0.048801, -0.714173,
		-0.204837, -0.969577, 0.134022,
		30.488535, 37.512520, 37.054703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884954, 37.643597, 37.310223>,  <30.631920, 38.191227, 36.960888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884954, 37.643597, 37.310223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196024, 37.890480, 37.262424>,  <31.382666, 38.038609, 37.233746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.196024, 37.890480, 37.262424>,  <30.884954, 37.643597, 37.310223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196024, 37.890480, 37.262424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607523, -0.786698, -0.109643,
		-0.161678, 0.012671, -0.986762,
		0.777673, 0.617207, -0.119494,
		31.429325, 38.075642, 37.226578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252474, 37.646847, 36.579811>,  <30.884954, 37.643597, 37.310223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252474, 37.646847, 36.579811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494202, 37.717533, 36.890568>,  <31.639238, 37.759945, 37.077023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.494202, 37.717533, 36.890568>,  <31.252474, 37.646847, 36.579811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494202, 37.717533, 36.890568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565205, -0.782341, -0.261697,
		0.561551, 0.597255, -0.572667,
		0.604321, 0.176718, 0.776896,
		31.675497, 37.770550, 37.123638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090073, 37.793087, 36.412045>,  <31.252474, 37.646847, 36.579811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090073, 37.793087, 36.412045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030418, 37.617599, 36.766510>,  <31.994625, 37.512306, 36.979191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030418, 37.617599, 36.766510>,  <32.090073, 37.793087, 36.412045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030418, 37.617599, 36.766510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568656, -0.771216, -0.286105,
		0.808943, 0.461255, 0.364493,
		-0.149135, -0.438714, 0.886165,
		31.985678, 37.485985, 37.032360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688446, 37.446575, 36.528061>,  <32.090073, 37.793087, 36.412045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688446, 37.446575, 36.528061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414963, 37.282883, 36.769745>,  <32.250874, 37.184666, 36.914757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414963, 37.282883, 36.769745>,  <32.688446, 37.446575, 36.528061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414963, 37.282883, 36.769745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497435, -0.867157, -0.024437,
		0.533944, 0.283847, 0.796452,
		-0.683712, -0.409231, 0.604208,
		32.209850, 37.160114, 36.951008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988388, 37.176311, 37.092449>,  <32.688446, 37.446575, 36.528061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988388, 37.176311, 37.092449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656574, 36.982033, 36.982197>,  <32.457485, 36.865467, 36.916046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656574, 36.982033, 36.982197>,  <32.988388, 37.176311, 37.092449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656574, 36.982033, 36.982197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495838, -0.867643, 0.036617,
		-0.256930, -0.106292, 0.960567,
		-0.829537, -0.485694, -0.275627,
		32.407715, 36.836323, 36.899509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531929, 36.821384, 36.635845>,  <32.988388, 37.176311, 37.092449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531929, 36.821384, 36.635845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881599, 36.967194, 36.507507>,  <34.091400, 37.054680, 36.430504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881599, 36.967194, 36.507507>,  <33.531929, 36.821384, 36.635845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881599, 36.967194, 36.507507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058555, 0.576761, 0.814812,
		0.482068, -0.731075, 0.482845,
		0.874174, 0.364522, -0.320846,
		34.143852, 37.076550, 36.411255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984276, 36.675465, 37.114132>,  <33.531929, 36.821384, 36.635845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984276, 36.675465, 37.114132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129753, 36.995193, 36.922794>,  <34.217037, 37.187031, 36.807991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129753, 36.995193, 36.922794>,  <33.984276, 36.675465, 37.114132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129753, 36.995193, 36.922794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278865, 0.396537, 0.874639,
		0.888799, -0.451491, -0.078687,
		0.363689, 0.799321, -0.478347,
		34.238861, 37.234989, 36.779289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641659, 36.719124, 37.343620>,  <33.984276, 36.675465, 37.114132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641659, 36.719124, 37.343620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583908, 37.073414, 37.167149>,  <34.549255, 37.285988, 37.061264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583908, 37.073414, 37.167149>,  <34.641659, 36.719124, 37.343620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583908, 37.073414, 37.167149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357823, 0.462412, 0.811257,
		0.922560, -0.040735, -0.383697,
		-0.144379, 0.885729, -0.441179,
		34.540596, 37.339134, 37.034794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196754, 37.054619, 37.506752>,  <34.641659, 36.719124, 37.343620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196754, 37.054619, 37.506752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951862, 37.351353, 37.397312>,  <34.804928, 37.529392, 37.331650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951862, 37.351353, 37.397312>,  <35.196754, 37.054619, 37.506752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951862, 37.351353, 37.397312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383378, 0.581145, 0.717838,
		0.691516, 0.334593, -0.640198,
		-0.612232, 0.741834, -0.273595,
		34.768192, 37.573902, 37.315235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605968, 37.646576, 37.557766>,  <35.196754, 37.054619, 37.506752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605968, 37.646576, 37.557766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234493, 37.794247, 37.571896>,  <35.011608, 37.882851, 37.580372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234493, 37.794247, 37.571896>,  <35.605968, 37.646576, 37.557766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234493, 37.794247, 37.571896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236930, 0.517336, 0.822330,
		0.285313, 0.772057, -0.567913,
		-0.928688, 0.369177, 0.035321,
		34.955887, 37.904999, 37.582493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651134, 38.373791, 37.721218>,  <35.605968, 37.646576, 37.557766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651134, 38.373791, 37.721218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277653, 38.266415, 37.815987>,  <35.053562, 38.201988, 37.872849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277653, 38.266415, 37.815987>,  <35.651134, 38.373791, 37.721218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277653, 38.266415, 37.815987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079029, 0.490883, 0.867633,
		-0.349205, 0.828840, -0.437127,
		-0.933708, -0.268436, 0.236921,
		34.997540, 38.185883, 37.887062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254070, 39.007755, 38.028126>,  <35.651134, 38.373791, 37.721218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254070, 39.007755, 38.028126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052654, 38.695202, 38.175575>,  <34.931805, 38.507668, 38.264046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052654, 38.695202, 38.175575>,  <35.254070, 39.007755, 38.028126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052654, 38.695202, 38.175575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064049, 0.459251, 0.885995,
		-0.861597, 0.422520, -0.281296,
		-0.503536, -0.781387, 0.368627,
		34.901592, 38.460785, 38.286163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901825, 39.355915, 38.424934>,  <35.254070, 39.007755, 38.028126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901825, 39.355915, 38.424934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862606, 38.976677, 38.545933>,  <34.839077, 38.749134, 38.618530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862606, 38.976677, 38.545933>,  <34.901825, 39.355915, 38.424934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862606, 38.976677, 38.545933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107184, 0.312251, 0.943934,
		-0.989393, 0.060123, -0.132235,
		-0.098043, -0.948095, 0.302495,
		34.833195, 38.692249, 38.636681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210968, 39.156868, 38.747547>,  <34.901825, 39.355915, 38.424934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210968, 39.156868, 38.747547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501427, 38.924843, 38.895195>,  <34.675701, 38.785629, 38.983784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501427, 38.924843, 38.895195>,  <34.210968, 39.156868, 38.747547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501427, 38.924843, 38.895195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262327, 0.262509, 0.928587,
		-0.635532, -0.771116, 0.038454,
		0.726143, -0.580060, 0.369117,
		34.719269, 38.750824, 39.005932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963367, 38.877094, 39.357674>,  <34.210968, 39.156868, 38.747547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963367, 38.877094, 39.357674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355255, 38.798256, 39.372078>,  <34.590389, 38.750954, 39.380718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355255, 38.798256, 39.372078>,  <33.963367, 38.877094, 39.357674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355255, 38.798256, 39.372078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035598, 0.005624, 0.999350,
		-0.197176, -0.980367, -0.001506,
		0.979722, -0.197102, 0.036008,
		34.649170, 38.739124, 39.382881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966064, 38.406193, 39.934223>,  <33.963367, 38.877094, 39.357674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966064, 38.406193, 39.934223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351570, 38.506908, 39.899002>,  <34.582874, 38.567337, 39.877869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351570, 38.506908, 39.899002>,  <33.966064, 38.406193, 39.934223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351570, 38.506908, 39.899002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174338, -0.344755, 0.922362,
		0.201890, -0.904292, -0.376160,
		0.963767, 0.251794, -0.088050,
		34.640701, 38.582447, 39.872585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319233, 37.965660, 40.300068>,  <33.966064, 38.406193, 39.934223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319233, 37.965660, 40.300068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553581, 38.289806, 40.303181>,  <34.694191, 38.484295, 40.305050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553581, 38.289806, 40.303181>,  <34.319233, 37.965660, 40.300068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553581, 38.289806, 40.303181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171401, -0.133291, 0.976143,
		0.792070, -0.570561, -0.216990,
		0.585872, 0.810366, 0.007781,
		34.729343, 38.532917, 40.305515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996563, 37.783615, 40.610920>,  <34.319233, 37.965660, 40.300068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996563, 37.783615, 40.610920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936703, 38.176403, 40.657108>,  <34.900787, 38.412075, 40.684822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936703, 38.176403, 40.657108>,  <34.996563, 37.783615, 40.610920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936703, 38.176403, 40.657108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174679, -0.088689, 0.980623,
		0.973187, 0.166918, -0.158258,
		-0.149648, 0.981974, 0.115468,
		34.891808, 38.470997, 40.691750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448330, 37.963223, 41.090118>,  <34.996563, 37.783615, 40.610920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448330, 37.963223, 41.090118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212044, 38.285698, 41.103481>,  <35.070274, 38.479183, 41.111500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212044, 38.285698, 41.103481>,  <35.448330, 37.963223, 41.090118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212044, 38.285698, 41.103481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076218, 0.014530, 0.996985,
		0.803275, 0.591478, -0.070029,
		-0.590712, 0.806190, 0.033410,
		35.034828, 38.527554, 41.113503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756496, 38.316177, 41.603672>,  <35.448330, 37.963223, 41.090118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756496, 38.316177, 41.603672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403282, 38.499397, 41.562805>,  <35.191353, 38.609329, 41.538284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403282, 38.499397, 41.562805>,  <35.756496, 38.316177, 41.603672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403282, 38.499397, 41.562805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025994, 0.265108, 0.963868,
		0.468588, 0.848473, -0.246006,
		-0.883034, 0.458052, -0.102171,
		35.138371, 38.636814, 41.532154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799000, 38.849880, 42.076401>,  <35.756496, 38.316177, 41.603672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799000, 38.849880, 42.076401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405224, 38.869209, 42.008820>,  <35.168957, 38.880806, 41.968269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405224, 38.869209, 42.008820>,  <35.799000, 38.849880, 42.076401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405224, 38.869209, 42.008820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154807, 0.216526, 0.963925,
		0.083162, 0.975080, -0.205676,
		-0.984438, 0.048322, -0.168956,
		35.109894, 38.883705, 41.958134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544327, 39.603062, 42.282318>,  <35.799000, 38.849880, 42.076401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544327, 39.603062, 42.282318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245045, 39.338303, 42.300568>,  <35.065475, 39.179447, 42.311516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245045, 39.338303, 42.300568>,  <35.544327, 39.603062, 42.282318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245045, 39.338303, 42.300568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256798, 0.352311, 0.899962,
		-0.611758, 0.661638, -0.433574,
		-0.748202, -0.661901, 0.045621,
		35.020584, 39.139732, 42.314255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971161, 40.085812, 42.495853>,  <35.544327, 39.603062, 42.282318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971161, 40.085812, 42.495853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891220, 39.701721, 42.573849>,  <34.843254, 39.471268, 42.620644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891220, 39.701721, 42.573849>,  <34.971161, 40.085812, 42.495853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891220, 39.701721, 42.573849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323049, 0.252447, 0.912091,
		-0.925039, 0.119296, -0.360653,
		-0.199855, -0.960229, 0.194984,
		34.831264, 39.413654, 42.632343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218540, 40.044159, 42.780739>,  <34.971161, 40.085812, 42.495853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218540, 40.044159, 42.780739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378029, 39.695518, 42.894810>,  <34.473724, 39.486332, 42.963253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378029, 39.695518, 42.894810>,  <34.218540, 40.044159, 42.780739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378029, 39.695518, 42.894810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405016, 0.111637, 0.907468,
		-0.822789, -0.477332, -0.308501,
		0.398724, -0.871603, 0.285181,
		34.497646, 39.434036, 42.980366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681355, 39.655396, 43.005573>,  <34.218540, 40.044159, 42.780739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681355, 39.655396, 43.005573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001125, 39.469337, 43.157654>,  <34.192989, 39.357704, 43.248901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001125, 39.469337, 43.157654>,  <33.681355, 39.655396, 43.005573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001125, 39.469337, 43.157654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437546, -0.017133, 0.899033,
		-0.411667, -0.885068, -0.217219,
		0.799427, -0.465146, 0.380205,
		34.240955, 39.329796, 43.271717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360893, 39.147091, 43.527462>,  <33.681355, 39.655396, 43.005573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360893, 39.147091, 43.527462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752579, 39.190041, 43.596298>,  <33.987591, 39.215813, 43.637600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752579, 39.190041, 43.596298>,  <33.360893, 39.147091, 43.527462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752579, 39.190041, 43.596298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180766, 0.077075, 0.980501,
		0.092041, -0.991224, 0.094887,
		0.979210, 0.107399, 0.172085,
		34.046341, 39.222256, 43.647923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577236, 38.648689, 44.001194>,  <33.360893, 39.147091, 43.527462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577236, 38.648689, 44.001194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822029, 38.963249, 44.034771>,  <33.968906, 39.151985, 44.054916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.822029, 38.963249, 44.034771>,  <33.577236, 38.648689, 44.001194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822029, 38.963249, 44.034771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231845, 0.076913, 0.969707,
		0.756126, -0.612905, 0.229393,
		0.611982, 0.786405, 0.083943,
		34.005623, 39.199169, 44.059956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793819, 38.476654, 44.652241>,  <33.577236, 38.648689, 44.001194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793819, 38.476654, 44.652241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870777, 38.858025, 44.559322>,  <33.916950, 39.086845, 44.503571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870777, 38.858025, 44.559322>,  <33.793819, 38.476654, 44.652241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870777, 38.858025, 44.559322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168383, 0.265283, 0.949353,
		0.966764, -0.143531, 0.211579,
		0.192390, 0.953427, -0.232298,
		33.928493, 39.144054, 44.489632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171944, 38.711430, 45.204067>,  <33.793819, 38.476654, 44.652241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171944, 38.711430, 45.204067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054855, 39.053337, 45.032635>,  <33.984600, 39.258480, 44.929775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054855, 39.053337, 45.032635>,  <34.171944, 38.711430, 45.204067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054855, 39.053337, 45.032635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132561, 0.407613, 0.903481,
		0.946964, 0.321283, -0.006008,
		-0.292723, 0.854768, -0.428585,
		33.967037, 39.309769, 44.904060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411938, 39.245422, 45.632206>,  <34.171944, 38.711430, 45.204067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411938, 39.245422, 45.632206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146603, 39.438625, 45.403580>,  <33.987404, 39.554546, 45.266403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146603, 39.438625, 45.403580>,  <34.411938, 39.245422, 45.632206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146603, 39.438625, 45.403580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173040, 0.644093, 0.745118,
		0.728043, 0.593166, -0.343668,
		-0.663333, 0.483010, -0.571569,
		33.947601, 39.583527, 45.232109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624844, 39.948776, 45.617474>,  <34.411938, 39.245422, 45.632206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624844, 39.948776, 45.617474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231937, 39.924313, 45.546574>,  <33.996193, 39.909634, 45.504036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231937, 39.924313, 45.546574>,  <34.624844, 39.948776, 45.617474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231937, 39.924313, 45.546574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174020, 0.649327, 0.740332,
		0.069812, 0.758047, -0.648453,
		-0.982264, -0.061160, -0.177246,
		33.937260, 39.905964, 45.493401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267586, 40.588093, 45.620003>,  <34.624844, 39.948776, 45.617474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267586, 40.588093, 45.620003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943882, 40.360699, 45.679214>,  <33.749660, 40.224262, 45.714741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943882, 40.360699, 45.679214>,  <34.267586, 40.588093, 45.620003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943882, 40.360699, 45.679214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340671, 0.659451, 0.670125,
		-0.478577, 0.491878, -0.727338,
		-0.809263, -0.568489, 0.148030,
		33.701103, 40.190151, 45.723625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697323, 41.020100, 45.831417>,  <34.267586, 40.588093, 45.620003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697323, 41.020100, 45.831417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595146, 40.663960, 45.982162>,  <33.533840, 40.450275, 46.072609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595146, 40.663960, 45.982162>,  <33.697323, 41.020100, 45.831417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595146, 40.663960, 45.982162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170516, 0.425171, 0.888906,
		-0.951668, 0.162805, -0.260427,
		-0.255444, -0.890351, 0.376861,
		33.518513, 40.396854, 46.095222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194798, 41.162968, 46.305275>,  <33.697323, 41.020100, 45.831417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194798, 41.162968, 46.305275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350868, 40.813450, 46.421371>,  <33.444511, 40.603741, 46.491032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350868, 40.813450, 46.421371>,  <33.194798, 41.162968, 46.305275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350868, 40.813450, 46.421371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051413, 0.294062, 0.954403,
		-0.919302, -0.387311, 0.069813,
		0.390179, -0.873795, 0.290244,
		33.467922, 40.551311, 46.508446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707176, 40.937626, 46.731617>,  <33.194798, 41.162968, 46.305275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707176, 40.937626, 46.731617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043568, 40.746323, 46.832825>,  <33.245403, 40.631538, 46.893551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043568, 40.746323, 46.832825>,  <32.707176, 40.937626, 46.731617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043568, 40.746323, 46.832825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159746, 0.227314, 0.960630,
		-0.516948, -0.848289, 0.114765,
		0.840979, -0.478262, 0.253020,
		33.295860, 40.602844, 46.908730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603706, 40.781796, 47.447693>,  <32.707176, 40.937626, 46.731617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603706, 40.781796, 47.447693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988293, 40.672073, 47.440403>,  <33.219044, 40.606239, 47.436028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988293, 40.672073, 47.440403>,  <32.603706, 40.781796, 47.447693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988293, 40.672073, 47.440403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056896, 0.133680, 0.989390,
		-0.268958, -0.952306, 0.144136,
		0.961470, -0.274306, -0.018228,
		33.276733, 40.589783, 47.434933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666557, 40.255550, 47.932125>,  <32.603706, 40.781796, 47.447693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666557, 40.255550, 47.932125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022865, 40.431446, 47.886261>,  <33.236652, 40.536983, 47.858742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022865, 40.431446, 47.886261>,  <32.666557, 40.255550, 47.932125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022865, 40.431446, 47.886261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029572, 0.195681, 0.980222,
		0.453483, -0.876547, 0.161303,
		0.890774, 0.439744, -0.114659,
		33.290096, 40.563370, 47.851864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055279, 39.948914, 48.500656>,  <32.666557, 40.255550, 47.932125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055279, 39.948914, 48.500656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252007, 40.275688, 48.380173>,  <33.370045, 40.471752, 48.307880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252007, 40.275688, 48.380173>,  <33.055279, 39.948914, 48.500656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252007, 40.275688, 48.380173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213893, 0.221984, 0.951301,
		0.844016, -0.532296, -0.065561,
		0.491821, 0.816936, -0.301212,
		33.399551, 40.520767, 48.289810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660316, 39.818928, 48.703777>,  <33.055279, 39.948914, 48.500656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660316, 39.818928, 48.703777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623409, 40.216175, 48.674923>,  <33.601265, 40.454525, 48.657608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623409, 40.216175, 48.674923>,  <33.660316, 39.818928, 48.703777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623409, 40.216175, 48.674923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308498, 0.097393, 0.946226,
		0.946740, 0.065048, -0.315361,
		-0.092264, 0.993118, -0.072139,
		33.595730, 40.514111, 48.653282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306568, 40.089630, 48.919445>,  <33.660316, 39.818928, 48.703777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306568, 40.089630, 48.919445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005566, 40.350422, 48.956661>,  <33.824966, 40.506897, 48.978992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005566, 40.350422, 48.956661>,  <34.306568, 40.089630, 48.919445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005566, 40.350422, 48.956661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148078, 0.029842, 0.988525,
		0.641724, 0.757647, -0.119001,
		-0.752505, 0.651982, 0.093041,
		33.779816, 40.546017, 48.984573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573414, 40.517422, 49.295307>,  <34.306568, 40.089630, 48.919445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573414, 40.517422, 49.295307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186878, 40.612320, 49.335102>,  <33.954956, 40.669258, 49.358978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186878, 40.612320, 49.335102>,  <34.573414, 40.517422, 49.295307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186878, 40.612320, 49.335102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140142, 0.161166, 0.976927,
		0.215737, 0.957988, -0.188989,
		-0.966342, 0.237245, 0.099485,
		33.896976, 40.683495, 49.364948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498585, 40.887886, 49.995403>,  <34.573414, 40.517422, 49.295307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498585, 40.887886, 49.995403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121017, 40.789658, 49.907120>,  <33.894478, 40.730721, 49.854149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121017, 40.789658, 49.907120>,  <34.498585, 40.887886, 49.995403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121017, 40.789658, 49.907120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225827, -0.007502, 0.974139,
		-0.240873, 0.969350, -0.048375,
		-0.943919, -0.245568, -0.220712,
		33.837841, 40.715988, 49.840904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969936, 41.444614, 50.286037>,  <34.498585, 40.887886, 49.995403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969936, 41.444614, 50.286037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785976, 41.093567, 50.231960>,  <33.675602, 40.882938, 50.199512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785976, 41.093567, 50.231960>,  <33.969936, 41.444614, 50.286037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785976, 41.093567, 50.231960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325525, 0.024978, 0.945203,
		-0.826151, 0.478709, -0.297174,
		-0.459900, -0.877618, -0.135196,
		33.648006, 40.830280, 50.191402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304268, 41.537251, 50.660862>,  <33.969936, 41.444614, 50.286037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304268, 41.537251, 50.660862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350048, 41.143723, 50.605736>,  <33.377518, 40.907604, 50.572659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350048, 41.143723, 50.605736>,  <33.304268, 41.537251, 50.660862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350048, 41.143723, 50.605736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566435, -0.178599, 0.804521,
		-0.816120, -0.014014, -0.577712,
		0.114453, -0.983823, -0.137820,
		33.384384, 40.848576, 50.564388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685272, 41.172424, 50.911171>,  <33.304268, 41.537251, 50.660862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685272, 41.172424, 50.911171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967968, 40.889805, 50.925583>,  <33.137585, 40.720234, 50.934231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967968, 40.889805, 50.925583>,  <32.685272, 41.172424, 50.911171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967968, 40.889805, 50.925583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302259, -0.255512, 0.918342,
		-0.639652, -0.659922, -0.394144,
		0.706743, -0.706553, 0.036028,
		33.179993, 40.677837, 50.936390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457836, 40.529667, 51.073376>,  <32.685272, 41.172424, 50.911171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457836, 40.529667, 51.073376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834599, 40.601948, 51.186619>,  <33.060658, 40.645317, 51.254566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834599, 40.601948, 51.186619>,  <32.457836, 40.529667, 51.073376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834599, 40.601948, 51.186619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323257, 0.258981, 0.910184,
		0.091155, -0.948828, 0.302351,
		0.941911, 0.180705, 0.283108,
		33.117172, 40.656158, 51.271549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828651, 40.818974, 51.331337>,  <32.457836, 40.529667, 51.073376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828651, 40.818974, 51.331337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600920, 40.680561, 51.629635>,  <31.464281, 40.597515, 51.808613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600920, 40.680561, 51.629635>,  <31.828651, 40.818974, 51.331337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600920, 40.680561, 51.629635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815652, -0.351227, 0.459730,
		0.102843, 0.870002, 0.482204,
		-0.569329, -0.346030, 0.745740,
		31.430120, 40.576752, 51.853355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211342, 40.981720, 51.959084>,  <31.828651, 40.818974, 51.331337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211342, 40.981720, 51.959084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977667, 40.685825, 52.092663>,  <31.837463, 40.508289, 52.172810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977667, 40.685825, 52.092663>,  <32.211342, 40.981720, 51.959084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977667, 40.685825, 52.092663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779985, -0.397928, 0.482988,
		-0.224397, 0.542627, 0.809446,
		-0.584183, -0.739736, 0.333946,
		31.802412, 40.463905, 52.192848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433979, 40.882843, 52.691353>,  <32.211342, 40.981720, 51.959084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433979, 40.882843, 52.691353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269691, 40.551720, 52.538486>,  <32.171120, 40.353046, 52.446766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269691, 40.551720, 52.538486>,  <32.433979, 40.882843, 52.691353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269691, 40.551720, 52.538486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726973, -0.550294, 0.410715,
		-0.550294, -0.109134, 0.827808,
		-0.410715, -0.827808, -0.382162,
		32.146477, 40.303379, 52.423840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661503, 40.429264, 53.327496>,  <32.433979, 40.882843, 52.691353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661503, 40.429264, 53.327496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360950, 40.691235, 53.295265>,  <32.180618, 40.848419, 53.275925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360950, 40.691235, 53.295265>,  <32.661503, 40.429264, 53.327496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360950, 40.691235, 53.295265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302644, 0.450549, 0.839888,
		0.586373, 0.606690, -0.536745,
		-0.751381, 0.654930, -0.080579,
		32.135536, 40.887714, 53.271091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046215, 39.922020, 53.151829>,  <32.661503, 40.429264, 53.327496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046215, 39.922020, 53.151829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015556, 39.671421, 52.841572>,  <32.997162, 39.521061, 52.655418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015556, 39.671421, 52.841572>,  <33.046215, 39.922020, 53.151829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015556, 39.671421, 52.841572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528647, 0.634052, -0.564367,
		0.845375, -0.453297, 0.282600,
		-0.076643, -0.626498, -0.775646,
		32.992565, 39.483471, 52.608879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644196, 39.845425, 52.903961>,  <33.046215, 39.922020, 53.151829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644196, 39.845425, 52.903961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423847, 39.749744, 52.584133>,  <33.291637, 39.692337, 52.392235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423847, 39.749744, 52.584133>,  <33.644196, 39.845425, 52.903961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423847, 39.749744, 52.584133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390092, 0.773155, -0.500060,
		0.737811, -0.587378, -0.332599,
		-0.550875, -0.239206, -0.799574,
		33.258583, 39.677982, 52.344261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185509, 39.784565, 52.296528>,  <33.644196, 39.845425, 52.903961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185509, 39.784565, 52.296528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809536, 39.842796, 52.173019>,  <33.583954, 39.877735, 52.098915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809536, 39.842796, 52.173019>,  <34.185509, 39.784565, 52.296528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809536, 39.842796, 52.173019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336869, 0.541900, -0.769976,
		0.055229, -0.827739, -0.558389,
		-0.939930, 0.145579, -0.308768,
		33.527557, 39.886471, 52.080387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.718548, 39.313614, 52.489872>,  <34.185509, 39.784565, 52.296528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.718548, 39.313614, 52.489872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615524, 38.931244, 52.546253>,  <34.553711, 38.701820, 52.580082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615524, 38.931244, 52.546253>,  <34.718548, 39.313614, 52.489872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615524, 38.931244, 52.546253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236701, -0.203851, -0.949957,
		0.936822, -0.211307, 0.278772,
		-0.257561, -0.955926, 0.140955,
		34.538258, 38.644466, 52.588539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276649, 38.698814, 52.303982>,  <34.718548, 39.313614, 52.489872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276649, 38.698814, 52.303982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896648, 38.575535, 52.283943>,  <34.668648, 38.501568, 52.271919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896648, 38.575535, 52.283943>,  <35.276649, 38.698814, 52.303982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896648, 38.575535, 52.283943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126406, -0.232916, -0.964247,
		0.285509, -0.922369, 0.260229,
		-0.950003, -0.308196, -0.050093,
		34.611649, 38.483078, 52.268917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241184, 37.958385, 51.991974>,  <35.276649, 38.698814, 52.303982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241184, 37.958385, 51.991974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924374, 38.192173, 51.921444>,  <34.734287, 38.332447, 51.879124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924374, 38.192173, 51.921444>,  <35.241184, 37.958385, 51.991974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924374, 38.192173, 51.921444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176096, -0.057832, -0.982673,
		-0.584543, -0.809350, -0.057119,
		-0.792023, 0.584473, -0.176328,
		34.686768, 38.367516, 51.868546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780388, 37.619675, 51.446896>,  <35.241184, 37.958385, 51.991974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780388, 37.619675, 51.446896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734341, 38.017006, 51.449516>,  <34.706715, 38.255405, 51.451088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734341, 38.017006, 51.449516>,  <34.780388, 37.619675, 51.446896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734341, 38.017006, 51.449516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046582, 0.011982, -0.998843,
		-0.992259, -0.114677, -0.047650,
		-0.115115, 0.993331, 0.006548,
		34.699806, 38.315006, 51.451481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249397, 37.705742, 50.971066>,  <34.780388, 37.619675, 51.446896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249397, 37.705742, 50.971066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403347, 38.074638, 50.985687>,  <34.495716, 38.295979, 50.994461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403347, 38.074638, 50.985687>,  <34.249397, 37.705742, 50.971066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403347, 38.074638, 50.985687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092907, 0.078111, -0.992606,
		-0.918280, 0.378634, 0.115746,
		0.384876, 0.922245, 0.036550,
		34.518810, 38.351311, 50.996651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875969, 38.198479, 50.446594>,  <34.249397, 37.705742, 50.971066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875969, 38.198479, 50.446594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236099, 38.355282, 50.522221>,  <34.452179, 38.449364, 50.567596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236099, 38.355282, 50.522221>,  <33.875969, 38.198479, 50.446594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236099, 38.355282, 50.522221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202530, 0.007151, -0.979250,
		-0.385224, 0.919935, -0.072954,
		0.900325, 0.392006, 0.189069,
		34.506195, 38.472885, 50.578941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957035, 38.459713, 49.762329>,  <33.875969, 38.198479, 50.446594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957035, 38.459713, 49.762329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308601, 38.491825, 49.950394>,  <34.519543, 38.511093, 50.063232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308601, 38.491825, 49.950394>,  <33.957035, 38.459713, 49.762329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308601, 38.491825, 49.950394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457292, 0.138383, -0.878484,
		-0.135586, 0.987120, 0.084917,
		0.878920, 0.080278, 0.470164,
		34.572277, 38.515907, 50.091442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396854, 39.066849, 49.417248>,  <33.957035, 38.459713, 49.762329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396854, 39.066849, 49.417248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676163, 38.830074, 49.578259>,  <34.843746, 38.688007, 49.674866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676163, 38.830074, 49.578259>,  <34.396854, 39.066849, 49.417248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676163, 38.830074, 49.578259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468674, -0.046985, -0.882121,
		0.541074, 0.804612, 0.244618,
		0.698271, -0.591939, 0.402524,
		34.885643, 38.652493, 49.699017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123974, 39.278374, 49.181236>,  <34.396854, 39.066849, 49.417248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123974, 39.278374, 49.181236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128044, 38.898029, 49.305019>,  <35.130486, 38.669823, 49.379292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128044, 38.898029, 49.305019>,  <35.123974, 39.278374, 49.181236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128044, 38.898029, 49.305019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461541, -0.270070, -0.845010,
		0.887060, 0.151429, 0.436112,
		0.010178, -0.950858, 0.309459,
		35.131096, 38.612770, 49.397858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740814, 39.054157, 48.935028>,  <35.123974, 39.278374, 49.181236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740814, 39.054157, 48.935028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529545, 38.723022, 49.010628>,  <35.402782, 38.524342, 49.055988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.529545, 38.723022, 49.010628>,  <35.740814, 39.054157, 48.935028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529545, 38.723022, 49.010628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364565, -0.422098, -0.830016,
		0.766892, -0.369492, 0.524741,
		-0.528176, -0.827834, 0.189000,
		35.371094, 38.474670, 49.067329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178959, 38.490520, 48.720699>,  <35.740814, 39.054157, 48.935028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178959, 38.490520, 48.720699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834938, 38.290962, 48.763428>,  <35.628525, 38.171227, 48.789066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834938, 38.290962, 48.763428>,  <36.178959, 38.490520, 48.720699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834938, 38.290962, 48.763428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157656, -0.458997, -0.874338,
		0.485238, -0.735134, 0.473415,
		-0.860052, -0.498899, 0.106824,
		35.576923, 38.141293, 48.795475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334702, 37.842712, 48.524910>,  <36.178959, 38.490520, 48.720699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334702, 37.842712, 48.524910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935741, 37.834587, 48.497257>,  <35.696365, 37.829712, 48.480667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935741, 37.834587, 48.497257>,  <36.334702, 37.842712, 48.524910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935741, 37.834587, 48.497257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070456, -0.475946, -0.876648,
		-0.015096, -0.879240, 0.476140,
		-0.997401, -0.020313, -0.069132,
		35.636520, 37.828495, 48.476517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193138, 37.307243, 48.205456>,  <36.334702, 37.842712, 48.524910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193138, 37.307243, 48.205456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829483, 37.458202, 48.134983>,  <35.611290, 37.548779, 48.092701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829483, 37.458202, 48.134983>,  <36.193138, 37.307243, 48.205456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829483, 37.458202, 48.134983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003287, -0.416485, -0.909137,
		-0.416485, -0.827109, 0.377401,
		0.909137, -0.377401, 0.176179,
		35.556744, 37.571423, 48.082130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750679, 36.755272, 48.000519>,  <36.193138, 37.307243, 48.205456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750679, 36.755272, 48.000519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564072, 37.080795, 47.861912>,  <35.452106, 37.276112, 47.778748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564072, 37.080795, 47.861912>,  <35.750679, 36.755272, 48.000519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564072, 37.080795, 47.861912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044128, -0.369857, -0.928040,
		-0.883412, -0.448235, 0.136632,
		-0.466514, 0.813812, -0.346516,
		35.424118, 37.324940, 47.757957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262447, 36.532764, 47.540512>,  <35.750679, 36.755272, 48.000519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262447, 36.532764, 47.540512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335846, 36.914612, 47.446671>,  <35.379887, 37.143719, 47.390366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335846, 36.914612, 47.446671>,  <35.262447, 36.532764, 47.540512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335846, 36.914612, 47.446671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103139, -0.256033, -0.961150,
		-0.977595, 0.152170, -0.145439,
		0.183495, 0.954616, -0.234602,
		35.390896, 37.200996, 47.376289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753906, 36.805271, 46.991657>,  <35.262447, 36.532764, 47.540512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753906, 36.805271, 46.991657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088905, 37.019970, 46.950665>,  <35.289906, 37.148788, 46.926067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088905, 37.019970, 46.950665>,  <34.753906, 36.805271, 46.991657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088905, 37.019970, 46.950665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184532, 0.101267, -0.977595,
		-0.514347, 0.837641, 0.183858,
		0.837493, 0.536751, -0.102486,
		35.340153, 37.180996, 46.919918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449116, 37.320866, 46.577652>,  <34.753906, 36.805271, 46.991657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449116, 37.320866, 46.577652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845482, 37.363365, 46.544662>,  <35.083302, 37.388866, 46.524868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845482, 37.363365, 46.544662>,  <34.449116, 37.320866, 46.577652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845482, 37.363365, 46.544662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083376, 0.004025, -0.996510,
		-0.105548, 0.994331, 0.012847,
		0.990913, 0.106251, -0.082478,
		35.142757, 37.395241, 46.519920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540249, 37.909069, 46.094479>,  <34.449116, 37.320866, 46.577652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540249, 37.909069, 46.094479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867603, 37.679382, 46.103516>,  <35.064018, 37.541569, 46.108936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867603, 37.679382, 46.103516>,  <34.540249, 37.909069, 46.094479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867603, 37.679382, 46.103516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154903, -0.258281, -0.953570,
		0.553393, 0.776893, -0.300323,
		0.818390, -0.574220, 0.022588,
		35.113121, 37.507118, 46.110291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866085, 38.104855, 45.568867>,  <34.540249, 37.909069, 46.094479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866085, 38.104855, 45.568867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010471, 37.740604, 45.649334>,  <35.097103, 37.522053, 45.697613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010471, 37.740604, 45.649334>,  <34.866085, 38.104855, 45.568867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010471, 37.740604, 45.649334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105531, -0.174438, -0.978997,
		0.926589, 0.374613, 0.033133,
		0.360965, -0.910624, 0.201166,
		35.118759, 37.467419, 45.709682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374641, 37.974140, 45.021278>,  <34.866085, 38.104855, 45.568867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374641, 37.974140, 45.021278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275101, 37.620071, 45.178528>,  <35.215378, 37.407631, 45.272877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275101, 37.620071, 45.178528>,  <35.374641, 37.974140, 45.021278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275101, 37.620071, 45.178528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150647, -0.436330, -0.887086,
		0.956754, -0.161529, 0.241929,
		-0.248851, -0.885169, 0.393126,
		35.200447, 37.354519, 45.296467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867470, 37.563828, 44.614414>,  <35.374641, 37.974140, 45.021278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867470, 37.563828, 44.614414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629406, 37.296768, 44.793316>,  <35.486568, 37.136532, 44.900658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629406, 37.296768, 44.793316>,  <35.867470, 37.563828, 44.614414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629406, 37.296768, 44.793316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077412, -0.601599, -0.795038,
		0.799869, -0.438554, 0.409733,
		-0.595162, -0.667645, 0.447250,
		35.450859, 37.096474, 44.927490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218307, 36.928646, 44.665108>,  <35.867470, 37.563828, 44.614414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218307, 36.928646, 44.665108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821404, 36.878986, 44.665085>,  <35.583260, 36.849190, 44.665070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821404, 36.878986, 44.665085>,  <36.218307, 36.928646, 44.665108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821404, 36.878986, 44.665085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061371, -0.490111, -0.869497,
		0.107916, -0.862774, 0.493939,
		-0.992264, -0.124146, -0.000058,
		35.523724, 36.841743, 44.665066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094162, 36.231434, 44.284348>,  <36.218307, 36.928646, 44.665108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094162, 36.231434, 44.284348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740891, 36.418785, 44.274342>,  <35.528927, 36.531197, 44.268337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740891, 36.418785, 44.274342>,  <36.094162, 36.231434, 44.284348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740891, 36.418785, 44.274342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197360, -0.419460, -0.886060,
		-0.425514, -0.777602, 0.462895,
		-0.883168, 0.468388, -0.025019,
		35.475937, 36.559299, 44.266838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618572, 35.688972, 44.097786>,  <36.094162, 36.231434, 44.284348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618572, 35.688972, 44.097786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397148, 36.012035, 44.016529>,  <35.264294, 36.205872, 43.967773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397148, 36.012035, 44.016529>,  <35.618572, 35.688972, 44.097786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397148, 36.012035, 44.016529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195998, -0.363416, -0.910776,
		-0.809417, -0.464354, 0.359471,
		-0.553560, 0.807653, -0.203142,
		35.231079, 36.254330, 43.955585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994751, 35.435284, 43.898983>,  <35.618572, 35.688972, 44.097786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994751, 35.435284, 43.898983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058170, 35.796143, 43.738491>,  <35.096222, 36.012657, 43.642197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058170, 35.796143, 43.738491>,  <34.994751, 35.435284, 43.898983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058170, 35.796143, 43.738491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247706, -0.357030, -0.900651,
		-0.955774, 0.242188, 0.166860,
		0.158552, 0.902150, -0.401231,
		35.105736, 36.066788, 43.618122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541550, 35.465996, 43.299137>,  <34.994751, 35.435284, 43.898983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541550, 35.465996, 43.299137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780102, 35.773346, 43.206249>,  <34.923233, 35.957756, 43.150517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780102, 35.773346, 43.206249>,  <34.541550, 35.465996, 43.299137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780102, 35.773346, 43.206249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114498, -0.204910, -0.972061,
		-0.794494, 0.606306, -0.034227,
		0.596380, 0.768378, -0.232221,
		34.959015, 36.003860, 43.136581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147247, 35.980274, 42.925179>,  <34.541550, 35.465996, 43.299137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147247, 35.980274, 42.925179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537189, 36.024406, 42.847736>,  <34.771156, 36.050884, 42.801270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537189, 36.024406, 42.847736>,  <34.147247, 35.980274, 42.925179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537189, 36.024406, 42.847736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187928, -0.059824, -0.980359,
		-0.119745, 0.992093, -0.037586,
		0.974856, 0.110330, -0.193606,
		34.829647, 36.057507, 42.789654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099308, 36.490044, 42.486252>,  <34.147247, 35.980274, 42.925179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099308, 36.490044, 42.486252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449547, 36.304665, 42.431778>,  <34.659691, 36.193436, 42.399094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449547, 36.304665, 42.431778>,  <34.099308, 36.490044, 42.486252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449547, 36.304665, 42.431778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218466, -0.128500, -0.967347,
		0.430814, 0.876758, -0.213761,
		0.875598, -0.463446, -0.136182,
		34.712227, 36.165630, 42.390923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273380, 36.617401, 41.771450>,  <34.099308, 36.490044, 42.486252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273380, 36.617401, 41.771450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528774, 36.324249, 41.865444>,  <34.682011, 36.148357, 41.921841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528774, 36.324249, 41.865444>,  <34.273380, 36.617401, 41.771450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528774, 36.324249, 41.865444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049238, -0.265801, -0.962769,
		0.768055, 0.626287, -0.133625,
		0.638487, -0.732881, 0.234987,
		34.720322, 36.104385, 41.935940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879704, 36.692501, 41.342236>,  <34.273380, 36.617401, 41.771450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879704, 36.692501, 41.342236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840134, 36.310184, 41.453003>,  <34.816391, 36.080795, 41.519463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.840134, 36.310184, 41.453003>,  <34.879704, 36.692501, 41.342236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840134, 36.310184, 41.453003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006423, -0.278889, -0.960302,
		0.995074, -0.093221, 0.033729,
		-0.098927, -0.955788, 0.276916,
		34.810455, 36.023449, 41.536079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351112, 36.362167, 40.980579>,  <34.879704, 36.692501, 41.342236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351112, 36.362167, 40.980579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085007, 36.084293, 41.090008>,  <34.925343, 35.917568, 41.155666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085007, 36.084293, 41.090008>,  <35.351112, 36.362167, 40.980579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085007, 36.084293, 41.090008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063166, -0.312736, -0.947738,
		0.743933, -0.647774, 0.164171,
		-0.665262, -0.694683, 0.273572,
		34.885429, 35.875889, 41.172081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575623, 35.816750, 40.634430>,  <35.351112, 36.362167, 40.980579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575623, 35.816750, 40.634430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221100, 35.675240, 40.753960>,  <35.008385, 35.590332, 40.825680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221100, 35.675240, 40.753960>,  <35.575623, 35.816750, 40.634430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221100, 35.675240, 40.753960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085735, -0.508776, -0.856619,
		0.455087, -0.784850, 0.420602,
		-0.886310, -0.353776, 0.298826,
		34.955208, 35.569107, 40.843609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661758, 35.093864, 40.656700>,  <35.575623, 35.816750, 40.634430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661758, 35.093864, 40.656700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280708, 35.202633, 40.602200>,  <35.052078, 35.267895, 40.569500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280708, 35.202633, 40.602200>,  <35.661758, 35.093864, 40.656700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280708, 35.202633, 40.602200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014022, -0.408228, -0.912772,
		-0.303826, -0.871440, 0.385075,
		-0.952624, 0.271924, -0.136250,
		34.994923, 35.284210, 40.561325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284016, 34.527657, 40.207371>,  <35.661758, 35.093864, 40.656700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284016, 34.527657, 40.207371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060501, 34.855247, 40.155170>,  <34.926392, 35.051804, 40.123852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060501, 34.855247, 40.155170>,  <35.284016, 34.527657, 40.207371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060501, 34.855247, 40.155170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144394, -0.251035, -0.957148,
		-0.816642, -0.516001, 0.258531,
		-0.558789, 0.818978, -0.130498,
		34.892864, 35.100941, 40.116020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654945, 34.309914, 39.717621>,  <35.284016, 34.527657, 40.207371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654945, 34.309914, 39.717621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679344, 34.709148, 39.713779>,  <34.693985, 34.948692, 39.711475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679344, 34.709148, 39.713779>,  <34.654945, 34.309914, 39.717621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679344, 34.709148, 39.713779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079868, -0.004708, -0.996794,
		-0.994937, 0.061571, 0.079429,
		0.061000, 0.998092, -0.009602,
		34.697643, 35.008575, 39.710899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246796, 34.513264, 39.130405>,  <34.654945, 34.309914, 39.717621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246796, 34.513264, 39.130405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479763, 34.830860, 39.200115>,  <34.619541, 35.021420, 39.241940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479763, 34.830860, 39.200115>,  <34.246796, 34.513264, 39.130405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479763, 34.830860, 39.200115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093992, 0.147168, -0.984635,
		-0.807439, 0.589847, 0.011084,
		0.582416, 0.793991, 0.174270,
		34.654488, 35.069057, 39.252396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900837, 34.967823, 38.708382>,  <34.246796, 34.513264, 39.130405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900837, 34.967823, 38.708382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268314, 35.109520, 38.778248>,  <34.488800, 35.194538, 38.820168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268314, 35.109520, 38.778248>,  <33.900837, 34.967823, 38.708382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268314, 35.109520, 38.778248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187648, -0.002346, -0.982234,
		-0.347540, 0.935150, -0.068628,
		0.918697, 0.354243, 0.174664,
		34.543922, 35.215794, 38.830647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018265, 35.609833, 38.345024>,  <33.900837, 34.967823, 38.708382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018265, 35.609833, 38.345024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375732, 35.443764, 38.413124>,  <34.590214, 35.344120, 38.453983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375732, 35.443764, 38.413124>,  <34.018265, 35.609833, 38.345024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375732, 35.443764, 38.413124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226895, 0.090765, -0.969681,
		0.387136, 0.905202, 0.175315,
		0.893669, -0.415176, 0.170247,
		34.643833, 35.319210, 38.464199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435410, 36.050171, 38.068230>,  <34.018265, 35.609833, 38.345024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435410, 36.050171, 38.068230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649063, 35.713169, 38.096222>,  <34.777256, 35.510967, 38.113018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649063, 35.713169, 38.096222>,  <34.435410, 36.050171, 38.068230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649063, 35.713169, 38.096222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230224, 0.065307, -0.970944,
		0.813451, 0.534721, 0.228846,
		0.534130, -0.842501, 0.069982,
		34.809303, 35.460419, 38.117218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044708, 36.169182, 37.648285>,  <34.435410, 36.050171, 38.068230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044708, 36.169182, 37.648285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056404, 35.772453, 37.697971>,  <35.063423, 35.534416, 37.727783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056404, 35.772453, 37.697971>,  <35.044708, 36.169182, 37.648285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056404, 35.772453, 37.697971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470237, -0.096012, -0.877302,
		0.882056, 0.084067, 0.463585,
		0.029242, -0.991824, 0.124219,
		35.065178, 35.474907, 37.735237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699352, 35.941525, 37.516941>,  <35.044708, 36.169182, 37.648285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699352, 35.941525, 37.516941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466461, 35.623405, 37.449387>,  <35.326729, 35.432533, 37.408852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466461, 35.623405, 37.449387>,  <35.699352, 35.941525, 37.516941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466461, 35.623405, 37.449387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380774, -0.083191, -0.920919,
		0.718351, -0.600489, 0.351263,
		-0.582223, -0.795294, -0.168890,
		35.291794, 35.384819, 37.398720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153538, 35.375248, 37.362011>,  <35.699352, 35.941525, 37.516941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153538, 35.375248, 37.362011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788845, 35.317738, 37.208088>,  <35.570030, 35.283230, 37.115734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788845, 35.317738, 37.208088>,  <36.153538, 35.375248, 37.362011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788845, 35.317738, 37.208088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390486, -0.012488, -0.920524,
		0.127544, -0.989531, 0.067528,
		-0.911731, -0.143776, -0.384805,
		35.515327, 35.274605, 37.092648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746319, 35.706936, 37.425114>,  <36.153538, 35.375248, 37.362011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746319, 35.706936, 37.425114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071453, 35.503906, 37.539421>,  <37.266533, 35.382088, 37.608006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071453, 35.503906, 37.539421>,  <36.746319, 35.706936, 37.425114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071453, 35.503906, 37.539421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103219, 0.357321, 0.928260,
		-0.573276, -0.784019, 0.238052,
		0.812835, -0.507578, 0.285769,
		37.315304, 35.351631, 37.625153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656227, 35.370037, 38.082630>,  <36.746319, 35.706936, 37.425114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656227, 35.370037, 38.082630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050873, 35.316666, 38.045132>,  <37.287659, 35.284645, 38.022633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050873, 35.316666, 38.045132>,  <36.656227, 35.370037, 38.082630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050873, 35.316666, 38.045132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111903, 0.135804, 0.984396,
		-0.118612, -0.981710, 0.148917,
		0.986615, -0.133425, -0.093748,
		37.346859, 35.276638, 38.017006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915764, 34.895947, 38.686337>,  <36.656227, 35.370037, 38.082630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915764, 34.895947, 38.686337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216415, 35.129108, 38.562866>,  <37.396805, 35.269005, 38.488785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216415, 35.129108, 38.562866>,  <36.915764, 34.895947, 38.686337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216415, 35.129108, 38.562866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210687, 0.231288, 0.949798,
		0.625036, -0.778926, 0.051031,
		0.751626, 0.582906, -0.308673,
		37.441902, 35.303982, 38.470264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532768, 34.665756, 38.994175>,  <36.915764, 34.895947, 38.686337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532768, 34.665756, 38.994175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643154, 35.038277, 38.899078>,  <37.709385, 35.261787, 38.842022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643154, 35.038277, 38.899078>,  <37.532768, 34.665756, 38.994175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643154, 35.038277, 38.899078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309774, 0.147972, 0.939226,
		0.909880, -0.332843, -0.247657,
		0.275968, 0.931300, -0.237742,
		37.725945, 35.317665, 38.827755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167389, 34.777111, 39.359005>,  <37.532768, 34.665756, 38.994175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167389, 34.777111, 39.359005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054115, 35.148651, 39.263462>,  <37.986153, 35.371574, 39.206139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054115, 35.148651, 39.263462>,  <38.167389, 34.777111, 39.359005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054115, 35.148651, 39.263462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522690, 0.358281, 0.773582,
		0.804116, 0.094218, -0.586958,
		-0.283181, 0.928848, -0.238853,
		37.969162, 35.427307, 39.191807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705284, 35.271629, 39.443943>,  <38.167389, 34.777111, 39.359005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705284, 35.271629, 39.443943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374680, 35.496235, 39.459835>,  <38.176315, 35.630997, 39.469368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374680, 35.496235, 39.459835>,  <38.705284, 35.271629, 39.443943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374680, 35.496235, 39.459835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326635, 0.420921, 0.846248,
		0.458455, 0.712413, -0.531306,
		-0.826516, 0.561510, 0.039726,
		38.126724, 35.664688, 39.471752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973354, 35.857109, 39.662354>,  <38.705284, 35.271629, 39.443943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973354, 35.857109, 39.662354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582687, 35.922165, 39.718441>,  <38.348286, 35.961197, 39.752094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582687, 35.922165, 39.718441>,  <38.973354, 35.857109, 39.662354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582687, 35.922165, 39.718441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204904, 0.510505, 0.835104,
		0.064240, 0.844353, -0.531922,
		-0.976672, 0.162640, 0.140216,
		38.289684, 35.970959, 39.760506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901882, 36.620342, 39.790760>,  <38.973354, 35.857109, 39.662354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901882, 36.620342, 39.790760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588867, 36.435081, 39.957191>,  <38.401058, 36.323925, 40.057049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588867, 36.435081, 39.957191>,  <38.901882, 36.620342, 39.790760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588867, 36.435081, 39.957191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144851, 0.514512, 0.845160,
		-0.605517, 0.721639, -0.335537,
		-0.782539, -0.463157, 0.416076,
		38.354107, 36.296135, 40.082016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565849, 37.162094, 40.227959>,  <38.901882, 36.620342, 39.790760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565849, 37.162094, 40.227959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402527, 36.822117, 40.361156>,  <38.304531, 36.618130, 40.441074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402527, 36.822117, 40.361156>,  <38.565849, 37.162094, 40.227959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402527, 36.822117, 40.361156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174881, 0.430863, 0.885310,
		-0.895936, 0.303246, -0.324563,
		-0.408309, -0.849941, 0.332993,
		38.280033, 36.567135, 40.461056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119549, 37.334061, 40.787361>,  <38.565849, 37.162094, 40.227959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119549, 37.334061, 40.787361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166218, 36.944168, 40.863548>,  <38.194221, 36.710232, 40.909260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166218, 36.944168, 40.863548>,  <38.119549, 37.334061, 40.787361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166218, 36.944168, 40.863548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104115, 0.178717, 0.978376,
		-0.987698, -0.133983, -0.080633,
		0.116676, -0.974735, 0.190468,
		38.201221, 36.651749, 40.920689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554893, 37.093418, 41.234062>,  <38.119549, 37.334061, 40.787361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554893, 37.093418, 41.234062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848396, 36.826984, 41.287640>,  <38.024498, 36.667126, 41.319786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.848396, 36.826984, 41.287640>,  <37.554893, 37.093418, 41.234062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848396, 36.826984, 41.287640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052919, 0.140519, 0.988663,
		-0.677353, -0.732522, 0.067858,
		0.733752, -0.666083, 0.133946,
		38.068523, 36.627159, 41.327824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345078, 36.732285, 41.824436>,  <37.554893, 37.093418, 41.234062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345078, 36.732285, 41.824436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731712, 36.634830, 41.792553>,  <37.963692, 36.576359, 41.773422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731712, 36.634830, 41.792553>,  <37.345078, 36.732285, 41.824436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731712, 36.634830, 41.792553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056889, -0.099323, 0.993428,
		-0.249948, -0.964769, -0.082144,
		0.966586, -0.243633, -0.079710,
		38.021687, 36.561741, 41.768639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414772, 36.343025, 42.373108>,  <37.345078, 36.732285, 41.824436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414772, 36.343025, 42.373108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786591, 36.439938, 42.261940>,  <38.009682, 36.498085, 42.195240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786591, 36.439938, 42.261940>,  <37.414772, 36.343025, 42.373108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786591, 36.439938, 42.261940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305577, -0.084488, 0.948412,
		0.206300, -0.966521, -0.152570,
		0.929550, 0.242279, -0.277916,
		38.065456, 36.512623, 42.178566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837292, 35.841404, 42.648521>,  <37.414772, 36.343025, 42.373108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837292, 35.841404, 42.648521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096153, 36.141861, 42.596409>,  <38.251469, 36.322136, 42.565144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096153, 36.141861, 42.596409>,  <37.837292, 35.841404, 42.648521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096153, 36.141861, 42.596409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319097, -0.111694, 0.941117,
		0.692365, -0.650619, -0.311972,
		0.647154, 0.751145, -0.130277,
		38.290298, 36.367203, 42.557327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445213, 35.591602, 42.900150>,  <37.837292, 35.841404, 42.648521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445213, 35.591602, 42.900150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467339, 35.990871, 42.909870>,  <38.480614, 36.230434, 42.915703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467339, 35.990871, 42.909870>,  <38.445213, 35.591602, 42.900150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467339, 35.990871, 42.909870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160177, -0.032896, 0.986540,
		0.985537, -0.050675, -0.161704,
		0.055312, 0.998173, 0.024303,
		38.483932, 36.290325, 42.917160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054218, 35.736694, 43.340981>,  <38.445213, 35.591602, 42.900150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054218, 35.736694, 43.340981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804653, 36.049038, 43.328419>,  <38.654915, 36.236446, 43.320881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804653, 36.049038, 43.328419>,  <39.054218, 35.736694, 43.340981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804653, 36.049038, 43.328419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135230, 0.147457, 0.979780,
		0.769704, 0.607052, -0.197596,
		-0.623914, 0.780862, -0.031406,
		38.617477, 36.283295, 43.318996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382198, 36.297760, 43.732441>,  <39.054218, 35.736694, 43.340981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382198, 36.297760, 43.732441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993900, 36.393101, 43.720795>,  <38.760921, 36.450306, 43.713806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993900, 36.393101, 43.720795>,  <39.382198, 36.297760, 43.732441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993900, 36.393101, 43.720795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000003, 0.121226, 0.992625,
		0.240127, 0.963583, -0.117678,
		-0.970742, 0.238355, -0.029113,
		38.702679, 36.464607, 43.712059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267666, 36.948166, 44.071239>,  <39.382198, 36.297760, 43.732441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267666, 36.948166, 44.071239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907471, 36.774216, 44.070251>,  <38.691353, 36.669846, 44.069660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907471, 36.774216, 44.070251>,  <39.267666, 36.948166, 44.071239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907471, 36.774216, 44.070251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086306, 0.173143, 0.981108,
		-0.426235, 0.883687, -0.193445,
		-0.900486, -0.434878, -0.002468,
		38.637325, 36.643753, 44.069511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835827, 37.454529, 44.322178>,  <39.267666, 36.948166, 44.071239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835827, 37.454529, 44.322178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638950, 37.109230, 44.367008>,  <38.520824, 36.902050, 44.393906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638950, 37.109230, 44.367008>,  <38.835827, 37.454529, 44.322178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638950, 37.109230, 44.367008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271098, 0.274356, 0.922624,
		-0.827199, 0.423719, -0.369058,
		-0.492187, -0.863244, 0.112078,
		38.491295, 36.850258, 44.400631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101711, 37.590752, 44.532902>,  <38.835827, 37.454529, 44.322178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101711, 37.590752, 44.532902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192165, 37.220814, 44.655228>,  <38.246437, 36.998852, 44.728622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192165, 37.220814, 44.655228>,  <38.101711, 37.590752, 44.532902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192165, 37.220814, 44.655228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275692, 0.240346, 0.930714,
		-0.934267, -0.294782, -0.200620,
		0.226140, -0.924844, 0.305816,
		38.260006, 36.943359, 44.746971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550869, 37.328903, 44.940960>,  <38.101711, 37.590752, 44.532902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550869, 37.328903, 44.940960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858624, 37.105057, 45.064163>,  <38.043278, 36.970749, 45.138084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858624, 37.105057, 45.064163>,  <37.550869, 37.328903, 44.940960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858624, 37.105057, 45.064163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267118, 0.156136, 0.950931,
		-0.580248, -0.813911, -0.029354,
		0.769390, -0.559616, 0.308008,
		38.089439, 36.937172, 45.156567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361370, 36.926060, 45.448029>,  <37.550869, 37.328903, 44.940960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.361370, 36.926060, 45.448029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755779, 36.902756, 45.510464>,  <37.992424, 36.888771, 45.547924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755779, 36.902756, 45.510464>,  <37.361370, 36.926060, 45.448029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755779, 36.902756, 45.510464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146873, 0.138283, 0.979442,
		-0.078651, -0.988677, 0.127793,
		0.986023, -0.058265, 0.156086,
		38.051586, 36.885277, 45.557289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513969, 36.408714, 45.939060>,  <37.361370, 36.926060, 45.448029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513969, 36.408714, 45.939060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805073, 36.683044, 45.940823>,  <37.979736, 36.847641, 45.941879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805073, 36.683044, 45.940823>,  <37.513969, 36.408714, 45.939060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805073, 36.683044, 45.940823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136557, 0.138603, 0.980888,
		0.672103, -0.714450, 0.194523,
		0.727757, 0.685821, 0.004408,
		38.023399, 36.888790, 45.942146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813156, 36.279041, 46.614902>,  <37.513969, 36.408714, 45.939060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813156, 36.279041, 46.614902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953350, 36.630802, 46.486027>,  <38.037464, 36.841858, 46.408699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953350, 36.630802, 46.486027>,  <37.813156, 36.279041, 46.614902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953350, 36.630802, 46.486027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057821, 0.363675, 0.929730,
		0.934783, -0.307224, 0.178310,
		0.350482, 0.879405, -0.322193,
		38.058495, 36.894623, 46.389370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402744, 36.480217, 47.105656>,  <37.813156, 36.279041, 46.614902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402744, 36.480217, 47.105656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280933, 36.814060, 46.922050>,  <38.207848, 37.014366, 46.811886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.280933, 36.814060, 46.922050>,  <38.402744, 36.480217, 47.105656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280933, 36.814060, 46.922050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064503, 0.462727, 0.884151,
		0.950316, 0.298859, -0.087080,
		-0.304530, 0.834606, -0.459014,
		38.189575, 37.064442, 46.784348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705666, 37.130173, 47.457520>,  <38.402744, 36.480217, 47.105656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705666, 37.130173, 47.457520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386669, 37.270885, 47.261456>,  <38.195271, 37.355312, 47.143818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386669, 37.270885, 47.261456>,  <38.705666, 37.130173, 47.457520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386669, 37.270885, 47.261456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177959, 0.639131, 0.748226,
		0.576487, 0.683933, -0.447099,
		-0.797492, 0.351777, -0.490163,
		38.147423, 37.376419, 47.114407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776886, 37.882561, 47.480679>,  <38.705666, 37.130173, 47.457520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776886, 37.882561, 47.480679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387619, 37.821903, 47.411449>,  <38.154060, 37.785507, 47.369911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387619, 37.821903, 47.411449>,  <38.776886, 37.882561, 47.480679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387619, 37.821903, 47.411449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227890, 0.739383, 0.633545,
		0.031894, 0.655985, -0.754099,
		-0.973164, -0.151646, -0.173074,
		38.095669, 37.776409, 47.359528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479694, 38.513508, 47.191952>,  <38.776886, 37.882561, 47.480679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479694, 38.513508, 47.191952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184692, 38.328098, 47.388412>,  <38.007690, 38.216854, 47.506287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184692, 38.328098, 47.388412>,  <38.479694, 38.513508, 47.191952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184692, 38.328098, 47.388412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146914, 0.819965, 0.553238,
		-0.659164, 0.335861, -0.672830,
		-0.737509, -0.463523, 0.491149,
		37.963440, 38.189041, 47.535755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047760, 39.027645, 47.442635>,  <38.479694, 38.513508, 47.191952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047760, 39.027645, 47.442635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910450, 38.704666, 47.634544>,  <37.828064, 38.510880, 47.749691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910450, 38.704666, 47.634544>,  <38.047760, 39.027645, 47.442635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910450, 38.704666, 47.634544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238965, 0.569091, 0.786785,
		-0.908328, 0.155431, -0.388305,
		-0.343271, -0.807450, 0.479779,
		37.807468, 38.462429, 47.778477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407711, 39.253841, 47.776848>,  <38.047760, 39.027645, 47.442635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407711, 39.253841, 47.776848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495426, 38.921909, 47.982094>,  <37.548054, 38.722748, 48.105244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495426, 38.921909, 47.982094>,  <37.407711, 39.253841, 47.776848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495426, 38.921909, 47.982094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024470, 0.530432, 0.847374,
		-0.975354, -0.173262, 0.136622,
		0.219287, -0.829832, 0.513119,
		37.561211, 38.672958, 48.136028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934895, 39.203152, 48.334148>,  <37.407711, 39.253841, 47.776848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934895, 39.203152, 48.334148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246464, 38.977108, 48.442909>,  <37.433407, 38.841480, 48.508163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246464, 38.977108, 48.442909>,  <36.934895, 39.203152, 48.334148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246464, 38.977108, 48.442909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090907, 0.530735, 0.842648,
		-0.620497, -0.631640, 0.464773,
		0.778922, -0.565112, 0.271899,
		37.480141, 38.807575, 48.524479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764668, 38.904099, 49.023647>,  <36.934895, 39.203152, 48.334148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764668, 38.904099, 49.023647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161007, 38.924271, 48.973572>,  <37.398811, 38.936375, 48.943527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161007, 38.924271, 48.973572>,  <36.764668, 38.904099, 49.023647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161007, 38.924271, 48.973572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090721, 0.437917, 0.894427,
		0.099928, -0.897600, 0.429335,
		0.990850, 0.050429, -0.125191,
		37.458263, 38.939400, 48.936016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100052, 38.536018, 49.574829>,  <36.764668, 38.904099, 49.023647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100052, 38.536018, 49.574829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368469, 38.804173, 49.448158>,  <37.529522, 38.965065, 49.372158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368469, 38.804173, 49.448158>,  <37.100052, 38.536018, 49.574829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368469, 38.804173, 49.448158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047898, 0.387029, 0.920823,
		0.739867, -0.633083, 0.227604,
		0.671046, 0.670384, -0.316673,
		37.569782, 39.005287, 49.353157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529312, 38.606701, 50.137486>,  <37.100052, 38.536018, 49.574829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529312, 38.606701, 50.137486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649071, 38.931488, 49.937057>,  <37.720924, 39.126362, 49.816803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.649071, 38.931488, 49.937057>,  <37.529312, 38.606701, 50.137486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649071, 38.931488, 49.937057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283218, 0.425859, 0.859321,
		0.911126, -0.399186, -0.102465,
		0.299393, 0.811969, -0.501068,
		37.738888, 39.175079, 49.786736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284370, 38.786209, 50.375824>,  <37.529312, 38.606701, 50.137486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284370, 38.786209, 50.375824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131325, 39.128658, 50.236877>,  <38.039497, 39.334126, 50.153507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.131325, 39.128658, 50.236877>,  <38.284370, 38.786209, 50.375824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131325, 39.128658, 50.236877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330590, 0.477946, 0.813805,
		0.862737, 0.196538, -0.465894,
		-0.382616, 0.856119, -0.347368,
		38.016541, 39.385494, 50.132668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866417, 39.290081, 50.351871>,  <38.284370, 38.786209, 50.375824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866417, 39.290081, 50.351871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522419, 39.494087, 50.358727>,  <38.316021, 39.616493, 50.362839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522419, 39.494087, 50.358727>,  <38.866417, 39.290081, 50.351871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522419, 39.494087, 50.358727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331468, 0.532760, 0.778650,
		0.387997, 0.675313, -0.627225,
		-0.859993, 0.510018, 0.017135,
		38.264420, 39.647091, 50.363869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064148, 39.955173, 50.506699>,  <38.866417, 39.290081, 50.351871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064148, 39.955173, 50.506699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715782, 39.846531, 50.670517>,  <38.506763, 39.781345, 50.768810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715782, 39.846531, 50.670517>,  <39.064148, 39.955173, 50.506699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715782, 39.846531, 50.670517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242073, 0.488158, 0.838512,
		-0.427670, 0.829417, -0.359397,
		-0.870919, -0.271606, 0.409549,
		38.454506, 39.765049, 50.793381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944828, 40.612518, 50.892334>,  <39.064148, 39.955173, 50.506699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944828, 40.612518, 50.892334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787472, 40.970947, 50.810059>,  <38.693058, 41.186005, 50.760693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787472, 40.970947, 50.810059>,  <38.944828, 40.612518, 50.892334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787472, 40.970947, 50.810059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347480, -0.062222, -0.935621,
		-0.851179, -0.439534, -0.286888,
		-0.393386, 0.896068, -0.205691,
		38.669456, 41.239769, 50.748352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473824, 40.539467, 50.317657>,  <38.944828, 40.612518, 50.892334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473824, 40.539467, 50.317657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660305, 40.889862, 50.367149>,  <38.772194, 41.100098, 50.396843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660305, 40.889862, 50.367149>,  <38.473824, 40.539467, 50.317657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660305, 40.889862, 50.367149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472910, -0.128561, -0.871681,
		-0.747671, 0.464893, -0.474197,
		0.466201, 0.875983, 0.123731,
		38.800167, 41.152657, 50.404270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302910, 40.843666, 49.679241>,  <38.473824, 40.539467, 50.317657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302910, 40.843666, 49.679241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609623, 41.055172, 49.824818>,  <38.793652, 41.182076, 49.912163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609623, 41.055172, 49.824818>,  <38.302910, 40.843666, 49.679241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609623, 41.055172, 49.824818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401273, 0.047680, -0.914717,
		-0.501019, 0.847430, -0.175617,
		0.766785, 0.528761, 0.363939,
		38.839657, 41.213799, 49.933998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572849, 41.457153, 49.296207>,  <38.302910, 40.843666, 49.679241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572849, 41.457153, 49.296207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911743, 41.371731, 49.490772>,  <39.115078, 41.320477, 49.607510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911743, 41.371731, 49.490772>,  <38.572849, 41.457153, 49.296207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911743, 41.371731, 49.490772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477225, -0.096252, -0.873494,
		0.233357, 0.972178, 0.020366,
		0.847231, -0.213555, 0.486409,
		39.165913, 41.307663, 49.636696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122047, 41.892139, 49.062756>,  <38.572849, 41.457153, 49.296207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122047, 41.892139, 49.062756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294537, 41.579247, 49.242603>,  <39.398029, 41.391510, 49.350513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.294537, 41.579247, 49.242603>,  <39.122047, 41.892139, 49.062756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294537, 41.579247, 49.242603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583665, -0.138166, -0.800153,
		0.688029, 0.607471, 0.396982,
		0.431221, -0.782233, 0.449622,
		39.423904, 41.344578, 49.377491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725010, 42.006142, 48.836910>,  <39.122047, 41.892139, 49.062756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725010, 42.006142, 48.836910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743961, 41.624390, 48.954834>,  <39.755333, 41.395340, 49.025589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743961, 41.624390, 48.954834>,  <39.725010, 42.006142, 48.836910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743961, 41.624390, 48.954834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544367, -0.222795, -0.808719,
		0.837508, 0.198800, 0.508978,
		0.047375, -0.954380, 0.294812,
		39.758175, 41.338074, 49.043278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488110, 41.752842, 48.813065>,  <39.725010, 42.006142, 48.836910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488110, 41.752842, 48.813065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230495, 41.447723, 48.789864>,  <40.075928, 41.264652, 48.775944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230495, 41.447723, 48.789864>,  <40.488110, 41.752842, 48.813065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230495, 41.447723, 48.789864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423252, -0.292137, -0.857621,
		0.637242, -0.576889, 0.511000,
		-0.644034, -0.762794, -0.058007,
		40.037285, 41.218884, 48.772461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929672, 41.301144, 48.436600>,  <40.488110, 41.752842, 48.813065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929672, 41.301144, 48.436600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576572, 41.114666, 48.413246>,  <40.364712, 41.002781, 48.399235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576572, 41.114666, 48.413246>,  <40.929672, 41.301144, 48.436600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576572, 41.114666, 48.413246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260112, -0.381442, -0.887042,
		0.391265, -0.798226, 0.457982,
		-0.882753, -0.466195, -0.058383,
		40.311745, 40.974808, 48.395733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063808, 40.551907, 48.218170>,  <40.929672, 41.301144, 48.436600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063808, 40.551907, 48.218170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684792, 40.651062, 48.137463>,  <40.457382, 40.710556, 48.089039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684792, 40.651062, 48.137463>,  <41.063808, 40.551907, 48.218170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684792, 40.651062, 48.137463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168015, -0.150724, -0.974194,
		-0.271905, -0.956991, 0.101169,
		-0.947544, 0.247890, -0.201772,
		40.400528, 40.725430, 48.076931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157833, 40.296970, 47.615532>,  <41.063808, 40.551907, 48.218170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157833, 40.296970, 47.615532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788200, 40.444626, 47.575901>,  <40.566422, 40.533218, 47.552120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788200, 40.444626, 47.575901>,  <41.157833, 40.296970, 47.615532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788200, 40.444626, 47.575901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055875, -0.125970, -0.990459,
		-0.378097, -0.920798, 0.095781,
		-0.924078, 0.369138, -0.099079,
		40.510979, 40.555367, 47.546177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618057, 39.776997, 47.453938>,  <41.157833, 40.296970, 47.615532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618057, 39.776997, 47.453938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495037, 40.132748, 47.318638>,  <40.421223, 40.346199, 47.237457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495037, 40.132748, 47.318638>,  <40.618057, 39.776997, 47.453938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495037, 40.132748, 47.318638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017484, -0.350133, -0.936537,
		-0.951370, -0.293949, 0.092135,
		-0.307554, 0.889382, -0.338245,
		40.402771, 40.399563, 47.217163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074348, 39.648777, 47.086338>,  <40.618057, 39.776997, 47.453938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074348, 39.648777, 47.086338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161404, 40.010990, 46.940659>,  <40.213638, 40.228317, 46.853249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161404, 40.010990, 46.940659>,  <40.074348, 39.648777, 47.086338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161404, 40.010990, 46.940659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227894, -0.315684, -0.921091,
		-0.949051, 0.283466, 0.137660,
		0.217641, 0.905533, -0.364201,
		40.226696, 40.282650, 46.831398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687141, 39.695480, 46.472263>,  <40.074348, 39.648777, 47.086338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687141, 39.695480, 46.472263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950668, 39.994362, 46.437302>,  <40.108784, 40.173691, 46.416325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950668, 39.994362, 46.437302>,  <39.687141, 39.695480, 46.472263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950668, 39.994362, 46.437302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034744, -0.146274, -0.988634,
		-0.751500, 0.648293, -0.122329,
		0.658818, 0.747208, -0.087400,
		40.148315, 40.218525, 46.411083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480194, 40.048702, 45.855171>,  <39.687141, 39.695480, 46.472263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480194, 40.048702, 45.855171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867645, 40.128330, 45.914680>,  <40.100117, 40.176105, 45.950386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.867645, 40.128330, 45.914680>,  <39.480194, 40.048702, 45.855171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.867645, 40.128330, 45.914680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167121, -0.078693, -0.982791,
		-0.183933, 0.976822, -0.109492,
		0.968628, 0.199066, 0.148774,
		40.158234, 40.188049, 45.959312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758392, 40.727840, 45.462498>,  <39.480194, 40.048702, 45.855171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758392, 40.727840, 45.462498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042767, 40.460823, 45.551003>,  <40.213390, 40.300613, 45.604107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042767, 40.460823, 45.551003>,  <39.758392, 40.727840, 45.462498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042767, 40.460823, 45.551003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202254, -0.107259, -0.973442,
		0.673545, 0.736807, 0.058759,
		0.710936, -0.667541, 0.221266,
		40.256046, 40.260559, 45.617382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216415, 40.815533, 44.924358>,  <39.758392, 40.727840, 45.462498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216415, 40.815533, 44.924358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362202, 40.481693, 45.089581>,  <40.449673, 40.281391, 45.188713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362202, 40.481693, 45.089581>,  <40.216415, 40.815533, 44.924358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362202, 40.481693, 45.089581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167815, -0.377433, -0.910704,
		0.915969, 0.401241, 0.002495,
		0.364470, -0.834596, 0.413051,
		40.471542, 40.231316, 45.213497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845467, 40.642021, 44.547470>,  <40.216415, 40.815533, 44.924358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845467, 40.642021, 44.547470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751381, 40.292027, 44.716740>,  <40.694927, 40.082031, 44.818302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751381, 40.292027, 44.716740>,  <40.845467, 40.642021, 44.547470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751381, 40.292027, 44.716740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203234, -0.470041, -0.858928,
		0.950457, -0.116032, 0.288389,
		-0.235217, -0.874985, 0.423172,
		40.680817, 40.029530, 44.843693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177204, 40.219376, 44.212528>,  <40.845467, 40.642021, 44.547470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177204, 40.219376, 44.212528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920166, 39.965118, 44.383656>,  <40.765945, 39.812565, 44.486332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920166, 39.965118, 44.383656>,  <41.177204, 40.219376, 44.212528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920166, 39.965118, 44.383656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059636, -0.515173, -0.855009,
		0.763884, -0.574936, 0.293139,
		-0.642592, -0.635646, 0.427819,
		40.727386, 39.774426, 44.512001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463280, 39.533150, 44.208984>,  <41.177204, 40.219376, 44.212528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463280, 39.533150, 44.208984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064037, 39.523884, 44.231777>,  <40.824493, 39.518322, 44.245453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064037, 39.523884, 44.231777>,  <41.463280, 39.533150, 44.208984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064037, 39.523884, 44.231777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025435, -0.688003, -0.725262,
		0.056006, -0.725338, 0.686111,
		-0.998107, -0.023168, 0.056982,
		40.764606, 39.516933, 44.248871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300491, 38.851742, 44.086365>,  <41.463280, 39.533150, 44.208984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300491, 38.851742, 44.086365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950325, 39.031616, 44.015457>,  <40.740223, 39.139542, 43.972912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950325, 39.031616, 44.015457>,  <41.300491, 38.851742, 44.086365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950325, 39.031616, 44.015457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158780, -0.613916, -0.773238,
		-0.456543, -0.648759, 0.608834,
		-0.875418, 0.449687, -0.177269,
		40.687698, 39.166523, 43.962276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844326, 38.371056, 44.052116>,  <41.300491, 38.851742, 44.086365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.844326, 38.371056, 44.052116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625553, 38.658634, 43.880547>,  <40.494289, 38.831181, 43.777607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.625553, 38.658634, 43.880547>,  <40.844326, 38.371056, 44.052116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625553, 38.658634, 43.880547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250610, -0.629455, -0.735514,
		-0.798785, -0.294786, 0.524446,
		-0.546935, 0.718949, -0.428923,
		40.461472, 38.874317, 43.751869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090935, 38.174835, 44.041737>,  <40.844326, 38.371056, 44.052116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090935, 38.174835, 44.041737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136372, 38.449566, 43.754581>,  <40.163635, 38.614407, 43.582287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136372, 38.449566, 43.754581>,  <40.090935, 38.174835, 44.041737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136372, 38.449566, 43.754581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409793, -0.625849, -0.663613,
		-0.905078, 0.369566, 0.210367,
		0.113591, 0.686829, -0.717888,
		40.170448, 38.655613, 43.539215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410145, 38.089165, 43.671616>,  <40.090935, 38.174835, 44.041737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410145, 38.089165, 43.671616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661797, 38.275818, 43.422955>,  <39.812790, 38.387810, 43.273758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661797, 38.275818, 43.422955>,  <39.410145, 38.089165, 43.671616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661797, 38.275818, 43.422955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217768, -0.661919, -0.717245,
		-0.746171, 0.586617, -0.314817,
		0.629131, 0.466630, -0.621651,
		39.850536, 38.415806, 43.236458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038685, 38.175571, 43.036488>,  <39.410145, 38.089165, 43.671616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038685, 38.175571, 43.036488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423744, 38.185360, 42.928627>,  <39.654778, 38.191231, 42.863911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.423744, 38.185360, 42.928627>,  <39.038685, 38.175571, 43.036488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423744, 38.185360, 42.928627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233874, -0.426694, -0.873633,
		-0.136437, 0.904065, -0.405032,
		0.962646, 0.024469, -0.269654,
		39.712540, 38.192699, 42.847733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009106, 38.366222, 42.251686>,  <39.038685, 38.175571, 43.036488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009106, 38.366222, 42.251686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380028, 38.221256, 42.289135>,  <39.602581, 38.134277, 42.311604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380028, 38.221256, 42.289135>,  <39.009106, 38.366222, 42.251686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380028, 38.221256, 42.289135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038407, -0.156674, -0.986903,
		0.372333, 0.918755, -0.131365,
		0.927304, -0.362411, 0.093621,
		39.658218, 38.112534, 42.317223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328907, 38.643806, 41.711933>,  <39.009106, 38.366222, 42.251686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328907, 38.643806, 41.711933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561775, 38.329853, 41.796814>,  <39.701496, 38.141479, 41.847740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561775, 38.329853, 41.796814>,  <39.328907, 38.643806, 41.711933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561775, 38.329853, 41.796814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042924, -0.230955, -0.972017,
		0.811931, 0.574991, -0.100766,
		0.582174, -0.784885, 0.212200,
		39.736427, 38.094387, 41.860474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894024, 38.604649, 41.220039>,  <39.328907, 38.643806, 41.711933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894024, 38.604649, 41.220039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916252, 38.231899, 41.363441>,  <39.929588, 38.008251, 41.449482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916252, 38.231899, 41.363441>,  <39.894024, 38.604649, 41.220039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916252, 38.231899, 41.363441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371683, -0.313946, -0.873665,
		0.926695, 0.181799, 0.328915,
		0.055570, -0.931873, 0.358504,
		39.932922, 37.952339, 41.470993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633690, 38.390266, 41.162960>,  <39.894024, 38.604649, 41.220039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633690, 38.390266, 41.162960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457703, 38.033455, 41.204365>,  <40.352108, 37.819370, 41.229210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457703, 38.033455, 41.204365>,  <40.633690, 38.390266, 41.162960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457703, 38.033455, 41.204365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451604, -0.319419, -0.833082,
		0.776196, -0.319783, 0.543378,
		-0.439971, -0.892026, 0.103516,
		40.325710, 37.765846, 41.235420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105999, 37.846313, 41.211937>,  <40.633690, 38.390266, 41.162960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105999, 37.846313, 41.211937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770905, 37.664360, 41.091087>,  <40.569847, 37.555187, 41.018578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770905, 37.664360, 41.091087>,  <41.105999, 37.846313, 41.211937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770905, 37.664360, 41.091087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455400, -0.276646, -0.846214,
		0.301351, -0.846489, 0.438912,
		-0.837734, -0.454888, -0.302124,
		40.519585, 37.527893, 41.000450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364494, 37.142029, 40.909908>,  <41.105999, 37.846313, 41.211937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364494, 37.142029, 40.909908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000324, 37.177086, 40.748192>,  <40.781822, 37.198120, 40.651161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000324, 37.177086, 40.748192>,  <41.364494, 37.142029, 40.909908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000324, 37.177086, 40.748192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366577, -0.281986, -0.886626,
		-0.191711, -0.955407, 0.224599,
		-0.910422, 0.087643, -0.404290,
		40.727200, 37.203381, 40.626904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367195, 36.667931, 40.445335>,  <41.364494, 37.142029, 40.909908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367195, 36.667931, 40.445335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072952, 36.921574, 40.350010>,  <40.896408, 37.073761, 40.292816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072952, 36.921574, 40.350010>,  <41.367195, 36.667931, 40.445335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072952, 36.921574, 40.350010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270063, -0.048115, -0.961640,
		-0.621250, -0.771746, -0.135855,
		-0.735605, 0.634108, -0.238311,
		40.852272, 37.111805, 40.278515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035858, 36.445610, 39.854355>,  <41.367195, 36.667931, 40.445335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035858, 36.445610, 39.854355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970020, 36.840137, 39.857983>,  <40.930519, 37.076855, 39.860161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970020, 36.840137, 39.857983>,  <41.035858, 36.445610, 39.854355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970020, 36.840137, 39.857983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247304, 0.050166, -0.967638,
		-0.954856, -0.157021, -0.252178,
		-0.164590, 0.986320, 0.009069,
		40.920643, 37.136032, 39.860703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630882, 36.540932, 39.282616>,  <41.035858, 36.445610, 39.854355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630882, 36.540932, 39.282616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790657, 36.902771, 39.342144>,  <40.886520, 37.119877, 39.377861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.790657, 36.902771, 39.342144>,  <40.630882, 36.540932, 39.282616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790657, 36.902771, 39.342144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277634, 0.035347, -0.960036,
		-0.873712, 0.424788, -0.237030,
		0.399433, 0.904603, 0.148819,
		40.910488, 37.174152, 39.386791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440437, 36.970558, 38.685341>,  <40.630882, 36.540932, 39.282616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440437, 36.970558, 38.685341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739948, 37.158104, 38.872742>,  <40.919655, 37.270630, 38.985184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.739948, 37.158104, 38.872742>,  <40.440437, 36.970558, 38.685341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739948, 37.158104, 38.872742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484376, 0.095421, -0.869641,
		-0.452450, 0.878100, -0.155658,
		0.748779, 0.468865, 0.468504,
		40.964581, 37.298763, 39.013294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649834, 37.518246, 38.198181>,  <40.440437, 36.970558, 38.685341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649834, 37.518246, 38.198181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956768, 37.457375, 38.447350>,  <41.140930, 37.420853, 38.596851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956768, 37.457375, 38.447350>,  <40.649834, 37.518246, 38.198181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956768, 37.457375, 38.447350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635058, 0.314955, -0.705340,
		-0.088855, 0.936827, 0.338319,
		0.767337, -0.152179, 0.622925,
		41.186970, 37.411720, 38.634228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043716, 38.062885, 38.015518>,  <40.649834, 37.518246, 38.198181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043716, 38.062885, 38.015518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295647, 37.814537, 38.202213>,  <41.446804, 37.665527, 38.314232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295647, 37.814537, 38.202213>,  <41.043716, 38.062885, 38.015518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295647, 37.814537, 38.202213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694660, 0.181393, -0.696092,
		0.347520, 0.762638, 0.545539,
		0.629824, -0.620870, 0.466736,
		41.484592, 37.628277, 38.342236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699200, 38.288872, 37.837399>,  <41.043716, 38.062885, 38.015518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699200, 38.288872, 37.837399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814777, 37.950912, 38.017471>,  <41.884125, 37.748138, 38.125515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814777, 37.950912, 38.017471>,  <41.699200, 38.288872, 37.837399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814777, 37.950912, 38.017471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710926, -0.125570, -0.691966,
		0.641167, 0.519986, 0.564375,
		0.288944, -0.844895, 0.450183,
		41.901459, 37.697445, 38.152527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388119, 38.328098, 38.055744>,  <41.699200, 38.288872, 37.837399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388119, 38.328098, 38.055744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278275, 37.949955, 37.985451>,  <42.212368, 37.723068, 37.943275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.278275, 37.949955, 37.985451>,  <42.388119, 38.328098, 38.055744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278275, 37.949955, 37.985451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652889, -0.049145, -0.755857,
		0.705922, -0.322297, 0.630712,
		-0.274607, -0.945362, -0.175732,
		42.195892, 37.666348, 37.932732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022301, 37.955944, 37.871574>,  <42.388119, 38.328098, 38.055744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022301, 37.955944, 37.871574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.718140, 37.733780, 37.736931>,  <42.535641, 37.600483, 37.656143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.718140, 37.733780, 37.736931>,  <43.022301, 37.955944, 37.871574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718140, 37.733780, 37.736931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413174, -0.013823, -0.910547,
		0.501071, -0.831464, 0.239990,
		-0.760404, -0.555407, -0.336613,
		42.490017, 37.567158, 37.635948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.249519, 37.463131, 37.502640>,  <43.022301, 37.955944, 37.871574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.249519, 37.463131, 37.502640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875134, 37.498478, 37.366306>,  <42.650501, 37.519688, 37.284504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875134, 37.498478, 37.366306>,  <43.249519, 37.463131, 37.502640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875134, 37.498478, 37.366306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348512, 0.094558, -0.932523,
		-0.050180, -0.991589, -0.119301,
		-0.935960, 0.088371, -0.340836,
		42.594345, 37.524990, 37.264057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356815, 37.062294, 37.038857>,  <43.249519, 37.463131, 37.502640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356815, 37.062294, 37.038857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049156, 37.307518, 36.966671>,  <42.864563, 37.454655, 36.923359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.049156, 37.307518, 36.966671>,  <43.356815, 37.062294, 37.038857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049156, 37.307518, 36.966671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373706, 0.202388, -0.905198,
		-0.518421, -0.763669, -0.384772,
		-0.769145, 0.613065, -0.180465,
		42.818413, 37.491436, 36.912533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921429, 36.715771, 36.537941>,  <43.356815, 37.062294, 37.038857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921429, 36.715771, 36.537941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876167, 37.112095, 36.508312>,  <42.849010, 37.349892, 36.490536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876167, 37.112095, 36.508312>,  <42.921429, 36.715771, 36.537941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876167, 37.112095, 36.508312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271269, -0.040909, -0.961634,
		-0.955829, -0.128905, -0.264148,
		-0.113153, 0.990813, -0.074070,
		42.842220, 37.409340, 36.486092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295994, 36.236946, 36.684616>,  <42.921429, 36.715771, 36.537941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295994, 36.236946, 36.684616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498371, 35.955132, 36.883675>,  <42.619797, 35.786045, 37.003109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498371, 35.955132, 36.883675>,  <42.295994, 36.236946, 36.684616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498371, 35.955132, 36.883675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339094, -0.692944, -0.636273,
		0.793116, 0.153170, -0.589496,
		0.505946, -0.704533, 0.497646,
		42.650154, 35.743771, 37.032967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499756, 35.756721, 36.186638>,  <42.295994, 36.236946, 36.684616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499756, 35.756721, 36.186638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423660, 35.589245, 36.541828>,  <42.378002, 35.488758, 36.754944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423660, 35.589245, 36.541828>,  <42.499756, 35.756721, 36.186638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423660, 35.589245, 36.541828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207952, -0.866787, -0.453251,
		0.959461, -0.270883, 0.077829,
		-0.190239, -0.418692, 0.887978,
		42.366589, 35.463638, 36.808220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847755, 35.155128, 36.120163>,  <42.499756, 35.756721, 36.186638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847755, 35.155128, 36.120163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634666, 35.120899, 36.456944>,  <42.506813, 35.100361, 36.659012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634666, 35.120899, 36.456944>,  <42.847755, 35.155128, 36.120163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634666, 35.120899, 36.456944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210535, -0.950197, -0.229784,
		0.819681, -0.299672, 0.488180,
		-0.532727, -0.085571, 0.841950,
		42.474850, 35.095226, 36.709530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184624, 34.613632, 36.593086>,  <42.847755, 35.155128, 36.120163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184624, 34.613632, 36.593086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785263, 34.598660, 36.576149>,  <42.545647, 34.589676, 36.565987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785263, 34.598660, 36.576149>,  <43.184624, 34.613632, 36.593086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785263, 34.598660, 36.576149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046786, -0.967676, -0.247821,
		-0.031701, -0.249406, 0.967880,
		-0.998402, -0.037427, -0.042345,
		42.485741, 34.587433, 36.563446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727020, 34.549545, 35.928429>,  <43.184624, 34.613632, 36.593086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727020, 34.549545, 35.928429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871025, 34.518143, 35.556572>,  <43.957428, 34.499302, 35.333458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.871025, 34.518143, 35.556572>,  <43.727020, 34.549545, 35.928429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.871025, 34.518143, 35.556572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759352, -0.603564, -0.243096,
		-0.542011, 0.793440, -0.276905,
		0.360012, -0.078508, -0.929639,
		43.979027, 34.494591, 35.277679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185490, 34.722042, 35.386242>,  <43.727020, 34.549545, 35.928429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185490, 34.722042, 35.386242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465992, 34.472160, 35.248852>,  <43.634293, 34.322231, 35.166416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.465992, 34.472160, 35.248852>,  <43.185490, 34.722042, 35.386242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.465992, 34.472160, 35.248852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711940, -0.638737, -0.291816,
		-0.037090, 0.449172, -0.892675,
		0.701260, -0.624708, -0.343475,
		43.676369, 34.284748, 35.145809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881428, 34.464676, 34.697495>,  <43.185490, 34.722042, 35.386242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881428, 34.464676, 34.697495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138180, 34.199329, 34.851341>,  <43.292233, 34.040119, 34.943649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138180, 34.199329, 34.851341>,  <42.881428, 34.464676, 34.697495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138180, 34.199329, 34.851341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652090, -0.736127, -0.181372,
		0.403443, -0.134385, -0.905083,
		0.641882, -0.663369, 0.384616,
		43.330746, 34.000320, 34.966724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.798672, 33.760239, 34.262749>,  <42.881428, 34.464676, 34.697495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.798672, 33.760239, 34.262749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984303, 33.657265, 34.601772>,  <43.095680, 33.595482, 34.805187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984303, 33.657265, 34.601772>,  <42.798672, 33.760239, 34.262749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984303, 33.657265, 34.601772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714801, -0.673950, 0.186683,
		0.523155, -0.692473, -0.496780,
		0.464078, -0.257435, 0.847561,
		43.123528, 33.580036, 34.856041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089493, 32.984852, 34.249496>,  <42.798672, 33.760239, 34.262749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089493, 32.984852, 34.249496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046288, 33.051357, 34.641556>,  <43.020367, 33.091259, 34.876793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046288, 33.051357, 34.641556>,  <43.089493, 32.984852, 34.249496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046288, 33.051357, 34.641556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582441, -0.809575, 0.073143,
		0.805665, -0.562979, 0.184278,
		-0.108009, 0.166260, 0.980149,
		43.013885, 33.101234, 34.935600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172245, 32.355732, 34.599972>,  <43.089493, 32.984852, 34.249496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172245, 32.355732, 34.599972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956516, 32.550083, 34.875088>,  <42.827080, 32.666695, 35.040157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956516, 32.550083, 34.875088>,  <43.172245, 32.355732, 34.599972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956516, 32.550083, 34.875088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666871, -0.745165, 0.003484,
		0.514210, -0.456789, 0.725901,
		-0.539324, 0.485874, 0.687791,
		42.794720, 32.695847, 35.081425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943569, 31.857300, 35.124508>,  <43.172245, 32.355732, 34.599972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943569, 31.857300, 35.124508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684719, 32.156219, 35.184864>,  <42.529408, 32.335571, 35.221077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.684719, 32.156219, 35.184864>,  <42.943569, 31.857300, 35.124508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.684719, 32.156219, 35.184864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748429, -0.660409, 0.060947,
		0.145192, -0.073487, 0.986671,
		-0.647127, 0.747302, 0.150886,
		42.490582, 32.380409, 35.230129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732262, 31.833929, 35.836414>,  <42.943569, 31.857300, 35.124508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732262, 31.833929, 35.836414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459171, 32.015648, 35.607506>,  <42.295315, 32.124680, 35.470161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.459171, 32.015648, 35.607506>,  <42.732262, 31.833929, 35.836414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459171, 32.015648, 35.607506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636747, -0.754070, 0.161033,
		-0.358378, 0.474336, 0.804096,
		-0.682729, 0.454296, -0.572274,
		42.254353, 32.151936, 35.435825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023380, 31.711290, 36.197464>,  <42.732262, 31.833929, 35.836414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023380, 31.711290, 36.197464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958450, 31.841551, 35.824883>,  <41.919495, 31.919706, 35.601334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958450, 31.841551, 35.824883>,  <42.023380, 31.711290, 36.197464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958450, 31.841551, 35.824883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786888, -0.612281, -0.076933,
		-0.595364, 0.720461, 0.355636,
		-0.162322, 0.325649, -0.931453,
		41.909756, 31.939245, 35.545448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310532, 31.722731, 36.195316>,  <42.023380, 31.711290, 36.197464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310532, 31.722731, 36.195316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438461, 31.721882, 35.816326>,  <41.515221, 31.721373, 35.588932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438461, 31.721882, 35.816326>,  <41.310532, 31.722731, 36.195316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438461, 31.721882, 35.816326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691810, -0.683796, -0.231995,
		-0.647387, 0.729670, -0.220162,
		0.319826, -0.002120, -0.947474,
		41.534409, 31.721247, 35.532085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735649, 31.608597, 35.851330>,  <41.310532, 31.722731, 36.195316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735649, 31.608597, 35.851330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029774, 31.487633, 35.608723>,  <41.206249, 31.415054, 35.463158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.029774, 31.487633, 35.608723>,  <40.735649, 31.608597, 35.851330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029774, 31.487633, 35.608723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568105, -0.763026, -0.308298,
		-0.369557, 0.571261, -0.732863,
		0.735313, -0.302409, -0.606518,
		41.250366, 31.396910, 35.426769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477676, 31.672699, 35.182919>,  <40.735649, 31.608597, 35.851330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477676, 31.672699, 35.182919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748146, 31.378036, 35.178375>,  <40.910427, 31.201239, 35.175648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748146, 31.378036, 35.178375>,  <40.477676, 31.672699, 35.182919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748146, 31.378036, 35.178375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705925, -0.643393, -0.296167,
		0.210864, 0.208279, -0.955069,
		0.676170, -0.736658, -0.011361,
		40.950996, 31.157040, 35.174969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224430, 31.302715, 34.690773>,  <40.477676, 31.672699, 35.182919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224430, 31.302715, 34.690773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494072, 31.023922, 34.788582>,  <40.655857, 30.856646, 34.847267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.494072, 31.023922, 34.788582>,  <40.224430, 31.302715, 34.690773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.494072, 31.023922, 34.788582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661439, -0.716962, -0.220146,
		0.328751, -0.013333, -0.944322,
		0.674108, -0.696985, 0.244521,
		40.696304, 30.814827, 34.861938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205418, 30.788675, 34.196224>,  <40.224430, 31.302715, 34.690773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205418, 30.788675, 34.196224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383610, 30.623840, 34.514149>,  <40.490524, 30.524939, 34.704903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383610, 30.623840, 34.514149>,  <40.205418, 30.788675, 34.196224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383610, 30.623840, 34.514149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647487, -0.761410, -0.031861,
		0.618309, -0.500437, -0.606017,
		0.445483, -0.412088, 0.794813,
		40.517254, 30.500214, 34.752594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455425, 30.144842, 34.028038>,  <40.205418, 30.788675, 34.196224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455425, 30.144842, 34.028038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406136, 30.126194, 34.424553>,  <40.376560, 30.115005, 34.662460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406136, 30.126194, 34.424553>,  <40.455425, 30.144842, 34.028038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406136, 30.126194, 34.424553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494313, -0.863273, -0.102050,
		0.860505, -0.502580, 0.083335,
		-0.123229, -0.046621, 0.991282,
		40.369167, 30.112207, 34.721939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315987, 29.444115, 34.085495>,  <40.455425, 30.144842, 34.028038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315987, 29.444115, 34.085495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199432, 29.595236, 34.437031>,  <40.129501, 29.685907, 34.647953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199432, 29.595236, 34.437031>,  <40.315987, 29.444115, 34.085495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199432, 29.595236, 34.437031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727785, -0.683782, 0.052648,
		0.620826, -0.624266, 0.474201,
		-0.291384, 0.377801, 0.878841,
		40.112019, 29.708576, 34.700684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285343, 28.919724, 34.548470>,  <40.315987, 29.444115, 34.085495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285343, 28.919724, 34.548470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060780, 29.196348, 34.730263>,  <39.926041, 29.362324, 34.839340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060780, 29.196348, 34.730263>,  <40.285343, 28.919724, 34.548470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060780, 29.196348, 34.730263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745672, -0.660923, 0.084581,
		0.358872, -0.291412, 0.886730,
		-0.561412, 0.691563, 0.454485,
		39.892357, 29.403818, 34.866608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884537, 28.545763, 35.076736>,  <40.285343, 28.919724, 34.548470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884537, 28.545763, 35.076736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704750, 28.901962, 35.048477>,  <39.596878, 29.115683, 35.031521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704750, 28.901962, 35.048477>,  <39.884537, 28.545763, 35.076736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704750, 28.901962, 35.048477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856288, -0.406973, 0.318031,
		0.254456, 0.203437, 0.945444,
		-0.449469, 0.890498, -0.070644,
		39.569908, 29.169111, 35.027283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637444, 28.683571, 35.655952>,  <39.884537, 28.545763, 35.076736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637444, 28.683571, 35.655952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418339, 28.879301, 35.384506>,  <39.286877, 28.996738, 35.221638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418339, 28.879301, 35.384506>,  <39.637444, 28.683571, 35.655952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418339, 28.879301, 35.384506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828459, -0.430356, 0.358399,
		-0.116673, 0.758522, 0.641117,
		-0.547762, 0.489324, -0.678616,
		39.254009, 29.026098, 35.180920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100475, 28.840044, 36.008526>,  <39.637444, 28.683571, 35.655952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100475, 28.840044, 36.008526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972439, 28.879251, 35.631607>,  <38.895615, 28.902777, 35.405457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.972439, 28.879251, 35.631607>,  <39.100475, 28.840044, 36.008526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972439, 28.879251, 35.631607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893310, -0.362455, 0.265750,
		-0.315493, 0.926833, 0.203581,
		-0.320095, 0.098019, -0.942301,
		38.876411, 28.908657, 35.348915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502083, 29.124838, 36.045082>,  <39.100475, 28.840044, 36.008526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502083, 29.124838, 36.045082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476006, 28.971544, 35.676544>,  <38.460358, 28.879568, 35.455421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476006, 28.971544, 35.676544>,  <38.502083, 29.124838, 36.045082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476006, 28.971544, 35.676544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839214, -0.478482, 0.258407,
		-0.539879, 0.790055, -0.290422,
		-0.065194, -0.383235, -0.921347,
		38.456448, 28.856573, 35.400139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837719, 29.188883, 35.897900>,  <38.502083, 29.124838, 36.045082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837719, 29.188883, 35.897900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970737, 28.897995, 35.657711>,  <38.050549, 28.723461, 35.513599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.970737, 28.897995, 35.657711>,  <37.837719, 29.188883, 35.897900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970737, 28.897995, 35.657711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846995, -0.510307, 0.148954,
		-0.414746, 0.459060, -0.785652,
		0.332545, -0.727221, -0.600469,
		38.070499, 28.679829, 35.477570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301586, 29.039530, 35.421188>,  <37.837719, 29.188883, 35.897900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301586, 29.039530, 35.421188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545296, 28.722504, 35.431164>,  <37.691521, 28.532288, 35.437149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.545296, 28.722504, 35.431164>,  <37.301586, 29.039530, 35.421188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545296, 28.722504, 35.431164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792825, -0.608292, 0.037543,
		-0.014586, -0.042645, -0.998984,
		0.609274, -0.792567, 0.024938,
		37.728077, 28.484734, 35.438644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342354, 28.499569, 34.733414>,  <37.301586, 29.039530, 35.421188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342354, 28.499569, 34.733414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433388, 28.325708, 35.081963>,  <37.488007, 28.221392, 35.291092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.433388, 28.325708, 35.081963>,  <37.342354, 28.499569, 34.733414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433388, 28.325708, 35.081963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636850, -0.743378, -0.204478,
		0.736633, -0.508395, -0.445989,
		0.227583, -0.434653, 0.871368,
		37.501663, 28.195312, 35.343372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664055, 27.711590, 34.706879>,  <37.342354, 28.499569, 34.733414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664055, 27.711590, 34.706879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411118, 27.835674, 34.990826>,  <37.259354, 27.910124, 35.161194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411118, 27.835674, 34.990826>,  <37.664055, 27.711590, 34.706879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411118, 27.835674, 34.990826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657032, -0.700220, -0.279286,
		0.410426, -0.643010, 0.646598,
		-0.632344, 0.310210, 0.709867,
		37.221413, 27.928738, 35.203785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835838, 26.964287, 34.463612>,  <37.664055, 27.711590, 34.706879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835838, 26.964287, 34.463612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198154, 26.890669, 34.616283>,  <38.415543, 26.846498, 34.707886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198154, 26.890669, 34.616283>,  <37.835838, 26.964287, 34.463612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198154, 26.890669, 34.616283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048763, -0.849488, -0.525350,
		0.420918, 0.494467, -0.760481,
		0.905787, -0.184046, 0.381676,
		38.469891, 26.835455, 34.730785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420826, 26.568525, 34.084656>,  <37.835838, 26.964287, 34.463612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420826, 26.568525, 34.084656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800629, 26.518185, 34.199615>,  <39.028511, 26.487980, 34.268593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800629, 26.518185, 34.199615>,  <38.420826, 26.568525, 34.084656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800629, 26.518185, 34.199615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305943, -0.574482, 0.759190,
		0.069562, -0.808784, -0.583978,
		0.949505, -0.125853, 0.287404,
		39.085480, 26.480429, 34.285835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913914, 26.074560, 34.093472>,  <38.420826, 26.568525, 34.084656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913914, 26.074560, 34.093472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148392, 25.840078, 34.317165>,  <39.289078, 25.699390, 34.451382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148392, 25.840078, 34.317165>,  <38.913914, 26.074560, 34.093472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148392, 25.840078, 34.317165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619720, 0.769053, 0.156541,
		-0.521842, 0.254802, 0.814099,
		0.586198, -0.586203, 0.559230,
		39.324249, 25.664217, 34.484936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088982, 26.325279, 34.854820>,  <38.913914, 26.074560, 34.093472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088982, 26.325279, 34.854820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402760, 26.100058, 34.750809>,  <39.591026, 25.964924, 34.688400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402760, 26.100058, 34.750809>,  <39.088982, 26.325279, 34.854820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402760, 26.100058, 34.750809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617249, 0.749628, 0.238878,
		0.060425, -0.347890, 0.935586,
		0.784445, -0.563055, -0.260031,
		39.638092, 25.931141, 34.672798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554131, 26.556135, 35.241314>,  <39.088982, 26.325279, 34.854820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554131, 26.556135, 35.241314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738171, 26.403173, 34.920795>,  <39.848595, 26.311398, 34.728485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738171, 26.403173, 34.920795>,  <39.554131, 26.556135, 35.241314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738171, 26.403173, 34.920795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660794, 0.750263, 0.021378,
		0.593008, -0.539328, 0.597886,
		0.460101, -0.382402, -0.801296,
		39.876202, 26.288452, 34.680405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366936, 26.556017, 35.101753>,  <39.554131, 26.556135, 35.241314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366936, 26.556017, 35.101753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227310, 26.531691, 34.727703>,  <40.143536, 26.517096, 34.503273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227310, 26.531691, 34.727703>,  <40.366936, 26.556017, 35.101753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227310, 26.531691, 34.727703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558768, 0.787581, -0.259796,
		0.752285, -0.613202, -0.240935,
		-0.349063, -0.060814, -0.935124,
		40.122593, 26.513447, 34.447166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025143, 26.307331, 34.631908>,  <40.366936, 26.556017, 35.101753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025143, 26.307331, 34.631908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732254, 26.520906, 34.462788>,  <40.556519, 26.649052, 34.361317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732254, 26.520906, 34.462788>,  <41.025143, 26.307331, 34.631908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732254, 26.520906, 34.462788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657145, 0.716960, -0.232657,
		0.178905, -0.448197, -0.875850,
		-0.732225, 0.533936, -0.422798,
		40.512585, 26.681087, 34.335949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109844, 26.419477, 33.902401>,  <41.025143, 26.307331, 34.631908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109844, 26.419477, 33.902401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931019, 26.735962, 34.069309>,  <40.823723, 26.925852, 34.169456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931019, 26.735962, 34.069309>,  <41.109844, 26.419477, 33.902401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931019, 26.735962, 34.069309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712869, 0.596928, -0.368095,
		-0.540324, 0.132900, -0.830896,
		-0.447065, 0.791211, 0.417275,
		40.796898, 26.973326, 34.194492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197231, 27.093489, 33.448364>,  <41.109844, 26.419477, 33.902401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197231, 27.093489, 33.448364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113605, 27.216413, 33.819710>,  <41.063431, 27.290169, 34.042515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113605, 27.216413, 33.819710>,  <41.197231, 27.093489, 33.448364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113605, 27.216413, 33.819710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729289, 0.681450, -0.061344,
		-0.651483, 0.664218, -0.366586,
		-0.209064, 0.307311, 0.928360,
		41.050888, 27.308607, 34.098217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248295, 27.814917, 33.444855>,  <41.197231, 27.093489, 33.448364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248295, 27.814917, 33.444855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279415, 27.746002, 33.837643>,  <41.298088, 27.704653, 34.073315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279415, 27.746002, 33.837643>,  <41.248295, 27.814917, 33.444855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279415, 27.746002, 33.837643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665493, 0.742368, 0.077522,
		-0.742339, 0.647463, 0.172412,
		0.077800, -0.172286, 0.981970,
		41.302753, 27.694317, 34.132233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169750, 28.467291, 33.742542>,  <41.248295, 27.814917, 33.444855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169750, 28.467291, 33.742542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360603, 28.242300, 34.012642>,  <41.475117, 28.107306, 34.174702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360603, 28.242300, 34.012642>,  <41.169750, 28.467291, 33.742542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360603, 28.242300, 34.012642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579859, 0.778857, 0.239051,
		-0.660385, 0.277492, 0.697775,
		0.477131, -0.562477, 0.675252,
		41.503742, 28.073557, 34.215218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271564, 28.810326, 34.320435>,  <41.169750, 28.467291, 33.742542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271564, 28.810326, 34.320435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554554, 28.530804, 34.362663>,  <41.724350, 28.363091, 34.388000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.554554, 28.530804, 34.362663>,  <41.271564, 28.810326, 34.320435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554554, 28.530804, 34.362663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654650, 0.704267, 0.274667,
		-0.266288, -0.125210, 0.955727,
		0.707478, -0.698806, 0.105569,
		41.766796, 28.321161, 34.394333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683014, 29.134785, 34.816280>,  <41.271564, 28.810326, 34.320435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683014, 29.134785, 34.816280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912121, 28.838400, 34.676044>,  <42.049583, 28.660568, 34.591904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912121, 28.838400, 34.676044>,  <41.683014, 29.134785, 34.816280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912121, 28.838400, 34.676044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813585, 0.566089, 0.132750,
		0.100105, -0.361273, 0.927071,
		0.572764, -0.740963, -0.350594,
		42.083950, 28.616112, 34.570866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278069, 29.188152, 35.318932>,  <41.683014, 29.134785, 34.816280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278069, 29.188152, 35.318932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372902, 29.024693, 34.966389>,  <42.429802, 28.926617, 34.754864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372902, 29.024693, 34.966389>,  <42.278069, 29.188152, 35.318932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372902, 29.024693, 34.966389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861355, 0.507990, -0.003834,
		0.449290, -0.758255, 0.472427,
		0.237081, -0.408650, -0.881361,
		42.444027, 28.902098, 34.701981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.020622, 29.007101, 35.428719>,  <42.278069, 29.188152, 35.318932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.020622, 29.007101, 35.428719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972572, 29.063305, 35.035614>,  <42.943741, 29.097027, 34.799751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.972572, 29.063305, 35.035614>,  <43.020622, 29.007101, 35.428719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.972572, 29.063305, 35.035614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750801, 0.660524, 0.002667,
		0.649514, -0.737540, -0.184842,
		-0.120125, 0.140511, -0.982765,
		42.936535, 29.105457, 34.740784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699726, 29.048460, 35.145321>,  <43.020622, 29.007101, 35.428719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699726, 29.048460, 35.145321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463463, 29.226105, 34.875835>,  <43.321705, 29.332691, 34.714146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.463463, 29.226105, 34.875835>,  <43.699726, 29.048460, 35.145321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463463, 29.226105, 34.875835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764573, 0.574948, -0.291311,
		0.257973, -0.687167, -0.679155,
		-0.590658, 0.444113, -0.673711,
		43.286266, 29.359339, 34.673721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185436, 29.162794, 34.619583>,  <43.699726, 29.048460, 35.145321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185436, 29.162794, 34.619583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882465, 29.401583, 34.513805>,  <43.700684, 29.544855, 34.450336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882465, 29.401583, 34.513805>,  <44.185436, 29.162794, 34.619583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882465, 29.401583, 34.513805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650871, 0.658272, -0.378212,
		-0.051703, -0.458589, -0.887143,
		-0.757426, 0.596970, -0.264448,
		43.655239, 29.580673, 34.434471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.377632, 29.420477, 34.000572>,  <44.185436, 29.162794, 34.619583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.377632, 29.420477, 34.000572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101749, 29.681019, 34.127094>,  <43.936222, 29.837343, 34.203007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101749, 29.681019, 34.127094>,  <44.377632, 29.420477, 34.000572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101749, 29.681019, 34.127094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593675, 0.758769, -0.267992,
		-0.414559, 0.002947, -0.910018,
		-0.689703, 0.651353, 0.316304,
		43.894840, 29.876425, 34.221985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.369263, 29.915150, 33.527649>,  <44.377632, 29.420477, 34.000572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.369263, 29.915150, 33.527649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.218884, 30.094084, 33.852257>,  <44.128658, 30.201445, 34.047020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.218884, 30.094084, 33.852257>,  <44.369263, 29.915150, 33.527649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218884, 30.094084, 33.852257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557879, 0.808524, -0.187241,
		-0.739890, 0.382337, -0.553517,
		-0.375943, 0.447333, 0.811517,
		44.106102, 30.228283, 34.095711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351490, 30.696543, 33.342922>,  <44.369263, 29.915150, 33.527649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351490, 30.696543, 33.342922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321209, 30.671425, 33.740982>,  <44.303040, 30.656355, 33.979816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321209, 30.671425, 33.740982>,  <44.351490, 30.696543, 33.342922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321209, 30.671425, 33.740982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497795, 0.862371, 0.092286,
		-0.863984, 0.502368, -0.034029,
		-0.075707, -0.062794, 0.995151,
		44.298496, 30.652586, 34.039528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061687, 31.387400, 33.667736>,  <44.351490, 30.696543, 33.342922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061687, 31.387400, 33.667736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241898, 31.203289, 33.973724>,  <44.350021, 31.092823, 34.157318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241898, 31.203289, 33.973724>,  <44.061687, 31.387400, 33.667736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241898, 31.203289, 33.973724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349282, 0.879427, 0.323437,
		-0.821603, 0.121473, 0.556968,
		0.450523, -0.460275, 0.764968,
		44.377056, 31.065207, 34.203217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074291, 31.898834, 34.183361>,  <44.061687, 31.387400, 33.667736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074291, 31.898834, 34.183361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333195, 31.615955, 34.297150>,  <44.488537, 31.446228, 34.365421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333195, 31.615955, 34.297150>,  <44.074291, 31.898834, 34.183361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333195, 31.615955, 34.297150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579538, 0.698971, 0.419018,
		-0.495164, -0.106354, 0.862265,
		0.647262, -0.707198, 0.284469,
		44.527374, 31.403795, 34.382492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298588, 32.016712, 34.854153>,  <44.074291, 31.898834, 34.183361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298588, 32.016712, 34.854153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608406, 31.799232, 34.724861>,  <44.794296, 31.668745, 34.647285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608406, 31.799232, 34.724861>,  <44.298588, 32.016712, 34.854153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608406, 31.799232, 34.724861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617254, 0.761305, 0.198523,
		0.138137, -0.353278, 0.925264,
		0.774542, -0.543699, -0.323227,
		44.840767, 31.636122, 34.627892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.742039, 32.144985, 35.338066>,  <44.298588, 32.016712, 34.854153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.742039, 32.144985, 35.338066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954975, 32.029335, 35.019817>,  <45.082737, 31.959944, 34.828869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954975, 32.029335, 35.019817>,  <44.742039, 32.144985, 35.338066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954975, 32.029335, 35.019817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549060, 0.833286, 0.064552,
		0.644320, -0.471210, 0.602340,
		0.532339, -0.289128, -0.795625,
		45.114677, 31.942596, 34.781128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.389736, 32.340458, 35.589279>,  <44.742039, 32.144985, 35.338066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.389736, 32.340458, 35.589279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471153, 32.272182, 35.203651>,  <45.520004, 32.231216, 34.972275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471153, 32.272182, 35.203651>,  <45.389736, 32.340458, 35.589279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471153, 32.272182, 35.203651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604753, 0.796302, -0.013306,
		0.769963, -0.580317, 0.265309,
		0.203544, -0.170692, -0.964072,
		45.532215, 32.220974, 34.914429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.139210, 32.398869, 35.434875>,  <45.389736, 32.340458, 35.589279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.139210, 32.398869, 35.434875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.945911, 32.457680, 35.089657>,  <45.829933, 32.492966, 34.882526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.945911, 32.457680, 35.089657>,  <46.139210, 32.398869, 35.434875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.945911, 32.457680, 35.089657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487390, 0.864089, -0.125701,
		0.727272, -0.481387, -0.489226,
		-0.483246, 0.147025, -0.863051,
		45.800938, 32.501789, 34.830742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730595, 32.599705, 35.044170>,  <46.139210, 32.398869, 35.434875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730595, 32.599705, 35.044170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.397163, 32.716774, 34.856770>,  <46.197105, 32.787018, 34.744331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.397163, 32.716774, 34.856770>,  <46.730595, 32.599705, 35.044170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.397163, 32.716774, 34.856770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353409, 0.934382, -0.045081,
		0.424563, -0.203150, -0.882313,
		-0.833576, 0.292678, -0.468499,
		46.147091, 32.804577, 34.716221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.844830, 33.012928, 34.279491>,  <46.730595, 32.599705, 35.044170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.844830, 33.012928, 34.279491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.550369, 33.121876, 34.527328>,  <46.373692, 33.187244, 34.676033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.550369, 33.121876, 34.527328>,  <46.844830, 33.012928, 34.279491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.550369, 33.121876, 34.527328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378772, 0.924460, 0.043645,
		-0.560905, 0.266815, -0.783706,
		-0.736151, 0.272365, 0.619596,
		46.329525, 33.203587, 34.713207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.414909, 33.606834, 33.958057>,  <46.844830, 33.012928, 34.279491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.414909, 33.606834, 33.958057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.422493, 33.595699, 34.357830>,  <46.427044, 33.589020, 34.597694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.422493, 33.595699, 34.357830>,  <46.414909, 33.606834, 33.958057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.422493, 33.595699, 34.357830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565298, 0.824796, 0.012250,
		-0.824669, 0.564745, 0.031375,
		0.018960, -0.027838, 0.999433,
		46.428181, 33.587349, 34.657661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.254730, 34.281704, 34.162594>,  <46.414909, 33.606834, 33.958057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.254730, 34.281704, 34.162594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.469894, 34.090851, 34.440582>,  <46.598995, 33.976337, 34.607376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.469894, 34.090851, 34.440582>,  <46.254730, 34.281704, 34.162594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.469894, 34.090851, 34.440582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534083, 0.830734, 0.156959,
		-0.652229, 0.286743, 0.701694,
		0.537915, -0.477136, 0.694974,
		46.631268, 33.947708, 34.649075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.237511, 34.675411, 34.851994>,  <46.254730, 34.281704, 34.162594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.237511, 34.675411, 34.851994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569260, 34.469852, 34.764317>,  <46.768311, 34.346516, 34.711712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.569260, 34.469852, 34.764317>,  <46.237511, 34.675411, 34.851994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.569260, 34.469852, 34.764317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558504, 0.772765, 0.301508,
		0.014440, -0.372483, 0.927927,
		0.829376, -0.513897, -0.219192,
		46.818073, 34.315685, 34.698559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.814583, 34.639721, 35.308258>,  <46.237511, 34.675411, 34.851994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.814583, 34.639721, 35.308258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.051056, 34.631367, 34.985752>,  <47.192940, 34.626354, 34.792248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.051056, 34.631367, 34.985752>,  <46.814583, 34.639721, 35.308258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.051056, 34.631367, 34.985752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610982, 0.664171, 0.430786,
		0.526502, -0.747289, 0.405407,
		0.591182, -0.020887, -0.806268,
		47.228409, 34.625099, 34.743870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.585369, 34.658173, 35.591526>,  <46.814583, 34.639721, 35.308258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.585369, 34.658173, 35.591526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.530106, 34.814266, 35.227409>,  <47.496948, 34.907921, 35.008938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.530106, 34.814266, 35.227409>,  <47.585369, 34.658173, 35.591526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.530106, 34.814266, 35.227409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639077, 0.737284, 0.219070,
		0.756632, -0.551481, -0.351250,
		-0.138158, 0.390232, -0.910292,
		47.488659, 34.931335, 34.954323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.787342, 42.912251, 43.598583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.430050, 42.743004, 43.659397>,  <36.215675, 42.641457, 43.695885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.430050, 42.743004, 43.659397>,  <36.787342, 42.912251, 43.598583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430050, 42.743004, 43.659397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014210, -0.364542, -0.931079,
		0.449381, -0.829505, 0.331631,
		-0.893228, -0.423121, 0.152031,
		36.162083, 42.616066, 43.705006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933765, 42.239796, 43.506001>,  <36.787342, 42.912251, 43.598583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933765, 42.239796, 43.506001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545216, 42.309868, 43.441814>,  <36.312088, 42.351913, 43.403301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545216, 42.309868, 43.441814>,  <36.933765, 42.239796, 43.506001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545216, 42.309868, 43.441814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075869, -0.411347, -0.908316,
		-0.225129, -0.894486, 0.386280,
		-0.971371, 0.175182, -0.160469,
		36.253803, 42.362423, 43.393673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556377, 41.691822, 43.170536>,  <36.933765, 42.239796, 43.506001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556377, 41.691822, 43.170536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305969, 41.987286, 43.070553>,  <36.155724, 42.164566, 43.010563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.305969, 41.987286, 43.070553>,  <36.556377, 41.691822, 43.170536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305969, 41.987286, 43.070553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052607, -0.359812, -0.931540,
		-0.778031, -0.570013, 0.264108,
		-0.626019, 0.738661, -0.249959,
		36.118164, 42.208885, 42.995564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009434, 41.365948, 42.809448>,  <36.556377, 41.691822, 43.170536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009434, 41.365948, 42.809448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925137, 41.744892, 42.713043>,  <35.874557, 41.972260, 42.655201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925137, 41.744892, 42.713043>,  <36.009434, 41.365948, 42.809448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925137, 41.744892, 42.713043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449929, -0.312888, -0.836459,
		-0.867842, -0.067841, 0.492187,
		-0.210745, 0.947364, -0.241014,
		35.861912, 42.029102, 42.640739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385494, 41.320953, 42.451092>,  <36.009434, 41.365948, 42.809448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385494, 41.320953, 42.451092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.541908, 41.673481, 42.344986>,  <35.635757, 41.884998, 42.281322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.541908, 41.673481, 42.344986>,  <35.385494, 41.320953, 42.451092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541908, 41.673481, 42.344986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310990, -0.144741, -0.939327,
		-0.866244, 0.449803, 0.217484,
		0.391034, 0.881321, -0.265265,
		35.659218, 41.937878, 42.265408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900875, 41.631298, 42.051224>,  <35.385494, 41.320953, 42.451092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900875, 41.631298, 42.051224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.253769, 41.795498, 41.959003>,  <35.465504, 41.894016, 41.903671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.253769, 41.795498, 41.959003>,  <34.900875, 41.631298, 42.051224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253769, 41.795498, 41.959003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145364, -0.228271, -0.962684,
		-0.447808, 0.882827, -0.141717,
		0.882234, 0.410497, -0.230553,
		35.518440, 41.918648, 41.889839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819817, 41.955849, 41.407291>,  <34.900875, 41.631298, 42.051224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819817, 41.955849, 41.407291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.219105, 41.937675, 41.422722>,  <35.458679, 41.926773, 41.431980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.219105, 41.937675, 41.422722>,  <34.819817, 41.955849, 41.407291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219105, 41.937675, 41.422722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023345, -0.297476, -0.954444,
		0.054840, 0.953648, -0.295887,
		0.998222, -0.045434, 0.038576,
		35.518570, 41.924046, 41.434296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131371, 42.318710, 40.758678>,  <34.819817, 41.955849, 41.407291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131371, 42.318710, 40.758678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413292, 42.064667, 40.885098>,  <35.582443, 41.912239, 40.960949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.413292, 42.064667, 40.885098>,  <35.131371, 42.318710, 40.758678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413292, 42.064667, 40.885098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183378, -0.267267, -0.946013,
		0.685295, 0.724707, -0.071904,
		0.704800, -0.635112, 0.316052,
		35.624733, 41.874134, 40.979912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346523, 42.201176, 40.132099>,  <35.131371, 42.318710, 40.758678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346523, 42.201176, 40.132099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.541393, 41.927742, 40.349491>,  <35.658318, 41.763680, 40.479927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.541393, 41.927742, 40.349491>,  <35.346523, 42.201176, 40.132099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541393, 41.927742, 40.349491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344989, -0.421062, -0.838862,
		0.802272, 0.596169, 0.030698,
		0.487177, -0.683586, 0.543478,
		35.687546, 41.722668, 40.512535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068123, 42.186180, 39.938679>,  <35.346523, 42.201176, 40.132099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068123, 42.186180, 39.938679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981495, 41.824528, 40.085999>,  <35.929516, 41.607536, 40.174389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.981495, 41.824528, 40.085999>,  <36.068123, 42.186180, 39.938679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981495, 41.824528, 40.085999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500369, -0.426733, -0.753346,
		0.838288, 0.021129, 0.544819,
		-0.216574, -0.904131, 0.368297,
		35.916523, 41.553288, 40.196487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683399, 41.746578, 39.835403>,  <36.068123, 42.186180, 39.938679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683399, 41.746578, 39.835403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.441799, 41.443455, 39.934120>,  <36.296841, 41.261581, 39.993351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.441799, 41.443455, 39.934120>,  <36.683399, 41.746578, 39.835403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441799, 41.443455, 39.934120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560593, -0.624069, -0.544310,
		0.566498, -0.190415, 0.801762,
		-0.604000, -0.757812, 0.246788,
		36.260601, 41.216110, 40.008156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077126, 41.118786, 40.028942>,  <36.683399, 41.746578, 39.835403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077126, 41.118786, 40.028942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.725220, 40.968269, 39.912724>,  <36.514076, 40.877960, 39.842991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.725220, 40.968269, 39.912724>,  <37.077126, 41.118786, 40.028942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725220, 40.968269, 39.912724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473536, -0.639434, -0.605712,
		0.042135, -0.670471, 0.740739,
		-0.879766, -0.376288, -0.290549,
		36.461288, 40.855385, 39.825558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148823, 40.454182, 40.262253>,  <37.077126, 41.118786, 40.028942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148823, 40.454182, 40.262253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891483, 40.513924, 39.961906>,  <36.737080, 40.549770, 39.781700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891483, 40.513924, 39.961906>,  <37.148823, 40.454182, 40.262253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891483, 40.513924, 39.961906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598389, -0.513663, -0.614883,
		-0.477526, -0.844893, 0.241093,
		-0.643350, 0.149355, -0.750862,
		36.698479, 40.558731, 39.736649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100956, 39.763321, 39.887280>,  <37.148823, 40.454182, 40.262253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100956, 39.763321, 39.887280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955421, 40.024109, 39.621178>,  <36.868103, 40.180580, 39.461517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.955421, 40.024109, 39.621178>,  <37.100956, 39.763321, 39.887280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955421, 40.024109, 39.621178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573064, -0.406367, -0.711662,
		-0.734318, -0.640161, -0.225768,
		-0.363834, 0.651966, -0.665256,
		36.846272, 40.219700, 39.421600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927856, 39.352577, 39.354599>,  <37.100956, 39.763321, 39.887280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927856, 39.352577, 39.354599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959881, 39.723709, 39.208874>,  <36.979095, 39.946388, 39.121441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959881, 39.723709, 39.208874>,  <36.927856, 39.352577, 39.354599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959881, 39.723709, 39.208874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374356, -0.366719, -0.851690,
		-0.923822, -0.068191, -0.376700,
		0.080065, 0.927829, -0.364310,
		36.983902, 40.002056, 39.099579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747791, 39.212715, 38.684448>,  <36.927856, 39.352577, 39.354599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747791, 39.212715, 38.684448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943077, 39.561752, 38.690536>,  <37.060249, 39.771175, 38.694191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.943077, 39.561752, 38.690536>,  <36.747791, 39.212715, 38.684448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943077, 39.561752, 38.690536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534649, -0.285261, -0.795473,
		-0.689777, 0.396505, -0.605798,
		0.488219, 0.872588, 0.015225,
		37.089542, 39.823528, 38.695103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820969, 39.437370, 37.977577>,  <36.747791, 39.212715, 38.684448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820969, 39.437370, 37.977577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110004, 39.639706, 38.166042>,  <37.283424, 39.761108, 38.279121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110004, 39.639706, 38.166042>,  <36.820969, 39.437370, 37.977577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110004, 39.639706, 38.166042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657973, -0.294273, -0.693163,
		-0.211981, 0.810882, -0.545467,
		0.722590, 0.505840, 0.471158,
		37.326782, 39.791458, 38.307388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119614, 39.767914, 37.467422>,  <36.820969, 39.437370, 37.977577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119614, 39.767914, 37.467422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.400448, 39.762955, 37.752216>,  <37.568947, 39.759979, 37.923092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.400448, 39.762955, 37.752216>,  <37.119614, 39.767914, 37.467422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400448, 39.762955, 37.752216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681257, -0.279350, -0.676648,
		0.207282, 0.960109, -0.187682,
		0.702085, -0.012398, 0.711985,
		37.611073, 39.759235, 37.965813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767921, 40.157501, 37.207779>,  <37.119614, 39.767914, 37.467422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.767921, 40.157501, 37.207779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.901772, 39.932369, 37.510105>,  <37.982082, 39.797291, 37.691502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.901772, 39.932369, 37.510105>,  <37.767921, 40.157501, 37.207779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901772, 39.932369, 37.510105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795711, -0.260924, -0.546592,
		0.504846, 0.784311, 0.360535,
		0.334626, -0.562827, 0.755812,
		38.002159, 39.763519, 37.736847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466488, 40.218029, 37.170616>,  <37.767921, 40.157501, 37.207779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466488, 40.218029, 37.170616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427586, 39.895714, 37.404282>,  <38.404243, 39.702324, 37.544479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.427586, 39.895714, 37.404282>,  <38.466488, 40.218029, 37.170616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427586, 39.895714, 37.404282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766410, -0.435087, -0.472563,
		0.634947, 0.401747, 0.659880,
		-0.097255, -0.805791, 0.584160,
		38.398411, 39.653976, 37.579529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065811, 40.162670, 37.297836>,  <38.466488, 40.218029, 37.170616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065811, 40.162670, 37.297836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.892071, 39.805149, 37.342487>,  <38.787827, 39.590637, 37.369278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.892071, 39.805149, 37.342487>,  <39.065811, 40.162670, 37.297836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892071, 39.805149, 37.342487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710674, -0.416194, -0.567209,
		0.553429, -0.167038, 0.815975,
		-0.434349, -0.893801, 0.111624,
		38.761765, 39.537010, 37.375973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558144, 39.589165, 37.565186>,  <39.065811, 40.162670, 37.297836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558144, 39.589165, 37.565186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.267235, 39.401234, 37.365051>,  <39.092690, 39.288475, 37.244972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.267235, 39.401234, 37.365051>,  <39.558144, 39.589165, 37.565186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267235, 39.401234, 37.365051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685135, -0.540248, -0.488592,
		-0.040753, -0.698138, 0.714802,
		-0.727275, -0.469824, -0.500336,
		39.049053, 39.260288, 37.214951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225811, 39.491253, 37.222057>,  <39.558144, 39.589165, 37.565186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225811, 39.491253, 37.222057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.575630, 39.641182, 37.098984>,  <40.785522, 39.731140, 37.025139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.575630, 39.641182, 37.098984>,  <40.225811, 39.491253, 37.222057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575630, 39.641182, 37.098984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090310, 0.497492, 0.862755,
		0.476444, -0.782312, 0.401234,
		0.874554, 0.374819, -0.307678,
		40.837994, 39.753628, 37.006680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710728, 39.442993, 37.788403>,  <40.225811, 39.491253, 37.222057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710728, 39.442993, 37.788403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.874359, 39.727978, 37.560349>,  <40.972538, 39.898968, 37.423515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.874359, 39.727978, 37.560349>,  <40.710728, 39.442993, 37.788403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874359, 39.727978, 37.560349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128300, 0.573694, 0.808959,
		0.903437, -0.404073, 0.143274,
		0.409074, 0.712461, -0.570139,
		40.997082, 39.941715, 37.389305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299511, 39.621948, 38.131874>,  <40.710728, 39.442993, 37.788403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299511, 39.621948, 38.131874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.229538, 39.930225, 37.886784>,  <41.187553, 40.115192, 37.739731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.229538, 39.930225, 37.886784>,  <41.299511, 39.621948, 38.131874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229538, 39.930225, 37.886784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187991, 0.637015, 0.747577,
		0.966467, 0.015589, -0.256319,
		-0.174933, 0.770694, -0.612723,
		41.177059, 40.161434, 37.702965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742939, 40.174614, 38.366375>,  <41.299511, 39.621948, 38.131874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742939, 40.174614, 38.366375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.446716, 40.347443, 38.160507>,  <41.268982, 40.451141, 38.036987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.446716, 40.347443, 38.160507>,  <41.742939, 40.174614, 38.366375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446716, 40.347443, 38.160507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015788, 0.776861, 0.629474,
		0.671804, 0.458038, -0.582135,
		-0.740561, 0.432073, -0.514667,
		41.224548, 40.477066, 38.006107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942200, 40.901070, 38.465820>,  <41.742939, 40.174614, 38.366375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942200, 40.901070, 38.465820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.564995, 40.903889, 38.332752>,  <41.338673, 40.905582, 38.252911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.564995, 40.903889, 38.332752>,  <41.942200, 40.901070, 38.465820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564995, 40.903889, 38.332752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175690, 0.838507, 0.515789,
		0.282586, 0.544845, -0.789487,
		-0.943016, 0.007049, -0.332674,
		41.282089, 40.906002, 38.232948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823280, 41.534630, 38.191185>,  <41.942200, 40.901070, 38.465820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823280, 41.534630, 38.191185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.462147, 41.388306, 38.281586>,  <41.245468, 41.300510, 38.335827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.462147, 41.388306, 38.281586>,  <41.823280, 41.534630, 38.191185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462147, 41.388306, 38.281586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165425, 0.780630, 0.602703,
		-0.396902, 0.506752, -0.765292,
		-0.902831, -0.365812, 0.226004,
		41.191296, 41.278561, 38.349388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323189, 42.155785, 38.060379>,  <41.823280, 41.534630, 38.191185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323189, 42.155785, 38.060379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.154339, 41.885429, 38.302036>,  <41.053028, 41.723217, 38.447029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.154339, 41.885429, 38.302036>,  <41.323189, 42.155785, 38.060379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154339, 41.885429, 38.302036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095524, 0.695877, 0.711779,
		-0.901492, 0.242748, -0.358309,
		-0.422122, -0.675891, 0.604140,
		41.027702, 41.682663, 38.483276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723000, 42.512585, 38.432808>,  <41.323189, 42.155785, 38.060379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723000, 42.512585, 38.432808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.816132, 42.198193, 38.661903>,  <40.872009, 42.009556, 38.799358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.816132, 42.198193, 38.661903>,  <40.723000, 42.512585, 38.432808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816132, 42.198193, 38.661903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132227, 0.557868, 0.819329,
		-0.963488, -0.266491, 0.025958,
		0.232825, -0.785981, 0.572736,
		40.885979, 41.962399, 38.833725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256367, 42.695385, 39.001122>,  <40.723000, 42.512585, 38.432808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256367, 42.695385, 39.001122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.520061, 42.430553, 39.143703>,  <40.678280, 42.271656, 39.229252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.520061, 42.430553, 39.143703>,  <40.256367, 42.695385, 39.001122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520061, 42.430553, 39.143703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116080, 0.378754, 0.918189,
		-0.742921, -0.646681, 0.172834,
		0.659237, -0.662080, 0.356451,
		40.717834, 42.231930, 39.250637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930908, 42.414841, 39.652328>,  <40.256367, 42.695385, 39.001122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930908, 42.414841, 39.652328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.321793, 42.330734, 39.663982>,  <40.556324, 42.280270, 39.670975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.321793, 42.330734, 39.663982>,  <39.930908, 42.414841, 39.652328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321793, 42.330734, 39.663982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036763, 0.302797, 0.952346,
		-0.209065, -0.929572, 0.303626,
		0.977211, -0.210265, 0.029131,
		40.614956, 42.267654, 39.672722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007095, 41.976089, 40.178436>,  <39.930908, 42.414841, 39.652328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007095, 41.976089, 40.178436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.372276, 42.129265, 40.122047>,  <40.591385, 42.221169, 40.088215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.372276, 42.129265, 40.122047>,  <40.007095, 41.976089, 40.178436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372276, 42.129265, 40.122047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064229, 0.206307, 0.976377,
		0.402977, -0.900442, 0.163753,
		0.912954, 0.382939, -0.140971,
		40.646164, 42.244148, 40.079758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210484, 41.960571, 40.753254>,  <40.007095, 41.976089, 40.178436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210484, 41.960571, 40.753254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.490841, 42.212242, 40.618862>,  <40.659058, 42.363243, 40.538227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.490841, 42.212242, 40.618862>,  <40.210484, 41.960571, 40.753254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490841, 42.212242, 40.618862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141635, 0.338892, 0.930103,
		0.699060, -0.699491, 0.148415,
		0.700895, 0.629177, -0.335978,
		40.701111, 42.400997, 40.518070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835930, 41.798843, 41.127274>,  <40.210484, 41.960571, 40.753254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835930, 41.798843, 41.127274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.882397, 42.170563, 40.987041>,  <40.910278, 42.393597, 40.902905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.882397, 42.170563, 40.987041>,  <40.835930, 41.798843, 41.127274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882397, 42.170563, 40.987041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147695, 0.332881, 0.931331,
		0.982187, -0.159970, -0.098582,
		0.116169, 0.929301, -0.350578,
		40.917248, 42.449352, 40.881866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538071, 42.149548, 41.398884>,  <40.835930, 41.798843, 41.127274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538071, 42.149548, 41.398884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.241116, 42.401951, 41.308826>,  <41.062943, 42.553394, 41.254791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.241116, 42.401951, 41.308826>,  <41.538071, 42.149548, 41.398884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241116, 42.401951, 41.308826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036406, 0.373546, 0.926897,
		0.668982, 0.679919, -0.300288,
		-0.742386, 0.631010, -0.225143,
		41.018398, 42.591255, 41.241283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.620647, 42.576538, 41.893097>,  <41.538071, 42.149548, 41.398884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.620647, 42.576538, 41.893097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.282402, 42.723919, 41.738598>,  <41.079456, 42.812347, 41.645901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.282402, 42.723919, 41.738598>,  <41.620647, 42.576538, 41.893097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282402, 42.723919, 41.738598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070318, 0.640379, 0.764833,
		0.529149, 0.673911, -0.515602,
		-0.845610, 0.368455, -0.386244,
		41.028721, 42.834454, 41.622726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660641, 43.360497, 41.949657>,  <41.620647, 42.576538, 41.893097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660641, 43.360497, 41.949657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.270645, 43.294605, 41.889973>,  <41.036648, 43.255070, 41.854164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.270645, 43.294605, 41.889973>,  <41.660641, 43.360497, 41.949657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270645, 43.294605, 41.889973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217324, 0.565900, 0.795316,
		-0.046572, 0.807851, -0.587544,
		-0.974988, -0.164727, -0.149210,
		40.978149, 43.245186, 41.845211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367661, 43.974323, 41.907749>,  <41.660641, 43.360497, 41.949657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367661, 43.974323, 41.907749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.069393, 43.723743, 41.998554>,  <40.890434, 43.573395, 42.053036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.069393, 43.723743, 41.998554>,  <41.367661, 43.974323, 41.907749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069393, 43.723743, 41.998554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266852, 0.592947, 0.759739,
		-0.610548, 0.505935, -0.609312,
		-0.745668, -0.626453, 0.227013,
		40.845692, 43.535809, 42.066658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816299, 44.306007, 41.998219>,  <41.367661, 43.974323, 41.907749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816299, 44.306007, 41.998219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.708950, 43.981480, 42.205963>,  <40.644539, 43.786762, 42.330608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.708950, 43.981480, 42.205963>,  <40.816299, 44.306007, 41.998219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708950, 43.981480, 42.205963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187420, 0.572813, 0.797971,
		-0.944906, 0.116818, -0.305788,
		-0.268377, -0.811319, 0.519361,
		40.628437, 43.738083, 42.361771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.299030, 43.995251, 42.812160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.440548, 43.650005, 42.956310>,  <39.525459, 43.442860, 43.042801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.440548, 43.650005, 42.956310>,  <39.299030, 43.995251, 42.812160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440548, 43.650005, 42.956310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792826, -0.072316, 0.605143,
		-0.496246, -0.499806, -0.709883,
		0.353790, -0.863113, 0.360373,
		39.546684, 43.391071, 43.064423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697742, 43.621765, 43.001049>,  <39.299030, 43.995251, 42.812160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697742, 43.621765, 43.001049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.981770, 43.447857, 43.222603>,  <39.152184, 43.343513, 43.355534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.981770, 43.447857, 43.222603>,  <38.697742, 43.621765, 43.001049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981770, 43.447857, 43.222603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658537, -0.131568, 0.740958,
		-0.249273, -0.890879, -0.379734,
		0.710065, -0.434769, 0.553880,
		39.194790, 43.317425, 43.388767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371864, 43.155830, 43.426865>,  <38.697742, 43.621765, 43.001049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371864, 43.155830, 43.426865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731213, 43.175930, 43.601402>,  <38.946823, 43.187992, 43.706127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731213, 43.175930, 43.601402>,  <38.371864, 43.155830, 43.426865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731213, 43.175930, 43.601402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401582, -0.308440, 0.862321,
		0.177921, -0.949916, -0.256914,
		0.898374, 0.050253, 0.436347,
		39.000725, 43.191006, 43.732307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414337, 42.597939, 43.866230>,  <38.371864, 43.155830, 43.426865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414337, 42.597939, 43.866230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.646511, 42.876873, 44.034431>,  <38.785816, 43.044231, 44.135353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.646511, 42.876873, 44.034431>,  <38.414337, 42.597939, 43.866230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646511, 42.876873, 44.034431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447484, -0.158294, 0.880171,
		0.680336, -0.699048, 0.220167,
		0.580431, 0.697334, 0.420506,
		38.820641, 43.086075, 44.160583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623386, 42.191162, 44.442535>,  <38.414337, 42.597939, 43.866230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623386, 42.191162, 44.442535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708397, 42.575333, 44.514553>,  <38.759403, 42.805836, 44.557762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.708397, 42.575333, 44.514553>,  <38.623386, 42.191162, 44.442535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708397, 42.575333, 44.514553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389650, -0.085673, 0.916969,
		0.896105, -0.265037, 0.356022,
		0.212529, 0.960425, 0.180044,
		38.772156, 42.863461, 44.568565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036285, 42.189480, 45.043541>,  <38.623386, 42.191162, 44.442535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036285, 42.189480, 45.043541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.883007, 42.557072, 45.006359>,  <38.791039, 42.777626, 44.984051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.883007, 42.557072, 45.006359>,  <39.036285, 42.189480, 45.043541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883007, 42.557072, 45.006359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295910, -0.026810, 0.954839,
		0.874984, 0.393396, 0.282209,
		-0.383196, 0.918978, -0.092952,
		38.768047, 42.832764, 44.978474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243732, 42.534718, 45.695236>,  <39.036285, 42.189480, 45.043541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243732, 42.534718, 45.695236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.935883, 42.750839, 45.559155>,  <38.751171, 42.880512, 45.477505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.935883, 42.750839, 45.559155>,  <39.243732, 42.534718, 45.695236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935883, 42.750839, 45.559155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272399, 0.204054, 0.940298,
		0.577472, 0.816351, -0.009866,
		-0.769626, 0.540308, -0.340208,
		38.704994, 42.912933, 45.457092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235302, 43.196327, 46.072418>,  <39.243732, 42.534718, 45.695236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235302, 43.196327, 46.072418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858978, 43.162910, 45.941025>,  <38.633183, 43.142860, 45.862190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858978, 43.162910, 45.941025>,  <39.235302, 43.196327, 46.072418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858978, 43.162910, 45.941025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338521, 0.279606, 0.898457,
		0.016790, 0.956474, -0.291336,
		-0.940809, -0.083538, -0.328480,
		38.576736, 43.137848, 45.842480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851860, 43.827049, 46.393715>,  <39.235302, 43.196327, 46.072418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851860, 43.827049, 46.393715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.599087, 43.531223, 46.301014>,  <38.447422, 43.353729, 46.245396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.599087, 43.531223, 46.301014>,  <38.851860, 43.827049, 46.393715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599087, 43.531223, 46.301014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519167, 0.181925, 0.835086,
		-0.575439, 0.648033, -0.498922,
		-0.631930, -0.739565, -0.231751,
		38.409508, 43.309353, 46.231487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163231, 44.121918, 46.359047>,  <38.851860, 43.827049, 46.393715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163231, 44.121918, 46.359047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.154766, 43.727280, 46.423763>,  <38.149685, 43.490498, 46.462593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.154766, 43.727280, 46.423763>,  <38.163231, 44.121918, 46.359047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154766, 43.727280, 46.423763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378945, 0.157666, 0.911889,
		-0.925177, -0.042008, -0.377204,
		-0.021166, -0.986599, 0.161788,
		38.148415, 43.431301, 46.472301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533340, 44.026371, 46.785751>,  <38.163231, 44.121918, 46.359047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533340, 44.026371, 46.785751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742817, 43.689049, 46.834064>,  <37.868504, 43.486656, 46.863052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.742817, 43.689049, 46.834064>,  <37.533340, 44.026371, 46.785751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742817, 43.689049, 46.834064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245345, -0.013529, 0.969341,
		-0.815816, -0.537265, -0.213986,
		0.523688, -0.843305, 0.120778,
		37.899925, 43.436058, 46.870296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127926, 43.604557, 47.153023>,  <37.533340, 44.026371, 46.785751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127926, 43.604557, 47.153023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502716, 43.479004, 47.214405>,  <37.727592, 43.403671, 47.251236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502716, 43.479004, 47.214405>,  <37.127926, 43.604557, 47.153023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502716, 43.479004, 47.214405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164193, -0.007876, 0.986397,
		-0.308404, -0.949429, -0.058917,
		0.936978, -0.313883, 0.153460,
		37.783810, 43.384838, 47.260445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956722, 43.297520, 47.748394>,  <37.127926, 43.604557, 47.153023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956722, 43.297520, 47.748394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.354591, 43.265903, 47.721924>,  <37.593311, 43.246933, 47.706043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.354591, 43.265903, 47.721924>,  <36.956722, 43.297520, 47.748394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354591, 43.265903, 47.721924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048469, -0.207967, 0.976934,
		-0.090977, -0.974937, -0.203029,
		0.994673, -0.079038, -0.066174,
		37.652992, 43.242191, 47.702072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125690, 42.661812, 48.124474>,  <36.956722, 43.297520, 47.748394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125690, 42.661812, 48.124474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463364, 42.876156, 48.118752>,  <37.665970, 43.004761, 48.115318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463364, 42.876156, 48.118752>,  <37.125690, 42.661812, 48.124474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463364, 42.876156, 48.118752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148819, -0.208650, 0.966601,
		0.514977, -0.818121, -0.255885,
		0.844187, 0.535858, -0.014302,
		37.716621, 43.036915, 48.114460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573040, 42.301144, 48.496288>,  <37.125690, 42.661812, 48.124474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573040, 42.301144, 48.496288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.721920, 42.672379, 48.500656>,  <37.811249, 42.895119, 48.503277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.721920, 42.672379, 48.500656>,  <37.573040, 42.301144, 48.496288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721920, 42.672379, 48.500656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236392, -0.106164, 0.965841,
		0.897546, -0.356903, -0.258907,
		0.372198, 0.928090, 0.010918,
		37.833580, 42.950806, 48.503933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119080, 42.223255, 48.855469>,  <37.573040, 42.301144, 48.496288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119080, 42.223255, 48.855469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036736, 42.612850, 48.893337>,  <37.987328, 42.846607, 48.916058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036736, 42.612850, 48.893337>,  <38.119080, 42.223255, 48.855469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036736, 42.612850, 48.893337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196245, -0.053687, 0.979084,
		0.958701, 0.220137, -0.180088,
		-0.205865, 0.973990, 0.094671,
		37.974976, 42.905048, 48.921738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572796, 42.541809, 49.219189>,  <38.119080, 42.223255, 48.855469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572796, 42.541809, 49.219189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.259792, 42.786522, 49.265499>,  <38.071991, 42.933350, 49.293285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.259792, 42.786522, 49.265499>,  <38.572796, 42.541809, 49.219189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259792, 42.786522, 49.265499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145053, -0.001710, 0.989422,
		0.605506, 0.791026, -0.087402,
		-0.782510, 0.611780, 0.115777,
		38.025040, 42.970055, 49.300232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708790, 43.007904, 49.767467>,  <38.572796, 42.541809, 49.219189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708790, 43.007904, 49.767467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.321377, 43.106033, 49.750725>,  <38.088928, 43.164909, 49.740681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.321377, 43.106033, 49.750725>,  <38.708790, 43.007904, 49.767467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321377, 43.106033, 49.750725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021664, 0.084432, 0.996194,
		0.247925, 0.965757, -0.076460,
		-0.968537, 0.245325, -0.041855,
		38.030815, 43.179630, 49.738167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583134, 43.703564, 50.200546>,  <38.708790, 43.007904, 49.767467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583134, 43.703564, 50.200546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.228195, 43.524593, 50.155968>,  <38.015232, 43.417213, 50.129219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.228195, 43.524593, 50.155968>,  <38.583134, 43.703564, 50.200546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228195, 43.524593, 50.155968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228269, 0.216264, 0.949275,
		-0.400627, 0.867780, -0.294035,
		-0.887351, -0.447424, -0.111446,
		37.961990, 43.390366, 50.122536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331898, 43.741554, 50.822311>,  <38.583134, 43.703564, 50.200546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331898, 43.741554, 50.822311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.037712, 43.491837, 50.716980>,  <37.861198, 43.342007, 50.653782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.037712, 43.491837, 50.716980>,  <38.331898, 43.741554, 50.822311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037712, 43.491837, 50.716980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237013, -0.127046, 0.963164,
		-0.634754, 0.770788, -0.054528,
		-0.735467, -0.624296, -0.263330,
		37.817074, 43.304546, 50.637981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827587, 43.890270, 51.210297>,  <38.331898, 43.741554, 50.822311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827587, 43.890270, 51.210297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.748150, 43.517494, 51.088943>,  <37.700489, 43.293827, 51.016132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.748150, 43.517494, 51.088943>,  <37.827587, 43.890270, 51.210297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748150, 43.517494, 51.088943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487632, -0.174563, 0.855420,
		-0.850163, 0.317817, -0.419780,
		-0.198589, -0.931944, -0.303385,
		37.688572, 43.237911, 50.997929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069050, 43.786472, 51.226673>,  <37.827587, 43.890270, 51.210297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069050, 43.786472, 51.226673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.236763, 43.423473, 51.236900>,  <37.337391, 43.205673, 51.243034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.236763, 43.423473, 51.236900>,  <37.069050, 43.786472, 51.226673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236763, 43.423473, 51.236900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541554, -0.227412, 0.809323,
		-0.728643, -0.353179, -0.586808,
		0.419283, -0.907495, 0.025563,
		37.362549, 43.151226, 51.244568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596432, 43.526356, 51.691105>,  <37.069050, 43.786472, 51.226673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596432, 43.526356, 51.691105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872448, 43.242416, 51.634602>,  <37.038059, 43.072052, 51.600700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.872448, 43.242416, 51.634602>,  <36.596432, 43.526356, 51.691105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872448, 43.242416, 51.634602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421563, -0.552834, 0.718790,
		-0.588331, -0.436440, -0.680725,
		0.690036, -0.709855, -0.141263,
		37.079460, 43.029461, 51.592224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884747, 43.546276, 51.540184>,  <36.596432, 43.526356, 51.691105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884747, 43.546276, 51.540184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535236, 43.443768, 51.705517>,  <35.325531, 43.382263, 51.804718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.535236, 43.443768, 51.705517>,  <35.884747, 43.546276, 51.540184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535236, 43.443768, 51.705517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354460, -0.246334, -0.902040,
		0.332983, -0.934690, 0.124404,
		-0.873773, -0.256268, 0.413336,
		35.273106, 43.366886, 51.829517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654522, 42.867218, 51.247887>,  <35.884747, 43.546276, 51.540184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654522, 42.867218, 51.247887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.335247, 43.079414, 51.362061>,  <35.143681, 43.206734, 51.430565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.335247, 43.079414, 51.362061>,  <35.654522, 42.867218, 51.247887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335247, 43.079414, 51.362061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462450, -0.235958, -0.854672,
		-0.386047, -0.814188, 0.433665,
		-0.798190, 0.530492, 0.285431,
		35.095791, 43.238564, 51.447689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103725, 42.451527, 51.042496>,  <35.654522, 42.867218, 51.247887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103725, 42.451527, 51.042496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974380, 42.829685, 51.058807>,  <34.896774, 43.056580, 51.068596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974380, 42.829685, 51.058807>,  <35.103725, 42.451527, 51.042496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974380, 42.829685, 51.058807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275997, -0.053005, -0.959696,
		-0.905130, -0.321588, 0.278066,
		-0.323365, 0.945395, 0.040781,
		34.877373, 43.113304, 51.071041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547459, 42.399055, 50.698929>,  <35.103725, 42.451527, 51.042496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547459, 42.399055, 50.698929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.595444, 42.796158, 50.701450>,  <34.624233, 43.034420, 50.702961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.595444, 42.796158, 50.701450>,  <34.547459, 42.399055, 50.698929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595444, 42.796158, 50.701450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368643, 0.050437, -0.928202,
		-0.921798, 0.109026, 0.372024,
		0.119962, 0.992758, 0.006301,
		34.631432, 43.093987, 50.703342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900608, 42.656097, 50.563305>,  <34.547459, 42.399055, 50.698929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900608, 42.656097, 50.563305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.168945, 42.930965, 50.451752>,  <34.329948, 43.095886, 50.384819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.168945, 42.930965, 50.451752>,  <33.900608, 42.656097, 50.563305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168945, 42.930965, 50.451752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379138, -0.005412, -0.925324,
		-0.637360, 0.726481, 0.256900,
		0.670840, 0.687165, -0.278886,
		34.370197, 43.137115, 50.368088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581638, 43.096020, 50.071548>,  <33.900608, 42.656097, 50.563305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581638, 43.096020, 50.071548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.968788, 43.175140, 50.009457>,  <34.201077, 43.222610, 49.972202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.968788, 43.175140, 50.009457>,  <33.581638, 43.096020, 50.071548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968788, 43.175140, 50.009457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157160, -0.005988, -0.987555,
		-0.196267, 0.980224, 0.025291,
		0.967874, 0.197799, -0.155227,
		34.259151, 43.234482, 49.962887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508251, 43.355934, 49.387840>,  <33.581638, 43.096020, 50.071548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508251, 43.355934, 49.387840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.901440, 43.293999, 49.427406>,  <34.137352, 43.256836, 49.451145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.901440, 43.293999, 49.427406>,  <33.508251, 43.355934, 49.387840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901440, 43.293999, 49.427406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085697, -0.089857, -0.992261,
		0.162528, 0.983845, -0.075058,
		0.982975, -0.154838, 0.098917,
		34.196331, 43.247547, 49.457081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921959, 43.820065, 48.898682>,  <33.508251, 43.355934, 49.387840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921959, 43.820065, 48.898682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162289, 43.515278, 48.995361>,  <34.306484, 43.332405, 49.053368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162289, 43.515278, 48.995361>,  <33.921959, 43.820065, 48.898682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162289, 43.515278, 48.995361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259320, -0.100218, -0.960578,
		0.756153, 0.639812, 0.137381,
		0.600821, -0.761969, 0.241696,
		34.342537, 43.286686, 49.067871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566376, 43.906681, 48.582943>,  <33.921959, 43.820065, 48.898682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566376, 43.906681, 48.582943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624195, 43.523380, 48.681618>,  <34.658886, 43.293400, 48.740822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624195, 43.523380, 48.681618>,  <34.566376, 43.906681, 48.582943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624195, 43.523380, 48.681618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571929, -0.122534, -0.811100,
		0.807468, 0.258326, 0.530343,
		0.144544, -0.958255, 0.246686,
		34.667557, 43.235905, 48.755623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275280, 43.729782, 48.479221>,  <34.566376, 43.906681, 48.582943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275280, 43.729782, 48.479221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.088924, 43.376202, 48.463333>,  <34.977112, 43.164055, 48.453800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.088924, 43.376202, 48.463333>,  <35.275280, 43.729782, 48.479221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088924, 43.376202, 48.463333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563043, -0.261523, -0.783956,
		0.682590, -0.387603, 0.619544,
		-0.465889, -0.883951, -0.039724,
		34.949158, 43.111015, 48.451416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798512, 43.208660, 48.327984>,  <35.275280, 43.729782, 48.479221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798512, 43.208660, 48.327984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446556, 43.036736, 48.246925>,  <35.235382, 42.933582, 48.198292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446556, 43.036736, 48.246925>,  <35.798512, 43.208660, 48.327984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446556, 43.036736, 48.246925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383545, -0.390623, -0.836843,
		0.280524, -0.814050, 0.508555,
		-0.879886, -0.429808, -0.202646,
		35.182590, 42.907791, 48.186131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986633, 42.608669, 48.107830>,  <35.798512, 43.208660, 48.327984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986633, 42.608669, 48.107830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.621971, 42.677395, 47.958504>,  <35.403175, 42.718628, 47.868908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.621971, 42.677395, 47.958504>,  <35.986633, 42.608669, 48.107830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621971, 42.677395, 47.958504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300316, -0.341561, -0.890588,
		-0.280519, -0.924023, 0.259790,
		-0.911657, 0.171808, -0.373314,
		35.348473, 42.728939, 47.846508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052395, 42.139118, 47.587189>,  <35.986633, 42.608669, 48.107830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052395, 42.139118, 47.587189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.742832, 42.381336, 47.513031>,  <35.557095, 42.526669, 47.468536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.742832, 42.381336, 47.513031>,  <36.052395, 42.139118, 47.587189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742832, 42.381336, 47.513031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127673, -0.137549, -0.982232,
		-0.620291, -0.783830, 0.029138,
		-0.773911, 0.605550, -0.185394,
		35.510658, 42.563000, 47.457413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662609, 41.830196, 47.190392>,  <36.052395, 42.139118, 47.587189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662609, 41.830196, 47.190392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559444, 42.207363, 47.106106>,  <35.497547, 42.433662, 47.055534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.559444, 42.207363, 47.106106>,  <35.662609, 41.830196, 47.190392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559444, 42.207363, 47.106106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177856, -0.168028, -0.969605,
		-0.949658, -0.287545, -0.124367,
		-0.257908, 0.942913, -0.210711,
		35.482071, 42.490238, 47.042892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203762, 41.756062, 46.538139>,  <35.662609, 41.830196, 47.190392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203762, 41.756062, 46.538139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.340836, 42.130341, 46.571690>,  <35.423080, 42.354908, 46.591820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.340836, 42.130341, 46.571690>,  <35.203762, 41.756062, 46.538139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340836, 42.130341, 46.571690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046193, 0.072389, -0.996306,
		-0.938314, 0.345295, -0.018416,
		0.342686, 0.935699, 0.083873,
		35.443642, 42.411049, 46.596851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085621, 41.978386, 45.874451>,  <35.203762, 41.756062, 46.538139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085621, 41.978386, 45.874451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330502, 42.261635, 46.015175>,  <35.477432, 42.431583, 46.099609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330502, 42.261635, 46.015175>,  <35.085621, 41.978386, 45.874451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330502, 42.261635, 46.015175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063691, 0.399322, -0.914596,
		-0.788130, 0.582327, 0.199365,
		0.612204, 0.708123, 0.351807,
		35.514164, 42.474072, 46.120716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794125, 42.556267, 45.703644>,  <35.085621, 41.978386, 45.874451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794125, 42.556267, 45.703644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.183784, 42.634789, 45.748371>,  <35.417580, 42.681904, 45.775208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.183784, 42.634789, 45.748371>,  <34.794125, 42.556267, 45.703644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183784, 42.634789, 45.748371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070944, 0.204106, -0.976375,
		-0.214493, 0.959064, 0.184902,
		0.974146, 0.196308, 0.111819,
		35.476028, 42.693680, 45.781918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898933, 43.009796, 45.264545>,  <34.794125, 42.556267, 45.703644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898933, 43.009796, 45.264545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277054, 42.892479, 45.321655>,  <35.503925, 42.822090, 45.355923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.277054, 42.892479, 45.321655>,  <34.898933, 43.009796, 45.264545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277054, 42.892479, 45.321655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159646, 0.034282, -0.986579,
		0.284464, 0.955407, 0.079230,
		0.945301, -0.293295, 0.142775,
		35.560642, 42.804489, 45.364487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262909, 43.454853, 44.836487>,  <34.898933, 43.009796, 45.264545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262909, 43.454853, 44.836487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.528656, 43.162270, 44.897903>,  <35.688107, 42.986721, 44.934753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.528656, 43.162270, 44.897903>,  <35.262909, 43.454853, 44.836487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528656, 43.162270, 44.897903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114525, -0.103380, -0.988027,
		0.738575, 0.674002, 0.015087,
		0.664373, -0.731460, 0.153544,
		35.727966, 42.942833, 44.943966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827297, 43.608761, 44.396072>,  <35.262909, 43.454853, 44.836487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827297, 43.608761, 44.396072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.891357, 43.218674, 44.457127>,  <35.929794, 42.984619, 44.493759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.891357, 43.218674, 44.457127>,  <35.827297, 43.608761, 44.396072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891357, 43.218674, 44.457127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013217, -0.152496, -0.988216,
		0.987004, 0.160278, -0.011532,
		0.160148, -0.975221, 0.152633,
		35.939404, 42.926109, 44.502918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302448, 43.535454, 43.914803>,  <35.827297, 43.608761, 44.396072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302448, 43.535454, 43.914803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.146854, 43.176208, 43.996861>,  <36.053497, 42.960659, 44.046093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.146854, 43.176208, 43.996861>,  <36.302448, 43.535454, 43.914803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146854, 43.176208, 43.996861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014609, -0.216636, -0.976143,
		0.921130, -0.382699, 0.071147,
		-0.388982, -0.898115, 0.205141,
		36.030159, 42.906773, 44.058403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.522343, 27.505880, 35.393055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.256355, 27.804626, 35.392628>,  <38.096764, 27.983875, 35.392372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.256355, 27.804626, 35.392628>,  <38.522343, 27.505880, 35.393055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256355, 27.804626, 35.392628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629801, 0.559976, -0.538311,
		-0.401450, -0.358633, -0.842746,
		-0.664973, 0.746867, -0.001065,
		38.056862, 28.028687, 35.392307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493591, 27.739410, 34.660809>,  <38.522343, 27.505880, 35.393055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493591, 27.739410, 34.660809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.362335, 28.042307, 34.886700>,  <38.283581, 28.224045, 35.022232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.362335, 28.042307, 34.886700>,  <38.493591, 27.739410, 34.660809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362335, 28.042307, 34.886700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622309, 0.623053, -0.473853,
		-0.710673, 0.195944, -0.675684,
		-0.328138, 0.757239, 0.564725,
		38.263893, 28.269478, 35.056118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430374, 28.408983, 34.189632>,  <38.493591, 27.739410, 34.660809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430374, 28.408983, 34.189632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420315, 28.566820, 34.557037>,  <38.414280, 28.661522, 34.777481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420315, 28.566820, 34.557037>,  <38.430374, 28.408983, 34.189632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420315, 28.566820, 34.557037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680935, 0.679456, -0.273253,
		-0.731912, 0.618576, -0.285779,
		-0.025146, 0.394594, 0.918512,
		38.412769, 28.685198, 34.832592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426281, 29.030079, 34.128246>,  <38.430374, 28.408983, 34.189632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426281, 29.030079, 34.128246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.567669, 29.011057, 34.501942>,  <38.652504, 28.999643, 34.726158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.567669, 29.011057, 34.501942>,  <38.426281, 29.030079, 34.128246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567669, 29.011057, 34.501942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686642, 0.691431, -0.224600,
		-0.635279, 0.720875, 0.277054,
		0.353472, -0.047554, 0.934235,
		38.673710, 28.996790, 34.782211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527363, 29.776381, 34.447941>,  <38.426281, 29.030079, 34.128246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527363, 29.776381, 34.447941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.768459, 29.527611, 34.647903>,  <38.913116, 29.378349, 34.767883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.768459, 29.527611, 34.647903>,  <38.527363, 29.776381, 34.447941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768459, 29.527611, 34.647903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763033, 0.632504, -0.133113,
		-0.233410, 0.461681, 0.855786,
		0.602744, -0.621924, 0.499911,
		38.949284, 29.341034, 34.797878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818581, 30.238974, 34.838032>,  <38.527363, 29.776381, 34.447941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818581, 30.238974, 34.838032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.063366, 29.926035, 34.884396>,  <39.210239, 29.738272, 34.912212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.063366, 29.926035, 34.884396>,  <38.818581, 30.238974, 34.838032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063366, 29.926035, 34.884396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789259, 0.613505, -0.026105,
		-0.050687, 0.107457, 0.992917,
		0.611965, -0.782345, 0.115908,
		39.246956, 29.691332, 34.919167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215363, 30.380754, 35.456532>,  <38.818581, 30.238974, 34.838032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215363, 30.380754, 35.456532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.407948, 30.069820, 35.294571>,  <39.523499, 29.883261, 35.197395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.407948, 30.069820, 35.294571>,  <39.215363, 30.380754, 35.456532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407948, 30.069820, 35.294571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868909, 0.483860, 0.104287,
		0.114851, -0.402035, 0.908393,
		0.481462, -0.777334, -0.404903,
		39.552387, 29.836620, 35.173100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750290, 30.234653, 35.871410>,  <39.215363, 30.380754, 35.456532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750290, 30.234653, 35.871410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860004, 30.068506, 35.524483>,  <39.925835, 29.968819, 35.316326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.860004, 30.068506, 35.524483>,  <39.750290, 30.234653, 35.871410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860004, 30.068506, 35.524483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895428, 0.439209, 0.072837,
		0.350678, -0.796596, 0.492402,
		0.274289, -0.415368, -0.867315,
		39.942291, 29.943895, 35.264290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422684, 29.879766, 36.027149>,  <39.750290, 30.234653, 35.871410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422684, 29.879766, 36.027149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392857, 29.952433, 35.634937>,  <40.374962, 29.996033, 35.399609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392857, 29.952433, 35.634937>,  <40.422684, 29.879766, 36.027149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392857, 29.952433, 35.634937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877240, 0.479541, 0.022136,
		0.474225, -0.858509, -0.195123,
		-0.074566, 0.181667, -0.980529,
		40.370487, 30.006933, 35.340778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089455, 29.935507, 35.786308>,  <40.422684, 29.879766, 36.027149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089455, 29.935507, 35.786308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.914375, 30.116596, 35.475578>,  <40.809330, 30.225250, 35.289139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.914375, 30.116596, 35.475578>,  <41.089455, 29.935507, 35.786308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914375, 30.116596, 35.475578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817897, 0.559336, -0.134862,
		0.373452, -0.694394, -0.615102,
		-0.437696, 0.452725, -0.776828,
		40.783066, 30.252415, 35.242531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560112, 29.995476, 35.321487>,  <41.089455, 29.935507, 35.786308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560112, 29.995476, 35.321487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.291683, 30.259615, 35.186665>,  <41.130627, 30.418098, 35.105770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.291683, 30.259615, 35.186665>,  <41.560112, 29.995476, 35.321487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291683, 30.259615, 35.186665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723225, 0.683094, -0.101635,
		0.163125, -0.311970, -0.935983,
		-0.671071, 0.660347, -0.337054,
		41.090363, 30.457720, 35.085548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936939, 30.361870, 34.857967>,  <41.560112, 29.995476, 35.321487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936939, 30.361870, 34.857967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.623264, 30.599543, 34.929520>,  <41.435059, 30.742146, 34.972450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.623264, 30.599543, 34.929520>,  <41.936939, 30.361870, 34.857967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623264, 30.599543, 34.929520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605795, 0.795510, 0.013295,
		-0.134405, 0.118793, -0.983780,
		-0.784186, 0.594182, 0.178885,
		41.388008, 30.777798, 34.983185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047474, 31.031939, 34.478073>,  <41.936939, 30.361870, 34.857967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047474, 31.031939, 34.478073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.793041, 31.157532, 34.760014>,  <41.640381, 31.232887, 34.929176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.793041, 31.157532, 34.760014>,  <42.047474, 31.031939, 34.478073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793041, 31.157532, 34.760014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510402, 0.856285, 0.079162,
		-0.578698, 0.410110, -0.704925,
		-0.636081, 0.313984, 0.704851,
		41.602219, 31.251726, 34.971470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819920, 31.662611, 34.275841>,  <42.047474, 31.031939, 34.478073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819920, 31.662611, 34.275841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768188, 31.675188, 34.672283>,  <41.737152, 31.682734, 34.910149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.768188, 31.675188, 34.672283>,  <41.819920, 31.662611, 34.275841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768188, 31.675188, 34.672283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383945, 0.923121, 0.020813,
		-0.914255, 0.383221, -0.131454,
		-0.129324, 0.031443, 0.991104,
		41.729393, 31.684620, 34.969616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701561, 32.443947, 34.373421>,  <41.819920, 31.662611, 34.275841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701561, 32.443947, 34.373421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.734386, 32.291542, 34.741791>,  <41.754082, 32.200100, 34.962811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.734386, 32.291542, 34.741791>,  <41.701561, 32.443947, 34.373421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734386, 32.291542, 34.741791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499593, 0.815282, 0.292785,
		-0.862365, 0.436060, 0.257253,
		0.082062, -0.381009, 0.920922,
		41.759007, 32.177238, 35.018066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435295, 32.964066, 34.861698>,  <41.701561, 32.443947, 34.373421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435295, 32.964066, 34.861698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.693928, 32.710804, 35.031902>,  <41.849106, 32.558849, 35.134026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.693928, 32.710804, 35.031902>,  <41.435295, 32.964066, 34.861698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693928, 32.710804, 35.031902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591502, 0.768346, 0.244478,
		-0.481730, 0.093615, 0.871305,
		0.646577, -0.633151, 0.425509,
		41.887901, 32.520859, 35.159554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727512, 33.386929, 35.462685>,  <41.435295, 32.964066, 34.861698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727512, 33.386929, 35.462685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.963528, 33.073296, 35.385674>,  <42.105137, 32.885117, 35.339466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.963528, 33.073296, 35.385674>,  <41.727512, 33.386929, 35.462685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963528, 33.073296, 35.385674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796717, 0.526828, 0.296132,
		-0.130763, -0.328120, 0.935542,
		0.590036, -0.784085, -0.192529,
		42.140537, 32.838070, 35.327915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205791, 33.330105, 36.036278>,  <41.727512, 33.386929, 35.462685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205791, 33.330105, 36.036278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.400059, 33.173935, 35.723434>,  <42.516621, 33.080235, 35.535728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.400059, 33.173935, 35.723434>,  <42.205791, 33.330105, 36.036278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400059, 33.173935, 35.723434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804404, 0.549801, 0.225062,
		0.342136, -0.738438, 0.581079,
		0.485671, -0.390421, -0.782109,
		42.545761, 33.056808, 35.488800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886147, 33.335854, 36.195118>,  <42.205791, 33.330105, 36.036278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886147, 33.335854, 36.195118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945873, 33.262436, 35.806477>,  <42.981709, 33.218384, 35.573292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945873, 33.262436, 35.806477>,  <42.886147, 33.335854, 36.195118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945873, 33.262436, 35.806477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806944, 0.590496, 0.012462,
		0.571441, -0.785891, 0.236283,
		0.149318, -0.183546, -0.971604,
		42.990669, 33.207371, 35.514996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.565121, 33.274479, 36.083885>,  <42.886147, 33.335854, 36.195118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.565121, 33.274479, 36.083885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.429146, 33.377338, 35.722042>,  <43.347561, 33.439053, 35.504936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.429146, 33.377338, 35.722042>,  <43.565121, 33.274479, 36.083885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429146, 33.377338, 35.722042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819413, 0.553035, -0.150713,
		0.461524, -0.792481, -0.398710,
		-0.339938, 0.257150, -0.904608,
		43.327164, 33.454483, 35.450661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145241, 33.140648, 35.587814>,  <43.565121, 33.274479, 36.083885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145241, 33.140648, 35.587814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.885632, 33.393925, 35.419128>,  <43.729866, 33.545891, 35.317917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.885632, 33.393925, 35.419128>,  <44.145241, 33.140648, 35.587814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885632, 33.393925, 35.419128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750445, 0.623856, -0.218254,
		0.124891, -0.458123, -0.880072,
		-0.649025, 0.633188, -0.421710,
		43.690926, 33.583881, 35.292614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455559, 33.336681, 34.988007>,  <44.145241, 33.140648, 35.587814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455559, 33.336681, 34.988007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.206078, 33.629364, 35.097996>,  <44.056389, 33.804974, 35.163990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.206078, 33.629364, 35.097996>,  <44.455559, 33.336681, 34.988007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206078, 33.629364, 35.097996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735693, 0.668359, -0.109787,
		-0.264110, 0.133819, -0.955164,
		-0.623701, 0.731703, 0.274969,
		44.018967, 33.848873, 35.180485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.060879, 33.592499, 34.678436>,  <44.455559, 33.336681, 34.988007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.060879, 33.592499, 34.678436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.425430, 33.465576, 34.573593>,  <45.644161, 33.389423, 34.510685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.425430, 33.465576, 34.573593>,  <45.060879, 33.592499, 34.678436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.425430, 33.465576, 34.573593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377136, -0.898857, -0.223212,
		-0.164773, 0.302283, -0.938869,
		0.911383, -0.317302, -0.262110,
		45.698845, 33.370384, 34.494961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945221, 33.130703, 34.134914>,  <45.060879, 33.592499, 34.678436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945221, 33.130703, 34.134914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.310452, 33.032654, 34.265278>,  <45.529591, 32.973824, 34.343494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.310452, 33.032654, 34.265278>,  <44.945221, 33.130703, 34.134914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310452, 33.032654, 34.265278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185691, -0.961437, -0.202871,
		0.363064, 0.124719, -0.923379,
		0.913073, -0.245119, 0.325904,
		45.584373, 32.959118, 34.363049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231754, 32.671429, 33.715984>,  <44.945221, 33.130703, 34.134914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231754, 32.671429, 33.715984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418659, 32.598694, 34.062073>,  <45.530804, 32.555054, 34.269726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418659, 32.598694, 34.062073>,  <45.231754, 32.671429, 33.715984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418659, 32.598694, 34.062073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270485, -0.961099, -0.055911,
		0.841725, -0.207903, -0.498271,
		0.467264, -0.181837, 0.865217,
		45.558838, 32.544144, 34.321636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569695, 32.034710, 33.611145>,  <45.231754, 32.671429, 33.715984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569695, 32.034710, 33.611145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.582233, 32.090080, 34.007095>,  <45.589756, 32.123302, 34.244667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.582233, 32.090080, 34.007095>,  <45.569695, 32.034710, 33.611145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.582233, 32.090080, 34.007095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328420, -0.933948, 0.141001,
		0.944012, -0.329515, 0.016184,
		0.031347, 0.138422, 0.989877,
		45.591637, 32.131607, 34.304058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961372, 31.511826, 33.918728>,  <45.569695, 32.034710, 33.611145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961372, 31.511826, 33.918728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.710548, 31.663750, 34.190765>,  <45.560055, 31.754904, 34.353989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.710548, 31.663750, 34.190765>,  <45.961372, 31.511826, 33.918728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710548, 31.663750, 34.190765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479874, -0.876088, 0.046813,
		0.613605, -0.297006, 0.731626,
		-0.627065, 0.379813, 0.680097,
		45.522430, 31.777693, 34.394794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788170, 30.894737, 34.251961>,  <45.961372, 31.511826, 33.918728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788170, 30.894737, 34.251961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.496914, 31.143877, 34.366413>,  <45.322163, 31.293362, 34.435085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.496914, 31.143877, 34.366413>,  <45.788170, 30.894737, 34.251961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496914, 31.143877, 34.366413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672409, -0.730074, -0.121894,
		0.132979, -0.281155, 0.950404,
		-0.728136, 0.622851, 0.286136,
		45.278473, 31.330732, 34.452255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452278, 30.551189, 34.700138>,  <45.788170, 30.894737, 34.251961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452278, 30.551189, 34.700138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.186344, 30.826920, 34.585018>,  <45.026783, 30.992357, 34.515945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.186344, 30.826920, 34.585018>,  <45.452278, 30.551189, 34.700138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.186344, 30.826920, 34.585018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716662, -0.697269, -0.014529,
		-0.210687, 0.196593, 0.957581,
		-0.664836, 0.689323, -0.287796,
		44.986893, 31.033716, 34.498680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992359, 30.520817, 35.191246>,  <45.452278, 30.551189, 34.700138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992359, 30.520817, 35.191246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.796028, 30.682821, 34.882687>,  <44.678230, 30.780024, 34.697552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.796028, 30.682821, 34.882687>,  <44.992359, 30.520817, 35.191246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796028, 30.682821, 34.882687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670904, -0.740566, 0.038062,
		-0.555856, 0.536217, 0.635213,
		-0.490827, 0.405010, -0.771399,
		44.648781, 30.804325, 34.651268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277039, 30.680580, 35.331459>,  <44.992359, 30.520817, 35.191246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277039, 30.680580, 35.331459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.256279, 30.675119, 34.932034>,  <44.243824, 30.671843, 34.692379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.256279, 30.675119, 34.932034>,  <44.277039, 30.680580, 35.331459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.256279, 30.675119, 34.932034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698611, -0.714017, 0.046068,
		-0.713617, 0.699996, 0.027518,
		-0.051896, -0.013650, -0.998559,
		44.240711, 30.671024, 34.632465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.574165, 30.738251, 35.150009>,  <44.277039, 30.680580, 35.331459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.574165, 30.738251, 35.150009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725349, 30.586239, 34.812317>,  <43.816059, 30.495031, 34.609703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.725349, 30.586239, 34.812317>,  <43.574165, 30.738251, 35.150009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725349, 30.586239, 34.812317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710603, -0.703592, -0.001416,
		-0.593456, 0.600447, -0.535979,
		0.377961, -0.380028, -0.844230,
		43.838737, 30.472231, 34.559048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993481, 30.601259, 34.791965>,  <43.574165, 30.738251, 35.150009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993481, 30.601259, 34.791965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.271595, 30.397913, 34.588734>,  <43.438465, 30.275906, 34.466797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.271595, 30.397913, 34.588734>,  <42.993481, 30.601259, 34.791965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271595, 30.397913, 34.588734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657271, -0.735754, -0.163282,
		-0.290811, 0.447471, -0.845694,
		0.695287, -0.508366, -0.508075,
		43.480183, 30.245403, 34.436310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730499, 30.397411, 34.126244>,  <42.993481, 30.601259, 34.791965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730499, 30.397411, 34.126244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.017036, 30.141003, 34.236477>,  <43.188957, 29.987158, 34.302616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.017036, 30.141003, 34.236477>,  <42.730499, 30.397411, 34.126244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017036, 30.141003, 34.236477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659288, -0.751145, -0.033476,
		0.228460, -0.157707, -0.960695,
		0.716341, -0.641023, 0.275581,
		43.231937, 29.948696, 34.319153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622711, 29.788420, 33.654636>,  <42.730499, 30.397411, 34.126244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622711, 29.788420, 33.654636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.829704, 29.657909, 33.971054>,  <42.953899, 29.579603, 34.160904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.829704, 29.657909, 33.971054>,  <42.622711, 29.788420, 33.654636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829704, 29.657909, 33.971054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635711, -0.765400, 0.100172,
		0.572784, -0.554715, -0.603499,
		0.517485, -0.326274, 0.791047,
		42.984951, 29.560028, 34.208366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886913, 29.062134, 33.499813>,  <42.622711, 29.788420, 33.654636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886913, 29.062134, 33.499813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.879288, 29.098345, 33.898098>,  <42.874710, 29.120071, 34.137070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.879288, 29.098345, 33.898098>,  <42.886913, 29.062134, 33.499813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879288, 29.098345, 33.898098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450994, -0.889598, 0.072242,
		0.892323, -0.447682, 0.057790,
		-0.019068, 0.090526, 0.995712,
		42.873566, 29.125504, 34.196812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.838448, 28.341696, 33.554539>,  <42.886913, 29.062134, 33.499813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.838448, 28.341696, 33.554539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.731949, 28.478418, 33.915047>,  <42.668049, 28.560452, 34.131351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.731949, 28.478418, 33.915047>,  <42.838448, 28.341696, 33.554539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731949, 28.478418, 33.915047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714980, -0.697120, 0.053168,
		0.646464, -0.630231, 0.429992,
		-0.266248, 0.341807, 0.901266,
		42.652073, 28.580961, 34.185425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905159, 27.754313, 34.009991>,  <42.838448, 28.341696, 33.554539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905159, 27.754313, 34.009991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.651119, 27.998392, 34.199436>,  <42.498695, 28.144840, 34.313103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.651119, 27.998392, 34.199436>,  <42.905159, 27.754313, 34.009991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.651119, 27.998392, 34.199436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635619, -0.761244, 0.128438,
		0.438906, -0.219465, 0.871319,
		-0.635099, 0.610198, 0.473611,
		42.460590, 28.181452, 34.341518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.642113, 27.420519, 34.555275>,  <42.905159, 27.754313, 34.009991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.642113, 27.420519, 34.555275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.375854, 27.708582, 34.477001>,  <42.216099, 27.881420, 34.430035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.375854, 27.708582, 34.477001>,  <42.642113, 27.420519, 34.555275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375854, 27.708582, 34.477001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746037, -0.648720, 0.150306,
		-0.018703, 0.246041, 0.969079,
		-0.665642, 0.720157, -0.195689,
		42.176163, 27.924629, 34.418293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188198, 27.446308, 35.085732>,  <42.642113, 27.420519, 34.555275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188198, 27.446308, 35.085732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.970310, 27.636066, 34.809116>,  <41.839577, 27.749922, 34.643147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.970310, 27.636066, 34.809116>,  <42.188198, 27.446308, 35.085732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970310, 27.636066, 34.809116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757349, -0.632409, 0.162727,
		-0.360138, 0.612377, 0.703772,
		-0.544722, 0.474397, -0.691538,
		41.806892, 27.778385, 34.601654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534130, 27.470467, 35.356285>,  <42.188198, 27.446308, 35.085732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534130, 27.470467, 35.356285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.467926, 27.532644, 34.966732>,  <41.428204, 27.569950, 34.733002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.467926, 27.532644, 34.966732>,  <41.534130, 27.470467, 35.356285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467926, 27.532644, 34.966732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840085, -0.539487, 0.056666,
		-0.516587, 0.827521, 0.219878,
		-0.165513, 0.155443, -0.973880,
		41.418274, 27.579277, 34.674568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826668, 27.746393, 35.309185>,  <41.534130, 27.470467, 35.356285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826668, 27.746393, 35.309185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.907345, 27.582558, 34.953308>,  <40.955750, 27.484257, 34.739780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.907345, 27.582558, 34.953308>,  <40.826668, 27.746393, 35.309185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907345, 27.582558, 34.953308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828916, -0.555260, 0.067714,
		-0.521747, 0.723824, -0.451507,
		0.201691, -0.409591, -0.889694,
		40.967854, 27.459681, 34.686401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.560623, 43.313805, 40.068657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315266, 43.024460, 40.195457>,  <41.168049, 42.850853, 40.271538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315266, 43.024460, 40.195457>,  <41.560623, 43.313805, 40.068657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315266, 43.024460, 40.195457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124943, -0.485213, -0.865424,
		0.779829, -0.491241, 0.388007,
		-0.613397, -0.723361, 0.317005,
		41.131245, 42.807453, 40.290558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.835030, 42.742531, 39.886219>,  <41.560623, 43.313805, 40.068657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.835030, 42.742531, 39.886219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469460, 42.597115, 39.958420>,  <41.250118, 42.509865, 40.001740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.469460, 42.597115, 39.958420>,  <41.835030, 42.742531, 39.886219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469460, 42.597115, 39.958420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179360, -0.760674, -0.623863,
		0.364104, -0.537789, 0.760402,
		-0.913925, -0.363536, 0.180507,
		41.195282, 42.488052, 40.012573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919174, 42.062088, 39.813049>,  <41.835030, 42.742531, 39.886219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919174, 42.062088, 39.813049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525318, 42.107231, 39.759754>,  <41.289005, 42.134319, 39.727779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525318, 42.107231, 39.759754>,  <41.919174, 42.062088, 39.813049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525318, 42.107231, 39.759754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061621, -0.489345, -0.869910,
		-0.163376, -0.864757, 0.474873,
		-0.984637, 0.112860, -0.133234,
		41.229927, 42.141090, 39.719784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.615078, 41.442932, 39.677082>,  <41.919174, 42.062088, 39.813049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.615078, 41.442932, 39.677082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288967, 41.641430, 39.557701>,  <41.093300, 41.760529, 39.486073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288967, 41.641430, 39.557701>,  <41.615078, 41.442932, 39.677082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288967, 41.641430, 39.557701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078444, -0.605285, -0.792134,
		-0.573732, -0.622398, 0.532403,
		-0.815278, 0.496237, -0.298448,
		41.044384, 41.790302, 39.468166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153599, 40.897232, 39.545376>,  <41.615078, 41.442932, 39.677082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153599, 40.897232, 39.545376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067112, 41.229637, 39.340366>,  <41.015221, 41.429081, 39.217361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067112, 41.229637, 39.340366>,  <41.153599, 40.897232, 39.545376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067112, 41.229637, 39.340366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130313, -0.544802, -0.828377,
		-0.967610, -0.112321, 0.226087,
		-0.216217, 0.831008, -0.512519,
		41.002247, 41.478939, 39.186611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460938, 40.753254, 39.218315>,  <41.153599, 40.897232, 39.545376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460938, 40.753254, 39.218315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644028, 41.037231, 39.004227>,  <40.753883, 41.207619, 38.875774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644028, 41.037231, 39.004227>,  <40.460938, 40.753254, 39.218315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644028, 41.037231, 39.004227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105887, -0.554178, -0.825636,
		-0.882765, 0.434589, -0.178488,
		0.457727, 0.709943, -0.535226,
		40.781345, 41.250214, 38.843658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072727, 40.772522, 38.554180>,  <40.460938, 40.753254, 39.218315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072727, 40.772522, 38.554180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429184, 40.948387, 38.509331>,  <40.643059, 41.053905, 38.482422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429184, 40.948387, 38.509331>,  <40.072727, 40.772522, 38.554180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429184, 40.948387, 38.509331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184677, -0.577184, -0.795458,
		-0.414449, 0.688155, -0.595546,
		0.891138, 0.439660, -0.112127,
		40.696526, 41.080284, 38.475693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094219, 40.989872, 37.882198>,  <40.072727, 40.772522, 38.554180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094219, 40.989872, 37.882198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484272, 40.969963, 37.968590>,  <40.718304, 40.958015, 38.020424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484272, 40.969963, 37.968590>,  <40.094219, 40.989872, 37.882198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484272, 40.969963, 37.968590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173854, -0.432621, -0.884655,
		0.137470, 0.900201, -0.413208,
		0.975129, -0.049776, 0.215976,
		40.776810, 40.955029, 38.033382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470196, 41.243786, 37.302322>,  <40.094219, 40.989872, 37.882198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470196, 41.243786, 37.302322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729416, 41.003258, 37.489273>,  <40.884949, 40.858940, 37.601444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729416, 41.003258, 37.489273>,  <40.470196, 41.243786, 37.302322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729416, 41.003258, 37.489273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101264, -0.540203, -0.835420,
		0.754832, 0.588726, -0.289189,
		0.648054, -0.601317, 0.467379,
		40.923832, 40.822861, 37.629486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071201, 41.207436, 36.978485>,  <40.470196, 41.243786, 37.302322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071201, 41.207436, 36.978485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093182, 40.868813, 37.190266>,  <41.106369, 40.665638, 37.317333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093182, 40.868813, 37.190266>,  <41.071201, 41.207436, 36.978485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093182, 40.868813, 37.190266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223920, -0.506302, -0.832777,
		0.973057, 0.164315, 0.161741,
		0.054948, -0.846557, 0.529454,
		41.109665, 40.614845, 37.349102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386311, 40.777065, 36.482800>,  <41.071201, 41.207436, 36.978485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386311, 40.777065, 36.482800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299267, 40.507118, 36.764847>,  <41.247040, 40.345150, 36.934074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299267, 40.507118, 36.764847>,  <41.386311, 40.777065, 36.482800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299267, 40.507118, 36.764847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297445, -0.733923, -0.610642,
		0.929608, 0.076851, 0.360448,
		-0.217612, -0.674871, 0.705120,
		41.233982, 40.304657, 36.976383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.937962, 40.319283, 36.622025>,  <41.386311, 40.777065, 36.482800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.937962, 40.319283, 36.622025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610897, 40.111885, 36.722103>,  <41.414658, 39.987446, 36.782150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610897, 40.111885, 36.722103>,  <41.937962, 40.319283, 36.622025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610897, 40.111885, 36.722103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225995, -0.688783, -0.688843,
		0.529490, -0.506697, 0.680367,
		-0.817659, -0.518495, 0.250192,
		41.365601, 39.956337, 36.797161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985889, 39.478848, 36.710033>,  <41.937962, 40.319283, 36.622025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985889, 39.478848, 36.710033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618481, 39.588604, 36.596176>,  <41.398033, 39.654457, 36.527863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.618481, 39.588604, 36.596176>,  <41.985889, 39.478848, 36.710033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618481, 39.588604, 36.596176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012083, -0.700130, -0.713913,
		-0.395175, -0.659187, 0.639773,
		-0.918526, 0.274390, -0.284639,
		41.342922, 39.670921, 36.510784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591362, 38.835949, 36.799503>,  <41.985889, 39.478848, 36.710033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591362, 38.835949, 36.799503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475025, 39.075050, 36.500679>,  <41.405224, 39.218513, 36.321384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475025, 39.075050, 36.500679>,  <41.591362, 38.835949, 36.799503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475025, 39.075050, 36.500679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017306, -0.777399, -0.628769,
		-0.956616, -0.195798, 0.215752,
		-0.290838, 0.597757, -0.747061,
		41.387775, 39.254379, 36.276562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785809, 38.066883, 36.570831>,  <41.591362, 38.835949, 36.799503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785809, 38.066883, 36.570831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036087, 37.763882, 36.645332>,  <42.186253, 37.582081, 36.690033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036087, 37.763882, 36.645332>,  <41.785809, 38.066883, 36.570831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036087, 37.763882, 36.645332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400364, -0.106927, 0.910097,
		-0.669487, -0.644013, -0.370181,
		0.625696, -0.757505, 0.186253,
		42.223797, 37.536629, 36.701210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382847, 37.573189, 36.850426>,  <41.785809, 38.066883, 36.570831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382847, 37.573189, 36.850426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758053, 37.531193, 36.982548>,  <41.983177, 37.505997, 37.061821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758053, 37.531193, 36.982548>,  <41.382847, 37.573189, 36.850426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758053, 37.531193, 36.982548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337926, -0.065350, 0.938901,
		-0.076982, -0.992325, -0.096776,
		0.938019, -0.104981, 0.330302,
		42.039459, 37.499695, 37.081638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369492, 36.965080, 37.230286>,  <41.382847, 37.573189, 36.850426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369492, 36.965080, 37.230286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716003, 37.124828, 37.350323>,  <41.923912, 37.220676, 37.422344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.716003, 37.124828, 37.350323>,  <41.369492, 36.965080, 37.230286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.716003, 37.124828, 37.350323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285121, -0.097988, 0.953470,
		0.410195, -0.911537, 0.028984,
		0.866283, 0.399372, 0.300092,
		41.975887, 37.244640, 37.440350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769928, 36.482971, 37.678265>,  <41.369492, 36.965080, 37.230286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769928, 36.482971, 37.678265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872932, 36.861599, 37.755928>,  <41.934734, 37.088776, 37.802525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872932, 36.861599, 37.755928>,  <41.769928, 36.482971, 37.678265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872932, 36.861599, 37.755928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125094, -0.166584, 0.978060,
		0.958144, -0.276149, 0.075513,
		0.257511, 0.946568, 0.194156,
		41.950184, 37.145569, 37.814175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186150, 36.497887, 38.271622>,  <41.769928, 36.482971, 37.678265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186150, 36.497887, 38.271622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043591, 36.871243, 38.254807>,  <41.958054, 37.095257, 38.244717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043591, 36.871243, 38.254807>,  <42.186150, 36.497887, 38.271622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043591, 36.871243, 38.254807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126209, -0.003518, 0.991998,
		0.925771, 0.358851, 0.119056,
		-0.356398, 0.933388, -0.042033,
		41.936672, 37.151260, 38.242195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321396, 36.762146, 38.931862>,  <42.186150, 36.497887, 38.271622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321396, 36.762146, 38.931862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051487, 37.008266, 38.768852>,  <41.889542, 37.155941, 38.671047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.051487, 37.008266, 38.768852>,  <42.321396, 36.762146, 38.931862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051487, 37.008266, 38.768852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242595, 0.336580, 0.909869,
		0.697012, 0.712822, -0.077847,
		-0.674776, 0.615304, -0.407527,
		41.849052, 37.192856, 38.646595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252083, 37.385334, 39.397968>,  <42.321396, 36.762146, 38.931862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252083, 37.385334, 39.397968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915703, 37.374630, 39.181789>,  <41.713875, 37.368206, 39.052082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915703, 37.374630, 39.181789>,  <42.252083, 37.385334, 39.397968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915703, 37.374630, 39.181789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520060, 0.315840, 0.793588,
		0.149458, 0.948435, -0.279524,
		-0.840952, -0.026761, -0.540448,
		41.663418, 37.366600, 39.019653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939041, 38.032616, 39.588211>,  <42.252083, 37.385334, 39.397968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939041, 38.032616, 39.588211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657230, 37.791737, 39.438007>,  <41.488144, 37.647209, 39.347885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657230, 37.791737, 39.438007>,  <41.939041, 38.032616, 39.588211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657230, 37.791737, 39.438007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637332, 0.304133, 0.708034,
		-0.312170, 0.738150, -0.598067,
		-0.704527, -0.602194, -0.375505,
		41.445873, 37.611076, 39.325356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238255, 38.360340, 39.714737>,  <41.939041, 38.032616, 39.588211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238255, 38.360340, 39.714737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135574, 37.987171, 39.613735>,  <41.073967, 37.763271, 39.553135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135574, 37.987171, 39.613735>,  <41.238255, 38.360340, 39.714737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.135574, 37.987171, 39.613735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664659, -0.019269, 0.746899,
		-0.701665, 0.359560, -0.615129,
		-0.256701, -0.932923, -0.252505,
		41.058563, 37.707294, 39.537983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397396, 38.336388, 39.738010>,  <41.238255, 38.360340, 39.714737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397396, 38.336388, 39.738010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563118, 37.974319, 39.776001>,  <40.662552, 37.757080, 39.798798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563118, 37.974319, 39.776001>,  <40.397396, 38.336388, 39.738010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563118, 37.974319, 39.776001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597442, -0.191750, 0.778649,
		-0.686597, -0.379343, -0.620229,
		0.414304, -0.905169, 0.094981,
		40.687408, 37.702770, 39.804497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861805, 37.902134, 39.895325>,  <40.397396, 38.336388, 39.738010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861805, 37.902134, 39.895325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175346, 37.686230, 40.018112>,  <40.363472, 37.556686, 40.091785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175346, 37.686230, 40.018112>,  <39.861805, 37.902134, 39.895325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175346, 37.686230, 40.018112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506549, -0.269920, 0.818872,
		-0.359134, -0.797375, -0.484991,
		0.783857, -0.539756, 0.306972,
		40.410503, 37.524303, 40.110203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553921, 37.246967, 40.089138>,  <39.861805, 37.902134, 39.895325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553921, 37.246967, 40.089138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912338, 37.299477, 40.258781>,  <40.127388, 37.330982, 40.360565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912338, 37.299477, 40.258781>,  <39.553921, 37.246967, 40.089138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912338, 37.299477, 40.258781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406100, -0.143640, 0.902469,
		0.179392, -0.980884, -0.075397,
		0.896047, 0.131278, 0.424105,
		40.181152, 37.338860, 40.386013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602829, 36.757389, 40.575737>,  <39.553921, 37.246967, 40.089138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602829, 36.757389, 40.575737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865269, 37.030941, 40.703384>,  <40.022732, 37.195072, 40.779972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865269, 37.030941, 40.703384>,  <39.602829, 36.757389, 40.575737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865269, 37.030941, 40.703384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320331, -0.130512, 0.938272,
		0.683315, -0.717827, 0.133438,
		0.656101, 0.683880, 0.319123,
		40.062099, 37.236103, 40.799122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712940, 36.614338, 41.312244>,  <39.602829, 36.757389, 40.575737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712940, 36.614338, 41.312244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884941, 36.974041, 41.280151>,  <39.988140, 37.189861, 41.260895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884941, 36.974041, 41.280151>,  <39.712940, 36.614338, 41.312244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884941, 36.974041, 41.280151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267147, 0.211620, 0.940132,
		0.862399, -0.382823, 0.331231,
		0.429999, 0.899257, -0.080231,
		40.013943, 37.243816, 41.256081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297321, 36.186008, 41.823277>,  <39.712940, 36.614338, 41.312244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297321, 36.186008, 41.823277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915016, 36.302036, 41.803783>,  <38.685631, 36.371651, 41.792088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915016, 36.302036, 41.803783>,  <39.297321, 36.186008, 41.823277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915016, 36.302036, 41.803783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083051, -0.425070, -0.901342,
		-0.282162, -0.857424, 0.430358,
		-0.955765, 0.290066, -0.048729,
		38.628288, 36.389057, 41.789165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021484, 35.665741, 41.523937>,  <39.297321, 36.186008, 41.823277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021484, 35.665741, 41.523937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743626, 35.949940, 41.478931>,  <38.576908, 36.120457, 41.451927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743626, 35.949940, 41.478931>,  <39.021484, 35.665741, 41.523937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743626, 35.949940, 41.478931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216926, -0.356025, -0.908949,
		-0.685860, -0.606996, 0.401438,
		-0.694650, 0.710494, -0.112510,
		38.535229, 36.163090, 41.445179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390099, 35.418213, 41.224743>,  <39.021484, 35.665741, 41.523937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390099, 35.418213, 41.224743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312794, 35.796410, 41.119907>,  <38.266411, 36.023327, 41.057007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312794, 35.796410, 41.119907>,  <38.390099, 35.418213, 41.224743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312794, 35.796410, 41.119907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394425, -0.319457, -0.861613,
		-0.898376, -0.063140, 0.434664,
		-0.193259, 0.945495, -0.262088,
		38.254814, 36.080059, 41.041283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714989, 35.485489, 40.840267>,  <38.390099, 35.418213, 41.224743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714989, 35.485489, 40.840267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874825, 35.834564, 40.728024>,  <37.970726, 36.044010, 40.660675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874825, 35.834564, 40.728024>,  <37.714989, 35.485489, 40.840267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874825, 35.834564, 40.728024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400544, -0.109129, -0.909756,
		-0.824555, 0.475928, 0.305942,
		0.399592, 0.872687, -0.280613,
		37.994701, 36.096371, 40.643841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187878, 35.925812, 40.554882>,  <37.714989, 35.485489, 40.840267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187878, 35.925812, 40.554882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548409, 36.009342, 40.403095>,  <37.764729, 36.059460, 40.312023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548409, 36.009342, 40.403095>,  <37.187878, 35.925812, 40.554882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548409, 36.009342, 40.403095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341817, -0.195147, -0.919282,
		-0.266020, 0.958285, -0.104512,
		0.901329, 0.208823, -0.379471,
		37.818806, 36.071991, 40.289253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993382, 36.323296, 40.025326>,  <37.187878, 35.925812, 40.554882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993382, 36.323296, 40.025326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367821, 36.200500, 39.956646>,  <37.592484, 36.126823, 39.915440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367821, 36.200500, 39.956646>,  <36.993382, 36.323296, 40.025326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367821, 36.200500, 39.956646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284842, -0.375219, -0.882086,
		0.206368, 0.874624, -0.438685,
		0.936097, -0.306991, -0.171696,
		37.648651, 36.108402, 39.905136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219440, 36.559895, 39.469604>,  <36.993382, 36.323296, 40.025326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219440, 36.559895, 39.469604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476933, 36.253796, 39.468433>,  <37.631428, 36.070137, 39.467731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476933, 36.253796, 39.468433>,  <37.219440, 36.559895, 39.469604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476933, 36.253796, 39.468433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226739, -0.187074, -0.955820,
		0.730892, 0.615953, -0.293937,
		0.643729, -0.765248, -0.002930,
		37.670052, 36.024220, 39.467556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455181, 36.531971, 38.782219>,  <37.219440, 36.559895, 39.469604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455181, 36.531971, 38.782219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635803, 36.203934, 38.922817>,  <37.744175, 36.007111, 39.007175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635803, 36.203934, 38.922817>,  <37.455181, 36.531971, 38.782219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635803, 36.203934, 38.922817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118625, -0.335270, -0.934624,
		0.884322, 0.463731, -0.054110,
		0.451555, -0.820090, 0.351497,
		37.771271, 35.957909, 39.028267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072205, 36.475288, 38.492916>,  <37.455181, 36.531971, 38.782219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072205, 36.475288, 38.492916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979870, 36.103016, 38.606441>,  <37.924469, 35.879654, 38.674557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979870, 36.103016, 38.606441>,  <38.072205, 36.475288, 38.492916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979870, 36.103016, 38.606441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013347, -0.294688, -0.955500,
		0.972901, -0.216776, 0.080447,
		-0.230836, -0.930681, 0.283809,
		37.910618, 35.823811, 38.691586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372608, 36.152496, 37.988197>,  <38.072205, 36.475288, 38.492916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372608, 36.152496, 37.988197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119385, 35.883259, 38.141136>,  <37.967453, 35.721718, 38.232899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119385, 35.883259, 38.141136>,  <38.372608, 36.152496, 37.988197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119385, 35.883259, 38.141136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001174, -0.494756, -0.869031,
		0.774107, -0.549694, 0.313997,
		-0.633053, -0.673092, 0.382349,
		37.929470, 35.681332, 38.255840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646843, 35.506424, 37.823608>,  <38.372608, 36.152496, 37.988197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646843, 35.506424, 37.823608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259361, 35.448101, 37.903957>,  <38.026871, 35.413109, 37.952168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259361, 35.448101, 37.903957>,  <38.646843, 35.506424, 37.823608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259361, 35.448101, 37.903957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113538, -0.459372, -0.880957,
		0.220724, -0.876195, 0.428442,
		-0.968705, -0.145804, 0.200876,
		37.968750, 35.404362, 37.964222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412033, 34.767822, 37.764954>,  <38.646843, 35.506424, 37.823608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412033, 34.767822, 37.764954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124317, 35.038620, 37.702599>,  <37.951687, 35.201099, 37.665184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124317, 35.038620, 37.702599>,  <38.412033, 34.767822, 37.764954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124317, 35.038620, 37.702599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216792, -0.431933, -0.875462,
		-0.660015, -0.595917, 0.457453,
		-0.719292, 0.676991, -0.155892,
		37.908527, 35.241718, 37.655830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.982643, 36.100800, 45.565865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704639, 36.357174, 45.435528>,  <38.537838, 36.510998, 45.357327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704639, 36.357174, 45.435528>,  <38.982643, 36.100800, 45.565865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704639, 36.357174, 45.435528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068444, -0.392152, -0.917351,
		-0.715740, -0.659866, 0.228680,
		-0.695005, 0.640932, -0.325842,
		38.496140, 36.549454, 45.337776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464413, 35.715694, 45.128185>,  <38.982643, 36.100800, 45.565865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464413, 35.715694, 45.128185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.419670, 36.096062, 45.012783>,  <38.392822, 36.324284, 44.943542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.419670, 36.096062, 45.012783>,  <38.464413, 35.715694, 45.128185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419670, 36.096062, 45.012783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126966, -0.301623, -0.944936,
		-0.985579, -0.069071, 0.154475,
		-0.111861, 0.950922, -0.288504,
		38.386112, 36.381340, 44.926231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815006, 35.811882, 44.665474>,  <38.464413, 35.715694, 45.128185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815006, 35.811882, 44.665474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056499, 36.121269, 44.588264>,  <38.201393, 36.306900, 44.541939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056499, 36.121269, 44.588264>,  <37.815006, 35.811882, 44.665474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056499, 36.121269, 44.588264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303567, -0.000835, -0.952810,
		-0.737129, 0.633835, 0.234295,
		0.603729, 0.773468, -0.193027,
		38.237617, 36.353310, 44.530357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436226, 36.334816, 44.341400>,  <37.815006, 35.811882, 44.665474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436226, 36.334816, 44.341400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.813499, 36.402912, 44.227268>,  <38.039864, 36.443771, 44.158791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.813499, 36.402912, 44.227268>,  <37.436226, 36.334816, 44.341400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813499, 36.402912, 44.227268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307684, 0.123417, -0.943450,
		-0.125402, 0.977643, 0.168786,
		0.943189, 0.170243, -0.285329,
		38.096455, 36.453983, 44.141670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447826, 36.797131, 43.722954>,  <37.436226, 36.334816, 44.341400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447826, 36.797131, 43.722954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.841080, 36.725201, 43.709652>,  <38.077034, 36.682045, 43.701672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.841080, 36.725201, 43.709652>,  <37.447826, 36.797131, 43.722954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841080, 36.725201, 43.709652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046318, -0.068921, -0.996546,
		0.176907, 0.981282, -0.076087,
		0.983137, -0.179820, -0.033259,
		38.136021, 36.671253, 43.699673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795250, 37.244732, 43.171844>,  <37.447826, 36.797131, 43.722954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795250, 37.244732, 43.171844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.053028, 36.942383, 43.218056>,  <38.207695, 36.760975, 43.245785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.053028, 36.942383, 43.218056>,  <37.795250, 37.244732, 43.171844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053028, 36.942383, 43.218056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097774, -0.068391, -0.992856,
		0.758373, 0.651138, 0.029830,
		0.644447, -0.755871, 0.115530,
		38.246361, 36.715622, 43.252716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508339, 37.583809, 42.865593>,  <37.795250, 37.244732, 43.171844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508339, 37.583809, 42.865593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488415, 37.184345, 42.871254>,  <38.476460, 36.944668, 42.874649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.488415, 37.184345, 42.871254>,  <38.508339, 37.583809, 42.865593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488415, 37.184345, 42.871254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062946, -0.017276, -0.997868,
		0.996774, -0.048809, 0.063722,
		-0.049806, -0.998659, 0.014148,
		38.473473, 36.884747, 42.875500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095135, 37.312115, 42.490063>,  <38.508339, 37.583809, 42.865593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095135, 37.312115, 42.490063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796478, 37.046600, 42.507595>,  <38.617287, 36.887291, 42.518112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.796478, 37.046600, 42.507595>,  <39.095135, 37.312115, 42.490063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796478, 37.046600, 42.507595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015116, -0.048937, -0.998687,
		0.665059, -0.746320, 0.026504,
		-0.746638, -0.663786, 0.043827,
		38.572487, 36.847466, 42.520744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250347, 36.870808, 41.993870>,  <39.095135, 37.312115, 42.490063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250347, 36.870808, 41.993870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.868576, 36.765312, 42.049744>,  <38.639515, 36.702015, 42.083267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.868576, 36.765312, 42.049744>,  <39.250347, 36.870808, 41.993870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868576, 36.765312, 42.049744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076825, -0.235159, -0.968916,
		0.288389, -0.935490, 0.204180,
		-0.954427, -0.263739, 0.139687,
		38.582249, 36.686192, 42.091648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961159, 36.749985, 41.991665>,  <39.250347, 36.870808, 41.993870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961159, 36.749985, 41.991665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.960709, 37.113049, 41.823788>,  <39.960438, 37.330887, 41.723061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.960709, 37.113049, 41.823788>,  <39.961159, 36.749985, 41.991665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960709, 37.113049, 41.823788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164100, 0.414176, 0.895282,
		0.986443, -0.067861, -0.149416,
		-0.001130, 0.907664, -0.419697,
		39.960369, 37.385349, 41.697880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588615, 37.135330, 42.195824>,  <39.961159, 36.749985, 41.991665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588615, 37.135330, 42.195824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.320984, 37.418617, 42.105705>,  <40.160404, 37.588589, 42.051636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.320984, 37.418617, 42.105705>,  <40.588615, 37.135330, 42.195824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320984, 37.418617, 42.105705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300101, 0.534796, 0.789894,
		0.679904, 0.460892, -0.570359,
		-0.669081, 0.708218, -0.225296,
		40.120258, 37.631081, 42.038116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845940, 37.679630, 42.545479>,  <40.588615, 37.135330, 42.195824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845940, 37.679630, 42.545479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.487904, 37.834293, 42.456661>,  <40.273083, 37.927094, 42.403370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.487904, 37.834293, 42.456661>,  <40.845940, 37.679630, 42.545479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487904, 37.834293, 42.456661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120412, 0.689108, 0.714585,
		0.429316, 0.612882, -0.663373,
		-0.895091, 0.386661, -0.222046,
		40.219376, 37.950291, 42.390049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916527, 38.343616, 42.451344>,  <40.845940, 37.679630, 42.545479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916527, 38.343616, 42.451344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.530067, 38.317127, 42.551079>,  <40.298191, 38.301235, 42.610920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.530067, 38.317127, 42.551079>,  <40.916527, 38.343616, 42.451344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530067, 38.317127, 42.551079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104747, 0.782546, 0.613718,
		-0.235762, 0.619061, -0.749119,
		-0.966149, -0.066224, 0.249339,
		40.240223, 38.297260, 42.625881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838223, 38.948437, 42.511589>,  <40.916527, 38.343616, 42.451344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838223, 38.948437, 42.511589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.528328, 38.798416, 42.715202>,  <40.342392, 38.708405, 42.837368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.528328, 38.798416, 42.715202>,  <40.838223, 38.948437, 42.511589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528328, 38.798416, 42.715202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098199, 0.723931, 0.682847,
		-0.624607, 0.579016, -0.524029,
		-0.774741, -0.375052, 0.509031,
		40.295906, 38.685902, 42.867912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377769, 39.521336, 42.670395>,  <40.838223, 38.948437, 42.511589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377769, 39.521336, 42.670395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.308346, 39.229198, 42.934662>,  <40.266693, 39.053917, 43.093220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.308346, 39.229198, 42.934662>,  <40.377769, 39.521336, 42.670395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308346, 39.229198, 42.934662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028560, 0.674297, 0.737908,
		-0.984409, 0.109202, -0.137889,
		-0.173559, -0.730341, 0.660666,
		40.256279, 39.010098, 43.132862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900013, 39.843273, 43.069942>,  <40.377769, 39.521336, 42.670395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900013, 39.843273, 43.069942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.072262, 39.543953, 43.271778>,  <40.175610, 39.364361, 43.392879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.072262, 39.543953, 43.271778>,  <39.900013, 39.843273, 43.069942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072262, 39.543953, 43.271778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129621, 0.604560, 0.785943,
		-0.893177, -0.273038, 0.357331,
		0.430620, -0.748303, 0.504587,
		40.201447, 39.319462, 43.423153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583530, 39.750862, 43.741188>,  <39.900013, 39.843273, 43.069942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583530, 39.750862, 43.741188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.929119, 39.561607, 43.810120>,  <40.136471, 39.448055, 43.851479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.929119, 39.561607, 43.810120>,  <39.583530, 39.750862, 43.741188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929119, 39.561607, 43.810120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036858, 0.400737, 0.915452,
		-0.502197, -0.784569, 0.363663,
		0.863967, -0.473141, 0.172331,
		40.188309, 39.419666, 43.861820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500862, 39.342896, 44.321388>,  <39.583530, 39.750862, 43.741188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500862, 39.342896, 44.321388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.895290, 39.406948, 44.303421>,  <40.131947, 39.445381, 44.292641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.895290, 39.406948, 44.303421>,  <39.500862, 39.342896, 44.321388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895290, 39.406948, 44.303421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013535, 0.191900, 0.981321,
		0.165750, -0.968264, 0.187061,
		0.986075, 0.160122, -0.044913,
		40.191113, 39.454987, 44.289948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768208, 39.075417, 44.946526>,  <39.500862, 39.342896, 44.321388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768208, 39.075417, 44.946526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.061337, 39.317947, 44.823017>,  <40.237213, 39.463467, 44.748913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.061337, 39.317947, 44.823017>,  <39.768208, 39.075417, 44.946526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061337, 39.317947, 44.823017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124633, 0.326502, 0.936943,
		0.668907, -0.725097, 0.163701,
		0.732823, 0.606325, -0.308771,
		40.281185, 39.499844, 44.730385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394043, 38.859318, 45.334908>,  <39.768208, 39.075417, 44.946526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394043, 38.859318, 45.334908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.456188, 39.230957, 45.200665>,  <40.493477, 39.453941, 45.120117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.456188, 39.230957, 45.200665>,  <40.394043, 38.859318, 45.334908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456188, 39.230957, 45.200665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088233, 0.325323, 0.941478,
		0.983909, -0.175886, -0.031433,
		0.155367, 0.929101, -0.335607,
		40.502800, 39.509686, 45.099983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918129, 39.140636, 45.703571>,  <40.394043, 38.859318, 45.334908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918129, 39.140636, 45.703571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.791813, 39.484062, 45.542007>,  <40.716022, 39.690117, 45.445068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.791813, 39.484062, 45.542007>,  <40.918129, 39.140636, 45.703571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791813, 39.484062, 45.542007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204826, 0.477345, 0.854510,
		0.926456, 0.187116, -0.326598,
		-0.315793, 0.858562, -0.403913,
		40.697075, 39.741631, 45.420834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373001, 39.674084, 45.821472>,  <40.918129, 39.140636, 45.703571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373001, 39.674084, 45.821472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.021393, 39.860550, 45.781441>,  <40.810429, 39.972431, 45.757423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.021393, 39.860550, 45.781441>,  <41.373001, 39.674084, 45.821472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021393, 39.860550, 45.781441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141400, 0.455340, 0.879017,
		0.455340, 0.758520, -0.466168,
		-0.879017, 0.466168, -0.100080,
		40.757687, 40.000401, 45.751415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407780, 40.276890, 46.211559>,  <41.373001, 39.674084, 45.821472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407780, 40.276890, 46.211559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.016693, 40.252384, 46.131248>,  <40.782040, 40.237679, 46.083061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.016693, 40.252384, 46.131248>,  <41.407780, 40.276890, 46.211559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016693, 40.252384, 46.131248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196763, 0.600703, 0.774881,
		0.073133, 0.797121, -0.599374,
		-0.977720, -0.061266, -0.200775,
		40.723377, 40.234005, 46.071014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.652920, 39.747070, 45.170544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.037617, 39.789062, 45.271755>,  <33.268436, 39.814259, 45.332481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.037617, 39.789062, 45.271755>,  <32.652920, 39.747070, 45.170544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037617, 39.789062, 45.271755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272339, -0.266535, -0.924549,
		-0.029619, 0.958091, -0.284930,
		0.961745, 0.104982, 0.253031,
		33.326141, 39.820557, 45.347664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001175, 40.126621, 44.637966>,  <32.652920, 39.747070, 45.170544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001175, 40.126621, 44.637966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.303211, 39.929752, 44.811222>,  <33.484432, 39.811630, 44.915176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.303211, 39.929752, 44.811222>,  <33.001175, 40.126621, 44.637966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303211, 39.929752, 44.811222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406254, -0.167299, -0.898314,
		0.514586, 0.854272, 0.073620,
		0.755089, -0.492168, 0.433142,
		33.529739, 39.782101, 44.941166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560028, 40.362881, 44.263992>,  <33.001175, 40.126621, 44.637966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560028, 40.362881, 44.263992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687653, 40.047314, 44.474060>,  <33.764229, 39.857971, 44.600101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687653, 40.047314, 44.474060>,  <33.560028, 40.362881, 44.263992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687653, 40.047314, 44.474060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627070, -0.239762, -0.741146,
		0.710622, 0.565789, 0.418210,
		0.319061, -0.788922, 0.525169,
		33.783371, 39.810638, 44.631611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298279, 40.394989, 44.326759>,  <33.560028, 40.362881, 44.263992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298279, 40.394989, 44.326759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.172218, 40.016121, 44.350559>,  <34.096581, 39.788799, 44.364838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.172218, 40.016121, 44.350559>,  <34.298279, 40.394989, 44.326759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172218, 40.016121, 44.350559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615197, -0.251624, -0.747140,
		0.722643, -0.198860, 0.661999,
		-0.315151, -0.947175, 0.059496,
		34.077675, 39.731968, 44.368408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931805, 40.025524, 44.215382>,  <34.298279, 40.394989, 44.326759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931805, 40.025524, 44.215382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630295, 39.771156, 44.149132>,  <34.449390, 39.618534, 44.109383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.630295, 39.771156, 44.149132>,  <34.931805, 40.025524, 44.215382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630295, 39.771156, 44.149132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496632, -0.386224, -0.777295,
		0.430330, -0.668158, 0.606944,
		-0.753772, -0.635921, -0.165625,
		34.404163, 39.580379, 44.099445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280338, 39.468048, 44.027733>,  <34.931805, 40.025524, 44.215382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280338, 39.468048, 44.027733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.906204, 39.405083, 43.901005>,  <34.681725, 39.367302, 43.824970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.906204, 39.405083, 43.901005>,  <35.280338, 39.468048, 44.027733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906204, 39.405083, 43.901005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352777, -0.482064, -0.801974,
		-0.026484, -0.861879, 0.506422,
		-0.935332, -0.157415, -0.316818,
		34.625603, 39.357857, 43.805958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272465, 38.787731, 43.768612>,  <35.280338, 39.468048, 44.027733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272465, 38.787731, 43.768612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.943020, 38.953999, 43.614269>,  <34.745354, 39.053761, 43.521664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.943020, 38.953999, 43.614269>,  <35.272465, 38.787731, 43.768612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943020, 38.953999, 43.614269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289111, -0.277604, -0.916161,
		-0.487936, -0.866115, 0.108463,
		-0.823610, 0.415670, -0.385856,
		34.695938, 39.078701, 43.498512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839169, 38.247086, 43.437038>,  <35.272465, 38.787731, 43.768612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839169, 38.247086, 43.437038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.755901, 38.606438, 43.282337>,  <34.705940, 38.822048, 43.189518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.755901, 38.606438, 43.282337>,  <34.839169, 38.247086, 43.437038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755901, 38.606438, 43.282337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253447, -0.332364, -0.908459,
		-0.944685, -0.287136, -0.158504,
		-0.208170, 0.898380, -0.386753,
		34.693451, 38.875950, 43.166309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407810, 38.163242, 42.825336>,  <34.839169, 38.247086, 43.437038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407810, 38.163242, 42.825336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.526634, 38.542820, 42.782887>,  <34.597927, 38.770565, 42.757416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.526634, 38.542820, 42.782887>,  <34.407810, 38.163242, 42.825336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526634, 38.542820, 42.782887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027647, -0.119643, -0.992432,
		-0.954460, 0.291873, -0.061777,
		0.297056, 0.948944, -0.106125,
		34.615749, 38.827503, 42.751049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865349, 38.452049, 42.316555>,  <34.407810, 38.163242, 42.825336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865349, 38.452049, 42.316555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.204147, 38.664574, 42.309494>,  <34.407425, 38.792088, 42.305256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.204147, 38.664574, 42.309494>,  <33.865349, 38.452049, 42.316555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204147, 38.664574, 42.309494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075501, -0.153105, -0.985322,
		-0.526212, 0.833229, -0.169793,
		0.846995, 0.531308, -0.017656,
		34.458244, 38.823967, 42.304195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840961, 38.601315, 41.651165>,  <33.865349, 38.452049, 42.316555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840961, 38.601315, 41.651165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.214088, 38.687996, 41.766335>,  <34.437965, 38.740005, 41.835434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.214088, 38.687996, 41.766335>,  <33.840961, 38.601315, 41.651165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214088, 38.687996, 41.766335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281626, 0.060083, -0.957641,
		-0.224821, 0.974387, -0.004982,
		0.932814, 0.216701, 0.287920,
		34.493935, 38.753006, 41.852711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944973, 39.244907, 41.343441>,  <33.840961, 38.601315, 41.651165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944973, 39.244907, 41.343441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.295033, 39.063656, 41.411301>,  <34.505070, 38.954903, 41.452019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.295033, 39.063656, 41.411301>,  <33.944973, 39.244907, 41.343441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295033, 39.063656, 41.411301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186752, -0.007123, -0.982381,
		0.446356, 0.891416, 0.078390,
		0.875152, -0.453131, 0.169653,
		34.557579, 38.927715, 41.462196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417667, 39.641365, 40.982857>,  <33.944973, 39.244907, 41.343441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417667, 39.641365, 40.982857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.627773, 39.304222, 41.029667>,  <34.753838, 39.101936, 41.057755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.627773, 39.304222, 41.029667>,  <34.417667, 39.641365, 40.982857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627773, 39.304222, 41.029667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208037, -0.006156, -0.978102,
		0.825117, 0.538107, 0.172112,
		0.525263, -0.842854, 0.117026,
		34.785351, 39.051365, 41.064774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106987, 39.804726, 40.750370>,  <34.417667, 39.641365, 40.982857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106987, 39.804726, 40.750370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.053486, 39.408379, 40.743454>,  <35.021385, 39.170570, 40.739304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.053486, 39.408379, 40.743454>,  <35.106987, 39.804726, 40.750370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053486, 39.408379, 40.743454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243822, -0.015997, -0.969688,
		0.960552, -0.133914, 0.243734,
		-0.133754, -0.990864, -0.017286,
		35.013359, 39.111118, 40.738270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642075, 40.360542, 40.747028>,  <35.106987, 39.804726, 40.750370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642075, 40.360542, 40.747028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.762909, 40.707256, 40.588322>,  <35.835411, 40.915283, 40.493099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.762909, 40.707256, 40.588322>,  <35.642075, 40.360542, 40.747028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762909, 40.707256, 40.588322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318390, 0.484054, 0.815058,
		0.898538, -0.119892, 0.422203,
		0.302088, 0.866786, -0.396768,
		35.853535, 40.967293, 40.469292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053585, 40.680088, 41.257732>,  <35.642075, 40.360542, 40.747028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053585, 40.680088, 41.257732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.926594, 40.988750, 41.037277>,  <35.850399, 41.173950, 40.905006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.926594, 40.988750, 41.037277>,  <36.053585, 40.680088, 41.257732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926594, 40.988750, 41.037277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057068, 0.564601, 0.823388,
		0.946545, 0.292863, -0.135214,
		-0.317482, 0.771658, -0.551134,
		35.831348, 41.220249, 40.871937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455460, 41.171509, 41.572021>,  <36.053585, 40.680088, 41.257732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455460, 41.171509, 41.572021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.211834, 41.406548, 41.358940>,  <36.065659, 41.547569, 41.231091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.211834, 41.406548, 41.358940>,  <36.455460, 41.171509, 41.572021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211834, 41.406548, 41.358940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021272, 0.659308, 0.751572,
		0.792833, 0.469089, -0.389064,
		-0.609067, 0.587595, -0.532700,
		36.029114, 41.582825, 41.199131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789146, 41.855034, 41.399227>,  <36.455460, 41.171509, 41.572021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789146, 41.855034, 41.399227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.392410, 41.897076, 41.428112>,  <36.154369, 41.922298, 41.445442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.392410, 41.897076, 41.428112>,  <36.789146, 41.855034, 41.399227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392410, 41.897076, 41.428112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118206, 0.545291, 0.829870,
		0.047842, 0.831631, -0.553263,
		-0.991836, 0.105102, 0.072216,
		36.094860, 41.928608, 41.449776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687492, 42.499298, 41.633629>,  <36.789146, 41.855034, 41.399227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687492, 42.499298, 41.633629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.338615, 42.316006, 41.702099>,  <36.129288, 42.206032, 41.743179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.338615, 42.316006, 41.702099>,  <36.687492, 42.499298, 41.633629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338615, 42.316006, 41.702099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108646, 0.522674, 0.845582,
		-0.476939, 0.718915, -0.505658,
		-0.872196, -0.458228, 0.171176,
		36.076958, 42.178535, 41.753452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243694, 43.019585, 41.853405>,  <36.687492, 42.499298, 41.633629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243694, 43.019585, 41.853405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.084362, 42.677216, 41.985302>,  <35.988762, 42.471794, 42.064438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.084362, 42.677216, 41.985302>,  <36.243694, 43.019585, 41.853405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084362, 42.677216, 41.985302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207571, 0.434281, 0.876536,
		-0.893446, 0.280709, -0.350653,
		-0.398333, -0.855922, 0.329739,
		35.964863, 42.420441, 42.084225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662525, 43.224812, 42.280869>,  <36.243694, 43.019585, 41.853405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662525, 43.224812, 42.280869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.753105, 42.851063, 42.390900>,  <35.807453, 42.626812, 42.456917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.753105, 42.851063, 42.390900>,  <35.662525, 43.224812, 42.280869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753105, 42.851063, 42.390900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150414, 0.245480, 0.957661,
		-0.962339, -0.258238, -0.084954,
		0.226450, -0.934373, 0.275078,
		35.821041, 42.570751, 42.473423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269566, 43.194534, 42.927834>,  <35.662525, 43.224812, 42.280869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269566, 43.194534, 42.927834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.541348, 42.901054, 42.930016>,  <35.704418, 42.724968, 42.931324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.541348, 42.901054, 42.930016>,  <35.269566, 43.194534, 42.927834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541348, 42.901054, 42.930016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038838, -0.028542, 0.998838,
		-0.732688, -0.678877, -0.047889,
		0.679455, -0.733697, 0.005454,
		35.745186, 42.680946, 42.931652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022942, 42.737930, 43.356194>,  <35.269566, 43.194534, 42.927834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022942, 42.737930, 43.356194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403797, 42.616276, 43.368347>,  <35.632313, 42.543282, 43.375641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403797, 42.616276, 43.368347>,  <35.022942, 42.737930, 43.356194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403797, 42.616276, 43.368347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071980, -0.126491, 0.989353,
		-0.297057, -0.944193, -0.142329,
		0.952143, -0.304139, 0.030388,
		35.689442, 42.525036, 43.377464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959343, 42.184856, 43.848782>,  <35.022942, 42.737930, 43.356194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959343, 42.184856, 43.848782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.333233, 42.322113, 43.811832>,  <35.557568, 42.404469, 43.789661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.333233, 42.322113, 43.811832>,  <34.959343, 42.184856, 43.848782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333233, 42.322113, 43.811832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067188, 0.084603, 0.994147,
		0.348951, -0.935465, 0.056026,
		0.934729, 0.343145, -0.092375,
		35.613651, 42.425056, 43.784119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417297, 41.761246, 44.263428>,  <34.959343, 42.184856, 43.848782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417297, 41.761246, 44.263428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.605278, 42.109589, 44.205807>,  <35.718067, 42.318596, 44.171234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.605278, 42.109589, 44.205807>,  <35.417297, 41.761246, 44.263428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605278, 42.109589, 44.205807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218007, 0.043629, 0.974972,
		0.855349, -0.489590, -0.169350,
		0.469948, 0.870861, -0.144052,
		35.746262, 42.370846, 44.162590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952015, 41.671791, 44.709904>,  <35.417297, 41.761246, 44.263428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952015, 41.671791, 44.709904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.954674, 42.063557, 44.629211>,  <35.956268, 42.298618, 44.580795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.954674, 42.063557, 44.629211>,  <35.952015, 41.671791, 44.709904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954674, 42.063557, 44.629211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246781, 0.193891, 0.949476,
		0.969048, -0.056098, -0.240413,
		0.006650, 0.979418, -0.201734,
		35.956669, 42.357384, 44.568691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521774, 41.932007, 45.097305>,  <35.952015, 41.671791, 44.709904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521774, 41.932007, 45.097305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.273380, 42.239109, 45.034138>,  <36.124344, 42.423370, 44.996235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.273380, 42.239109, 45.034138>,  <36.521774, 41.932007, 45.097305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273380, 42.239109, 45.034138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037158, 0.230083, 0.972461,
		0.782944, 0.598012, -0.171406,
		-0.620981, 0.767752, -0.157921,
		36.087086, 42.469433, 44.986763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814354, 42.432503, 45.474880>,  <36.521774, 41.932007, 45.097305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814354, 42.432503, 45.474880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430584, 42.543217, 45.453369>,  <36.200321, 42.609646, 45.440460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430584, 42.543217, 45.453369>,  <36.814354, 42.432503, 45.474880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430584, 42.543217, 45.453369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040445, 0.053669, 0.997739,
		0.279047, 0.959432, -0.040297,
		-0.959425, 0.276787, -0.053780,
		36.142757, 42.626251, 45.437237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326660, 42.977997, 45.363991>,  <36.814354, 42.432503, 45.474880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326660, 42.977997, 45.363991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.691307, 43.047771, 45.512867>,  <37.910095, 43.089638, 45.602192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.691307, 43.047771, 45.512867>,  <37.326660, 42.977997, 45.363991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691307, 43.047771, 45.512867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372950, 0.029675, -0.927377,
		-0.172814, 0.984221, -0.038005,
		0.911616, 0.174438, 0.372193,
		37.964790, 43.100101, 45.624523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639698, 43.556503, 45.025806>,  <37.326660, 42.977997, 45.363991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639698, 43.556503, 45.025806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.961319, 43.353954, 45.150448>,  <38.154289, 43.232426, 45.225231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.961319, 43.353954, 45.150448>,  <37.639698, 43.556503, 45.025806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961319, 43.353954, 45.150448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423912, 0.120753, -0.897617,
		0.416898, 0.853821, 0.311747,
		0.804049, -0.506368, 0.311603,
		38.202534, 43.202045, 45.243927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314114, 43.998314, 44.877621>,  <37.639698, 43.556503, 45.025806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314114, 43.998314, 44.877621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.445538, 43.623081, 44.921543>,  <38.524391, 43.397942, 44.947895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.445538, 43.623081, 44.921543>,  <38.314114, 43.998314, 44.877621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445538, 43.623081, 44.921543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633870, 0.132822, -0.761949,
		0.700184, 0.319948, 0.638260,
		0.328559, -0.938079, 0.109806,
		38.544106, 43.341656, 44.954483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036133, 44.118576, 44.807522>,  <38.314114, 43.998314, 44.877621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036133, 44.118576, 44.807522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.954159, 43.733730, 44.735600>,  <38.904976, 43.502823, 44.692444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.954159, 43.733730, 44.735600>,  <39.036133, 44.118576, 44.807522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954159, 43.733730, 44.735600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498431, 0.055521, -0.865149,
		0.842359, -0.266919, 0.468172,
		-0.204931, -0.962118, -0.179809,
		38.892681, 43.445095, 44.681656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748398, 43.797504, 44.650333>,  <39.036133, 44.118576, 44.807522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748398, 43.797504, 44.650333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.449753, 43.585682, 44.489265>,  <39.270565, 43.458588, 44.392624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.449753, 43.585682, 44.489265>,  <39.748398, 43.797504, 44.650333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449753, 43.585682, 44.489265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525083, -0.097437, -0.845455,
		0.408480, -0.842661, 0.350808,
		-0.746614, -0.529555, -0.402666,
		39.225769, 43.426815, 44.368465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135845, 43.343929, 44.327942>,  <39.748398, 43.797504, 44.650333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135845, 43.343929, 44.327942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.787354, 43.273331, 44.144722>,  <39.578259, 43.230972, 44.034790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.787354, 43.273331, 44.144722>,  <40.135845, 43.343929, 44.327942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787354, 43.273331, 44.144722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475212, -0.069420, -0.877128,
		0.123016, -0.981849, 0.144356,
		-0.871229, -0.176501, -0.458047,
		39.525986, 43.220379, 44.007309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139774, 42.740273, 44.046303>,  <40.135845, 43.343929, 44.327942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139774, 42.740273, 44.046303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.839874, 42.902020, 43.836781>,  <39.659935, 42.999065, 43.711067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.839874, 42.902020, 43.836781>,  <40.139774, 42.740273, 44.046303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839874, 42.902020, 43.836781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505216, -0.161425, -0.847761,
		-0.427361, -0.900239, -0.083264,
		-0.749746, 0.404366, -0.523802,
		39.614952, 43.023331, 43.679642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965965, 42.267502, 43.523525>,  <40.139774, 42.740273, 44.046303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965965, 42.267502, 43.523525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.845558, 42.630234, 43.405510>,  <39.773312, 42.847874, 43.334702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.845558, 42.630234, 43.405510>,  <39.965965, 42.267502, 43.523525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845558, 42.630234, 43.405510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555109, -0.084940, -0.827429,
		-0.775397, -0.412852, -0.477820,
		-0.301019, 0.906829, -0.295040,
		39.755253, 42.902283, 43.316998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407314, 42.607834, 42.986446>,  <39.965965, 42.267502, 43.523525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407314, 42.607834, 42.986446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.470539, 42.951832, 42.792366>,  <40.508472, 43.158230, 42.675919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.470539, 42.951832, 42.792366>,  <40.407314, 42.607834, 42.986446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470539, 42.951832, 42.792366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009965, -0.489963, -0.871686,
		-0.987379, 0.142615, -0.068874,
		0.158061, 0.859999, -0.485200,
		40.517956, 43.209831, 42.646805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935669, 42.585205, 42.334965>,  <40.407314, 42.607834, 42.986446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935669, 42.585205, 42.334965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183220, 42.892628, 42.270077>,  <40.331749, 43.077080, 42.231144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.183220, 42.892628, 42.270077>,  <39.935669, 42.585205, 42.334965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183220, 42.892628, 42.270077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199736, -0.353710, -0.913781,
		-0.759671, 0.533114, -0.372410,
		0.618874, 0.768557, -0.162221,
		40.368881, 43.123196, 42.221409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790668, 42.758064, 41.703979>,  <39.935669, 42.585205, 42.334965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790668, 42.758064, 41.703979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.150219, 42.924213, 41.759804>,  <40.365952, 43.023903, 41.793301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.150219, 42.924213, 41.759804>,  <39.790668, 42.758064, 41.703979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150219, 42.924213, 41.759804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231589, -0.179943, -0.956027,
		-0.371995, 0.891675, -0.257943,
		0.898880, 0.415374, 0.139564,
		40.419884, 43.048824, 41.801674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900482, 43.261669, 41.131580>,  <39.790668, 42.758064, 41.703979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900482, 43.261669, 41.131580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.249348, 43.132221, 41.278328>,  <40.458668, 43.054554, 41.366375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.249348, 43.132221, 41.278328>,  <39.900482, 43.261669, 41.131580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249348, 43.132221, 41.278328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334533, -0.152643, -0.929940,
		0.356946, 0.933794, -0.024869,
		0.872168, -0.323618, 0.366870,
		40.510998, 43.035137, 41.388390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402210, 43.725594, 40.871353>,  <39.900482, 43.261669, 41.131580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402210, 43.725594, 40.871353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.563694, 43.371201, 40.962605>,  <40.660583, 43.158566, 41.017357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.563694, 43.371201, 40.962605>,  <40.402210, 43.725594, 40.871353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563694, 43.371201, 40.962605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372215, -0.068726, -0.925598,
		0.835746, 0.458590, 0.302032,
		0.403712, -0.885987, 0.228132,
		40.684807, 43.105404, 41.031044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043812, 43.712132, 40.474781>,  <40.402210, 43.725594, 40.871353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043812, 43.712132, 40.474781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.957676, 43.338200, 40.587719>,  <40.905994, 43.113842, 40.655483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.957676, 43.338200, 40.587719>,  <41.043812, 43.712132, 40.474781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957676, 43.338200, 40.587719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233991, -0.330103, -0.914484,
		0.948091, -0.130860, 0.289826,
		-0.215341, -0.934830, 0.282348,
		40.893074, 43.057751, 40.672424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.894537, 32.159576, 41.165970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.785444, 32.232540, 41.543827>,  <29.719990, 32.276318, 41.770542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.785444, 32.232540, 41.543827>,  <29.894537, 32.159576, 41.165970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785444, 32.232540, 41.543827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670033, 0.668592, -0.322553,
		-0.690416, -0.720910, -0.060123,
		-0.272730, 0.182411, 0.944640,
		29.703625, 32.287262, 41.827221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206234, 31.902264, 41.360435>,  <29.894537, 32.159576, 41.165970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206234, 31.902264, 41.360435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.326000, 32.241425, 41.535439>,  <29.397860, 32.444920, 41.640438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.326000, 32.241425, 41.535439>,  <29.206234, 31.902264, 41.360435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326000, 32.241425, 41.535439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544299, 0.528401, -0.651560,
		-0.783637, -0.043045, 0.619725,
		0.299417, 0.847903, 0.437504,
		29.415825, 32.495796, 41.666691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638670, 32.368065, 41.423801>,  <29.206234, 31.902264, 41.360435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638670, 32.368065, 41.423801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.940887, 32.621136, 41.491772>,  <29.122217, 32.772976, 41.532555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.940887, 32.621136, 41.491772>,  <28.638670, 32.368065, 41.423801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.940887, 32.621136, 41.491772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512340, 0.732320, -0.448569,
		-0.408241, 0.251852, 0.877445,
		0.755544, 0.632675, 0.169929,
		29.167551, 32.810940, 41.542751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361444, 33.095097, 41.763512>,  <28.638670, 32.368065, 41.423801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361444, 33.095097, 41.763512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.715385, 33.185757, 41.600704>,  <28.927750, 33.240154, 41.503017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.715385, 33.185757, 41.600704>,  <28.361444, 33.095097, 41.763512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715385, 33.185757, 41.600704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412205, 0.788003, -0.457317,
		0.217081, 0.572433, 0.790693,
		0.884852, 0.226652, -0.407020,
		28.980841, 33.253754, 41.478600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389627, 33.784763, 41.760643>,  <28.361444, 33.095097, 41.763512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389627, 33.784763, 41.760643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.687824, 33.698822, 41.508270>,  <28.866743, 33.647259, 41.356846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.687824, 33.698822, 41.508270>,  <28.389627, 33.784763, 41.760643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687824, 33.698822, 41.508270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297537, 0.739789, -0.603477,
		0.596416, 0.637614, 0.487581,
		0.745493, -0.214850, -0.630936,
		28.911472, 33.634369, 41.318989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758194, 34.456516, 41.662891>,  <28.389627, 33.784763, 41.760643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758194, 34.456516, 41.662891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.818920, 34.228184, 41.340130>,  <28.855356, 34.091183, 41.146473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.818920, 34.228184, 41.340130>,  <28.758194, 34.456516, 41.662891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818920, 34.228184, 41.340130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174015, 0.788183, -0.590327,
		0.972970, 0.230036, 0.020326,
		0.151817, -0.570833, -0.806908,
		28.864466, 34.056934, 41.098057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147339, 34.883327, 41.290863>,  <28.758194, 34.456516, 41.662891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147339, 34.883327, 41.290863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996344, 34.612823, 41.037827>,  <28.905746, 34.450520, 40.886005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.996344, 34.612823, 41.037827>,  <29.147339, 34.883327, 41.290863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996344, 34.612823, 41.037827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113246, 0.711721, -0.693273,
		0.919064, -0.190063, -0.345249,
		-0.377486, -0.676261, -0.632594,
		28.883097, 34.409946, 40.848049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546829, 35.022850, 40.652382>,  <29.147339, 34.883327, 41.290863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546829, 35.022850, 40.652382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218504, 34.807957, 40.574772>,  <29.021509, 34.679020, 40.528206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.218504, 34.807957, 40.574772>,  <29.546829, 35.022850, 40.652382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218504, 34.807957, 40.574772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233525, 0.625623, -0.744353,
		0.521278, -0.565665, -0.638978,
		-0.820814, -0.537232, -0.194026,
		28.972260, 34.646786, 40.516563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457611, 35.064117, 39.854473>,  <29.546829, 35.022850, 40.652382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457611, 35.064117, 39.854473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102423, 34.972454, 40.013969>,  <28.889309, 34.917458, 40.109669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102423, 34.972454, 40.013969>,  <29.457611, 35.064117, 39.854473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102423, 34.972454, 40.013969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457724, 0.524610, -0.717826,
		-0.044693, -0.819923, -0.570727,
		-0.887971, -0.229154, 0.398744,
		28.836031, 34.903709, 40.133595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989344, 35.073635, 39.349831>,  <29.457611, 35.064117, 39.854473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989344, 35.073635, 39.349831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696932, 35.042671, 39.621006>,  <28.521484, 35.024094, 39.783710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.696932, 35.042671, 39.621006>,  <28.989344, 35.073635, 39.349831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696932, 35.042671, 39.621006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633576, 0.445884, -0.632273,
		-0.253338, -0.891737, -0.375000,
		-0.731027, -0.077412, 0.677943,
		28.477623, 35.019447, 39.824390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462648, 34.743027, 38.971848>,  <28.989344, 35.073635, 39.349831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462648, 34.743027, 38.971848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.318340, 34.965221, 39.271523>,  <28.231756, 35.098537, 39.451328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.318340, 34.965221, 39.271523>,  <28.462648, 34.743027, 38.971848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318340, 34.965221, 39.271523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585765, 0.490128, -0.645487,
		-0.725757, -0.671718, 0.148563,
		-0.360771, 0.555490, 0.749183,
		28.210110, 35.131870, 39.496277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802067, 34.761494, 38.770252>,  <28.462648, 34.743027, 38.971848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802067, 34.761494, 38.770252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.859772, 35.081669, 39.002975>,  <27.894394, 35.273773, 39.142609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.859772, 35.081669, 39.002975>,  <27.802067, 34.761494, 38.770252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859772, 35.081669, 39.002975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439733, 0.578567, -0.686947,
		-0.886467, -0.156739, 0.435441,
		0.144261, 0.800433, 0.581804,
		27.903049, 35.321800, 39.177517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294762, 35.200035, 38.580112>,  <27.802067, 34.761494, 38.770252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294762, 35.200035, 38.580112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.551619, 35.443806, 38.766129>,  <27.705732, 35.590069, 38.877739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.551619, 35.443806, 38.766129>,  <27.294762, 35.200035, 38.580112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551619, 35.443806, 38.766129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255875, 0.742236, -0.619366,
		-0.722622, 0.278729, 0.632556,
		0.642141, 0.609423, 0.465036,
		27.744261, 35.626633, 38.905640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925795, 35.826351, 38.782822>,  <27.294762, 35.200035, 38.580112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925795, 35.826351, 38.782822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.311802, 35.926262, 38.750935>,  <27.543406, 35.986210, 38.731804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.311802, 35.926262, 38.750935>,  <26.925795, 35.826351, 38.782822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.311802, 35.926262, 38.750935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234882, 0.688482, -0.686165,
		-0.116504, 0.680885, 0.723064,
		0.965017, 0.249776, -0.079717,
		27.601307, 36.001194, 38.727020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862434, 36.452171, 38.873703>,  <26.925795, 35.826351, 38.782822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862434, 36.452171, 38.873703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.229675, 36.425041, 38.717503>,  <27.450020, 36.408764, 38.623783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.229675, 36.425041, 38.717503>,  <26.862434, 36.452171, 38.873703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229675, 36.425041, 38.717503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222616, 0.726914, -0.649644,
		0.327925, 0.683370, 0.652281,
		0.918100, -0.067826, -0.390502,
		27.505106, 36.404694, 38.600353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164873, 37.102070, 38.879375>,  <26.862434, 36.452171, 38.873703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164873, 37.102070, 38.879375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.354530, 36.905357, 38.587257>,  <27.468325, 36.787331, 38.411987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.354530, 36.905357, 38.587257>,  <27.164873, 37.102070, 38.879375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354530, 36.905357, 38.587257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217313, 0.738432, -0.638352,
		0.853207, 0.461374, 0.243253,
		0.474145, -0.491785, -0.730298,
		27.496775, 36.757820, 38.368168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762022, 37.536152, 38.726768>,  <27.164873, 37.102070, 38.879375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762022, 37.536152, 38.726768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.684624, 37.312675, 38.404171>,  <27.638184, 37.178589, 38.210613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.684624, 37.312675, 38.404171>,  <27.762022, 37.536152, 38.726768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684624, 37.312675, 38.404171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173456, 0.828558, -0.532357,
		0.965646, 0.036882, -0.257232,
		-0.193497, -0.558686, -0.806491,
		27.626574, 37.145069, 38.162224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179413, 37.782005, 38.199635>,  <27.762022, 37.536152, 38.726768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179413, 37.782005, 38.199635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.922176, 37.558670, 37.989994>,  <27.767834, 37.424667, 37.864208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.922176, 37.558670, 37.989994>,  <28.179413, 37.782005, 38.199635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922176, 37.558670, 37.989994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183210, 0.776701, -0.602635,
		0.743546, -0.291532, -0.601788,
		-0.643097, -0.558340, -0.524102,
		27.729248, 37.391167, 37.832764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453377, 37.801968, 37.395664>,  <28.179413, 37.782005, 38.199635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453377, 37.801968, 37.395664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.065786, 37.703152, 37.398621>,  <27.833231, 37.643864, 37.400394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.065786, 37.703152, 37.398621>,  <28.453377, 37.801968, 37.395664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.065786, 37.703152, 37.398621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176561, 0.671004, -0.720125,
		0.172942, -0.699089, -0.693805,
		-0.968978, -0.247039, 0.007388,
		27.775093, 37.629040, 37.400837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170925, 38.188026, 37.167675>,  <28.453377, 37.801968, 37.395664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170925, 38.188026, 37.167675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.488504, 38.379948, 37.317039>,  <29.679052, 38.495102, 37.406658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.488504, 38.379948, 37.317039>,  <29.170925, 38.188026, 37.167675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488504, 38.379948, 37.317039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307038, -0.213683, 0.927398,
		0.524762, -0.850956, -0.022335,
		0.793948, 0.479806, 0.373408,
		29.726688, 38.523888, 37.429062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321840, 37.748878, 37.656689>,  <29.170925, 38.188026, 37.167675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321840, 37.748878, 37.656689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.499826, 38.077530, 37.799202>,  <29.606619, 38.274719, 37.884708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.499826, 38.077530, 37.799202>,  <29.321840, 37.748878, 37.656689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499826, 38.077530, 37.799202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069844, -0.364788, 0.928467,
		0.892821, -0.438019, -0.104932,
		0.444964, 0.821626, 0.356283,
		29.633316, 38.324017, 37.906086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850706, 37.492569, 38.071705>,  <29.321840, 37.748878, 37.656689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850706, 37.492569, 38.071705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.796883, 37.865395, 38.206253>,  <29.764587, 38.089092, 38.286983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.796883, 37.865395, 38.206253>,  <29.850706, 37.492569, 38.071705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796883, 37.865395, 38.206253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014629, -0.341290, 0.939844,
		0.990797, 0.121545, 0.059560,
		-0.134561, 0.932066, 0.336372,
		29.756514, 38.145016, 38.307163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365978, 37.618393, 38.543293>,  <29.850706, 37.492569, 38.071705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365978, 37.618393, 38.543293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.073748, 37.878105, 38.627853>,  <29.898409, 38.033932, 38.678589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.073748, 37.878105, 38.627853>,  <30.365978, 37.618393, 38.543293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073748, 37.878105, 38.627853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091806, -0.400187, 0.911824,
		0.676631, 0.646749, 0.351975,
		-0.730577, 0.649282, 0.211403,
		29.854574, 38.072891, 38.691273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613686, 37.918488, 39.169193>,  <30.365978, 37.618393, 38.543293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613686, 37.918488, 39.169193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.230883, 38.034477, 39.166336>,  <30.001202, 38.104073, 39.164623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.230883, 38.034477, 39.166336>,  <30.613686, 37.918488, 39.169193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230883, 38.034477, 39.166336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063028, -0.183845, 0.980933,
		0.283135, 0.939209, 0.194217,
		-0.957007, 0.289977, -0.007143,
		29.943781, 38.121471, 39.164192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526031, 38.410751, 39.737404>,  <30.613686, 37.918488, 39.169193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526031, 38.410751, 39.737404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.160393, 38.269817, 39.657112>,  <29.941010, 38.185257, 39.608936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.160393, 38.269817, 39.657112>,  <30.526031, 38.410751, 39.737404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160393, 38.269817, 39.657112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077258, -0.334628, 0.939178,
		-0.398072, 0.874006, 0.278661,
		-0.914095, -0.352332, -0.200730,
		29.886164, 38.164120, 39.596893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266375, 38.426979, 40.322136>,  <30.526031, 38.410751, 39.737404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266375, 38.426979, 40.322136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.987165, 38.189545, 40.161926>,  <29.819639, 38.047085, 40.065800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.987165, 38.189545, 40.161926>,  <30.266375, 38.426979, 40.322136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987165, 38.189545, 40.161926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205767, -0.369470, 0.906174,
		-0.685873, 0.714946, 0.135759,
		-0.698024, -0.593586, -0.400521,
		29.777758, 38.011467, 40.041771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568317, 38.639805, 40.628326>,  <30.266375, 38.426979, 40.322136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568317, 38.639805, 40.628326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.615755, 38.260040, 40.512016>,  <29.644218, 38.032181, 40.442230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.615755, 38.260040, 40.512016>,  <29.568317, 38.639805, 40.628326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615755, 38.260040, 40.512016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049073, -0.298088, 0.953276,
		-0.991729, -0.098784, -0.081942,
		0.118594, -0.949413, -0.290775,
		29.651333, 37.975216, 40.424786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282778, 38.283588, 41.164505>,  <29.568317, 38.639805, 40.628326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282778, 38.283588, 41.164505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.487265, 37.991589, 40.983067>,  <29.609957, 37.816387, 40.874203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.487265, 37.991589, 40.983067>,  <29.282778, 38.283588, 41.164505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487265, 37.991589, 40.983067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071553, -0.489797, 0.868895,
		-0.856466, -0.476652, -0.198161,
		0.511220, -0.730001, -0.453600,
		29.640631, 37.772587, 40.846985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931414, 37.587181, 41.397270>,  <29.282778, 38.283588, 41.164505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931414, 37.587181, 41.397270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301359, 37.537315, 41.253555>,  <29.523327, 37.507397, 41.167328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.301359, 37.537315, 41.253555>,  <28.931414, 37.587181, 41.397270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301359, 37.537315, 41.253555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177369, -0.694303, 0.697484,
		-0.336400, -0.708804, -0.620026,
		0.924865, -0.124660, -0.359283,
		29.578819, 37.499916, 41.145771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978369, 36.929840, 41.350624>,  <28.931414, 37.587181, 41.397270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978369, 36.929840, 41.350624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.355024, 37.064114, 41.360683>,  <29.581018, 37.144676, 41.366718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.355024, 37.064114, 41.360683>,  <28.978369, 36.929840, 41.350624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355024, 37.064114, 41.360683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187835, -0.585958, 0.788271,
		0.279340, -0.737544, -0.614815,
		0.941641, 0.335680, 0.025145,
		29.637516, 37.164818, 41.368225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379364, 36.409222, 41.461361>,  <28.978369, 36.929840, 41.350624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379364, 36.409222, 41.461361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621075, 36.711864, 41.561279>,  <29.766102, 36.893452, 41.621231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.621075, 36.711864, 41.561279>,  <29.379364, 36.409222, 41.461361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621075, 36.711864, 41.561279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388904, -0.553702, 0.736321,
		0.695416, -0.347795, -0.628836,
		0.604276, 0.756606, 0.249794,
		29.802357, 36.938847, 41.636219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000006, 36.097054, 41.417854>,  <29.379364, 36.409222, 41.461361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000006, 36.097054, 41.417854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.014593, 36.424599, 41.646988>,  <30.023346, 36.621124, 41.784466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.014593, 36.424599, 41.646988>,  <30.000006, 36.097054, 41.417854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014593, 36.424599, 41.646988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515739, -0.506399, 0.691067,
		0.855969, 0.270229, -0.440786,
		0.036467, 0.818863, 0.572829,
		30.025534, 36.670258, 41.818836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725403, 36.175426, 41.662312>,  <30.000006, 36.097054, 41.417854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725403, 36.175426, 41.662312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504515, 36.378010, 41.927204>,  <30.371983, 36.499561, 42.086140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.504515, 36.378010, 41.927204>,  <30.725403, 36.175426, 41.662312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504515, 36.378010, 41.927204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520599, -0.410946, 0.748398,
		0.651177, 0.758036, -0.036731,
		-0.552218, 0.506462, 0.662232,
		30.338850, 36.529949, 42.125874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306553, 36.494621, 42.157745>,  <30.725403, 36.175426, 41.662312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306553, 36.494621, 42.157745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.951538, 36.477673, 42.341259>,  <30.738529, 36.467503, 42.451366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.951538, 36.477673, 42.341259>,  <31.306553, 36.494621, 42.157745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951538, 36.477673, 42.341259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433783, -0.412449, 0.801073,
		0.155284, 0.909995, 0.384443,
		-0.887536, -0.042371, 0.458787,
		30.685278, 36.464962, 42.478893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501947, 36.488110, 42.769272>,  <31.306553, 36.494621, 42.157745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501947, 36.488110, 42.769272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.122471, 36.381107, 42.836712>,  <30.894785, 36.316906, 42.877178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.122471, 36.381107, 42.836712>,  <31.501947, 36.488110, 42.769272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.122471, 36.381107, 42.836712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277858, -0.450728, 0.848315,
		-0.150935, 0.851636, 0.501930,
		-0.948690, -0.267506, 0.168603,
		30.837864, 36.300854, 42.887291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395884, 36.600941, 43.477203>,  <31.501947, 36.488110, 42.769272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395884, 36.600941, 43.477203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.131508, 36.332542, 43.342785>,  <30.972883, 36.171505, 43.262135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.131508, 36.332542, 43.342785>,  <31.395884, 36.600941, 43.477203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131508, 36.332542, 43.342785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118182, -0.535281, 0.836366,
		-0.741076, 0.513071, 0.433087,
		-0.660938, -0.670994, -0.336048,
		30.933226, 36.131245, 43.241970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025284, 36.501820, 44.075523>,  <31.395884, 36.600941, 43.477203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025284, 36.501820, 44.075523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.955093, 36.184052, 43.842937>,  <30.912979, 35.993389, 43.703388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.955093, 36.184052, 43.842937>,  <31.025284, 36.501820, 44.075523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955093, 36.184052, 43.842937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015415, -0.592772, 0.805223,
		-0.984363, 0.132335, 0.116264,
		-0.175478, -0.794424, -0.581463,
		30.902451, 35.945724, 43.668499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785149, 36.061329, 44.611748>,  <31.025284, 36.501820, 44.075523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785149, 36.061329, 44.611748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.809238, 35.838657, 44.280331>,  <30.823692, 35.705055, 44.081482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.809238, 35.838657, 44.280331>,  <30.785149, 36.061329, 44.611748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809238, 35.838657, 44.280331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089637, -0.829711, 0.550949,
		-0.994152, 0.041087, -0.099868,
		0.060225, -0.556680, -0.828542,
		30.827307, 35.671654, 44.031769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153015, 35.552605, 44.640244>,  <30.785149, 36.061329, 44.611748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153015, 35.552605, 44.640244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.449179, 35.428215, 44.401886>,  <30.626877, 35.353580, 44.258869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.449179, 35.428215, 44.401886>,  <30.153015, 35.552605, 44.640244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449179, 35.428215, 44.401886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213970, -0.949467, 0.229628,
		-0.637193, -0.042514, -0.769531,
		0.740407, -0.310973, -0.595897,
		30.671301, 35.334923, 44.223118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887396, 35.019535, 44.207546>,  <30.153015, 35.552605, 44.640244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887396, 35.019535, 44.207546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.280045, 34.964970, 44.260921>,  <30.515635, 34.932232, 44.292946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.280045, 34.964970, 44.260921>,  <29.887396, 35.019535, 44.207546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280045, 34.964970, 44.260921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165976, -0.955394, 0.244283,
		0.094165, -0.261942, -0.960479,
		0.981624, -0.136413, 0.133441,
		30.574532, 34.924046, 44.300953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.063965, 34.347248, 43.984715>,  <29.887396, 35.019535, 44.207546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.063965, 34.347248, 43.984715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.385368, 34.415710, 44.212776>,  <30.578211, 34.456787, 44.349613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.385368, 34.415710, 44.212776>,  <30.063965, 34.347248, 43.984715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385368, 34.415710, 44.212776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009294, -0.954053, 0.299493,
		0.595218, -0.245945, -0.765002,
		0.803511, 0.171154, 0.570155,
		30.626421, 34.467056, 44.383823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671518, 33.863239, 43.767773>,  <30.063965, 34.347248, 43.984715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671518, 33.863239, 43.767773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.694489, 33.961338, 44.154877>,  <30.708271, 34.020195, 44.387138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.694489, 33.961338, 44.154877>,  <30.671518, 33.863239, 43.767773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694489, 33.961338, 44.154877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068985, -0.966067, 0.248908,
		0.995964, -0.081054, -0.038557,
		0.057424, 0.245243, 0.967759,
		30.711716, 34.034912, 44.445206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.167072, 40.986023, 46.184772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.859463, 40.742989, 46.264221>,  <40.674896, 40.597168, 46.311890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.859463, 40.742989, 46.264221>,  <41.167072, 40.986023, 46.184772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859463, 40.742989, 46.264221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180589, 0.504565, 0.844276,
		-0.613186, 0.613396, -0.497744,
		-0.769019, -0.607585, 0.198619,
		40.628757, 40.560715, 46.323807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568027, 41.451954, 46.466381>,  <41.167072, 40.986023, 46.184772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568027, 41.451954, 46.466381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.449715, 41.086525, 46.578026>,  <40.378727, 40.867268, 46.645012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.449715, 41.086525, 46.578026>,  <40.568027, 41.451954, 46.466381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449715, 41.086525, 46.578026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242857, 0.354497, 0.902969,
		-0.923870, 0.199295, -0.326720,
		-0.295778, -0.913572, 0.279109,
		40.360981, 40.812454, 46.661758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945282, 41.529697, 46.876297>,  <40.568027, 41.451954, 46.466381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945282, 41.529697, 46.876297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.080788, 41.167614, 46.978928>,  <40.162090, 40.950363, 47.040508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.080788, 41.167614, 46.978928>,  <39.945282, 41.529697, 46.876297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080788, 41.167614, 46.978928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282743, 0.162156, 0.945390,
		-0.897384, -0.392806, -0.201010,
		0.338760, -0.905212, 0.256579,
		40.182415, 40.896049, 47.055901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464653, 41.228241, 47.249073>,  <39.945282, 41.529697, 46.876297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464653, 41.228241, 47.249073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.788780, 41.018734, 47.354187>,  <39.983257, 40.893028, 47.417255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.788780, 41.018734, 47.354187>,  <39.464653, 41.228241, 47.249073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788780, 41.018734, 47.354187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273469, 0.058616, 0.960093,
		-0.518271, -0.849841, -0.095737,
		0.810315, -0.523770, 0.262784,
		40.031876, 40.861603, 47.433022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161564, 40.981159, 47.731369>,  <39.464653, 41.228241, 47.249073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161564, 40.981159, 47.731369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.535122, 40.892712, 47.843754>,  <39.759258, 40.839642, 47.911186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.535122, 40.892712, 47.843754>,  <39.161564, 40.981159, 47.731369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535122, 40.892712, 47.843754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293871, -0.027122, 0.955460,
		-0.203649, -0.974870, -0.090309,
		0.933899, -0.221118, 0.280962,
		39.815292, 40.826378, 47.928043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127220, 40.366863, 48.184250>,  <39.161564, 40.981159, 47.731369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127220, 40.366863, 48.184250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.478600, 40.545620, 48.251907>,  <39.689426, 40.652874, 48.292500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.478600, 40.545620, 48.251907>,  <39.127220, 40.366863, 48.184250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478600, 40.545620, 48.251907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203403, 0.029425, 0.978653,
		0.432379, -0.894102, 0.116748,
		0.878451, 0.446896, 0.169141,
		39.742134, 40.679688, 48.302650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438950, 40.097748, 48.769173>,  <39.127220, 40.366863, 48.184250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438950, 40.097748, 48.769173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.607758, 40.460155, 48.756325>,  <39.709042, 40.677601, 48.748615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.607758, 40.460155, 48.756325>,  <39.438950, 40.097748, 48.769173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607758, 40.460155, 48.756325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247853, 0.149388, 0.957211,
		0.872049, -0.395999, 0.287604,
		0.422019, 0.906017, -0.032124,
		39.734364, 40.731960, 48.746689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936520, 40.078663, 49.318413>,  <39.438950, 40.097748, 48.769173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936520, 40.078663, 49.318413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858101, 40.461922, 49.234974>,  <39.811050, 40.691879, 49.184910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.858101, 40.461922, 49.234974>,  <39.936520, 40.078663, 49.318413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858101, 40.461922, 49.234974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382473, 0.121165, 0.915988,
		0.902929, 0.259361, 0.342713,
		-0.196047, 0.958150, -0.208602,
		39.799286, 40.749367, 49.172394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089466, 40.411316, 49.956604>,  <39.936520, 40.078663, 49.318413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089466, 40.411316, 49.956604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.863132, 40.671921, 49.754471>,  <39.727333, 40.828285, 49.633190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.863132, 40.671921, 49.754471>,  <40.089466, 40.411316, 49.956604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863132, 40.671921, 49.754471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446172, 0.273453, 0.852147,
		0.693371, 0.707638, 0.135959,
		-0.565833, 0.651515, -0.505333,
		39.693382, 40.867374, 49.602871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221031, 41.067463, 50.275051>,  <40.089466, 40.411316, 49.956604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221031, 41.067463, 50.275051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.884853, 41.147877, 50.073761>,  <39.683147, 41.196125, 49.952988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.884853, 41.147877, 50.073761>,  <40.221031, 41.067463, 50.275051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.884853, 41.147877, 50.073761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410274, 0.370622, 0.833255,
		0.354018, 0.906767, -0.229009,
		-0.840444, 0.201031, -0.503230,
		39.632721, 41.208187, 49.922791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954479, 41.727783, 50.511715>,  <40.221031, 41.067463, 50.275051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954479, 41.727783, 50.511715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.637115, 41.566856, 50.329006>,  <39.446697, 41.470299, 50.219379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.637115, 41.566856, 50.329006>,  <39.954479, 41.727783, 50.511715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637115, 41.566856, 50.329006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591059, 0.329933, 0.736066,
		-0.145429, 0.853981, -0.499566,
		-0.793410, -0.402319, -0.456772,
		39.399094, 41.446159, 50.191975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466125, 42.263538, 50.618225>,  <39.954479, 41.727783, 50.511715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466125, 42.263538, 50.618225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.264694, 41.928478, 50.533611>,  <39.143837, 41.727444, 50.482841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.264694, 41.928478, 50.533611>,  <39.466125, 42.263538, 50.618225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264694, 41.928478, 50.533611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543195, 0.116578, 0.831474,
		-0.671825, 0.533619, -0.513715,
		-0.503578, -0.837652, -0.211539,
		39.113621, 41.677181, 50.470150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838337, 42.400074, 50.732868>,  <39.466125, 42.263538, 50.618225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838337, 42.400074, 50.732868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.818092, 42.004562, 50.789093>,  <38.805946, 41.767258, 50.822826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.818092, 42.004562, 50.789093>,  <38.838337, 42.400074, 50.732868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818092, 42.004562, 50.789093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612395, 0.141907, 0.777711,
		-0.788930, -0.046716, -0.612705,
		-0.050616, -0.988777, 0.140563,
		38.802906, 41.707928, 50.831261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127544, 42.317722, 50.931564>,  <38.838337, 42.400074, 50.732868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127544, 42.317722, 50.931564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.356747, 42.030857, 51.090229>,  <38.494267, 41.858738, 51.185429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.356747, 42.030857, 51.090229>,  <38.127544, 42.317722, 50.931564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356747, 42.030857, 51.090229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599735, -0.037067, 0.799340,
		-0.558556, -0.695916, -0.451348,
		0.573004, -0.717166, 0.396661,
		38.528648, 41.815708, 51.209229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738152, 41.934124, 51.286072>,  <38.127544, 42.317722, 50.931564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738152, 41.934124, 51.286072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632698, 42.319809, 51.274773>,  <37.569427, 42.551220, 51.267994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.632698, 42.319809, 51.274773>,  <37.738152, 41.934124, 51.286072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632698, 42.319809, 51.274773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137308, 0.008524, -0.990492,
		-0.954801, -0.265004, -0.134641,
		-0.263632, 0.964209, -0.028248,
		37.553608, 42.609074, 51.266296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273109, 42.057858, 50.741226>,  <37.738152, 41.934124, 51.286072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273109, 42.057858, 50.741226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.428265, 42.420033, 50.810200>,  <37.521358, 42.637337, 50.851582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.428265, 42.420033, 50.810200>,  <37.273109, 42.057858, 50.741226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428265, 42.420033, 50.810200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159847, 0.250325, -0.954875,
		-0.907740, 0.342822, 0.241829,
		0.387888, 0.905434, 0.172431,
		37.544632, 42.691662, 50.861931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834446, 42.543739, 50.377373>,  <37.273109, 42.057858, 50.741226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834446, 42.543739, 50.377373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.173370, 42.741184, 50.455761>,  <37.376724, 42.859650, 50.502792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.173370, 42.741184, 50.455761>,  <36.834446, 42.543739, 50.377373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173370, 42.741184, 50.455761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058757, 0.279601, -0.958317,
		-0.527831, 0.823510, 0.207906,
		0.847314, 0.493614, 0.195969,
		37.427567, 42.889267, 50.514553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734524, 43.101215, 50.003124>,  <36.834446, 42.543739, 50.377373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734524, 43.101215, 50.003124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.123878, 43.172489, 50.060772>,  <37.357491, 43.215252, 50.095360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.123878, 43.172489, 50.060772>,  <36.734524, 43.101215, 50.003124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123878, 43.172489, 50.060772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116437, 0.157130, -0.980690,
		-0.197388, 0.971371, 0.132201,
		0.973386, 0.178184, 0.144119,
		37.415894, 43.225945, 50.104008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866909, 43.724857, 49.668213>,  <36.734524, 43.101215, 50.003124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866909, 43.724857, 49.668213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.218544, 43.534637, 49.681236>,  <37.429523, 43.420506, 49.689053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.218544, 43.534637, 49.681236>,  <36.866909, 43.724857, 49.668213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218544, 43.534637, 49.681236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148405, 0.208141, -0.966775,
		0.452969, 0.854712, 0.253548,
		0.879088, -0.475547, 0.032562,
		37.482269, 43.391972, 49.691006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180668, 43.927021, 49.193058>,  <36.866909, 43.724857, 49.668213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180668, 43.927021, 49.193058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451374, 43.639130, 49.255005>,  <37.613796, 43.466396, 49.292171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.451374, 43.639130, 49.255005>,  <37.180668, 43.927021, 49.193058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451374, 43.639130, 49.255005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206802, -0.016033, -0.978251,
		0.706556, 0.694073, 0.137990,
		0.676766, -0.719726, 0.154864,
		37.654404, 43.423210, 49.301464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772377, 44.191948, 49.023777>,  <37.180668, 43.927021, 49.193058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772377, 44.191948, 49.023777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.786938, 43.793499, 48.991749>,  <37.795673, 43.554428, 48.972534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.786938, 43.793499, 48.991749>,  <37.772377, 44.191948, 49.023777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786938, 43.793499, 48.991749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173507, 0.085203, -0.981140,
		0.984160, 0.021828, 0.175937,
		0.036406, -0.996125, -0.080066,
		37.797859, 43.494663, 48.967728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321590, 44.153008, 48.485638>,  <37.772377, 44.191948, 49.023777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321590, 44.153008, 48.485638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.197208, 43.772900, 48.492481>,  <38.122581, 43.544834, 48.496586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.197208, 43.772900, 48.492481>,  <38.321590, 44.153008, 48.485638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197208, 43.772900, 48.492481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157336, -0.069217, -0.985116,
		0.937313, -0.303631, 0.171035,
		-0.310951, -0.950272, 0.017106,
		38.103924, 43.487820, 48.497612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789318, 43.744766, 48.132973>,  <38.321590, 44.153008, 48.485638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789318, 43.744766, 48.132973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446526, 43.540482, 48.105385>,  <38.240849, 43.417912, 48.088833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.446526, 43.540482, 48.105385>,  <38.789318, 43.744766, 48.132973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446526, 43.540482, 48.105385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140916, -0.103484, -0.984598,
		0.495710, -0.853500, 0.160652,
		-0.856980, -0.510714, -0.068974,
		38.189430, 43.387268, 48.084694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972237, 43.326561, 47.628830>,  <38.789318, 43.744766, 48.132973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972237, 43.326561, 47.628830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.573978, 43.299164, 47.654118>,  <38.335022, 43.282726, 47.669289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.573978, 43.299164, 47.654118>,  <38.972237, 43.326561, 47.628830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573978, 43.299164, 47.654118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058563, -0.067920, -0.995971,
		0.072510, -0.995337, 0.063613,
		-0.995647, -0.068492, 0.063215,
		38.275284, 43.278618, 47.673080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828953, 42.683548, 47.323418>,  <38.972237, 43.326561, 47.628830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828953, 42.683548, 47.323418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.499992, 42.910999, 47.316261>,  <38.302616, 43.047470, 47.311966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.499992, 42.910999, 47.316261>,  <38.828953, 42.683548, 47.323418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499992, 42.910999, 47.316261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062951, -0.122218, -0.990505,
		-0.565414, -0.813466, 0.136307,
		-0.822401, 0.568626, -0.017895,
		38.253273, 43.081589, 47.310894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431416, 42.208572, 46.994034>,  <38.828953, 42.683548, 47.323418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431416, 42.208572, 46.994034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.265980, 42.570518, 46.953716>,  <38.166718, 42.787685, 46.929527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.265980, 42.570518, 46.953716>,  <38.431416, 42.208572, 46.994034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265980, 42.570518, 46.953716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011345, -0.105571, -0.994347,
		-0.910394, -0.412392, 0.033397,
		-0.413586, 0.904869, -0.100790,
		38.141903, 42.841980, 46.923481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793068, 42.154655, 46.553558>,  <38.431416, 42.208572, 46.994034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793068, 42.154655, 46.553558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.917503, 42.533413, 46.521042>,  <37.992165, 42.760670, 46.501530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.917503, 42.533413, 46.521042>,  <37.793068, 42.154655, 46.553558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917503, 42.533413, 46.521042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127848, -0.043067, -0.990858,
		-0.941743, 0.318636, 0.107662,
		0.311086, 0.946899, -0.081295,
		38.010830, 42.817482, 46.496655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368675, 42.498901, 46.005890>,  <37.793068, 42.154655, 46.553558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368675, 42.498901, 46.005890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.697071, 42.721111, 46.058605>,  <37.894108, 42.854439, 46.090237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.697071, 42.721111, 46.058605>,  <37.368675, 42.498901, 46.005890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697071, 42.721111, 46.058605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141154, 0.026177, -0.989641,
		-0.553223, 0.831086, -0.056925,
		0.820987, 0.555528, 0.131793,
		37.943367, 42.887772, 46.098145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742046, 42.915417, 45.981026>,  <37.368675, 42.498901, 46.005890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742046, 42.915417, 45.981026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.353893, 42.851856, 45.908249>,  <36.121002, 42.813721, 45.864582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.353893, 42.851856, 45.908249>,  <36.742046, 42.915417, 45.981026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353893, 42.851856, 45.908249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198912, 0.098259, 0.975079,
		-0.137064, 0.982393, -0.126956,
		-0.970385, -0.158901, -0.181942,
		36.062778, 42.804184, 45.853664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312611, 43.427994, 46.383938>,  <36.742046, 42.915417, 45.981026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312611, 43.427994, 46.383938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057953, 43.125542, 46.323334>,  <35.905159, 42.944069, 46.286972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.057953, 43.125542, 46.323334>,  <36.312611, 43.427994, 46.383938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057953, 43.125542, 46.323334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319509, 0.079818, 0.944215,
		-0.701856, 0.649536, -0.292406,
		-0.636641, -0.756130, -0.151512,
		35.866959, 42.898705, 46.277882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751732, 43.680511, 46.638462>,  <36.312611, 43.427994, 46.383938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751732, 43.680511, 46.638462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669121, 43.289173, 46.632931>,  <35.619553, 43.054371, 46.629612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.669121, 43.289173, 46.632931>,  <35.751732, 43.680511, 46.638462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669121, 43.289173, 46.632931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487276, 0.090586, 0.868537,
		-0.848474, 0.186116, -0.495432,
		-0.206528, -0.978343, -0.013830,
		35.607162, 42.995670, 46.628780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053879, 43.659473, 46.723385>,  <35.751732, 43.680511, 46.638462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053879, 43.659473, 46.723385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215557, 43.311413, 46.836136>,  <35.312565, 43.102577, 46.903786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.215557, 43.311413, 46.836136>,  <35.053879, 43.659473, 46.723385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215557, 43.311413, 46.836136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543421, 0.019436, 0.839236,
		-0.735744, -0.492394, -0.465005,
		0.404197, -0.870156, 0.281877,
		35.336815, 43.050365, 46.920700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654037, 43.442871, 47.195728>,  <35.053879, 43.659473, 46.723385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654037, 43.442871, 47.195728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.931591, 43.168129, 47.282223>,  <35.098122, 43.003284, 47.334122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.931591, 43.168129, 47.282223>,  <34.654037, 43.442871, 47.195728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931591, 43.168129, 47.282223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356872, -0.067192, 0.931733,
		-0.625437, -0.723681, -0.291743,
		0.693880, -0.686856, 0.216237,
		35.139755, 42.962070, 47.347095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207588, 42.856152, 47.251186>,  <34.654037, 43.442871, 47.195728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207588, 42.856152, 47.251186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.557674, 42.824192, 47.442020>,  <34.767727, 42.805016, 47.556522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.557674, 42.824192, 47.442020>,  <34.207588, 42.856152, 47.251186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557674, 42.824192, 47.442020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477215, 0.018703, 0.878587,
		-0.079122, -0.996627, -0.021760,
		0.875217, -0.079900, 0.477086,
		34.820240, 42.800224, 47.585148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145218, 42.312584, 47.763042>,  <34.207588, 42.856152, 47.251186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145218, 42.312584, 47.763042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.464714, 42.509624, 47.901237>,  <34.656410, 42.627850, 47.984154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.464714, 42.509624, 47.901237>,  <34.145218, 42.312584, 47.763042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464714, 42.509624, 47.901237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372386, -0.046295, 0.926923,
		0.472598, -0.869023, 0.146461,
		0.798737, 0.492601, 0.345491,
		34.704334, 42.657406, 48.004883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181755, 41.502354, 48.004517>,  <34.145218, 42.312584, 47.763042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181755, 41.502354, 48.004517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.936775, 41.200321, 48.098122>,  <33.789787, 41.019100, 48.154285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.936775, 41.200321, 48.098122>,  <34.181755, 41.502354, 48.004517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936775, 41.200321, 48.098122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081352, -0.354657, -0.931451,
		0.786314, -0.551427, 0.278636,
		-0.612447, -0.755080, 0.234012,
		33.753040, 40.973797, 48.168324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450253, 41.061237, 47.556347>,  <34.181755, 41.502354, 48.004517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450253, 41.061237, 47.556347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.092789, 40.911572, 47.655445>,  <33.878311, 40.821774, 47.714905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.092789, 40.911572, 47.655445>,  <34.450253, 41.061237, 47.556347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092789, 40.911572, 47.655445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035895, -0.490712, -0.870582,
		0.447313, -0.786895, 0.425097,
		-0.893657, -0.374164, 0.247747,
		33.824692, 40.799324, 47.729771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525127, 40.358044, 47.464500>,  <34.450253, 41.061237, 47.556347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525127, 40.358044, 47.464500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138607, 40.459557, 47.447227>,  <33.906696, 40.520462, 47.436863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138607, 40.459557, 47.447227>,  <34.525127, 40.358044, 47.464500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138607, 40.459557, 47.447227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080704, -0.457930, -0.885317,
		-0.244450, -0.851995, 0.462978,
		-0.966297, 0.253780, -0.043182,
		33.848717, 40.535690, 47.434273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290443, 39.741074, 47.124153>,  <34.525127, 40.358044, 47.464500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290443, 39.741074, 47.124153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.984776, 39.992676, 47.067024>,  <33.801376, 40.143639, 47.032745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.984776, 39.992676, 47.067024>,  <34.290443, 39.741074, 47.124153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984776, 39.992676, 47.067024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159043, -0.398335, -0.903347,
		-0.625101, -0.667594, 0.404434,
		-0.764169, 0.629005, -0.142824,
		33.755524, 40.181377, 47.024178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604885, 39.340099, 46.945259>,  <34.290443, 39.741074, 47.124153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604885, 39.340099, 46.945259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582981, 39.707363, 46.788292>,  <33.569839, 39.927719, 46.694111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.582981, 39.707363, 46.788292>,  <33.604885, 39.340099, 46.945259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582981, 39.707363, 46.788292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177544, -0.395699, -0.901055,
		-0.982588, 0.020332, 0.184681,
		-0.054758, 0.918155, -0.392419,
		33.566555, 39.982811, 46.670567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144276, 39.198895, 46.407112>,  <33.604885, 39.340099, 46.945259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144276, 39.198895, 46.407112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249546, 39.574970, 46.320599>,  <33.312706, 39.800617, 46.268692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249546, 39.574970, 46.320599>,  <33.144276, 39.198895, 46.407112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249546, 39.574970, 46.320599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158781, -0.178917, -0.970967,
		-0.951592, 0.289875, 0.102198,
		0.263174, 0.940192, -0.216283,
		33.328499, 39.857029, 46.255714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755062, 39.389336, 45.906433>,  <33.144276, 39.198895, 46.407112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755062, 39.389336, 45.906433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063251, 39.639435, 45.856731>,  <33.248165, 39.789494, 45.826912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.063251, 39.639435, 45.856731>,  <32.755062, 39.389336, 45.906433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063251, 39.639435, 45.856731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030156, -0.158952, -0.986826,
		-0.636758, 0.764071, -0.103613,
		0.770474, 0.625244, -0.124255,
		33.294395, 39.827007, 45.819454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.838623, 40.027267, 51.567337> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.074833, 39.708439, 51.516811>,  <37.216557, 39.517139, 51.486496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.074833, 39.708439, 51.516811>,  <36.838623, 40.027267, 51.567337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074833, 39.708439, 51.516811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102673, 0.229449, -0.967890,
		0.800463, 0.558592, 0.217333,
		0.590522, -0.797075, -0.126313,
		37.251991, 39.469315, 51.478916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188766, 40.151417, 50.835831>,  <36.838623, 40.027267, 51.567337>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188766, 40.151417, 50.835831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.578510, 40.081429, 50.779259>,  <37.812359, 40.039436, 50.745316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.578510, 40.081429, 50.779259>,  <37.188766, 40.151417, 50.835831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578510, 40.081429, 50.779259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190600, -0.307997, -0.932100,
		0.119533, 0.935159, -0.333450,
		0.974363, -0.174972, -0.141425,
		37.870819, 40.028938, 50.736832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236637, 40.352371, 50.162498>,  <37.188766, 40.151417, 50.835831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236637, 40.352371, 50.162498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.568584, 40.140118, 50.231480>,  <37.767754, 40.012764, 50.272869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.568584, 40.140118, 50.231480>,  <37.236637, 40.352371, 50.162498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568584, 40.140118, 50.231480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063533, -0.396935, -0.915645,
		0.554329, 0.748910, -0.363117,
		0.829869, -0.530638, 0.172452,
		37.817547, 39.980927, 50.283215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572929, 40.469189, 49.577408>,  <37.236637, 40.352371, 50.162498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572929, 40.469189, 49.577408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.721527, 40.133904, 49.737103>,  <37.810688, 39.932732, 49.832920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.721527, 40.133904, 49.737103>,  <37.572929, 40.469189, 49.577408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721527, 40.133904, 49.737103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127148, -0.471891, -0.872440,
		0.919686, 0.273348, -0.281884,
		0.371498, -0.838212, 0.399236,
		37.832977, 39.882439, 49.856873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083454, 40.211388, 49.079693>,  <37.572929, 40.469189, 49.577408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083454, 40.211388, 49.079693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.995502, 39.894669, 49.307629>,  <37.942730, 39.704636, 49.444389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.995502, 39.894669, 49.307629>,  <38.083454, 40.211388, 49.079693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995502, 39.894669, 49.307629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153418, -0.548794, -0.821759,
		0.963388, -0.268110, -0.000808,
		-0.219879, -0.791797, 0.569835,
		37.929539, 39.657131, 49.478580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486137, 39.690186, 48.873978>,  <38.083454, 40.211388, 49.079693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486137, 39.690186, 48.873978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.195396, 39.482521, 49.053825>,  <38.020950, 39.357922, 49.161736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.195396, 39.482521, 49.053825>,  <38.486137, 39.690186, 48.873978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195396, 39.482521, 49.053825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049115, -0.613697, -0.788012,
		0.685032, -0.594854, 0.420571,
		-0.726856, -0.519157, 0.449619,
		37.977341, 39.326775, 49.188709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752159, 38.929482, 48.872185>,  <38.486137, 39.690186, 48.873978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752159, 38.929482, 48.872185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.352421, 38.940083, 48.882023>,  <38.112579, 38.946442, 48.887924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.352421, 38.940083, 48.882023>,  <38.752159, 38.929482, 48.872185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352421, 38.940083, 48.882023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035910, -0.806572, -0.590045,
		0.004198, -0.590542, 0.806996,
		-0.999347, 0.026502, 0.024592,
		38.052616, 38.948032, 48.889400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604008, 38.223606, 48.840282>,  <38.752159, 38.929482, 48.872185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604008, 38.223606, 48.840282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.246925, 38.387341, 48.764900>,  <38.032677, 38.485580, 48.719669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.246925, 38.387341, 48.764900>,  <38.604008, 38.223606, 48.840282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246925, 38.387341, 48.764900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040693, -0.489719, -0.870930,
		-0.448792, -0.769819, 0.453833,
		-0.892709, 0.409334, -0.188456,
		37.979115, 38.510143, 48.708363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151608, 37.616867, 48.625988>,  <38.604008, 38.223606, 48.840282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151608, 37.616867, 48.625988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.962872, 37.935505, 48.474831>,  <37.849632, 38.126690, 48.384136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.962872, 37.935505, 48.474831>,  <38.151608, 37.616867, 48.625988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962872, 37.935505, 48.474831> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206055, -0.516360, -0.831212,
		-0.857271, -0.314329, 0.407780,
		-0.471835, 0.796599, -0.377891,
		37.821320, 38.174484, 48.361462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479755, 37.357456, 48.375793>,  <38.151608, 37.616867, 48.625988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479755, 37.357456, 48.375793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.566105, 37.703445, 48.194588>,  <37.617916, 37.911037, 48.085865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.566105, 37.703445, 48.194588>,  <37.479755, 37.357456, 48.375793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566105, 37.703445, 48.194588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078519, -0.447074, -0.891044,
		-0.973258, 0.227927, -0.028597,
		0.215878, 0.864971, -0.453015,
		37.630867, 37.962936, 48.058681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918327, 37.522930, 47.805782>,  <37.479755, 37.357456, 48.375793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918327, 37.522930, 47.805782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.246353, 37.727177, 47.702419>,  <37.443169, 37.849724, 47.640404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.246353, 37.727177, 47.702419>,  <36.918327, 37.522930, 47.805782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246353, 37.727177, 47.702419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008378, -0.462203, -0.886735,
		-0.572212, 0.725013, -0.383313,
		0.820063, 0.510612, -0.258404,
		37.492371, 37.880360, 47.624897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821453, 37.652672, 47.084713>,  <36.918327, 37.522930, 47.805782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821453, 37.652672, 47.084713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.211250, 37.709225, 47.154423>,  <37.445129, 37.743156, 47.196251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.211250, 37.709225, 47.154423>,  <36.821453, 37.652672, 47.084713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211250, 37.709225, 47.154423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215117, -0.367295, -0.904886,
		-0.063920, 0.919297, -0.388340,
		0.974494, 0.141379, 0.174279,
		37.503597, 37.751640, 47.206707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272144, 38.016602, 46.952454>,  <36.821453, 37.652672, 47.084713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272144, 38.016602, 46.952454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.962524, 37.764694, 46.926411>,  <35.776752, 37.613548, 46.910786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.962524, 37.764694, 46.926411>,  <36.272144, 38.016602, 46.952454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962524, 37.764694, 46.926411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300481, 0.274903, 0.913313,
		-0.557280, 0.726510, -0.402022,
		-0.774048, -0.629771, -0.065105,
		35.730309, 37.575764, 46.906879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638664, 38.429642, 47.137074>,  <36.272144, 38.016602, 46.952454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638664, 38.429642, 47.137074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.568405, 38.041519, 47.203594>,  <35.526249, 37.808647, 47.243507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.568405, 38.041519, 47.203594>,  <35.638664, 38.429642, 47.137074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568405, 38.041519, 47.203594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339076, 0.218224, 0.915099,
		-0.924216, 0.104346, -0.367338,
		-0.175649, -0.970304, 0.166305,
		35.515709, 37.750427, 47.253487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932278, 38.428158, 47.264080>,  <35.638664, 38.429642, 47.137074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932278, 38.428158, 47.264080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.103760, 38.109684, 47.434864>,  <35.206650, 37.918598, 47.537334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.103760, 38.109684, 47.434864>,  <34.932278, 38.428158, 47.264080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103760, 38.109684, 47.434864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485173, 0.195773, 0.852221,
		-0.762114, -0.572505, -0.302359,
		0.428707, -0.796186, 0.426965,
		35.232372, 37.870827, 47.562954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497787, 38.194794, 47.810669>,  <34.932278, 38.428158, 47.264080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497787, 38.194794, 47.810669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.811169, 37.975498, 47.927727>,  <34.999199, 37.843922, 47.997963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.811169, 37.975498, 47.927727>,  <34.497787, 38.194794, 47.810669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811169, 37.975498, 47.927727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250615, 0.152191, 0.956049,
		-0.568678, -0.822360, -0.018161,
		0.783452, -0.548236, 0.292644,
		35.046204, 37.811028, 48.015518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303883, 37.840691, 48.344070>,  <34.497787, 38.194794, 47.810669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303883, 37.840691, 48.344070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.700047, 37.831509, 48.398567>,  <34.937744, 37.826000, 48.431267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.700047, 37.831509, 48.398567>,  <34.303883, 37.840691, 48.344070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700047, 37.831509, 48.398567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136301, -0.000963, 0.990667,
		-0.022622, -0.999736, -0.004085,
		0.990409, -0.022968, 0.136243,
		34.997169, 37.824623, 48.439442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483593, 37.448402, 48.912380>,  <34.303883, 37.840691, 48.344070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483593, 37.448402, 48.912380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.825375, 37.654385, 48.884861>,  <35.030445, 37.777973, 48.868351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.825375, 37.654385, 48.884861>,  <34.483593, 37.448402, 48.912380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825375, 37.654385, 48.884861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090585, 0.278067, 0.956281,
		0.511569, -0.810866, 0.284242,
		0.854454, 0.514952, -0.068798,
		35.081711, 37.808868, 48.864223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942467, 37.353222, 49.492249>,  <34.483593, 37.448402, 48.912380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942467, 37.353222, 49.492249> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.092361, 37.696728, 49.352478>,  <35.182301, 37.902832, 49.268616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.092361, 37.696728, 49.352478>,  <34.942467, 37.353222, 49.492249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092361, 37.696728, 49.352478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016280, 0.382929, 0.923635,
		0.926987, -0.340435, 0.157479,
		0.374741, 0.858761, -0.349428,
		35.204784, 37.954357, 49.247650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456501, 37.466206, 49.985386>,  <34.942467, 37.353222, 49.492249>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456501, 37.466206, 49.985386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.365112, 37.811878, 49.806057>,  <35.310280, 38.019279, 49.698460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.365112, 37.811878, 49.806057>,  <35.456501, 37.466206, 49.985386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365112, 37.811878, 49.806057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151540, 0.423324, 0.893215,
		0.961684, 0.272015, 0.034239,
		-0.228474, 0.864179, -0.448325,
		35.296570, 38.071133, 49.671558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913052, 38.028259, 50.196999>,  <35.456501, 37.466206, 49.985386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913052, 38.028259, 50.196999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.573883, 38.201035, 50.074066>,  <35.370380, 38.304699, 50.000305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.573883, 38.201035, 50.074066>,  <35.913052, 38.028259, 50.196999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573883, 38.201035, 50.074066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133756, 0.386662, 0.912470,
		0.512965, 0.814813, -0.270086,
		-0.847924, 0.431940, -0.307331,
		35.319504, 38.330616, 49.981869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810036, 38.522217, 50.556946>,  <35.913052, 38.028259, 50.196999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810036, 38.522217, 50.556946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.438705, 38.546825, 50.410290>,  <35.215908, 38.561592, 50.322296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.438705, 38.546825, 50.410290>,  <35.810036, 38.522217, 50.556946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438705, 38.546825, 50.410290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337571, 0.273662, 0.900641,
		0.155748, 0.959856, -0.233279,
		-0.928326, 0.061525, -0.366642,
		35.160206, 38.565285, 50.300297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638050, 39.109283, 50.731670>,  <35.810036, 38.522217, 50.556946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638050, 39.109283, 50.731670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.297729, 38.904293, 50.685192>,  <35.093536, 38.781300, 50.657307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.297729, 38.904293, 50.685192>,  <35.638050, 39.109283, 50.731670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297729, 38.904293, 50.685192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323830, 0.337188, 0.883990,
		-0.413848, 0.789727, -0.452837,
		-0.850802, -0.512479, -0.116193,
		35.042488, 38.750549, 50.650333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160748, 39.550076, 51.017567>,  <35.638050, 39.109283, 50.731670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160748, 39.550076, 51.017567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.989239, 39.188713, 51.016487>,  <34.886333, 38.971893, 51.015839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.989239, 39.188713, 51.016487>,  <35.160748, 39.550076, 51.017567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989239, 39.188713, 51.016487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376443, 0.175949, 0.909578,
		-0.821248, 0.391014, -0.415524,
		-0.428769, -0.903410, -0.002696,
		34.860607, 38.917690, 51.015678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410625, 39.571720, 51.335457>,  <35.160748, 39.550076, 51.017567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410625, 39.571720, 51.335457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.508015, 39.185272, 51.369728>,  <34.566448, 38.953403, 51.390289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.508015, 39.185272, 51.369728>,  <34.410625, 39.571720, 51.335457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508015, 39.185272, 51.369728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399459, -0.019387, 0.916546,
		-0.883829, -0.257379, -0.390644,
		0.243474, -0.966116, 0.085678,
		34.581059, 38.895439, 51.395432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844704, 39.339771, 51.585922>,  <34.410625, 39.571720, 51.335457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844704, 39.339771, 51.585922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.134117, 39.086899, 51.696804>,  <34.307766, 38.935177, 51.763332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.134117, 39.086899, 51.696804>,  <33.844704, 39.339771, 51.585922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134117, 39.086899, 51.696804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228929, 0.159092, 0.960355,
		-0.651219, -0.758312, -0.029616,
		0.723537, -0.632181, 0.277204,
		34.351177, 38.897243, 51.779964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869453, 39.605965, 50.862617>,  <33.844704, 39.339771, 51.585922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869453, 39.605965, 50.862617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.627472, 39.923317, 50.889675>,  <33.482285, 40.113728, 50.905910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.627472, 39.923317, 50.889675>,  <33.869453, 39.605965, 50.862617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627472, 39.923317, 50.889675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114229, 0.170543, -0.978707,
		-0.788027, -0.584342, -0.193798,
		-0.604950, 0.793385, 0.067644,
		33.445988, 40.161331, 50.909969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379925, 39.543457, 50.392353>,  <33.869453, 39.605965, 50.862617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379925, 39.543457, 50.392353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.402927, 39.939407, 50.444271>,  <33.416729, 40.176975, 50.475422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.402927, 39.939407, 50.444271>,  <33.379925, 39.543457, 50.392353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402927, 39.939407, 50.444271> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068259, 0.125807, -0.989704,
		-0.996009, 0.065777, -0.060332,
		0.057510, 0.989872, 0.129794,
		33.420181, 40.236370, 50.483208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938633, 39.796677, 49.908813>,  <33.379925, 39.543457, 50.392353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938633, 39.796677, 49.908813> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150501, 40.113632, 50.029850>,  <33.277622, 40.303806, 50.102474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.150501, 40.113632, 50.029850>,  <32.938633, 39.796677, 49.908813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150501, 40.113632, 50.029850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023515, 0.370329, -0.928603,
		-0.847876, 0.484740, 0.214786,
		0.529672, 0.792391, 0.302595,
		33.309402, 40.351349, 50.120628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590424, 40.359386, 49.686092>,  <32.938633, 39.796677, 49.908813>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590424, 40.359386, 49.686092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.973064, 40.467819, 49.728859>,  <33.202648, 40.532879, 49.754520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.973064, 40.467819, 49.728859>,  <32.590424, 40.359386, 49.686092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973064, 40.467819, 49.728859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021407, 0.300549, -0.953526,
		-0.290616, 0.914432, 0.281702,
		0.956600, 0.271079, 0.106920,
		33.260044, 40.549145, 49.760937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668106, 41.105515, 49.541931>,  <32.590424, 40.359386, 49.686092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668106, 41.105515, 49.541931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.019260, 40.933296, 49.458088>,  <33.229954, 40.829964, 49.407784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.019260, 40.933296, 49.458088>,  <32.668106, 41.105515, 49.541931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019260, 40.933296, 49.458088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028039, 0.390749, -0.920070,
		0.478040, 0.813598, 0.330963,
		0.877891, -0.430550, -0.209606,
		33.282627, 40.804131, 49.395206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053799, 41.593792, 49.151207>,  <32.668106, 41.105515, 49.541931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053799, 41.593792, 49.151207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.261593, 41.257561, 49.089809>,  <33.386269, 41.055820, 49.052971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.261593, 41.257561, 49.089809>,  <33.053799, 41.593792, 49.151207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261593, 41.257561, 49.089809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157530, 0.270765, -0.949669,
		0.839831, 0.469162, 0.273076,
		0.519488, -0.840579, -0.153489,
		33.417439, 41.005386, 49.043762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534286, 41.795071, 48.591148>,  <33.053799, 41.593792, 49.151207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534286, 41.795071, 48.591148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.565201, 41.396465, 48.603668>,  <33.583752, 41.157303, 48.611179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.565201, 41.396465, 48.603668>,  <33.534286, 41.795071, 48.591148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565201, 41.396465, 48.603668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201945, -0.015096, -0.979281,
		0.976343, 0.082007, 0.200075,
		0.077288, -0.996517, 0.031300,
		33.588387, 41.097511, 48.613060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207573, 42.053539, 48.521057>,  <33.534286, 41.795071, 48.591148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207573, 42.053539, 48.521057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.449421, 42.370651, 48.490246>,  <34.594528, 42.560921, 48.471760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.449421, 42.370651, 48.490246>,  <34.207573, 42.053539, 48.521057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449421, 42.370651, 48.490246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046113, 0.131387, 0.990258,
		0.795179, -0.595176, 0.115997,
		0.604619, 0.792782, -0.077031,
		34.630806, 42.608486, 48.467136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682922, 41.983196, 49.087448>,  <34.207573, 42.053539, 48.521057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682922, 41.983196, 49.087448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.654285, 42.365368, 48.972885>,  <34.637104, 42.594669, 48.904148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.654285, 42.365368, 48.972885>,  <34.682922, 41.983196, 49.087448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654285, 42.365368, 48.972885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133696, 0.275359, 0.951999,
		0.988433, 0.106451, 0.108022,
		-0.071596, 0.955429, -0.286406,
		34.632805, 42.651997, 48.886963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130444, 42.313900, 49.419941>,  <34.682922, 41.983196, 49.087448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130444, 42.313900, 49.419941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.879856, 42.607220, 49.314255>,  <34.729504, 42.783211, 49.250843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.879856, 42.607220, 49.314255>,  <35.130444, 42.313900, 49.419941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879856, 42.607220, 49.314255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068210, 0.389257, 0.918600,
		0.776457, 0.557452, -0.293875,
		-0.626468, 0.733299, -0.264217,
		34.691917, 42.827209, 49.234989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489628, 43.015152, 49.545319>,  <35.130444, 42.313900, 49.419941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489628, 43.015152, 49.545319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.095016, 43.080517, 49.542137>,  <34.858250, 43.119736, 49.540230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.095016, 43.080517, 49.542137>,  <35.489628, 43.015152, 49.545319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095016, 43.080517, 49.542137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070579, 0.468927, 0.880413,
		0.147602, 0.867988, -0.474142,
		-0.986525, 0.163415, -0.007953,
		34.799057, 43.129539, 49.539753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415192, 43.657642, 49.587494>,  <35.489628, 43.015152, 49.545319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415192, 43.657642, 49.587494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.060616, 43.519596, 49.710854>,  <34.847870, 43.436768, 49.784870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.060616, 43.519596, 49.710854>,  <35.415192, 43.657642, 49.587494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060616, 43.519596, 49.710854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262966, 0.172783, 0.949207,
		-0.380875, 0.922518, -0.062408,
		-0.886444, -0.345118, 0.308400,
		34.794682, 43.416061, 49.803375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108398, 44.179062, 50.036491>,  <35.415192, 43.657642, 49.587494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108398, 44.179062, 50.036491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.888538, 43.857513, 50.127422>,  <34.756622, 43.664585, 50.181980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.888538, 43.857513, 50.127422>,  <35.108398, 44.179062, 50.036491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888538, 43.857513, 50.127422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059877, 0.233516, 0.970508,
		-0.833247, 0.547051, -0.080219,
		-0.549650, -0.803869, 0.227332,
		34.723644, 43.616352, 50.195621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846897, 44.378056, 50.680168>,  <35.108398, 44.179062, 50.036491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846897, 44.378056, 50.680168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.773388, 43.984871, 50.681362>,  <34.729282, 43.748959, 50.682079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.773388, 43.984871, 50.681362>,  <34.846897, 44.378056, 50.680168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773388, 43.984871, 50.681362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002984, 0.003592, 0.999989,
		-0.982964, 0.183762, -0.003593,
		-0.183773, -0.982964, 0.002983,
		34.718254, 43.689983, 50.682259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416622, 44.294651, 51.262184>,  <34.846897, 44.378056, 50.680168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416622, 44.294651, 51.262184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.553928, 43.926651, 51.186527>,  <34.636311, 43.705853, 51.141132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.553928, 43.926651, 51.186527>,  <34.416622, 44.294651, 51.262184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553928, 43.926651, 51.186527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075207, -0.173810, 0.981903,
		-0.936222, -0.351279, 0.009527,
		0.343266, -0.919996, -0.189143,
		34.656910, 43.650654, 51.129784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051079, 43.941673, 51.763275>,  <34.416622, 44.294651, 51.262184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051079, 43.941673, 51.763275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.395229, 43.762722, 51.665623>,  <34.601719, 43.655350, 51.607029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.395229, 43.762722, 51.665623>,  <34.051079, 43.941673, 51.763275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395229, 43.762722, 51.665623> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205053, -0.134673, 0.969441,
		-0.466586, -0.884147, -0.024134,
		0.860378, -0.447379, -0.244134,
		34.653343, 43.628510, 51.592384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.009647, 38.569355, 36.827610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348381, 38.749569, 36.940678>,  <38.551620, 38.857697, 37.008518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348381, 38.749569, 36.940678>,  <38.009647, 38.569355, 36.827610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348381, 38.749569, 36.940678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454548, 0.337107, 0.824466,
		0.276155, -0.826671, 0.490259,
		0.846832, 0.450527, 0.282668,
		38.602428, 38.884727, 37.025478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172073, 38.351929, 37.510998>,  <38.009647, 38.569355, 36.827610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172073, 38.351929, 37.510998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340294, 38.712234, 37.467625>,  <38.441227, 38.928417, 37.441601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340294, 38.712234, 37.467625>,  <38.172073, 38.351929, 37.510998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340294, 38.712234, 37.467625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450413, 0.311032, 0.836891,
		0.787571, -0.303113, 0.536521,
		0.420548, 0.900767, -0.108434,
		38.466457, 38.982464, 37.435093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335445, 38.530525, 38.195942>,  <38.172073, 38.351929, 37.510998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335445, 38.530525, 38.195942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348499, 38.867226, 37.980389>,  <38.356331, 39.069244, 37.851059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348499, 38.867226, 37.980389>,  <38.335445, 38.530525, 38.195942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348499, 38.867226, 37.980389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416386, 0.501599, 0.758301,
		0.908602, 0.199638, 0.366861,
		0.032632, 0.841750, -0.538881,
		38.358288, 39.119751, 37.818726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384449, 39.052746, 38.738262>,  <38.335445, 38.530525, 38.195942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384449, 39.052746, 38.738262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272598, 39.282265, 38.430347>,  <38.205486, 39.419975, 38.245598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272598, 39.282265, 38.430347>,  <38.384449, 39.052746, 38.738262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272598, 39.282265, 38.430347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480300, 0.610632, 0.629635,
		0.831335, 0.545793, 0.104841,
		-0.279631, 0.573793, -0.769785,
		38.188709, 39.454403, 38.199413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483078, 39.732735, 38.911613>,  <38.384449, 39.052746, 38.738262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483078, 39.732735, 38.911613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214767, 39.759422, 38.616150>,  <38.053783, 39.775436, 38.438873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214767, 39.759422, 38.616150>,  <38.483078, 39.732735, 38.911613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214767, 39.759422, 38.616150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614896, 0.506837, 0.604169,
		0.414687, 0.859456, -0.298947,
		-0.670774, 0.066720, -0.738655,
		38.013535, 39.779438, 38.394554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233101, 40.458961, 38.953983>,  <38.483078, 39.732735, 38.911613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233101, 40.458961, 38.953983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943024, 40.270489, 38.753151>,  <37.768978, 40.157406, 38.632652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943024, 40.270489, 38.753151>,  <38.233101, 40.458961, 38.953983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943024, 40.270489, 38.753151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686481, 0.551145, 0.474325,
		0.053226, 0.688645, -0.723143,
		-0.725198, -0.471177, -0.502076,
		37.725464, 40.129135, 38.602528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688786, 40.996876, 38.746117>,  <38.233101, 40.458961, 38.953983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688786, 40.996876, 38.746117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513531, 40.637726, 38.728867>,  <37.408379, 40.422237, 38.718517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.513531, 40.637726, 38.728867>,  <37.688786, 40.996876, 38.746117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513531, 40.637726, 38.728867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742117, 0.334230, 0.580993,
		-0.507243, 0.286561, -0.812765,
		-0.438140, -0.897871, -0.043127,
		37.382088, 40.368366, 38.715927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016567, 41.097034, 38.505634>,  <37.688786, 40.996876, 38.746117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016567, 41.097034, 38.505634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029358, 40.759678, 38.720173>,  <37.037033, 40.557266, 38.848896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029358, 40.759678, 38.720173>,  <37.016567, 41.097034, 38.505634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029358, 40.759678, 38.720173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766571, 0.323653, 0.554633,
		-0.641363, -0.428885, -0.636169,
		0.031975, -0.843390, 0.536350,
		37.038952, 40.506660, 38.881077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339897, 41.023193, 38.490028>,  <37.016567, 41.097034, 38.505634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339897, 41.023193, 38.490028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499306, 40.796524, 38.778488>,  <36.594952, 40.660522, 38.951565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499306, 40.796524, 38.778488>,  <36.339897, 41.023193, 38.490028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499306, 40.796524, 38.778488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733009, 0.275804, 0.621795,
		-0.551254, -0.776408, -0.305467,
		0.398518, -0.566677, 0.721152,
		36.618862, 40.626522, 38.994835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788410, 40.662548, 38.787857>,  <36.339897, 41.023193, 38.490028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788410, 40.662548, 38.787857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064091, 40.618832, 39.074368>,  <36.229500, 40.592602, 39.246273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064091, 40.618832, 39.074368>,  <35.788410, 40.662548, 38.787857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064091, 40.618832, 39.074368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697910, 0.165551, 0.696789,
		-0.194736, -0.980126, 0.037820,
		0.689203, -0.109295, 0.716278,
		36.270851, 40.586044, 39.289249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353886, 40.433979, 39.428444>,  <35.788410, 40.662548, 38.787857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353886, 40.433979, 39.428444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714436, 40.575867, 39.527798>,  <35.930767, 40.660999, 39.587410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714436, 40.575867, 39.527798>,  <35.353886, 40.433979, 39.428444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714436, 40.575867, 39.527798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396733, 0.446590, 0.801973,
		0.173549, -0.821422, 0.543274,
		0.901379, 0.354716, 0.248380,
		35.984848, 40.682281, 39.602310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365295, 40.291103, 40.084206>,  <35.353886, 40.433979, 39.428444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365295, 40.291103, 40.084206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646900, 40.574974, 40.073505>,  <35.815865, 40.745296, 40.067085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646900, 40.574974, 40.073505>,  <35.365295, 40.291103, 40.084206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646900, 40.574974, 40.073505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332995, 0.363141, 0.870197,
		0.627277, -0.603723, 0.491977,
		0.704016, 0.709680, -0.026754,
		35.858105, 40.787880, 40.065479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479221, 39.592850, 40.174805>,  <35.365295, 40.291103, 40.084206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479221, 39.592850, 40.174805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273960, 39.254520, 40.233124>,  <35.150803, 39.051521, 40.268116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.273960, 39.254520, 40.233124>,  <35.479221, 39.592850, 40.174805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273960, 39.254520, 40.233124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009710, -0.175583, -0.984417,
		0.858245, -0.503737, 0.098313,
		-0.513149, -0.845825, 0.145802,
		35.120014, 39.000774, 40.276863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846329, 39.047455, 39.838444>,  <35.479221, 39.592850, 40.174805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846329, 39.047455, 39.838444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474758, 38.899357, 39.837158>,  <35.251816, 38.810497, 39.836388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474758, 38.899357, 39.837158>,  <35.846329, 39.047455, 39.838444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474758, 38.899357, 39.837158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055566, -0.130815, -0.989849,
		0.366070, -0.919676, 0.142091,
		-0.928927, -0.370249, -0.003215,
		35.196079, 38.788280, 39.836193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933426, 38.351067, 39.519859>,  <35.846329, 39.047455, 39.838444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933426, 38.351067, 39.519859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553383, 38.473148, 39.494095>,  <35.325359, 38.546398, 39.478638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553383, 38.473148, 39.494095>,  <35.933426, 38.351067, 39.519859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553383, 38.473148, 39.494095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025481, -0.281736, -0.959154,
		-0.310893, -0.909654, 0.275456,
		-0.950103, 0.305213, -0.064411,
		35.268353, 38.564709, 39.474773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458298, 37.756176, 39.316345>,  <35.933426, 38.351067, 39.519859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458298, 37.756176, 39.316345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231491, 38.077217, 39.242245>,  <35.095409, 38.269844, 39.197784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231491, 38.077217, 39.242245>,  <35.458298, 37.756176, 39.316345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231491, 38.077217, 39.242245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374235, -0.451361, -0.810075,
		-0.733787, -0.389995, 0.556291,
		-0.567013, 0.802606, -0.185253,
		35.061386, 38.318001, 39.186668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918171, 37.435665, 39.054089>,  <35.458298, 37.756176, 39.316345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918171, 37.435665, 39.054089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853493, 37.817894, 38.955509>,  <34.814686, 38.047230, 38.896362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853493, 37.817894, 38.955509>,  <34.918171, 37.435665, 39.054089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853493, 37.817894, 38.955509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338380, -0.288286, -0.895763,
		-0.927013, -0.061446, 0.369960,
		-0.161696, 0.955571, -0.246452,
		34.804985, 38.104565, 38.881573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210659, 37.510567, 38.806065>,  <34.918171, 37.435665, 39.054089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210659, 37.510567, 38.806065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432381, 37.799988, 38.641521>,  <34.565414, 37.973640, 38.542797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432381, 37.799988, 38.641521>,  <34.210659, 37.510567, 38.806065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432381, 37.799988, 38.641521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325259, -0.266622, -0.907259,
		-0.766130, 0.636694, 0.087554,
		0.554303, 0.723556, -0.411357,
		34.598671, 38.017056, 38.518116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838882, 37.690437, 38.262451>,  <34.210659, 37.510567, 38.806065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838882, 37.690437, 38.262451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190937, 37.848545, 38.157288>,  <34.402168, 37.943409, 38.094189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190937, 37.848545, 38.157288>,  <33.838882, 37.690437, 38.262451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190937, 37.848545, 38.157288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192054, -0.210003, -0.958652,
		-0.434142, 0.894236, -0.108917,
		0.880134, 0.395273, -0.262913,
		34.454979, 37.967129, 38.078415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685940, 38.130894, 37.700035>,  <33.838882, 37.690437, 38.262451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685940, 38.130894, 37.700035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080494, 38.065441, 37.706619>,  <34.317226, 38.026169, 37.710567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080494, 38.065441, 37.706619>,  <33.685940, 38.130894, 37.700035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080494, 38.065441, 37.706619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002244, -0.086676, -0.996234,
		0.164439, 0.982707, -0.085129,
		0.986385, -0.163628, 0.016458,
		34.376408, 38.016354, 37.711555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833378, 38.502804, 37.110332>,  <33.685940, 38.130894, 37.700035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833378, 38.502804, 37.110332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127968, 38.240074, 37.175076>,  <34.304722, 38.082436, 37.213921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.127968, 38.240074, 37.175076>,  <33.833378, 38.502804, 37.110332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127968, 38.240074, 37.175076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010126, -0.228534, -0.973483,
		0.676394, 0.718580, -0.161658,
		0.736470, -0.656821, 0.161856,
		34.348907, 38.043026, 37.223633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194187, 38.457237, 36.472809>,  <33.833378, 38.502804, 37.110332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194187, 38.457237, 36.472809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329014, 38.129726, 36.658710>,  <34.409908, 37.933220, 36.770252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329014, 38.129726, 36.658710>,  <34.194187, 38.457237, 36.472809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329014, 38.129726, 36.658710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055088, -0.509946, -0.858441,
		0.939867, 0.263751, -0.216991,
		0.337068, -0.818774, 0.464752,
		34.430134, 37.884094, 36.798138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724747, 38.151676, 36.057068>,  <34.194187, 38.457237, 36.472809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724747, 38.151676, 36.057068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588203, 37.854599, 36.287506>,  <34.506279, 37.676353, 36.425770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588203, 37.854599, 36.287506>,  <34.724747, 38.151676, 36.057068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588203, 37.854599, 36.287506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002658, -0.613667, -0.789561,
		0.939931, -0.267988, 0.211452,
		-0.341354, -0.742695, 0.576092,
		34.485798, 37.631790, 36.460335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136360, 37.585609, 35.793301>,  <34.724747, 38.151676, 36.057068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136360, 37.585609, 35.793301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809269, 37.452732, 35.981331>,  <34.613014, 37.373005, 36.094147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809269, 37.452732, 35.981331>,  <35.136360, 37.585609, 35.793301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809269, 37.452732, 35.981331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280645, -0.482916, -0.829476,
		0.502556, -0.810208, 0.301664,
		-0.817726, -0.332198, 0.470073,
		34.563950, 37.353073, 36.122353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142517, 36.891029, 35.627640>,  <35.136360, 37.585609, 35.793301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142517, 36.891029, 35.627640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782288, 37.034645, 35.725670>,  <34.566151, 37.120815, 35.784489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782288, 37.034645, 35.725670>,  <35.142517, 36.891029, 35.627640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782288, 37.034645, 35.725670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413653, -0.534463, -0.737048,
		-0.133643, -0.765142, 0.629839,
		-0.900573, 0.359036, 0.245076,
		34.512115, 37.142357, 35.799191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285858, 36.131073, 35.723484>,  <35.142517, 36.891029, 35.627640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285858, 36.131073, 35.723484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267948, 35.731773, 35.738903>,  <35.257202, 35.492191, 35.748154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267948, 35.731773, 35.738903>,  <35.285858, 36.131073, 35.723484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267948, 35.731773, 35.738903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040151, 0.036755, 0.998518,
		-0.998190, 0.046255, 0.038435,
		-0.044774, -0.998253, 0.038546,
		35.254517, 35.432297, 35.750465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686337, 35.867161, 36.117657>,  <35.285858, 36.131073, 35.723484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686337, 35.867161, 36.117657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989101, 35.605766, 36.120235>,  <35.170761, 35.448929, 36.121780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989101, 35.605766, 36.120235>,  <34.686337, 35.867161, 36.117657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989101, 35.605766, 36.120235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068546, -0.069579, 0.995219,
		-0.649913, -0.753734, -0.097459,
		0.756912, -0.653486, 0.006445,
		35.216175, 35.409721, 36.122169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436787, 35.432415, 36.571194>,  <34.686337, 35.867161, 36.117657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436787, 35.432415, 36.571194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819134, 35.320362, 36.535793>,  <35.048542, 35.253128, 36.514553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819134, 35.320362, 36.535793>,  <34.436787, 35.432415, 36.571194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819134, 35.320362, 36.535793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009867, -0.331682, 0.943340,
		-0.293609, -0.900841, -0.319810,
		0.955875, -0.280129, -0.088496,
		35.105896, 35.236320, 36.509243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410698, 34.716667, 36.752628>,  <34.436787, 35.432415, 36.571194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410698, 34.716667, 36.752628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751511, 34.903896, 36.846401>,  <34.955997, 35.016232, 36.902664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751511, 34.903896, 36.846401>,  <34.410698, 34.716667, 36.752628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751511, 34.903896, 36.846401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158519, -0.196107, 0.967685,
		0.498916, -0.861658, -0.092891,
		0.852030, 0.468069, 0.234430,
		35.007118, 35.044315, 36.916729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650211, 34.305824, 37.310596>,  <34.410698, 34.716667, 36.752628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650211, 34.305824, 37.310596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885696, 34.628040, 37.337490>,  <35.026989, 34.821369, 37.353626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885696, 34.628040, 37.337490>,  <34.650211, 34.305824, 37.310596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885696, 34.628040, 37.337490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097925, -0.011488, 0.995128,
		0.802389, -0.592428, 0.072119,
		0.588713, 0.805541, 0.067231,
		35.062309, 34.869701, 37.357658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158710, 34.208355, 37.829330>,  <34.650211, 34.305824, 37.310596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158710, 34.208355, 37.829330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140766, 34.607601, 37.812599>,  <35.130001, 34.847149, 37.802559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140766, 34.607601, 37.812599>,  <35.158710, 34.208355, 37.829330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140766, 34.607601, 37.812599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098066, 0.037268, 0.994482,
		0.994168, 0.048716, 0.096210,
		-0.044861, 0.998117, -0.041828,
		35.127308, 34.907036, 37.800053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586086, 34.467701, 38.359272>,  <35.158710, 34.208355, 37.829330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586086, 34.467701, 38.359272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356182, 34.779575, 38.259884>,  <35.218239, 34.966702, 38.200253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356182, 34.779575, 38.259884>,  <35.586086, 34.467701, 38.359272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356182, 34.779575, 38.259884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137463, 0.207328, 0.968566,
		0.806695, 0.590846, -0.011985,
		-0.574758, 0.779689, -0.248470,
		35.183754, 35.013481, 38.185345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864265, 35.036839, 38.693558>,  <35.586086, 34.467701, 38.359272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864265, 35.036839, 38.693558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480610, 35.139378, 38.645649>,  <35.250416, 35.200901, 38.616901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480610, 35.139378, 38.645649>,  <35.864265, 35.036839, 38.693558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480610, 35.139378, 38.645649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036941, 0.306237, 0.951238,
		0.280529, 0.916790, -0.284253,
		-0.959134, 0.256350, -0.119775,
		35.192871, 35.216282, 38.609715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744858, 35.606823, 39.017826>,  <35.864265, 35.036839, 38.693558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744858, 35.606823, 39.017826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355148, 35.534222, 38.964394>,  <35.121323, 35.490662, 38.932335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355148, 35.534222, 38.964394>,  <35.744858, 35.606823, 39.017826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355148, 35.534222, 38.964394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174527, 0.232661, 0.956770,
		-0.142573, 0.955472, -0.258353,
		-0.974276, -0.181499, -0.133585,
		35.062866, 35.479771, 38.924316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370266, 36.056034, 39.510788>,  <35.744858, 35.606823, 39.017826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370266, 36.056034, 39.510788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113785, 35.761181, 39.425468>,  <34.959896, 35.584270, 39.374279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113785, 35.761181, 39.425468>,  <35.370266, 36.056034, 39.510788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113785, 35.761181, 39.425468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400556, 0.084426, 0.912375,
		-0.654533, 0.670454, -0.349396,
		-0.641203, -0.737132, -0.213295,
		34.921425, 35.540043, 39.361481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720261, 36.299938, 39.681015>,  <35.370266, 36.056034, 39.510788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720261, 36.299938, 39.681015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715515, 35.902042, 39.721706>,  <34.712669, 35.663303, 39.746120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715515, 35.902042, 39.721706>,  <34.720261, 36.299938, 39.681015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715515, 35.902042, 39.721706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271896, 0.101108, 0.957000,
		-0.962254, -0.016305, -0.271666,
		-0.011864, -0.994742, 0.101725,
		34.711956, 35.603619, 39.752224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208042, 36.158115, 40.094215>,  <34.720261, 36.299938, 39.681015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208042, 36.158115, 40.094215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421795, 35.820225, 40.106022>,  <34.550045, 35.617489, 40.113106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421795, 35.820225, 40.106022>,  <34.208042, 36.158115, 40.094215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421795, 35.820225, 40.106022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121757, -0.042371, 0.991655,
		-0.836430, -0.533513, -0.125493,
		0.534378, -0.844730, 0.029519,
		34.582108, 35.566807, 40.114876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703590, 35.598190, 40.522976>,  <34.208042, 36.158115, 40.094215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703590, 35.598190, 40.522976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092262, 35.503971, 40.515366>,  <34.325466, 35.447437, 40.510799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092262, 35.503971, 40.515366>,  <33.703590, 35.598190, 40.522976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092262, 35.503971, 40.515366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006404, -0.054227, 0.998508,
		-0.236233, -0.970348, -0.051182,
		0.971675, -0.235553, -0.019024,
		34.383766, 35.433304, 40.509659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811165, 35.101704, 41.003361>,  <33.703590, 35.598190, 40.522976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811165, 35.101704, 41.003361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171459, 35.270367, 40.961639>,  <34.387634, 35.371567, 40.936607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171459, 35.270367, 40.961639>,  <33.811165, 35.101704, 41.003361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171459, 35.270367, 40.961639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072981, 0.089803, 0.993282,
		0.428197, -0.902295, 0.050116,
		0.900734, 0.421663, -0.104304,
		34.441681, 35.396866, 40.930347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041584, 35.020611, 41.601967>,  <33.811165, 35.101704, 41.003361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041584, 35.020611, 41.601967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342400, 35.242432, 41.459469>,  <34.522888, 35.375523, 41.373970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342400, 35.242432, 41.459469>,  <34.041584, 35.020611, 41.601967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342400, 35.242432, 41.459469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316873, 0.169736, 0.933157,
		0.577949, -0.814656, -0.048073,
		0.752041, 0.554550, -0.356241,
		34.568012, 35.408798, 41.352596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681377, 34.794632, 41.888523>,  <34.041584, 35.020611, 41.601967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681377, 34.794632, 41.888523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720833, 35.181309, 41.794064>,  <34.744507, 35.413315, 41.737389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720833, 35.181309, 41.794064>,  <34.681377, 34.794632, 41.888523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720833, 35.181309, 41.794064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411714, 0.176403, 0.894077,
		0.905959, -0.185418, -0.380602,
		0.098639, 0.966696, -0.236153,
		34.750423, 35.471317, 41.723217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372307, 35.000648, 42.187439>,  <34.681377, 34.794632, 41.888523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372307, 35.000648, 42.187439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177349, 35.342026, 42.113590>,  <35.060375, 35.546852, 42.069283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177349, 35.342026, 42.113590>,  <35.372307, 35.000648, 42.187439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177349, 35.342026, 42.113590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319991, 0.371295, 0.871634,
		0.812438, 0.365751, -0.454060,
		-0.487391, 0.853444, -0.184617,
		35.031132, 35.598061, 42.058205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817211, 35.506187, 42.260429>,  <35.372307, 35.000648, 42.187439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817211, 35.506187, 42.260429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467346, 35.694347, 42.307213>,  <35.257427, 35.807243, 42.335285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.467346, 35.694347, 42.307213>,  <35.817211, 35.506187, 42.260429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467346, 35.694347, 42.307213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329703, 0.400478, 0.854935,
		0.355325, 0.786344, -0.505378,
		-0.874666, 0.470404, 0.116961,
		35.204945, 35.835468, 42.342300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049393, 36.188717, 42.442200>,  <35.817211, 35.506187, 42.260429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049393, 36.188717, 42.442200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672867, 36.130909, 42.564205>,  <35.446949, 36.096226, 42.637409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672867, 36.130909, 42.564205>,  <36.049393, 36.188717, 42.442200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672867, 36.130909, 42.564205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231793, 0.380087, 0.895436,
		-0.245338, 0.913591, -0.324285,
		-0.941319, -0.144518, 0.305014,
		35.390472, 36.087555, 42.655708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798779, 36.919540, 42.746437>,  <36.049393, 36.188717, 42.442200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798779, 36.919540, 42.746437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569843, 36.622272, 42.885075>,  <35.432484, 36.443913, 42.968258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569843, 36.622272, 42.885075>,  <35.798779, 36.919540, 42.746437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569843, 36.622272, 42.885075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112572, 0.347456, 0.930915,
		-0.812254, 0.571814, -0.115202,
		-0.572338, -0.743171, 0.346593,
		35.398144, 36.399323, 42.989052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306175, 37.265209, 43.152191>,  <35.798779, 36.919540, 42.746437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306175, 37.265209, 43.152191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229874, 36.901680, 43.300602>,  <35.184093, 36.683563, 43.389648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229874, 36.901680, 43.300602>,  <35.306175, 37.265209, 43.152191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229874, 36.901680, 43.300602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294443, 0.413534, 0.861564,
		-0.936439, 0.055097, -0.346478,
		-0.190750, -0.908820, 0.371027,
		35.172649, 36.629032, 43.411911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666447, 37.302464, 43.512985>,  <35.306175, 37.265209, 43.152191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666447, 37.302464, 43.512985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844013, 36.973682, 43.655724>,  <34.950554, 36.776413, 43.741367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844013, 36.973682, 43.655724>,  <34.666447, 37.302464, 43.512985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844013, 36.973682, 43.655724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104312, 0.348126, 0.931626,
		-0.889978, -0.450784, 0.068798,
		0.443913, -0.821950, 0.356847,
		34.977188, 36.727097, 43.762779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340584, 37.082531, 44.219601>,  <34.666447, 37.302464, 43.512985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340584, 37.082531, 44.219601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700520, 36.908913, 44.237003>,  <34.916481, 36.804741, 44.247444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700520, 36.908913, 44.237003>,  <34.340584, 37.082531, 44.219601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700520, 36.908913, 44.237003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007649, 0.115414, 0.993288,
		-0.436156, -0.893466, 0.107174,
		0.899838, -0.434048, 0.043504,
		34.970470, 36.778698, 44.250053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282986, 36.659515, 44.751183>,  <34.340584, 37.082531, 44.219601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282986, 36.659515, 44.751183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680317, 36.697216, 44.724617>,  <34.918716, 36.719837, 44.708679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680317, 36.697216, 44.724617>,  <34.282986, 36.659515, 44.751183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680317, 36.697216, 44.724617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049269, 0.173786, 0.983550,
		0.104244, -0.980263, 0.167983,
		0.993330, 0.094253, -0.066413,
		34.978317, 36.725494, 44.704693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581379, 36.175598, 45.228439>,  <34.282986, 36.659515, 44.751183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581379, 36.175598, 45.228439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846764, 36.466099, 45.156460>,  <35.005993, 36.640400, 45.113274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846764, 36.466099, 45.156460>,  <34.581379, 36.175598, 45.228439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846764, 36.466099, 45.156460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084975, 0.165805, 0.982491,
		0.743368, -0.667137, 0.048292,
		0.663463, 0.726249, -0.179944,
		35.045803, 36.683975, 45.102478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940353, 36.213902, 45.792881>,  <34.581379, 36.175598, 45.228439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940353, 36.213902, 45.792881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044834, 36.560486, 45.622692>,  <35.107521, 36.768436, 45.520580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044834, 36.560486, 45.622692>,  <34.940353, 36.213902, 45.792881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044834, 36.560486, 45.622692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220089, 0.375708, 0.900225,
		0.939860, -0.328779, -0.092564,
		0.261198, 0.866457, -0.425474,
		35.123192, 36.820423, 45.495049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654839, 36.367130, 46.035278>,  <34.940353, 36.213902, 45.792881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654839, 36.367130, 46.035278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492157, 36.712051, 45.914600>,  <35.394547, 36.919006, 45.842194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.492157, 36.712051, 45.914600>,  <35.654839, 36.367130, 46.035278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492157, 36.712051, 45.914600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294038, 0.436226, 0.850440,
		0.864948, 0.257166, -0.430965,
		-0.406703, 0.862306, -0.301696,
		35.370148, 36.970745, 45.824093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230797, 36.875340, 46.166588>,  <35.654839, 36.367130, 46.035278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230797, 36.875340, 46.166588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890160, 37.083786, 46.143894>,  <35.685776, 37.208855, 46.130280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890160, 37.083786, 46.143894>,  <36.230797, 36.875340, 46.166588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890160, 37.083786, 46.143894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231166, 0.470476, 0.851595,
		0.470476, 0.712099, -0.521121,
		-0.851595, 0.521121, -0.056734,
		35.634682, 37.240124, 46.126873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392590, 37.604996, 46.367947>,  <36.230797, 36.875340, 46.166588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392590, 37.604996, 46.367947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005444, 37.534538, 46.439735>,  <35.773155, 37.492264, 46.482807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005444, 37.534538, 46.439735>,  <36.392590, 37.604996, 46.367947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005444, 37.534538, 46.439735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085753, 0.439718, 0.894033,
		-0.236393, 0.880694, -0.410483,
		-0.967866, -0.176143, 0.179468,
		35.715084, 37.481697, 46.493576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129997, 37.842850, 46.429550>,  <36.392590, 37.604996, 46.367947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129997, 37.842850, 46.429550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445404, 37.720516, 46.642986>,  <37.634647, 37.647118, 46.771046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445404, 37.720516, 46.642986>,  <37.129997, 37.842850, 46.429550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445404, 37.720516, 46.642986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454886, -0.293888, -0.840660,
		0.413917, 0.905591, -0.092615,
		0.788512, -0.305834, 0.533585,
		37.681957, 37.628765, 46.803062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799423, 38.109600, 46.102989>,  <37.129997, 37.842850, 46.429550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799423, 38.109600, 46.102989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877125, 37.789886, 46.330467>,  <37.923748, 37.598061, 46.466953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877125, 37.789886, 46.330467>,  <37.799423, 38.109600, 46.102989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877125, 37.789886, 46.330467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434044, -0.449867, -0.780529,
		0.879699, 0.398463, 0.259532,
		0.194257, -0.799279, 0.568697,
		37.935402, 37.550102, 46.501076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489796, 38.098156, 46.121140>,  <37.799423, 38.109600, 46.102989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489796, 38.098156, 46.121140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355171, 37.724586, 46.169338>,  <38.274395, 37.500446, 46.198257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355171, 37.724586, 46.169338>,  <38.489796, 38.098156, 46.121140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355171, 37.724586, 46.169338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410275, -0.260607, -0.873932,
		0.847584, -0.244699, 0.470875,
		-0.336564, -0.933920, 0.120492,
		38.254204, 37.444412, 46.205486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007210, 37.694405, 45.932659>,  <38.489796, 38.098156, 46.121140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007210, 37.694405, 45.932659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702629, 37.435169, 45.927490>,  <38.519882, 37.279629, 45.924389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702629, 37.435169, 45.927490>,  <39.007210, 37.694405, 45.932659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702629, 37.435169, 45.927490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365325, -0.412594, -0.834448,
		0.535469, -0.640113, 0.550935,
		-0.761453, -0.648091, -0.012918,
		38.474194, 37.240742, 45.923615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279942, 36.936253, 45.830402>,  <39.007210, 37.694405, 45.932659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279942, 36.936253, 45.830402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897877, 36.945198, 45.712307>,  <38.668636, 36.950565, 45.641449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897877, 36.945198, 45.712307>,  <39.279942, 36.936253, 45.830402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897877, 36.945198, 45.712307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253169, -0.455363, -0.853551,
		-0.153528, -0.890025, 0.429284,
		-0.955162, 0.022363, -0.295238,
		38.611328, 36.951908, 45.623737>
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
