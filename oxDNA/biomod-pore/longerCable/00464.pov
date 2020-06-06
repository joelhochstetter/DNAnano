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
	<24.248123, 34.745514, 34.896591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.060041, 34.886303, 35.220325>,  <23.947193, 34.970776, 35.414566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.060041, 34.886303, 35.220325>,  <24.248123, 34.745514, 34.896591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.060041, 34.886303, 35.220325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628823, -0.509844, 0.587061,
		0.619265, 0.784966, 0.018400,
		-0.470204, 0.351977, 0.809333,
		23.918980, 34.991898, 35.463127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927147, 34.537827, 35.301327>,  <24.248123, 34.745514, 34.896591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.927147, 34.537827, 35.301327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241850, 34.298229, 35.360958>,  <25.430672, 34.154472, 35.396736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241850, 34.298229, 35.360958>,  <24.927147, 34.537827, 35.301327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241850, 34.298229, 35.360958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124970, 0.391081, 0.911832,
		-0.604482, -0.698759, 0.382541,
		0.786755, -0.598993, 0.149078,
		25.477877, 34.118530, 35.405682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.828745, 34.328125, 35.964046>,  <24.927147, 34.537827, 35.301327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.828745, 34.328125, 35.964046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218510, 34.283939, 35.885746>,  <25.452368, 34.257427, 35.838764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218510, 34.283939, 35.885746>,  <24.828745, 34.328125, 35.964046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.218510, 34.283939, 35.885746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224400, 0.428069, 0.875444,
		-0.012908, -0.896970, 0.441903,
		0.974411, -0.110464, -0.195754,
		25.510834, 34.250801, 35.827019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060522, 34.140232, 36.606716>,  <24.828745, 34.328125, 35.964046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060522, 34.140232, 36.606716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384693, 34.230068, 36.390285>,  <25.579195, 34.283970, 36.260426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384693, 34.230068, 36.390285>,  <25.060522, 34.140232, 36.606716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.384693, 34.230068, 36.390285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458691, 0.331284, 0.824532,
		0.364443, -0.916409, 0.165458,
		0.810422, 0.224601, -0.541082,
		25.627821, 34.297447, 36.227962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547550, 33.821774, 36.909107>,  <25.060522, 34.140232, 36.606716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547550, 33.821774, 36.909107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687843, 34.137928, 36.708199>,  <25.772018, 34.327621, 36.587654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687843, 34.137928, 36.708199>,  <25.547550, 33.821774, 36.909107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687843, 34.137928, 36.708199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309377, 0.408431, 0.858761,
		0.883897, -0.456584, -0.101279,
		0.350731, 0.790390, -0.502267,
		25.793062, 34.375046, 36.557518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230061, 33.939758, 37.123123>,  <25.547550, 33.821774, 36.909107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230061, 33.939758, 37.123123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036083, 34.267338, 37.000389>,  <25.919697, 34.463886, 36.926750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036083, 34.267338, 37.000389>,  <26.230061, 33.939758, 37.123123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036083, 34.267338, 37.000389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377148, 0.512385, 0.771505,
		0.789043, 0.258416, -0.557345,
		-0.484944, 0.818952, -0.306833,
		25.890600, 34.513023, 36.908340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710602, 34.399471, 37.204590>,  <26.230061, 33.939758, 37.123123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710602, 34.399471, 37.204590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357639, 34.585415, 37.233627>,  <26.145863, 34.696980, 37.251049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357639, 34.585415, 37.233627>,  <26.710602, 34.399471, 37.204590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357639, 34.585415, 37.233627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337619, 0.518173, 0.785818,
		0.327678, 0.717918, -0.614183,
		-0.882406, 0.464855, 0.072589,
		26.092918, 34.724873, 37.255405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678082, 35.162804, 36.919617>,  <26.710602, 34.399471, 37.204590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678082, 35.162804, 36.919617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454123, 35.069893, 37.237751>,  <26.319748, 35.014149, 37.428631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.454123, 35.069893, 37.237751>,  <26.678082, 35.162804, 36.919617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.454123, 35.069893, 37.237751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548449, 0.615615, 0.565881,
		-0.621063, 0.753038, -0.217290,
		-0.559897, -0.232275, 0.795339,
		26.286154, 35.000210, 37.476353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463306, 35.754360, 37.269226>,  <26.678082, 35.162804, 36.919617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463306, 35.754360, 37.269226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441658, 35.471123, 37.550842>,  <26.428669, 35.301182, 37.719810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.441658, 35.471123, 37.550842>,  <26.463306, 35.754360, 37.269226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.441658, 35.471123, 37.550842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605854, 0.537176, 0.586841,
		-0.793733, 0.458305, 0.399931,
		-0.054119, -0.708095, 0.704040,
		26.425423, 35.258694, 37.762054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339249, 36.083698, 37.891464>,  <26.463306, 35.754360, 37.269226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339249, 36.083698, 37.891464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489443, 35.729324, 38.000370>,  <26.579559, 35.516701, 38.065712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489443, 35.729324, 38.000370>,  <26.339249, 36.083698, 37.891464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489443, 35.729324, 38.000370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622244, 0.458679, 0.634371,
		-0.686893, -0.068785, 0.723496,
		0.375488, -0.885936, 0.272262,
		26.602089, 35.463543, 38.082050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351368, 36.072975, 38.569965>,  <26.339249, 36.083698, 37.891464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351368, 36.072975, 38.569965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646225, 35.831120, 38.449276>,  <26.823139, 35.686008, 38.376862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646225, 35.831120, 38.449276>,  <26.351368, 36.072975, 38.569965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646225, 35.831120, 38.449276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635059, 0.467280, 0.615101,
		-0.230921, -0.645031, 0.728431,
		0.737140, -0.604636, -0.301728,
		26.867367, 35.649727, 38.358757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914696, 35.966446, 39.122166>,  <26.351368, 36.072975, 38.569965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914696, 35.966446, 39.122166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067497, 35.922039, 38.755177>,  <27.159178, 35.895393, 38.534985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067497, 35.922039, 38.755177>,  <26.914696, 35.966446, 39.122166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067497, 35.922039, 38.755177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711531, 0.668849, 0.215323,
		0.589742, -0.735062, 0.334497,
		0.382004, -0.111020, -0.917468,
		27.182098, 35.888733, 38.479935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676773, 35.727688, 39.147438>,  <26.914696, 35.966446, 39.122166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676773, 35.727688, 39.147438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528030, 35.963150, 38.860329>,  <27.438784, 36.104427, 38.688061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.528030, 35.963150, 38.860329>,  <27.676773, 35.727688, 39.147438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528030, 35.963150, 38.860329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690546, 0.692162, 0.209902,
		0.620378, -0.417603, -0.663882,
		-0.371858, 0.588660, -0.717775,
		27.416473, 36.139748, 38.644997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251345, 36.025394, 38.789944>,  <27.676773, 35.727688, 39.147438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251345, 36.025394, 38.789944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920132, 36.248856, 38.770901>,  <27.721403, 36.382931, 38.759476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.920132, 36.248856, 38.770901>,  <28.251345, 36.025394, 38.789944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.920132, 36.248856, 38.770901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539477, 0.816976, 0.203749,
		0.152718, 0.143028, -0.977865,
		-0.828035, 0.558652, -0.047607,
		27.671721, 36.416451, 38.756618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585855, 35.664589, 38.203224>,  <28.251345, 36.025394, 38.789944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585855, 35.664589, 38.203224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770046, 35.405399, 37.960545>,  <28.880562, 35.249886, 37.814938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770046, 35.405399, 37.960545>,  <28.585855, 35.664589, 38.203224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770046, 35.405399, 37.960545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681459, -0.696034, 0.226165,
		-0.568835, 0.309299, -0.762077,
		0.460479, -0.647974, -0.606703,
		28.908190, 35.211006, 37.778534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084009, 35.214180, 38.243198>,  <28.585855, 35.664589, 38.203224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084009, 35.214180, 38.243198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732552, 35.331684, 38.393764>,  <27.521677, 35.402187, 38.484104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.732552, 35.331684, 38.393764>,  <28.084009, 35.214180, 38.243198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.732552, 35.331684, 38.393764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473805, -0.633956, -0.611235,
		0.059075, -0.715407, 0.696206,
		-0.878646, 0.293757, 0.376415,
		27.468958, 35.419811, 38.506687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641249, 34.688164, 38.078777>,  <28.084009, 35.214180, 38.243198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641249, 34.688164, 38.078777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379982, 34.963840, 38.204243>,  <27.223221, 35.129246, 38.279522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379982, 34.963840, 38.204243>,  <27.641249, 34.688164, 38.078777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379982, 34.963840, 38.204243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756256, -0.572916, -0.315982,
		-0.038071, -0.443597, 0.895417,
		-0.653168, 0.689194, 0.313662,
		27.184032, 35.170597, 38.298340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159391, 34.345909, 38.350441>,  <27.641249, 34.688164, 38.078777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159391, 34.345909, 38.350441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969488, 34.695229, 38.306705>,  <26.855547, 34.904819, 38.280464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969488, 34.695229, 38.306705>,  <27.159391, 34.345909, 38.350441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969488, 34.695229, 38.306705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757350, -0.468659, -0.454731,
		-0.448358, -0.133080, 0.883892,
		-0.474759, 0.873297, -0.109339,
		26.827061, 34.957218, 38.273903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.467482, 34.281918, 38.664619>,  <27.159391, 34.345909, 38.350441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.467482, 34.281918, 38.664619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460087, 34.569305, 38.386494>,  <26.455650, 34.741737, 38.219620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460087, 34.569305, 38.386494>,  <26.467482, 34.281918, 38.664619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460087, 34.569305, 38.386494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792212, -0.434786, -0.428207,
		-0.609966, 0.542918, 0.577219,
		-0.018486, 0.718472, -0.695310,
		26.454540, 34.784847, 38.177902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694006, 34.489166, 38.513786>,  <26.467482, 34.281918, 38.664619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.694006, 34.489166, 38.513786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908316, 34.626896, 38.205399>,  <26.036901, 34.709534, 38.020367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908316, 34.626896, 38.205399>,  <25.694006, 34.489166, 38.513786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908316, 34.626896, 38.205399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818943, -0.010448, -0.573779,
		-0.205619, 0.938794, 0.276382,
		0.535773, 0.344321, -0.770967,
		26.069048, 34.730194, 37.974110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432188, 35.096992, 38.220963>,  <25.694006, 34.489166, 38.513786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432188, 35.096992, 38.220963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613056, 34.918282, 37.912174>,  <25.721577, 34.811054, 37.726902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613056, 34.918282, 37.912174>,  <25.432188, 35.096992, 38.220963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613056, 34.918282, 37.912174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848795, 0.050360, -0.526319,
		0.274022, 0.893229, -0.356447,
		0.452172, -0.446773, -0.771967,
		25.748709, 34.784248, 37.680584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109299, 35.350555, 37.675076>,  <25.432188, 35.096992, 38.220963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109299, 35.350555, 37.675076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273415, 35.013466, 37.535656>,  <25.371883, 34.811214, 37.452003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273415, 35.013466, 37.535656>,  <25.109299, 35.350555, 37.675076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273415, 35.013466, 37.535656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803827, -0.153673, -0.574671,
		0.430725, 0.515953, -0.740452,
		0.410290, -0.842720, -0.348546,
		25.396502, 34.760651, 37.431091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361895, 35.413391, 36.919090>,  <25.109299, 35.350555, 37.675076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361895, 35.413391, 36.919090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207010, 35.088387, 37.093395>,  <25.114080, 34.893383, 37.197979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207010, 35.088387, 37.093395>,  <25.361895, 35.413391, 36.919090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207010, 35.088387, 37.093395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864088, 0.154948, -0.478897,
		0.321589, -0.561974, -0.762080,
		-0.387210, -0.812513, 0.435766,
		25.090847, 34.844631, 37.224125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693584, 35.603989, 36.394932>,  <25.361895, 35.413391, 36.919090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693584, 35.603989, 36.394932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852730, 35.263462, 36.531734>,  <25.948217, 35.059147, 36.613815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852730, 35.263462, 36.531734>,  <25.693584, 35.603989, 36.394932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852730, 35.263462, 36.531734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164735, -0.433010, -0.886208,
		0.902534, 0.296249, -0.312520,
		0.397863, -0.851316, 0.342004,
		25.972088, 35.008068, 36.634335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143353, 35.392807, 35.903378>,  <25.693584, 35.603989, 36.394932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143353, 35.392807, 35.903378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062166, 35.062744, 36.114250>,  <26.013454, 34.864704, 36.240772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062166, 35.062744, 36.114250>,  <26.143353, 35.392807, 35.903378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062166, 35.062744, 36.114250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038530, -0.531236, -0.846347,
		0.978427, -0.192093, 0.076031,
		-0.202968, -0.825159, 0.527177,
		26.001276, 34.815197, 36.272404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689787, 34.836327, 35.708477>,  <26.143353, 35.392807, 35.903378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689787, 34.836327, 35.708477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358170, 34.670349, 35.858414>,  <26.159199, 34.570763, 35.948376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358170, 34.670349, 35.858414>,  <26.689787, 34.836327, 35.708477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358170, 34.670349, 35.858414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064843, -0.594482, -0.801490,
		0.555412, -0.688776, 0.465946,
		-0.829043, -0.414944, 0.374845,
		26.109457, 34.545864, 35.970867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768232, 34.110649, 35.478764>,  <26.689787, 34.836327, 35.708477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768232, 34.110649, 35.478764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389360, 34.166271, 35.594360>,  <26.162037, 34.199646, 35.663719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.389360, 34.166271, 35.594360>,  <26.768232, 34.110649, 35.478764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.389360, 34.166271, 35.594360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314808, -0.575150, -0.755049,
		0.061216, -0.806142, 0.588547,
		-0.947179, 0.139058, 0.288988,
		26.105207, 34.207989, 35.681057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472904, 33.540581, 35.641014>,  <26.768232, 34.110649, 35.478764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472904, 33.540581, 35.641014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185431, 33.787964, 35.513889>,  <26.012945, 33.936394, 35.437614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185431, 33.787964, 35.513889>,  <26.472904, 33.540581, 35.641014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185431, 33.787964, 35.513889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302189, -0.689449, -0.658287,
		-0.626235, -0.377063, 0.682388,
		-0.718687, 0.618453, -0.317813,
		25.969824, 33.973499, 35.418545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904997, 33.144924, 35.574978>,  <26.472904, 33.540581, 35.641014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904997, 33.144924, 35.574978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902454, 33.435127, 35.299706>,  <25.900928, 33.609249, 35.134541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902454, 33.435127, 35.299706>,  <25.904997, 33.144924, 35.574978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902454, 33.435127, 35.299706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070389, -0.686813, -0.723418,
		-0.997499, 0.043842, 0.055434,
		-0.006356, 0.725511, -0.688182,
		25.900547, 33.652779, 35.093250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283190, 33.199123, 35.319191>,  <25.904997, 33.144924, 35.574978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283190, 33.199123, 35.319191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549761, 33.309551, 35.042160>,  <25.709703, 33.375809, 34.875942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.549761, 33.309551, 35.042160>,  <25.283190, 33.199123, 35.319191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.549761, 33.309551, 35.042160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351685, -0.702687, -0.618505,
		-0.657411, 0.655758, -0.371203,
		0.666430, 0.276066, -0.692574,
		25.749689, 33.392372, 34.834389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835199, 33.458481, 34.745205>,  <25.283190, 33.199123, 35.319191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835199, 33.458481, 34.745205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205729, 33.345520, 34.645466>,  <25.428045, 33.277744, 34.585621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.205729, 33.345520, 34.645466>,  <24.835199, 33.458481, 34.745205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.205729, 33.345520, 34.645466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376719, -0.689243, -0.618892,
		0.002917, 0.667227, -0.744848,
		0.926323, -0.282403, -0.249347,
		25.483625, 33.260799, 34.570663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.855261, 33.580238, 34.042820>,  <24.835199, 33.458481, 34.745205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.855261, 33.580238, 34.042820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135941, 33.315380, 34.148026>,  <25.304348, 33.156464, 34.211151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.135941, 33.315380, 34.148026>,  <24.855261, 33.580238, 34.042820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.135941, 33.315380, 34.148026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435268, -0.690665, -0.577515,
		0.564056, 0.290760, -0.772852,
		0.701700, -0.662148, 0.263016,
		25.346451, 33.116737, 34.226929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075956, 33.389511, 33.432938>,  <24.855261, 33.580238, 34.042820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075956, 33.389511, 33.432938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.158484, 33.091766, 33.686977>,  <25.208000, 32.913116, 33.839401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.158484, 33.091766, 33.686977>,  <25.075956, 33.389511, 33.432938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.158484, 33.091766, 33.686977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289708, -0.666433, -0.686976,
		0.934613, -0.042258, -0.353146,
		0.206319, -0.744367, 0.635099,
		25.220379, 32.868458, 33.877506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.569702, 32.934460, 33.139153>,  <25.075956, 33.389511, 33.432938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.569702, 32.934460, 33.139153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367603, 32.726021, 33.414303>,  <25.246344, 32.600956, 33.579395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.367603, 32.726021, 33.414303>,  <25.569702, 32.934460, 33.139153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.367603, 32.726021, 33.414303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331836, -0.618503, -0.712278,
		0.796624, -0.588140, 0.139577,
		-0.505247, -0.521101, 0.687880,
		25.216028, 32.569691, 33.620667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602991, 32.210289, 32.956600>,  <25.569702, 32.934460, 33.139153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602991, 32.210289, 32.956600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264479, 32.222656, 33.169334>,  <25.061371, 32.230076, 33.296974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264479, 32.222656, 33.169334>,  <25.602991, 32.210289, 32.956600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264479, 32.222656, 33.169334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452418, -0.568834, -0.686837,
		0.281292, -0.821871, 0.495382,
		-0.846282, 0.030918, 0.531838,
		25.010593, 32.231934, 33.328884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040897, 31.835224, 33.280067>,  <25.602991, 32.210289, 32.956600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040897, 31.835224, 33.280067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753042, 31.729057, 33.536716>,  <25.580330, 31.665358, 33.690704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753042, 31.729057, 33.536716>,  <26.040897, 31.835224, 33.280067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753042, 31.729057, 33.536716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448328, -0.528003, -0.721259,
		0.530212, -0.806701, 0.260976,
		-0.719637, -0.265418, 0.641620,
		25.537151, 31.649431, 33.729202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928246, 31.157192, 33.236557>,  <26.040897, 31.835224, 33.280067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928246, 31.157192, 33.236557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578178, 31.298376, 33.368919>,  <25.368137, 31.383087, 33.448338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578178, 31.298376, 33.368919>,  <25.928246, 31.157192, 33.236557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578178, 31.298376, 33.368919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468578, -0.448042, -0.761376,
		-0.120475, -0.821388, 0.557501,
		-0.875169, 0.352960, 0.330907,
		25.315628, 31.404264, 33.468193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442141, 30.640694, 33.356388>,  <25.928246, 31.157192, 33.236557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442141, 30.640694, 33.356388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196098, 30.952534, 33.309288>,  <25.048473, 31.139639, 33.281029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.196098, 30.952534, 33.309288>,  <25.442141, 30.640694, 33.356388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.196098, 30.952534, 33.309288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448827, -0.469011, -0.760647,
		-0.648228, -0.415030, 0.638398,
		-0.615107, 0.779602, -0.117749,
		25.011566, 31.186415, 33.273964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.784149, 30.481377, 33.283817>,  <25.442141, 30.640694, 33.356388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.784149, 30.481377, 33.283817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.821863, 30.831306, 33.093746>,  <24.844492, 31.041264, 32.979706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.821863, 30.831306, 33.093746>,  <24.784149, 30.481377, 33.283817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.821863, 30.831306, 33.093746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362754, -0.414298, -0.834725,
		-0.927103, 0.251074, 0.278284,
		0.094285, 0.874825, -0.475175,
		24.850149, 31.093754, 32.951195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.701777, 30.004536, 32.758747>,  <24.784149, 30.481377, 33.283817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.701777, 30.004536, 32.758747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444283, 30.223551, 32.544903>,  <24.289787, 30.354959, 32.416595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.444283, 30.223551, 32.544903>,  <24.701777, 30.004536, 32.758747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.444283, 30.223551, 32.544903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008235, 0.693611, 0.720303,
		0.765205, 0.468085, -0.441992,
		-0.643734, 0.547540, -0.534609,
		24.251162, 30.387814, 32.384521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.960011, 30.692801, 32.520016>,  <24.701777, 30.004536, 32.758747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.960011, 30.692801, 32.520016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.562307, 30.704515, 32.561192>,  <24.323687, 30.711544, 32.585899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.562307, 30.704515, 32.561192>,  <24.960011, 30.692801, 32.520016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.562307, 30.704515, 32.561192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086466, 0.786653, 0.611310,
		-0.063077, 0.616700, -0.784667,
		-0.994256, 0.029287, 0.102943,
		24.264030, 30.713303, 32.592075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572231, 31.295425, 32.154655>,  <24.960011, 30.692801, 32.520016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572231, 31.295425, 32.154655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412325, 31.190119, 32.505856>,  <24.316381, 31.126936, 32.716576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412325, 31.190119, 32.505856>,  <24.572231, 31.295425, 32.154655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.412325, 31.190119, 32.505856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238205, 0.895118, 0.376857,
		-0.885125, 0.359798, -0.295127,
		-0.399766, -0.263265, 0.877997,
		24.292395, 31.111139, 32.769253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.396492, 31.918436, 32.438927>,  <24.572231, 31.295425, 32.154655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.396492, 31.918436, 32.438927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412643, 31.659826, 32.743656>,  <24.422335, 31.504660, 32.926495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.412643, 31.659826, 32.743656>,  <24.396492, 31.918436, 32.438927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.412643, 31.659826, 32.743656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520331, 0.664509, 0.536361,
		-0.853009, 0.374742, 0.363239,
		0.040379, -0.646526, 0.761823,
		24.424757, 31.465868, 32.972202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.194975, 32.190212, 33.149197>,  <24.396492, 31.918436, 32.438927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.194975, 32.190212, 33.149197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.442312, 31.880503, 33.203094>,  <24.590715, 31.694677, 33.235432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.442312, 31.880503, 33.203094>,  <24.194975, 32.190212, 33.149197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.442312, 31.880503, 33.203094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538957, 0.542550, 0.644332,
		-0.571993, -0.325797, 0.752781,
		0.618343, -0.774271, 0.134744,
		24.627815, 31.648222, 33.243519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.196037, 31.957451, 33.885376>,  <24.194975, 32.190212, 33.149197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.196037, 31.957451, 33.885376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538868, 31.820486, 33.731403>,  <24.744566, 31.738308, 33.639019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538868, 31.820486, 33.731403>,  <24.196037, 31.957451, 33.885376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538868, 31.820486, 33.731403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506573, 0.424039, 0.750716,
		-0.093828, -0.838418, 0.536890,
		0.857076, -0.342412, -0.384933,
		24.795990, 31.717762, 33.615925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.468664, 31.580133, 34.388954>,  <24.196037, 31.957451, 33.885376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.468664, 31.580133, 34.388954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750662, 31.733294, 34.150166>,  <24.919861, 31.825190, 34.006893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.750662, 31.733294, 34.150166>,  <24.468664, 31.580133, 34.388954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.750662, 31.733294, 34.150166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472540, 0.374071, 0.797983,
		0.528855, -0.844665, 0.082782,
		0.704995, 0.382899, -0.596967,
		24.962160, 31.848164, 33.971077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.962208, 31.830406, 34.780910>,  <24.468664, 31.580133, 34.388954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.962208, 31.830406, 34.780910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083620, 32.022194, 34.451553>,  <25.156467, 32.137268, 34.253941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083620, 32.022194, 34.451553>,  <24.962208, 31.830406, 34.780910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083620, 32.022194, 34.451553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477553, 0.671236, 0.566908,
		0.824507, -0.565288, -0.025233,
		0.303530, 0.479470, -0.823394,
		25.174679, 32.166035, 34.204536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688873, 31.981565, 34.739410>,  <24.962208, 31.830406, 34.780910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688873, 31.981565, 34.739410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526995, 32.258068, 34.499947>,  <25.429869, 32.423969, 34.356270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.526995, 32.258068, 34.499947>,  <25.688873, 31.981565, 34.739410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526995, 32.258068, 34.499947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649693, 0.678047, 0.343730,
		0.643522, -0.249837, -0.723506,
		-0.404695, 0.691255, -0.598655,
		25.405586, 32.465446, 34.320351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.306768, 32.400562, 34.600010>,  <25.688873, 31.981565, 34.739410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.306768, 32.400562, 34.600010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000032, 32.627861, 34.480640>,  <25.815990, 32.764240, 34.409019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000032, 32.627861, 34.480640>,  <26.306768, 32.400562, 34.600010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000032, 32.627861, 34.480640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492055, 0.819014, 0.295122,
		0.412115, 0.079470, -0.907659,
		-0.766839, 0.568243, -0.298424,
		25.769981, 32.798332, 34.391113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.490366, 32.935863, 33.963486>,  <26.306768, 32.400562, 34.600010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.490366, 32.935863, 33.963486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191509, 33.059448, 34.198883>,  <26.012196, 33.133598, 34.340122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191509, 33.059448, 34.198883>,  <26.490366, 32.935863, 33.963486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191509, 33.059448, 34.198883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541819, 0.795943, 0.270012,
		-0.384983, 0.520593, -0.762083,
		-0.747141, 0.308961, 0.588492,
		25.967367, 33.152138, 34.375431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635048, 33.683372, 33.929436>,  <26.490366, 32.935863, 33.963486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635048, 33.683372, 33.929436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355902, 33.589863, 34.200237>,  <26.188414, 33.533756, 34.362717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355902, 33.589863, 34.200237>,  <26.635048, 33.683372, 33.929436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355902, 33.589863, 34.200237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342692, 0.721028, 0.602230,
		-0.628926, 0.652278, -0.423066,
		-0.697864, -0.233777, 0.677004,
		26.146544, 33.519730, 34.403339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463339, 34.343048, 34.210434>,  <26.635048, 33.683372, 33.929436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463339, 34.343048, 34.210434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414007, 34.023285, 34.445633>,  <26.384409, 33.831429, 34.586750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.414007, 34.023285, 34.445633>,  <26.463339, 34.343048, 34.210434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414007, 34.023285, 34.445633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399373, 0.502433, 0.766852,
		-0.908456, 0.329402, 0.257298,
		-0.123327, -0.799409, 0.587993,
		26.377008, 33.783463, 34.622032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.962147, 34.819382, 34.477463>,  <26.463339, 34.343048, 34.210434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.962147, 34.819382, 34.477463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209505, 34.708241, 34.183422>,  <27.357920, 34.641556, 34.006996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209505, 34.708241, 34.183422>,  <26.962147, 34.819382, 34.477463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209505, 34.708241, 34.183422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470198, 0.618685, -0.629399,
		0.629682, 0.734864, 0.251946,
		0.618397, -0.277856, -0.735106,
		27.395023, 34.624882, 33.962891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208826, 35.440586, 34.111759>,  <26.962147, 34.819382, 34.477463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208826, 35.440586, 34.111759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236317, 35.127876, 33.863857>,  <27.252811, 34.940250, 33.715115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236317, 35.127876, 33.863857>,  <27.208826, 35.440586, 34.111759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236317, 35.127876, 33.863857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443583, 0.532494, -0.720892,
		0.893595, 0.324458, -0.310187,
		0.068727, -0.781778, -0.619757,
		27.256935, 34.893341, 33.677929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805889, 35.534492, 33.528549>,  <27.208826, 35.440586, 34.111759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805889, 35.534492, 33.528549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839792, 35.519726, 33.926838>,  <27.860134, 35.510864, 34.165810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.839792, 35.519726, 33.926838>,  <27.805889, 35.534492, 33.528549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839792, 35.519726, 33.926838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993562, -0.078520, 0.081661,
		0.075169, -0.996229, -0.043332,
		0.084756, -0.036914, 0.995718,
		27.865219, 35.508652, 34.225552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204414, 35.166969, 34.044266>,  <27.805889, 35.534492, 33.528549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204414, 35.166969, 34.044266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086187, 35.249153, 34.417454>,  <28.015251, 35.298462, 34.641365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.086187, 35.249153, 34.417454>,  <28.204414, 35.166969, 34.044266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.086187, 35.249153, 34.417454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939936, 0.237110, 0.245561,
		-0.170763, 0.949508, -0.263199,
		-0.295569, 0.205458, 0.932966,
		27.997517, 35.310791, 34.697342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474092, 35.871387, 34.274555>,  <28.204414, 35.166969, 34.044266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474092, 35.871387, 34.274555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426908, 35.567112, 34.529877>,  <28.398598, 35.384544, 34.683071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426908, 35.567112, 34.529877>,  <28.474092, 35.871387, 34.274555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426908, 35.567112, 34.529877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987494, -0.157569, -0.005294,
		0.104604, 0.629697, 0.769766,
		-0.117958, -0.760693, 0.638304,
		28.391521, 35.338905, 34.721367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979992, 35.959240, 34.731068>,  <28.474092, 35.871387, 34.274555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979992, 35.959240, 34.731068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878426, 35.572365, 34.727585>,  <28.817486, 35.340240, 34.725494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878426, 35.572365, 34.727585>,  <28.979992, 35.959240, 34.731068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878426, 35.572365, 34.727585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966010, -0.253133, -0.052427,
		0.048501, -0.021727, 0.998587,
		-0.253915, -0.967187, -0.008712,
		28.802252, 35.282207, 34.724972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491356, 35.604118, 35.126072>,  <28.979992, 35.959240, 34.731068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491356, 35.604118, 35.126072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318735, 35.315449, 34.909573>,  <29.215162, 35.142246, 34.779675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318735, 35.315449, 34.909573>,  <29.491356, 35.604118, 35.126072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318735, 35.315449, 34.909573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890390, -0.437078, -0.127155,
		-0.144803, -0.536796, 0.831193,
		-0.431552, -0.721674, -0.541248,
		29.189270, 35.098946, 34.747196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816875, 34.929390, 35.406189>,  <29.491356, 35.604118, 35.126072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816875, 34.929390, 35.406189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693575, 34.935146, 35.025711>,  <29.619595, 34.938599, 34.797424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693575, 34.935146, 35.025711>,  <29.816875, 34.929390, 35.406189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693575, 34.935146, 35.025711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927961, -0.215598, -0.303982,
		-0.209450, -0.976376, 0.053107,
		-0.308250, 0.014388, -0.951197,
		29.601101, 34.939465, 34.740353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087416, 34.259701, 34.981625>,  <29.816875, 34.929390, 35.406189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087416, 34.259701, 34.981625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022247, 34.591328, 34.767670>,  <29.983147, 34.790302, 34.639297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022247, 34.591328, 34.767670>,  <30.087416, 34.259701, 34.981625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022247, 34.591328, 34.767670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828957, -0.178977, -0.529903,
		-0.535058, -0.529730, -0.658102,
		-0.162921, 0.829068, -0.534887,
		29.973372, 34.840050, 34.607204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197899, 34.200546, 34.153038>,  <30.087416, 34.259701, 34.981625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197899, 34.200546, 34.153038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252502, 34.580242, 34.266388>,  <30.285265, 34.808060, 34.334396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252502, 34.580242, 34.266388>,  <30.197899, 34.200546, 34.153038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252502, 34.580242, 34.266388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875658, 0.018142, -0.482591,
		-0.463237, 0.314018, -0.828737,
		0.136507, 0.949244, 0.283376,
		30.293455, 34.865017, 34.351402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092999, 34.679348, 33.541595>,  <30.197899, 34.200546, 34.153038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092999, 34.679348, 33.541595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345463, 34.815559, 33.820358>,  <30.496941, 34.897285, 33.987617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345463, 34.815559, 33.820358>,  <30.092999, 34.679348, 33.541595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345463, 34.815559, 33.820358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760214, -0.093209, -0.642952,
		-0.153985, 0.935603, -0.317704,
		0.631161, 0.340528, 0.696905,
		30.534811, 34.917717, 34.029430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405323, 35.488304, 33.554268>,  <30.092999, 34.679348, 33.541595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405323, 35.488304, 33.554268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653595, 35.201122, 33.680317>,  <30.802557, 35.028812, 33.755947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.653595, 35.201122, 33.680317>,  <30.405323, 35.488304, 33.554268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653595, 35.201122, 33.680317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652733, 0.250476, -0.714984,
		0.434395, 0.649465, 0.624096,
		0.620678, -0.717954, 0.315121,
		30.839798, 34.985737, 33.774853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120953, 35.784801, 33.555950>,  <30.405323, 35.488304, 33.554268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120953, 35.784801, 33.555950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084463, 35.395737, 33.470520>,  <31.062569, 35.162300, 33.419262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.084463, 35.395737, 33.470520>,  <31.120953, 35.784801, 33.555950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084463, 35.395737, 33.470520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574371, 0.123809, -0.809178,
		0.813496, -0.196488, 0.547372,
		-0.091224, -0.972658, -0.213575,
		31.057096, 35.103939, 33.406448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829393, 35.488705, 33.490738>,  <31.120953, 35.784801, 33.555950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829393, 35.488705, 33.490738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545418, 35.287918, 33.293148>,  <31.375032, 35.167446, 33.174595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545418, 35.287918, 33.293148>,  <31.829393, 35.488705, 33.490738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545418, 35.287918, 33.293148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536735, 0.068467, -0.840969,
		0.455963, -0.862170, 0.220818,
		-0.709939, -0.501971, -0.493975,
		31.332436, 35.137325, 33.144955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080395, 34.842369, 33.166500>,  <31.829393, 35.488705, 33.490738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080395, 34.842369, 33.166500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782925, 35.022114, 32.968502>,  <31.604443, 35.129959, 32.849701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782925, 35.022114, 32.968502>,  <32.080395, 34.842369, 33.166500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782925, 35.022114, 32.968502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566881, 0.031358, -0.823203,
		-0.354392, -0.892800, -0.278053,
		-0.743675, 0.449360, -0.494998,
		31.559822, 35.156921, 32.820004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060204, 34.542664, 32.480122>,  <32.080395, 34.842369, 33.166500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060204, 34.542664, 32.480122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914103, 34.915020, 32.477940>,  <31.826443, 35.138435, 32.476631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914103, 34.915020, 32.477940>,  <32.060204, 34.542664, 32.480122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914103, 34.915020, 32.477940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471747, 0.180037, -0.863158,
		-0.802526, -0.317841, -0.504905,
		-0.365249, 0.930894, -0.005456,
		31.804527, 35.194286, 32.476303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868393, 34.590115, 31.842035>,  <32.060204, 34.542664, 32.480122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868393, 34.590115, 31.842035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927898, 34.956154, 31.991949>,  <31.963602, 35.175777, 32.081898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927898, 34.956154, 31.991949>,  <31.868393, 34.590115, 31.842035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927898, 34.956154, 31.991949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510715, 0.253446, -0.821545,
		-0.846782, 0.313626, -0.429651,
		0.148764, 0.915098, 0.374787,
		31.972528, 35.230682, 32.104385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656851, 35.041393, 31.283043>,  <31.868393, 34.590115, 31.842035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656851, 35.041393, 31.283043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913422, 35.234848, 31.521259>,  <32.067364, 35.350922, 31.664188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913422, 35.234848, 31.521259>,  <31.656851, 35.041393, 31.283043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913422, 35.234848, 31.521259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509871, 0.311292, -0.801954,
		-0.573240, 0.818043, -0.046921,
		0.641426, 0.483635, 0.595541,
		32.105850, 35.379940, 31.699921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835560, 35.665379, 30.901283>,  <31.656851, 35.041393, 31.283043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835560, 35.665379, 30.901283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122955, 35.602341, 31.172262>,  <32.295395, 35.564518, 31.334850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122955, 35.602341, 31.172262>,  <31.835560, 35.665379, 30.901283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122955, 35.602341, 31.172262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695529, 0.158161, -0.700874,
		0.003309, 0.974756, 0.223250,
		0.718490, -0.157596, 0.677448,
		32.338501, 35.555061, 31.375496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309826, 36.143959, 30.669939>,  <31.835560, 35.665379, 30.901283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309826, 36.143959, 30.669939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552906, 35.934147, 30.908455>,  <32.698753, 35.808258, 31.051565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552906, 35.934147, 30.908455>,  <32.309826, 36.143959, 30.669939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552906, 35.934147, 30.908455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755486, 0.150356, -0.637679,
		0.244829, 0.838007, 0.487650,
		0.607700, -0.524535, 0.596291,
		32.735214, 35.776787, 31.087341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861740, 36.548500, 30.858540>,  <32.309826, 36.143959, 30.669939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861740, 36.548500, 30.858540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984261, 36.167919, 30.870586>,  <33.057774, 35.939571, 30.877815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984261, 36.167919, 30.870586>,  <32.861740, 36.548500, 30.858540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984261, 36.167919, 30.870586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676032, 0.195144, -0.710563,
		0.670192, 0.238010, 0.702989,
		0.306305, -0.951457, 0.030119,
		33.076153, 35.882481, 30.879622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537090, 36.628170, 30.639231>,  <32.861740, 36.548500, 30.858540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537090, 36.628170, 30.639231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490925, 36.230923, 30.631287>,  <33.463226, 35.992573, 30.626520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490925, 36.230923, 30.631287>,  <33.537090, 36.628170, 30.639231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490925, 36.230923, 30.631287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787158, -0.079246, -0.611639,
		0.605857, -0.086225, 0.790887,
		-0.115413, -0.993119, -0.019861,
		33.456303, 35.932987, 30.625328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229610, 36.367180, 30.769787>,  <33.537090, 36.628170, 30.639231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229610, 36.367180, 30.769787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022968, 36.083466, 30.577940>,  <33.898983, 35.913235, 30.462831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022968, 36.083466, 30.577940>,  <34.229610, 36.367180, 30.769787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022968, 36.083466, 30.577940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806110, -0.214077, -0.551686,
		0.288629, -0.671627, 0.682357,
		-0.516604, -0.709287, -0.479616,
		33.867989, 35.870678, 30.434055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693077, 35.762749, 30.751352>,  <34.229610, 36.367180, 30.769787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693077, 35.762749, 30.751352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416611, 35.716309, 30.466028>,  <34.250732, 35.688446, 30.294834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416611, 35.716309, 30.466028>,  <34.693077, 35.762749, 30.751352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416611, 35.716309, 30.466028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716383, -0.240257, -0.655036,
		-0.095329, -0.963742, 0.249228,
		-0.691164, -0.116098, -0.713311,
		34.209263, 35.681480, 30.252035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042072, 35.228260, 30.376293>,  <34.693077, 35.762749, 30.751352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042072, 35.228260, 30.376293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750591, 35.359230, 30.135698>,  <34.575703, 35.437813, 29.991341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750591, 35.359230, 30.135698>,  <35.042072, 35.228260, 30.376293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750591, 35.359230, 30.135698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517423, -0.312137, -0.796771,
		-0.448633, -0.891829, 0.058034,
		-0.728698, 0.327430, -0.601488,
		34.531982, 35.457458, 29.955252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742958, 34.625225, 29.934031>,  <35.042072, 35.228260, 30.376293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742958, 34.625225, 29.934031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658737, 34.967201, 29.744398>,  <34.608204, 35.172386, 29.630619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658737, 34.967201, 29.744398>,  <34.742958, 34.625225, 29.934031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658737, 34.967201, 29.744398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428866, -0.355017, -0.830685,
		-0.878489, -0.378217, -0.291905,
		-0.210548, 0.854936, -0.474083,
		34.595573, 35.223682, 29.602173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534214, 34.372711, 29.233484>,  <34.742958, 34.625225, 29.934031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534214, 34.372711, 29.233484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601528, 34.764336, 29.187674>,  <34.641918, 34.999310, 29.160187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601528, 34.764336, 29.187674>,  <34.534214, 34.372711, 29.233484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601528, 34.764336, 29.187674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464585, -0.181248, -0.866781,
		-0.869390, 0.092664, -0.485360,
		0.168290, 0.979062, -0.114525,
		34.652016, 35.058056, 29.153316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265968, 34.510921, 28.560047>,  <34.534214, 34.372711, 29.233484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265968, 34.510921, 28.560047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542156, 34.783527, 28.657032>,  <34.707867, 34.947090, 28.715223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542156, 34.783527, 28.657032>,  <34.265968, 34.510921, 28.560047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542156, 34.783527, 28.657032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453413, -0.146585, -0.879164,
		-0.563626, 0.716969, -0.410221,
		0.690466, 0.681519, 0.242464,
		34.749294, 34.987984, 28.729771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333271, 34.887829, 28.012621>,  <34.265968, 34.510921, 28.560047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333271, 34.887829, 28.012621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670731, 34.975666, 28.208591>,  <34.873207, 35.028370, 28.326174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670731, 34.975666, 28.208591>,  <34.333271, 34.887829, 28.012621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670731, 34.975666, 28.208591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487901, 0.067246, -0.870305,
		-0.224060, 0.973271, -0.050408,
		0.843653, 0.219594, 0.489927,
		34.923828, 35.041546, 28.355570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586834, 35.473919, 27.699804>,  <34.333271, 34.887829, 28.012621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586834, 35.473919, 27.699804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913242, 35.300686, 27.852928>,  <35.109089, 35.196747, 27.944803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913242, 35.300686, 27.852928>,  <34.586834, 35.473919, 27.699804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913242, 35.300686, 27.852928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463852, 0.095488, -0.880752,
		0.344884, 0.896282, 0.278807,
		0.816025, -0.433082, 0.382810,
		35.158051, 35.170761, 27.967772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078251, 35.818882, 27.376766>,  <34.586834, 35.473919, 27.699804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078251, 35.818882, 27.376766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284317, 35.510567, 27.526695>,  <35.407955, 35.325577, 27.616653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284317, 35.510567, 27.526695>,  <35.078251, 35.818882, 27.376766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284317, 35.510567, 27.526695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667455, 0.086434, -0.739617,
		0.537691, 0.631199, 0.558995,
		0.515162, -0.770790, 0.374822,
		35.438866, 35.279331, 27.639141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813919, 36.019447, 27.416361>,  <35.078251, 35.818882, 27.376766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813919, 36.019447, 27.416361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809139, 35.620235, 27.391716>,  <35.806271, 35.380707, 27.376928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809139, 35.620235, 27.391716>,  <35.813919, 36.019447, 27.416361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809139, 35.620235, 27.391716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738185, 0.032757, -0.673803,
		0.674493, -0.053533, 0.736338,
		-0.011950, -0.998029, -0.061611,
		35.805553, 35.320827, 27.373232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499664, 35.887402, 27.332014>,  <35.813919, 36.019447, 27.416361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499664, 35.887402, 27.332014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319931, 35.551949, 27.208857>,  <36.212090, 35.350677, 27.134962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319931, 35.551949, 27.208857>,  <36.499664, 35.887402, 27.332014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319931, 35.551949, 27.208857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556998, 0.006469, -0.830489,
		0.698465, -0.544662, 0.464209,
		-0.449333, -0.838630, -0.307894,
		36.185131, 35.300358, 27.116488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972252, 35.577057, 27.020325>,  <36.499664, 35.887402, 27.332014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972252, 35.577057, 27.020325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640270, 35.403339, 26.880287>,  <36.441082, 35.299110, 26.796265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640270, 35.403339, 26.880287>,  <36.972252, 35.577057, 27.020325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640270, 35.403339, 26.880287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404778, -0.037029, -0.913665,
		0.383833, -0.900011, 0.206524,
		-0.829956, -0.434291, -0.350092,
		36.391285, 35.273052, 26.775259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183067, 35.049095, 26.590338>,  <36.972252, 35.577057, 27.020325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183067, 35.049095, 26.590338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806087, 35.062160, 26.457237>,  <36.579899, 35.070000, 26.377377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806087, 35.062160, 26.457237>,  <37.183067, 35.049095, 26.590338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806087, 35.062160, 26.457237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320399, -0.196236, -0.926734,
		-0.095570, -0.980012, 0.174477,
		-0.942449, 0.032666, -0.332749,
		36.523354, 35.071960, 26.357412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090405, 34.490971, 26.180323>,  <37.183067, 35.049095, 26.590338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090405, 34.490971, 26.180323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815029, 34.746937, 26.043756>,  <36.649803, 34.900517, 25.961817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815029, 34.746937, 26.043756>,  <37.090405, 34.490971, 26.180323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815029, 34.746937, 26.043756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207813, -0.276957, -0.938141,
		-0.694887, -0.716802, 0.057685,
		-0.688437, 0.639914, -0.341415,
		36.608498, 34.938911, 25.941332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758083, 34.120213, 25.726173>,  <37.090405, 34.490971, 26.180323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758083, 34.120213, 25.726173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647556, 34.491657, 25.627113>,  <36.581242, 34.714523, 25.567677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.647556, 34.491657, 25.627113>,  <36.758083, 34.120213, 25.726173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647556, 34.491657, 25.627113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061247, -0.240145, -0.968803,
		-0.959113, -0.282863, 0.009482,
		-0.276316, 0.928611, -0.247650,
		36.564663, 34.770241, 25.552818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432529, 33.949562, 25.113352>,  <36.758083, 34.120213, 25.726173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432529, 33.949562, 25.113352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483356, 34.345428, 25.086782>,  <36.513851, 34.582951, 25.070841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483356, 34.345428, 25.086782>,  <36.432529, 33.949562, 25.113352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483356, 34.345428, 25.086782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072370, -0.076036, -0.994475,
		-0.989251, 0.121555, -0.081284,
		0.127064, 0.989668, -0.066422,
		36.521477, 34.642330, 25.066856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005989, 34.131641, 24.595356>,  <36.432529, 33.949562, 25.113352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005989, 34.131641, 24.595356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250961, 34.444954, 24.638084>,  <36.397945, 34.632942, 24.663721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250961, 34.444954, 24.638084>,  <36.005989, 34.131641, 24.595356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250961, 34.444954, 24.638084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025610, 0.154711, -0.987628,
		-0.790112, 0.602114, 0.114809,
		0.612427, 0.783277, 0.106819,
		36.434689, 34.679935, 24.670130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768990, 34.720421, 24.107409>,  <36.005989, 34.131641, 24.595356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768990, 34.720421, 24.107409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148041, 34.817696, 24.190222>,  <36.375469, 34.876060, 24.239910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148041, 34.817696, 24.190222>,  <35.768990, 34.720421, 24.107409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148041, 34.817696, 24.190222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161704, 0.193672, -0.967648,
		-0.275420, 0.950447, 0.144204,
		0.947626, 0.243192, 0.207032,
		36.432327, 34.890652, 24.252331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899345, 35.371475, 23.680691>,  <35.768990, 34.720421, 24.107409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899345, 35.371475, 23.680691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247383, 35.183578, 23.740393>,  <36.456207, 35.070843, 23.776213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247383, 35.183578, 23.740393>,  <35.899345, 35.371475, 23.680691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247383, 35.183578, 23.740393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277856, 0.217364, -0.935708,
		0.407096, 0.855628, 0.319648,
		0.870097, -0.469739, 0.149253,
		36.508411, 35.042656, 23.785168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306847, 35.795879, 23.328281>,  <35.899345, 35.371475, 23.680691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306847, 35.795879, 23.328281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561718, 35.493042, 23.385990>,  <36.714642, 35.311340, 23.420616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.561718, 35.493042, 23.385990>,  <36.306847, 35.795879, 23.328281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561718, 35.493042, 23.385990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575981, 0.343385, -0.741844,
		0.512103, 0.555785, 0.654869,
		0.637178, -0.757093, 0.144273,
		36.752872, 35.265915, 23.429272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982140, 36.036674, 23.412703>,  <36.306847, 35.795879, 23.328281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982140, 36.036674, 23.412703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012543, 35.656914, 23.290817>,  <37.030785, 35.429058, 23.217686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012543, 35.656914, 23.290817>,  <36.982140, 36.036674, 23.412703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012543, 35.656914, 23.290817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596487, 0.288179, -0.749104,
		0.799016, -0.124824, 0.588211,
		0.076004, -0.949406, -0.304716,
		37.035343, 35.372093, 23.199402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494446, 36.120232, 22.912710>,  <36.982140, 36.036674, 23.412703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494446, 36.120232, 22.912710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393642, 35.736290, 22.863426>,  <37.333160, 35.505924, 22.833857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393642, 35.736290, 22.863426>,  <37.494446, 36.120232, 22.912710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393642, 35.736290, 22.863426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578273, -0.047276, -0.814472,
		0.775946, -0.276502, 0.566969,
		-0.252008, -0.959850, -0.123210,
		37.318039, 35.448334, 22.826464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100426, 35.805550, 22.809664>,  <37.494446, 36.120232, 22.912710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100426, 35.805550, 22.809664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790451, 35.632339, 22.625507>,  <37.604465, 35.528412, 22.515015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790451, 35.632339, 22.625507>,  <38.100426, 35.805550, 22.809664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790451, 35.632339, 22.625507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458620, 0.115966, -0.881033,
		0.434899, -0.893891, 0.108727,
		-0.774939, -0.433025, -0.460390,
		37.557968, 35.502434, 22.487391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322140, 35.270103, 22.335340>,  <38.100426, 35.805550, 22.809664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322140, 35.270103, 22.335340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954247, 35.347893, 22.198952>,  <37.733509, 35.394566, 22.117119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954247, 35.347893, 22.198952>,  <38.322140, 35.270103, 22.335340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954247, 35.347893, 22.198952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360701, 0.076048, -0.929576,
		-0.154851, -0.977955, -0.140093,
		-0.919737, 0.194478, -0.340973,
		37.678326, 35.406235, 22.096661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238327, 34.886765, 21.754595>,  <38.322140, 35.270103, 22.335340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238327, 34.886765, 21.754595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984875, 35.196033, 21.743925>,  <37.832802, 35.381596, 21.737524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984875, 35.196033, 21.743925>,  <38.238327, 34.886765, 21.754595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984875, 35.196033, 21.743925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219319, 0.146460, -0.964598,
		-0.741897, -0.617049, -0.262374,
		-0.633631, 0.773175, -0.026672,
		37.794785, 35.427986, 21.735924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090698, 34.778416, 21.145781>,  <38.238327, 34.886765, 21.754595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090698, 34.778416, 21.145781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946995, 35.144352, 21.219534>,  <37.860771, 35.363914, 21.263786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946995, 35.144352, 21.219534>,  <38.090698, 34.778416, 21.145781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946995, 35.144352, 21.219534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396530, 0.328493, -0.857237,
		-0.844805, -0.234858, -0.480777,
		-0.359260, 0.914841, 0.184384,
		37.839218, 35.418804, 21.274849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995560, 35.028336, 20.495159>,  <38.090698, 34.778416, 21.145781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995560, 35.028336, 20.495159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981537, 35.362511, 20.714548>,  <37.973122, 35.563015, 20.846182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.981537, 35.362511, 20.714548>,  <37.995560, 35.028336, 20.495159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981537, 35.362511, 20.714548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332269, 0.527334, -0.781995,
		-0.942533, 0.154823, -0.296077,
		-0.035060, 0.835433, 0.548472,
		37.971020, 35.613140, 20.879089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758778, 35.499477, 20.117836>,  <37.995560, 35.028336, 20.495159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758778, 35.499477, 20.117836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924911, 35.735294, 20.394947>,  <38.024593, 35.876785, 20.561214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924911, 35.735294, 20.394947>,  <37.758778, 35.499477, 20.117836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924911, 35.735294, 20.394947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318863, 0.618900, -0.717836,
		-0.851953, 0.519044, 0.069069,
		0.415335, 0.589539, 0.692778,
		38.049511, 35.912155, 20.602781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375420, 36.078503, 20.065304>,  <37.758778, 35.499477, 20.117836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375420, 36.078503, 20.065304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721355, 36.182400, 20.237156>,  <37.928917, 36.244740, 20.340267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721355, 36.182400, 20.237156>,  <37.375420, 36.078503, 20.065304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721355, 36.182400, 20.237156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179210, 0.639660, -0.747475,
		-0.468971, 0.723441, 0.506654,
		0.864841, 0.259747, 0.429630,
		37.980808, 36.260323, 20.366045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356995, 36.780567, 20.085192>,  <37.375420, 36.078503, 20.065304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356995, 36.780567, 20.085192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749973, 36.707279, 20.099241>,  <37.985760, 36.663307, 20.107672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749973, 36.707279, 20.099241>,  <37.356995, 36.780567, 20.085192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749973, 36.707279, 20.099241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148594, 0.654696, -0.741143,
		0.112798, 0.733351, 0.670428,
		0.982444, -0.183221, 0.035123,
		38.044708, 36.652313, 20.109777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666061, 37.400021, 19.984449>,  <37.356995, 36.780567, 20.085192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666061, 37.400021, 19.984449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971458, 37.153759, 19.906422>,  <38.154697, 37.006001, 19.859604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971458, 37.153759, 19.906422>,  <37.666061, 37.400021, 19.984449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971458, 37.153759, 19.906422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335079, 0.635843, -0.695289,
		0.552092, 0.465481, 0.691752,
		0.763489, -0.615655, -0.195070,
		38.200504, 36.969063, 19.847900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328125, 37.817192, 20.087875>,  <37.666061, 37.400021, 19.984449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328125, 37.817192, 20.087875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464787, 37.510918, 19.869886>,  <38.546783, 37.327152, 19.739094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464787, 37.510918, 19.869886>,  <38.328125, 37.817192, 20.087875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464787, 37.510918, 19.869886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479798, 0.640712, -0.599402,
		0.808124, -0.056687, 0.586279,
		0.341658, -0.765686, -0.544973,
		38.567284, 37.281212, 19.706394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126156, 37.787411, 19.999060>,  <38.328125, 37.817192, 20.087875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126156, 37.787411, 19.999060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965885, 37.605347, 19.680994>,  <38.869724, 37.496109, 19.490154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.965885, 37.605347, 19.680994>,  <39.126156, 37.787411, 19.999060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.965885, 37.605347, 19.680994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506582, 0.613097, -0.606206,
		0.763434, -0.645710, -0.015078,
		-0.400678, -0.455160, -0.795165,
		38.845680, 37.468800, 19.442444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517498, 38.093838, 19.427504>,  <39.126156, 37.787411, 19.999060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517498, 38.093838, 19.427504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231102, 37.902065, 19.224524>,  <39.059265, 37.787003, 19.102736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.231102, 37.902065, 19.224524>,  <39.517498, 38.093838, 19.427504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231102, 37.902065, 19.224524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264086, 0.486868, -0.832597,
		0.646233, -0.730142, -0.221981,
		-0.715990, -0.479430, -0.507450,
		39.016304, 37.758236, 19.072289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762703, 37.845818, 18.769213>,  <39.517498, 38.093838, 19.427504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762703, 37.845818, 18.769213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367222, 37.888622, 18.727236>,  <39.129932, 37.914307, 18.702049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367222, 37.888622, 18.727236>,  <39.762703, 37.845818, 18.769213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367222, 37.888622, 18.727236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149682, 0.668592, -0.728410,
		-0.007785, -0.735889, -0.677057,
		-0.988703, 0.107014, -0.104944,
		39.070610, 37.920727, 18.695753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624775, 37.675983, 18.047939>,  <39.762703, 37.845818, 18.769213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624775, 37.675983, 18.047939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321026, 37.898476, 18.182968>,  <39.138775, 38.031971, 18.263985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321026, 37.898476, 18.182968>,  <39.624775, 37.675983, 18.047939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321026, 37.898476, 18.182968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226563, 0.712403, -0.664192,
		-0.609932, -0.427890, -0.667003,
		-0.759376, 0.556231, 0.337573,
		39.093212, 38.065346, 18.284241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150772, 38.012402, 17.505871>,  <39.624775, 37.675983, 18.047939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150772, 38.012402, 17.505871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170242, 38.245426, 17.830402>,  <39.181923, 38.385242, 18.025122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.170242, 38.245426, 17.830402>,  <39.150772, 38.012402, 17.505871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170242, 38.245426, 17.830402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157566, 0.797641, -0.582187,
		-0.986308, 0.156174, -0.052969,
		0.048672, 0.582562, 0.811328,
		39.184845, 38.420197, 18.073801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573650, 38.468842, 17.504950>,  <39.150772, 38.012402, 17.505871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573650, 38.468842, 17.504950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867142, 38.637245, 17.718266>,  <39.043236, 38.738289, 17.846254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867142, 38.637245, 17.718266>,  <38.573650, 38.468842, 17.504950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867142, 38.637245, 17.718266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005854, 0.780940, -0.624579,
		-0.679423, 0.461390, 0.570529,
		0.733724, 0.421013, 0.533289,
		39.087257, 38.763550, 17.878252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374599, 39.166618, 17.695330>,  <38.573650, 38.468842, 17.504950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374599, 39.166618, 17.695330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772606, 39.132725, 17.674269>,  <39.011410, 39.112389, 17.661633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.772606, 39.132725, 17.674269>,  <38.374599, 39.166618, 17.695330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772606, 39.132725, 17.674269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016715, 0.661927, -0.749382,
		0.098350, 0.744764, 0.660041,
		0.995012, -0.084734, -0.052652,
		39.071110, 39.107304, 17.658474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756691, 39.820759, 17.843725>,  <38.374599, 39.166618, 17.695330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756691, 39.820759, 17.843725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980377, 39.590466, 17.605125>,  <39.114590, 39.452290, 17.461966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.980377, 39.590466, 17.605125>,  <38.756691, 39.820759, 17.843725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980377, 39.590466, 17.605125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055176, 0.743775, -0.666149,
		0.827183, 0.339609, 0.447698,
		0.559217, -0.575729, -0.596500,
		39.148144, 39.417747, 17.426176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995956, 40.513306, 17.757687>,  <38.756691, 39.820759, 17.843725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995956, 40.513306, 17.757687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720474, 40.728390, 17.952234>,  <38.555183, 40.857441, 18.068962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720474, 40.728390, 17.952234>,  <38.995956, 40.513306, 17.757687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720474, 40.728390, 17.952234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332502, 0.361882, -0.870910,
		-0.644304, -0.761518, -0.070440,
		-0.688705, 0.537709, 0.486369,
		38.513863, 40.889702, 18.098145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268997, 40.369614, 17.451952>,  <38.995956, 40.513306, 17.757687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268997, 40.369614, 17.451952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343735, 40.739498, 17.584610>,  <38.388577, 40.961430, 17.664206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.343735, 40.739498, 17.584610>,  <38.268997, 40.369614, 17.451952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343735, 40.739498, 17.584610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295826, 0.374883, -0.878606,
		-0.936790, 0.066055, 0.343601,
		0.186847, 0.924716, 0.331646,
		38.399788, 41.016914, 17.684103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653645, 40.701473, 17.399271>,  <38.268997, 40.369614, 17.451952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653645, 40.701473, 17.399271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931240, 40.988857, 17.380499>,  <38.097797, 41.161285, 17.369236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931240, 40.988857, 17.380499>,  <37.653645, 40.701473, 17.399271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931240, 40.988857, 17.380499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492096, 0.425730, -0.759339,
		-0.525573, 0.550065, 0.649001,
		0.693985, 0.718458, -0.046933,
		38.139435, 41.204395, 17.366419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880013, 40.735798, 17.724916>,  <37.653645, 40.701473, 17.399271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880013, 40.735798, 17.724916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686375, 40.398281, 17.632254>,  <36.570194, 40.195770, 17.576656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686375, 40.398281, 17.632254>,  <36.880013, 40.735798, 17.724916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686375, 40.398281, 17.632254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053859, -0.235508, 0.970379,
		-0.873358, 0.482229, 0.068562,
		-0.484092, -0.843795, -0.231655,
		36.541145, 40.145142, 17.562757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837177, 40.560623, 18.456274>,  <36.880013, 40.735798, 17.724916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837177, 40.560623, 18.456274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646309, 40.279480, 18.245260>,  <36.531788, 40.110794, 18.118652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646309, 40.279480, 18.245260>,  <36.837177, 40.560623, 18.456274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646309, 40.279480, 18.245260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267947, -0.455339, 0.849041,
		-0.836965, 0.546490, 0.028946,
		-0.477173, -0.702862, -0.527533,
		36.503159, 40.068623, 18.087000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092304, 40.520668, 18.628012>,  <36.837177, 40.560623, 18.456274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092304, 40.520668, 18.628012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292252, 40.195786, 18.507711>,  <36.412220, 40.000854, 18.435532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292252, 40.195786, 18.507711>,  <36.092304, 40.520668, 18.628012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292252, 40.195786, 18.507711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035775, -0.327584, 0.944144,
		-0.865363, -0.482705, -0.134691,
		0.499866, -0.812209, -0.300748,
		36.442211, 39.952122, 18.417486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678394, 39.915222, 18.789362>,  <36.092304, 40.520668, 18.628012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678394, 39.915222, 18.789362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037918, 39.752117, 18.725021>,  <36.253632, 39.654255, 18.686417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037918, 39.752117, 18.725021>,  <35.678394, 39.915222, 18.789362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037918, 39.752117, 18.725021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031280, -0.425683, 0.904331,
		-0.437241, -0.807782, -0.395360,
		0.898800, -0.407777, -0.160858,
		36.307560, 39.629787, 18.676765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667130, 39.131195, 18.899216>,  <35.678394, 39.915222, 18.789362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667130, 39.131195, 18.899216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044750, 39.244583, 18.966642>,  <36.271320, 39.312614, 19.007099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044750, 39.244583, 18.966642>,  <35.667130, 39.131195, 18.899216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044750, 39.244583, 18.966642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024645, -0.449047, 0.893168,
		0.328882, -0.847349, -0.416936,
		0.944050, 0.283471, 0.168566,
		36.327965, 39.329624, 19.017212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025146, 38.501808, 19.100937>,  <35.667130, 39.131195, 18.899216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025146, 38.501808, 19.100937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225876, 38.823364, 19.228643>,  <36.346313, 39.016300, 19.305267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225876, 38.823364, 19.228643>,  <36.025146, 38.501808, 19.100937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225876, 38.823364, 19.228643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066912, -0.331921, 0.940931,
		0.862379, -0.493543, -0.112775,
		0.501822, 0.803893, 0.319265,
		36.376423, 39.064533, 19.324423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576710, 38.190975, 19.431044>,  <36.025146, 38.501808, 19.100937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576710, 38.190975, 19.431044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526646, 38.556702, 19.585114>,  <36.496609, 38.776138, 19.677555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526646, 38.556702, 19.585114>,  <36.576710, 38.190975, 19.431044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526646, 38.556702, 19.585114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001432, -0.388063, 0.921632,
		0.992136, 0.115900, 0.047259,
		-0.125157, 0.914316, 0.385177,
		36.489098, 38.830997, 19.700666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711334, 38.057533, 20.090122>,  <36.576710, 38.190975, 19.431044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711334, 38.057533, 20.090122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553196, 38.424942, 20.091740>,  <36.458313, 38.645390, 20.092710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.553196, 38.424942, 20.091740>,  <36.711334, 38.057533, 20.090122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553196, 38.424942, 20.091740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201558, -0.091047, 0.975236,
		0.896147, 0.384736, 0.221131,
		-0.395342, 0.918525, 0.004044,
		36.434593, 38.700500, 20.092953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076694, 38.375134, 20.610277>,  <36.711334, 38.057533, 20.090122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076694, 38.375134, 20.610277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733501, 38.571747, 20.550604>,  <36.527584, 38.689716, 20.514799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733501, 38.571747, 20.550604>,  <37.076694, 38.375134, 20.610277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733501, 38.571747, 20.550604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130649, 0.072058, 0.988807,
		0.496781, 0.867872, 0.002394,
		-0.857986, 0.491533, -0.149184,
		36.476105, 38.719208, 20.505848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147636, 38.941353, 21.009020>,  <37.076694, 38.375134, 20.610277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147636, 38.941353, 21.009020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753960, 38.901245, 20.950626>,  <36.517754, 38.877178, 20.915590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753960, 38.901245, 20.950626>,  <37.147636, 38.941353, 21.009020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753960, 38.901245, 20.950626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153236, 0.068860, 0.985788,
		-0.088797, 0.992574, -0.083137,
		-0.984192, -0.100274, -0.145984,
		36.458702, 38.871162, 20.906832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814651, 39.412327, 21.500502>,  <37.147636, 38.941353, 21.009020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814651, 39.412327, 21.500502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531654, 39.163212, 21.366884>,  <36.361855, 39.013744, 21.286713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531654, 39.163212, 21.366884>,  <36.814651, 39.412327, 21.500502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531654, 39.163212, 21.366884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387503, -0.053424, 0.920319,
		-0.591008, 0.780566, -0.203534,
		-0.707496, -0.622786, -0.334046,
		36.319405, 38.976376, 21.266670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057301, 39.620430, 21.615934>,  <36.814651, 39.412327, 21.500502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057301, 39.620430, 21.615934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072250, 39.220718, 21.613110>,  <36.081219, 38.980892, 21.611416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072250, 39.220718, 21.613110>,  <36.057301, 39.620430, 21.615934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072250, 39.220718, 21.613110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229771, -0.015470, 0.973122,
		-0.972527, -0.034749, -0.230183,
		0.037376, -0.999276, -0.007061,
		36.083462, 38.920937, 21.610991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463375, 39.434513, 21.986406>,  <36.057301, 39.620430, 21.615934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463375, 39.434513, 21.986406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698692, 39.111141, 21.993895>,  <35.839882, 38.917118, 21.998388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698692, 39.111141, 21.993895>,  <35.463375, 39.434513, 21.986406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698692, 39.111141, 21.993895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361243, -0.242025, 0.900515,
		-0.723472, -0.536532, -0.434421,
		0.588296, -0.808429, 0.018720,
		35.875183, 38.868614, 21.999510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053661, 38.997116, 22.329529>,  <35.463375, 39.434513, 21.986406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053661, 38.997116, 22.329529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405392, 38.807888, 22.351366>,  <35.616432, 38.694351, 22.364468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405392, 38.807888, 22.351366>,  <35.053661, 38.997116, 22.329529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405392, 38.807888, 22.351366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288529, -0.438058, 0.851385,
		-0.378852, -0.764400, -0.521693,
		0.879330, -0.473073, 0.054593,
		35.669189, 38.665966, 22.367744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911240, 38.280861, 22.387312>,  <35.053661, 38.997116, 22.329529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911240, 38.280861, 22.387312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289471, 38.318420, 22.511932>,  <35.516411, 38.340958, 22.586704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289471, 38.318420, 22.511932>,  <34.911240, 38.280861, 22.387312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289471, 38.318420, 22.511932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182508, -0.639616, 0.746714,
		0.269391, -0.762937, -0.587669,
		0.945579, 0.093904, 0.311549,
		35.573143, 38.346592, 22.605396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149155, 37.613636, 22.700291>,  <34.911240, 38.280861, 22.387312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149155, 37.613636, 22.700291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387600, 37.900345, 22.845009>,  <35.530666, 38.072369, 22.931841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387600, 37.900345, 22.845009>,  <35.149155, 37.613636, 22.700291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387600, 37.900345, 22.845009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190110, -0.311794, 0.930936,
		0.780072, -0.623721, -0.049598,
		0.596109, 0.716768, 0.361798,
		35.566433, 38.115376, 22.953548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557133, 37.360588, 23.235462>,  <35.149155, 37.613636, 22.700291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557133, 37.360588, 23.235462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601730, 37.748299, 23.323172>,  <35.628490, 37.980923, 23.375797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601730, 37.748299, 23.323172>,  <35.557133, 37.360588, 23.235462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601730, 37.748299, 23.323172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010015, -0.219541, 0.975552,
		0.993714, -0.110967, -0.014771,
		0.111497, 0.969272, 0.219272,
		35.635181, 38.039082, 23.388954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983494, 37.380466, 23.717234>,  <35.557133, 37.360588, 23.235462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983494, 37.380466, 23.717234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790249, 37.725498, 23.777313>,  <35.674301, 37.932518, 23.813360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790249, 37.725498, 23.777313>,  <35.983494, 37.380466, 23.717234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790249, 37.725498, 23.777313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005621, -0.174597, 0.984624,
		0.875539, 0.474841, 0.089199,
		-0.483114, 0.862578, 0.150198,
		35.645313, 37.984272, 23.822372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239552, 37.610790, 24.304319>,  <35.983494, 37.380466, 23.717234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239552, 37.610790, 24.304319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899654, 37.815453, 24.253498>,  <35.695717, 37.938251, 24.223005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899654, 37.815453, 24.253498>,  <36.239552, 37.610790, 24.304319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899654, 37.815453, 24.253498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235417, -0.152634, 0.959834,
		0.471713, 0.845524, 0.250153,
		-0.849745, 0.511656, -0.127051,
		35.644730, 37.968948, 24.215384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256577, 38.080627, 24.899763>,  <36.239552, 37.610790, 24.304319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256577, 38.080627, 24.899763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881073, 38.056614, 24.764040>,  <35.655769, 38.042206, 24.682606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881073, 38.056614, 24.764040>,  <36.256577, 38.080627, 24.899763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881073, 38.056614, 24.764040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338622, -0.021529, 0.940676,
		-0.063781, 0.997964, -0.000119,
		-0.938758, -0.060038, -0.339306,
		35.599445, 38.038601, 24.662249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954578, 38.560192, 25.296698>,  <36.256577, 38.080627, 24.899763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954578, 38.560192, 25.296698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663231, 38.320477, 25.163828>,  <35.488422, 38.176647, 25.084106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663231, 38.320477, 25.163828>,  <35.954578, 38.560192, 25.296698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663231, 38.320477, 25.163828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520399, 0.168473, 0.837139,
		-0.445724, 0.782606, -0.434579,
		-0.728364, -0.599287, -0.332175,
		35.444721, 38.140690, 25.064175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401855, 38.928230, 25.570339>,  <35.954578, 38.560192, 25.296698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401855, 38.928230, 25.570339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261372, 38.561749, 25.493172>,  <35.177082, 38.341858, 25.446871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261372, 38.561749, 25.493172>,  <35.401855, 38.928230, 25.570339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261372, 38.561749, 25.493172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585349, 0.054045, 0.808978,
		-0.730764, 0.397048, -0.555281,
		-0.351213, -0.916206, -0.192917,
		35.156006, 38.286888, 25.435297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665314, 39.036358, 25.522961>,  <35.401855, 38.928230, 25.570339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665314, 39.036358, 25.522961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701172, 38.642490, 25.582809>,  <34.722687, 38.406170, 25.618719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701172, 38.642490, 25.582809>,  <34.665314, 39.036358, 25.522961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701172, 38.642490, 25.582809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744271, 0.033599, 0.667031,
		-0.661834, -0.171154, -0.729851,
		0.089643, -0.984671, 0.149622,
		34.728065, 38.347088, 25.627697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967010, 38.720722, 25.392700>,  <34.665314, 39.036358, 25.522961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967010, 38.720722, 25.392700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203594, 38.495258, 25.623339>,  <34.345543, 38.359978, 25.761721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203594, 38.495258, 25.623339>,  <33.967010, 38.720722, 25.392700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203594, 38.495258, 25.623339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726897, -0.063221, 0.683830,
		-0.348997, -0.823581, -0.447118,
		0.591457, -0.563664, 0.576595,
		34.381031, 38.326160, 25.796318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479786, 38.277893, 25.762695>,  <33.967010, 38.720722, 25.392700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479786, 38.277893, 25.762695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818977, 38.217999, 25.966074>,  <34.022491, 38.182064, 26.088100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818977, 38.217999, 25.966074>,  <33.479786, 38.277893, 25.762695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818977, 38.217999, 25.966074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523310, -0.084172, 0.847975,
		-0.084172, -0.985137, -0.149733,
		-0.847975, 0.149733, -0.508447,
		34.073368, 38.173080, 26.118608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314335, 37.760189, 26.114418>,  <33.479786, 38.277893, 25.762695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314335, 37.760189, 26.114418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598869, 37.955067, 26.317057>,  <33.769588, 38.071995, 26.438639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598869, 37.955067, 26.317057>,  <33.314335, 37.760189, 26.114418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598869, 37.955067, 26.317057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546287, -0.070266, 0.834646,
		0.442234, -0.870460, 0.216167,
		0.711336, 0.487198, 0.506595,
		33.812271, 38.101227, 26.469036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461403, 37.315556, 26.757851>,  <33.314335, 37.760189, 26.114418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461403, 37.315556, 26.757851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589882, 37.688591, 26.823711>,  <33.666969, 37.912411, 26.863228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589882, 37.688591, 26.823711>,  <33.461403, 37.315556, 26.757851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589882, 37.688591, 26.823711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429939, -0.011315, 0.902787,
		0.843793, -0.360760, 0.397322,
		0.321194, 0.932590, 0.164652,
		33.686241, 37.968369, 26.873108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850967, 37.282272, 27.397987>,  <33.461403, 37.315556, 26.757851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850967, 37.282272, 27.397987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717453, 37.656067, 27.348486>,  <33.637344, 37.880344, 27.318785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717453, 37.656067, 27.348486>,  <33.850967, 37.282272, 27.397987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717453, 37.656067, 27.348486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325801, 0.008828, 0.945397,
		0.884557, 0.355879, 0.301511,
		-0.333785, 0.934490, -0.123755,
		33.617317, 37.936413, 27.311359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126392, 37.572643, 27.890749>,  <33.850967, 37.282272, 27.397987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126392, 37.572643, 27.890749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830509, 37.829826, 27.811316>,  <33.652977, 37.984135, 27.763657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830509, 37.829826, 27.811316>,  <34.126392, 37.572643, 27.890749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830509, 37.829826, 27.811316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213445, 0.055684, 0.975367,
		0.638177, 0.763875, 0.096046,
		-0.739710, 0.642958, -0.198581,
		33.608597, 38.022713, 27.751741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180450, 38.057598, 28.460594>,  <34.126392, 37.572643, 27.890749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180450, 38.057598, 28.460594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818413, 38.095520, 28.294792>,  <33.601189, 38.118275, 28.195311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818413, 38.095520, 28.294792>,  <34.180450, 38.057598, 28.460594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818413, 38.095520, 28.294792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412363, 0.042072, 0.910048,
		0.103718, 0.994606, 0.001016,
		-0.905096, 0.094807, -0.414503,
		33.546883, 38.123962, 28.170441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958260, 38.584270, 28.918293>,  <34.180450, 38.057598, 28.460594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958260, 38.584270, 28.918293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636986, 38.434444, 28.733000>,  <33.444221, 38.344547, 28.621824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636986, 38.434444, 28.733000>,  <33.958260, 38.584270, 28.918293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636986, 38.434444, 28.733000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457373, -0.110510, 0.882382,
		-0.381705, 0.920590, -0.082558,
		-0.803188, -0.374569, -0.463235,
		33.396030, 38.322075, 28.594028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435120, 39.007713, 29.121353>,  <33.958260, 38.584270, 28.918293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435120, 39.007713, 29.121353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285397, 38.655155, 29.006090>,  <33.195564, 38.443619, 28.936934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285397, 38.655155, 29.006090>,  <33.435120, 39.007713, 29.121353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285397, 38.655155, 29.006090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573720, -0.024014, 0.818699,
		-0.728519, 0.471765, -0.496686,
		-0.374307, -0.881397, -0.288156,
		33.173103, 38.390736, 28.919643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835903, 39.063580, 29.446655>,  <33.435120, 39.007713, 29.121353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835903, 39.063580, 29.446655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799397, 38.683983, 29.325930>,  <32.777493, 38.456226, 29.253494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.799397, 38.683983, 29.325930>,  <32.835903, 39.063580, 29.446655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799397, 38.683983, 29.325930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700136, -0.154375, 0.697121,
		-0.708152, 0.274933, -0.650332,
		-0.091266, -0.948989, -0.301812,
		32.772018, 38.399284, 29.235386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060509, 38.814655, 29.352337>,  <32.835903, 39.063580, 29.446655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060509, 38.814655, 29.352337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253597, 38.472748, 29.428598>,  <32.369450, 38.267605, 29.474356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253597, 38.472748, 29.428598>,  <32.060509, 38.814655, 29.352337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253597, 38.472748, 29.428598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664251, -0.215478, 0.715780,
		-0.570743, -0.472168, -0.671796,
		0.482725, -0.854767, 0.190656,
		32.398415, 38.216316, 29.485796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584866, 38.271919, 29.412981>,  <32.060509, 38.814655, 29.352337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584866, 38.271919, 29.412981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910044, 38.185993, 29.629488>,  <32.105152, 38.134438, 29.759392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910044, 38.185993, 29.629488>,  <31.584866, 38.271919, 29.412981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910044, 38.185993, 29.629488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575552, -0.154911, 0.802959,
		-0.088632, -0.964293, -0.249566,
		0.812948, -0.214806, 0.541270,
		32.153927, 38.121548, 29.791868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366854, 37.711060, 29.689695>,  <31.584866, 38.271919, 29.412981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366854, 37.711060, 29.689695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695396, 37.807381, 29.896534>,  <31.892521, 37.865173, 30.020638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695396, 37.807381, 29.896534>,  <31.366854, 37.711060, 29.689695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695396, 37.807381, 29.896534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433670, -0.325269, 0.840316,
		0.370547, -0.914447, -0.162732,
		0.821356, 0.240805, 0.517096,
		31.941803, 37.879623, 30.051662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477877, 37.145004, 30.211998>,  <31.366854, 37.711060, 29.689695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477877, 37.145004, 30.211998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704796, 37.441593, 30.355326>,  <31.840948, 37.619545, 30.441322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704796, 37.441593, 30.355326>,  <31.477877, 37.145004, 30.211998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704796, 37.441593, 30.355326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274549, -0.239930, 0.931159,
		0.776399, -0.626621, 0.067458,
		0.567298, 0.741471, 0.358319,
		31.874985, 37.664036, 30.462822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975191, 36.910751, 30.727413>,  <31.477877, 37.145004, 30.211998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975191, 36.910751, 30.727413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993128, 37.298992, 30.822010>,  <32.003891, 37.531937, 30.878767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.993128, 37.298992, 30.822010>,  <31.975191, 36.910751, 30.727413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993128, 37.298992, 30.822010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004759, -0.236934, 0.971514,
		0.998983, -0.042438, -0.015243,
		0.044841, 0.970598, 0.236491,
		32.006580, 37.590172, 30.892958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294968, 36.914951, 31.256985>,  <31.975191, 36.910751, 30.727413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294968, 36.914951, 31.256985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113342, 37.270386, 31.283024>,  <32.004368, 37.483646, 31.298647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113342, 37.270386, 31.283024>,  <32.294968, 36.914951, 31.256985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113342, 37.270386, 31.283024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244729, -0.194640, 0.949854,
		0.856702, 0.415358, 0.305842,
		-0.454059, 0.888590, 0.065099,
		31.977125, 37.536964, 31.302553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546215, 37.255104, 31.931860>,  <32.294968, 36.914951, 31.256985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546215, 37.255104, 31.931860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208988, 37.439968, 31.821842>,  <32.006653, 37.550884, 31.755831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208988, 37.439968, 31.821842>,  <32.546215, 37.255104, 31.931860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208988, 37.439968, 31.821842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382618, -0.156019, 0.910638,
		0.377946, 0.872965, 0.308364,
		-0.843066, 0.462157, -0.275045,
		31.956068, 37.578617, 31.739328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213417, 37.688992, 32.399536>,  <32.546215, 37.255104, 31.931860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213417, 37.688992, 32.399536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861048, 37.681324, 32.210384>,  <31.649628, 37.676723, 32.096893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861048, 37.681324, 32.210384>,  <32.213417, 37.688992, 32.399536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861048, 37.681324, 32.210384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467076, 0.196264, 0.862160,
		0.076285, 0.980364, -0.181845,
		-0.880920, -0.019166, -0.472877,
		31.596771, 37.675575, 32.068520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873800, 38.279755, 32.626373>,  <32.213417, 37.688992, 32.399536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873800, 38.279755, 32.626373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580246, 38.043999, 32.491299>,  <31.404114, 37.902546, 32.410255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580246, 38.043999, 32.491299>,  <31.873800, 38.279755, 32.626373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580246, 38.043999, 32.491299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483722, 0.104441, 0.868968,
		-0.476891, 0.801070, -0.361748,
		-0.733886, -0.589388, -0.337688,
		31.360081, 37.867184, 32.389992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662270, 38.742943, 32.623268>,  <31.873800, 38.279755, 32.626373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662270, 38.742943, 32.623268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916576, 38.864754, 32.906979>,  <33.069160, 38.937840, 33.077206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916576, 38.864754, 32.906979>,  <32.662270, 38.742943, 32.623268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916576, 38.864754, 32.906979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470757, 0.575243, -0.668942,
		-0.611714, 0.759185, 0.222361,
		0.635763, 0.304523, 0.709275,
		33.107304, 38.956112, 33.119762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706657, 39.422428, 32.552700>,  <32.662270, 38.742943, 32.623268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706657, 39.422428, 32.552700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046192, 39.309040, 32.731190>,  <33.249912, 39.241009, 32.838284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046192, 39.309040, 32.731190>,  <32.706657, 39.422428, 32.552700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046192, 39.309040, 32.731190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527111, 0.518177, -0.673533,
		-0.040299, 0.806931, 0.589269,
		0.848840, -0.283468, 0.446224,
		33.300846, 39.223999, 32.865059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065701, 40.137512, 32.809856>,  <32.706657, 39.422428, 32.552700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065701, 40.137512, 32.809856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320751, 39.833267, 32.761036>,  <33.473782, 39.650719, 32.731743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320751, 39.833267, 32.761036>,  <33.065701, 40.137512, 32.809856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320751, 39.833267, 32.761036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614207, 0.597599, -0.515388,
		0.464949, 0.253661, 0.848221,
		0.637630, -0.760612, -0.122052,
		33.512039, 39.605083, 32.724419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671925, 40.374889, 32.835083>,  <33.065701, 40.137512, 32.809856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671925, 40.374889, 32.835083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738964, 40.026440, 32.650455>,  <33.779186, 39.817368, 32.539677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738964, 40.026440, 32.650455>,  <33.671925, 40.374889, 32.835083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738964, 40.026440, 32.650455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555041, 0.470315, -0.686100,
		0.814765, -0.141204, 0.562334,
		0.167594, -0.871128, -0.461571,
		33.789242, 39.765102, 32.511986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327007, 40.370514, 32.673534>,  <33.671925, 40.374889, 32.835083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327007, 40.370514, 32.673534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198677, 40.081078, 32.429081>,  <34.121681, 39.907413, 32.282410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198677, 40.081078, 32.429081>,  <34.327007, 40.370514, 32.673534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198677, 40.081078, 32.429081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428599, 0.464486, -0.774955,
		0.844616, -0.510555, 0.161113,
		-0.320822, -0.723593, -0.611136,
		34.102432, 39.863998, 32.245739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864384, 40.160603, 32.296597>,  <34.327007, 40.370514, 32.673534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864384, 40.160603, 32.296597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548679, 40.033169, 32.086617>,  <34.359257, 39.956711, 31.960629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548679, 40.033169, 32.086617>,  <34.864384, 40.160603, 32.296597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548679, 40.033169, 32.086617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470831, 0.234823, -0.850398,
		0.394191, -0.918349, -0.035339,
		-0.789260, -0.318580, -0.524952,
		34.311901, 39.937595, 31.929131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226635, 39.777145, 31.896725>,  <34.864384, 40.160603, 32.296597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226635, 39.777145, 31.896725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867004, 39.783672, 31.721733>,  <34.651226, 39.787586, 31.616737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867004, 39.783672, 31.721733>,  <35.226635, 39.777145, 31.896725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867004, 39.783672, 31.721733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421853, -0.234852, -0.875719,
		-0.117030, -0.971894, 0.204268,
		-0.899079, 0.016314, -0.437481,
		34.597282, 39.788567, 31.590488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281712, 39.168045, 31.611116>,  <35.226635, 39.777145, 31.896725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281712, 39.168045, 31.611116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020447, 39.407394, 31.425501>,  <34.863689, 39.551003, 31.314133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020447, 39.407394, 31.425501>,  <35.281712, 39.168045, 31.611116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020447, 39.407394, 31.425501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456011, -0.178402, -0.871910,
		-0.604513, -0.781103, -0.156340,
		-0.653160, 0.598374, -0.464037,
		34.824497, 39.586906, 31.286289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071472, 38.926964, 30.777351>,  <35.281712, 39.168045, 31.611116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071472, 38.926964, 30.777351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001354, 39.319969, 30.802439>,  <34.959286, 39.555775, 30.817492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001354, 39.319969, 30.802439>,  <35.071472, 38.926964, 30.777351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001354, 39.319969, 30.802439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262689, 0.108072, -0.958809,
		-0.948824, -0.151595, -0.277041,
		-0.175290, 0.982517, 0.062719,
		34.948769, 39.614723, 30.821255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790134, 39.179131, 30.114317>,  <35.071472, 38.926964, 30.777351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790134, 39.179131, 30.114317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946503, 39.510113, 30.275558>,  <35.040325, 39.708702, 30.372303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946503, 39.510113, 30.275558>,  <34.790134, 39.179131, 30.114317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946503, 39.510113, 30.275558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103073, 0.395846, -0.912514,
		-0.914635, 0.398270, 0.069456,
		0.390920, 0.827459, 0.403105,
		35.063778, 39.758350, 30.396490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416382, 39.754147, 29.747702>,  <34.790134, 39.179131, 30.114317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416382, 39.754147, 29.747702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742725, 39.930859, 29.896942>,  <34.938534, 40.036884, 29.986486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742725, 39.930859, 29.896942>,  <34.416382, 39.754147, 29.747702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742725, 39.930859, 29.896942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131313, 0.486820, -0.863576,
		-0.563142, 0.753550, 0.339166,
		0.815861, 0.441779, 0.373099,
		34.987484, 40.063393, 30.008871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421112, 40.464119, 29.513508>,  <34.416382, 39.754147, 29.747702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421112, 40.464119, 29.513508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796158, 40.357807, 29.603168>,  <35.021183, 40.294018, 29.656965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796158, 40.357807, 29.603168>,  <34.421112, 40.464119, 29.513508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796158, 40.357807, 29.603168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295013, 0.266990, -0.917433,
		0.183990, 0.926324, 0.328742,
		0.937611, -0.265782, 0.224154,
		35.077442, 40.278072, 29.670414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729744, 40.870281, 29.121017>,  <34.421112, 40.464119, 29.513508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729744, 40.870281, 29.121017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019199, 40.613369, 29.222067>,  <35.192875, 40.459221, 29.282698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019199, 40.613369, 29.222067>,  <34.729744, 40.870281, 29.121017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019199, 40.613369, 29.222067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319643, -0.012522, -0.947455,
		0.611694, 0.766369, 0.196238,
		0.723643, -0.642279, 0.252624,
		35.236294, 40.420685, 29.297853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334709, 41.125294, 28.817080>,  <34.729744, 40.870281, 29.121017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334709, 41.125294, 28.817080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456547, 40.753532, 28.900448>,  <35.529652, 40.530476, 28.950468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.456547, 40.753532, 28.900448>,  <35.334709, 41.125294, 28.817080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456547, 40.753532, 28.900448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605533, 0.020046, -0.795567,
		0.735221, 0.368533, 0.568888,
		0.304596, -0.929399, 0.208421,
		35.547924, 40.474712, 28.962975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093445, 41.075146, 28.498320>,  <35.334709, 41.125294, 28.817080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093445, 41.075146, 28.498320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975563, 40.698616, 28.564121>,  <35.904835, 40.472698, 28.603603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975563, 40.698616, 28.564121>,  <36.093445, 41.075146, 28.498320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975563, 40.698616, 28.564121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503389, -0.299255, -0.810583,
		0.812250, -0.156070, 0.562043,
		-0.294702, -0.941323, 0.164506,
		35.887154, 40.416218, 28.613474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700970, 40.594906, 28.485346>,  <36.093445, 41.075146, 28.498320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700970, 40.594906, 28.485346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367096, 40.393555, 28.395981>,  <36.166771, 40.272743, 28.342361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367096, 40.393555, 28.395981>,  <36.700970, 40.594906, 28.485346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367096, 40.393555, 28.395981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375353, -0.223118, -0.899627,
		0.403005, -0.834763, 0.375178,
		-0.834684, -0.503378, -0.223413,
		36.116692, 40.242542, 28.328957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941849, 39.995556, 27.987368>,  <36.700970, 40.594906, 28.485346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941849, 39.995556, 27.987368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544655, 40.023689, 27.949335>,  <36.306339, 40.040569, 27.926516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544655, 40.023689, 27.949335>,  <36.941849, 39.995556, 27.987368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544655, 40.023689, 27.949335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087006, -0.110107, -0.990104,
		-0.080094, -0.991429, 0.103216,
		-0.992983, 0.070321, -0.095079,
		36.246761, 40.044788, 27.920811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769161, 39.460773, 27.573906>,  <36.941849, 39.995556, 27.987368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769161, 39.460773, 27.573906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490204, 39.745739, 27.542639>,  <36.322830, 39.916718, 27.523878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490204, 39.745739, 27.542639>,  <36.769161, 39.460773, 27.573906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490204, 39.745739, 27.542639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121471, 0.010006, -0.992545,
		-0.706319, -0.701689, -0.093516,
		-0.697394, 0.712413, -0.078167,
		36.280987, 39.959461, 27.519188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283463, 39.192635, 27.089996>,  <36.769161, 39.460773, 27.573906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283463, 39.192635, 27.089996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223621, 39.588024, 27.080641>,  <36.187717, 39.825256, 27.075027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223621, 39.588024, 27.080641>,  <36.283463, 39.192635, 27.089996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223621, 39.588024, 27.080641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069170, -0.034059, -0.997023,
		-0.986323, -0.147542, 0.073468,
		-0.149605, 0.988469, -0.023387,
		36.178741, 39.884563, 27.073624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913853, 39.258137, 26.548586>,  <36.283463, 39.192635, 27.089996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913853, 39.258137, 26.548586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988621, 39.646614, 26.607714>,  <36.033482, 39.879700, 26.643190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988621, 39.646614, 26.607714>,  <35.913853, 39.258137, 26.548586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988621, 39.646614, 26.607714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015371, 0.147564, -0.988933,
		-0.982255, 0.187120, 0.012654,
		0.186917, 0.971190, 0.147822,
		36.044697, 39.937973, 26.652060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399216, 39.582836, 26.153975>,  <35.913853, 39.258137, 26.548586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399216, 39.582836, 26.153975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716797, 39.823437, 26.189398>,  <35.907345, 39.967796, 26.210651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716797, 39.823437, 26.189398>,  <35.399216, 39.582836, 26.153975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716797, 39.823437, 26.189398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175615, -0.087432, -0.980569,
		-0.582069, 0.794074, -0.175049,
		0.793949, 0.601500, 0.088560,
		35.954983, 40.003887, 26.215965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349915, 39.961273, 25.612656>,  <35.399216, 39.582836, 26.153975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349915, 39.961273, 25.612656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725208, 40.052307, 25.716908>,  <35.950382, 40.106926, 25.779459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725208, 40.052307, 25.716908>,  <35.349915, 39.961273, 25.612656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725208, 40.052307, 25.716908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220413, 0.187535, -0.957209,
		-0.266724, 0.955529, 0.125788,
		0.938231, 0.227585, 0.260631,
		36.006676, 40.120583, 25.795097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515705, 40.666740, 25.330877>,  <35.349915, 39.961273, 25.612656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515705, 40.666740, 25.330877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877663, 40.510773, 25.399145>,  <36.094837, 40.417191, 25.440105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877663, 40.510773, 25.399145>,  <35.515705, 40.666740, 25.330877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877663, 40.510773, 25.399145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293088, 0.280045, -0.914152,
		0.308652, 0.877232, 0.367692,
		0.904894, -0.389921, 0.170670,
		36.149132, 40.393795, 25.450346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886845, 41.026169, 24.845058>,  <35.515705, 40.666740, 25.330877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886845, 41.026169, 24.845058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140705, 40.731972, 24.939934>,  <36.293022, 40.555454, 24.996859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140705, 40.731972, 24.939934>,  <35.886845, 41.026169, 24.845058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140705, 40.731972, 24.939934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481044, 0.135775, -0.866118,
		0.604823, 0.663785, 0.439977,
		0.634654, -0.735497, 0.237190,
		36.331100, 40.511322, 25.011091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506195, 41.292511, 24.570078>,  <35.886845, 41.026169, 24.845058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506195, 41.292511, 24.570078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574272, 40.899960, 24.605684>,  <36.615120, 40.664429, 24.627048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574272, 40.899960, 24.605684>,  <36.506195, 41.292511, 24.570078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574272, 40.899960, 24.605684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538737, 0.017025, -0.842302,
		0.825104, 0.191310, 0.531605,
		0.170191, -0.981382, 0.089018,
		36.625328, 40.605545, 24.632389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251362, 41.184845, 24.379732>,  <36.506195, 41.292511, 24.570078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251362, 41.184845, 24.379732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136147, 40.802048, 24.365911>,  <37.067017, 40.572369, 24.357618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136147, 40.802048, 24.365911>,  <37.251362, 41.184845, 24.379732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136147, 40.802048, 24.365911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776588, -0.212322, -0.593152,
		0.560309, -0.197681, 0.804348,
		-0.288036, -0.956996, -0.034551,
		37.049736, 40.514950, 24.355547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858730, 40.774498, 24.387924>,  <37.251362, 41.184845, 24.379732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858730, 40.774498, 24.387924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564747, 40.564484, 24.216263>,  <37.388355, 40.438477, 24.113266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564747, 40.564484, 24.216263>,  <37.858730, 40.774498, 24.387924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564747, 40.564484, 24.216263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573341, -0.143189, -0.806708,
		0.362100, -0.838948, 0.406262,
		-0.734958, -0.525036, -0.429155,
		37.344261, 40.406975, 24.087517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162971, 40.189671, 24.147448>,  <37.858730, 40.774498, 24.387924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162971, 40.189671, 24.147448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842606, 40.210472, 23.908840>,  <37.650387, 40.222954, 23.765676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.842606, 40.210472, 23.908840>,  <38.162971, 40.189671, 24.147448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842606, 40.210472, 23.908840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596049, -0.025794, -0.802534,
		-0.057131, -0.998313, -0.010345,
		-0.800913, 0.052015, -0.596517,
		37.602333, 40.226074, 23.729885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294029, 39.657501, 23.740831>,  <38.162971, 40.189671, 24.147448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294029, 39.657501, 23.740831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997078, 39.852478, 23.556973>,  <37.818909, 39.969463, 23.446657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997078, 39.852478, 23.556973>,  <38.294029, 39.657501, 23.740831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997078, 39.852478, 23.556973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427200, -0.184108, -0.885215,
		-0.516114, -0.853526, -0.071557,
		-0.742379, 0.487441, -0.459647,
		37.774364, 39.998711, 23.419079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064083, 39.220676, 23.179224>,  <38.294029, 39.657501, 23.740831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064083, 39.220676, 23.179224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987724, 39.602531, 23.087818>,  <37.941910, 39.831646, 23.032974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987724, 39.602531, 23.087818>,  <38.064083, 39.220676, 23.179224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987724, 39.602531, 23.087818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487194, -0.109953, -0.866344,
		-0.852173, -0.276716, -0.444105,
		-0.190901, 0.954640, -0.228513,
		37.930454, 39.888924, 23.019264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876556, 39.233562, 22.440441>,  <38.064083, 39.220676, 23.179224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876556, 39.233562, 22.440441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001827, 39.604015, 22.524532>,  <38.076988, 39.826286, 22.574987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001827, 39.604015, 22.524532>,  <37.876556, 39.233562, 22.440441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001827, 39.604015, 22.524532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632095, -0.038062, -0.773956,
		-0.708785, 0.375271, -0.597324,
		0.313178, 0.926133, 0.210228,
		38.095779, 39.881855, 22.587601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241585, 39.316158, 21.840500>,  <37.876556, 39.233562, 22.440441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241585, 39.316158, 21.840500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314175, 39.659863, 22.031807>,  <38.357727, 39.866085, 22.146591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314175, 39.659863, 22.031807>,  <38.241585, 39.316158, 21.840500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314175, 39.659863, 22.031807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651502, 0.259250, -0.712976,
		-0.736623, 0.440978, -0.512762,
		0.181474, 0.859260, 0.478267,
		38.368618, 39.917641, 22.175287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119820, 39.936413, 21.352762>,  <38.241585, 39.316158, 21.840500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119820, 39.936413, 21.352762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384003, 40.042679, 21.633680>,  <38.542515, 40.106438, 21.802231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384003, 40.042679, 21.633680>,  <38.119820, 39.936413, 21.352762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384003, 40.042679, 21.633680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591118, 0.392780, -0.704488,
		-0.463004, 0.880424, 0.102377,
		0.660460, 0.265664, 0.702293,
		38.582142, 40.122379, 21.844368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280811, 40.619450, 21.262562>,  <38.119820, 39.936413, 21.352762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280811, 40.619450, 21.262562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607143, 40.520035, 21.471426>,  <38.802944, 40.460388, 21.596745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607143, 40.520035, 21.471426>,  <38.280811, 40.619450, 21.262562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607143, 40.520035, 21.471426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576503, 0.278582, -0.768138,
		0.045445, 0.927697, 0.370557,
		0.815830, -0.248535, 0.522160,
		38.851894, 40.445473, 21.628075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721146, 41.087627, 21.139896>,  <38.280811, 40.619450, 21.262562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721146, 41.087627, 21.139896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971962, 40.810322, 21.282000>,  <39.122452, 40.643940, 21.367262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971962, 40.810322, 21.282000>,  <38.721146, 41.087627, 21.139896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971962, 40.810322, 21.282000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699304, 0.300026, -0.648813,
		0.343211, 0.655265, 0.672929,
		0.627041, -0.693262, 0.355257,
		39.160072, 40.602345, 21.388577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330433, 41.470638, 21.212353>,  <38.721146, 41.087627, 21.139896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330433, 41.470638, 21.212353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414101, 41.080971, 21.178299>,  <39.464302, 40.847172, 21.157867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414101, 41.080971, 21.178299>,  <39.330433, 41.470638, 21.212353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414101, 41.080971, 21.178299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491253, 0.179955, -0.852225,
		0.845529, 0.136438, 0.516203,
		0.209169, -0.974167, -0.085132,
		39.476852, 40.788719, 21.152760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117680, 41.484104, 21.062000>,  <39.330433, 41.470638, 21.212353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117680, 41.484104, 21.062000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972565, 41.137329, 20.925293>,  <39.885494, 40.929264, 20.843269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972565, 41.137329, 20.925293>,  <40.117680, 41.484104, 21.062000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972565, 41.137329, 20.925293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461789, 0.151304, -0.873990,
		0.809404, -0.474898, 0.345451,
		-0.362788, -0.866936, -0.341768,
		39.863728, 40.877247, 20.822762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694500, 41.215496, 20.716244>,  <40.117680, 41.484104, 21.062000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694500, 41.215496, 20.716244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393738, 40.989784, 20.579874>,  <40.213280, 40.854359, 20.498053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393738, 40.989784, 20.579874>,  <40.694500, 41.215496, 20.716244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393738, 40.989784, 20.579874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309015, 0.155147, -0.938317,
		0.582364, -0.810877, 0.057714,
		-0.751906, -0.564276, -0.340925,
		40.168167, 40.820503, 20.477596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355686, 41.579853, 21.014507>,  <40.694500, 41.215496, 20.716244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355686, 41.579853, 21.014507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724987, 41.652927, 21.149700>,  <41.946568, 41.696774, 21.230816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724987, 41.652927, 21.149700>,  <41.355686, 41.579853, 21.014507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724987, 41.652927, 21.149700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295417, -0.224870, 0.928527,
		0.245633, -0.957109, -0.153643,
		0.923251, 0.182688, 0.337982,
		42.001961, 41.707733, 21.251095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455673, 41.100250, 21.482105>,  <41.355686, 41.579853, 21.014507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455673, 41.100250, 21.482105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739357, 41.365959, 21.576571>,  <41.909565, 41.525383, 21.633249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739357, 41.365959, 21.576571>,  <41.455673, 41.100250, 21.482105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739357, 41.365959, 21.576571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163272, -0.171121, 0.971627,
		0.685834, -0.727644, -0.012903,
		0.709207, 0.664268, 0.236164,
		41.952118, 41.565239, 21.647419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867283, 40.849949, 22.041386>,  <41.455673, 41.100250, 21.482105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867283, 40.849949, 22.041386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945293, 41.241676, 22.062897>,  <41.992100, 41.476715, 22.075804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945293, 41.241676, 22.062897>,  <41.867283, 40.849949, 22.041386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945293, 41.241676, 22.062897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073010, -0.069175, 0.994930,
		0.978076, -0.190115, -0.084991,
		0.195030, 0.979322, 0.053778,
		42.003803, 41.535473, 22.079031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.413582, 41.018940, 22.573605>,  <41.867283, 40.849949, 22.041386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.413582, 41.018940, 22.573605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199894, 41.354382, 22.530993>,  <42.071682, 41.555645, 22.505424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199894, 41.354382, 22.530993>,  <42.413582, 41.018940, 22.573605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199894, 41.354382, 22.530993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044920, 0.154006, 0.987048,
		0.844150, 0.522518, -0.119943,
		-0.534222, 0.838604, -0.106532,
		42.039627, 41.605965, 22.499033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724293, 41.439785, 22.957598>,  <42.413582, 41.018940, 22.573605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724293, 41.439785, 22.957598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368904, 41.617413, 22.911243>,  <42.155670, 41.723988, 22.883430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368904, 41.617413, 22.911243>,  <42.724293, 41.439785, 22.957598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368904, 41.617413, 22.911243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109272, 0.040562, 0.993184,
		0.445740, 0.895075, 0.012486,
		-0.888468, 0.444066, -0.115887,
		42.102364, 41.750633, 22.876478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557835, 41.693829, 23.687202>,  <42.724293, 41.439785, 22.957598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557835, 41.693829, 23.687202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213047, 41.723827, 23.486652>,  <42.006172, 41.741829, 23.366322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213047, 41.723827, 23.486652>,  <42.557835, 41.693829, 23.687202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213047, 41.723827, 23.486652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506950, -0.131963, 0.851814,
		-0.002277, 0.988413, 0.151770,
		-0.861973, 0.075000, -0.501376,
		41.954456, 41.746326, 23.336239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250736, 42.327766, 23.946346>,  <42.557835, 41.693829, 23.687202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250736, 42.327766, 23.946346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019688, 42.032219, 23.807533>,  <41.881058, 41.854893, 23.724245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019688, 42.032219, 23.807533>,  <42.250736, 42.327766, 23.946346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019688, 42.032219, 23.807533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436069, -0.080094, 0.896342,
		-0.690073, 0.669075, -0.275933,
		-0.577619, -0.738867, -0.347034,
		41.846401, 41.810558, 23.703423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692032, 42.301830, 24.369837>,  <42.250736, 42.327766, 23.946346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692032, 42.301830, 24.369837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629768, 41.955345, 24.179914>,  <41.592411, 41.747452, 24.065962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629768, 41.955345, 24.179914>,  <41.692032, 42.301830, 24.369837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629768, 41.955345, 24.179914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459125, -0.362145, 0.811206,
		-0.874628, 0.344269, -0.341328,
		-0.155663, -0.866216, -0.474804,
		41.583069, 41.695480, 24.037474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011021, 42.145416, 24.469742>,  <41.692032, 42.301830, 24.369837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011021, 42.145416, 24.469742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194241, 41.797585, 24.395971>,  <41.304173, 41.588886, 24.351709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194241, 41.797585, 24.395971>,  <41.011021, 42.145416, 24.469742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194241, 41.797585, 24.395971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425992, -0.396828, 0.813055,
		-0.780204, -0.293859, -0.552204,
		0.458053, -0.869583, -0.184425,
		41.331657, 41.536709, 24.340643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504185, 41.840935, 24.258274>,  <41.011021, 42.145416, 24.469742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504185, 41.840935, 24.258274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770973, 41.583916, 24.409153>,  <40.931046, 41.429703, 24.499681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770973, 41.583916, 24.409153>,  <40.504185, 41.840935, 24.258274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770973, 41.583916, 24.409153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569515, -0.113232, 0.814145,
		-0.480416, -0.757833, -0.441463,
		0.666974, -0.642548, 0.377198,
		40.971066, 41.391151, 24.522312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111706, 41.255829, 24.554468>,  <40.504185, 41.840935, 24.258274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111706, 41.255829, 24.554468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478825, 41.217613, 24.708626>,  <40.699097, 41.194683, 24.801121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478825, 41.217613, 24.708626>,  <40.111706, 41.255829, 24.554468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478825, 41.217613, 24.708626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388860, -0.412506, 0.823788,
		0.080275, -0.905931, -0.415746,
		0.917793, -0.095537, 0.385394,
		40.754162, 41.188953, 24.824244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262165, 40.486370, 24.686104>,  <40.111706, 41.255829, 24.554468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262165, 40.486370, 24.686104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496529, 40.694908, 24.934271>,  <40.637146, 40.820030, 25.083172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.496529, 40.694908, 24.934271>,  <40.262165, 40.486370, 24.686104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496529, 40.694908, 24.934271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287494, -0.582070, 0.760620,
		0.757670, -0.624017, -0.191155,
		0.585905, 0.521342, 0.620417,
		40.672298, 40.851311, 25.120396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531948, 39.963463, 25.202547>,  <40.262165, 40.486370, 24.686104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531948, 39.963463, 25.202547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556351, 40.323483, 25.375145>,  <40.570992, 40.539494, 25.478704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556351, 40.323483, 25.375145>,  <40.531948, 39.963463, 25.202547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556351, 40.323483, 25.375145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263340, -0.402470, 0.876738,
		0.962772, -0.167114, 0.212467,
		0.061003, 0.900051, 0.431494,
		40.574654, 40.593498, 25.504593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706200, 39.757050, 25.886194>,  <40.531948, 39.963463, 25.202547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706200, 39.757050, 25.886194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620689, 40.145588, 25.927734>,  <40.569386, 40.378712, 25.952658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.620689, 40.145588, 25.927734>,  <40.706200, 39.757050, 25.886194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.620689, 40.145588, 25.927734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171750, -0.142021, 0.974850,
		0.961667, 0.190561, 0.197189,
		-0.213773, 0.971348, 0.103848,
		40.556557, 40.436993, 25.958889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001945, 40.011822, 26.486238>,  <40.706200, 39.757050, 25.886194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001945, 40.011822, 26.486238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732773, 40.300423, 26.421001>,  <40.571270, 40.473583, 26.381859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732773, 40.300423, 26.421001>,  <41.001945, 40.011822, 26.486238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732773, 40.300423, 26.421001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383341, -0.151591, 0.911082,
		0.632625, 0.675614, 0.378592,
		-0.672930, 0.721503, -0.163090,
		40.530895, 40.516872, 26.372074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034721, 40.468781, 27.087992>,  <41.001945, 40.011822, 26.486238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034721, 40.468781, 27.087992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675640, 40.511562, 26.917023>,  <40.460190, 40.537231, 26.814442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675640, 40.511562, 26.917023>,  <41.034721, 40.468781, 27.087992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675640, 40.511562, 26.917023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439505, -0.148967, 0.885801,
		0.031067, 0.983041, 0.180735,
		-0.897703, 0.106953, -0.427424,
		40.406330, 40.543648, 26.788795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659557, 40.849525, 27.600430>,  <41.034721, 40.468781, 27.087992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659557, 40.849525, 27.600430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375870, 40.683609, 27.372408>,  <40.205658, 40.584057, 27.235596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.375870, 40.683609, 27.372408>,  <40.659557, 40.849525, 27.600430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375870, 40.683609, 27.372408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560140, -0.159455, 0.812907,
		-0.428086, 0.895835, -0.119255,
		-0.709214, -0.414794, -0.570053,
		40.163105, 40.559170, 27.201391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040985, 41.187786, 27.878033>,  <40.659557, 40.849525, 27.600430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040985, 41.187786, 27.878033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907825, 40.853256, 27.703798>,  <39.827930, 40.652538, 27.599258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907825, 40.853256, 27.703798>,  <40.040985, 41.187786, 27.878033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907825, 40.853256, 27.703798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739555, -0.055018, 0.670844,
		-0.585010, 0.545462, -0.600195,
		-0.332898, -0.836328, -0.435585,
		39.807957, 40.602356, 27.573122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335777, 41.201710, 27.721970>,  <40.040985, 41.187786, 27.878033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335777, 41.201710, 27.721970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421799, 40.811424, 27.738665>,  <39.473412, 40.577255, 27.748682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.421799, 40.811424, 27.738665>,  <39.335777, 41.201710, 27.721970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421799, 40.811424, 27.738665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766794, -0.142234, 0.625936,
		-0.604795, -0.166616, -0.778756,
		0.215057, -0.975709, 0.041738,
		39.486317, 40.518711, 27.751186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591278, 40.963287, 27.780209>,  <39.335777, 41.201710, 27.721970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591278, 40.963287, 27.780209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827660, 40.648964, 27.853176>,  <38.969490, 40.460369, 27.896957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827660, 40.648964, 27.853176>,  <38.591278, 40.963287, 27.780209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827660, 40.648964, 27.853176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663117, -0.344415, 0.664571,
		-0.459397, -0.513698, -0.724617,
		0.590957, -0.785807, 0.182418,
		39.004948, 40.413223, 27.907902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123535, 40.540211, 27.813688>,  <38.591278, 40.963287, 27.780209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123535, 40.540211, 27.813688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441658, 40.344189, 27.956423>,  <38.632530, 40.226574, 28.042063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441658, 40.344189, 27.956423>,  <38.123535, 40.540211, 27.813688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441658, 40.344189, 27.956423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578100, -0.435957, 0.689740,
		-0.182447, -0.754841, -0.630022,
		0.795307, -0.490057, 0.356835,
		38.680248, 40.197170, 28.063473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000935, 39.803768, 27.774275>,  <38.123535, 40.540211, 27.813688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000935, 39.803768, 27.774275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236828, 39.906643, 28.080494>,  <38.378365, 39.968369, 28.264225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.236828, 39.906643, 28.080494>,  <38.000935, 39.803768, 27.774275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236828, 39.906643, 28.080494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611046, -0.477706, 0.631205,
		0.528048, -0.840029, -0.124565,
		0.589736, 0.257191, 0.765548,
		38.413750, 39.983799, 28.310158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887711, 39.265869, 28.205082>,  <38.000935, 39.803768, 27.774275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887711, 39.265869, 28.205082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096859, 39.500042, 28.452915>,  <38.222347, 39.640545, 28.601614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.096859, 39.500042, 28.452915>,  <37.887711, 39.265869, 28.205082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096859, 39.500042, 28.452915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572543, -0.297292, 0.764076,
		0.631510, -0.754247, 0.179741,
		0.522866, 0.585431, 0.619582,
		38.253719, 39.675671, 28.638790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104546, 38.843407, 28.857824>,  <37.887711, 39.265869, 28.205082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104546, 38.843407, 28.857824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101585, 39.235294, 28.937912>,  <38.099808, 39.470428, 28.985964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101585, 39.235294, 28.937912>,  <38.104546, 38.843407, 28.857824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101585, 39.235294, 28.937912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536592, -0.172847, 0.825950,
		0.843809, -0.101323, 0.526991,
		-0.007401, 0.979723, 0.200219,
		38.099365, 39.529213, 28.997978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440487, 38.881428, 29.510988>,  <38.104546, 38.843407, 28.857824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440487, 38.881428, 29.510988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256260, 39.235367, 29.482927>,  <38.145721, 39.447731, 29.466091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256260, 39.235367, 29.482927>,  <38.440487, 38.881428, 29.510988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256260, 39.235367, 29.482927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250075, -0.053521, 0.966746,
		0.851667, 0.462798, 0.245928,
		-0.460571, 0.884846, -0.070152,
		38.118088, 39.500820, 29.461882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730492, 39.373371, 29.971319>,  <38.440487, 38.881428, 29.510988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730492, 39.373371, 29.971319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357700, 39.496742, 29.895128>,  <38.134026, 39.570766, 29.849413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357700, 39.496742, 29.895128>,  <38.730492, 39.373371, 29.971319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357700, 39.496742, 29.895128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196274, 0.012428, 0.980470,
		0.304771, 0.951167, 0.048954,
		-0.931982, 0.308427, -0.190477,
		38.078106, 39.589272, 29.837986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664383, 40.057274, 30.216772>,  <38.730492, 39.373371, 29.971319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664383, 40.057274, 30.216772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271317, 39.986191, 30.195675>,  <38.035477, 39.943539, 30.183016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271317, 39.986191, 30.195675>,  <38.664383, 40.057274, 30.216772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271317, 39.986191, 30.195675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048510, -0.028083, 0.998428,
		-0.178912, 0.983682, 0.018976,
		-0.982668, -0.177710, -0.052743,
		37.976517, 39.932877, 30.179852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436485, 40.421925, 30.785053>,  <38.664383, 40.057274, 30.216772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436485, 40.421925, 30.785053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159775, 40.146393, 30.698370>,  <37.993748, 39.981075, 30.646360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159775, 40.146393, 30.698370>,  <38.436485, 40.421925, 30.785053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159775, 40.146393, 30.698370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123725, -0.182605, 0.975370,
		-0.711432, 0.701552, 0.041097,
		-0.691778, -0.688825, -0.216710,
		37.952240, 39.939747, 30.633356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898365, 40.602413, 31.188112>,  <38.436485, 40.421925, 30.785053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898365, 40.602413, 31.188112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854275, 40.214859, 31.099463>,  <37.827820, 39.982327, 31.046272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854275, 40.214859, 31.099463>,  <37.898365, 40.602413, 31.188112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854275, 40.214859, 31.099463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239921, -0.190453, 0.951928,
		-0.964514, 0.158102, -0.211462,
		-0.110228, -0.968882, -0.221626,
		37.821205, 39.924194, 31.032974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475803, 40.521618, 31.684111>,  <37.898365, 40.602413, 31.188112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475803, 40.521618, 31.684111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523769, 40.141052, 31.570673>,  <37.552547, 39.912712, 31.502611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523769, 40.141052, 31.570673>,  <37.475803, 40.521618, 31.684111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523769, 40.141052, 31.570673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441211, -0.306965, 0.843271,
		-0.889356, 0.024005, -0.456585,
		0.119913, -0.951418, -0.283592,
		37.559742, 39.855625, 31.485596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771870, 40.190514, 31.707327>,  <37.475803, 40.521618, 31.684111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771870, 40.190514, 31.707327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052086, 39.905949, 31.729729>,  <37.220215, 39.735210, 31.743170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052086, 39.905949, 31.729729>,  <36.771870, 40.190514, 31.707327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052086, 39.905949, 31.729729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451934, -0.381552, 0.806334,
		-0.552265, -0.590181, -0.588804,
		0.700542, -0.711410, 0.056005,
		37.262249, 39.692524, 31.746531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425285, 39.558731, 31.849657>,  <36.771870, 40.190514, 31.707327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425285, 39.558731, 31.849657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800781, 39.480396, 31.963087>,  <37.026077, 39.433395, 32.031147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800781, 39.480396, 31.963087>,  <36.425285, 39.558731, 31.849657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800781, 39.480396, 31.963087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343727, -0.472555, 0.811507,
		-0.024920, -0.859266, -0.510921,
		0.938739, -0.195840, 0.283577,
		37.082401, 39.421642, 32.048161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479733, 38.800526, 32.147125>,  <36.425285, 39.558731, 31.849657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479733, 38.800526, 32.147125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791286, 38.997673, 32.302261>,  <36.978218, 39.115963, 32.395344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791286, 38.997673, 32.302261>,  <36.479733, 38.800526, 32.147125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791286, 38.997673, 32.302261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181672, -0.414586, 0.891691,
		0.600281, -0.764983, -0.233373,
		0.778882, 0.492868, 0.387845,
		37.024952, 39.145535, 32.418613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814037, 38.273148, 32.648003>,  <36.479733, 38.800526, 32.147125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814037, 38.273148, 32.648003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948189, 38.632610, 32.761093>,  <37.028679, 38.848289, 32.828945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948189, 38.632610, 32.761093>,  <36.814037, 38.273148, 32.648003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948189, 38.632610, 32.761093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070743, -0.275232, 0.958771,
		0.939423, -0.341554, -0.028734,
		0.335380, 0.898659, 0.282722,
		37.048801, 38.902206, 32.845909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399929, 38.133404, 33.014755>,  <36.814037, 38.273148, 32.648003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399929, 38.133404, 33.014755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298576, 38.509151, 33.107178>,  <37.237766, 38.734600, 33.162632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298576, 38.509151, 33.107178>,  <37.399929, 38.133404, 33.014755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298576, 38.509151, 33.107178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168753, -0.192271, 0.966724,
		0.952534, 0.283940, -0.109803,
		-0.253380, 0.939367, 0.231061,
		37.222561, 38.790962, 33.176495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900143, 38.273544, 33.545753>,  <37.399929, 38.133404, 33.014755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900143, 38.273544, 33.545753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627174, 38.560055, 33.604065>,  <37.463394, 38.731960, 33.639053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627174, 38.560055, 33.604065>,  <37.900143, 38.273544, 33.545753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627174, 38.560055, 33.604065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034279, -0.230576, 0.972450,
		0.730154, 0.658625, 0.181903,
		-0.682422, 0.716274, 0.145779,
		37.422447, 38.774937, 33.647800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183758, 38.642113, 34.165054>,  <37.900143, 38.273544, 33.545753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183758, 38.642113, 34.165054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788891, 38.686993, 34.119610>,  <37.551971, 38.713921, 34.092342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788891, 38.686993, 34.119610>,  <38.183758, 38.642113, 34.165054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788891, 38.686993, 34.119610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139221, -0.256363, 0.956502,
		0.078193, 0.960046, 0.268695,
		-0.987169, 0.112200, -0.113612,
		37.492741, 38.720654, 34.085526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998692, 38.948341, 34.720528>,  <38.183758, 38.642113, 34.165054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998692, 38.948341, 34.720528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640934, 38.835926, 34.581337>,  <37.426281, 38.768478, 34.497822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640934, 38.835926, 34.581337>,  <37.998692, 38.948341, 34.720528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640934, 38.835926, 34.581337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305830, -0.183468, 0.934242,
		-0.326396, 0.941998, 0.078143,
		-0.894390, -0.281034, -0.347974,
		37.372616, 38.751617, 34.476944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560360, 39.374458, 35.097149>,  <37.998692, 38.948341, 34.720528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560360, 39.374458, 35.097149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385902, 39.036026, 34.974560>,  <37.281227, 38.832966, 34.901005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385902, 39.036026, 34.974560>,  <37.560360, 39.374458, 35.097149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385902, 39.036026, 34.974560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322280, -0.171123, 0.931049,
		-0.840186, 0.504845, -0.198039,
		-0.436147, -0.846078, -0.306477,
		37.255058, 38.782204, 34.882618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905121, 39.343105, 35.438164>,  <37.560360, 39.374458, 35.097149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905121, 39.343105, 35.438164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952278, 38.965061, 35.316273>,  <36.980572, 38.738235, 35.243137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952278, 38.965061, 35.316273>,  <36.905121, 39.343105, 35.438164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952278, 38.965061, 35.316273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160351, -0.320960, 0.933420,
		-0.979994, -0.061184, -0.189390,
		0.117897, -0.945114, -0.304728,
		36.987648, 38.681526, 35.224854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246880, 38.998814, 35.631332>,  <36.905121, 39.343105, 35.438164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246880, 38.998814, 35.631332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597706, 38.807121, 35.618145>,  <36.808201, 38.692104, 35.610233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597706, 38.807121, 35.618145>,  <36.246880, 38.998814, 35.631332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597706, 38.807121, 35.618145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032073, -0.010057, 0.999435,
		-0.479291, -0.877631, 0.006550,
		0.877070, -0.479230, -0.032969,
		36.860828, 38.663353, 35.608253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150795, 38.360420, 36.110378>,  <36.246880, 38.998814, 35.631332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150795, 38.360420, 36.110378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509510, 38.533718, 36.074432>,  <36.724739, 38.637695, 36.052864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509510, 38.533718, 36.074432>,  <36.150795, 38.360420, 36.110378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509510, 38.533718, 36.074432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120613, -0.043943, 0.991726,
		0.425712, -0.900204, -0.091663,
		0.896784, 0.433245, -0.089869,
		36.778545, 38.663692, 36.047470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735817, 37.936398, 36.325565>,  <36.150795, 38.360420, 36.110378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735817, 37.936398, 36.325565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811050, 38.326225, 36.374294>,  <36.856190, 38.560123, 36.403530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811050, 38.326225, 36.374294>,  <36.735817, 37.936398, 36.325565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811050, 38.326225, 36.374294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146702, -0.150518, 0.977662,
		0.971134, -0.166014, -0.171282,
		0.188087, 0.974568, 0.121819,
		36.867477, 38.618595, 36.410839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371429, 38.060070, 36.595909>,  <36.735817, 37.936398, 36.325565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371429, 38.060070, 36.595909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135883, 38.359833, 36.716991>,  <36.994556, 38.539688, 36.789639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135883, 38.359833, 36.716991>,  <37.371429, 38.060070, 36.595909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135883, 38.359833, 36.716991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282061, -0.160427, 0.945888,
		0.757415, 0.642383, -0.116907,
		-0.588867, 0.749405, 0.302701,
		36.959225, 38.584656, 36.807800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724052, 38.622162, 36.863953>,  <37.371429, 38.060070, 36.595909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724052, 38.622162, 36.863953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372585, 38.630508, 37.054745>,  <37.161705, 38.635517, 37.169220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372585, 38.630508, 37.054745>,  <37.724052, 38.622162, 36.863953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372585, 38.630508, 37.054745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472721, -0.102007, 0.875288,
		0.066921, 0.994565, 0.079766,
		-0.878667, 0.020868, 0.476978,
		37.108986, 38.636768, 37.197838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827888, 39.147285, 37.454243>,  <37.724052, 38.622162, 36.863953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827888, 39.147285, 37.454243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576077, 38.837372, 37.477596>,  <37.424992, 38.651424, 37.491608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576077, 38.837372, 37.477596>,  <37.827888, 39.147285, 37.454243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576077, 38.837372, 37.477596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478213, -0.327139, 0.815042,
		-0.612380, 0.541010, 0.576453,
		-0.629526, -0.774783, 0.058384,
		37.387218, 38.604939, 37.495113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568069, 39.107597, 38.145039>,  <37.827888, 39.147285, 37.454243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568069, 39.107597, 38.145039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494549, 38.743263, 37.997204>,  <37.450436, 38.524662, 37.908501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494549, 38.743263, 37.997204>,  <37.568069, 39.107597, 38.145039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494549, 38.743263, 37.997204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339252, -0.411674, 0.845833,
		-0.922564, 0.030083, 0.384669,
		-0.183804, -0.910834, -0.369590,
		37.439407, 38.470013, 37.886326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083328, 38.880180, 38.578972>,  <37.568069, 39.107597, 38.145039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083328, 38.880180, 38.578972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292484, 38.589222, 38.401215>,  <37.417976, 38.414646, 38.294559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292484, 38.589222, 38.401215>,  <37.083328, 38.880180, 38.578972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292484, 38.589222, 38.401215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468851, -0.189970, 0.862606,
		-0.711876, -0.659402, 0.241706,
		0.522887, -0.727393, -0.444397,
		37.449352, 38.371006, 38.267895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001602, 38.291168, 38.968098>,  <37.083328, 38.880180, 38.578972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001602, 38.291168, 38.968098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371956, 38.270367, 38.818417>,  <37.594170, 38.257885, 38.728607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371956, 38.270367, 38.818417>,  <37.001602, 38.291168, 38.968098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371956, 38.270367, 38.818417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351083, -0.247431, 0.903061,
		-0.139552, -0.967509, -0.210835,
		0.925886, -0.052003, -0.374206,
		37.649723, 38.254765, 38.706154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323666, 37.656799, 39.141251>,  <37.001602, 38.291168, 38.968098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323666, 37.656799, 39.141251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625004, 37.909241, 39.067307>,  <37.805809, 38.060707, 39.022942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625004, 37.909241, 39.067307>,  <37.323666, 37.656799, 39.141251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625004, 37.909241, 39.067307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322051, -0.108972, 0.940430,
		0.573365, -0.768006, -0.285341,
		0.753350, 0.631104, -0.184856,
		37.851009, 38.098572, 39.011848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937481, 37.385593, 39.441582>,  <37.323666, 37.656799, 39.141251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937481, 37.385593, 39.441582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937790, 37.783813, 39.403881>,  <37.937973, 38.022743, 39.381260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937790, 37.783813, 39.403881>,  <37.937481, 37.385593, 39.441582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937790, 37.783813, 39.403881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238933, 0.091340, 0.966730,
		0.971036, -0.023263, -0.237799,
		0.000769, 0.995548, -0.094253,
		37.938019, 38.082478, 39.375607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633930, 37.707478, 39.657242>,  <37.937481, 37.385593, 39.441582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633930, 37.707478, 39.657242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309193, 37.931011, 39.724899>,  <38.114349, 38.065132, 39.765495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309193, 37.931011, 39.724899>,  <38.633930, 37.707478, 39.657242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309193, 37.931011, 39.724899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170437, -0.050251, 0.984086,
		0.558443, 0.827754, -0.054450,
		-0.811845, 0.558836, 0.169143,
		38.065639, 38.098663, 39.775642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052963, 37.871155, 40.199684>,  <38.633930, 37.707478, 39.657242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052963, 37.871155, 40.199684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764709, 38.148476, 40.201084>,  <38.591755, 38.314869, 40.201923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764709, 38.148476, 40.201084>,  <39.052963, 37.871155, 40.199684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764709, 38.148476, 40.201084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245601, -0.259993, 0.933855,
		0.648354, 0.672112, 0.357636,
		-0.720637, 0.693304, 0.003496,
		38.548519, 38.356468, 40.202133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279194, 38.438908, 40.608532>,  <39.052963, 37.871155, 40.199684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279194, 38.438908, 40.608532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885597, 38.372139, 40.583557>,  <38.649441, 38.332077, 40.568573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.885597, 38.372139, 40.583557>,  <39.279194, 38.438908, 40.608532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885597, 38.372139, 40.583557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039471, -0.137541, 0.989709,
		-0.173795, 0.976329, 0.128750,
		-0.983990, -0.166925, -0.062440,
		38.590401, 38.322060, 40.564823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014809, 38.861504, 41.011463>,  <39.279194, 38.438908, 40.608532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014809, 38.861504, 41.011463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739376, 38.574520, 40.969315>,  <38.574116, 38.402328, 40.944027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739376, 38.574520, 40.969315>,  <39.014809, 38.861504, 41.011463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739376, 38.574520, 40.969315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070929, -0.211247, 0.974856,
		-0.721680, 0.663795, 0.196350,
		-0.688583, -0.717461, -0.105370,
		38.532803, 38.359283, 40.937702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591480, 38.945412, 41.633759>,  <39.014809, 38.861504, 41.011463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591480, 38.945412, 41.633759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483273, 38.578751, 41.516064>,  <38.418350, 38.358753, 41.445446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483273, 38.578751, 41.516064>,  <38.591480, 38.945412, 41.633759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483273, 38.578751, 41.516064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245104, -0.229986, 0.941823,
		-0.930992, 0.326896, -0.162460,
		-0.270515, -0.916649, -0.294238,
		38.402119, 38.303757, 41.427792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095901, 38.724232, 42.106750>,  <38.591480, 38.945412, 41.633759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095901, 38.724232, 42.106750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220444, 38.387611, 41.930183>,  <38.295170, 38.185638, 41.824245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220444, 38.387611, 41.930183>,  <38.095901, 38.724232, 42.106750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220444, 38.387611, 41.930183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054296, -0.479500, 0.875861,
		-0.948741, -0.248736, -0.194988,
		0.311355, -0.841552, -0.441416,
		38.313850, 38.135147, 41.797760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610825, 38.379986, 42.246735>,  <38.095901, 38.724232, 42.106750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610825, 38.379986, 42.246735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922981, 38.137985, 42.183548>,  <38.110275, 37.992783, 42.145634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922981, 38.137985, 42.183548>,  <37.610825, 38.379986, 42.246735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922981, 38.137985, 42.183548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066165, -0.331117, 0.941267,
		-0.621777, -0.724108, -0.298432,
		0.780395, -0.605004, -0.157970,
		38.157101, 37.956486, 42.136158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332928, 37.774158, 42.441189>,  <37.610825, 38.379986, 42.246735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332928, 37.774158, 42.441189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732445, 37.754589, 42.439854>,  <37.972157, 37.742847, 42.439053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732445, 37.754589, 42.439854>,  <37.332928, 37.774158, 42.441189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732445, 37.754589, 42.439854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012876, -0.327328, 0.944823,
		-0.047316, -0.943643, -0.327565,
		0.998797, -0.048923, -0.003338,
		38.032085, 37.739914, 42.438854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560638, 37.165779, 42.850601>,  <37.332928, 37.774158, 42.441189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560638, 37.165779, 42.850601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853607, 37.437809, 42.837563>,  <38.029388, 37.601028, 42.829739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.853607, 37.437809, 42.837563>,  <37.560638, 37.165779, 42.850601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853607, 37.437809, 42.837563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186977, -0.154868, 0.970080,
		0.654678, -0.716600, -0.240587,
		0.732419, 0.680074, -0.032599,
		38.073334, 37.641830, 42.827782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134304, 36.853802, 43.098347>,  <37.560638, 37.165779, 42.850601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134304, 36.853802, 43.098347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151661, 37.246815, 43.170738>,  <38.162075, 37.482620, 43.214172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151661, 37.246815, 43.170738>,  <38.134304, 36.853802, 43.098347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151661, 37.246815, 43.170738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085988, -0.176801, 0.980484,
		0.995351, -0.058102, 0.076815,
		0.043388, 0.982530, 0.180975,
		38.164677, 37.541573, 43.225029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102978, 36.677921, 43.799858>,  <38.134304, 36.853802, 43.098347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102978, 36.677921, 43.799858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860558, 36.645321, 44.116352>,  <37.715103, 36.625759, 44.306248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860558, 36.645321, 44.116352>,  <38.102978, 36.677921, 43.799858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860558, 36.645321, 44.116352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574629, -0.642958, -0.506366,
		0.550002, -0.761553, 0.342834,
		-0.606053, -0.081500, 0.791238,
		37.678741, 36.620872, 44.353722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032871, 37.297523, 44.252819>,  <38.102978, 36.677921, 43.799858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032871, 37.297523, 44.252819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803398, 37.427288, 44.553658>,  <37.665714, 37.505146, 44.734161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803398, 37.427288, 44.553658>,  <38.032871, 37.297523, 44.252819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803398, 37.427288, 44.553658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648502, -0.740795, -0.175123,
		0.500334, -0.588199, 0.635365,
		-0.573682, 0.324416, 0.752093,
		37.631294, 37.524612, 44.779285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953297, 37.814980, 43.726391>,  <38.032871, 37.297523, 44.252819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953297, 37.814980, 43.726391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270576, 37.583027, 43.652012>,  <38.460945, 37.443855, 43.607384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270576, 37.583027, 43.652012>,  <37.953297, 37.814980, 43.726391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270576, 37.583027, 43.652012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184667, 0.061926, -0.980848,
		0.580291, 0.812343, -0.057966,
		0.793196, -0.579882, -0.185948,
		38.508533, 37.409061, 43.596226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477425, 38.152077, 43.428112>,  <37.953297, 37.814980, 43.726391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477425, 38.152077, 43.428112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478733, 37.773609, 43.298649>,  <38.479519, 37.546528, 43.220970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478733, 37.773609, 43.298649>,  <38.477425, 38.152077, 43.428112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478733, 37.773609, 43.298649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096917, 0.322434, -0.941617,
		0.995287, -0.028288, 0.092755,
		0.003271, -0.946169, -0.323656,
		38.479713, 37.489758, 43.201553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157639, 37.990704, 43.048901>,  <38.477425, 38.152077, 43.428112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157639, 37.990704, 43.048901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823021, 37.795280, 42.949699>,  <38.622250, 37.678028, 42.890179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823021, 37.795280, 42.949699>,  <39.157639, 37.990704, 43.048901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823021, 37.795280, 42.949699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135582, 0.253970, -0.957662,
		0.530857, -0.834752, -0.146218,
		-0.836546, -0.488557, -0.247999,
		38.572056, 37.648712, 42.875301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323639, 37.504379, 42.509342>,  <39.157639, 37.990704, 43.048901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323639, 37.504379, 42.509342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930836, 37.573696, 42.479301>,  <38.695156, 37.615284, 42.461277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930836, 37.573696, 42.479301>,  <39.323639, 37.504379, 42.509342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930836, 37.573696, 42.479301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091109, 0.086348, -0.992090,
		-0.165435, -0.981078, -0.100583,
		-0.982003, 0.173291, -0.075100,
		38.636234, 37.625683, 42.456772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120640, 37.106697, 41.981953>,  <39.323639, 37.504379, 42.509342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120640, 37.106697, 41.981953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805370, 37.352749, 41.989902>,  <38.616207, 37.500381, 41.994671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805370, 37.352749, 41.989902>,  <39.120640, 37.106697, 41.981953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805370, 37.352749, 41.989902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092659, -0.086680, -0.991918,
		-0.608437, -0.783645, 0.125316,
		-0.788174, 0.615131, 0.019872,
		38.568916, 37.537289, 41.995865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659325, 36.991009, 41.335896>,  <39.120640, 37.106697, 41.981953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659325, 36.991009, 41.335896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512524, 37.334606, 41.478691>,  <38.424442, 37.540764, 41.564369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512524, 37.334606, 41.478691>,  <38.659325, 36.991009, 41.335896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512524, 37.334606, 41.478691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290293, 0.258843, -0.921265,
		-0.883763, -0.441741, 0.154362,
		-0.367005, 0.858990, 0.356991,
		38.402424, 37.592304, 41.585789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062416, 37.104603, 40.965626>,  <38.659325, 36.991009, 41.335896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062416, 37.104603, 40.965626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161636, 37.468685, 41.098293>,  <38.221169, 37.687134, 41.177895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161636, 37.468685, 41.098293>,  <38.062416, 37.104603, 40.965626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161636, 37.468685, 41.098293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223771, 0.386942, -0.894540,
		-0.942548, 0.147676, 0.299659,
		0.248053, 0.910202, 0.331666,
		38.236053, 37.741745, 41.197792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547554, 37.519783, 40.802891>,  <38.062416, 37.104603, 40.965626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547554, 37.519783, 40.802891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866608, 37.759232, 40.832348>,  <38.058041, 37.902901, 40.850021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866608, 37.759232, 40.832348>,  <37.547554, 37.519783, 40.802891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866608, 37.759232, 40.832348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181211, 0.354312, -0.917401,
		-0.575272, 0.718408, 0.391090,
		0.797637, 0.598626, 0.073642,
		38.105900, 37.938820, 40.854439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316013, 38.172768, 40.605278>,  <37.547554, 37.519783, 40.802891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316013, 38.172768, 40.605278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711422, 38.220612, 40.568356>,  <37.948666, 38.249317, 40.546200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711422, 38.220612, 40.568356>,  <37.316013, 38.172768, 40.605278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711422, 38.220612, 40.568356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127237, 0.329564, -0.935521,
		-0.081475, 0.936526, 0.340999,
		0.988521, 0.119609, -0.092309,
		38.007977, 38.256493, 40.540665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495174, 38.753857, 40.084621>,  <37.316013, 38.172768, 40.605278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495174, 38.753857, 40.084621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840450, 38.552853, 40.065094>,  <38.047615, 38.432251, 40.053375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.840450, 38.552853, 40.065094>,  <37.495174, 38.753857, 40.084621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840450, 38.552853, 40.065094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145127, 0.339577, -0.929314,
		0.483570, 0.795090, 0.366048,
		0.863191, -0.502512, -0.048820,
		38.099407, 38.402100, 40.050449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041206, 39.229935, 39.797791>,  <37.495174, 38.753857, 40.084621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041206, 39.229935, 39.797791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112457, 38.842239, 39.729839>,  <38.155209, 38.609623, 39.689068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112457, 38.842239, 39.729839>,  <38.041206, 39.229935, 39.797791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112457, 38.842239, 39.729839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219960, 0.207486, -0.953188,
		0.959108, 0.132423, 0.250152,
		0.178127, -0.969233, -0.169873,
		38.165894, 38.551468, 39.678879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500172, 39.194096, 39.284725>,  <38.041206, 39.229935, 39.797791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500172, 39.194096, 39.284725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378750, 38.812984, 39.288155>,  <38.305897, 38.584316, 39.290215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.378750, 38.812984, 39.288155>,  <38.500172, 39.194096, 39.284725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378750, 38.812984, 39.288155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120207, -0.047225, -0.991625,
		0.945202, -0.299977, 0.128866,
		-0.303550, -0.952777, 0.008577,
		38.287685, 38.527153, 39.290730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812305, 38.880196, 38.697224>,  <38.500172, 39.194096, 39.284725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812305, 38.880196, 38.697224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521526, 38.621677, 38.790051>,  <38.347061, 38.466568, 38.845745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521526, 38.621677, 38.790051>,  <38.812305, 38.880196, 38.697224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521526, 38.621677, 38.790051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317501, 0.016680, -0.948111,
		0.608886, -0.762907, -0.217324,
		-0.726946, -0.646292, 0.232068,
		38.303444, 38.427788, 38.859673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905228, 38.398460, 38.233383>,  <38.812305, 38.880196, 38.697224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905228, 38.398460, 38.233383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542965, 38.341774, 38.393230>,  <38.325607, 38.307762, 38.489140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542965, 38.341774, 38.393230>,  <38.905228, 38.398460, 38.233383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542965, 38.341774, 38.393230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364888, -0.219516, -0.904803,
		0.215950, -0.965261, 0.147096,
		-0.905661, -0.141719, 0.399617,
		38.271267, 38.299259, 38.513115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624329, 37.815773, 37.993385>,  <38.905228, 38.398460, 38.233383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624329, 37.815773, 37.993385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307022, 38.029881, 38.109463>,  <38.116638, 38.158344, 38.179111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307022, 38.029881, 38.109463>,  <38.624329, 37.815773, 37.993385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307022, 38.029881, 38.109463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358292, -0.025009, -0.933275,
		-0.492297, -0.844311, 0.211621,
		-0.793266, 0.535270, 0.290198,
		38.069042, 38.190460, 38.196522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101341, 37.458542, 37.612473>,  <38.624329, 37.815773, 37.993385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101341, 37.458542, 37.612473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907387, 37.747620, 37.809490>,  <37.791016, 37.921066, 37.927700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907387, 37.747620, 37.809490>,  <38.101341, 37.458542, 37.612473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907387, 37.747620, 37.809490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701525, 0.014904, -0.712489,
		-0.522254, -0.691005, 0.499763,
		-0.484885, 0.722697, 0.492541,
		37.761921, 37.964428, 37.957253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424568, 37.252842, 37.608410>,  <38.101341, 37.458542, 37.612473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424568, 37.252842, 37.608410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448158, 37.648369, 37.663208>,  <37.462311, 37.885685, 37.696087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448158, 37.648369, 37.663208>,  <37.424568, 37.252842, 37.608410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448158, 37.648369, 37.663208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899853, 0.112074, -0.421550,
		-0.432189, -0.098414, 0.896397,
		0.058977, 0.988815, 0.136995,
		37.465851, 37.945015, 37.704308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915348, 36.783970, 37.925545>,  <37.424568, 37.252842, 37.608410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915348, 36.783970, 37.925545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207378, 36.730659, 37.657448>,  <38.382599, 36.698673, 37.496590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.207378, 36.730659, 37.657448>,  <37.915348, 36.783970, 37.925545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207378, 36.730659, 37.657448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530775, -0.507171, 0.679011,
		-0.430423, -0.851478, -0.299534,
		0.730078, -0.133276, -0.670241,
		38.426403, 36.690678, 37.456375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172321, 36.076244, 38.018082>,  <37.915348, 36.783970, 37.925545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172321, 36.076244, 38.018082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448528, 36.294697, 37.828381>,  <38.614254, 36.425770, 37.714558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448528, 36.294697, 37.828381>,  <38.172321, 36.076244, 38.018082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448528, 36.294697, 37.828381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709947, -0.386282, 0.588865,
		0.138401, -0.743321, -0.654461,
		0.690522, 0.546131, -0.474257,
		38.655685, 36.458538, 37.686104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580406, 35.620102, 37.692570>,  <38.172321, 36.076244, 38.018082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580406, 35.620102, 37.692570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757782, 35.967487, 37.781231>,  <38.864208, 36.175919, 37.834427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757782, 35.967487, 37.781231>,  <38.580406, 35.620102, 37.692570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757782, 35.967487, 37.781231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627328, -0.477351, 0.615301,
		0.640175, -0.133796, -0.756488,
		0.443435, 0.868467, 0.221654,
		38.890812, 36.228027, 37.847729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402515, 35.537052, 37.684814>,  <38.580406, 35.620102, 37.692570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402515, 35.537052, 37.684814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215752, 35.790741, 37.931316>,  <39.103695, 35.942955, 38.079216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.215752, 35.790741, 37.931316>,  <39.402515, 35.537052, 37.684814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215752, 35.790741, 37.931316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426365, -0.449073, 0.785205,
		0.774732, 0.629366, -0.060733,
		-0.466907, 0.634218, 0.616251,
		39.075680, 35.981007, 38.116192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930592, 35.700985, 38.186924>,  <39.402515, 35.537052, 37.684814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930592, 35.700985, 38.186924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578667, 35.769047, 38.364456>,  <39.367512, 35.809883, 38.470974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578667, 35.769047, 38.364456>,  <39.930592, 35.700985, 38.186924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578667, 35.769047, 38.364456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307563, -0.508128, 0.804494,
		0.362410, 0.844306, 0.394723,
		-0.879809, 0.170155, 0.443828,
		39.314724, 35.820095, 38.497604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564442, 35.913136, 37.907837>,  <39.930592, 35.700985, 38.186924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564442, 35.913136, 37.907837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752312, 36.264946, 37.938404>,  <40.865036, 36.476032, 37.956745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.752312, 36.264946, 37.938404>,  <40.564442, 35.913136, 37.907837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.752312, 36.264946, 37.938404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244654, -0.212835, 0.945963,
		0.848261, -0.425603, -0.315143,
		0.469678, 0.879524, 0.076414,
		40.893215, 36.528805, 37.961327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182770, 35.830944, 38.305752>,  <40.564442, 35.913136, 37.907837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182770, 35.830944, 38.305752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082512, 36.216160, 38.345203>,  <41.022358, 36.447289, 38.368874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082512, 36.216160, 38.345203>,  <41.182770, 35.830944, 38.305752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082512, 36.216160, 38.345203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136403, -0.065728, 0.988470,
		0.958422, 0.261207, -0.114887,
		-0.250644, 0.963042, 0.098625,
		41.007320, 36.505074, 38.374790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754749, 36.198280, 38.683464>,  <41.182770, 35.830944, 38.305752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754749, 36.198280, 38.683464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419117, 36.409863, 38.734280>,  <41.217735, 36.536812, 38.764771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419117, 36.409863, 38.734280>,  <41.754749, 36.198280, 38.683464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419117, 36.409863, 38.734280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249540, 0.166744, 0.953901,
		0.483391, 0.832105, -0.271909,
		-0.839085, 0.528959, 0.127041,
		41.167393, 36.568550, 38.772392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845989, 36.920952, 39.004005>,  <41.754749, 36.198280, 38.683464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845989, 36.920952, 39.004005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485954, 36.765224, 39.082268>,  <41.269936, 36.671787, 39.129227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485954, 36.765224, 39.082268>,  <41.845989, 36.920952, 39.004005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485954, 36.765224, 39.082268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076839, 0.300179, 0.950783,
		-0.428889, 0.870818, -0.240272,
		-0.900084, -0.389318, 0.195656,
		41.215931, 36.648430, 39.140965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121044, 37.089741, 38.303295>,  <41.845989, 36.920952, 39.004005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.121044, 37.089741, 38.303295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488960, 36.976543, 38.194550>,  <42.709709, 36.908627, 38.129303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488960, 36.976543, 38.194550>,  <42.121044, 37.089741, 38.303295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488960, 36.976543, 38.194550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309799, -0.948881, -0.060408,
		-0.240871, 0.139785, -0.960438,
		0.919785, -0.282993, -0.271863,
		42.764896, 36.891647, 38.112991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245602, 36.771145, 37.555195>,  <42.121044, 37.089741, 38.303295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245602, 36.771145, 37.555195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468708, 36.580624, 37.827087>,  <42.602570, 36.466312, 37.990223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468708, 36.580624, 37.827087>,  <42.245602, 36.771145, 37.555195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468708, 36.580624, 37.827087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359213, -0.876810, -0.319641,
		0.748243, -0.065886, -0.660145,
		0.557761, -0.476302, 0.679735,
		42.636036, 36.437733, 38.031006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063614, 36.156052, 37.352741>,  <42.245602, 36.771145, 37.555195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063614, 36.156052, 37.352741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339542, 36.106846, 37.638123>,  <42.505100, 36.077324, 37.809349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339542, 36.106846, 37.638123>,  <42.063614, 36.156052, 37.352741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339542, 36.106846, 37.638123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077850, -0.992349, -0.095833,
		0.719781, 0.010566, -0.694121,
		0.689822, -0.123016, 0.713451,
		42.546490, 36.069942, 37.852158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564678, 35.716805, 37.053898>,  <42.063614, 36.156052, 37.352741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564678, 35.716805, 37.053898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543457, 35.700588, 37.453007>,  <42.530724, 35.690857, 37.692471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543457, 35.700588, 37.453007>,  <42.564678, 35.716805, 37.053898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543457, 35.700588, 37.453007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197061, -0.979102, -0.050265,
		0.978955, -0.199288, 0.043952,
		-0.053051, -0.040546, 0.997768,
		42.527542, 35.688423, 37.752338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982780, 35.592716, 36.440430>,  <42.564678, 35.716805, 37.053898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982780, 35.592716, 36.440430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837399, 35.231884, 36.347343>,  <42.750168, 35.015385, 36.291492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.837399, 35.231884, 36.347343>,  <42.982780, 35.592716, 36.440430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.837399, 35.231884, 36.347343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345647, 0.101391, -0.932871,
		0.865117, -0.419495, 0.274949,
		-0.363458, -0.902077, -0.232712,
		42.728363, 34.961262, 36.277531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515526, 35.018379, 36.196621>,  <42.982780, 35.592716, 36.440430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515526, 35.018379, 36.196621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148102, 34.992020, 36.040718>,  <42.927647, 34.976204, 35.947178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148102, 34.992020, 36.040718>,  <43.515526, 35.018379, 36.196621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148102, 34.992020, 36.040718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378522, 0.137497, -0.915323,
		0.113903, -0.988308, -0.101357,
		-0.918557, -0.065893, -0.389757,
		42.872536, 34.972248, 35.923790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538742, 34.647594, 35.625740>,  <43.515526, 35.018379, 36.196621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538742, 34.647594, 35.625740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254196, 34.927223, 35.596725>,  <43.083469, 35.095001, 35.579319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254196, 34.927223, 35.596725>,  <43.538742, 34.647594, 35.625740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254196, 34.927223, 35.596725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417059, 0.336801, -0.844172,
		-0.565711, -0.630761, -0.531142,
		-0.711360, 0.699075, -0.072532,
		43.040787, 35.136944, 35.574966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087334, 34.555557, 35.013962>,  <43.538742, 34.647594, 35.625740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087334, 34.555557, 35.013962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118233, 34.941532, 35.114300>,  <43.136772, 35.173119, 35.174503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118233, 34.941532, 35.114300>,  <43.087334, 34.555557, 35.013962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118233, 34.941532, 35.114300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399157, 0.200620, -0.894665,
		-0.913623, 0.169234, -0.369667,
		0.077245, 0.964941, 0.250842,
		43.141407, 35.231014, 35.189552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.865753, 34.425613, 34.807690>,  <43.087334, 34.555557, 35.013962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.865753, 34.425613, 34.807690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599556, 34.190056, 34.624249>,  <43.439838, 34.048721, 34.514183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599556, 34.190056, 34.624249>,  <43.865753, 34.425613, 34.807690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599556, 34.190056, 34.624249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485385, 0.808207, -0.333470,
		0.567024, 0.000675, -0.823701,
		-0.665496, -0.588898, -0.458601,
		43.399906, 34.013386, 34.486668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552296, 34.638771, 35.196701>,  <43.865753, 34.425613, 34.807690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552296, 34.638771, 35.196701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619705, 34.246948, 35.240643>,  <44.660152, 34.011856, 35.267006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619705, 34.246948, 35.240643>,  <44.552296, 34.638771, 35.196701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619705, 34.246948, 35.240643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800685, 0.201043, 0.564345,
		-0.574893, -0.007149, 0.818198,
		0.168528, -0.979556, 0.109854,
		44.670265, 33.953083, 35.273598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713879, 34.640186, 35.899578>,  <44.552296, 34.638771, 35.196701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713879, 34.640186, 35.899578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886646, 34.363789, 35.667725>,  <44.990307, 34.197948, 35.528614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886646, 34.363789, 35.667725>,  <44.713879, 34.640186, 35.899578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886646, 34.363789, 35.667725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879917, 0.181769, 0.438984,
		-0.197977, -0.699631, 0.686528,
		0.431916, -0.690996, -0.579631,
		45.016220, 34.156490, 35.493835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030106, 34.148613, 36.257923>,  <44.713879, 34.640186, 35.899578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.030106, 34.148613, 36.257923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237377, 34.143196, 35.915859>,  <45.361740, 34.139946, 35.710621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.237377, 34.143196, 35.915859>,  <45.030106, 34.148613, 36.257923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.237377, 34.143196, 35.915859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848240, 0.136077, 0.511832,
		0.109434, -0.990606, 0.082005,
		0.518183, -0.013548, -0.855163,
		45.392834, 34.139133, 35.659309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678612, 33.720772, 36.266270>,  <45.030106, 34.148613, 36.257923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678612, 33.720772, 36.266270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748020, 34.020206, 36.010296>,  <45.789665, 34.199867, 35.856712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.748020, 34.020206, 36.010296>,  <45.678612, 33.720772, 36.266270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.748020, 34.020206, 36.010296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890317, 0.158528, 0.426854,
		0.420984, -0.643807, -0.638972,
		0.173517, 0.748587, -0.639930,
		45.800076, 34.244781, 35.818317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.296413, 33.673191, 35.800625>,  <45.678612, 33.720772, 36.266270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.296413, 33.673191, 35.800625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182846, 34.042526, 35.904030>,  <46.114704, 34.264130, 35.966072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182846, 34.042526, 35.904030>,  <46.296413, 33.673191, 35.800625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182846, 34.042526, 35.904030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803649, 0.082094, 0.589414,
		0.523008, 0.375101, -0.765351,
		-0.283920, 0.923342, 0.258514,
		46.097672, 34.319530, 35.981583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680607, 34.124950, 36.089478>,  <46.296413, 33.673191, 35.800625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680607, 34.124950, 36.089478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.031406, 34.298668, 36.171700>,  <47.241886, 34.402897, 36.221035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.031406, 34.298668, 36.171700>,  <46.680607, 34.124950, 36.089478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.031406, 34.298668, 36.171700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099054, 0.255210, -0.961799,
		-0.470164, 0.863862, 0.180801,
		0.877003, 0.434293, 0.205559,
		47.294506, 34.428955, 36.233368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.760658, 34.698757, 35.718540>,  <46.680607, 34.124950, 36.089478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.760658, 34.698757, 35.718540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.132992, 34.586136, 35.811737>,  <47.356392, 34.518562, 35.867653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.132992, 34.586136, 35.811737>,  <46.760658, 34.698757, 35.718540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.132992, 34.586136, 35.811737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289079, 0.177225, -0.940758,
		0.223578, 0.943038, 0.246357,
		0.930831, -0.281550, 0.232988,
		47.412243, 34.501671, 35.881634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.367382, 35.212105, 35.509216>,  <46.760658, 34.698757, 35.718540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.367382, 35.212105, 35.509216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.455952, 34.823009, 35.481655>,  <47.509094, 34.589554, 35.465118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.455952, 34.823009, 35.481655>,  <47.367382, 35.212105, 35.509216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.455952, 34.823009, 35.481655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376528, 0.150463, -0.914105,
		0.899553, 0.176462, 0.399581,
		0.221427, -0.972739, -0.068906,
		47.522381, 34.531189, 35.460983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.066002, 35.168133, 35.188301>,  <47.367382, 35.212105, 35.509216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.066002, 35.168133, 35.188301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.836018, 34.851898, 35.104023>,  <47.698029, 34.662159, 35.053455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.836018, 34.851898, 35.104023>,  <48.066002, 35.168133, 35.188301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.836018, 34.851898, 35.104023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362024, -0.014885, -0.932050,
		0.733731, -0.612168, 0.294770,
		-0.574959, -0.790588, -0.210698,
		47.663528, 34.614723, 35.040813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.132095, 35.991955, 26.493917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775166, 35.849010, 26.383606>,  <39.561008, 35.763245, 26.317419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.775166, 35.849010, 26.383606>,  <40.132095, 35.991955, 26.493917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775166, 35.849010, 26.383606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243465, -0.133446, 0.960686,
		-0.380110, 0.924385, 0.032072,
		-0.892323, -0.357358, -0.275780,
		39.507469, 35.741802, 26.300873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613022, 36.342133, 26.876953>,  <40.132095, 35.991955, 26.493917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613022, 36.342133, 26.876953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.417904, 36.007187, 26.778263>,  <39.300831, 35.806221, 26.719049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.417904, 36.007187, 26.778263>,  <39.613022, 36.342133, 26.876953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417904, 36.007187, 26.778263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381832, -0.049495, 0.922906,
		-0.785021, 0.544399, -0.295589,
		-0.487798, -0.837365, -0.246724,
		39.271564, 35.755978, 26.704247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884937, 36.425755, 27.259333>,  <39.613022, 36.342133, 26.876953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884937, 36.425755, 27.259333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963791, 36.043724, 27.170826>,  <39.011105, 35.814507, 27.117722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.963791, 36.043724, 27.170826>,  <38.884937, 36.425755, 27.259333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963791, 36.043724, 27.170826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465824, -0.289843, 0.836062,
		-0.862638, -0.061748, -0.502038,
		0.197138, -0.955080, -0.221265,
		39.022934, 35.757198, 27.104446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276535, 36.192242, 27.457249>,  <38.884937, 36.425755, 27.259333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276535, 36.192242, 27.457249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.530415, 35.883553, 27.441231>,  <38.682743, 35.698338, 27.431620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.530415, 35.883553, 27.441231>,  <38.276535, 36.192242, 27.457249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530415, 35.883553, 27.441231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452763, -0.413365, 0.790022,
		-0.626234, -0.483292, -0.611768,
		0.634695, -0.771724, -0.040046,
		38.720821, 35.652035, 27.429216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855431, 35.672882, 27.364485>,  <38.276535, 36.192242, 27.457249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855431, 35.672882, 27.364485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191521, 35.513016, 27.511063>,  <38.393177, 35.417095, 27.599010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191521, 35.513016, 27.511063>,  <37.855431, 35.672882, 27.364485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191521, 35.513016, 27.511063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533601, -0.489362, 0.689779,
		-0.096354, -0.775109, -0.624437,
		0.840230, -0.399664, 0.366447,
		38.443588, 35.393116, 27.620996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778156, 34.882233, 27.410269>,  <37.855431, 35.672882, 27.364485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778156, 34.882233, 27.410269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041988, 35.010689, 27.682098>,  <38.200287, 35.087761, 27.845196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.041988, 35.010689, 27.682098>,  <37.778156, 34.882233, 27.410269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041988, 35.010689, 27.682098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541500, -0.424009, 0.725944,
		0.521275, -0.846809, -0.105772,
		0.659584, 0.321140, 0.679572,
		38.239864, 35.107033, 27.885969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579334, 34.390385, 27.944891>,  <37.778156, 34.882233, 27.410269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579334, 34.390385, 27.944891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823566, 34.671360, 28.091190>,  <37.970108, 34.839947, 28.178970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823566, 34.671360, 28.091190>,  <37.579334, 34.390385, 27.944891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823566, 34.671360, 28.091190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437693, -0.085576, 0.895043,
		0.660010, -0.706583, 0.255201,
		0.610582, 0.702437, 0.365747,
		38.006741, 34.882092, 28.200914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032284, 34.119705, 28.539333>,  <37.579334, 34.390385, 27.944891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032284, 34.119705, 28.539333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983521, 34.512562, 28.596643>,  <37.954262, 34.748276, 28.631029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983521, 34.512562, 28.596643>,  <38.032284, 34.119705, 28.539333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983521, 34.512562, 28.596643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415226, -0.181582, 0.891412,
		0.901513, 0.049180, 0.429949,
		-0.121911, 0.982145, 0.143278,
		37.946949, 34.807205, 28.639627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259541, 34.225948, 29.254580>,  <38.032284, 34.119705, 28.539333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259541, 34.225948, 29.254580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035885, 34.543644, 29.159466>,  <37.901691, 34.734261, 29.102398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.035885, 34.543644, 29.159466>,  <38.259541, 34.225948, 29.254580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035885, 34.543644, 29.159466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508145, -0.101681, 0.855248,
		0.655097, 0.599033, 0.460444,
		-0.559140, 0.794243, -0.237785,
		37.868141, 34.781918, 29.088131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003448, 34.413536, 29.933052>,  <38.259541, 34.225948, 29.254580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003448, 34.413536, 29.933052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.861099, 34.697868, 29.690376>,  <37.775688, 34.868469, 29.544771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.861099, 34.697868, 29.690376>,  <38.003448, 34.413536, 29.933052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861099, 34.697868, 29.690376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378152, 0.484137, 0.789058,
		0.854607, 0.510228, 0.096509,
		-0.355876, 0.710829, -0.606691,
		37.754337, 34.911118, 29.508369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322720, 35.150528, 30.106686>,  <38.003448, 34.413536, 29.933052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322720, 35.150528, 30.106686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.952183, 35.189850, 29.961233>,  <37.729862, 35.213444, 29.873962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.952183, 35.189850, 29.961233>,  <38.322720, 35.150528, 30.106686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952183, 35.189850, 29.961233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289763, 0.430841, 0.854642,
		0.240684, 0.897057, -0.370620,
		-0.926342, 0.098306, -0.363630,
		37.674282, 35.219341, 29.852144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009235, 35.818947, 30.257418>,  <38.322720, 35.150528, 30.106686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009235, 35.818947, 30.257418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.668896, 35.621681, 30.184933>,  <37.464691, 35.503323, 30.141441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.668896, 35.621681, 30.184933>,  <38.009235, 35.818947, 30.257418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668896, 35.621681, 30.184933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435054, 0.467932, 0.769265,
		-0.294579, 0.733368, -0.612694,
		-0.850853, -0.493164, -0.181212,
		37.413639, 35.473732, 30.130569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473820, 36.346397, 30.241159>,  <38.009235, 35.818947, 30.257418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473820, 36.346397, 30.241159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315594, 35.988693, 30.324892>,  <37.220657, 35.774071, 30.375132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315594, 35.988693, 30.324892>,  <37.473820, 36.346397, 30.241159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315594, 35.988693, 30.324892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390691, 0.370111, 0.842839,
		-0.831195, 0.251618, -0.495785,
		-0.395569, -0.894263, 0.209330,
		37.196922, 35.720413, 30.387691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931114, 36.543579, 30.625034>,  <37.473820, 36.346397, 30.241159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931114, 36.543579, 30.625034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.953312, 36.151707, 30.702124>,  <36.966633, 35.916584, 30.748377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.953312, 36.151707, 30.702124>,  <36.931114, 36.543579, 30.625034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953312, 36.151707, 30.702124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364047, 0.159879, 0.917556,
		-0.929726, -0.121081, -0.347778,
		0.055496, -0.979683, 0.192722,
		36.969959, 35.857803, 30.759941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308807, 36.390717, 30.909563>,  <36.931114, 36.543579, 30.625034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308807, 36.390717, 30.909563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551495, 36.095860, 31.028561>,  <36.697109, 35.918945, 31.099960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.551495, 36.095860, 31.028561>,  <36.308807, 36.390717, 30.909563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551495, 36.095860, 31.028561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456240, -0.016453, 0.889705,
		-0.650949, -0.675532, -0.346298,
		0.606722, -0.737147, 0.297494,
		36.733513, 35.874714, 31.117809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794205, 36.066063, 31.313665>,  <36.308807, 36.390717, 30.909563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794205, 36.066063, 31.313665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155426, 35.938133, 31.428356>,  <36.372158, 35.861374, 31.497169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155426, 35.938133, 31.428356>,  <35.794205, 36.066063, 31.313665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155426, 35.938133, 31.428356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336506, -0.111908, 0.935008,
		-0.266956, -0.940843, -0.208682,
		0.903049, -0.319829, 0.286725,
		36.426342, 35.842186, 31.514374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647865, 35.594997, 31.799009>,  <35.794205, 36.066063, 31.313665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647865, 35.594997, 31.799009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.033436, 35.664349, 31.879799>,  <36.264778, 35.705959, 31.928272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.033436, 35.664349, 31.879799>,  <35.647865, 35.594997, 31.799009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033436, 35.664349, 31.879799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209724, 0.027412, 0.977376,
		0.163923, -0.984473, 0.062785,
		0.963922, 0.173382, 0.201974,
		36.322613, 35.716362, 31.940392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914993, 35.068039, 32.212021>,  <35.647865, 35.594997, 31.799009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914993, 35.068039, 32.212021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.142296, 35.388321, 32.287876>,  <36.278679, 35.580490, 32.333389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.142296, 35.388321, 32.287876>,  <35.914993, 35.068039, 32.212021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142296, 35.388321, 32.287876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184262, -0.100782, 0.977696,
		0.801956, -0.590523, 0.090270,
		0.568255, 0.800703, 0.189634,
		36.312771, 35.628532, 32.344765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325237, 34.874680, 32.767334>,  <35.914993, 35.068039, 32.212021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325237, 34.874680, 32.767334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.370068, 35.271347, 32.792709>,  <36.396965, 35.509350, 32.807934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.370068, 35.271347, 32.792709>,  <36.325237, 34.874680, 32.767334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370068, 35.271347, 32.792709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105465, -0.051607, 0.993083,
		0.988087, -0.117988, 0.098803,
		0.112073, 0.991673, 0.063436,
		36.403690, 35.568848, 32.811741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762806, 35.067955, 33.313766>,  <36.325237, 34.874680, 32.767334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762806, 35.067955, 33.313766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.542316, 35.394871, 33.246605>,  <36.410023, 35.591019, 33.206306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.542316, 35.394871, 33.246605>,  <36.762806, 35.067955, 33.313766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542316, 35.394871, 33.246605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412900, -0.092331, 0.906084,
		0.725031, 0.568780, 0.388355,
		-0.551220, 0.817291, -0.167907,
		36.376949, 35.640057, 33.196232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769047, 35.452587, 33.842476>,  <36.762806, 35.067955, 33.313766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769047, 35.452587, 33.842476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.417915, 35.530933, 33.667641>,  <36.207237, 35.577942, 33.562740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.417915, 35.530933, 33.667641>,  <36.769047, 35.452587, 33.842476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417915, 35.530933, 33.667641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466795, -0.145404, 0.872330,
		0.107305, 0.969791, 0.219069,
		-0.877831, 0.195866, -0.437091,
		36.154568, 35.589691, 33.536514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413898, 35.615047, 33.516396>,  <36.769047, 35.452587, 33.842476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413898, 35.615047, 33.516396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.531853, 35.776672, 33.862755>,  <37.602623, 35.873650, 34.070568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.531853, 35.776672, 33.862755>,  <37.413898, 35.615047, 33.516396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531853, 35.776672, 33.862755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754987, 0.456924, -0.470335,
		-0.585695, 0.792433, -0.170325,
		0.294883, 0.404066, 0.865895,
		37.620319, 35.897892, 34.122524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451267, 36.400124, 33.448330>,  <37.413898, 35.615047, 33.516396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451267, 36.400124, 33.448330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698524, 36.321045, 33.752651>,  <37.846878, 36.273598, 33.935242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698524, 36.321045, 33.752651>,  <37.451267, 36.400124, 33.448330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698524, 36.321045, 33.752651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716728, 0.539202, -0.442225,
		-0.322801, 0.818645, 0.474995,
		0.618143, -0.197692, 0.760800,
		37.883968, 36.261738, 33.980892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677158, 37.047283, 33.594109>,  <37.451267, 36.400124, 33.448330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677158, 37.047283, 33.594109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932907, 36.819180, 33.800411>,  <38.086357, 36.682316, 33.924194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.932907, 36.819180, 33.800411>,  <37.677158, 37.047283, 33.594109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932907, 36.819180, 33.800411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758387, 0.578252, -0.300788,
		-0.126710, 0.583460, 0.802196,
		0.639369, -0.570262, 0.515759,
		38.124718, 36.648102, 33.955139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045486, 37.485947, 33.955585>,  <37.677158, 37.047283, 33.594109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045486, 37.485947, 33.955585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.272816, 37.156872, 33.949894>,  <38.409210, 36.959427, 33.946480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.272816, 37.156872, 33.949894>,  <38.045486, 37.485947, 33.955585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272816, 37.156872, 33.949894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752974, 0.526975, -0.394115,
		0.331729, 0.213272, 0.918951,
		0.568318, -0.822686, -0.014225,
		38.443310, 36.910065, 33.945625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699356, 37.775295, 34.005833>,  <38.045486, 37.485947, 33.955585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699356, 37.775295, 34.005833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.764599, 37.398922, 33.887146>,  <38.803745, 37.173100, 33.815933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.764599, 37.398922, 33.887146>,  <38.699356, 37.775295, 34.005833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764599, 37.398922, 33.887146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728279, 0.317717, -0.607178,
		0.665586, -0.117056, 0.737084,
		0.163110, -0.940932, -0.296718,
		38.813534, 37.116642, 33.798130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489906, 37.685734, 33.992851>,  <38.699356, 37.775295, 34.005833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489906, 37.685734, 33.992851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.319538, 37.418118, 33.749218>,  <39.217316, 37.257549, 33.603039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.319538, 37.418118, 33.749218>,  <39.489906, 37.685734, 33.992851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319538, 37.418118, 33.749218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705021, 0.176492, -0.686875,
		0.567042, -0.721970, 0.396514,
		-0.425921, -0.669037, -0.609081,
		39.191761, 37.217407, 33.566494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062649, 37.381317, 33.740322>,  <39.489906, 37.685734, 33.992851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062649, 37.381317, 33.740322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.748550, 37.326427, 33.498810>,  <39.560089, 37.293495, 33.353901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.748550, 37.326427, 33.498810>,  <40.062649, 37.381317, 33.740322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748550, 37.326427, 33.498810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587286, 0.143867, -0.796491,
		0.196162, -0.980037, -0.032382,
		-0.785249, -0.137223, -0.603783,
		39.512974, 37.285259, 33.317677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285622, 36.883476, 33.329868>,  <40.062649, 37.381317, 33.740322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285622, 36.883476, 33.329868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.988102, 37.045994, 33.117573>,  <39.809589, 37.143505, 32.990196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.988102, 37.045994, 33.117573>,  <40.285622, 36.883476, 33.329868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988102, 37.045994, 33.117573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517503, -0.152495, -0.841983,
		-0.423026, -0.900929, -0.096830,
		-0.743801, 0.406291, -0.530743,
		39.764961, 37.167881, 32.958351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285503, 36.516327, 32.734749>,  <40.285622, 36.883476, 33.329868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285503, 36.516327, 32.734749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.097958, 36.862125, 32.662292>,  <39.985428, 37.069603, 32.618816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.097958, 36.862125, 32.662292>,  <40.285503, 36.516327, 32.734749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097958, 36.862125, 32.662292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425197, 0.041153, -0.904165,
		-0.774190, -0.500956, -0.386876,
		-0.468868, 0.864494, -0.181145,
		39.957298, 37.121475, 32.607948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239948, 36.515324, 32.011551>,  <40.285503, 36.516327, 32.734749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239948, 36.515324, 32.011551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.123878, 36.892807, 32.075073>,  <40.054237, 37.119297, 32.113186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.123878, 36.892807, 32.075073>,  <40.239948, 36.515324, 32.011551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123878, 36.892807, 32.075073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237055, 0.231653, -0.943473,
		-0.927149, -0.236124, -0.290929,
		-0.290171, 0.943707, 0.158803,
		40.036827, 37.175919, 32.122715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728363, 36.694313, 31.475042>,  <40.239948, 36.515324, 32.011551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728363, 36.694313, 31.475042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.882374, 37.038746, 31.607885>,  <39.974781, 37.245403, 31.687592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.882374, 37.038746, 31.607885>,  <39.728363, 36.694313, 31.475042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882374, 37.038746, 31.607885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202965, 0.272037, -0.940639,
		-0.900311, 0.429577, -0.070027,
		0.385027, 0.861080, 0.332107,
		39.997883, 37.297070, 31.707518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457668, 37.243649, 31.064003>,  <39.728363, 36.694313, 31.475042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457668, 37.243649, 31.064003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.788509, 37.409763, 31.215498>,  <39.987015, 37.509434, 31.306395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.788509, 37.409763, 31.215498>,  <39.457668, 37.243649, 31.064003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788509, 37.409763, 31.215498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238191, 0.351361, -0.905434,
		-0.509091, 0.839095, 0.191692,
		0.827098, 0.415289, 0.378739,
		40.036640, 37.534351, 31.329121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476105, 37.928093, 30.858425>,  <39.457668, 37.243649, 31.064003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476105, 37.928093, 30.858425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.846703, 37.792511, 30.923807>,  <40.069061, 37.711163, 30.963036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.846703, 37.792511, 30.923807>,  <39.476105, 37.928093, 30.858425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846703, 37.792511, 30.923807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257392, 0.253940, -0.932343,
		0.274517, 0.905882, 0.322519,
		0.926493, -0.338957, 0.163456,
		40.124649, 37.690823, 30.972843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.007141, 38.417328, 30.527624>,  <39.476105, 37.928093, 30.858425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.007141, 38.417328, 30.527624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.162247, 38.051785, 30.575798>,  <40.255310, 37.832458, 30.604702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.162247, 38.051785, 30.575798>,  <40.007141, 38.417328, 30.527624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162247, 38.051785, 30.575798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273030, -0.010921, -0.961944,
		0.880395, 0.405888, 0.245275,
		0.387763, -0.913857, 0.120435,
		40.278576, 37.777626, 30.611929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217648, 38.342804, 29.830751>,  <40.007141, 38.417328, 30.527624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217648, 38.342804, 29.830751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.391708, 38.029392, 30.008165>,  <40.496143, 37.841343, 30.114614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.391708, 38.029392, 30.008165>,  <40.217648, 38.342804, 29.830751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391708, 38.029392, 30.008165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604402, -0.110919, -0.788920,
		0.667341, 0.611371, 0.425302,
		0.435148, -0.783532, 0.443535,
		40.522251, 37.794334, 30.141226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938213, 38.500275, 30.003439>,  <40.217648, 38.342804, 29.830751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938213, 38.500275, 30.003439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.819386, 38.127533, 29.920109>,  <40.748089, 37.903889, 29.870111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.819386, 38.127533, 29.920109>,  <40.938213, 38.500275, 30.003439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819386, 38.127533, 29.920109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556688, 0.008235, -0.830681,
		0.775787, -0.362745, 0.516304,
		-0.297073, -0.931852, -0.208324,
		40.730263, 37.847977, 29.857611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545166, 38.263771, 29.702147>,  <40.938213, 38.500275, 30.003439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545166, 38.263771, 29.702147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.292507, 37.973183, 29.593880>,  <41.140911, 37.798828, 29.528919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.292507, 37.973183, 29.593880>,  <41.545166, 38.263771, 29.702147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292507, 37.973183, 29.593880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503033, -0.118402, -0.856119,
		0.589900, -0.676918, 0.440228,
		-0.631646, -0.726473, -0.270667,
		41.103012, 37.755241, 29.512680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965492, 37.790749, 29.212467>,  <41.545166, 38.263771, 29.702147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965492, 37.790749, 29.212467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.586658, 37.695652, 29.126209>,  <41.359356, 37.638596, 29.074453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.586658, 37.695652, 29.126209>,  <41.965492, 37.790749, 29.212467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586658, 37.695652, 29.126209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273712, -0.247295, -0.929477,
		0.167646, -0.939322, 0.299283,
		-0.947088, -0.237740, -0.215646,
		41.302532, 37.624329, 29.061516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969536, 37.093010, 28.922976>,  <41.965492, 37.790749, 29.212467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969536, 37.093010, 28.922976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.622551, 37.258305, 28.812166>,  <41.414360, 37.357483, 28.745680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.622551, 37.258305, 28.812166>,  <41.969536, 37.093010, 28.922976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622551, 37.258305, 28.812166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180574, -0.257331, -0.949302,
		-0.463577, -0.873506, 0.148604,
		-0.867461, 0.413241, -0.277025,
		41.362312, 37.382278, 28.729059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.520851, 36.536224, 28.461008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.343544, 36.876926, 28.349274>,  <41.237160, 37.081348, 28.282232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.343544, 36.876926, 28.349274>,  <41.520851, 36.536224, 28.461008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.343544, 36.876926, 28.349274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001658, -0.310845, -0.950459,
		-0.896387, -0.421772, 0.136376,
		-0.443269, 0.851753, -0.279337,
		41.210564, 37.132454, 28.265472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993275, 36.405426, 28.019209>,  <41.520851, 36.536224, 28.461008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993275, 36.405426, 28.019209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.069298, 36.781944, 27.907608>,  <41.114910, 37.007854, 27.840647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.069298, 36.781944, 27.907608>,  <40.993275, 36.405426, 28.019209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069298, 36.781944, 27.907608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066726, -0.295909, -0.952883,
		-0.979504, 0.162482, -0.119048,
		0.190054, 0.941296, -0.279003,
		41.126312, 37.064331, 27.823908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549313, 36.434818, 27.426117>,  <40.993275, 36.405426, 28.019209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549313, 36.434818, 27.426117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.739498, 36.785614, 27.398348>,  <40.853611, 36.996090, 27.381687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.739498, 36.785614, 27.398348>,  <40.549313, 36.434818, 27.426117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739498, 36.785614, 27.398348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127856, -0.009187, -0.991750,
		-0.870393, 0.480420, 0.107760,
		0.475466, 0.876990, -0.069421,
		40.882137, 37.048710, 27.377522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208160, 36.842964, 27.023319>,  <40.549313, 36.434818, 27.426117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208160, 36.842964, 27.023319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.563446, 37.024075, 26.992161>,  <40.776619, 37.132740, 26.973467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.563446, 37.024075, 26.992161>,  <40.208160, 36.842964, 27.023319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563446, 37.024075, 26.992161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178416, 0.183700, -0.966655,
		-0.423365, 0.872497, 0.243947,
		0.888217, 0.452772, -0.077895,
		40.829910, 37.159904, 26.968792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087875, 37.413643, 26.583965>,  <40.208160, 36.842964, 27.023319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087875, 37.413643, 26.583965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.484653, 37.365036, 26.598257>,  <40.722721, 37.335873, 26.606833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.484653, 37.365036, 26.598257>,  <40.087875, 37.413643, 26.583965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484653, 37.365036, 26.598257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051577, 0.129868, -0.990189,
		0.115685, 0.984057, 0.135089,
		0.991946, -0.121518, 0.035731,
		40.782238, 37.328579, 26.608976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297955, 37.821804, 26.084044>,  <40.087875, 37.413643, 26.583965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297955, 37.821804, 26.084044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.628250, 37.606243, 26.150661>,  <40.826427, 37.476906, 26.190632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.628250, 37.606243, 26.150661>,  <40.297955, 37.821804, 26.084044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628250, 37.606243, 26.150661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171617, -0.041229, -0.984301,
		0.537307, 0.841360, 0.058440,
		0.825741, -0.538901, 0.166545,
		40.875973, 37.444572, 26.200624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799965, 38.166306, 25.743053>,  <40.297955, 37.821804, 26.084044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799965, 38.166306, 25.743053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.918209, 37.784813, 25.764978>,  <40.989155, 37.555916, 25.778133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.918209, 37.784813, 25.764978>,  <40.799965, 38.166306, 25.743053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918209, 37.784813, 25.764978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378193, 0.064149, -0.923501,
		0.877259, 0.293728, 0.379659,
		0.295613, -0.953734, 0.054810,
		41.006893, 37.498692, 25.781422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537014, 38.148018, 25.454597>,  <40.799965, 38.166306, 25.743053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537014, 38.148018, 25.454597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.380070, 37.780128, 25.449444>,  <41.285904, 37.559395, 25.446352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.380070, 37.780128, 25.449444>,  <41.537014, 38.148018, 25.454597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380070, 37.780128, 25.449444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345361, -0.134325, -0.928807,
		0.852511, -0.368880, 0.370340,
		-0.392365, -0.919719, -0.012883,
		41.262360, 37.504211, 25.445580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086494, 37.754410, 25.378429>,  <41.537014, 38.148018, 25.454597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086494, 37.754410, 25.378429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.752502, 37.596573, 25.225016>,  <41.552105, 37.501869, 25.132967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.752502, 37.596573, 25.225016>,  <42.086494, 37.754410, 25.378429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752502, 37.596573, 25.225016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399162, 0.045439, -0.915754,
		0.378778, -0.917732, 0.119566,
		-0.834983, -0.394593, -0.383536,
		41.502007, 37.478195, 25.109955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231075, 36.998589, 25.070805>,  <42.086494, 37.754410, 25.378429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231075, 36.998589, 25.070805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.908031, 37.168839, 24.907536>,  <41.714203, 37.270988, 24.809574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.908031, 37.168839, 24.907536>,  <42.231075, 36.998589, 25.070805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908031, 37.168839, 24.907536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466440, 0.037536, -0.883756,
		-0.360828, -0.904120, -0.228844,
		-0.807611, 0.425626, -0.408174,
		41.665749, 37.296528, 24.785084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.167274, 36.677158, 24.405987>,  <42.231075, 36.998589, 25.070805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.167274, 36.677158, 24.405987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.928684, 36.994320, 24.356146>,  <41.785530, 37.184616, 24.326241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.928684, 36.994320, 24.356146>,  <42.167274, 36.677158, 24.405987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928684, 36.994320, 24.356146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274653, 0.055760, -0.959925,
		-0.754180, -0.606791, -0.251033,
		-0.596471, 0.792903, -0.124604,
		41.749744, 37.232189, 24.318766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777676, 36.580032, 23.716509>,  <42.167274, 36.677158, 24.405987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777676, 36.580032, 23.716509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.761314, 36.973068, 23.789005>,  <41.751499, 37.208889, 23.832502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.761314, 36.973068, 23.789005>,  <41.777676, 36.580032, 23.716509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.761314, 36.973068, 23.789005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174423, 0.185627, -0.967015,
		-0.983821, -0.007938, -0.178978,
		-0.040900, 0.982588, 0.181240,
		41.749046, 37.267845, 23.843378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375641, 36.943161, 23.120317>,  <41.777676, 36.580032, 23.716509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375641, 36.943161, 23.120317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.597378, 37.232552, 23.284893>,  <41.730419, 37.406189, 23.383638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.597378, 37.232552, 23.284893>,  <41.375641, 36.943161, 23.120317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597378, 37.232552, 23.284893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275688, 0.306825, -0.910964,
		-0.785305, 0.618412, -0.029370,
		0.554340, 0.723481, 0.411440,
		41.763680, 37.449596, 23.408325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286758, 37.539055, 22.618099>,  <41.375641, 36.943161, 23.120317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286758, 37.539055, 22.618099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.623451, 37.613274, 22.820904>,  <41.825466, 37.657806, 22.942587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.623451, 37.613274, 22.820904>,  <41.286758, 37.539055, 22.618099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623451, 37.613274, 22.820904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421053, 0.362204, -0.831579,
		-0.337937, 0.913445, 0.226754,
		0.841732, 0.185545, 0.507011,
		41.875973, 37.668938, 22.973007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320950, 38.222988, 22.599010>,  <41.286758, 37.539055, 22.618099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320950, 38.222988, 22.599010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.695843, 38.100048, 22.664900>,  <41.920780, 38.026283, 22.704433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.695843, 38.100048, 22.664900>,  <41.320950, 38.222988, 22.599010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695843, 38.100048, 22.664900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300635, 0.472857, -0.828266,
		0.176676, 0.825798, 0.535577,
		0.937232, -0.307348, 0.164721,
		41.977013, 38.007843, 22.714315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746304, 38.866978, 22.662693>,  <41.320950, 38.222988, 22.599010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746304, 38.866978, 22.662693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.021103, 38.585663, 22.589565>,  <42.185982, 38.416874, 22.545689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.021103, 38.585663, 22.589565>,  <41.746304, 38.866978, 22.662693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021103, 38.585663, 22.589565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391254, 0.570004, -0.722507,
		0.612338, 0.424831, 0.666754,
		0.686996, -0.703288, -0.182819,
		42.227203, 38.374676, 22.534719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288643, 39.266941, 22.471977>,  <41.746304, 38.866978, 22.662693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288643, 39.266941, 22.471977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.386360, 38.904575, 22.333620>,  <42.444992, 38.687157, 22.250607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.386360, 38.904575, 22.333620>,  <42.288643, 39.266941, 22.471977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386360, 38.904575, 22.333620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484441, 0.423014, -0.765752,
		0.840022, 0.019504, 0.542202,
		0.244294, -0.905913, -0.345893,
		42.459648, 38.632801, 22.229853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.982674, 39.364471, 22.288334>,  <42.288643, 39.266941, 22.471977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.982674, 39.364471, 22.288334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.867313, 39.047527, 22.073301>,  <42.798096, 38.857361, 21.944283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.867313, 39.047527, 22.073301>,  <42.982674, 39.364471, 22.288334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867313, 39.047527, 22.073301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470254, 0.371850, -0.800368,
		0.834077, -0.483628, 0.265366,
		-0.288404, -0.792358, -0.537580,
		42.780792, 38.809818, 21.912027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505314, 39.338104, 21.870920>,  <42.982674, 39.364471, 22.288334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505314, 39.338104, 21.870920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.223228, 39.122337, 21.686872>,  <43.053978, 38.992878, 21.576445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.223228, 39.122337, 21.686872>,  <43.505314, 39.338104, 21.870920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223228, 39.122337, 21.686872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279656, 0.384723, -0.879648,
		0.651511, -0.749014, -0.120462,
		-0.705213, -0.539412, -0.460118,
		43.011665, 38.960514, 21.548838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911549, 38.978539, 21.239332>,  <43.505314, 39.338104, 21.870920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911549, 38.978539, 21.239332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.519161, 38.990421, 21.162586>,  <43.283730, 38.997551, 21.116539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.519161, 38.990421, 21.162586>,  <43.911549, 38.978539, 21.239332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.519161, 38.990421, 21.162586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193821, 0.207261, -0.958893,
		0.011282, -0.977835, -0.209075,
		-0.980972, 0.029705, -0.191863,
		43.224869, 38.999332, 21.105026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851814, 38.574474, 20.563831>,  <43.911549, 38.978539, 21.239332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851814, 38.574474, 20.563831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.509315, 38.777515, 20.602152>,  <43.303818, 38.899342, 20.625145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.509315, 38.777515, 20.602152>,  <43.851814, 38.574474, 20.563831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509315, 38.777515, 20.602152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010587, 0.202662, -0.979191,
		-0.516458, -0.837416, -0.178903,
		-0.856247, 0.507605, 0.095801,
		43.252441, 38.929798, 20.630892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358688, 38.412785, 19.964716>,  <43.851814, 38.574474, 20.563831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358688, 38.412785, 19.964716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.240402, 38.760220, 20.123764>,  <43.169430, 38.968681, 20.219193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.240402, 38.760220, 20.123764>,  <43.358688, 38.412785, 19.964716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240402, 38.760220, 20.123764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024256, 0.422927, -0.905839,
		-0.954967, -0.258228, -0.146136,
		-0.295718, 0.868592, 0.397618,
		43.151688, 39.020798, 20.243050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201889, 38.554585, 19.382668>,  <43.358688, 38.412785, 19.964716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201889, 38.554585, 19.382668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.155109, 38.867897, 19.626892>,  <43.127041, 39.055885, 19.773428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.155109, 38.867897, 19.626892>,  <43.201889, 38.554585, 19.382668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155109, 38.867897, 19.626892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027276, 0.612017, -0.790374,
		-0.992763, -0.109090, -0.050212,
		-0.116953, 0.783285, 0.610563,
		43.120022, 39.102882, 19.810061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592098, 38.155239, 19.332005>,  <43.201889, 38.554585, 19.382668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592098, 38.155239, 19.332005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.796288, 37.842266, 19.474680>,  <42.918800, 37.654484, 19.560286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.796288, 37.842266, 19.474680>,  <42.592098, 38.155239, 19.332005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796288, 37.842266, 19.474680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267307, -0.249864, -0.930653,
		0.817293, 0.570416, 0.081601,
		0.510470, -0.782428, 0.356688,
		42.949429, 37.607536, 19.581686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115009, 37.796005, 18.835487>,  <42.592098, 38.155239, 19.332005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115009, 37.796005, 18.835487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.920868, 37.463100, 18.728325>,  <41.804382, 37.263359, 18.664028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.920868, 37.463100, 18.728325>,  <42.115009, 37.796005, 18.835487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920868, 37.463100, 18.728325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368917, -0.082861, 0.925761,
		-0.792675, 0.548155, -0.266819,
		-0.485352, -0.832262, -0.267906,
		41.775261, 37.213421, 18.647953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437016, 37.918556, 18.989420>,  <42.115009, 37.796005, 18.835487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437016, 37.918556, 18.989420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.494240, 37.522865, 19.001886>,  <41.528572, 37.285450, 19.009365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.494240, 37.522865, 19.001886>,  <41.437016, 37.918556, 18.989420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494240, 37.522865, 19.001886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511880, -0.047002, 0.857770,
		-0.847062, -0.138661, -0.513088,
		0.143056, -0.989224, 0.031164,
		41.537155, 37.226097, 19.011236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833847, 37.750557, 19.242290>,  <41.437016, 37.918556, 18.989420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833847, 37.750557, 19.242290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.034046, 37.412762, 19.318542>,  <41.154167, 37.210083, 19.364294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.034046, 37.412762, 19.318542>,  <40.833847, 37.750557, 19.242290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034046, 37.412762, 19.318542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540559, -0.132839, 0.830753,
		-0.676239, -0.518836, -0.522982,
		0.500497, -0.844490, 0.190630,
		41.184196, 37.159416, 19.375732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227467, 37.305485, 19.488182>,  <40.833847, 37.750557, 19.242290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227467, 37.305485, 19.488182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.584694, 37.154209, 19.585680>,  <40.799030, 37.063446, 19.644178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.584694, 37.154209, 19.585680>,  <40.227467, 37.305485, 19.488182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584694, 37.154209, 19.585680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344968, -0.227758, 0.910562,
		-0.288851, -0.897273, -0.333866,
		0.893063, -0.378189, 0.243742,
		40.852612, 37.040752, 19.658804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987301, 36.690029, 19.801947>,  <40.227467, 37.305485, 19.488182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987301, 36.690029, 19.801947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364540, 36.750221, 19.920549>,  <40.590885, 36.786335, 19.991711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364540, 36.750221, 19.920549>,  <39.987301, 36.690029, 19.801947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364540, 36.750221, 19.920549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219556, -0.387867, 0.895184,
		0.249709, -0.909349, -0.332760,
		0.943102, 0.150476, 0.296507,
		40.647472, 36.795364, 20.009501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259312, 35.999058, 20.112020>,  <39.987301, 36.690029, 19.801947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259312, 35.999058, 20.112020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.470669, 36.312378, 20.243013>,  <40.597485, 36.500370, 20.321609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.470669, 36.312378, 20.243013>,  <40.259312, 35.999058, 20.112020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470669, 36.312378, 20.243013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194589, -0.263722, 0.944768,
		0.826399, -0.562934, 0.013072,
		0.528394, 0.783298, 0.327480,
		40.629189, 36.547367, 20.341257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670986, 35.695549, 20.728819>,  <40.259312, 35.999058, 20.112020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670986, 35.695549, 20.728819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.677826, 36.091839, 20.782734>,  <40.681931, 36.329613, 20.815083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.677826, 36.091839, 20.782734>,  <40.670986, 35.695549, 20.728819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677826, 36.091839, 20.782734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348977, -0.120418, 0.929362,
		0.936975, -0.062928, 0.343682,
		0.017097, 0.990727, 0.134789,
		40.682957, 36.389057, 20.823170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128830, 35.832764, 21.346340>,  <40.670986, 35.695549, 20.728819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128830, 35.832764, 21.346340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.916485, 36.169643, 21.308649>,  <40.789078, 36.371773, 21.286034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.916485, 36.169643, 21.308649>,  <41.128830, 35.832764, 21.346340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916485, 36.169643, 21.308649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236778, -0.040642, 0.970713,
		0.813708, 0.537627, 0.220990,
		-0.530864, 0.842203, -0.094227,
		40.757225, 36.422306, 21.280380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366081, 36.262810, 21.847610>,  <41.128830, 35.832764, 21.346340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366081, 36.262810, 21.847610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.997250, 36.389191, 21.758209>,  <40.775951, 36.465019, 21.704569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.997250, 36.389191, 21.758209>,  <41.366081, 36.262810, 21.847610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997250, 36.389191, 21.758209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225592, 0.030460, 0.973746,
		0.314463, 0.948287, 0.043189,
		-0.922075, 0.315950, -0.223504,
		40.720627, 36.483974, 21.691158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253315, 36.626968, 22.379089>,  <41.366081, 36.262810, 21.847610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253315, 36.626968, 22.379089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.908382, 36.527069, 22.202902>,  <40.701424, 36.467129, 22.097189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.908382, 36.527069, 22.202902>,  <41.253315, 36.626968, 22.379089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908382, 36.527069, 22.202902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430828, -0.095142, 0.897405,
		-0.266034, 0.963625, -0.025556,
		-0.862330, -0.249750, -0.440468,
		40.649685, 36.452145, 22.070761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763973, 36.995975, 22.659784>,  <41.253315, 36.626968, 22.379089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763973, 36.995975, 22.659784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.518291, 36.713894, 22.518114>,  <40.370884, 36.544643, 22.433113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.518291, 36.713894, 22.518114>,  <40.763973, 36.995975, 22.659784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518291, 36.713894, 22.518114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499935, 0.000462, 0.866063,
		-0.610587, 0.709005, -0.352840,
		-0.614206, -0.705204, -0.354174,
		40.334030, 36.502335, 22.411861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198605, 37.182884, 22.904806>,  <40.763973, 36.995975, 22.659784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198605, 37.182884, 22.904806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.108681, 36.806053, 22.805241>,  <40.054726, 36.579956, 22.745501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.108681, 36.806053, 22.805241>,  <40.198605, 37.182884, 22.904806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108681, 36.806053, 22.805241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540503, -0.091988, 0.836298,
		-0.810752, 0.322544, -0.488515,
		-0.224805, -0.942074, -0.248915,
		40.041241, 36.523430, 22.730566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532829, 37.165234, 23.107288>,  <40.198605, 37.182884, 22.904806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532829, 37.165234, 23.107288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.660961, 36.787422, 23.078272>,  <39.737839, 36.560738, 23.060862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.660961, 36.787422, 23.078272>,  <39.532829, 37.165234, 23.107288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660961, 36.787422, 23.078272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430406, -0.213331, 0.877064,
		-0.843884, -0.249726, -0.474865,
		0.320329, -0.944525, -0.072543,
		39.757061, 36.504066, 23.056509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026005, 36.904465, 23.409098>,  <39.532829, 37.165234, 23.107288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026005, 36.904465, 23.409098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322453, 36.636040, 23.417206>,  <39.500320, 36.474983, 23.422071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.322453, 36.636040, 23.417206>,  <39.026005, 36.904465, 23.409098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322453, 36.636040, 23.417206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347613, -0.357722, 0.866718,
		-0.574373, -0.649389, -0.498387,
		0.741121, -0.671065, 0.020270,
		39.544788, 36.434719, 23.423286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709095, 36.325703, 23.829626>,  <39.026005, 36.904465, 23.409098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709095, 36.325703, 23.829626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.102978, 36.260914, 23.855314>,  <39.339306, 36.222038, 23.870728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.102978, 36.260914, 23.855314>,  <38.709095, 36.325703, 23.829626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102978, 36.260914, 23.855314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114581, -0.324271, 0.938999,
		-0.131268, -0.931994, -0.337870,
		0.984703, -0.161974, 0.064222,
		39.398388, 36.212322, 23.874580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753399, 35.633499, 24.033817>,  <38.709095, 36.325703, 23.829626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753399, 35.633499, 24.033817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.096790, 35.804436, 24.147230>,  <39.302826, 35.906998, 24.215277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.096790, 35.804436, 24.147230>,  <38.753399, 35.633499, 24.033817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096790, 35.804436, 24.147230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129634, -0.354084, 0.926185,
		0.496190, -0.831868, -0.248577,
		0.858481, 0.427340, 0.283531,
		39.354336, 35.932636, 24.232290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060898, 35.114174, 24.359428>,  <38.753399, 35.633499, 24.033817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060898, 35.114174, 24.359428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234898, 35.449116, 24.491856>,  <39.339298, 35.650082, 24.571312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234898, 35.449116, 24.491856>,  <39.060898, 35.114174, 24.359428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234898, 35.449116, 24.491856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106468, -0.317267, 0.942341,
		0.894114, -0.445167, -0.048860,
		0.435000, 0.837358, 0.331069,
		39.365398, 35.700325, 24.591177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602894, 34.899178, 24.867693>,  <39.060898, 35.114174, 24.359428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602894, 34.899178, 24.867693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.520958, 35.284698, 24.935959>,  <39.471798, 35.516010, 24.976917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.520958, 35.284698, 24.935959>,  <39.602894, 34.899178, 24.867693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520958, 35.284698, 24.935959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264552, -0.113354, 0.957686,
		0.942366, 0.241321, -0.231757,
		-0.204840, 0.963802, 0.170663,
		39.459507, 35.573841, 24.987158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085018, 35.091141, 25.435062>,  <39.602894, 34.899178, 24.867693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085018, 35.091141, 25.435062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.803806, 35.375092, 25.452129>,  <39.635078, 35.545464, 25.462370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.803806, 35.375092, 25.452129>,  <40.085018, 35.091141, 25.435062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803806, 35.375092, 25.452129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073050, 0.012405, 0.997251,
		0.707399, 0.704213, -0.060578,
		-0.703029, 0.709880, 0.042668,
		39.592899, 35.588055, 25.464930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324409, 35.617027, 25.842958>,  <40.085018, 35.091141, 25.435062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324409, 35.617027, 25.842958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.924431, 35.613201, 25.841795>,  <39.684444, 35.610905, 25.841097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.924431, 35.613201, 25.841795>,  <40.324409, 35.617027, 25.842958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924431, 35.613201, 25.841795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003826, 0.097567, 0.995222,
		-0.009235, 0.995183, -0.097599,
		-0.999950, -0.009564, -0.002907,
		39.624447, 35.610332, 25.840923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.384411, 37.492844, 31.365885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007389, 37.540131, 31.240913>,  <40.781174, 37.568504, 31.165930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.007389, 37.540131, 31.240913>,  <41.384411, 37.492844, 31.365885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007389, 37.540131, 31.240913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298359, 0.122685, 0.946536,
		0.150228, 0.985380, -0.080366,
		-0.942557, 0.118218, -0.312428,
		40.724621, 37.575596, 31.147184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114288, 37.984478, 31.885702>,  <41.384411, 37.492844, 31.365885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114288, 37.984478, 31.885702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.780525, 37.876045, 31.693752>,  <40.580269, 37.810986, 31.578583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.780525, 37.876045, 31.693752>,  <41.114288, 37.984478, 31.885702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780525, 37.876045, 31.693752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491639, -0.027445, 0.870367,
		-0.249110, 0.962165, -0.110374,
		-0.834407, -0.271081, -0.479875,
		40.530205, 37.794720, 31.549789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578720, 38.402863, 32.129379>,  <41.114288, 37.984478, 31.885702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578720, 38.402863, 32.129379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.385368, 38.076851, 32.001591>,  <40.269356, 37.881245, 31.924917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.385368, 38.076851, 32.001591>,  <40.578720, 38.402863, 32.129379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385368, 38.076851, 32.001591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511256, -0.033399, 0.858779,
		-0.710604, 0.578450, -0.400547,
		-0.483383, -0.815034, -0.319470,
		40.240353, 37.832340, 31.905750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876019, 38.435486, 32.332355>,  <40.578720, 38.402863, 32.129379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876019, 38.435486, 32.332355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.934502, 38.043190, 32.280556>,  <39.969593, 37.807812, 32.249477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.934502, 38.043190, 32.280556>,  <39.876019, 38.435486, 32.332355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934502, 38.043190, 32.280556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548442, -0.189309, 0.814478,
		-0.823307, -0.048061, -0.565558,
		0.146210, -0.980741, -0.129501,
		39.978363, 37.748966, 32.241707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188244, 38.159916, 32.283829>,  <39.876019, 38.435486, 32.332355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188244, 38.159916, 32.283829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.406334, 37.837967, 32.377563>,  <39.537189, 37.644798, 32.433804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.406334, 37.837967, 32.377563>,  <39.188244, 38.159916, 32.283829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406334, 37.837967, 32.377563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676921, -0.257833, 0.689420,
		-0.494473, -0.534518, -0.685410,
		0.545229, -0.804868, 0.234334,
		39.569904, 37.596508, 32.447865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748787, 37.712704, 32.382156>,  <39.188244, 38.159916, 32.283829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748787, 37.712704, 32.382156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.061993, 37.536980, 32.558289>,  <39.249916, 37.431545, 32.663967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.061993, 37.536980, 32.558289>,  <38.748787, 37.712704, 32.382156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061993, 37.536980, 32.558289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591692, -0.307795, 0.745093,
		-0.191793, -0.843961, -0.500944,
		0.783017, -0.439308, 0.440332,
		39.296898, 37.405186, 32.690388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530937, 36.942390, 32.469456>,  <38.748787, 37.712704, 32.382156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530937, 36.942390, 32.469456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.811779, 37.064835, 32.726624>,  <38.980286, 37.138302, 32.880924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.811779, 37.064835, 32.726624>,  <38.530937, 36.942390, 32.469456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811779, 37.064835, 32.726624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537869, -0.363686, 0.760545,
		0.466635, -0.879787, -0.090695,
		0.702103, 0.306115, 0.642919,
		39.022411, 37.156670, 32.919498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638851, 36.347717, 32.794991>,  <38.530937, 36.942390, 32.469456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638851, 36.347717, 32.794991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.808926, 36.617111, 33.036861>,  <38.910969, 36.778748, 33.181984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.808926, 36.617111, 33.036861>,  <38.638851, 36.347717, 32.794991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808926, 36.617111, 33.036861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487783, -0.392255, 0.779874,
		0.762422, -0.626541, 0.161735,
		0.425182, 0.673485, 0.604680,
		38.936481, 36.819157, 33.218266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040127, 36.002644, 33.183788>,  <38.638851, 36.347717, 32.794991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040127, 36.002644, 33.183788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.964817, 36.338909, 33.386898>,  <38.919632, 36.540668, 33.508762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.964817, 36.338909, 33.386898>,  <39.040127, 36.002644, 33.183788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964817, 36.338909, 33.386898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572476, -0.514038, 0.638778,
		0.798013, -0.170421, 0.578041,
		-0.188274, 0.840667, 0.507771,
		38.908337, 36.591110, 33.539230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197094, 35.873993, 33.907307>,  <39.040127, 36.002644, 33.183788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197094, 35.873993, 33.907307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.954502, 36.191895, 33.897854>,  <38.808949, 36.382633, 33.892181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.954502, 36.191895, 33.897854>,  <39.197094, 35.873993, 33.907307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954502, 36.191895, 33.897854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625000, -0.458145, 0.632043,
		0.491491, 0.398087, 0.774573,
		-0.606475, 0.794751, -0.023630,
		38.772560, 36.430321, 33.890766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884048, 35.763817, 34.446480>,  <39.197094, 35.873993, 33.907307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884048, 35.763817, 34.446480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.669750, 36.073963, 34.312740>,  <38.541172, 36.260052, 34.232498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.669750, 36.073963, 34.312740>,  <38.884048, 35.763817, 34.446480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669750, 36.073963, 34.312740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764989, -0.278077, 0.580917,
		0.357446, 0.566998, 0.742123,
		-0.535746, 0.775362, -0.334349,
		38.509026, 36.306572, 34.212437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.647465, 36.006931, 35.071987>,  <38.884048, 35.763817, 34.446480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.647465, 36.006931, 35.071987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.418518, 36.090370, 34.754780>,  <38.281151, 36.140434, 34.564453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.418518, 36.090370, 34.754780>,  <38.647465, 36.006931, 35.071987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418518, 36.090370, 34.754780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814820, -0.253209, 0.521491,
		-0.092018, 0.944654, 0.314899,
		-0.572364, 0.208600, -0.793023,
		38.246807, 36.152950, 34.516872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042320, 36.558975, 35.180164>,  <38.647465, 36.006931, 35.071987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042320, 36.558975, 35.180164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.933285, 36.333153, 34.868530>,  <37.867863, 36.197659, 34.681549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.933285, 36.333153, 34.868530>,  <38.042320, 36.558975, 35.180164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933285, 36.333153, 34.868530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916962, -0.092749, 0.388044,
		-0.291332, 0.820166, -0.492395,
		-0.272592, -0.564557, -0.779082,
		37.851509, 36.163784, 34.634804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560898, 36.770317, 34.887360>,  <38.042320, 36.558975, 35.180164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560898, 36.770317, 34.887360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.518650, 36.392471, 34.763077>,  <37.493301, 36.165764, 34.688507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.518650, 36.392471, 34.763077>,  <37.560898, 36.770317, 34.887360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518650, 36.392471, 34.763077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972135, 0.032325, 0.232183,
		-0.209281, 0.326574, -0.921711,
		-0.105619, -0.944619, -0.310709,
		37.486965, 36.109085, 34.669865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365810, 37.516575, 34.749336>,  <37.560898, 36.770317, 34.887360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365810, 37.516575, 34.749336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.215443, 37.854687, 34.901218>,  <37.125221, 38.057556, 34.992348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.215443, 37.854687, 34.901218>,  <37.365810, 37.516575, 34.749336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215443, 37.854687, 34.901218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031688, 0.397797, -0.916926,
		-0.926109, -0.356726, -0.122756,
		-0.375923, 0.845283, 0.379707,
		37.102665, 38.108273, 35.015129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629425, 37.725479, 34.472061>,  <37.365810, 37.516575, 34.749336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629425, 37.725479, 34.472061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.834469, 38.046291, 34.594688>,  <36.957493, 38.238777, 34.668262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.834469, 38.046291, 34.594688>,  <36.629425, 37.725479, 34.472061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834469, 38.046291, 34.594688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027861, 0.372393, -0.927657,
		-0.858172, 0.466981, 0.213236,
		0.512606, 0.802030, 0.306566,
		36.988251, 38.286900, 34.686657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237892, 38.293476, 34.083481>,  <36.629425, 37.725479, 34.472061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237892, 38.293476, 34.083481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.573101, 38.466637, 34.216339>,  <36.774227, 38.570534, 34.296055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.573101, 38.466637, 34.216339>,  <36.237892, 38.293476, 34.083481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573101, 38.466637, 34.216339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036821, 0.562474, -0.825995,
		-0.544399, 0.704428, 0.455423,
		0.838018, 0.432902, 0.332148,
		36.824505, 38.596508, 34.315983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147934, 39.024216, 34.076019>,  <36.237892, 38.293476, 34.083481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147934, 39.024216, 34.076019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539379, 38.945179, 34.053123>,  <36.774246, 38.897755, 34.039383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539379, 38.945179, 34.053123>,  <36.147934, 39.024216, 34.076019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539379, 38.945179, 34.053123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041908, 0.463907, -0.884892,
		0.201408, 0.863566, 0.462265,
		0.978611, -0.197597, -0.057244,
		36.832962, 38.885899, 34.035950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382290, 39.582840, 33.720146>,  <36.147934, 39.024216, 34.076019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382290, 39.582840, 33.720146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.701889, 39.342434, 33.712402>,  <36.893650, 39.198189, 33.707756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.701889, 39.342434, 33.712402>,  <36.382290, 39.582840, 33.720146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701889, 39.342434, 33.712402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226789, 0.331006, -0.915971,
		0.556922, 0.727472, 0.400778,
		0.799003, -0.601016, -0.019362,
		36.941589, 39.162128, 33.706593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905758, 40.033375, 33.474144>,  <36.382290, 39.582840, 33.720146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905758, 40.033375, 33.474144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.021603, 39.654861, 33.416641>,  <37.091110, 39.427753, 33.382141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.021603, 39.654861, 33.416641>,  <36.905758, 40.033375, 33.474144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021603, 39.654861, 33.416641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418669, 0.260303, -0.870034,
		0.860722, 0.191787, 0.471568,
		0.289611, -0.946288, -0.143753,
		37.108486, 39.370975, 33.373516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501049, 40.066113, 33.135338>,  <36.905758, 40.033375, 33.474144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501049, 40.066113, 33.135338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.378742, 39.697041, 33.041378>,  <37.305359, 39.475597, 32.985004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.378742, 39.697041, 33.041378>,  <37.501049, 40.066113, 33.135338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378742, 39.697041, 33.041378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359951, 0.116378, -0.925684,
		0.881444, -0.367592, 0.296535,
		-0.305764, -0.922677, -0.234896,
		37.287014, 39.420238, 32.970909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079323, 39.688393, 32.838566>,  <37.501049, 40.066113, 33.135338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079323, 39.688393, 32.838566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.735245, 39.543167, 32.695320>,  <37.528797, 39.456032, 32.609371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.735245, 39.543167, 32.695320>,  <38.079323, 39.688393, 32.838566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735245, 39.543167, 32.695320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350873, 0.088239, -0.932257,
		0.370066, -0.927578, 0.051486,
		-0.860197, -0.363061, -0.358116,
		37.477184, 39.434250, 32.587887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314526, 39.134396, 32.366962>,  <38.079323, 39.688393, 32.838566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314526, 39.134396, 32.366962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.939995, 39.222431, 32.257530>,  <37.715275, 39.275253, 32.191872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.939995, 39.222431, 32.257530>,  <38.314526, 39.134396, 32.366962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939995, 39.222431, 32.257530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299729, 0.095151, -0.949268,
		-0.182888, -0.970829, -0.155059,
		-0.936331, 0.220085, -0.273584,
		37.659096, 39.288456, 32.175453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131508, 38.681103, 31.811357>,  <38.314526, 39.134396, 32.366962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131508, 38.681103, 31.811357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.882668, 38.993866, 31.795263>,  <37.733364, 39.181522, 31.785606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.882668, 38.993866, 31.795263>,  <38.131508, 38.681103, 31.811357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882668, 38.993866, 31.795263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250348, 0.149964, -0.956471,
		-0.741836, -0.605091, -0.289041,
		-0.622097, 0.781905, -0.040234,
		37.696037, 39.228439, 31.783194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639648, 38.585339, 31.216730>,  <38.131508, 38.681103, 31.811357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639648, 38.585339, 31.216730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.647743, 38.977222, 31.296484>,  <37.652599, 39.212353, 31.344337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.647743, 38.977222, 31.296484>,  <37.639648, 38.585339, 31.216730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647743, 38.977222, 31.296484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213925, 0.190566, -0.958082,
		-0.976641, 0.062040, -0.205729,
		0.020235, 0.979712, 0.199387,
		37.653812, 39.271137, 31.356300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544292, 38.701691, 30.678160>,  <37.639648, 38.585339, 31.216730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544292, 38.701691, 30.678160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.607155, 39.076492, 30.802944>,  <37.644871, 39.301373, 30.877815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.607155, 39.076492, 30.802944>,  <37.544292, 38.701691, 30.678160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607155, 39.076492, 30.802944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008206, 0.314636, -0.949177,
		-0.987540, 0.151727, 0.041757,
		0.157154, 0.937008, 0.311960,
		37.654301, 39.357594, 30.896532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988937, 39.065781, 30.389013>,  <37.544292, 38.701691, 30.678160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988937, 39.065781, 30.389013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.275856, 39.333153, 30.467684>,  <37.448006, 39.493576, 30.514887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.275856, 39.333153, 30.467684>,  <36.988937, 39.065781, 30.389013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275856, 39.333153, 30.467684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105675, 0.383369, -0.917530,
		-0.688707, 0.637358, 0.345626,
		0.717298, 0.668433, 0.196676,
		37.491047, 39.533684, 30.526686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718750, 39.562408, 30.143032>,  <36.988937, 39.065781, 30.389013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718750, 39.562408, 30.143032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.105530, 39.661453, 30.167374>,  <37.337597, 39.720879, 30.181978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.105530, 39.661453, 30.167374>,  <36.718750, 39.562408, 30.143032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105530, 39.661453, 30.167374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015815, 0.296442, -0.954920,
		-0.254488, 0.922394, 0.290559,
		0.966946, 0.247611, 0.060854,
		37.395615, 39.735737, 30.185629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322643, 40.249046, 30.063910>,  <36.718750, 39.562408, 30.143032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322643, 40.249046, 30.063910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.939156, 40.230579, 29.951679>,  <35.709061, 40.219501, 29.884340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.939156, 40.230579, 29.951679>,  <36.322643, 40.249046, 30.063910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939156, 40.230579, 29.951679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284021, 0.202856, 0.937114,
		0.013655, 0.978120, -0.207594,
		-0.958721, -0.046165, -0.280576,
		35.651539, 40.216728, 29.867506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980705, 40.697945, 30.523184>,  <36.322643, 40.249046, 30.063910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980705, 40.697945, 30.523184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.667068, 40.503006, 30.369459>,  <35.478886, 40.386044, 30.277224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.667068, 40.503006, 30.369459>,  <35.980705, 40.697945, 30.523184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667068, 40.503006, 30.369459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438583, -0.003052, 0.898685,
		-0.439141, 0.873205, -0.211347,
		-0.784092, -0.487343, -0.384313,
		35.431843, 40.356804, 30.254166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352951, 40.955433, 30.911966>,  <35.980705, 40.697945, 30.523184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352951, 40.955433, 30.911966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.257362, 40.601761, 30.751406>,  <35.200008, 40.389557, 30.655069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.257362, 40.601761, 30.751406>,  <35.352951, 40.955433, 30.911966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257362, 40.601761, 30.751406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615411, -0.181852, 0.766941,
		-0.751108, 0.430303, -0.500675,
		-0.238968, -0.884177, -0.401404,
		35.185673, 40.336506, 30.630985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644276, 40.843193, 31.105747>,  <35.352951, 40.955433, 30.911966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644276, 40.843193, 31.105747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.723232, 40.462555, 31.011518>,  <34.770607, 40.234173, 30.954981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.723232, 40.462555, 31.011518>,  <34.644276, 40.843193, 31.105747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723232, 40.462555, 31.011518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633676, -0.307207, 0.709985,
		-0.747991, 0.009129, -0.663647,
		0.197395, -0.951599, -0.235573,
		34.782452, 40.177074, 30.940847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089130, 40.594383, 30.898888>,  <34.644276, 40.843193, 31.105747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089130, 40.594383, 30.898888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.297188, 40.266701, 30.995506>,  <34.422024, 40.070091, 31.053476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.297188, 40.266701, 30.995506>,  <34.089130, 40.594383, 30.898888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297188, 40.266701, 30.995506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678752, -0.224833, 0.699103,
		-0.518405, -0.527585, -0.672986,
		0.520146, -0.819209, 0.241545,
		34.453232, 40.020939, 31.067970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532028, 40.153072, 30.936787>,  <34.089130, 40.594383, 30.898888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532028, 40.153072, 30.936787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.849831, 40.007698, 31.131384>,  <34.040512, 39.920471, 31.248142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.849831, 40.007698, 31.131384>,  <33.532028, 40.153072, 30.936787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849831, 40.007698, 31.131384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594691, -0.303520, 0.744458,
		-0.122903, -0.880789, -0.457280,
		0.794505, -0.363437, 0.486494,
		34.088181, 39.898666, 31.277332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339470, 39.453442, 31.247318>,  <33.532028, 40.153072, 30.936787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339470, 39.453442, 31.247318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.651386, 39.599331, 31.450851>,  <33.838535, 39.686863, 31.572971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.651386, 39.599331, 31.450851>,  <33.339470, 39.453442, 31.247318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651386, 39.599331, 31.450851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366330, -0.393273, 0.843290,
		0.507675, -0.843988, -0.173062,
		0.779788, 0.364719, 0.508833,
		33.885323, 39.708748, 31.603502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582161, 38.850948, 31.624855>,  <33.339470, 39.453442, 31.247318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582161, 38.850948, 31.624855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.746353, 39.171051, 31.799715>,  <33.844868, 39.363113, 31.904631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.746353, 39.171051, 31.799715>,  <33.582161, 38.850948, 31.624855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746353, 39.171051, 31.799715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072601, -0.449196, 0.890478,
		0.908973, -0.397264, -0.126289,
		0.410483, 0.800252, 0.437149,
		33.869499, 39.411125, 31.930861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947010, 38.544182, 32.054962>,  <33.582161, 38.850948, 31.624855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947010, 38.544182, 32.054962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.930664, 38.919994, 32.190971>,  <33.920856, 39.145481, 32.272575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.930664, 38.919994, 32.190971>,  <33.947010, 38.544182, 32.054962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930664, 38.919994, 32.190971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084689, -0.342339, 0.935752,
		0.995569, 0.009448, 0.093559,
		-0.040870, 0.939529, 0.340022,
		33.918404, 39.201855, 32.292976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442684, 38.658909, 32.707371>,  <33.947010, 38.544182, 32.054962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442684, 38.658909, 32.707371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.153900, 38.935658, 32.703419>,  <33.980629, 39.101707, 32.701046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.153900, 38.935658, 32.703419>,  <34.442684, 38.658909, 32.707371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153900, 38.935658, 32.703419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305416, -0.305816, 0.901775,
		0.620886, 0.654061, 0.432093,
		-0.721957, 0.691867, -0.009884,
		33.937313, 39.143219, 32.700455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490967, 38.997536, 33.328506>,  <34.442684, 38.658909, 32.707371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490967, 38.997536, 33.328506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.120266, 39.051224, 33.188152>,  <33.897846, 39.083435, 33.103939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.120266, 39.051224, 33.188152>,  <34.490967, 38.997536, 33.328506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120266, 39.051224, 33.188152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375672, -0.325959, 0.867537,
		0.002067, 0.935808, 0.352505,
		-0.926750, 0.134219, -0.350883,
		33.842239, 39.091488, 33.082886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104080, 39.270046, 33.836590>,  <34.490967, 38.997536, 33.328506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104080, 39.270046, 33.836590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.793476, 39.156773, 33.611439>,  <33.607113, 39.088806, 33.476349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.793476, 39.156773, 33.611439>,  <34.104080, 39.270046, 33.836590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793476, 39.156773, 33.611439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524733, -0.203925, 0.826481,
		-0.348834, 0.937133, 0.009752,
		-0.776512, -0.283188, -0.562880,
		33.560524, 39.071815, 33.442574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.849266, 40.908958, 26.505085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571545, 40.638935, 26.405298>,  <36.404911, 40.476921, 26.345427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571545, 40.638935, 26.405298>,  <36.849266, 40.908958, 26.505085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571545, 40.638935, 26.405298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413657, 0.090677, 0.905906,
		-0.588920, 0.732169, -0.342201,
		-0.694306, -0.675060, -0.249465,
		36.363255, 40.436417, 26.330460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201054, 41.250462, 26.643690>,  <36.849266, 40.908958, 26.505085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201054, 41.250462, 26.643690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152603, 40.853420, 26.646849>,  <36.123531, 40.615196, 26.648745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152603, 40.853420, 26.646849>,  <36.201054, 41.250462, 26.643690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152603, 40.853420, 26.646849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276852, 0.041422, 0.960019,
		-0.953247, 0.114100, -0.279822,
		-0.121130, -0.992605, 0.007897,
		36.116264, 40.555637, 26.649218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815319, 41.128403, 27.184050>,  <36.201054, 41.250462, 26.643690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815319, 41.128403, 27.184050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884853, 40.736629, 27.143082>,  <35.926575, 40.501564, 27.118500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884853, 40.736629, 27.143082>,  <35.815319, 41.128403, 27.184050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884853, 40.736629, 27.143082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280816, -0.148987, 0.948127,
		-0.943888, -0.136053, -0.300940,
		0.173831, -0.979435, -0.102421,
		35.937004, 40.442799, 27.112356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254051, 40.717091, 27.332129>,  <35.815319, 41.128403, 27.184050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254051, 40.717091, 27.332129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571671, 40.485340, 27.405674>,  <35.762241, 40.346291, 27.449800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571671, 40.485340, 27.405674>,  <35.254051, 40.717091, 27.332129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571671, 40.485340, 27.405674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337165, -0.168134, 0.926310,
		-0.505769, -0.797529, -0.328852,
		0.794051, -0.579377, 0.183862,
		35.809887, 40.311527, 27.460833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979259, 40.133823, 27.780193>,  <35.254051, 40.717091, 27.332129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979259, 40.133823, 27.780193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377499, 40.106030, 27.805380>,  <35.616440, 40.089355, 27.820492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377499, 40.106030, 27.805380>,  <34.979259, 40.133823, 27.780193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377499, 40.106030, 27.805380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064614, -0.021745, 0.997674,
		-0.067958, -0.997346, -0.026139,
		0.995593, -0.069489, 0.062965,
		35.676178, 40.085186, 27.824270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018650, 39.549923, 28.171404>,  <34.979259, 40.133823, 27.780193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018650, 39.549923, 28.171404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364597, 39.745152, 28.218372>,  <35.572166, 39.862289, 28.246553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364597, 39.745152, 28.218372>,  <35.018650, 39.549923, 28.171404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364597, 39.745152, 28.218372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170111, 0.064873, 0.983287,
		0.472302, -0.870387, 0.139134,
		0.864866, 0.488076, 0.117423,
		35.624058, 39.891575, 28.253599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304607, 39.235523, 28.739697>,  <35.018650, 39.549923, 28.171404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304607, 39.235523, 28.739697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470627, 39.595852, 28.688684>,  <35.570236, 39.812050, 28.658077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470627, 39.595852, 28.688684>,  <35.304607, 39.235523, 28.739697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470627, 39.595852, 28.688684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089802, 0.180050, 0.979550,
		0.905358, -0.395105, 0.155625,
		0.415045, 0.900819, -0.127528,
		35.595142, 39.866096, 28.650427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842976, 39.243839, 29.159151>,  <35.304607, 39.235523, 28.739697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842976, 39.243839, 29.159151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750210, 39.629669, 29.108843>,  <35.694550, 39.861168, 29.078657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750210, 39.629669, 29.108843>,  <35.842976, 39.243839, 29.159151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750210, 39.629669, 29.108843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116841, 0.100739, 0.988028,
		0.965693, 0.243835, 0.089339,
		-0.231916, 0.964570, -0.125773,
		35.680634, 39.919041, 29.071112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231014, 39.616890, 29.631079>,  <35.842976, 39.243839, 29.159151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231014, 39.616890, 29.631079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920280, 39.854755, 29.548225>,  <35.733841, 39.997475, 29.498514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920280, 39.854755, 29.548225>,  <36.231014, 39.616890, 29.631079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920280, 39.854755, 29.548225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133883, 0.165444, 0.977089,
		0.615305, 0.786770, -0.048908,
		-0.776836, 0.594660, -0.207134,
		35.687229, 40.033154, 29.486086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917412, 40.119705, 29.557447>,  <36.231014, 39.616890, 29.631079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917412, 40.119705, 29.557447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279335, 39.982933, 29.658960>,  <37.496490, 39.900867, 29.719868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279335, 39.982933, 29.658960>,  <36.917412, 40.119705, 29.557447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279335, 39.982933, 29.658960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305781, 0.106969, -0.946074,
		0.296348, 0.933616, 0.201343,
		0.904807, -0.341934, 0.253782,
		37.550777, 39.880352, 29.735094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458809, 40.616852, 29.236486>,  <36.917412, 40.119705, 29.557447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458809, 40.616852, 29.236486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658703, 40.283676, 29.331539>,  <37.778641, 40.083771, 29.388571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658703, 40.283676, 29.331539>,  <37.458809, 40.616852, 29.236486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658703, 40.283676, 29.331539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698388, 0.225191, -0.679370,
		0.512362, 0.505468, 0.694253,
		0.499739, -0.832941, 0.237633,
		37.808624, 40.033794, 29.402830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199829, 40.771923, 29.362957>,  <37.458809, 40.616852, 29.236486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199829, 40.771923, 29.362957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202782, 40.381401, 29.276447>,  <38.204556, 40.147087, 29.224543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202782, 40.381401, 29.276447>,  <38.199829, 40.771923, 29.362957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202782, 40.381401, 29.276447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711945, 0.157007, -0.684458,
		0.702196, -0.148919, 0.696235,
		0.007385, -0.976305, -0.216272,
		38.204998, 40.088509, 29.211565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897362, 40.397484, 29.569971>,  <38.199829, 40.771923, 29.362957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897362, 40.397484, 29.569971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715485, 40.190632, 29.279913>,  <38.606358, 40.066521, 29.105877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715485, 40.190632, 29.279913>,  <38.897362, 40.397484, 29.569971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715485, 40.190632, 29.279913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755800, 0.206705, -0.621320,
		0.471192, -0.830575, 0.296857,
		-0.454691, -0.517125, -0.725146,
		38.579079, 40.035496, 29.062368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371040, 40.018566, 29.233171>,  <38.897362, 40.397484, 29.569971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371040, 40.018566, 29.233171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085339, 40.000084, 28.953827>,  <38.913918, 39.988995, 28.786221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085339, 40.000084, 28.953827>,  <39.371040, 40.018566, 29.233171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085339, 40.000084, 28.953827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686729, 0.146316, -0.712036,
		0.135076, -0.988159, -0.072781,
		-0.714253, -0.046198, -0.698361,
		38.871063, 39.986221, 28.744318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650829, 39.594803, 28.742580>,  <39.371040, 40.018566, 29.233171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650829, 39.594803, 28.742580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359077, 39.765259, 28.528511>,  <39.184025, 39.867531, 28.400070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359077, 39.765259, 28.528511>,  <39.650829, 39.594803, 28.742580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359077, 39.765259, 28.528511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652370, 0.197757, -0.731645,
		-0.205948, -0.882779, -0.422241,
		-0.729382, 0.426138, -0.535171,
		39.140263, 39.893101, 28.367960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825447, 39.347687, 28.083017>,  <39.650829, 39.594803, 28.742580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825447, 39.347687, 28.083017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585495, 39.665878, 28.048706>,  <39.441525, 39.856792, 28.028120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585495, 39.665878, 28.048706>,  <39.825447, 39.347687, 28.083017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585495, 39.665878, 28.048706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401574, 0.206621, -0.892214,
		-0.692016, -0.569664, -0.443391,
		-0.599877, 0.795481, -0.085777,
		39.405533, 39.904522, 28.022972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715740, 39.375881, 27.422848>,  <39.825447, 39.347687, 28.083017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715740, 39.375881, 27.422848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599186, 39.741985, 27.534126>,  <39.529255, 39.961647, 27.600893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599186, 39.741985, 27.534126>,  <39.715740, 39.375881, 27.422848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.599186, 39.741985, 27.534126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224554, 0.348133, -0.910153,
		-0.929877, -0.202733, -0.306966,
		-0.291383, 0.915261, 0.278197,
		39.511772, 40.016563, 27.617586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298985, 39.674686, 26.890404>,  <39.715740, 39.375881, 27.422848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298985, 39.674686, 26.890404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479111, 39.965595, 27.097589>,  <39.587185, 40.140141, 27.221901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479111, 39.965595, 27.097589>,  <39.298985, 39.674686, 26.890404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479111, 39.965595, 27.097589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372448, 0.374227, -0.849257,
		-0.811479, 0.575348, -0.102353,
		0.450315, 0.727275, 0.517964,
		39.614204, 40.183777, 27.252979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225742, 40.129341, 26.460514>,  <39.298985, 39.674686, 26.890404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225742, 40.129341, 26.460514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525723, 40.274815, 26.681536>,  <39.705711, 40.362099, 26.814148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525723, 40.274815, 26.681536>,  <39.225742, 40.129341, 26.460514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525723, 40.274815, 26.681536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219346, 0.651331, -0.726399,
		-0.624073, 0.665961, 0.408692,
		0.749947, 0.363681, 0.552554,
		39.750706, 40.383919, 26.847301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226780, 40.823780, 26.333813>,  <39.225742, 40.129341, 26.460514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226780, 40.823780, 26.333813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590565, 40.721268, 26.464779>,  <39.808834, 40.659760, 26.543358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590565, 40.721268, 26.464779>,  <39.226780, 40.823780, 26.333813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590565, 40.721268, 26.464779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415547, 0.533379, -0.736768,
		0.014183, 0.806118, 0.591584,
		0.909461, -0.256281, 0.327415,
		39.863403, 40.644382, 26.563004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609676, 41.405602, 26.263159>,  <39.226780, 40.823780, 26.333813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609676, 41.405602, 26.263159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883026, 41.115147, 26.293425>,  <40.047035, 40.940872, 26.311584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883026, 41.115147, 26.293425>,  <39.609676, 41.405602, 26.263159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883026, 41.115147, 26.293425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474330, 0.362817, -0.802106,
		0.554988, 0.584027, 0.592368,
		0.683373, -0.726138, 0.075663,
		40.088039, 40.897305, 26.316124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181049, 41.730270, 26.037533>,  <39.609676, 41.405602, 26.263159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181049, 41.730270, 26.037533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315712, 41.355423, 26.000708>,  <40.396507, 41.130516, 25.978613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315712, 41.355423, 26.000708>,  <40.181049, 41.730270, 26.037533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315712, 41.355423, 26.000708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579485, 0.283252, -0.764176,
		0.742200, 0.203913, 0.638403,
		0.336655, -0.937117, -0.092065,
		40.416710, 41.074287, 25.973087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906967, 41.702946, 26.208170>,  <40.181049, 41.730270, 26.037533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906967, 41.702946, 26.208170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818996, 41.392712, 25.971495>,  <40.766212, 41.206570, 25.829489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818996, 41.392712, 25.971495>,  <40.906967, 41.702946, 26.208170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818996, 41.392712, 25.971495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685977, 0.308290, -0.659084,
		0.693589, -0.550836, 0.464234,
		-0.219929, -0.775588, -0.591688,
		40.753017, 41.160034, 25.793989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.150631, 34.110901, 23.000893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.153767, 34.508980, 23.039913>,  <37.155647, 34.747829, 23.063326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.153767, 34.508980, 23.039913>,  <37.150631, 34.110901, 23.000893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153767, 34.508980, 23.039913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352108, -0.088557, 0.931760,
		0.935926, -0.041655, 0.349723,
		0.007842, 0.995200, 0.097550,
		37.156120, 34.807541, 23.069178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579388, 34.276054, 23.482164>,  <37.150631, 34.110901, 23.000893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579388, 34.276054, 23.482164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.301167, 34.563030, 23.466730>,  <37.134235, 34.735214, 23.457470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.301167, 34.563030, 23.466730>,  <37.579388, 34.276054, 23.482164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301167, 34.563030, 23.466730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225885, -0.167382, 0.959666,
		0.682045, 0.676211, 0.278482,
		-0.695550, 0.717441, -0.038584,
		37.092503, 34.778263, 23.455154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636967, 34.579258, 24.099848>,  <37.579388, 34.276054, 23.482164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636967, 34.579258, 24.099848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277706, 34.709988, 23.982193>,  <37.062149, 34.788425, 23.911600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.277706, 34.709988, 23.982193>,  <37.636967, 34.579258, 24.099848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277706, 34.709988, 23.982193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320072, -0.027307, 0.947000,
		0.301466, 0.944692, 0.129131,
		-0.898149, 0.326819, -0.294137,
		37.008263, 34.808033, 23.893951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673641, 35.141598, 24.495794>,  <37.636967, 34.579258, 24.099848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673641, 35.141598, 24.495794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.294128, 35.036499, 24.425632>,  <37.066422, 34.973438, 24.383535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.294128, 35.036499, 24.425632>,  <37.673641, 35.141598, 24.495794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294128, 35.036499, 24.425632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218373, 0.144233, 0.965148,
		-0.228292, 0.954023, -0.194223,
		-0.948787, -0.262748, -0.175405,
		37.009491, 34.957676, 24.373011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321827, 35.586342, 25.000345>,  <37.673641, 35.141598, 24.495794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321827, 35.586342, 25.000345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.036053, 35.334679, 24.877876>,  <36.864586, 35.183681, 24.804394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.036053, 35.334679, 24.877876>,  <37.321827, 35.586342, 25.000345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036053, 35.334679, 24.877876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514630, 0.176023, 0.839150,
		-0.474061, 0.757087, -0.449540,
		-0.714438, -0.629155, -0.306173,
		36.821720, 35.145931, 24.786024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746037, 35.959400, 25.041922>,  <37.321827, 35.586342, 25.000345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746037, 35.959400, 25.041922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666691, 35.567665, 25.057688>,  <36.619083, 35.332623, 25.067148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666691, 35.567665, 25.057688>,  <36.746037, 35.959400, 25.041922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666691, 35.567665, 25.057688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452981, 0.127263, 0.882390,
		-0.869173, 0.157178, -0.468865,
		-0.198361, -0.979336, 0.039415,
		36.607182, 35.273865, 25.069511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108143, 35.995628, 25.314369>,  <36.746037, 35.959400, 25.041922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108143, 35.995628, 25.314369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.238586, 35.622051, 25.372879>,  <36.316853, 35.397903, 25.407986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.238586, 35.622051, 25.372879>,  <36.108143, 35.995628, 25.314369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238586, 35.622051, 25.372879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509271, -0.043206, 0.859521,
		-0.796427, -0.354792, -0.489722,
		0.326110, -0.933947, 0.146274,
		36.336418, 35.341866, 25.416761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607773, 35.635193, 25.556486>,  <36.108143, 35.995628, 25.314369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607773, 35.635193, 25.556486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.909763, 35.404533, 25.681381>,  <36.090958, 35.266140, 25.756317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.909763, 35.404533, 25.681381>,  <35.607773, 35.635193, 25.556486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909763, 35.404533, 25.681381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362949, 0.029106, 0.931354,
		-0.546149, -0.816476, -0.187318,
		0.754976, -0.576646, 0.312236,
		36.136257, 35.231541, 25.775051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318897, 35.125507, 26.044565>,  <35.607773, 35.635193, 25.556486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318897, 35.125507, 26.044565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.709465, 35.120094, 26.130751>,  <35.943806, 35.116844, 26.182463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.709465, 35.120094, 26.130751>,  <35.318897, 35.125507, 26.044565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709465, 35.120094, 26.130751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215392, -0.128859, 0.967988,
		0.014662, -0.991570, -0.128736,
		0.976418, -0.013536, 0.215466,
		36.002392, 35.116032, 26.195391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486134, 34.474304, 26.215757>,  <35.318897, 35.125507, 26.044565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486134, 34.474304, 26.215757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.752361, 34.707558, 26.402082>,  <35.912098, 34.847507, 26.513878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.752361, 34.707558, 26.402082>,  <35.486134, 34.474304, 26.215757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752361, 34.707558, 26.402082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417516, -0.226420, 0.880008,
		0.618629, -0.780187, 0.092769,
		0.665567, 0.583131, 0.465811,
		35.952030, 34.882496, 26.541826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516808, 34.204918, 26.835463>,  <35.486134, 34.474304, 26.215757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516808, 34.204918, 26.835463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.724773, 34.540268, 26.900955>,  <35.849552, 34.741478, 26.940250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.724773, 34.540268, 26.900955>,  <35.516808, 34.204918, 26.835463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724773, 34.540268, 26.900955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217852, -0.055203, 0.974419,
		0.825972, -0.542284, 0.153942,
		0.519913, 0.838380, 0.163734,
		35.880749, 34.791782, 26.950075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749195, 34.001308, 27.419050>,  <35.516808, 34.204918, 26.835463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749195, 34.001308, 27.419050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.790562, 34.398766, 27.401281>,  <35.815380, 34.637241, 27.390619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.790562, 34.398766, 27.401281>,  <35.749195, 34.001308, 27.419050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790562, 34.398766, 27.401281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414301, 0.083634, 0.906289,
		0.904246, -0.075317, 0.420317,
		0.103412, 0.993647, -0.044422,
		35.821587, 34.696861, 27.387955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144707, 34.232563, 27.966230>,  <35.749195, 34.001308, 27.419050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144707, 34.232563, 27.966230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907314, 34.542664, 27.879730>,  <35.764877, 34.728725, 27.827831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907314, 34.542664, 27.879730>,  <36.144707, 34.232563, 27.966230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907314, 34.542664, 27.879730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306706, 0.030565, 0.951313,
		0.744118, 0.630911, 0.219635,
		-0.593481, 0.775253, -0.216248,
		35.729271, 34.775238, 27.814856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272858, 34.724384, 28.493931>,  <36.144707, 34.232563, 27.966230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272858, 34.724384, 28.493931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.920319, 34.844070, 28.347668>,  <35.708797, 34.915882, 28.259911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.920319, 34.844070, 28.347668>,  <36.272858, 34.724384, 28.493931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920319, 34.844070, 28.347668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302486, 0.237184, 0.923172,
		0.362953, 0.924238, -0.118533,
		-0.881344, 0.299213, -0.365656,
		35.655914, 34.933834, 28.237970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829235, 35.186165, 28.886154>,  <36.272858, 34.724384, 28.493931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829235, 35.186165, 28.886154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133873, 35.244099, 29.138817>,  <37.316658, 35.278858, 29.290415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133873, 35.244099, 29.138817>,  <36.829235, 35.186165, 28.886154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133873, 35.244099, 29.138817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590645, 0.245936, -0.768540,
		-0.266657, 0.958404, 0.101759,
		0.761599, 0.144834, 0.631657,
		37.362354, 35.287548, 29.328314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206848, 35.883579, 28.831202>,  <36.829235, 35.186165, 28.886154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206848, 35.883579, 28.831202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.409828, 35.550747, 28.920769>,  <37.531616, 35.351048, 28.974508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.409828, 35.550747, 28.920769>,  <37.206848, 35.883579, 28.831202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409828, 35.550747, 28.920769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605390, 0.159351, -0.779815,
		0.613184, 0.531277, 0.584594,
		0.507453, -0.832077, 0.223918,
		37.562065, 35.301125, 28.987944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908905, 36.090603, 28.763763>,  <37.206848, 35.883579, 28.831202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908905, 36.090603, 28.763763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936245, 35.692505, 28.736013>,  <37.952648, 35.453644, 28.719364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936245, 35.692505, 28.736013>,  <37.908905, 36.090603, 28.763763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936245, 35.692505, 28.736013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669248, 0.097307, -0.736640,
		0.739889, 0.003921, 0.672717,
		0.068349, -0.995247, -0.069373,
		37.956749, 35.393932, 28.715202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638451, 35.936157, 28.774372>,  <37.908905, 36.090603, 28.763763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638451, 35.936157, 28.774372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.452934, 35.629978, 28.595943>,  <38.341625, 35.446270, 28.488886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.452934, 35.629978, 28.595943>,  <38.638451, 35.936157, 28.774372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452934, 35.629978, 28.595943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761931, -0.087710, -0.641691,
		0.452057, -0.637490, 0.623900,
		-0.463794, -0.765450, -0.446074,
		38.313797, 35.400345, 28.462122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207664, 35.373978, 28.728672>,  <38.638451, 35.936157, 28.774372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207664, 35.373978, 28.728672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.913170, 35.308834, 28.465937>,  <38.736473, 35.269749, 28.308296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.913170, 35.308834, 28.465937>,  <39.207664, 35.373978, 28.728672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913170, 35.308834, 28.465937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654462, 0.075571, -0.752309,
		0.172158, -0.983751, 0.050947,
		-0.736234, -0.162859, -0.656837,
		38.692299, 35.259975, 28.268885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511440, 35.014362, 28.207317>,  <39.207664, 35.373978, 28.728672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511440, 35.014362, 28.207317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180298, 35.153450, 28.031254>,  <38.981613, 35.236904, 27.925615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180298, 35.153450, 28.031254>,  <39.511440, 35.014362, 28.207317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180298, 35.153450, 28.031254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509622, 0.138376, -0.849198,
		-0.234376, -0.927331, -0.291761,
		-0.827861, 0.347720, -0.440157,
		38.931938, 35.257767, 27.899206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583542, 34.672638, 27.534830>,  <39.511440, 35.014362, 28.207317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583542, 34.672638, 27.534830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.309292, 34.961006, 27.494453>,  <39.144741, 35.134026, 27.470228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.309292, 34.961006, 27.494453>,  <39.583542, 34.672638, 27.534830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309292, 34.961006, 27.494453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339748, 0.194268, -0.920234,
		-0.643807, -0.665232, -0.378127,
		-0.685627, 0.720921, -0.100940,
		39.103603, 35.177284, 27.464170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283302, 34.523865, 26.812551>,  <39.583542, 34.672638, 27.534830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283302, 34.523865, 26.812551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.216480, 34.906631, 26.907553>,  <39.176388, 35.136292, 26.964554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.216480, 34.906631, 26.907553>,  <39.283302, 34.523865, 26.812551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216480, 34.906631, 26.907553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099428, 0.256012, -0.961547,
		-0.980921, -0.137016, -0.137912,
		-0.167055, 0.956914, 0.237504,
		39.166363, 35.193707, 26.978804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915634, 34.623234, 26.239738>,  <39.283302, 34.523865, 26.812551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915634, 34.623234, 26.239738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998890, 34.987095, 26.383522>,  <39.048843, 35.205410, 26.469791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.998890, 34.987095, 26.383522>,  <38.915634, 34.623234, 26.239738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998890, 34.987095, 26.383522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095087, 0.384586, -0.918179,
		-0.973465, 0.156933, 0.166545,
		0.208143, 0.909652, 0.359459,
		39.061333, 35.259991, 26.491360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397778, 35.088966, 25.980721>,  <38.915634, 34.623234, 26.239738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397778, 35.088966, 25.980721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.736755, 35.278698, 26.076086>,  <38.940144, 35.392536, 26.133307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.736755, 35.278698, 26.076086>,  <38.397778, 35.088966, 25.980721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736755, 35.278698, 26.076086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051516, 0.373501, -0.926198,
		-0.528372, 0.797188, 0.292087,
		0.847449, 0.474330, 0.238416,
		38.990990, 35.420998, 26.147612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310032, 35.712894, 25.694283>,  <38.397778, 35.088966, 25.980721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310032, 35.712894, 25.694283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705025, 35.678589, 25.747223>,  <38.942020, 35.658005, 25.778988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.705025, 35.678589, 25.747223>,  <38.310032, 35.712894, 25.694283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705025, 35.678589, 25.747223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154924, 0.370403, -0.915860,
		0.029526, 0.924903, 0.379054,
		0.987485, -0.085766, 0.132353,
		39.001270, 35.652859, 25.786928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621304, 36.403545, 25.473854>,  <38.310032, 35.712894, 25.694283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621304, 36.403545, 25.473854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.931648, 36.151203, 25.470585>,  <39.117855, 35.999798, 25.468624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.931648, 36.151203, 25.470585>,  <38.621304, 36.403545, 25.473854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931648, 36.151203, 25.470585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255256, 0.325724, -0.910356,
		0.576962, 0.704223, 0.413745,
		0.775860, -0.630852, -0.008172,
		39.164406, 35.961948, 25.468134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237347, 36.813606, 25.297249>,  <38.621304, 36.403545, 25.473854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237347, 36.813606, 25.297249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.309139, 36.431984, 25.201284>,  <39.352215, 36.203011, 25.143705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.309139, 36.431984, 25.201284>,  <39.237347, 36.813606, 25.297249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309139, 36.431984, 25.201284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367277, 0.291222, -0.883344,
		0.912631, 0.070426, 0.402672,
		0.179477, -0.954060, -0.239913,
		39.362984, 36.145767, 25.129311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983715, 36.765701, 25.076412>,  <39.237347, 36.813606, 25.297249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983715, 36.765701, 25.076412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.810394, 36.450329, 24.901766>,  <39.706402, 36.261105, 24.796978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.810394, 36.450329, 24.901766>,  <39.983715, 36.765701, 25.076412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810394, 36.450329, 24.901766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364815, 0.289556, -0.884911,
		0.824113, -0.542715, 0.162166,
		-0.433299, -0.788427, -0.436617,
		39.680405, 36.213802, 24.770781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594826, 36.670864, 25.406282>,  <39.983715, 36.765701, 25.076412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594826, 36.670864, 25.406282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.949310, 36.856091, 25.411827>,  <41.162003, 36.967228, 25.415154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.949310, 36.856091, 25.411827>,  <40.594826, 36.670864, 25.406282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949310, 36.856091, 25.411827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015749, 0.000208, 0.999876,
		0.463008, -0.886322, 0.007477,
		0.886214, 0.463069, 0.013863,
		41.215176, 36.995010, 25.415985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152176, 36.268166, 25.870258>,  <40.594826, 36.670864, 25.406282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152176, 36.268166, 25.870258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.173710, 36.666637, 25.842743>,  <41.186630, 36.905720, 25.826235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.173710, 36.666637, 25.842743>,  <41.152176, 36.268166, 25.870258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173710, 36.666637, 25.842743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037421, 0.066826, 0.997063,
		0.997849, -0.056248, -0.033680,
		0.053832, 0.996178, -0.068787,
		41.189861, 36.965492, 25.822107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715820, 36.469784, 26.312273>,  <41.152176, 36.268166, 25.870258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715820, 36.469784, 26.312273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.514221, 36.812275, 26.266926>,  <41.393261, 37.017769, 26.239717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.514221, 36.812275, 26.266926>,  <41.715820, 36.469784, 26.312273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514221, 36.812275, 26.266926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175098, 0.229826, 0.957351,
		0.845768, 0.462654, -0.265757,
		-0.504000, 0.856231, -0.113369,
		41.363022, 37.069145, 26.232916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056549, 36.964584, 26.651608>,  <41.715820, 36.469784, 26.312273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056549, 36.964584, 26.651608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.684277, 37.104412, 26.608473>,  <41.460911, 37.188309, 26.582592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.684277, 37.104412, 26.608473>,  <42.056549, 36.964584, 26.651608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684277, 37.104412, 26.608473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013687, 0.327842, 0.944633,
		0.365565, 0.877680, -0.309902,
		-0.930685, 0.349567, -0.107835,
		41.405071, 37.209282, 26.576122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045010, 37.639351, 26.769415>,  <42.056549, 36.964584, 26.651608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045010, 37.639351, 26.769415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.667019, 37.525021, 26.833075>,  <41.440224, 37.456425, 26.871271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.667019, 37.525021, 26.833075>,  <42.045010, 37.639351, 26.769415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667019, 37.525021, 26.833075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068439, 0.302996, 0.950531,
		-0.319905, 0.909120, -0.266762,
		-0.944975, -0.285822, 0.159150,
		41.383526, 37.439274, 26.880819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738876, 38.039253, 27.286602>,  <42.045010, 37.639351, 26.769415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738876, 38.039253, 27.286602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.470955, 37.742599, 27.301207>,  <41.310200, 37.564606, 27.309969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.470955, 37.742599, 27.301207>,  <41.738876, 38.039253, 27.286602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470955, 37.742599, 27.301207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075126, 0.116607, 0.990333,
		-0.738726, 0.660588, -0.133820,
		-0.669806, -0.741638, 0.036513,
		41.270012, 37.520107, 27.312160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191887, 38.302513, 27.671717>,  <41.738876, 38.039253, 27.286602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191887, 38.302513, 27.671717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.204288, 37.905361, 27.717710>,  <41.211727, 37.667068, 27.745306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.204288, 37.905361, 27.717710>,  <41.191887, 38.302513, 27.671717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204288, 37.905361, 27.717710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238981, 0.104339, 0.965402,
		-0.970529, -0.057408, -0.234045,
		0.031002, -0.992884, 0.114984,
		41.213589, 37.607494, 27.752205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468788, 38.205776, 28.018980>,  <41.191887, 38.302513, 27.671717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468788, 38.205776, 28.018980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.710098, 37.894760, 28.089966>,  <40.854885, 37.708153, 28.132557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.710098, 37.894760, 28.089966>,  <40.468788, 38.205776, 28.018980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710098, 37.894760, 28.089966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263381, 0.015798, 0.964563,
		-0.752787, -0.628638, -0.195257,
		0.603276, -0.777537, 0.177464,
		40.891083, 37.661499, 28.143206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124352, 37.824989, 28.495071>,  <40.468788, 38.205776, 28.018980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124352, 37.824989, 28.495071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.504200, 37.715950, 28.556910>,  <40.732109, 37.650524, 28.594013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.504200, 37.715950, 28.556910>,  <40.124352, 37.824989, 28.495071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504200, 37.715950, 28.556910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205833, -0.170549, 0.963611,
		-0.236321, -0.946889, -0.218069,
		0.949624, -0.272607, 0.154596,
		40.789089, 37.634171, 28.603289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164185, 37.139751, 28.821098>,  <40.124352, 37.824989, 28.495071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164185, 37.139751, 28.821098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.506195, 37.327461, 28.909388>,  <40.711399, 37.440086, 28.962360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.506195, 37.327461, 28.909388>,  <40.164185, 37.139751, 28.821098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.506195, 37.327461, 28.909388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159962, -0.166213, 0.973029,
		0.493301, -0.867271, -0.067051,
		0.855024, 0.469270, 0.220723,
		40.762703, 37.468243, 28.975605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416306, 36.656414, 29.204332>,  <40.164185, 37.139751, 28.821098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.416306, 36.656414, 29.204332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.595745, 37.007561, 29.271395>,  <40.703411, 37.218250, 29.311632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.595745, 37.007561, 29.271395>,  <40.416306, 36.656414, 29.204332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595745, 37.007561, 29.271395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099699, -0.137268, 0.985504,
		0.888154, -0.458814, 0.025944,
		0.448602, 0.877865, 0.167658,
		40.730324, 37.270920, 29.321692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698456, 36.606243, 29.806574>,  <40.416306, 36.656414, 29.204332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698456, 36.606243, 29.806574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.706997, 37.006058, 29.797956>,  <40.712124, 37.245949, 29.792786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.706997, 37.006058, 29.797956>,  <40.698456, 36.606243, 29.806574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706997, 37.006058, 29.797956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320059, 0.027251, 0.947005,
		0.947157, -0.013327, 0.320494,
		0.021355, 0.999540, -0.021546,
		40.713402, 37.305920, 29.791492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528259, 36.570576, 30.504509>,  <40.698456, 36.606243, 29.806574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528259, 36.570576, 30.504509> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.630447, 36.946266, 30.412777>,  <40.691761, 37.171680, 30.357738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.630447, 36.946266, 30.412777>,  <40.528259, 36.570576, 30.504509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630447, 36.946266, 30.412777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217747, 0.287000, 0.932854,
		0.941979, -0.188377, 0.277832,
		0.255466, 0.939226, -0.229329,
		40.707088, 37.228035, 30.343979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037365, 36.804214, 30.943285>,  <40.528259, 36.570576, 30.504509>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037365, 36.804214, 30.943285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.857403, 37.139347, 30.819592>,  <40.749428, 37.340427, 30.745375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.857403, 37.139347, 30.819592>,  <41.037365, 36.804214, 30.943285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857403, 37.139347, 30.819592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001871, 0.347140, 0.937811,
		0.893076, 0.421345, -0.157747,
		-0.449902, 0.837832, -0.309234,
		40.722431, 37.390697, 30.726822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.472324, 41.637718, 25.737852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.225372, 41.379429, 25.558126>,  <41.077202, 41.224453, 25.450291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.225372, 41.379429, 25.558126>,  <41.472324, 41.637718, 25.737852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225372, 41.379429, 25.558126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464151, 0.162148, -0.870788,
		0.635146, -0.746155, 0.199607,
		-0.617377, -0.645726, -0.449316,
		41.040157, 41.185711, 25.423332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934288, 41.154129, 25.411009>,  <41.472324, 41.637718, 25.737852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934288, 41.154129, 25.411009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.580456, 41.147388, 25.224575>,  <41.368156, 41.143345, 25.112715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.580456, 41.147388, 25.224575>,  <41.934288, 41.154129, 25.411009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580456, 41.147388, 25.224575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457900, 0.158448, -0.874770,
		0.088592, -0.987223, -0.132443,
		-0.884579, -0.016852, -0.466087,
		41.315083, 41.142334, 25.084749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984894, 40.594063, 24.891693>,  <41.934288, 41.154129, 25.411009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984894, 40.594063, 24.891693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.702896, 40.862919, 24.801174>,  <41.533695, 41.024231, 24.746862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.702896, 40.862919, 24.801174>,  <41.984894, 40.594063, 24.891693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702896, 40.862919, 24.801174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463318, 0.194905, -0.864493,
		-0.536951, -0.714313, -0.448820,
		-0.704996, 0.672137, -0.226299,
		41.491398, 41.064560, 24.733284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987843, 40.440304, 24.230556>,  <41.984894, 40.594063, 24.891693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987843, 40.440304, 24.230556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.777657, 40.778305, 24.270260>,  <41.651546, 40.981106, 24.294083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.777657, 40.778305, 24.270260>,  <41.987843, 40.440304, 24.230556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777657, 40.778305, 24.270260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408420, 0.352860, -0.841834,
		-0.746379, -0.401813, -0.530532,
		-0.525463, 0.845007, 0.099259,
		41.620018, 41.031807, 24.300037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569557, 40.470097, 23.543720>,  <41.987843, 40.440304, 24.230556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569557, 40.470097, 23.543720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.588490, 40.844563, 23.683062>,  <41.599850, 41.069244, 23.766666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.588490, 40.844563, 23.683062>,  <41.569557, 40.470097, 23.543720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588490, 40.844563, 23.683062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134008, 0.339640, -0.930960,
		-0.989849, 0.090747, -0.109377,
		0.047333, 0.936167, 0.348353,
		41.602688, 41.125412, 23.787567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117638, 40.885731, 23.194191>,  <41.569557, 40.470097, 23.543720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117638, 40.885731, 23.194191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.356171, 41.161327, 23.358955>,  <41.499290, 41.326687, 23.457813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.356171, 41.161327, 23.358955>,  <41.117638, 40.885731, 23.194191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356171, 41.161327, 23.358955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126777, 0.425858, -0.895864,
		-0.792660, 0.586457, 0.166606,
		0.596336, 0.688994, 0.411910,
		41.535072, 41.368027, 23.482529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780361, 41.527641, 22.848803>,  <41.117638, 40.885731, 23.194191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780361, 41.527641, 22.848803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.151199, 41.615944, 22.969973>,  <41.373703, 41.668926, 23.042675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.151199, 41.615944, 22.969973>,  <40.780361, 41.527641, 22.848803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151199, 41.615944, 22.969973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196395, 0.402264, -0.894211,
		-0.319258, 0.888510, 0.329581,
		0.927094, 0.220756, 0.302925,
		41.429329, 41.682171, 23.060850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956219, 42.280758, 22.689268>,  <40.780361, 41.527641, 22.848803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956219, 42.280758, 22.689268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.312962, 42.102791, 22.721846>,  <41.527008, 41.996010, 22.741392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.312962, 42.102791, 22.721846>,  <40.956219, 42.280758, 22.689268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312962, 42.102791, 22.721846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315511, 0.482931, -0.816842,
		0.324098, 0.754204, 0.571084,
		0.891860, -0.444920, 0.081442,
		41.580521, 41.969315, 22.746279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317734, 42.672192, 22.249031>,  <40.956219, 42.280758, 22.689268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317734, 42.672192, 22.249031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.553333, 42.359001, 22.329065>,  <41.694695, 42.171089, 22.377087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.553333, 42.359001, 22.329065>,  <41.317734, 42.672192, 22.249031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553333, 42.359001, 22.329065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497137, 0.155849, -0.853561,
		0.637131, 0.602217, 0.481040,
		0.588998, -0.782972, 0.200088,
		41.730034, 42.124111, 22.389091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119946, 42.786804, 22.297609>,  <41.317734, 42.672192, 22.249031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119946, 42.786804, 22.297609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.077190, 42.399971, 22.205235>,  <42.051537, 42.167873, 22.149809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.077190, 42.399971, 22.205235>,  <42.119946, 42.786804, 22.297609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077190, 42.399971, 22.205235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675662, 0.099748, -0.730432,
		0.729421, -0.234111, 0.642757,
		-0.106888, -0.967079, -0.230938,
		42.045124, 42.109848, 22.135954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827206, 42.383297, 22.144075>,  <42.119946, 42.786804, 22.297609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827206, 42.383297, 22.144075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.545811, 42.180145, 21.945215>,  <42.376972, 42.058254, 21.825899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.545811, 42.180145, 21.945215>,  <42.827206, 42.383297, 22.144075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545811, 42.180145, 21.945215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589448, -0.026143, -0.807383,
		0.397058, -0.861029, 0.317762,
		-0.703488, -0.507882, -0.497152,
		42.334763, 42.027782, 21.796070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238918, 41.882202, 21.701971>,  <42.827206, 42.383297, 22.144075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238918, 41.882202, 21.701971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.865639, 41.856476, 21.560553>,  <42.641670, 41.841042, 21.475700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.865639, 41.856476, 21.560553>,  <43.238918, 41.882202, 21.701971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865639, 41.856476, 21.560553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356566, -0.287930, -0.888795,
		-0.044636, -0.955489, 0.291629,
		-0.933203, -0.064313, -0.353547,
		42.585678, 41.837181, 21.454489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892361, 41.200317, 21.535252>,  <43.238918, 41.882202, 21.701971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892361, 41.200317, 21.535252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.751972, 41.498768, 21.308939>,  <42.667740, 41.677837, 21.173151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.751972, 41.498768, 21.308939>,  <42.892361, 41.200317, 21.535252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751972, 41.498768, 21.308939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269858, -0.497990, -0.824126,
		-0.896658, -0.441926, -0.026568,
		-0.350972, 0.746128, -0.565784,
		42.646679, 41.722607, 21.139204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610558, 40.801189, 21.069063>,  <42.892361, 41.200317, 21.535252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610558, 40.801189, 21.069063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.657021, 41.169697, 20.920589>,  <42.684898, 41.390800, 20.831505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.657021, 41.169697, 20.920589>,  <42.610558, 40.801189, 21.069063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657021, 41.169697, 20.920589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372745, -0.386836, -0.843457,
		-0.920634, -0.040380, -0.388332,
		0.116162, 0.921264, -0.371186,
		42.691868, 41.446075, 20.809233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721439, 40.140377, 20.742619>,  <42.610558, 40.801189, 21.069063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721439, 40.140377, 20.742619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.855244, 39.800762, 20.579042>,  <42.935528, 39.596992, 20.480896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.855244, 39.800762, 20.579042>,  <42.721439, 40.140377, 20.742619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855244, 39.800762, 20.579042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309771, -0.508892, 0.803163,
		-0.890025, -0.141988, -0.433238,
		0.334511, -0.849040, -0.408943,
		42.955597, 39.546051, 20.456360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130711, 39.637501, 20.730780>,  <42.721439, 40.140377, 20.742619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130711, 39.637501, 20.730780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.465961, 39.423145, 20.690063>,  <42.667114, 39.294533, 20.665634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.465961, 39.423145, 20.690063>,  <42.130711, 39.637501, 20.730780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465961, 39.423145, 20.690063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320273, -0.634519, 0.703428,
		-0.441547, -0.556964, -0.703440,
		0.838130, -0.535889, -0.101789,
		42.717400, 39.262379, 20.659527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934177, 39.036045, 20.776033>,  <42.130711, 39.637501, 20.730780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934177, 39.036045, 20.776033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.321152, 39.009754, 20.873812>,  <42.553337, 38.993980, 20.932478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.321152, 39.009754, 20.873812>,  <41.934177, 39.036045, 20.776033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321152, 39.009754, 20.873812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233437, -0.605086, 0.761169,
		0.097884, -0.793443, -0.600722,
		0.967433, -0.065724, 0.244447,
		42.611382, 38.990036, 20.947145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039749, 38.333229, 20.845587>,  <41.934177, 39.036045, 20.776033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039749, 38.333229, 20.845587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.342129, 38.499680, 21.047728>,  <42.523556, 38.599552, 21.169012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.342129, 38.499680, 21.047728>,  <42.039749, 38.333229, 20.845587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.342129, 38.499680, 21.047728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137115, -0.654189, 0.743798,
		0.640113, -0.631563, -0.437474,
		0.755947, 0.416131, 0.505352,
		42.568913, 38.624519, 21.199333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338531, 37.723442, 21.262831>,  <42.039749, 38.333229, 20.845587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338531, 37.723442, 21.262831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.431923, 38.069427, 21.440517>,  <42.487957, 38.277020, 21.547131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.431923, 38.069427, 21.440517>,  <42.338531, 37.723442, 21.262831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431923, 38.069427, 21.440517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003238, -0.456151, 0.889897,
		0.972357, -0.209210, -0.103701,
		0.233479, 0.864961, 0.444219,
		42.501968, 38.328915, 21.573784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693153, 37.430927, 21.802565>,  <42.338531, 37.723442, 21.262831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693153, 37.430927, 21.802565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.607651, 37.802998, 21.921949>,  <42.556351, 38.026241, 21.993580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.607651, 37.802998, 21.921949>,  <42.693153, 37.430927, 21.802565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607651, 37.802998, 21.921949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007664, -0.307112, 0.951642,
		0.976858, 0.201129, 0.072774,
		-0.213753, 0.930177, 0.298463,
		42.543526, 38.082050, 22.011488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.045879, 37.358498, 22.360542>,  <42.693153, 37.430927, 21.802565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.045879, 37.358498, 22.360542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.808781, 37.677979, 22.401985>,  <42.666523, 37.869667, 22.426851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.808781, 37.677979, 22.401985>,  <43.045879, 37.358498, 22.360542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808781, 37.677979, 22.401985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087481, -0.191730, 0.977541,
		0.800626, 0.570367, 0.183517,
		-0.592743, 0.798699, 0.103608,
		42.630959, 37.917587, 22.433067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213524, 37.627018, 22.977112>,  <43.045879, 37.358498, 22.360542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213524, 37.627018, 22.977112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.833206, 37.723824, 22.899731>,  <42.605015, 37.781906, 22.853302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.833206, 37.723824, 22.899731>,  <43.213524, 37.627018, 22.977112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833206, 37.723824, 22.899731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278800, -0.395927, 0.874936,
		0.135156, 0.885816, 0.443919,
		-0.950791, 0.242017, -0.193453,
		42.547970, 37.796429, 22.841694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972752, 37.893822, 23.579855>,  <43.213524, 37.627018, 22.977112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972752, 37.893822, 23.579855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.626110, 37.805523, 23.400846>,  <42.418125, 37.752544, 23.293442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.626110, 37.805523, 23.400846>,  <42.972752, 37.893822, 23.579855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.626110, 37.805523, 23.400846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444735, -0.065055, 0.893297,
		-0.226308, 0.973158, -0.041799,
		-0.866600, -0.220750, -0.447520,
		42.366131, 37.739300, 23.266590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559902, 38.349537, 23.817032>,  <42.972752, 37.893822, 23.579855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559902, 38.349537, 23.817032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.316944, 38.055183, 23.697338>,  <42.171169, 37.878571, 23.625523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.316944, 38.055183, 23.697338>,  <42.559902, 38.349537, 23.817032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316944, 38.055183, 23.697338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315803, -0.121960, 0.940954,
		-0.728930, 0.666031, -0.158317,
		-0.607396, -0.735886, -0.299235,
		42.134724, 37.834419, 23.607567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880882, 38.523071, 24.012735>,  <42.559902, 38.349537, 23.817032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880882, 38.523071, 24.012735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.848759, 38.125381, 23.984234>,  <41.829487, 37.886768, 23.967133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.848759, 38.125381, 23.984234>,  <41.880882, 38.523071, 24.012735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848759, 38.125381, 23.984234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485811, -0.023380, 0.873751,
		-0.870367, 0.104783, -0.481126,
		-0.080305, -0.994220, -0.071253,
		41.824669, 37.827114, 23.962858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151123, 38.374287, 24.161867>,  <41.880882, 38.523071, 24.012735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151123, 38.374287, 24.161867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.344276, 38.030880, 24.230890>,  <41.460167, 37.824837, 24.272305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.344276, 38.030880, 24.230890>,  <41.151123, 38.374287, 24.161867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344276, 38.030880, 24.230890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477253, -0.092800, 0.873853,
		-0.734202, -0.504322, -0.454540,
		0.482884, -0.858515, 0.172555,
		41.489143, 37.773327, 24.282658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569260, 37.943321, 24.362104>,  <41.151123, 38.374287, 24.161867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569260, 37.943321, 24.362104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.920525, 37.781635, 24.464428>,  <41.131283, 37.684624, 24.525822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.920525, 37.781635, 24.464428>,  <40.569260, 37.943321, 24.362104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920525, 37.781635, 24.464428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395284, -0.312005, 0.863946,
		-0.269398, -0.859808, -0.433769,
		0.878166, -0.404207, 0.255815,
		41.183975, 37.660370, 24.541172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360214, 37.282219, 24.545902>,  <40.569260, 37.943321, 24.362104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360214, 37.282219, 24.545902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.712914, 37.347763, 24.722843>,  <40.924534, 37.387089, 24.829008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.712914, 37.347763, 24.722843>,  <40.360214, 37.282219, 24.545902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712914, 37.347763, 24.722843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424427, -0.133695, 0.895538,
		0.205882, -0.977382, -0.048339,
		0.881745, 0.163859, 0.442352,
		40.977436, 37.396919, 24.855549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451996, 36.544849, 24.502750>,  <40.360214, 37.282219, 24.545902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451996, 36.544849, 24.502750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.111668, 36.351128, 24.421223>,  <39.907471, 36.234894, 24.372305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.111668, 36.351128, 24.421223>,  <40.451996, 36.544849, 24.502750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111668, 36.351128, 24.421223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182503, 0.091372, -0.978950,
		0.492738, -0.870113, 0.010646,
		-0.850824, -0.484308, -0.203821,
		39.856419, 36.205833, 24.360077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626595, 35.928600, 24.118612>,  <40.451996, 36.544849, 24.502750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626595, 35.928600, 24.118612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.249516, 36.036762, 24.040430>,  <40.023270, 36.101662, 23.993521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.249516, 36.036762, 24.040430>,  <40.626595, 35.928600, 24.118612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249516, 36.036762, 24.040430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204147, 0.004119, -0.978931,
		-0.263905, -0.962737, -0.059086,
		-0.942697, 0.270408, -0.195453,
		39.966705, 36.117886, 23.981794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537148, 35.608288, 23.591305>,  <40.626595, 35.928600, 24.118612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537148, 35.608288, 23.591305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.221813, 35.849697, 23.543497>,  <40.032612, 35.994545, 23.514812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.221813, 35.849697, 23.543497>,  <40.537148, 35.608288, 23.591305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221813, 35.849697, 23.543497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140456, -0.012587, -0.990007,
		-0.598998, -0.797245, -0.074846,
		-0.788336, 0.603525, -0.119517,
		39.985313, 36.030754, 23.507643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203739, 35.295151, 22.944576>,  <40.537148, 35.608288, 23.591305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203739, 35.295151, 22.944576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.043270, 35.659592, 22.982405>,  <39.946987, 35.878258, 23.005102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.043270, 35.659592, 22.982405>,  <40.203739, 35.295151, 22.944576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043270, 35.659592, 22.982405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006918, 0.100226, -0.994941,
		-0.915975, -0.399801, -0.033905,
		-0.401176, 0.911106, 0.094570,
		39.922916, 35.932922, 23.010777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784149, 35.260433, 22.384264>,  <40.203739, 35.295151, 22.944576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784149, 35.260433, 22.384264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.836288, 35.640038, 22.499077>,  <39.867573, 35.867802, 22.567965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.836288, 35.640038, 22.499077>,  <39.784149, 35.260433, 22.384264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836288, 35.640038, 22.499077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282560, 0.241940, -0.928237,
		-0.950352, 0.202096, -0.236617,
		0.130346, 0.949011, 0.287033,
		39.875393, 35.924740, 22.585186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525314, 35.622135, 21.840528>,  <39.784149, 35.260433, 22.384264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525314, 35.622135, 21.840528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.768845, 35.877308, 22.029154>,  <39.914963, 36.030411, 22.142330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.768845, 35.877308, 22.029154>,  <39.525314, 35.622135, 21.840528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768845, 35.877308, 22.029154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266986, 0.394985, -0.879037,
		-0.747030, 0.661078, 0.070156,
		0.608823, 0.637936, 0.471564,
		39.951492, 36.068687, 22.170624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412632, 36.211746, 21.597717>,  <39.525314, 35.622135, 21.840528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412632, 36.211746, 21.597717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.787312, 36.277298, 21.721481>,  <40.012119, 36.316628, 21.795740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.787312, 36.277298, 21.721481>,  <39.412632, 36.211746, 21.597717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787312, 36.277298, 21.721481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240214, 0.342132, -0.908429,
		-0.254731, 0.925251, 0.281109,
		0.936701, 0.163879, 0.309410,
		40.068321, 36.326462, 21.814304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724178, 36.595875, 21.476328>,  <39.412632, 36.211746, 21.597717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724178, 36.595875, 21.476328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.512707, 36.401680, 21.197817>,  <38.385822, 36.285164, 21.030710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.512707, 36.401680, 21.197817>,  <38.724178, 36.595875, 21.476328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512707, 36.401680, 21.197817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471818, -0.513811, 0.716510,
		-0.705609, 0.707321, 0.042582,
		-0.528681, -0.485485, -0.696276,
		38.354103, 36.256035, 20.988934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034328, 36.690628, 21.652880>,  <38.724178, 36.595875, 21.476328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034328, 36.690628, 21.652880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.005409, 36.372616, 21.411980>,  <37.988060, 36.181808, 21.267441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.005409, 36.372616, 21.411980>,  <38.034328, 36.690628, 21.652880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005409, 36.372616, 21.411980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669806, -0.408705, 0.619936,
		-0.739008, 0.448209, -0.502966,
		-0.072296, -0.795028, -0.602249,
		37.983719, 36.134106, 21.231304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404442, 36.626423, 21.633484>,  <38.034328, 36.690628, 21.652880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404442, 36.626423, 21.633484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548763, 36.269493, 21.524977>,  <37.635357, 36.055336, 21.459873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.548763, 36.269493, 21.524977>,  <37.404442, 36.626423, 21.633484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548763, 36.269493, 21.524977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575327, -0.441871, 0.688294,
		-0.734044, -0.092272, -0.672805,
		0.360803, -0.892320, -0.271266,
		37.657005, 36.001797, 21.443598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851158, 36.226231, 21.486116>,  <37.404442, 36.626423, 21.633484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851158, 36.226231, 21.486116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.156235, 35.981949, 21.571289>,  <37.339279, 35.835381, 21.622393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.156235, 35.981949, 21.571289>,  <36.851158, 36.226231, 21.486116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156235, 35.981949, 21.571289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456684, -0.275391, 0.845932,
		-0.457979, -0.742425, -0.488938,
		0.762690, -0.610709, 0.212930,
		37.385040, 35.798737, 21.635168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484497, 35.659821, 21.729603>,  <36.851158, 36.226231, 21.486116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484497, 35.659821, 21.729603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.859608, 35.560246, 21.826439>,  <37.084675, 35.500500, 21.884541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.859608, 35.560246, 21.826439>,  <36.484497, 35.659821, 21.729603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859608, 35.560246, 21.826439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316280, -0.324564, 0.891418,
		-0.143337, -0.912517, -0.383103,
		0.937775, -0.248941, 0.242089,
		37.140942, 35.485561, 21.899065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662643, 34.880451, 21.824940>,  <36.484497, 35.659821, 21.729603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662643, 34.880451, 21.824940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.919552, 35.078320, 22.059132>,  <37.073696, 35.197041, 22.199646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.919552, 35.078320, 22.059132>,  <36.662643, 34.880451, 21.824940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919552, 35.078320, 22.059132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386495, -0.450617, 0.804714,
		0.661894, -0.743133, -0.098233,
		0.642275, 0.494669, 0.585478,
		37.112236, 35.226719, 22.234776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751633, 34.396324, 22.380678>,  <36.662643, 34.880451, 21.824940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751633, 34.396324, 22.380678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.930115, 34.729591, 22.511353>,  <37.037205, 34.929554, 22.589756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.930115, 34.729591, 22.511353>,  <36.751633, 34.396324, 22.380678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930115, 34.729591, 22.511353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154267, -0.287966, 0.945133,
		0.881534, -0.472122, 0.000039,
		0.446206, 0.833172, 0.326685,
		37.063976, 34.979542, 22.609358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.180428, 40.078510, 20.067554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.503185, 40.281006, 20.189302>,  <39.696838, 40.402504, 20.262352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.503185, 40.281006, 20.189302>,  <39.180428, 40.078510, 20.067554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503185, 40.281006, 20.189302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260689, -0.157191, 0.952540,
		0.530061, -0.847944, 0.005135,
		0.806894, 0.506243, 0.304370,
		39.745255, 40.432880, 20.280613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554718, 39.678249, 20.399250>,  <39.180428, 40.078510, 20.067554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554718, 39.678249, 20.399250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.646427, 40.043781, 20.533323>,  <39.701454, 40.263100, 20.613768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.646427, 40.043781, 20.533323>,  <39.554718, 39.678249, 20.399250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646427, 40.043781, 20.533323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330116, -0.250943, 0.909973,
		0.915673, -0.319283, 0.244135,
		0.229275, 0.913830, 0.335182,
		39.715210, 40.317932, 20.633879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559711, 39.495174, 21.048101>,  <39.554718, 39.678249, 20.399250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559711, 39.495174, 21.048101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.552952, 39.894085, 21.076836>,  <39.548897, 40.133430, 21.094076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.552952, 39.894085, 21.076836>,  <39.559711, 39.495174, 21.048101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552952, 39.894085, 21.076836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442587, -0.071884, 0.893840,
		0.896567, -0.016693, 0.442594,
		-0.016895, 0.997273, 0.071837,
		39.547882, 40.193268, 21.098387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852734, 39.597466, 21.743156>,  <39.559711, 39.495174, 21.048101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852734, 39.597466, 21.743156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.651455, 39.929081, 21.645596>,  <39.530689, 40.128052, 21.587059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.651455, 39.929081, 21.645596>,  <39.852734, 39.597466, 21.743156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651455, 39.929081, 21.645596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560778, -0.098514, 0.822085,
		0.657514, 0.550441, 0.514479,
		-0.503193, 0.829041, -0.243901,
		39.500496, 40.177792, 21.572426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833698, 40.006954, 22.372093>,  <39.852734, 39.597466, 21.743156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833698, 40.006954, 22.372093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.537552, 40.146477, 22.142242>,  <39.359863, 40.230190, 22.004332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.537552, 40.146477, 22.142242>,  <39.833698, 40.006954, 22.372093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537552, 40.146477, 22.142242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636462, -0.088702, 0.766190,
		0.216281, 0.932988, 0.287673,
		-0.740364, 0.348805, -0.574627,
		39.315441, 40.251118, 21.969854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482235, 40.599854, 22.780218>,  <39.833698, 40.006954, 22.372093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482235, 40.599854, 22.780218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.203674, 40.471130, 22.523636>,  <39.036537, 40.393898, 22.369686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.203674, 40.471130, 22.523636>,  <39.482235, 40.599854, 22.780218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203674, 40.471130, 22.523636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684111, 0.027627, 0.728855,
		-0.216828, 0.946402, -0.239390,
		-0.696404, -0.321805, -0.641454,
		38.994755, 40.374588, 22.331200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887814, 40.753620, 22.985405>,  <39.482235, 40.599854, 22.780218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887814, 40.753620, 22.985405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.723083, 40.522614, 22.703449>,  <38.624245, 40.384010, 22.534275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.723083, 40.522614, 22.703449>,  <38.887814, 40.753620, 22.985405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723083, 40.522614, 22.703449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891718, 0.096056, 0.442281,
		-0.187716, 0.810707, -0.554542,
		-0.411828, -0.577518, -0.704891,
		38.599537, 40.349358, 22.491982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400158, 41.156883, 22.697826>,  <38.887814, 40.753620, 22.985405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400158, 41.156883, 22.697826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.308151, 40.768536, 22.670963>,  <38.252949, 40.535526, 22.654844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.308151, 40.768536, 22.670963>,  <38.400158, 41.156883, 22.697826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308151, 40.768536, 22.670963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823047, 0.157242, 0.545774,
		-0.519313, 0.180814, -0.835237,
		-0.230018, -0.970866, -0.067160,
		38.239147, 40.477276, 22.650816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646553, 41.060482, 22.641195>,  <38.400158, 41.156883, 22.697826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646553, 41.060482, 22.641195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.748455, 40.693409, 22.763157>,  <37.809597, 40.473167, 22.836334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.748455, 40.693409, 22.763157>,  <37.646553, 41.060482, 22.641195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748455, 40.693409, 22.763157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791429, -0.016684, 0.611033,
		-0.555645, -0.396972, -0.730528,
		0.254751, -0.917679, 0.304905,
		37.824879, 40.418106, 22.854628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026371, 40.834541, 22.743807>,  <37.646553, 41.060482, 22.641195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026371, 40.834541, 22.743807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.255245, 40.568058, 22.935131>,  <37.392570, 40.408169, 23.049925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.255245, 40.568058, 22.935131>,  <37.026371, 40.834541, 22.743807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255245, 40.568058, 22.935131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767857, -0.230293, 0.597796,
		-0.288103, -0.709321, -0.643320,
		0.572181, -0.666205, 0.478309,
		37.426899, 40.368198, 23.078623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558296, 40.376717, 22.987925>,  <37.026371, 40.834541, 22.743807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558296, 40.376717, 22.987925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.870743, 40.303623, 23.226742>,  <37.058212, 40.259766, 23.370031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.870743, 40.303623, 23.226742>,  <36.558296, 40.376717, 22.987925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870743, 40.303623, 23.226742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621725, -0.139544, 0.770705,
		-0.057518, -0.973210, -0.222608,
		0.781121, -0.182730, 0.597042,
		37.105080, 40.248802, 23.405855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302856, 39.891418, 23.455954>,  <36.558296, 40.376717, 22.987925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302856, 39.891418, 23.455954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.621346, 40.024937, 23.657789>,  <36.812439, 40.105049, 23.778891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.621346, 40.024937, 23.657789>,  <36.302856, 39.891418, 23.455954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621346, 40.024937, 23.657789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490768, -0.131385, 0.861328,
		0.353803, -0.933444, 0.059205,
		0.796223, 0.333796, 0.504588,
		36.860214, 40.125076, 23.809166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265190, 39.104321, 23.255774>,  <36.302856, 39.891418, 23.455954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265190, 39.104321, 23.255774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.066277, 38.762653, 23.194963>,  <35.946930, 38.557655, 23.158478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.066277, 38.762653, 23.194963>,  <36.265190, 39.104321, 23.255774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066277, 38.762653, 23.194963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251646, 0.025688, -0.967478,
		0.830291, -0.519367, 0.202173,
		-0.497283, -0.854165, -0.152025,
		35.917091, 38.506405, 23.149357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756927, 38.646389, 22.995972>,  <36.265190, 39.104321, 23.255774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756927, 38.646389, 22.995972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.397972, 38.522652, 22.870110>,  <36.182598, 38.448410, 22.794592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.397972, 38.522652, 22.870110>,  <36.756927, 38.646389, 22.995972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397972, 38.522652, 22.870110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340162, -0.030788, -0.939863,
		0.281054, -0.950451, 0.132856,
		-0.897384, -0.309345, -0.314655,
		36.128757, 38.429848, 22.775713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825748, 38.202511, 22.427565>,  <36.756927, 38.646389, 22.995972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825748, 38.202511, 22.427565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.450081, 38.334145, 22.388231>,  <36.224682, 38.413124, 22.364632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.450081, 38.334145, 22.388231>,  <36.825748, 38.202511, 22.427565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450081, 38.334145, 22.388231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094322, -0.028167, -0.995143,
		-0.330257, -0.943880, -0.004586,
		-0.939166, 0.329086, -0.098331,
		36.168331, 38.432869, 22.358732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417820, 37.734062, 21.935612>,  <36.825748, 38.202511, 22.427565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417820, 37.734062, 21.935612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.293259, 38.114079, 21.944088>,  <36.218521, 38.342087, 21.949173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.293259, 38.114079, 21.944088>,  <36.417820, 37.734062, 21.935612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293259, 38.114079, 21.944088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030296, 0.012362, -0.999465,
		-0.949794, -0.311882, 0.024932,
		-0.311407, 0.950040, 0.021190,
		36.199837, 38.399090, 21.950445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911140, 37.690777, 21.491930>,  <36.417820, 37.734062, 21.935612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911140, 37.690777, 21.491930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.010036, 38.075871, 21.535765>,  <36.069374, 38.306927, 21.562065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.010036, 38.075871, 21.535765>,  <35.911140, 37.690777, 21.491930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010036, 38.075871, 21.535765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015200, 0.116939, -0.993023,
		-0.968835, 0.243849, 0.043545,
		0.247240, 0.962737, 0.109588,
		36.084209, 38.364693, 21.568642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435200, 38.062309, 20.975033>,  <35.911140, 37.690777, 21.491930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435200, 38.062309, 20.975033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.690269, 38.352173, 21.079521>,  <35.843311, 38.526093, 21.142214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.690269, 38.352173, 21.079521>,  <35.435200, 38.062309, 20.975033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690269, 38.352173, 21.079521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123299, 0.430765, -0.894002,
		-0.760374, 0.537874, 0.364038,
		0.637675, 0.724661, 0.261223,
		35.881573, 38.569572, 21.157888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112896, 38.702412, 20.802254>,  <35.435200, 38.062309, 20.975033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112896, 38.702412, 20.802254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.510193, 38.745480, 20.819620>,  <35.748569, 38.771320, 20.830040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.510193, 38.745480, 20.819620>,  <35.112896, 38.702412, 20.802254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510193, 38.745480, 20.819620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005384, 0.330842, -0.943671,
		-0.115967, 0.937524, 0.328026,
		0.993238, 0.107668, 0.043415,
		35.808163, 38.777779, 20.832645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355858, 39.330841, 20.338137>,  <35.112896, 38.702412, 20.802254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355858, 39.330841, 20.338137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.715660, 39.163063, 20.387058>,  <35.931541, 39.062397, 20.416412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.715660, 39.163063, 20.387058>,  <35.355858, 39.330841, 20.338137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715660, 39.163063, 20.387058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281116, 0.341326, -0.896922,
		0.334460, 0.841169, 0.424937,
		0.899505, -0.419441, 0.122306,
		35.985512, 39.037231, 20.423750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802505, 39.865837, 20.158894>,  <35.355858, 39.330841, 20.338137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802505, 39.865837, 20.158894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.997677, 39.517605, 20.133547>,  <36.114780, 39.308666, 20.118340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.997677, 39.517605, 20.133547>,  <35.802505, 39.865837, 20.158894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997677, 39.517605, 20.133547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390227, 0.282489, -0.876312,
		0.780801, 0.402849, 0.477558,
		0.487926, -0.870582, -0.063365,
		36.144054, 39.256432, 20.114538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479446, 40.055164, 20.037476>,  <35.802505, 39.865837, 20.158894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479446, 40.055164, 20.037476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.450859, 39.669010, 19.937134>,  <36.433708, 39.437317, 19.876928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.450859, 39.669010, 19.937134>,  <36.479446, 40.055164, 20.037476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450859, 39.669010, 19.937134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403519, 0.202017, -0.892391,
		0.912176, -0.164999, 0.375113,
		-0.071465, -0.965383, -0.250855,
		36.429420, 39.379395, 19.861877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151672, 39.980556, 19.744804>,  <36.479446, 40.055164, 20.037476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151672, 39.980556, 19.744804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.904755, 39.695431, 19.611633>,  <36.756603, 39.524353, 19.531731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.904755, 39.695431, 19.611633>,  <37.151672, 39.980556, 19.744804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904755, 39.695431, 19.611633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390744, 0.089507, -0.916137,
		0.682838, -0.695614, 0.223277,
		-0.617293, -0.712818, -0.332926,
		36.719566, 39.481586, 19.511755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543140, 39.687851, 19.267792>,  <37.151672, 39.980556, 19.744804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543140, 39.687851, 19.267792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.175758, 39.557831, 19.177649>,  <36.955330, 39.479816, 19.123564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.175758, 39.557831, 19.177649>,  <37.543140, 39.687851, 19.267792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175758, 39.557831, 19.177649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178344, 0.168215, -0.969483,
		0.353044, -0.930614, -0.096525,
		-0.918452, -0.325055, -0.225357,
		36.900223, 39.460316, 19.110041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556076, 39.320721, 18.647453>,  <37.543140, 39.687851, 19.267792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556076, 39.320721, 18.647453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.172134, 39.427048, 18.683283>,  <36.941769, 39.490845, 18.704781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.172134, 39.427048, 18.683283>,  <37.556076, 39.320721, 18.647453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172134, 39.427048, 18.683283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017318, 0.374880, -0.926912,
		-0.279970, -0.888147, -0.364433,
		-0.959853, 0.265819, 0.089574,
		36.884178, 39.506794, 18.710155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926136, 38.651001, 18.733242>,  <37.556076, 39.320721, 18.647453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926136, 38.651001, 18.733242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.267380, 38.498463, 18.590815>,  <38.472126, 38.406940, 18.505358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.267380, 38.498463, 18.590815>,  <37.926136, 38.651001, 18.733242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267380, 38.498463, 18.590815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183767, -0.858360, 0.479007,
		-0.488302, -0.343210, -0.802351,
		0.853106, -0.381346, -0.356068,
		38.523312, 38.384060, 18.483994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828068, 37.943924, 18.567966>,  <37.926136, 38.651001, 18.733242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828068, 37.943924, 18.567966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.224842, 37.948029, 18.618483>,  <38.462906, 37.950493, 18.648792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.224842, 37.948029, 18.618483>,  <37.828068, 37.943924, 18.567966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224842, 37.948029, 18.618483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075309, -0.753806, 0.652767,
		0.101896, -0.657016, -0.746958,
		0.991940, 0.010262, 0.126289,
		38.522423, 37.951107, 18.656370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084858, 37.356270, 18.329449>,  <37.828068, 37.943924, 18.567966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084858, 37.356270, 18.329449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.373493, 37.477413, 18.578476>,  <38.546673, 37.550098, 18.727892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.373493, 37.477413, 18.578476>,  <38.084858, 37.356270, 18.329449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373493, 37.477413, 18.578476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003468, -0.900810, 0.434200,
		0.692319, -0.311153, -0.651060,
		0.721583, 0.302863, 0.622568,
		38.589970, 37.568272, 18.765247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498215, 36.745819, 18.452343>,  <38.084858, 37.356270, 18.329449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498215, 36.745819, 18.452343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.588043, 36.992184, 18.754396>,  <38.641941, 37.140003, 18.935629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.588043, 36.992184, 18.754396>,  <38.498215, 36.745819, 18.452343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588043, 36.992184, 18.754396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206489, -0.727250, 0.654576,
		0.952330, -0.302923, -0.036139,
		0.224568, 0.615910, 0.755132,
		38.655415, 37.176956, 18.980936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805389, 36.242535, 18.942530>,  <38.498215, 36.745819, 18.452343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805389, 36.242535, 18.942530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.732136, 36.559242, 19.175619>,  <38.688183, 36.749268, 19.315474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.732136, 36.559242, 19.175619>,  <38.805389, 36.242535, 18.942530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732136, 36.559242, 19.175619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002239, -0.593083, 0.805138,
		0.983086, 0.146141, 0.110385,
		-0.183131, 0.791767, 0.582724,
		38.677197, 36.796772, 19.350437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091824, 36.136314, 19.543688>,  <38.805389, 36.242535, 18.942530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091824, 36.136314, 19.543688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.812065, 36.408676, 19.630606>,  <38.644211, 36.572094, 19.682756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.812065, 36.408676, 19.630606>,  <39.091824, 36.136314, 19.543688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812065, 36.408676, 19.630606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177605, -0.460051, 0.869948,
		0.692316, 0.569846, 0.442690,
		-0.699396, 0.680902, 0.217293,
		38.602245, 36.612946, 19.695793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317348, 36.371849, 20.157997>,  <39.091824, 36.136314, 19.543688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317348, 36.371849, 20.157997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.928108, 36.462669, 20.142408>,  <38.694565, 36.517162, 20.133055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.928108, 36.462669, 20.142408>,  <39.317348, 36.371849, 20.157997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928108, 36.462669, 20.142408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160507, -0.546883, 0.821679,
		0.165247, 0.805834, 0.568617,
		-0.973104, 0.227047, -0.038971,
		38.636177, 36.530785, 20.130716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133133, 36.671494, 20.784914>,  <39.317348, 36.371849, 20.157997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133133, 36.671494, 20.784914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.783787, 36.532600, 20.648294>,  <38.574177, 36.449265, 20.566322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.783787, 36.532600, 20.648294>,  <39.133133, 36.671494, 20.784914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783787, 36.532600, 20.648294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204633, -0.374753, 0.904260,
		-0.441984, 0.859645, 0.256243,
		-0.873370, -0.347233, -0.341547,
		38.521774, 36.428432, 20.545830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562363, 36.900257, 21.403040>,  <39.133133, 36.671494, 20.784914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562363, 36.900257, 21.403040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.937729, 36.800583, 21.498768>,  <40.162949, 36.740780, 21.556204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.937729, 36.800583, 21.498768>,  <39.562363, 36.900257, 21.403040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937729, 36.800583, 21.498768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318592, 0.356136, -0.878445,
		0.133666, 0.900596, 0.413594,
		0.938420, -0.249186, 0.239320,
		40.219254, 36.725826, 21.570564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058468, 37.480385, 21.171532>,  <39.562363, 36.900257, 21.403040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058468, 37.480385, 21.171532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.273964, 37.144661, 21.200672>,  <40.403263, 36.943226, 21.218157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.273964, 37.144661, 21.200672>,  <40.058468, 37.480385, 21.171532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273964, 37.144661, 21.200672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493427, 0.244265, -0.834784,
		0.682850, 0.485682, 0.545736,
		0.538744, -0.839314, 0.072853,
		40.435589, 36.892868, 21.222528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658081, 37.670940, 20.935160>,  <40.058468, 37.480385, 21.171532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658081, 37.670940, 20.935160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.687939, 37.272919, 20.908926>,  <40.705853, 37.034107, 20.893187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.687939, 37.272919, 20.908926>,  <40.658081, 37.670940, 20.935160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687939, 37.272919, 20.908926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509361, 0.094585, -0.855339,
		0.857310, 0.030439, 0.513901,
		0.074643, -0.995051, -0.065584,
		40.710331, 36.974403, 20.889252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394745, 37.512623, 20.862616>,  <40.658081, 37.670940, 20.935160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394745, 37.512623, 20.862616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.155235, 37.234612, 20.703409>,  <41.011532, 37.067806, 20.607885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.155235, 37.234612, 20.703409>,  <41.394745, 37.512623, 20.862616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155235, 37.234612, 20.703409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440203, 0.129572, -0.888500,
		0.669100, -0.707214, 0.228368,
		-0.598770, -0.695024, -0.398014,
		40.975605, 37.026104, 20.584005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797379, 37.177681, 20.502216>,  <41.394745, 37.512623, 20.862616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797379, 37.177681, 20.502216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.459503, 37.063469, 20.321119>,  <41.256779, 36.994942, 20.212461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.459503, 37.063469, 20.321119>,  <41.797379, 37.177681, 20.502216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459503, 37.063469, 20.321119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485356, -0.051959, -0.872771,
		0.225679, -0.956960, 0.182474,
		-0.844688, -0.285531, -0.452740,
		41.206097, 36.977810, 20.185297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026470, 36.555828, 20.095835>,  <41.797379, 37.177681, 20.502216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026470, 36.555828, 20.095835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.686531, 36.723816, 19.968468>,  <41.482567, 36.824608, 19.892048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.686531, 36.723816, 19.968468>,  <42.026470, 36.555828, 20.095835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686531, 36.723816, 19.968468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349815, -0.002404, -0.936816,
		-0.394196, -0.907537, -0.144867,
		-0.849847, 0.419965, -0.318418,
		41.431576, 36.849804, 19.872942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966301, 36.174988, 19.612207>,  <42.026470, 36.555828, 20.095835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966301, 36.174988, 19.612207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.717819, 36.472847, 19.514547>,  <41.568729, 36.651562, 19.455952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.717819, 36.472847, 19.514547>,  <41.966301, 36.174988, 19.612207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717819, 36.472847, 19.514547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235121, -0.120099, -0.964518,
		-0.747546, -0.656566, -0.100476,
		-0.621203, 0.744646, -0.244151,
		41.531460, 36.696239, 19.441301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741341, 35.937004, 19.018879>,  <41.966301, 36.174988, 19.612207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741341, 35.937004, 19.018879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.677841, 36.331917, 19.022326>,  <41.639744, 36.568863, 19.024393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.677841, 36.331917, 19.022326>,  <41.741341, 35.937004, 19.018879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677841, 36.331917, 19.022326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232639, 0.045884, -0.971480,
		-0.959520, -0.152214, -0.236964,
		-0.158745, 0.987282, 0.008615,
		41.630219, 36.628101, 19.024910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145313, 36.094719, 18.493896>,  <41.741341, 35.937004, 19.018879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145313, 36.094719, 18.493896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.337097, 36.444843, 18.519037>,  <41.452168, 36.654919, 18.534122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.337097, 36.444843, 18.519037>,  <41.145313, 36.094719, 18.493896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337097, 36.444843, 18.519037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122285, 0.004284, -0.992486,
		-0.869002, 0.483543, -0.104983,
		0.479460, 0.875310, 0.062853,
		41.480934, 36.707436, 18.537893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.537247, 35.698563, 33.676826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.730732, 36.037556, 33.764275>,  <35.846825, 36.240952, 33.816742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.730732, 36.037556, 33.764275>,  <35.537247, 35.698563, 33.676826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730732, 36.037556, 33.764275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161900, 0.158832, -0.973941,
		-0.860120, 0.506506, -0.060378,
		0.483717, 0.847481, 0.218617,
		35.875847, 36.291801, 33.829861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302761, 36.205780, 33.172005>,  <35.537247, 35.698563, 33.676826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302761, 36.205780, 33.172005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667305, 36.129292, 33.317799>,  <35.886032, 36.083397, 33.405273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667305, 36.129292, 33.317799>,  <35.302761, 36.205780, 33.172005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667305, 36.129292, 33.317799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349834, -0.106708, -0.930714,
		0.216870, 0.975728, -0.030353,
		0.911364, -0.191226, 0.364485,
		35.940716, 36.071922, 33.427143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745338, 36.723362, 32.955101>,  <35.302761, 36.205780, 33.172005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745338, 36.723362, 32.955101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.965611, 36.399796, 33.037468>,  <36.097775, 36.205654, 33.086887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.965611, 36.399796, 33.037468>,  <35.745338, 36.723362, 32.955101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965611, 36.399796, 33.037468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439727, 0.071444, -0.895285,
		0.709499, 0.583567, 0.395045,
		0.550683, -0.808916, 0.205921,
		36.130814, 36.157120, 33.099243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388901, 36.886421, 32.671516>,  <35.745338, 36.723362, 32.955101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388901, 36.886421, 32.671516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393871, 36.491570, 32.735298>,  <36.396854, 36.254658, 32.773567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393871, 36.491570, 32.735298>,  <36.388901, 36.886421, 32.671516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393871, 36.491570, 32.735298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478714, -0.134130, -0.867665,
		0.877883, 0.087116, 0.470884,
		0.012428, -0.987127, 0.159454,
		36.397598, 36.195431, 32.783134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052330, 36.655861, 32.508755>,  <36.388901, 36.886421, 32.671516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052330, 36.655861, 32.508755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.804920, 36.346588, 32.452724>,  <36.656475, 36.161026, 32.419106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.804920, 36.346588, 32.452724>,  <37.052330, 36.655861, 32.508755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804920, 36.346588, 32.452724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516138, -0.265358, -0.814363,
		0.592477, -0.576003, 0.563198,
		-0.618524, -0.773179, -0.140078,
		36.619362, 36.114635, 32.410702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453922, 36.133152, 32.337250>,  <37.052330, 36.655861, 32.508755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453922, 36.133152, 32.337250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107639, 35.980366, 32.207844>,  <36.899872, 35.888695, 32.130199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.107639, 35.980366, 32.207844>,  <37.453922, 36.133152, 32.337250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107639, 35.980366, 32.207844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474816, -0.422033, -0.772294,
		0.158453, -0.822188, 0.546717,
		-0.865704, -0.381962, -0.323515,
		36.847927, 35.865776, 32.110790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644783, 35.582867, 31.963764>,  <37.453922, 36.133152, 32.337250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644783, 35.582867, 31.963764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.274548, 35.663265, 31.835464>,  <37.052406, 35.711502, 31.758484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.274548, 35.663265, 31.835464>,  <37.644783, 35.582867, 31.963764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274548, 35.663265, 31.835464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253585, -0.299847, -0.919666,
		-0.281007, -0.932577, 0.226573,
		-0.925597, 0.200977, -0.320746,
		36.996868, 35.723564, 31.739239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462543, 35.022793, 31.665844>,  <37.644783, 35.582867, 31.963764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462543, 35.022793, 31.665844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.228516, 35.292454, 31.485527>,  <37.088100, 35.454250, 31.377337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.228516, 35.292454, 31.485527>,  <37.462543, 35.022793, 31.665844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228516, 35.292454, 31.485527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347080, -0.294231, -0.890485,
		-0.732962, -0.677453, -0.061841,
		-0.585067, 0.674155, -0.450791,
		37.052994, 35.494701, 31.350290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089046, 34.593643, 31.026033>,  <37.462543, 35.022793, 31.665844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089046, 34.593643, 31.026033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.026249, 34.976910, 30.930305>,  <36.988571, 35.206867, 30.872868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.026249, 34.976910, 30.930305>,  <37.089046, 34.593643, 31.026033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026249, 34.976910, 30.930305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003504, -0.242865, -0.970054,
		-0.987593, -0.151459, 0.041487,
		-0.156999, 0.958163, -0.239321,
		36.979149, 35.264359, 30.858509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471127, 34.670368, 30.543716>,  <37.089046, 34.593643, 31.026033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471127, 34.670368, 30.543716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.736374, 34.966007, 30.496374>,  <36.895523, 35.143391, 30.467968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.736374, 34.966007, 30.496374>,  <36.471127, 34.670368, 30.543716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736374, 34.966007, 30.496374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005412, -0.162851, -0.986636,
		-0.748495, 0.653616, -0.111989,
		0.663118, 0.739098, -0.118356,
		36.935310, 35.187737, 30.460867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443306, 34.705147, 29.869120>,  <36.471127, 34.670368, 30.543716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443306, 34.705147, 29.869120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743431, 34.953514, 29.959887>,  <36.923508, 35.102535, 30.014347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743431, 34.953514, 29.959887>,  <36.443306, 34.705147, 29.869120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743431, 34.953514, 29.959887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310203, -0.027567, -0.950270,
		-0.583787, 0.783389, -0.213295,
		0.750311, 0.620920, 0.226917,
		36.968525, 35.139790, 30.027962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423378, 35.237175, 29.464071>,  <36.443306, 34.705147, 29.869120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423378, 35.237175, 29.464071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.803642, 35.217735, 29.586634>,  <37.031799, 35.206070, 29.660172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.803642, 35.217735, 29.586634>,  <36.423378, 35.237175, 29.464071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803642, 35.217735, 29.586634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305823, -0.019224, -0.951894,
		0.052156, 0.998633, -0.003412,
		0.950659, -0.048604, 0.306407,
		37.088840, 35.203156, 29.678556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086052, 35.279495, 28.950155>,  <36.423378, 35.237175, 29.464071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086052, 35.279495, 28.950155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.728470, 35.224979, 28.779387>,  <35.513920, 35.192272, 28.676926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.728470, 35.224979, 28.779387>,  <36.086052, 35.279495, 28.950155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728470, 35.224979, 28.779387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418838, 0.592941, 0.687746,
		0.159411, 0.793629, -0.587147,
		-0.893959, -0.136285, -0.426924,
		35.460281, 35.184093, 28.651310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690517, 35.912155, 28.908628>,  <36.086052, 35.279495, 28.950155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690517, 35.912155, 28.908628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441898, 35.599010, 28.897196>,  <35.292728, 35.411125, 28.890337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.441898, 35.599010, 28.897196>,  <35.690517, 35.912155, 28.908628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441898, 35.599010, 28.897196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683924, 0.524484, 0.507114,
		-0.382008, 0.334740, -0.861405,
		-0.621545, -0.782857, -0.028580,
		35.255436, 35.364155, 28.888622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013683, 36.284302, 28.869347>,  <35.690517, 35.912155, 28.908628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013683, 36.284302, 28.869347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.903862, 35.912655, 28.968426>,  <34.837971, 35.689667, 29.027874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.903862, 35.912655, 28.968426>,  <35.013683, 36.284302, 28.869347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903862, 35.912655, 28.968426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719202, 0.369402, 0.588464,
		-0.638255, -0.016580, -0.769646,
		-0.274552, -0.929122, 0.247697,
		34.821495, 35.633919, 29.042734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256535, 36.334801, 28.981207>,  <35.013683, 36.284302, 28.869347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256535, 36.334801, 28.981207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366665, 35.995979, 29.163061>,  <34.432743, 35.792686, 29.272173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.366665, 35.995979, 29.163061>,  <34.256535, 36.334801, 28.981207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366665, 35.995979, 29.163061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728689, 0.124588, 0.673416,
		-0.627063, -0.516695, -0.582939,
		0.275324, -0.847056, 0.454635,
		34.449261, 35.741863, 29.299452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703079, 35.886204, 29.075626>,  <34.256535, 36.334801, 28.981207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703079, 35.886204, 29.075626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.962582, 35.749626, 29.347666>,  <34.118282, 35.667679, 29.510889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.962582, 35.749626, 29.347666>,  <33.703079, 35.886204, 29.075626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962582, 35.749626, 29.347666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747593, -0.118964, 0.653416,
		-0.142204, -0.932340, -0.332447,
		0.648755, -0.341453, 0.680093,
		34.157207, 35.647194, 29.551695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337242, 35.385452, 29.342915>,  <33.703079, 35.886204, 29.075626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337242, 35.385452, 29.342915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.614906, 35.482975, 29.613823>,  <33.781506, 35.541489, 29.776369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.614906, 35.482975, 29.613823>,  <33.337242, 35.385452, 29.342915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614906, 35.482975, 29.613823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637403, -0.228972, 0.735723,
		0.334448, -0.942408, -0.003543,
		0.694163, 0.243803, 0.677273,
		33.823154, 35.556114, 29.817005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237152, 34.893585, 29.878756>,  <33.337242, 35.385452, 29.342915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237152, 34.893585, 29.878756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420990, 35.216343, 30.027184>,  <33.531292, 35.409996, 30.116241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.420990, 35.216343, 30.027184>,  <33.237152, 34.893585, 29.878756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420990, 35.216343, 30.027184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534554, -0.082336, 0.841114,
		0.709244, -0.584927, 0.393488,
		0.459592, 0.806896, 0.371072,
		33.558868, 35.458412, 30.138506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426430, 34.665737, 30.517439>,  <33.237152, 34.893585, 29.878756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426430, 34.665737, 30.517439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391510, 35.064125, 30.509241>,  <33.370560, 35.303158, 30.504322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391510, 35.064125, 30.509241>,  <33.426430, 34.665737, 30.517439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391510, 35.064125, 30.509241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476103, -0.023644, 0.879071,
		0.875045, 0.086500, 0.476249,
		-0.087300, 0.995971, -0.020494,
		33.365318, 35.362915, 30.503094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738235, 34.773945, 31.064442>,  <33.426430, 34.665737, 30.517439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738235, 34.773945, 31.064442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522793, 35.102760, 30.990507>,  <33.393528, 35.300049, 30.946146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522793, 35.102760, 30.990507>,  <33.738235, 34.773945, 31.064442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522793, 35.102760, 30.990507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470312, -0.111305, 0.875453,
		0.699079, 0.558455, 0.446562,
		-0.538605, 0.822034, -0.184837,
		33.361210, 35.349369, 30.935057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521160, 35.002266, 31.692453>,  <33.738235, 34.773945, 31.064442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521160, 35.002266, 31.692453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.254742, 35.218567, 31.486940>,  <33.094891, 35.348347, 31.363632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.254742, 35.218567, 31.486940>,  <33.521160, 35.002266, 31.692453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254742, 35.218567, 31.486940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624241, -0.027053, 0.780763,
		0.408300, 0.840747, 0.355579,
		-0.666043, 0.540753, -0.513783,
		33.054928, 35.380795, 31.332806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393055, 35.617168, 32.093182>,  <33.521160, 35.002266, 31.692453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393055, 35.617168, 32.093182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060036, 35.589714, 31.873306>,  <32.860226, 35.573242, 31.741383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060036, 35.589714, 31.873306>,  <33.393055, 35.617168, 32.093182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060036, 35.589714, 31.873306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552946, 0.043176, 0.832098,
		-0.033376, 0.996707, -0.073896,
		-0.832548, -0.068633, -0.549684,
		32.810272, 35.569122, 31.708401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879475, 36.011581, 32.489460>,  <33.393055, 35.617168, 32.093182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879475, 36.011581, 32.489460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633961, 35.826984, 32.233246>,  <32.486652, 35.716225, 32.079517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.633961, 35.826984, 32.233246>,  <32.879475, 36.011581, 32.489460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633961, 35.826984, 32.233246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741637, 0.058933, 0.668207,
		-0.270624, 0.885185, -0.378432,
		-0.613789, -0.461492, -0.640538,
		32.449825, 35.688538, 32.041084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282600, 36.456501, 32.383472>,  <32.879475, 36.011581, 32.489460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282600, 36.456501, 32.383472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.169739, 36.077393, 32.323967>,  <32.102024, 35.849930, 32.288265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.169739, 36.077393, 32.323967>,  <32.282600, 36.456501, 32.383472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169739, 36.077393, 32.323967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687275, 0.091495, 0.720612,
		-0.669361, 0.305561, -0.677191,
		-0.282150, -0.947766, -0.148761,
		32.085094, 35.793064, 32.279339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473022, 36.449028, 32.463547>,  <32.282600, 36.456501, 32.383472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473022, 36.449028, 32.463547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.592272, 36.067860, 32.485691>,  <31.663820, 35.839157, 32.498978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.592272, 36.067860, 32.485691>,  <31.473022, 36.449028, 32.463547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592272, 36.067860, 32.485691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624682, -0.150925, 0.766156,
		-0.721731, -0.262988, -0.640266,
		0.298122, -0.952921, 0.055357,
		31.681709, 35.781982, 32.502296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145889, 36.811344, 33.119267>,  <31.473022, 36.449028, 32.463547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145889, 36.811344, 33.119267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.880342, 37.095985, 33.027267>,  <30.721014, 37.266769, 32.972069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.880342, 37.095985, 33.027267>,  <31.145889, 36.811344, 33.119267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880342, 37.095985, 33.027267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314068, -0.013822, -0.949300,
		-0.678706, -0.702444, -0.214316,
		-0.663867, 0.711605, -0.229997,
		30.681183, 37.309467, 32.958267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821657, 36.793571, 32.387642>,  <31.145889, 36.811344, 33.119267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821657, 36.793571, 32.387642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.819157, 37.183762, 32.475658>,  <30.817656, 37.417873, 32.528469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.819157, 37.183762, 32.475658>,  <30.821657, 36.793571, 32.387642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819157, 37.183762, 32.475658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336006, 0.209298, -0.918311,
		-0.941839, 0.068192, -0.329073,
		-0.006253, 0.975471, 0.220038,
		30.817280, 37.476402, 32.541668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439358, 37.030098, 31.901127>,  <30.821657, 36.793571, 32.387642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439358, 37.030098, 31.901127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.694342, 37.301395, 32.047348>,  <30.847332, 37.464172, 32.135082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.694342, 37.301395, 32.047348>,  <30.439358, 37.030098, 31.901127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694342, 37.301395, 32.047348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480333, 0.021135, -0.876832,
		-0.602431, 0.734534, -0.312310,
		0.637462, 0.678243, 0.365553,
		30.885580, 37.504868, 32.157013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499100, 37.624249, 31.315702>,  <30.439358, 37.030098, 31.901127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499100, 37.624249, 31.315702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.812021, 37.637886, 31.564487>,  <30.999775, 37.646069, 31.713758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.812021, 37.637886, 31.564487>,  <30.499100, 37.624249, 31.315702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812021, 37.637886, 31.564487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602530, 0.211817, -0.769474,
		-0.157979, 0.976714, 0.145161,
		0.782304, 0.034097, 0.621963,
		31.046713, 37.648113, 31.751076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928255, 38.252167, 31.362482>,  <30.499100, 37.624249, 31.315702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928255, 38.252167, 31.362482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.231140, 38.017162, 31.476650>,  <31.412870, 37.876160, 31.545151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.231140, 38.017162, 31.476650>,  <30.928255, 38.252167, 31.362482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231140, 38.017162, 31.476650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497709, 0.236004, -0.834619,
		0.422987, 0.774038, 0.471113,
		0.757211, -0.587510, 0.285419,
		31.458303, 37.840908, 31.562277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463875, 38.741650, 31.317327>,  <30.928255, 38.252167, 31.362482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463875, 38.741650, 31.317327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.618141, 38.373165, 31.296812>,  <31.710701, 38.152073, 31.284502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.618141, 38.373165, 31.296812>,  <31.463875, 38.741650, 31.317327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618141, 38.373165, 31.296812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522923, 0.264048, -0.810451,
		0.760139, 0.285744, 0.583557,
		0.385668, -0.921211, -0.051291,
		31.733841, 38.096802, 31.281425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982630, 38.896061, 31.008890>,  <31.463875, 38.741650, 31.317327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982630, 38.896061, 31.008890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.984154, 38.497398, 30.976231>,  <31.985067, 38.258202, 30.956635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.984154, 38.497398, 30.976231>,  <31.982630, 38.896061, 31.008890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984154, 38.497398, 30.976231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576556, 0.068902, -0.814147,
		0.817049, -0.043975, 0.574889,
		0.003809, -0.996654, -0.081650,
		31.985296, 38.198402, 30.951736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625713, 38.704109, 30.862038>,  <31.982630, 38.896061, 31.008890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625713, 38.704109, 30.862038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431366, 38.370567, 30.757254>,  <32.314758, 38.170444, 30.694384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.431366, 38.370567, 30.757254>,  <32.625713, 38.704109, 30.862038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431366, 38.370567, 30.757254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670919, -0.163726, -0.723230,
		0.560177, -0.527149, 0.638996,
		-0.485870, -0.833851, -0.261959,
		32.285606, 38.120411, 30.678665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036659, 38.179440, 30.705484>,  <32.625713, 38.704109, 30.862038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036659, 38.179440, 30.705484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697056, 38.095184, 30.511654>,  <32.493294, 38.044632, 30.395355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.697056, 38.095184, 30.511654>,  <33.036659, 38.179440, 30.705484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697056, 38.095184, 30.511654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518198, -0.152797, -0.841501,
		0.103215, -0.965548, 0.238881,
		-0.849010, -0.210643, -0.484575,
		32.442352, 38.031990, 30.366282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212452, 37.637680, 30.299286>,  <33.036659, 38.179440, 30.705484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212452, 37.637680, 30.299286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.889915, 37.818481, 30.146704>,  <32.696396, 37.926964, 30.055153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.889915, 37.818481, 30.146704>,  <33.212452, 37.637680, 30.299286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889915, 37.818481, 30.146704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438573, 0.024220, -0.898369,
		-0.396831, -0.891685, -0.217767,
		-0.806337, 0.452007, -0.381458,
		32.648014, 37.954082, 30.032267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153595, 37.217396, 29.690119>,  <33.212452, 37.637680, 30.299286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153595, 37.217396, 29.690119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908081, 37.527607, 29.631037>,  <32.760773, 37.713734, 29.595589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.908081, 37.527607, 29.631037>,  <33.153595, 37.217396, 29.690119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908081, 37.527607, 29.631037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276676, 0.036082, -0.960286,
		-0.739403, -0.630277, -0.236718,
		-0.613787, 0.775532, -0.147704,
		32.723946, 37.760265, 29.586725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752357, 37.112103, 29.145958>,  <33.153595, 37.217396, 29.690119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752357, 37.112103, 29.145958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755894, 37.511841, 29.160000>,  <32.758015, 37.751682, 29.168425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.755894, 37.511841, 29.160000>,  <32.752357, 37.112103, 29.145958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755894, 37.511841, 29.160000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251265, 0.031762, -0.967397,
		-0.967878, 0.017370, -0.250820,
		0.008837, 0.999345, 0.035107,
		32.758545, 37.811646, 29.170532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670475, 37.292725, 28.463078>,  <32.752357, 37.112103, 29.145958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670475, 37.292725, 28.463078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815098, 37.635975, 28.608900>,  <32.901871, 37.841923, 28.696394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815098, 37.635975, 28.608900>,  <32.670475, 37.292725, 28.463078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815098, 37.635975, 28.608900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302301, 0.261988, -0.916502,
		-0.881981, 0.441574, -0.164688,
		0.361557, 0.858123, 0.364557,
		32.923565, 37.893414, 28.718267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361183, 37.774811, 28.042997>,  <32.670475, 37.292725, 28.463078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361183, 37.774811, 28.042997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.683834, 37.941772, 28.210388>,  <32.877426, 38.041950, 28.310822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.683834, 37.941772, 28.210388>,  <32.361183, 37.774811, 28.042997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683834, 37.941772, 28.210388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324347, 0.279291, -0.903767,
		-0.494109, 0.864739, 0.089902,
		0.806632, 0.417401, 0.418476,
		32.925823, 38.066994, 28.335932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446884, 38.345047, 27.643192>,  <32.361183, 37.774811, 28.042997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446884, 38.345047, 27.643192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.798737, 38.286118, 27.824099>,  <33.009850, 38.250759, 27.932642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.798737, 38.286118, 27.824099>,  <32.446884, 38.345047, 27.643192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798737, 38.286118, 27.824099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471101, 0.138586, -0.871124,
		0.065656, 0.979332, 0.191307,
		0.879632, -0.147320, 0.452265,
		33.062626, 38.241920, 27.959778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809456, 38.978954, 27.411545>,  <32.446884, 38.345047, 27.643192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809456, 38.978954, 27.411545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.065670, 38.692524, 27.522505>,  <33.219398, 38.520668, 27.589081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.065670, 38.692524, 27.522505>,  <32.809456, 38.978954, 27.411545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065670, 38.692524, 27.522505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471115, 0.081161, -0.878330,
		0.606433, 0.693292, 0.389339,
		0.640538, -0.716072, 0.277401,
		33.257832, 38.477703, 27.605724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445297, 39.229103, 27.193817>,  <32.809456, 38.978954, 27.411545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445297, 39.229103, 27.193817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.502583, 38.835320, 27.234455>,  <33.536953, 38.599049, 27.258837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.502583, 38.835320, 27.234455>,  <33.445297, 39.229103, 27.193817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502583, 38.835320, 27.234455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582570, 0.000874, -0.812780,
		0.800063, 0.175590, 0.573644,
		0.143217, -0.984463, 0.101594,
		33.545547, 38.539982, 27.264933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157440, 39.165421, 27.109610>,  <33.445297, 39.229103, 27.193817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157440, 39.165421, 27.109610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003208, 38.806736, 27.022673>,  <33.910671, 38.591526, 26.970510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.003208, 38.806736, 27.022673>,  <34.157440, 39.165421, 27.109610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003208, 38.806736, 27.022673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730887, -0.153065, -0.665113,
		0.563148, -0.415303, 0.714414,
		-0.385575, -0.896713, -0.217341,
		33.887535, 38.537724, 26.957470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701630, 38.741615, 27.149975>,  <34.157440, 39.165421, 27.109610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701630, 38.741615, 27.149975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436481, 38.529293, 26.938751>,  <34.277393, 38.401897, 26.812017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.436481, 38.529293, 26.938751>,  <34.701630, 38.741615, 27.149975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436481, 38.529293, 26.938751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734017, -0.321536, -0.598193,
		0.147736, -0.784127, 0.602759,
		-0.662868, -0.530810, -0.528060,
		34.237621, 38.370049, 26.780333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106911, 38.116482, 26.926483>,  <34.701630, 38.741615, 27.149975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106911, 38.116482, 26.926483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788277, 38.104755, 26.684958>,  <34.597095, 38.097721, 26.540041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788277, 38.104755, 26.684958>,  <35.106911, 38.116482, 26.926483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788277, 38.104755, 26.684958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592519, -0.235957, -0.770224,
		-0.119894, -0.971321, 0.205331,
		-0.796585, -0.029317, -0.603816,
		34.549301, 38.095959, 26.503813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101471, 37.521717, 26.561718>,  <35.106911, 38.116482, 26.926483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101471, 37.521717, 26.561718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857895, 37.734276, 26.326155>,  <34.711750, 37.861809, 26.184816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857895, 37.734276, 26.326155>,  <35.101471, 37.521717, 26.561718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857895, 37.734276, 26.326155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580576, -0.207296, -0.787375,
		-0.540485, -0.821370, -0.182284,
		-0.608939, 0.531394, -0.588908,
		34.675213, 37.893696, 26.149483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064243, 37.112957, 25.952703>,  <35.101471, 37.521717, 26.561718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064243, 37.112957, 25.952703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.941338, 37.481289, 25.856653>,  <34.867596, 37.702290, 25.799023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.941338, 37.481289, 25.856653>,  <35.064243, 37.112957, 25.952703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941338, 37.481289, 25.856653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500934, -0.058031, -0.863538,
		-0.809107, -0.385620, -0.443445,
		-0.307264, 0.920831, -0.240123,
		34.849159, 37.757538, 25.784616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694920, 37.078522, 25.307909>,  <35.064243, 37.112957, 25.952703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694920, 37.078522, 25.307909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822449, 37.454311, 25.358093>,  <34.898968, 37.679787, 25.388205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822449, 37.454311, 25.358093>,  <34.694920, 37.078522, 25.307909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822449, 37.454311, 25.358093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140741, 0.083977, -0.986478,
		-0.937307, 0.332169, -0.105449,
		0.318823, 0.939474, 0.125462,
		34.918095, 37.736153, 25.395733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458019, 37.329494, 24.707207>,  <34.694920, 37.078522, 25.307909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458019, 37.329494, 24.707207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748272, 37.576630, 24.828358>,  <34.922424, 37.724911, 24.901049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.748272, 37.576630, 24.828358>,  <34.458019, 37.329494, 24.707207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748272, 37.576630, 24.828358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309256, 0.100371, -0.945667,
		-0.614667, 0.779875, -0.118237,
		0.725635, 0.617836, 0.302875,
		34.965961, 37.761982, 24.919220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394970, 37.963459, 24.225737>,  <34.458019, 37.329494, 24.707207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394970, 37.963459, 24.225737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.760468, 38.031864, 24.373158>,  <34.979767, 38.072906, 24.461609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.760468, 38.031864, 24.373158>,  <34.394970, 37.963459, 24.225737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760468, 38.031864, 24.373158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275932, 0.404615, -0.871865,
		-0.298222, 0.898355, 0.322526,
		0.913742, 0.171014, 0.368550,
		35.034592, 38.083168, 24.483723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521885, 38.646706, 24.200893>,  <34.394970, 37.963459, 24.225737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521885, 38.646706, 24.200893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.884113, 38.477180, 24.208069>,  <35.101452, 38.375465, 24.212374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.884113, 38.477180, 24.208069>,  <34.521885, 38.646706, 24.200893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884113, 38.477180, 24.208069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236654, 0.469658, -0.850539,
		0.352047, 0.774468, 0.525606,
		0.905570, -0.423816, 0.017940,
		35.155785, 38.350037, 24.213451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015835, 39.090462, 23.893072>,  <34.521885, 38.646706, 24.200893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015835, 39.090462, 23.893072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250717, 38.766949, 23.879999>,  <35.391647, 38.572842, 23.872154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.250717, 38.766949, 23.879999>,  <35.015835, 39.090462, 23.893072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250717, 38.766949, 23.879999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293199, 0.250162, -0.922742,
		0.754471, 0.532255, 0.384029,
		0.587203, -0.808780, -0.032684,
		35.426880, 38.524315, 23.870193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666218, 39.263264, 23.712811>,  <35.015835, 39.090462, 23.893072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666218, 39.263264, 23.712811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644001, 38.876198, 23.614393>,  <35.630669, 38.643959, 23.555342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644001, 38.876198, 23.614393>,  <35.666218, 39.263264, 23.712811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644001, 38.876198, 23.614393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287376, 0.220503, -0.932091,
		0.956206, -0.122481, 0.265836,
		-0.055545, -0.967666, -0.246044,
		35.627338, 38.585899, 23.540581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397671, 39.394417, 24.094776>,  <35.666218, 39.263264, 23.712811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397671, 39.394417, 24.094776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.596161, 39.730511, 24.182196>,  <36.715256, 39.932167, 24.234648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.596161, 39.730511, 24.182196>,  <36.397671, 39.394417, 24.094776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596161, 39.730511, 24.182196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470006, 0.048337, 0.881339,
		0.729969, -0.540062, 0.418902,
		0.496226, 0.840236, 0.218548,
		36.745029, 39.982582, 24.247761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831474, 39.304939, 24.590864>,  <36.397671, 39.394417, 24.094776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831474, 39.304939, 24.590864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743305, 39.694881, 24.603962>,  <36.690403, 39.928848, 24.611820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.743305, 39.694881, 24.603962>,  <36.831474, 39.304939, 24.590864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743305, 39.694881, 24.603962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427982, -0.126825, 0.894844,
		0.876496, 0.183231, 0.445176,
		-0.220423, 0.974855, 0.032742,
		36.677177, 39.987339, 24.613785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124626, 39.434017, 25.258022>,  <36.831474, 39.304939, 24.590864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124626, 39.434017, 25.258022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.905094, 39.760872, 25.187521>,  <36.773373, 39.956985, 25.145220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.905094, 39.760872, 25.187521>,  <37.124626, 39.434017, 25.258022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905094, 39.760872, 25.187521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246004, 0.043627, 0.968286,
		0.798914, 0.574788, 0.177076,
		-0.548834, 0.817139, -0.176254,
		36.740444, 40.006012, 25.134645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369061, 39.972755, 25.706827>,  <37.124626, 39.434017, 25.258022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369061, 39.972755, 25.706827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996311, 40.085087, 25.614958>,  <36.772663, 40.152485, 25.559837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996311, 40.085087, 25.614958>,  <37.369061, 39.972755, 25.706827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996311, 40.085087, 25.614958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193413, 0.151029, 0.969423,
		0.306926, 0.947801, -0.086425,
		-0.931873, 0.280826, -0.229671,
		36.716747, 40.169334, 25.546057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210571, 40.459286, 26.089674>,  <37.369061, 39.972755, 25.706827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210571, 40.459286, 26.089674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.831600, 40.357018, 26.012724>,  <36.604218, 40.295654, 25.966553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.831600, 40.357018, 26.012724>,  <37.210571, 40.459286, 26.089674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831600, 40.357018, 26.012724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237245, 0.157911, 0.958530,
		-0.214691, 0.953780, -0.210267,
		-0.947429, -0.255673, -0.192378,
		36.547371, 40.280315, 25.955011>
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
