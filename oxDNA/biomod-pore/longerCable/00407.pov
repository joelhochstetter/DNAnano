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
	<24.335575, 34.646748, 35.160290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299055, 35.022350, 35.027668>,  <24.277143, 35.247711, 34.948093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299055, 35.022350, 35.027668>,  <24.335575, 34.646748, 35.160290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.299055, 35.022350, 35.027668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177638, 0.342962, 0.922400,
		0.979851, 0.025319, -0.198116,
		-0.091300, 0.939008, -0.331554,
		24.271666, 35.304054, 34.928204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050642, 35.119186, 35.112560>,  <24.335575, 34.646748, 35.160290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050642, 35.119186, 35.112560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.703304, 35.303108, 35.186916>,  <24.494902, 35.413460, 35.231529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.703304, 35.303108, 35.186916>,  <25.050642, 35.119186, 35.112560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.703304, 35.303108, 35.186916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369593, 0.349987, 0.860761,
		0.330721, 0.816143, -0.473850,
		-0.868346, 0.459804, 0.185893,
		24.442801, 35.441048, 35.242683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637985, 35.556877, 34.793068>,  <25.050642, 35.119186, 35.112560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637985, 35.556877, 34.793068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877993, 35.876316, 34.811954>,  <26.021997, 36.067978, 34.823288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.877993, 35.876316, 34.811954>,  <25.637985, 35.556877, 34.793068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877993, 35.876316, 34.811954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431541, -0.372802, 0.821457,
		0.673612, -0.472512, -0.568313,
		0.600016, 0.798593, 0.047216,
		26.057997, 36.115894, 34.826118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370043, 35.280907, 34.925407>,  <25.637985, 35.556877, 34.793068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370043, 35.280907, 34.925407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315382, 35.658863, 35.044407>,  <26.282585, 35.885635, 35.115807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.315382, 35.658863, 35.044407>,  <26.370043, 35.280907, 34.925407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.315382, 35.658863, 35.044407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370504, -0.229770, 0.899963,
		0.918724, 0.233207, -0.318687,
		-0.136653, 0.944892, 0.297499,
		26.274385, 35.942329, 35.133656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979246, 35.369709, 35.320732>,  <26.370043, 35.280907, 34.925407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979246, 35.369709, 35.320732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696262, 35.635769, 35.416294>,  <26.526472, 35.795406, 35.473629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696262, 35.635769, 35.416294>,  <26.979246, 35.369709, 35.320732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696262, 35.635769, 35.416294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231122, -0.101706, 0.967594,
		0.667895, 0.739748, -0.081779,
		-0.707459, 0.665153, 0.238901,
		26.484024, 35.835316, 35.487965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254925, 35.680298, 35.819630>,  <26.979246, 35.369709, 35.320732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254925, 35.680298, 35.819630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860804, 35.736153, 35.858994>,  <26.624331, 35.769665, 35.882614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860804, 35.736153, 35.858994>,  <27.254925, 35.680298, 35.819630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860804, 35.736153, 35.858994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048395, -0.324320, 0.944709,
		0.163830, 0.935585, 0.312795,
		-0.985301, 0.139634, 0.098411,
		26.565214, 35.778042, 35.888515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157694, 36.055351, 36.444031>,  <27.254925, 35.680298, 35.819630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157694, 36.055351, 36.444031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868425, 35.803902, 36.329586>,  <26.694864, 35.653034, 36.260921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868425, 35.803902, 36.329586>,  <27.157694, 36.055351, 36.444031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.868425, 35.803902, 36.329586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228259, -0.608503, 0.760015,
		-0.651860, 0.484314, 0.583540,
		-0.723172, -0.628621, -0.286109,
		26.651474, 35.615314, 36.243752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641314, 36.034153, 37.006153>,  <27.157694, 36.055351, 36.444031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641314, 36.034153, 37.006153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684874, 35.698471, 36.793034>,  <26.711010, 35.497063, 36.665161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684874, 35.698471, 36.793034>,  <26.641314, 36.034153, 37.006153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684874, 35.698471, 36.793034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262922, -0.492577, 0.829602,
		-0.958651, -0.230429, 0.167004,
		0.108902, -0.839208, -0.532795,
		26.717545, 35.446709, 36.633194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146818, 35.494946, 37.278976>,  <26.641314, 36.034153, 37.006153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146818, 35.494946, 37.278976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445154, 35.314507, 37.082920>,  <26.624155, 35.206242, 36.965286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445154, 35.314507, 37.082920>,  <26.146818, 35.494946, 37.278976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445154, 35.314507, 37.082920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202772, -0.547134, 0.812113,
		-0.634514, -0.705092, -0.316603,
		0.745839, -0.451099, -0.490137,
		26.668907, 35.179176, 36.935879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.964165, 34.730186, 37.249573>,  <26.146818, 35.494946, 37.278976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.964165, 34.730186, 37.249573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357311, 34.799725, 37.225060>,  <26.593199, 34.841446, 37.210354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357311, 34.799725, 37.225060>,  <25.964165, 34.730186, 37.249573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357311, 34.799725, 37.225060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140985, -0.494824, 0.857480,
		0.118746, -0.851426, -0.510855,
		0.982865, 0.173845, -0.061280,
		26.652170, 34.851879, 37.206676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.259886, 34.147682, 37.502956>,  <25.964165, 34.730186, 37.249573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.259886, 34.147682, 37.502956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562504, 34.407814, 37.530388>,  <26.744076, 34.563892, 37.546848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562504, 34.407814, 37.530388>,  <26.259886, 34.147682, 37.502956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562504, 34.407814, 37.530388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295216, -0.433231, 0.851563,
		0.583510, -0.624002, -0.519748,
		0.756547, 0.650333, 0.068579,
		26.789469, 34.602913, 37.550961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617809, 33.795685, 38.009998>,  <26.259886, 34.147682, 37.502956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617809, 33.795685, 38.009998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787556, 34.156830, 37.982410>,  <26.889402, 34.373516, 37.965858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787556, 34.156830, 37.982410>,  <26.617809, 33.795685, 38.009998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787556, 34.156830, 37.982410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359357, -0.098009, 0.928039,
		0.831130, -0.418613, -0.366041,
		0.424364, 0.902861, -0.068973,
		26.914865, 34.427689, 37.961720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.393049, 33.886978, 38.242252>,  <26.617809, 33.795685, 38.009998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.393049, 33.886978, 38.242252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180820, 34.216240, 38.323154>,  <27.053484, 34.413795, 38.371696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180820, 34.216240, 38.323154>,  <27.393049, 33.886978, 38.242252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180820, 34.216240, 38.323154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300989, -0.040105, 0.952784,
		0.792401, 0.566397, -0.226482,
		-0.530571, 0.823156, 0.202259,
		27.021648, 34.463188, 38.383831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.676317, 34.533852, 38.386189>,  <27.393049, 33.886978, 38.242252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.676317, 34.533852, 38.386189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325285, 34.515469, 38.577076>,  <27.114666, 34.504436, 38.691608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325285, 34.515469, 38.577076>,  <27.676317, 34.533852, 38.386189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325285, 34.515469, 38.577076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479322, -0.063217, 0.875359,
		-0.010064, 0.996941, 0.077508,
		-0.877581, -0.045961, 0.477220,
		27.062010, 34.501682, 38.720242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492922, 35.116562, 38.705475>,  <27.676317, 34.533852, 38.386189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492922, 35.116562, 38.705475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328360, 34.809902, 38.902653>,  <27.229622, 34.625908, 39.020962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328360, 34.809902, 38.902653>,  <27.492922, 35.116562, 38.705475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328360, 34.809902, 38.902653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495205, 0.266037, 0.827041,
		-0.765191, 0.584359, 0.270199,
		-0.411406, -0.766648, 0.492947,
		27.204937, 34.579906, 39.050537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577721, 35.467777, 38.131111>,  <27.492922, 35.116562, 38.705475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577721, 35.467777, 38.131111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485266, 35.098980, 38.006851>,  <27.429792, 34.877701, 37.932297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.485266, 35.098980, 38.006851>,  <27.577721, 35.467777, 38.131111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485266, 35.098980, 38.006851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446822, 0.384224, -0.807912,
		0.864249, -0.047934, -0.500776,
		-0.231137, -0.921995, -0.310647,
		27.415924, 34.822380, 37.913658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853916, 35.292736, 37.465931>,  <27.577721, 35.467777, 38.131111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.853916, 35.292736, 37.465931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532827, 35.054306, 37.473240>,  <27.340174, 34.911247, 37.477627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532827, 35.054306, 37.473240>,  <27.853916, 35.292736, 37.465931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532827, 35.054306, 37.473240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209682, 0.253429, -0.944355,
		0.558272, -0.761888, -0.328419,
		-0.802724, -0.596071, 0.018271,
		27.292009, 34.875484, 37.478722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889936, 34.960285, 36.811386>,  <27.853916, 35.292736, 37.465931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889936, 34.960285, 36.811386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514311, 34.938423, 36.947132>,  <27.288935, 34.925308, 37.028580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514311, 34.938423, 36.947132>,  <27.889936, 34.960285, 36.811386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514311, 34.938423, 36.947132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340295, 0.287237, -0.895374,
		-0.048545, -0.956299, -0.288332,
		-0.939065, -0.054652, 0.339368,
		27.232592, 34.922028, 37.048943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623522, 34.609097, 36.228401>,  <27.889936, 34.960285, 36.811386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623522, 34.609097, 36.228401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333117, 34.779785, 36.444111>,  <27.158873, 34.882198, 36.573536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333117, 34.779785, 36.444111>,  <27.623522, 34.609097, 36.228401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333117, 34.779785, 36.444111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380662, 0.403708, -0.831935,
		-0.572713, -0.809276, -0.130660,
		-0.726013, 0.426723, 0.539269,
		27.115313, 34.907803, 36.605892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935011, 34.349586, 36.020451>,  <27.623522, 34.609097, 36.228401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935011, 34.349586, 36.020451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865028, 34.698730, 36.202663>,  <26.823040, 34.908215, 36.311993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865028, 34.698730, 36.202663>,  <26.935011, 34.349586, 36.020451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865028, 34.698730, 36.202663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417255, 0.353339, -0.837287,
		-0.891790, -0.336562, 0.302386,
		-0.174954, 0.872856, 0.455536,
		26.812542, 34.960587, 36.339325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231911, 34.614971, 35.900185>,  <26.935011, 34.349586, 36.020451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231911, 34.614971, 35.900185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487749, 34.913624, 35.973347>,  <26.641253, 35.092815, 36.017242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487749, 34.913624, 35.973347>,  <26.231911, 34.614971, 35.900185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487749, 34.913624, 35.973347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406623, 0.530530, -0.743771,
		-0.652360, 0.401342, 0.642924,
		0.639597, 0.746634, 0.182902,
		26.679628, 35.137615, 36.028217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.584221, 34.994167, 35.901627>,  <26.231911, 34.614971, 35.900185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.584221, 34.994167, 35.901627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916630, 35.172916, 36.034111>,  <26.116076, 35.280167, 36.113602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916630, 35.172916, 36.034111>,  <25.584221, 34.994167, 35.901627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916630, 35.172916, 36.034111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132161, 0.419776, -0.897954,
		-0.540307, 0.789996, 0.289785,
		0.831024, 0.446873, 0.331214,
		26.165937, 35.306980, 36.133476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797710, 35.503147, 36.460266>,  <25.584221, 34.994167, 35.901627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797710, 35.503147, 36.460266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076654, 35.789616, 36.449047>,  <26.244020, 35.961498, 36.442314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076654, 35.789616, 36.449047>,  <25.797710, 35.503147, 36.460266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076654, 35.789616, 36.449047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440738, 0.397643, -0.804754,
		-0.565192, 0.573563, 0.592945,
		0.697358, 0.716174, -0.028046,
		26.285862, 36.004467, 36.440632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.576418, 36.254070, 36.281643>,  <25.797710, 35.503147, 36.460266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.576418, 36.254070, 36.281643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957758, 36.205826, 36.170952>,  <26.186562, 36.176880, 36.104538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.957758, 36.205826, 36.170952>,  <25.576418, 36.254070, 36.281643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957758, 36.205826, 36.170952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252753, 0.182285, -0.950204,
		0.165052, 0.975820, 0.143295,
		0.953349, -0.120614, -0.276727,
		26.243763, 36.169640, 36.087933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790964, 36.877213, 35.939186>,  <25.576418, 36.254070, 36.281643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790964, 36.877213, 35.939186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026485, 36.581543, 35.808384>,  <26.167797, 36.404140, 35.729900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026485, 36.581543, 35.808384>,  <25.790964, 36.877213, 35.939186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026485, 36.581543, 35.808384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059575, 0.363786, -0.929575,
		0.806079, 0.566818, 0.170162,
		0.588802, -0.739173, -0.327009,
		26.203127, 36.359791, 35.710281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326542, 37.162701, 35.555168>,  <25.790964, 36.877213, 35.939186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326542, 37.162701, 35.555168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284779, 36.784946, 35.430439>,  <26.259720, 36.558292, 35.355602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284779, 36.784946, 35.430439>,  <26.326542, 37.162701, 35.555168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284779, 36.784946, 35.430439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058130, 0.307204, -0.949866,
		0.992834, -0.117302, 0.022822,
		-0.104410, -0.944387, -0.311821,
		26.253456, 36.501629, 35.336891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904522, 37.062626, 35.134315>,  <26.326542, 37.162701, 35.555168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904522, 37.062626, 35.134315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622566, 36.796986, 35.034626>,  <26.453394, 36.637604, 34.974812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622566, 36.796986, 35.034626>,  <26.904522, 37.062626, 35.134315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622566, 36.796986, 35.034626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046576, 0.307259, -0.950485,
		0.707789, -0.681592, -0.185652,
		-0.704887, -0.664096, -0.249221,
		26.411100, 36.597755, 34.959858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155325, 36.736439, 34.518826>,  <26.904522, 37.062626, 35.134315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155325, 36.736439, 34.518826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756107, 36.717636, 34.535305>,  <26.516577, 36.706352, 34.545193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756107, 36.717636, 34.535305>,  <27.155325, 36.736439, 34.518826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756107, 36.717636, 34.535305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052685, 0.278064, -0.959117,
		0.033634, -0.959411, -0.279997,
		-0.998045, -0.047010, 0.041194,
		26.456694, 36.703533, 34.547665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555677, 37.339211, 34.419907>,  <27.155325, 36.736439, 34.518826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555677, 37.339211, 34.419907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896065, 37.130676, 34.394424>,  <28.100298, 37.005554, 34.379135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.896065, 37.130676, 34.394424>,  <27.555677, 37.339211, 34.419907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896065, 37.130676, 34.394424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424477, -0.611239, -0.667987,
		0.309305, 0.595480, -0.741441,
		0.850970, -0.521336, -0.063708,
		28.151356, 36.974274, 34.375313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891474, 37.380402, 33.712864>,  <27.555677, 37.339211, 34.419907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891474, 37.380402, 33.712864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024862, 37.044128, 33.883537>,  <28.104895, 36.842365, 33.985939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024862, 37.044128, 33.883537>,  <27.891474, 37.380402, 33.712864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024862, 37.044128, 33.883537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334143, -0.528600, -0.780340,
		0.881558, 0.117649, -0.457180,
		0.333472, -0.840679, 0.426680,
		28.124905, 36.791924, 34.011543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335745, 37.016533, 33.240856>,  <27.891474, 37.380402, 33.712864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335745, 37.016533, 33.240856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115423, 36.785568, 33.481926>,  <27.983231, 36.646992, 33.626568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115423, 36.785568, 33.481926>,  <28.335745, 37.016533, 33.240856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115423, 36.785568, 33.481926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178445, -0.623912, -0.760849,
		0.815336, -0.526622, 0.240618,
		-0.550804, -0.577410, 0.602671,
		27.950182, 36.612347, 33.662727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153091, 37.118206, 33.313450>,  <28.335745, 37.016533, 33.240856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153091, 37.118206, 33.313450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511282, 37.002098, 33.448425>,  <29.726196, 36.932434, 33.529411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.511282, 37.002098, 33.448425>,  <29.153091, 37.118206, 33.313450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.511282, 37.002098, 33.448425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192015, 0.935857, 0.295468,
		-0.401563, -0.199790, 0.893774,
		0.895476, -0.290267, 0.337443,
		29.779924, 36.915016, 33.549660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273275, 37.438488, 34.000854>,  <29.153091, 37.118206, 33.313450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273275, 37.438488, 34.000854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642271, 37.344193, 33.878582>,  <29.863668, 37.287617, 33.805218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642271, 37.344193, 33.878582>,  <29.273275, 37.438488, 34.000854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642271, 37.344193, 33.878582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358516, 0.816772, 0.452050,
		0.143103, -0.526602, 0.837981,
		0.922490, -0.235740, -0.305678,
		29.919018, 37.273472, 33.786880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737583, 37.318802, 34.569511>,  <29.273275, 37.438488, 34.000854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737583, 37.318802, 34.569511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954721, 37.437683, 34.255318>,  <30.085005, 37.509014, 34.066803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954721, 37.437683, 34.255318>,  <29.737583, 37.318802, 34.569511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954721, 37.437683, 34.255318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351139, 0.769293, 0.533750,
		0.762901, -0.565559, 0.313249,
		0.542848, 0.297205, -0.785485,
		30.117575, 37.526844, 34.019672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238220, 37.771248, 34.601784>,  <29.737583, 37.318802, 34.569511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238220, 37.771248, 34.601784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601974, 37.660957, 34.477211>,  <30.820227, 37.594784, 34.402466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601974, 37.660957, 34.477211>,  <30.238220, 37.771248, 34.601784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601974, 37.660957, 34.477211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210581, 0.950868, -0.226947,
		0.358707, 0.140801, 0.922770,
		0.909387, -0.275726, -0.311433,
		30.874790, 37.578239, 34.383781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889511, 38.151691, 34.924931>,  <30.238220, 37.771248, 34.601784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889511, 38.151691, 34.924931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902605, 38.037697, 34.541740>,  <30.910461, 37.969299, 34.311829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902605, 38.037697, 34.541740>,  <30.889511, 38.151691, 34.924931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902605, 38.037697, 34.541740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060556, 0.957290, -0.282716,
		0.997628, -0.048756, 0.048596,
		0.032736, -0.284988, -0.957972,
		30.912426, 37.952202, 34.254349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597027, 38.335209, 34.613239>,  <30.889511, 38.151691, 34.924931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597027, 38.335209, 34.613239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281591, 38.320534, 34.367706>,  <31.092331, 38.311729, 34.220387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281591, 38.320534, 34.367706>,  <31.597027, 38.335209, 34.613239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281591, 38.320534, 34.367706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138598, 0.961930, -0.235545,
		0.599100, -0.270823, -0.753481,
		-0.788587, -0.036684, -0.613828,
		31.045015, 38.309528, 34.183559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788738, 38.578148, 33.933788>,  <31.597027, 38.335209, 34.613239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788738, 38.578148, 33.933788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406717, 38.643745, 34.032566>,  <31.177505, 38.683102, 34.091831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406717, 38.643745, 34.032566>,  <31.788738, 38.578148, 33.933788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406717, 38.643745, 34.032566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143871, 0.984777, -0.097550,
		-0.259181, -0.057637, -0.964107,
		-0.955053, 0.163990, 0.246943,
		31.120201, 38.692944, 34.106647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492243, 39.190414, 33.507717>,  <31.788738, 38.578148, 33.933788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492243, 39.190414, 33.507717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321678, 39.136078, 33.865425>,  <31.219339, 39.103477, 34.080051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321678, 39.136078, 33.865425>,  <31.492243, 39.190414, 33.507717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321678, 39.136078, 33.865425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016847, 0.987295, 0.158005,
		-0.904372, 0.082441, -0.418705,
		-0.426411, -0.135841, 0.894271,
		31.193754, 39.095325, 34.133705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946575, 39.653008, 33.970936>,  <31.492243, 39.190414, 33.507717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946575, 39.653008, 33.970936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643690, 39.878326, 34.103199>,  <31.461960, 40.013515, 34.182556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643690, 39.878326, 34.103199>,  <31.946575, 39.653008, 33.970936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643690, 39.878326, 34.103199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530107, -0.825736, 0.192735,
		0.381599, -0.029341, 0.923862,
		-0.757210, 0.563294, 0.330654,
		31.416527, 40.047314, 34.202396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568556, 39.420258, 34.492516>,  <31.946575, 39.653008, 33.970936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568556, 39.420258, 34.492516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313160, 39.639751, 34.276657>,  <31.159922, 39.771446, 34.147141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313160, 39.639751, 34.276657>,  <31.568556, 39.420258, 34.492516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313160, 39.639751, 34.276657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607166, -0.790021, -0.084949,
		-0.472948, 0.273418, 0.837593,
		-0.638490, 0.548735, -0.539649,
		31.121613, 39.804371, 34.114761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925186, 39.524853, 34.819485>,  <31.568556, 39.420258, 34.492516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925186, 39.524853, 34.819485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843422, 39.531452, 34.427986>,  <30.794363, 39.535412, 34.193089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843422, 39.531452, 34.427986>,  <30.925186, 39.524853, 34.819485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843422, 39.531452, 34.427986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450113, -0.889469, 0.079011,
		-0.869261, 0.456698, 0.189245,
		-0.204412, 0.016500, -0.978746,
		30.782099, 39.536404, 34.134361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221174, 39.315182, 34.743671>,  <30.925186, 39.524853, 34.819485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.221174, 39.315182, 34.743671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422489, 39.235752, 34.407272>,  <30.543278, 39.188095, 34.205433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.422489, 39.235752, 34.407272>,  <30.221174, 39.315182, 34.743671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422489, 39.235752, 34.407272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238360, -0.967382, 0.085775,
		-0.830594, 0.157290, -0.534203,
		0.503287, -0.198577, -0.840993,
		30.573475, 39.176178, 34.154976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817602, 38.817135, 34.261200>,  <30.221174, 39.315182, 34.743671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817602, 38.817135, 34.261200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213139, 38.782898, 34.212429>,  <30.450460, 38.762356, 34.183167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213139, 38.782898, 34.212429>,  <29.817602, 38.817135, 34.261200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213139, 38.782898, 34.212429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110476, -0.970395, -0.214773,
		-0.099939, 0.225847, -0.969023,
		0.988841, -0.085590, -0.121931,
		30.509790, 38.757221, 34.175850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881958, 38.387867, 33.651066>,  <29.817602, 38.817135, 34.261200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881958, 38.387867, 33.651066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244337, 38.371975, 33.819675>,  <30.461765, 38.362442, 33.920841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.244337, 38.371975, 33.819675>,  <29.881958, 38.387867, 33.651066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244337, 38.371975, 33.819675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025521, -0.988654, -0.148030,
		0.422621, 0.144865, -0.894654,
		0.905947, -0.039728, 0.421523,
		30.516121, 38.360058, 33.946133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327646, 38.120899, 33.163113>,  <29.881958, 38.387867, 33.651066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327646, 38.120899, 33.163113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419071, 38.028351, 33.541367>,  <30.473927, 37.972820, 33.768318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419071, 38.028351, 33.541367>,  <30.327646, 38.120899, 33.163113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419071, 38.028351, 33.541367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000960, -0.971401, -0.237444,
		0.973529, 0.053363, -0.222247,
		0.228562, -0.231372, 0.945636,
		30.487640, 37.958939, 33.825058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866915, 37.648888, 33.012310>,  <30.327646, 38.120899, 33.163113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866915, 37.648888, 33.012310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645369, 37.612026, 33.343307>,  <30.512440, 37.589909, 33.541904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645369, 37.612026, 33.343307>,  <30.866915, 37.648888, 33.012310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645369, 37.612026, 33.343307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090699, -0.981264, -0.169985,
		0.827651, -0.169202, 0.535131,
		-0.553867, -0.092152, 0.827490,
		30.479208, 37.584381, 33.591553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109718, 37.017227, 33.416039>,  <30.866915, 37.648888, 33.012310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109718, 37.017227, 33.416039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736862, 37.100822, 33.534321>,  <30.513149, 37.150978, 33.605289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736862, 37.100822, 33.534321>,  <31.109718, 37.017227, 33.416039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736862, 37.100822, 33.534321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248841, -0.962960, -0.103856,
		0.263052, -0.170393, 0.949616,
		-0.932138, 0.208984, 0.295709,
		30.457220, 37.163517, 33.623032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041134, 36.573147, 33.903427>,  <31.109718, 37.017227, 33.416039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041134, 36.573147, 33.903427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681507, 36.685356, 33.768974>,  <30.465731, 36.752682, 33.688305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681507, 36.685356, 33.768974>,  <31.041134, 36.573147, 33.903427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681507, 36.685356, 33.768974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276146, -0.959124, -0.061837,
		-0.339736, 0.037225, 0.939784,
		-0.899068, 0.280526, -0.336129,
		30.411787, 36.769512, 33.668137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677912, 35.960518, 34.004635>,  <31.041134, 36.573147, 33.903427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677912, 35.960518, 34.004635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435184, 36.195366, 33.790321>,  <30.289549, 36.336273, 33.661736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435184, 36.195366, 33.790321>,  <30.677912, 35.960518, 34.004635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435184, 36.195366, 33.790321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544718, -0.798073, -0.257608,
		-0.578838, 0.135527, 0.804102,
		-0.606819, 0.587121, -0.535779,
		30.253139, 36.371502, 33.629589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549648, 35.123466, 34.320984>,  <30.677912, 35.960518, 34.004635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549648, 35.123466, 34.320984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401108, 34.868027, 34.051380>,  <30.311983, 34.714764, 33.889618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.401108, 34.868027, 34.051380>,  <30.549648, 35.123466, 34.320984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401108, 34.868027, 34.051380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444361, -0.759623, 0.474885,
		-0.815256, -0.123157, 0.565854,
		-0.371351, -0.638596, -0.674013,
		30.289703, 34.676449, 33.849174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134714, 34.657581, 34.706905>,  <30.549648, 35.123466, 34.320984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134714, 34.657581, 34.706905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307285, 34.521011, 34.372887>,  <30.410828, 34.439072, 34.172474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307285, 34.521011, 34.372887>,  <30.134714, 34.657581, 34.706905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307285, 34.521011, 34.372887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334607, -0.799039, 0.499574,
		-0.837800, -0.494943, -0.230485,
		0.431427, -0.341421, -0.835046,
		30.436714, 34.418587, 34.122372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864923, 33.928398, 34.554554>,  <30.134714, 34.657581, 34.706905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864923, 33.928398, 34.554554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234545, 34.016155, 34.429337>,  <30.456318, 34.068810, 34.354206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234545, 34.016155, 34.429337>,  <29.864923, 33.928398, 34.554554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234545, 34.016155, 34.429337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354725, -0.797327, 0.488303,
		-0.142468, -0.562261, -0.814596,
		0.924053, 0.219390, -0.313041,
		30.511761, 34.081974, 34.335423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101877, 33.330688, 34.471046>,  <29.864923, 33.928398, 34.554554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101877, 33.330688, 34.471046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445940, 33.534687, 34.468491>,  <30.652378, 33.657085, 34.466957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445940, 33.534687, 34.468491>,  <30.101877, 33.330688, 34.471046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445940, 33.534687, 34.468491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431000, -0.720115, 0.543759,
		0.272711, -0.470471, -0.839217,
		0.860156, 0.509992, -0.006390,
		30.703987, 33.687683, 34.466572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680248, 32.856888, 34.260265>,  <30.101877, 33.330688, 34.471046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680248, 32.856888, 34.260265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772884, 33.157852, 34.506920>,  <30.828466, 33.338432, 34.654915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772884, 33.157852, 34.506920>,  <30.680248, 32.856888, 34.260265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772884, 33.157852, 34.506920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413167, -0.649937, 0.637867,
		0.880715, 0.107051, -0.461391,
		0.231591, 0.752411, 0.616639,
		30.842361, 33.383575, 34.691910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411499, 32.860657, 34.437069>,  <30.680248, 32.856888, 34.260265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411499, 32.860657, 34.437069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226543, 33.016666, 34.755585>,  <31.115570, 33.110271, 34.946693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226543, 33.016666, 34.755585>,  <31.411499, 32.860657, 34.437069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226543, 33.016666, 34.755585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406405, -0.704947, 0.581278,
		0.788056, 0.592392, 0.167450,
		-0.462388, 0.390027, 0.796289,
		31.087828, 33.133675, 34.994473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353222, 32.269833, 34.039848>,  <31.411499, 32.860657, 34.437069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353222, 32.269833, 34.039848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460096, 31.892591, 34.119019>,  <31.524221, 31.666246, 34.166519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460096, 31.892591, 34.119019>,  <31.353222, 32.269833, 34.039848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460096, 31.892591, 34.119019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386384, -0.083310, -0.918568,
		0.882791, 0.321902, 0.342140,
		0.267185, -0.943100, 0.197923,
		31.540253, 31.609661, 34.178394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091995, 32.009377, 33.924744>,  <31.353222, 32.269833, 34.039848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091995, 32.009377, 33.924744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857668, 31.688774, 33.876751>,  <31.717072, 31.496412, 33.847958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857668, 31.688774, 33.876751>,  <32.091995, 32.009377, 33.924744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857668, 31.688774, 33.876751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347298, -0.114518, -0.930736,
		0.732255, -0.586912, 0.345450,
		-0.585820, -0.801511, -0.119977,
		31.681921, 31.448320, 33.840759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396873, 31.354361, 33.804020>,  <32.091995, 32.009377, 33.924744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396873, 31.354361, 33.804020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041725, 31.342701, 33.620354>,  <31.828636, 31.335705, 33.510155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041725, 31.342701, 33.620354>,  <32.396873, 31.354361, 33.804020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041725, 31.342701, 33.620354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455659, 0.082380, -0.886334,
		0.063655, -0.996175, -0.059864,
		-0.887876, -0.029141, -0.459160,
		31.775362, 31.333956, 33.482605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195938, 30.745020, 33.402058>,  <32.396873, 31.354361, 33.804020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195938, 30.745020, 33.402058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044209, 31.096720, 33.286800>,  <31.953171, 31.307739, 33.217644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044209, 31.096720, 33.286800>,  <32.195938, 30.745020, 33.402058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044209, 31.096720, 33.286800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609800, 0.003348, -0.792548,
		-0.695884, -0.476348, -0.537437,
		-0.379328, 0.879251, -0.288147,
		31.930410, 31.360495, 33.200356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145863, 30.685022, 32.622673>,  <32.195938, 30.745020, 33.402058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145863, 30.685022, 32.622673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185791, 31.068113, 32.730595>,  <32.209747, 31.297968, 32.795349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185791, 31.068113, 32.730595>,  <32.145863, 30.685022, 32.622673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185791, 31.068113, 32.730595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440982, 0.200489, -0.874836,
		-0.891947, 0.206309, -0.402327,
		0.099825, 0.957727, 0.269804,
		32.215740, 31.355431, 32.811535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008076, 31.235905, 32.029728>,  <32.145863, 30.685022, 32.622673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008076, 31.235905, 32.029728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260284, 31.371346, 32.309097>,  <32.411610, 31.452610, 32.476719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260284, 31.371346, 32.309097>,  <32.008076, 31.235905, 32.029728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260284, 31.371346, 32.309097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591432, 0.373131, -0.714830,
		-0.502644, 0.863784, 0.035008,
		0.630521, 0.338600, 0.698422,
		32.449440, 31.472925, 32.518623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173618, 31.928099, 31.850689>,  <32.008076, 31.235905, 32.029728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173618, 31.928099, 31.850689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481403, 31.806400, 32.075317>,  <32.666073, 31.733381, 32.210094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481403, 31.806400, 32.075317>,  <32.173618, 31.928099, 31.850689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481403, 31.806400, 32.075317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638111, 0.403764, -0.655583,
		-0.027283, 0.862791, 0.504825,
		0.769461, -0.304248, 0.561572,
		32.712242, 31.715126, 32.243790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641026, 32.495571, 31.981220>,  <32.173618, 31.928099, 31.850689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641026, 32.495571, 31.981220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805084, 32.130928, 31.970245>,  <32.903519, 31.912142, 31.963661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805084, 32.130928, 31.970245>,  <32.641026, 32.495571, 31.981220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805084, 32.130928, 31.970245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607507, 0.295515, -0.737297,
		0.680233, 0.285731, 0.675012,
		0.410144, -0.911608, -0.027436,
		32.928127, 31.857445, 31.962015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416134, 32.587505, 31.958204>,  <32.641026, 32.495571, 31.981220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416134, 32.587505, 31.958204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302082, 32.226749, 31.828402>,  <33.233650, 32.010296, 31.750521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302082, 32.226749, 31.828402>,  <33.416134, 32.587505, 31.958204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302082, 32.226749, 31.828402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680431, 0.047992, -0.731239,
		0.675068, -0.429300, 0.599987,
		-0.285126, -0.901886, -0.324507,
		33.216545, 31.956184, 31.731049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023113, 32.178574, 31.836040>,  <33.416134, 32.587505, 31.958204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023113, 32.178574, 31.836040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722450, 32.053890, 31.603542>,  <33.542053, 31.979080, 31.464043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722450, 32.053890, 31.603542>,  <34.023113, 32.178574, 31.836040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722450, 32.053890, 31.603542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556776, 0.172544, -0.812545,
		0.353567, -0.934381, 0.043857,
		-0.751659, -0.311708, -0.581246,
		33.496952, 31.960379, 31.429169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137173, 31.662666, 31.335985>,  <34.023113, 32.178574, 31.836040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137173, 31.662666, 31.335985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816208, 31.839066, 31.175161>,  <33.623627, 31.944904, 31.078667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816208, 31.839066, 31.175161>,  <34.137173, 31.662666, 31.335985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816208, 31.839066, 31.175161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470574, 0.053238, -0.880753,
		-0.367005, -0.895928, -0.250241,
		-0.802413, 0.440998, -0.402061,
		33.575485, 31.971365, 31.054543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906857, 31.378611, 30.699245>,  <34.137173, 31.662666, 31.335985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906857, 31.378611, 30.699245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860573, 31.774426, 30.733723>,  <33.832802, 32.011913, 30.754408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860573, 31.774426, 30.733723>,  <33.906857, 31.378611, 30.699245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860573, 31.774426, 30.733723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514049, 0.133907, -0.847244,
		-0.849921, -0.053725, -0.524165,
		-0.115708, 0.989537, 0.086192,
		33.825859, 32.071285, 30.759581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758537, 31.642288, 30.115263>,  <33.906857, 31.378611, 30.699245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758537, 31.642288, 30.115263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876915, 31.972099, 30.308167>,  <33.947941, 32.169987, 30.423908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876915, 31.972099, 30.308167>,  <33.758537, 31.642288, 30.115263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876915, 31.972099, 30.308167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362315, 0.370249, -0.855362,
		-0.883824, 0.427868, -0.189166,
		0.295943, 0.824527, 0.482257,
		33.965698, 32.219456, 30.452845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463898, 32.203251, 29.741199>,  <33.758537, 31.642288, 30.115263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463898, 32.203251, 29.741199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789509, 32.329674, 29.936119>,  <33.984875, 32.405529, 30.053072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789509, 32.329674, 29.936119>,  <33.463898, 32.203251, 29.741199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789509, 32.329674, 29.936119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353048, 0.396952, -0.847223,
		-0.461208, 0.861705, 0.211546,
		0.814029, 0.316060, 0.487300,
		34.033718, 32.424492, 30.082310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572063, 32.706341, 29.295376>,  <33.463898, 32.203251, 29.741199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572063, 32.706341, 29.295376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909660, 32.715412, 29.509724>,  <34.112221, 32.720856, 29.638332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909660, 32.715412, 29.509724>,  <33.572063, 32.706341, 29.295376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909660, 32.715412, 29.509724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488315, 0.380769, -0.785216,
		-0.221852, 0.924392, 0.310293,
		0.843997, 0.022681, 0.535869,
		34.162861, 32.722218, 29.670485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972866, 33.415550, 29.222862>,  <33.572063, 32.706341, 29.295376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972866, 33.415550, 29.222862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228359, 33.119915, 29.308430>,  <34.381657, 32.942532, 29.359770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228359, 33.119915, 29.308430>,  <33.972866, 33.415550, 29.222862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228359, 33.119915, 29.308430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418800, 0.100727, -0.902474,
		0.645462, 0.666033, 0.373869,
		0.638737, -0.739090, 0.213919,
		34.419979, 32.898190, 29.372606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603737, 33.694004, 29.020903>,  <33.972866, 33.415550, 29.222862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603737, 33.694004, 29.020903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640007, 33.295963, 29.036673>,  <34.661770, 33.057140, 29.046135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640007, 33.295963, 29.036673>,  <34.603737, 33.694004, 29.020903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640007, 33.295963, 29.036673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338305, -0.006456, -0.941014,
		0.936657, 0.098666, 0.336062,
		0.090677, -0.995100, 0.039426,
		34.667210, 32.997433, 29.048500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184719, 33.534492, 28.745594>,  <34.603737, 33.694004, 29.020903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184719, 33.534492, 28.745594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987957, 33.188568, 28.705330>,  <34.869900, 32.981014, 28.681171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987957, 33.188568, 28.705330>,  <35.184719, 33.534492, 28.745594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987957, 33.188568, 28.705330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252497, -0.031052, -0.967099,
		0.833231, -0.501139, 0.233637,
		-0.491906, -0.864810, -0.100662,
		34.840385, 32.929127, 28.675131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609264, 33.021420, 28.411072>,  <35.184719, 33.534492, 28.745594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609264, 33.021420, 28.411072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239250, 32.884689, 28.344782>,  <35.017242, 32.802650, 28.305008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239250, 32.884689, 28.344782>,  <35.609264, 33.021420, 28.411072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239250, 32.884689, 28.344782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255865, -0.238178, -0.936912,
		0.280793, -0.909078, 0.307785,
		-0.925034, -0.341830, -0.165723,
		34.961739, 32.782139, 28.295065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733284, 32.436981, 28.096672>,  <35.609264, 33.021420, 28.411072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733284, 32.436981, 28.096672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355404, 32.512684, 27.989553>,  <35.128674, 32.558105, 27.925282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355404, 32.512684, 27.989553>,  <35.733284, 32.436981, 28.096672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355404, 32.512684, 27.989553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207752, -0.286432, -0.935305,
		-0.253715, -0.939223, 0.231276,
		-0.944705, 0.189253, -0.267798,
		35.071991, 32.569462, 27.909214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411694, 31.865932, 27.698050>,  <35.733284, 32.436981, 28.096672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411694, 31.865932, 27.698050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175323, 32.173134, 27.599276>,  <35.033501, 32.357456, 27.540010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175323, 32.173134, 27.599276>,  <35.411694, 31.865932, 27.698050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175323, 32.173134, 27.599276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056865, -0.265678, -0.962383,
		-0.804721, -0.582737, 0.113323,
		-0.590924, 0.768006, -0.246934,
		34.998047, 32.403534, 27.525196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986591, 31.527336, 27.201855>,  <35.411694, 31.865932, 27.698050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986591, 31.527336, 27.201855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968830, 31.922056, 27.139563>,  <34.958172, 32.158890, 27.102188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968830, 31.922056, 27.139563>,  <34.986591, 31.527336, 27.201855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968830, 31.922056, 27.139563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073878, -0.152214, -0.985582,
		-0.996278, -0.055272, -0.066143,
		-0.044407, 0.986801, -0.155731,
		34.955509, 32.218098, 27.092844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670677, 31.587418, 26.572407>,  <34.986591, 31.527336, 27.201855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670677, 31.587418, 26.572407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830128, 31.952696, 26.606297>,  <34.925797, 32.171864, 26.626631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830128, 31.952696, 26.606297>,  <34.670677, 31.587418, 26.572407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830128, 31.952696, 26.606297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322095, -0.052901, -0.945228,
		-0.858694, 0.404078, -0.315222,
		0.398622, 0.913193, 0.084726,
		34.949715, 32.226654, 26.631714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432240, 32.043560, 25.957275>,  <34.670677, 31.587418, 26.572407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432240, 32.043560, 25.957275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770508, 32.197304, 26.105387>,  <34.973469, 32.289551, 26.194254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770508, 32.197304, 26.105387>,  <34.432240, 32.043560, 25.957275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770508, 32.197304, 26.105387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375810, 0.063770, -0.924500,
		-0.378954, 0.920978, -0.090519,
		0.845672, 0.384360, 0.370279,
		35.024208, 32.312611, 26.216471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651150, 32.547478, 25.531141>,  <34.432240, 32.043560, 25.957275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651150, 32.547478, 25.531141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001106, 32.472122, 25.709616>,  <35.211079, 32.426910, 25.816700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001106, 32.472122, 25.709616>,  <34.651150, 32.547478, 25.531141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001106, 32.472122, 25.709616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448477, -0.032722, -0.893195,
		0.182869, 0.981549, 0.055861,
		0.874887, -0.188390, 0.446186,
		35.263573, 32.415604, 25.843472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030979, 32.980110, 25.135977>,  <34.651150, 32.547478, 25.531141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030979, 32.980110, 25.135977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267208, 32.712929, 25.317112>,  <35.408947, 32.552620, 25.425793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267208, 32.712929, 25.317112>,  <35.030979, 32.980110, 25.135977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267208, 32.712929, 25.317112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675229, 0.101721, -0.730560,
		0.441916, 0.737219, 0.511095,
		0.590572, -0.667952, 0.452840,
		35.444382, 32.512543, 25.452965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695004, 33.248955, 25.131565>,  <35.030979, 32.980110, 25.135977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695004, 33.248955, 25.131565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784241, 32.864960, 25.199268>,  <35.837784, 32.634563, 25.239889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784241, 32.864960, 25.199268>,  <35.695004, 33.248955, 25.131565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784241, 32.864960, 25.199268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706633, 0.039657, -0.706468,
		0.671490, 0.277210, 0.687208,
		0.223093, -0.959991, 0.169257,
		35.851170, 32.576962, 25.250046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309998, 33.294682, 25.034208>,  <35.695004, 33.248955, 25.131565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309998, 33.294682, 25.034208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184849, 32.917454, 24.989071>,  <36.109760, 32.691116, 24.961988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184849, 32.917454, 24.989071>,  <36.309998, 33.294682, 25.034208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184849, 32.917454, 24.989071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571812, -0.092166, -0.815191,
		0.758379, -0.319578, 0.568094,
		-0.312876, -0.943067, -0.112842,
		36.090984, 32.634533, 24.955217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913372, 32.788666, 25.049292>,  <36.309998, 33.294682, 25.034208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913372, 32.788666, 25.049292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622055, 32.600021, 24.850426>,  <36.447266, 32.486835, 24.731106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.622055, 32.600021, 24.850426>,  <36.913372, 32.788666, 25.049292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622055, 32.600021, 24.850426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548601, 0.033489, -0.835413,
		0.410638, -0.881172, 0.234335,
		-0.728295, -0.471609, -0.497164,
		36.403568, 32.458538, 24.701277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262138, 32.461105, 24.591320>,  <36.913372, 32.788666, 25.049292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262138, 32.461105, 24.591320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907127, 32.405205, 24.415703>,  <36.694118, 32.371666, 24.310333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907127, 32.405205, 24.415703>,  <37.262138, 32.461105, 24.591320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907127, 32.405205, 24.415703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447107, -0.031093, -0.893940,
		0.111279, -0.989698, 0.090080,
		-0.887531, -0.139752, -0.439041,
		36.640869, 32.363277, 24.283991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358604, 31.874447, 24.013514>,  <37.262138, 32.461105, 24.591320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358604, 31.874447, 24.013514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034828, 32.089848, 23.919857>,  <36.840561, 32.219086, 23.863663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034828, 32.089848, 23.919857>,  <37.358604, 31.874447, 24.013514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034828, 32.089848, 23.919857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374847, 0.166934, -0.911933,
		-0.451990, -0.825924, -0.336979,
		-0.809441, 0.538500, -0.234143,
		36.791996, 32.251396, 23.849615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127247, 31.670473, 23.307192>,  <37.358604, 31.874447, 24.013514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127247, 31.670473, 23.307192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960918, 32.026981, 23.379562>,  <36.861122, 32.240887, 23.422985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.960918, 32.026981, 23.379562>,  <37.127247, 31.670473, 23.307192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960918, 32.026981, 23.379562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406864, 0.360230, -0.839462,
		-0.813361, -0.275452, -0.512416,
		-0.415819, 0.891269, 0.180926,
		36.836174, 32.294361, 23.433840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107170, 31.895796, 22.670353>,  <37.127247, 31.670473, 23.307192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107170, 31.895796, 22.670353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038933, 32.235741, 22.869804>,  <36.997990, 32.439709, 22.989475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038933, 32.235741, 22.869804>,  <37.107170, 31.895796, 22.670353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038933, 32.235741, 22.869804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359477, 0.524849, -0.771563,
		-0.917428, 0.047620, -0.395043,
		-0.170596, 0.849862, 0.498630,
		36.987755, 32.490700, 23.019394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797348, 32.381542, 22.164902>,  <37.107170, 31.895796, 22.670353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797348, 32.381542, 22.164902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954308, 32.602455, 22.459114>,  <37.048485, 32.735004, 22.635641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954308, 32.602455, 22.459114>,  <36.797348, 32.381542, 22.164902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954308, 32.602455, 22.459114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372630, 0.635654, -0.676085,
		-0.840934, 0.539376, 0.043633,
		0.392399, 0.552283, 0.735531,
		37.072029, 32.768139, 22.679773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683659, 33.047958, 21.983006>,  <36.797348, 32.381542, 22.164902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683659, 33.047958, 21.983006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986763, 33.071381, 22.242966>,  <37.168625, 33.085434, 22.398943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986763, 33.071381, 22.242966>,  <36.683659, 33.047958, 21.983006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986763, 33.071381, 22.242966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468276, 0.644824, -0.604085,
		-0.454443, 0.762085, 0.461203,
		0.757759, 0.058552, 0.649902,
		37.214092, 33.088947, 22.437937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750484, 33.767265, 22.063793>,  <36.683659, 33.047958, 21.983006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750484, 33.767265, 22.063793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089085, 33.569508, 22.142803>,  <37.292244, 33.450851, 22.190208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089085, 33.569508, 22.142803>,  <36.750484, 33.767265, 22.063793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089085, 33.569508, 22.142803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483118, 0.557433, -0.675178,
		0.223699, 0.666963, 0.710717,
		0.846496, -0.494397, 0.197524,
		37.343033, 33.421188, 22.202061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182259, 34.348381, 22.085428>,  <36.750484, 33.767265, 22.063793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182259, 34.348381, 22.085428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414547, 34.025501, 22.043114>,  <37.553921, 33.831776, 22.017725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414547, 34.025501, 22.043114>,  <37.182259, 34.348381, 22.085428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414547, 34.025501, 22.043114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602336, 0.513441, -0.611203,
		0.547676, 0.291223, 0.784372,
		0.580725, -0.807197, -0.105786,
		37.588764, 33.783340, 22.011377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869270, 34.572006, 22.106224>,  <37.182259, 34.348381, 22.085428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869270, 34.572006, 22.106224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938950, 34.198517, 21.981125>,  <37.980759, 33.974422, 21.906065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938950, 34.198517, 21.981125>,  <37.869270, 34.572006, 22.106224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938950, 34.198517, 21.981125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779943, 0.324715, -0.535023,
		0.601118, -0.150724, 0.784818,
		0.174202, -0.933725, -0.312748,
		37.991211, 33.918400, 21.887300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569248, 34.524170, 22.281483>,  <37.869270, 34.572006, 22.106224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569248, 34.524170, 22.281483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445251, 34.273964, 21.995089>,  <38.370853, 34.123840, 21.823252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445251, 34.273964, 21.995089>,  <38.569248, 34.524170, 22.281483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445251, 34.273964, 21.995089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727257, 0.329049, -0.602348,
		0.612372, -0.707431, 0.352906,
		-0.309996, -0.625514, -0.715985,
		38.352253, 34.086311, 21.780293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218029, 34.249977, 22.061600>,  <38.569248, 34.524170, 22.281483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218029, 34.249977, 22.061600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937340, 34.222301, 21.777966>,  <38.768929, 34.205696, 21.607784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937340, 34.222301, 21.777966>,  <39.218029, 34.249977, 22.061600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937340, 34.222301, 21.777966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619880, 0.431316, -0.655527,
		0.351196, -0.899544, -0.259773,
		-0.701719, -0.069191, -0.709085,
		38.726826, 34.201542, 21.565239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544334, 33.997383, 21.488005>,  <39.218029, 34.249977, 22.061600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544334, 33.997383, 21.488005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216698, 34.197598, 21.375895>,  <39.020115, 34.317726, 21.308628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216698, 34.197598, 21.375895>,  <39.544334, 33.997383, 21.488005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216698, 34.197598, 21.375895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545094, 0.526840, -0.652159,
		-0.178766, -0.686956, -0.704368,
		-0.819094, 0.500531, -0.280275,
		38.970970, 34.347755, 21.291813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.586716, 34.024479, 20.749601>,  <39.544334, 33.997383, 21.488005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.586716, 34.024479, 20.749601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322361, 34.311714, 20.836855>,  <39.163750, 34.484055, 20.889208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322361, 34.311714, 20.836855>,  <39.586716, 34.024479, 20.749601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322361, 34.311714, 20.836855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383944, 0.573248, -0.723860,
		-0.644839, -0.394638, -0.654557,
		-0.660886, 0.718086, 0.218134,
		39.124096, 34.527142, 20.902294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388611, 34.278290, 20.030807>,  <39.586716, 34.024479, 20.749601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388611, 34.278290, 20.030807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283867, 34.569984, 20.283676>,  <39.221020, 34.745003, 20.435396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283867, 34.569984, 20.283676>,  <39.388611, 34.278290, 20.030807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283867, 34.569984, 20.283676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306457, 0.683956, -0.662033,
		-0.915156, 0.020371, -0.402584,
		-0.261864, 0.729239, 0.632170,
		39.205307, 34.788757, 20.473328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846001, 34.745071, 19.773367>,  <39.388611, 34.278290, 20.030807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846001, 34.745071, 19.773367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997585, 34.989605, 20.051262>,  <39.088535, 35.136326, 20.217999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997585, 34.989605, 20.051262>,  <38.846001, 34.745071, 19.773367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997585, 34.989605, 20.051262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163266, 0.694788, -0.700439,
		-0.910897, 0.378865, 0.163487,
		0.378960, 0.611336, 0.694736,
		39.111275, 35.173004, 20.259682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720566, 35.421604, 19.539124>,  <38.846001, 34.745071, 19.773367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720566, 35.421604, 19.539124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985165, 35.510632, 19.825586>,  <39.143925, 35.564049, 19.997465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985165, 35.510632, 19.825586>,  <38.720566, 35.421604, 19.539124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985165, 35.510632, 19.825586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385968, 0.717726, -0.579567,
		-0.642999, 0.659797, 0.388871,
		0.661499, 0.222569, 0.716158,
		39.183613, 35.577404, 20.040434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619881, 36.154705, 19.815178>,  <38.720566, 35.421604, 19.539124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619881, 36.154705, 19.815178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998405, 36.055470, 19.898069>,  <39.225521, 35.995930, 19.947803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.998405, 36.055470, 19.898069>,  <38.619881, 36.154705, 19.815178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998405, 36.055470, 19.898069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316970, 0.837920, -0.444319,
		-0.063411, 0.486150, 0.871572,
		0.946313, -0.248088, 0.207228,
		39.282299, 35.981045, 19.960238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851738, 36.767960, 20.005690>,  <38.619881, 36.154705, 19.815178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851738, 36.767960, 20.005690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174332, 36.536907, 19.955215>,  <39.367889, 36.398277, 19.924931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174332, 36.536907, 19.955215>,  <38.851738, 36.767960, 20.005690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174332, 36.536907, 19.955215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428323, 0.717904, -0.548774,
		0.407576, 0.388532, 0.826393,
		0.806487, -0.577630, -0.126183,
		39.416279, 36.363617, 19.917360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403297, 37.248295, 20.183094>,  <38.851738, 36.767960, 20.005690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403297, 37.248295, 20.183094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540279, 36.937386, 19.971975>,  <39.622467, 36.750839, 19.845303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540279, 36.937386, 19.971975>,  <39.403297, 37.248295, 20.183094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540279, 36.937386, 19.971975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371615, 0.628014, -0.683740,
		0.862918, 0.038012, 0.503912,
		0.342454, -0.777273, -0.527799,
		39.643017, 36.704205, 19.813635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092495, 37.456215, 20.122507>,  <39.403297, 37.248295, 20.183094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092495, 37.456215, 20.122507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999233, 37.187656, 19.841122>,  <39.943275, 37.026520, 19.672291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999233, 37.187656, 19.841122>,  <40.092495, 37.456215, 20.122507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999233, 37.187656, 19.841122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511394, 0.530637, -0.675944,
		0.827113, -0.517346, 0.219629,
		-0.233154, -0.671399, -0.703465,
		39.929287, 36.986237, 19.630083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713196, 37.376457, 19.738974>,  <40.092495, 37.456215, 20.122507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713196, 37.376457, 19.738974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430058, 37.241508, 19.490734>,  <40.260174, 37.160542, 19.341791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430058, 37.241508, 19.490734>,  <40.713196, 37.376457, 19.738974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430058, 37.241508, 19.490734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401377, 0.530853, -0.746386,
		0.581254, -0.777417, -0.240347,
		-0.707842, -0.337370, -0.620597,
		40.217705, 37.140297, 19.304554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060589, 37.258659, 19.089399>,  <40.713196, 37.376457, 19.738974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060589, 37.258659, 19.089399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674805, 37.279118, 18.985712>,  <40.443333, 37.291393, 18.923500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674805, 37.279118, 18.985712>,  <41.060589, 37.258659, 19.089399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674805, 37.279118, 18.985712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255576, 0.429428, -0.866183,
		0.067013, -0.901652, -0.427240,
		-0.964464, 0.051147, -0.259218,
		40.385468, 37.294460, 18.907946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021301, 36.888187, 18.508923>,  <41.060589, 37.258659, 19.089399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021301, 36.888187, 18.508923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712917, 37.142090, 18.529741>,  <40.527885, 37.294430, 18.542233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.712917, 37.142090, 18.529741>,  <41.021301, 36.888187, 18.508923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712917, 37.142090, 18.529741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318736, 0.455299, -0.831331,
		-0.551387, -0.624334, -0.553336,
		-0.770961, 0.634752, 0.052048,
		40.481628, 37.332516, 18.545355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913223, 37.011009, 17.863091>,  <41.021301, 36.888187, 18.508923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913223, 37.011009, 17.863091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693565, 37.291576, 18.044838>,  <40.561771, 37.459915, 18.153887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693565, 37.291576, 18.044838>,  <40.913223, 37.011009, 17.863091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693565, 37.291576, 18.044838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028559, 0.527616, -0.849003,
		-0.835237, -0.479204, -0.269707,
		-0.549148, 0.701416, 0.454370,
		40.528820, 37.502003, 18.181149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234444, 37.077900, 17.444607>,  <40.913223, 37.011009, 17.863091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234444, 37.077900, 17.444607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357178, 37.390533, 17.661856>,  <40.430817, 37.578114, 17.792206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.357178, 37.390533, 17.661856>,  <40.234444, 37.077900, 17.444607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357178, 37.390533, 17.661856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108629, 0.538164, -0.835811,
		-0.945544, 0.315453, 0.080224,
		0.306833, 0.781581, 0.543125,
		40.449226, 37.625008, 17.824793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983570, 37.542301, 16.983839>,  <40.234444, 37.077900, 17.444607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983570, 37.542301, 16.983839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247707, 37.694996, 17.242519>,  <40.406189, 37.786613, 17.397728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247707, 37.694996, 17.242519>,  <39.983570, 37.542301, 16.983839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247707, 37.694996, 17.242519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403640, 0.545766, -0.734312,
		-0.633262, 0.745933, 0.206309,
		0.660344, 0.381737, 0.646701,
		40.445812, 37.809517, 17.436529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020157, 38.323662, 16.942137>,  <39.983570, 37.542301, 16.983839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020157, 38.323662, 16.942137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360287, 38.175278, 17.091444>,  <40.564365, 38.086246, 17.181028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360287, 38.175278, 17.091444>,  <40.020157, 38.323662, 16.942137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360287, 38.175278, 17.091444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520470, 0.487975, -0.700707,
		0.077792, 0.790105, 0.608015,
		0.850329, -0.370963, 0.373266,
		40.615387, 38.063988, 17.203424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448486, 38.866699, 16.975235>,  <40.020157, 38.323662, 16.942137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448486, 38.866699, 16.975235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702404, 38.558281, 16.955133>,  <40.854755, 38.373230, 16.943073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702404, 38.558281, 16.955133>,  <40.448486, 38.866699, 16.975235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702404, 38.558281, 16.955133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452766, 0.423887, -0.784425,
		0.626128, 0.475197, 0.618184,
		0.634796, -0.771044, -0.050255,
		40.892841, 38.326969, 16.940058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135841, 39.099819, 17.017933>,  <40.448486, 38.866699, 16.975235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135841, 39.099819, 17.017933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128544, 38.756992, 16.811981>,  <41.124165, 38.551296, 16.688410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128544, 38.756992, 16.811981>,  <41.135841, 39.099819, 17.017933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128544, 38.756992, 16.811981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489731, 0.441298, -0.751943,
		0.871683, -0.265874, 0.411681,
		-0.018248, -0.857069, -0.514879,
		41.123070, 38.499870, 16.657518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630894, 39.601086, 17.204639>,  <41.135841, 39.099819, 17.017933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630894, 39.601086, 17.204639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416939, 39.493244, 17.524940>,  <41.288567, 39.428539, 17.717121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416939, 39.493244, 17.524940>,  <41.630894, 39.601086, 17.204639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416939, 39.493244, 17.524940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041069, 0.938309, 0.343352,
		-0.843925, 0.216541, -0.490817,
		-0.534887, -0.269605, 0.800755,
		41.256474, 39.412361, 17.765167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085438, 40.144672, 17.255758>,  <41.630894, 39.601086, 17.204639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085438, 40.144672, 17.255758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177841, 39.947079, 17.591047>,  <41.233284, 39.828522, 17.792221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.177841, 39.947079, 17.591047>,  <41.085438, 40.144672, 17.255758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177841, 39.947079, 17.591047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058352, 0.867009, 0.494864,
		-0.971200, -0.065407, 0.229113,
		0.231011, -0.493981, 0.838223,
		41.247143, 39.798885, 17.842514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680820, 40.396675, 17.879984>,  <41.085438, 40.144672, 17.255758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680820, 40.396675, 17.879984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034725, 40.239784, 17.980671>,  <41.247066, 40.145649, 18.041082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034725, 40.239784, 17.980671>,  <40.680820, 40.396675, 17.879984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034725, 40.239784, 17.980671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204237, 0.811794, 0.547063,
		-0.418913, -0.432610, 0.798349,
		0.884759, -0.392225, 0.251716,
		41.300152, 40.122116, 18.056185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650520, 40.785004, 18.493082>,  <40.680820, 40.396675, 17.879984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650520, 40.785004, 18.493082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326103, 40.622276, 18.324936>,  <40.131454, 40.524639, 18.224049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326103, 40.622276, 18.324936>,  <40.650520, 40.785004, 18.493082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326103, 40.622276, 18.324936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140255, -0.562402, 0.814882,
		-0.567926, 0.719861, 0.399073,
		-0.811041, -0.406821, -0.420367,
		40.082790, 40.500229, 18.198826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938255, 41.009151, 18.839167>,  <40.650520, 40.785004, 18.493082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938255, 41.009151, 18.839167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894173, 40.643986, 18.681973>,  <39.867722, 40.424885, 18.587656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.894173, 40.643986, 18.681973>,  <39.938255, 41.009151, 18.839167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894173, 40.643986, 18.681973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222605, -0.362675, 0.904938,
		-0.968659, 0.187213, -0.163249,
		-0.110209, -0.912917, -0.392983,
		39.861111, 40.370110, 18.564077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226166, 40.822155, 18.836567>,  <39.938255, 41.009151, 18.839167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226166, 40.822155, 18.836567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473335, 40.508003, 18.851286>,  <39.621635, 40.319511, 18.860117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473335, 40.508003, 18.851286>,  <39.226166, 40.822155, 18.836567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473335, 40.508003, 18.851286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188047, -0.102185, 0.976830,
		-0.763421, -0.610523, -0.210831,
		0.617921, -0.785379, 0.036797,
		39.658710, 40.272388, 18.862326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769253, 40.296825, 19.169165>,  <39.226166, 40.822155, 18.836567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769253, 40.296825, 19.169165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147427, 40.175163, 19.215891>,  <39.374329, 40.102165, 19.243927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.147427, 40.175163, 19.215891>,  <38.769253, 40.296825, 19.169165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147427, 40.175163, 19.215891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193370, -0.235246, 0.952506,
		-0.262241, -0.923115, -0.281225,
		0.945430, -0.304166, 0.116812,
		39.431057, 40.083916, 19.250935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716423, 39.633175, 19.541986>,  <38.769253, 40.296825, 19.169165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716423, 39.633175, 19.541986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099369, 39.723526, 19.614014>,  <39.329136, 39.777737, 19.657230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099369, 39.723526, 19.614014>,  <38.716423, 39.633175, 19.541986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099369, 39.723526, 19.614014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069321, -0.425492, 0.902303,
		0.280431, -0.876319, -0.391694,
		0.957368, 0.225881, 0.180068,
		39.386578, 39.791290, 19.668034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957836, 39.076481, 19.835974>,  <38.716423, 39.633175, 19.541986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957836, 39.076481, 19.835974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219368, 39.353565, 19.957731>,  <39.376286, 39.519817, 20.030787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219368, 39.353565, 19.957731>,  <38.957836, 39.076481, 19.835974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219368, 39.353565, 19.957731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031674, -0.427000, 0.903697,
		0.755978, -0.581223, -0.301127,
		0.653830, 0.692713, 0.304393,
		39.415516, 39.561378, 20.049049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512222, 38.671719, 20.181229>,  <38.957836, 39.076481, 19.835974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512222, 38.671719, 20.181229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543030, 39.052029, 20.301289>,  <39.561516, 39.280216, 20.373325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543030, 39.052029, 20.301289>,  <39.512222, 38.671719, 20.181229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543030, 39.052029, 20.301289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043584, -0.303969, 0.951685,
		0.996077, -0.060216, -0.064850,
		0.077019, 0.950777, 0.300152,
		39.566135, 39.337261, 20.391335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107330, 38.666927, 20.642767>,  <39.512222, 38.671719, 20.181229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107330, 38.666927, 20.642767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915382, 39.004089, 20.740116>,  <39.800213, 39.206387, 20.798527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.915382, 39.004089, 20.740116>,  <40.107330, 38.666927, 20.642767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915382, 39.004089, 20.740116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066423, -0.241700, 0.968075,
		0.874820, 0.480719, 0.059997,
		-0.479873, 0.842906, 0.243375,
		39.771420, 39.256962, 20.813129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479511, 39.051399, 21.045961>,  <40.107330, 38.666927, 20.642767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479511, 39.051399, 21.045961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102745, 39.124874, 21.158421>,  <39.876686, 39.168961, 21.225897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102745, 39.124874, 21.158421>,  <40.479511, 39.051399, 21.045961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102745, 39.124874, 21.158421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253939, -0.158297, 0.954179,
		0.219776, 0.970155, 0.102458,
		-0.941920, 0.183688, 0.281150,
		39.820168, 39.179981, 21.242765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576008, 39.114861, 21.728804>,  <40.479511, 39.051399, 21.045961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576008, 39.114861, 21.728804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178143, 39.155663, 21.734909>,  <39.939423, 39.180145, 21.738573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178143, 39.155663, 21.734909>,  <40.576008, 39.114861, 21.728804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178143, 39.155663, 21.734909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013994, -0.013143, 0.999816,
		0.102190, 0.994697, 0.011646,
		-0.994667, 0.102008, 0.015263,
		39.879742, 39.186264, 21.739489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372280, 39.670113, 22.226889>,  <40.576008, 39.114861, 21.728804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372280, 39.670113, 22.226889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035000, 39.459827, 22.181929>,  <39.832630, 39.333656, 22.154953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035000, 39.459827, 22.181929>,  <40.372280, 39.670113, 22.226889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035000, 39.459827, 22.181929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121320, -0.017608, 0.992457,
		-0.523731, 0.850477, -0.048933,
		-0.843201, -0.525717, -0.112402,
		39.782040, 39.302113, 22.148209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822170, 40.034958, 22.691744>,  <40.372280, 39.670113, 22.226889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822170, 40.034958, 22.691744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721573, 39.653030, 22.628399>,  <39.661217, 39.423874, 22.590393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721573, 39.653030, 22.628399>,  <39.822170, 40.034958, 22.691744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721573, 39.653030, 22.628399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271463, -0.087465, 0.958466,
		-0.929010, 0.284035, -0.237200,
		-0.251492, -0.954816, -0.158361,
		39.646126, 39.366585, 22.580891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521820, 39.846840, 23.375265>,  <39.822170, 40.034958, 22.691744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521820, 39.846840, 23.375265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530346, 39.485817, 23.203251>,  <39.535461, 39.269203, 23.100042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530346, 39.485817, 23.203251>,  <39.521820, 39.846840, 23.375265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530346, 39.485817, 23.203251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234027, -0.422688, 0.875537,
		-0.971996, 0.081982, -0.220231,
		0.021311, -0.902559, -0.430038,
		39.536739, 39.215050, 23.074240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865986, 39.431763, 23.567085>,  <39.521820, 39.846840, 23.375265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865986, 39.431763, 23.567085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139156, 39.166607, 23.444321>,  <39.303059, 39.007515, 23.370663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139156, 39.166607, 23.444321>,  <38.865986, 39.431763, 23.567085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139156, 39.166607, 23.444321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248449, -0.605875, 0.755770,
		-0.686940, -0.439883, -0.578461,
		0.682925, -0.662887, -0.306911,
		39.344032, 38.967739, 23.352247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488552, 38.748501, 23.489773>,  <38.865986, 39.431763, 23.567085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488552, 38.748501, 23.489773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881516, 38.690487, 23.536821>,  <39.117294, 38.655678, 23.565050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881516, 38.690487, 23.536821>,  <38.488552, 38.748501, 23.489773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881516, 38.690487, 23.536821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177997, -0.536937, 0.824631,
		-0.056442, -0.831063, -0.553307,
		0.982411, -0.145031, 0.117621,
		39.176239, 38.646976, 23.572107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541775, 38.082008, 23.672466>,  <38.488552, 38.748501, 23.489773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541775, 38.082008, 23.672466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902512, 38.203602, 23.795288>,  <39.118954, 38.276558, 23.868982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.902512, 38.203602, 23.795288>,  <38.541775, 38.082008, 23.672466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902512, 38.203602, 23.795288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088785, -0.565111, 0.820224,
		0.422855, -0.766970, -0.482649,
		0.901837, 0.303984, 0.307056,
		39.173061, 38.294796, 23.887405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851364, 37.521240, 23.961994>,  <38.541775, 38.082008, 23.672466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851364, 37.521240, 23.961994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063946, 37.824703, 24.112728>,  <39.191494, 38.006779, 24.203169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063946, 37.824703, 24.112728>,  <38.851364, 37.521240, 23.961994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063946, 37.824703, 24.112728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180937, -0.332926, 0.925431,
		0.827540, -0.560004, -0.039665,
		0.531451, 0.758654, 0.376835,
		39.223381, 38.052299, 24.225779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406815, 37.154079, 24.319979>,  <38.851364, 37.521240, 23.961994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406815, 37.154079, 24.319979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325012, 37.506912, 24.489737>,  <39.275932, 37.718613, 24.591591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325012, 37.506912, 24.489737>,  <39.406815, 37.154079, 24.319979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325012, 37.506912, 24.489737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194707, -0.461552, 0.865482,
		0.959306, 0.094361, 0.266135,
		-0.204503, 0.882080, 0.424397,
		39.263660, 37.771538, 24.617056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413631, 36.950035, 24.915636>,  <39.406815, 37.154079, 24.319979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413631, 36.950035, 24.915636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272106, 37.319202, 24.976343>,  <39.187191, 37.540703, 25.012768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272106, 37.319202, 24.976343>,  <39.413631, 36.950035, 24.915636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272106, 37.319202, 24.976343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604528, -0.349466, 0.715835,
		0.713697, 0.161521, 0.681577,
		-0.353810, 0.922922, 0.151768,
		39.165962, 37.596081, 25.021873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403961, 37.044266, 25.610813>,  <39.413631, 36.950035, 24.915636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403961, 37.044266, 25.610813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127041, 37.298130, 25.473452>,  <38.960888, 37.450447, 25.391035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127041, 37.298130, 25.473452>,  <39.403961, 37.044266, 25.610813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127041, 37.298130, 25.473452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661623, -0.368313, 0.653147,
		0.288045, 0.679380, 0.674888,
		-0.692305, 0.634656, -0.343403,
		38.919350, 37.488525, 25.370430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113773, 37.372166, 26.206495>,  <39.403961, 37.044266, 25.610813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113773, 37.372166, 26.206495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836643, 37.454800, 25.930143>,  <38.670364, 37.504379, 25.764332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.836643, 37.454800, 25.930143>,  <39.113773, 37.372166, 26.206495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836643, 37.454800, 25.930143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711921, -0.348394, 0.609746,
		-0.114732, 0.914299, 0.388450,
		-0.692824, 0.206589, -0.690881,
		38.628796, 37.516777, 25.722879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615677, 37.641117, 26.618973>,  <39.113773, 37.372166, 26.206495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615677, 37.641117, 26.618973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414303, 37.590122, 26.277143>,  <38.293476, 37.559525, 26.072046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414303, 37.590122, 26.277143>,  <38.615677, 37.641117, 26.618973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414303, 37.590122, 26.277143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854006, -0.076803, 0.514563,
		-0.131235, 0.988862, -0.070211,
		-0.503439, -0.127489, -0.854573,
		38.263271, 37.551876, 26.020771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032246, 38.097588, 26.568563>,  <38.615677, 37.641117, 26.618973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032246, 38.097588, 26.568563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931263, 37.800663, 26.320292>,  <37.870674, 37.622509, 26.171329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931263, 37.800663, 26.320292>,  <38.032246, 38.097588, 26.568563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931263, 37.800663, 26.320292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807806, -0.191420, 0.557502,
		-0.532650, 0.642132, -0.551317,
		-0.252457, -0.742310, -0.620678,
		37.855526, 37.577969, 26.134089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370373, 38.233570, 26.339621>,  <38.032246, 38.097588, 26.568563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370373, 38.233570, 26.339621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441040, 37.841320, 26.305788>,  <37.483440, 37.605968, 26.285488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441040, 37.841320, 26.305788>,  <37.370373, 38.233570, 26.339621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441040, 37.841320, 26.305788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743383, -0.189259, 0.641531,
		-0.645113, -0.050460, -0.762420,
		0.176667, -0.980630, -0.084583,
		37.494041, 37.547131, 26.280413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738525, 37.970665, 26.343878>,  <37.370373, 38.233570, 26.339621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738525, 37.970665, 26.343878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945366, 37.631031, 26.387079>,  <37.069469, 37.427250, 26.413000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945366, 37.631031, 26.387079>,  <36.738525, 37.970665, 26.343878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945366, 37.631031, 26.387079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668340, -0.321710, 0.670689,
		-0.534727, -0.418994, -0.733833,
		0.517096, -0.849086, 0.108003,
		37.100494, 37.376305, 26.419481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305946, 37.337772, 26.108639>,  <36.738525, 37.970665, 26.343878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305946, 37.337772, 26.108639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581623, 37.196148, 26.361511>,  <36.747028, 37.111172, 26.513235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581623, 37.196148, 26.361511>,  <36.305946, 37.337772, 26.108639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581623, 37.196148, 26.361511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702613, -0.539761, 0.463673,
		0.177058, -0.763739, -0.620768,
		0.689192, -0.354062, 0.632182,
		36.788380, 37.089928, 26.551167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188423, 36.654640, 26.180016>,  <36.305946, 37.337772, 26.108639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188423, 36.654640, 26.180016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386864, 36.728161, 26.519451>,  <36.505928, 36.772274, 26.723112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.386864, 36.728161, 26.519451>,  <36.188423, 36.654640, 26.180016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386864, 36.728161, 26.519451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750700, -0.400278, 0.525573,
		0.436271, -0.897772, -0.060600,
		0.496102, 0.183799, 0.848588,
		36.535694, 36.783302, 26.774027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080799, 36.110401, 26.652122>,  <36.188423, 36.654640, 26.180016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080799, 36.110401, 26.652122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206871, 36.398140, 26.899738>,  <36.282513, 36.570782, 27.048307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206871, 36.398140, 26.899738>,  <36.080799, 36.110401, 26.652122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206871, 36.398140, 26.899738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505545, -0.424774, 0.750993,
		0.803173, -0.549648, 0.229782,
		0.315177, 0.719343, 0.619039,
		36.301426, 36.613941, 27.085449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248730, 35.713589, 27.251881>,  <36.080799, 36.110401, 26.652122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248730, 35.713589, 27.251881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221817, 36.093388, 27.374474>,  <36.205669, 36.321266, 27.448029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221817, 36.093388, 27.374474>,  <36.248730, 35.713589, 27.251881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221817, 36.093388, 27.374474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596393, -0.284530, 0.750572,
		0.799868, -0.132285, 0.585416,
		-0.067279, 0.949496, 0.306480,
		36.201633, 36.378235, 27.466417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206886, 35.663418, 27.929857>,  <36.248730, 35.713589, 27.251881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206886, 35.663418, 27.929857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090504, 36.044136, 27.891001>,  <36.020676, 36.272568, 27.867687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090504, 36.044136, 27.891001>,  <36.206886, 35.663418, 27.929857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090504, 36.044136, 27.891001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688740, -0.137899, 0.711774,
		0.664065, 0.273999, 0.695660,
		-0.290956, 0.951793, -0.097140,
		36.003216, 36.329674, 27.861858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188454, 36.027302, 28.557493>,  <36.206886, 35.663418, 27.929857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188454, 36.027302, 28.557493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919067, 36.226864, 28.339308>,  <35.757435, 36.346600, 28.208397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919067, 36.226864, 28.339308>,  <36.188454, 36.027302, 28.557493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919067, 36.226864, 28.339308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612490, 0.036529, 0.789634,
		0.413879, 0.865885, 0.280974,
		-0.673469, 0.498907, -0.545465,
		35.717026, 36.376537, 28.175669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871876, 36.493519, 29.010937>,  <36.188454, 36.027302, 28.557493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871876, 36.493519, 29.010937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600891, 36.461128, 28.718502>,  <35.438301, 36.441692, 28.543041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600891, 36.461128, 28.718502>,  <35.871876, 36.493519, 29.010937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600891, 36.461128, 28.718502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729336, -0.055074, 0.681936,
		-0.095484, 0.995193, -0.021748,
		-0.677460, -0.080975, -0.731089,
		35.397652, 36.436836, 28.499176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367111, 36.792755, 29.336519>,  <35.871876, 36.493519, 29.010937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367111, 36.792755, 29.336519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201946, 36.601994, 29.026148>,  <35.102848, 36.487537, 28.839924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201946, 36.601994, 29.026148>,  <35.367111, 36.792755, 29.336519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201946, 36.601994, 29.026148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764391, -0.281746, 0.579936,
		-0.495189, 0.832576, -0.248205,
		-0.412910, -0.476903, -0.775931,
		35.078072, 36.458923, 28.793369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785164, 37.122566, 29.316729>,  <35.367111, 36.792755, 29.336519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785164, 37.122566, 29.316729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739944, 36.755768, 29.163708>,  <34.712811, 36.535690, 29.071896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739944, 36.755768, 29.163708>,  <34.785164, 37.122566, 29.316729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739944, 36.755768, 29.163708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616705, -0.237118, 0.750633,
		-0.779034, 0.320783, -0.538707,
		-0.113053, -0.916991, -0.382552,
		34.706028, 36.480671, 29.048943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164322, 36.953194, 29.552217>,  <34.785164, 37.122566, 29.316729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164322, 36.953194, 29.552217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304050, 36.593033, 29.448486>,  <34.387886, 36.376938, 29.386248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304050, 36.593033, 29.448486>,  <34.164322, 36.953194, 29.552217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304050, 36.593033, 29.448486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585203, -0.425792, 0.690101,
		-0.731789, -0.089306, -0.675655,
		0.349319, -0.900403, -0.259327,
		34.408848, 36.322910, 29.370687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592422, 36.523575, 29.537188>,  <34.164322, 36.953194, 29.552217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592422, 36.523575, 29.537188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900074, 36.270870, 29.575813>,  <34.084663, 36.119247, 29.598989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900074, 36.270870, 29.575813>,  <33.592422, 36.523575, 29.537188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900074, 36.270870, 29.575813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548311, -0.574667, 0.607547,
		-0.328332, -0.520227, -0.788392,
		0.769125, -0.631761, 0.096565,
		34.130810, 36.081341, 29.604782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308296, 35.971581, 29.645205>,  <33.592422, 36.523575, 29.537188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308296, 35.971581, 29.645205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675831, 35.853374, 29.749830>,  <33.896351, 35.782452, 29.812605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675831, 35.853374, 29.749830>,  <33.308296, 35.971581, 29.645205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675831, 35.853374, 29.749830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390658, -0.587074, 0.709035,
		-0.055973, -0.753667, -0.654869,
		0.918833, -0.295517, 0.261565,
		33.951481, 35.764721, 29.828300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237530, 35.256397, 29.594978>,  <33.308296, 35.971581, 29.645205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237530, 35.256397, 29.594978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564056, 35.323128, 29.816175>,  <33.759972, 35.363167, 29.948893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564056, 35.323128, 29.816175>,  <33.237530, 35.256397, 29.594978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564056, 35.323128, 29.816175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268324, -0.738280, 0.618825,
		0.511502, -0.653536, -0.557904,
		0.816314, 0.166831, 0.552991,
		33.808952, 35.373177, 29.982073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570309, 34.586433, 29.816145>,  <33.237530, 35.256397, 29.594978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570309, 34.586433, 29.816145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715553, 34.858418, 30.070955>,  <33.802700, 35.021610, 30.223841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715553, 34.858418, 30.070955>,  <33.570309, 34.586433, 29.816145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715553, 34.858418, 30.070955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140700, -0.635834, 0.758893,
		0.921062, -0.365190, -0.135206,
		0.363108, 0.679964, 0.637025,
		33.824486, 35.062408, 30.262062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104427, 34.382065, 30.142660>,  <33.570309, 34.586433, 29.816145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104427, 34.382065, 30.142660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984005, 34.649586, 30.414562>,  <33.911751, 34.810101, 30.577703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984005, 34.649586, 30.414562>,  <34.104427, 34.382065, 30.142660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984005, 34.649586, 30.414562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032475, -0.719601, 0.693628,
		0.953055, 0.186743, 0.238357,
		-0.301052, 0.668806, 0.679754,
		33.893688, 34.850227, 30.618488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418510, 34.186474, 30.801527>,  <34.104427, 34.382065, 30.142660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.418510, 34.186474, 30.801527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137627, 34.444752, 30.921511>,  <33.969097, 34.599720, 30.993502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137627, 34.444752, 30.921511>,  <34.418510, 34.186474, 30.801527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137627, 34.444752, 30.921511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209716, -0.590207, 0.779535,
		0.680382, 0.484491, 0.549863,
		-0.702210, 0.645697, 0.299961,
		33.926964, 34.638462, 31.011499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492767, 34.330494, 31.542856>,  <34.418510, 34.186474, 30.801527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492767, 34.330494, 31.542856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111477, 34.434196, 31.480705>,  <33.882702, 34.496418, 31.443415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111477, 34.434196, 31.480705>,  <34.492767, 34.330494, 31.542856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111477, 34.434196, 31.480705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282728, -0.583046, 0.761658,
		0.106874, 0.769963, 0.629075,
		-0.953228, 0.259259, -0.155377,
		33.825508, 34.511974, 31.434092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155727, 34.611019, 31.351912>,  <34.492767, 34.330494, 31.542856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155727, 34.611019, 31.351912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381058, 34.319786, 31.508148>,  <35.516254, 34.145046, 31.601891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381058, 34.319786, 31.508148>,  <35.155727, 34.611019, 31.351912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381058, 34.319786, 31.508148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825776, 0.511880, -0.236797,
		-0.027528, 0.455933, 0.889588,
		0.563326, -0.728082, 0.390589,
		35.550056, 34.101360, 31.625324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743301, 34.927330, 31.761553>,  <35.155727, 34.611019, 31.351912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743301, 34.927330, 31.761553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888622, 34.555553, 31.735802>,  <35.975815, 34.332489, 31.720350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888622, 34.555553, 31.735802>,  <35.743301, 34.927330, 31.761553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888622, 34.555553, 31.735802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874366, 0.364005, -0.320912,
		0.321704, 0.060298, 0.944918,
		0.363306, -0.929443, -0.064380,
		35.997616, 34.276722, 31.716488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260979, 34.943195, 32.212883>,  <35.743301, 34.927330, 31.761553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260979, 34.943195, 32.212883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344727, 34.629215, 31.979639>,  <36.394974, 34.440826, 31.839691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344727, 34.629215, 31.979639>,  <36.260979, 34.943195, 32.212883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344727, 34.629215, 31.979639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941256, 0.323365, -0.097329,
		0.264956, -0.528480, 0.806540,
		0.209371, -0.784948, -0.583112,
		36.407539, 34.393730, 31.804705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951962, 34.841274, 32.254436>,  <36.260979, 34.943195, 32.212883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951962, 34.841274, 32.254436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882587, 34.587257, 31.953333>,  <36.840965, 34.434849, 31.772671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882587, 34.587257, 31.953333>,  <36.951962, 34.841274, 32.254436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882587, 34.587257, 31.953333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895658, 0.216136, -0.388692,
		0.409534, -0.741625, 0.531295,
		-0.173431, -0.635041, -0.752758,
		36.830559, 34.396744, 31.727505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594414, 34.415802, 32.209049>,  <36.951962, 34.841274, 32.254436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594414, 34.415802, 32.209049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417408, 34.433144, 31.850765>,  <37.311203, 34.443546, 31.635794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417408, 34.433144, 31.850765>,  <37.594414, 34.415802, 32.209049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417408, 34.433144, 31.850765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822156, 0.418478, -0.385921,
		0.358107, -0.907192, -0.220823,
		-0.442514, 0.043350, -0.895713,
		37.284653, 34.446148, 31.582050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093555, 34.077747, 31.705761>,  <37.594414, 34.415802, 32.209049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093555, 34.077747, 31.705761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843193, 34.291004, 31.478079>,  <37.692974, 34.418961, 31.341469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843193, 34.291004, 31.478079>,  <38.093555, 34.077747, 31.705761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843193, 34.291004, 31.478079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774984, 0.343392, -0.530548,
		-0.087397, -0.773200, -0.628111,
		-0.625908, 0.533144, -0.569207,
		37.655422, 34.450947, 31.307318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119343, 33.866894, 30.941999>,  <38.093555, 34.077747, 31.705761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119343, 33.866894, 30.941999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973614, 34.239021, 30.958853>,  <37.886177, 34.462299, 30.968966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973614, 34.239021, 30.958853>,  <38.119343, 33.866894, 30.941999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973614, 34.239021, 30.958853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749291, 0.319698, -0.579962,
		-0.553019, -0.179725, -0.813554,
		-0.364325, 0.930318, 0.042133,
		37.864315, 34.518116, 30.971493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330528, 34.114349, 30.327477>,  <38.119343, 33.866894, 30.941999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330528, 34.114349, 30.327477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226788, 34.471226, 30.475388>,  <38.164543, 34.685352, 30.564135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.226788, 34.471226, 30.475388>,  <38.330528, 34.114349, 30.327477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226788, 34.471226, 30.475388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782181, 0.418631, -0.461455,
		-0.566505, 0.169555, -0.806426,
		-0.259353, 0.892188, 0.369779,
		38.148983, 34.738884, 30.586321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246269, 34.584137, 29.731441>,  <38.330528, 34.114349, 30.327477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246269, 34.584137, 29.731441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290901, 34.828262, 30.045145>,  <38.317680, 34.974739, 30.233368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290901, 34.828262, 30.045145>,  <38.246269, 34.584137, 29.731441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290901, 34.828262, 30.045145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481784, 0.657017, -0.579838,
		-0.869157, 0.442541, -0.220732,
		0.111578, 0.610316, 0.784261,
		38.324375, 35.011356, 30.280424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088856, 35.229919, 29.546829>,  <38.246269, 34.584137, 29.731441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088856, 35.229919, 29.546829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325897, 35.259991, 29.867620>,  <38.468121, 35.278034, 30.060095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325897, 35.259991, 29.867620>,  <38.088856, 35.229919, 29.546829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325897, 35.259991, 29.867620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562230, 0.674371, -0.478666,
		-0.576818, 0.734555, 0.357365,
		0.592603, 0.075182, 0.801978,
		38.503677, 35.282547, 30.108213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047318, 35.893139, 29.764425>,  <38.088856, 35.229919, 29.546829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047318, 35.893139, 29.764425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392967, 35.737835, 29.892519>,  <38.600357, 35.644653, 29.969376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392967, 35.737835, 29.892519>,  <38.047318, 35.893139, 29.764425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392967, 35.737835, 29.892519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499143, 0.742588, -0.446564,
		-0.064420, 0.545728, 0.835482,
		0.864122, -0.388257, 0.320234,
		38.652203, 35.621357, 29.988588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414257, 36.385437, 30.224489>,  <38.047318, 35.893139, 29.764425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414257, 36.385437, 30.224489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720085, 36.150669, 30.117937>,  <38.903584, 36.009808, 30.054007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720085, 36.150669, 30.117937>,  <38.414257, 36.385437, 30.224489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720085, 36.150669, 30.117937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512180, 0.804143, -0.301704,
		0.391282, 0.094240, 0.915433,
		0.764572, -0.586918, -0.266379,
		38.949455, 35.974594, 30.038023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998680, 36.801563, 30.375423>,  <38.414257, 36.385437, 30.224489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998680, 36.801563, 30.375423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127033, 36.512020, 30.131109>,  <39.204044, 36.338295, 29.984520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127033, 36.512020, 30.131109>,  <38.998680, 36.801563, 30.375423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127033, 36.512020, 30.131109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557744, 0.665630, -0.495840,
		0.765478, -0.181557, 0.617317,
		0.320882, -0.723860, -0.610788,
		39.223297, 36.294861, 29.947872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763275, 36.773201, 30.381193>,  <38.998680, 36.801563, 30.375423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763275, 36.773201, 30.381193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629955, 36.616249, 30.038275>,  <39.549965, 36.522079, 29.832523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629955, 36.616249, 30.038275>,  <39.763275, 36.773201, 30.381193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629955, 36.616249, 30.038275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671959, 0.538965, -0.507924,
		0.661348, -0.745358, 0.084023,
		-0.333300, -0.392375, -0.857294,
		39.529964, 36.498535, 29.781086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288799, 36.724041, 29.979763>,  <39.763275, 36.773201, 30.381193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288799, 36.724041, 29.979763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018105, 36.676762, 29.689095>,  <39.855686, 36.648396, 29.514692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018105, 36.676762, 29.689095>,  <40.288799, 36.724041, 29.979763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018105, 36.676762, 29.689095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639243, 0.395310, -0.659620,
		0.365229, -0.910911, -0.191962,
		-0.676739, -0.118201, -0.726672,
		39.815083, 36.641300, 29.471092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656334, 36.689629, 29.453604>,  <40.288799, 36.724041, 29.979763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656334, 36.689629, 29.453604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314560, 36.751400, 29.255175>,  <40.109493, 36.788464, 29.136116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314560, 36.751400, 29.255175>,  <40.656334, 36.689629, 29.453604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314560, 36.751400, 29.255175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492392, 0.545368, -0.678324,
		0.165792, -0.823848, -0.542021,
		-0.854437, 0.154427, -0.496074,
		40.058228, 36.797729, 29.106352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930481, 36.979256, 28.938644>,  <40.656334, 36.689629, 29.453604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930481, 36.979256, 28.938644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540787, 36.991947, 28.849333>,  <40.306969, 36.999561, 28.795746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540787, 36.991947, 28.849333>,  <40.930481, 36.979256, 28.938644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540787, 36.991947, 28.849333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215793, 0.418819, -0.882057,
		0.065528, -0.907515, -0.414876,
		-0.974238, 0.031727, -0.223280,
		40.248516, 37.001465, 28.782349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723000, 36.594646, 28.275854>,  <40.930481, 36.979256, 28.938644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723000, 36.594646, 28.275854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460567, 36.895855, 28.295893>,  <40.303108, 37.076580, 28.307917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.460567, 36.895855, 28.295893>,  <40.723000, 36.594646, 28.275854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460567, 36.895855, 28.295893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275639, 0.300892, -0.912955,
		-0.702551, -0.585166, -0.404973,
		-0.656083, 0.753024, 0.050098,
		40.263744, 37.121761, 28.310923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352909, 36.602554, 27.577627>,  <40.723000, 36.594646, 28.275854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352909, 36.602554, 27.577627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341278, 36.968983, 27.737608>,  <40.334301, 37.188839, 27.833595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341278, 36.968983, 27.737608>,  <40.352909, 36.602554, 27.577627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341278, 36.968983, 27.737608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254721, 0.393700, -0.883243,
		-0.966577, 0.076195, -0.244790,
		-0.029075, 0.916076, 0.399950,
		40.332554, 37.243805, 27.857594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962955, 36.998959, 27.178020>,  <40.352909, 36.602554, 27.577627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962955, 36.998959, 27.178020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164394, 37.277275, 27.382866>,  <40.285259, 37.444267, 27.505774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164394, 37.277275, 27.382866>,  <39.962955, 36.998959, 27.178020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164394, 37.277275, 27.382866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272183, 0.434802, -0.858408,
		-0.819942, 0.571681, 0.029582,
		0.503598, 0.695793, 0.512115,
		40.315475, 37.486012, 27.536501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718922, 37.579491, 26.897827>,  <39.962955, 36.998959, 27.178020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718922, 37.579491, 26.897827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065948, 37.671227, 27.074341>,  <40.274166, 37.726269, 27.180248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065948, 37.671227, 27.074341>,  <39.718922, 37.579491, 26.897827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065948, 37.671227, 27.074341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211511, 0.632917, -0.744768,
		-0.450101, 0.739472, 0.500590,
		0.867567, 0.229341, 0.441283,
		40.326218, 37.740028, 27.206726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881359, 38.364391, 26.840157>,  <39.718922, 37.579491, 26.897827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881359, 38.364391, 26.840157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234848, 38.188480, 26.904196>,  <40.446941, 38.082935, 26.942619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234848, 38.188480, 26.904196>,  <39.881359, 38.364391, 26.840157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234848, 38.188480, 26.904196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413978, 0.574974, -0.705710,
		0.218304, 0.689928, 0.690176,
		0.883722, -0.439777, 0.160096,
		40.499966, 38.056549, 26.952225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385715, 38.925915, 26.863287>,  <39.881359, 38.364391, 26.840157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385715, 38.925915, 26.863287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613125, 38.601250, 26.809641>,  <40.749569, 38.406452, 26.777454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.613125, 38.601250, 26.809641>,  <40.385715, 38.925915, 26.863287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613125, 38.601250, 26.809641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543010, 0.492706, -0.679986,
		0.617997, 0.313763, 0.720856,
		0.568524, -0.811661, -0.134114,
		40.783684, 38.357750, 26.769407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134075, 39.135822, 26.784075>,  <40.385715, 38.925915, 26.863287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134075, 39.135822, 26.784075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093315, 38.780937, 26.604088>,  <41.068859, 38.568005, 26.496096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093315, 38.780937, 26.604088>,  <41.134075, 39.135822, 26.784075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093315, 38.780937, 26.604088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456889, 0.360054, -0.813396,
		0.883668, -0.288472, 0.368667,
		-0.101902, -0.887212, -0.449967,
		41.062744, 38.514774, 26.469097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769409, 39.064644, 26.519304>,  <41.134075, 39.135822, 26.784075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769409, 39.064644, 26.519304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531338, 38.824409, 26.305740>,  <41.388496, 38.680267, 26.177603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.531338, 38.824409, 26.305740>,  <41.769409, 39.064644, 26.519304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.531338, 38.824409, 26.305740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452584, 0.298487, -0.840282,
		0.664026, -0.741757, 0.094162,
		-0.595179, -0.600585, -0.533910,
		41.352783, 38.644234, 26.145567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255169, 38.695858, 26.079859>,  <41.769409, 39.064644, 26.519304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255169, 38.695858, 26.079859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919605, 38.617321, 25.876810>,  <41.718266, 38.570198, 25.754980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919605, 38.617321, 25.876810>,  <42.255169, 38.695858, 26.079859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919605, 38.617321, 25.876810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484554, 0.155318, -0.860862,
		0.247867, -0.968156, -0.035160,
		-0.838910, -0.196343, -0.507622,
		41.667931, 38.558418, 25.724524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376942, 38.285179, 25.509197>,  <42.255169, 38.695858, 26.079859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376942, 38.285179, 25.509197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036144, 38.463421, 25.399250>,  <41.831665, 38.570366, 25.333281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036144, 38.463421, 25.399250>,  <42.376942, 38.285179, 25.509197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036144, 38.463421, 25.399250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405859, 0.230461, -0.884401,
		-0.330743, -0.865059, -0.377202,
		-0.851990, 0.445601, -0.274869,
		41.780548, 38.597099, 25.316790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261707, 37.949501, 24.847895>,  <42.376942, 38.285179, 25.509197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261707, 37.949501, 24.847895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031563, 38.276638, 24.843866>,  <41.893475, 38.472919, 24.841450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031563, 38.276638, 24.843866>,  <42.261707, 37.949501, 24.847895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031563, 38.276638, 24.843866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379639, 0.256133, -0.888971,
		-0.724455, -0.515303, -0.457852,
		-0.575360, 0.817838, -0.010072,
		41.858955, 38.521988, 24.840845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877815, 37.959110, 24.191557>,  <42.261707, 37.949501, 24.847895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877815, 37.959110, 24.191557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888069, 38.334637, 24.328939>,  <41.894222, 38.559952, 24.411369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888069, 38.334637, 24.328939>,  <41.877815, 37.959110, 24.191557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888069, 38.334637, 24.328939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304427, 0.319919, -0.897205,
		-0.952191, 0.127561, -0.277599,
		0.025639, 0.938818, 0.343457,
		41.895760, 38.616283, 24.431976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588139, 38.198593, 23.544201>,  <41.877815, 37.959110, 24.191557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588139, 38.198593, 23.544201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741028, 38.497761, 23.761282>,  <41.832760, 38.677261, 23.891531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741028, 38.497761, 23.761282>,  <41.588139, 38.198593, 23.544201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741028, 38.497761, 23.761282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432284, 0.374350, -0.820361,
		-0.816725, 0.548158, -0.180230,
		0.382219, 0.747920, 0.542701,
		41.855694, 38.722137, 23.924091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437439, 38.769985, 23.126804>,  <41.588139, 38.198593, 23.544201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437439, 38.769985, 23.126804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726711, 38.884029, 23.378431>,  <41.900276, 38.952454, 23.529408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726711, 38.884029, 23.378431>,  <41.437439, 38.769985, 23.126804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726711, 38.884029, 23.378431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472216, 0.460555, -0.751599,
		-0.504007, 0.840596, 0.198432,
		0.723180, 0.285108, 0.629066,
		41.943665, 38.969563, 23.567152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471554, 39.525299, 23.058006>,  <41.437439, 38.769985, 23.126804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471554, 39.525299, 23.058006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820198, 39.379620, 23.189253>,  <42.029385, 39.292210, 23.268000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820198, 39.379620, 23.189253>,  <41.471554, 39.525299, 23.058006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820198, 39.379620, 23.189253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451948, 0.337794, -0.825614,
		0.189855, 0.867901, 0.459024,
		0.871607, -0.364201, 0.328115,
		42.081680, 39.270359, 23.287687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861069, 40.105324, 23.025747>,  <41.471554, 39.525299, 23.058006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861069, 40.105324, 23.025747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112049, 39.794373, 23.043554>,  <42.262638, 39.607800, 23.054239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112049, 39.794373, 23.043554>,  <41.861069, 40.105324, 23.025747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112049, 39.794373, 23.043554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484413, 0.344949, -0.803961,
		0.609628, 0.526013, 0.593013,
		0.627454, -0.777380, 0.044517,
		42.300285, 39.561157, 23.056910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526833, 40.406288, 23.079556>,  <41.861069, 40.105324, 23.025747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526833, 40.406288, 23.079556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593899, 40.027931, 22.968430>,  <42.634140, 39.800919, 22.901754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593899, 40.027931, 22.968430>,  <42.526833, 40.406288, 23.079556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593899, 40.027931, 22.968430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619645, 0.320292, -0.716556,
		0.766765, -0.052004, 0.639818,
		0.167665, -0.945890, -0.277813,
		42.644199, 39.744164, 22.885086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210060, 40.417786, 23.002443>,  <42.526833, 40.406288, 23.079556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210060, 40.417786, 23.002443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067268, 40.110165, 22.790361>,  <42.981594, 39.925591, 22.663113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.067268, 40.110165, 22.790361>,  <43.210060, 40.417786, 23.002443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067268, 40.110165, 22.790361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607413, 0.240106, -0.757231,
		0.709658, -0.592371, 0.381422,
		-0.356980, -0.769056, -0.530207,
		42.960175, 39.879448, 22.631300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829845, 40.138199, 22.715490>,  <43.210060, 40.417786, 23.002443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829845, 40.138199, 22.715490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526501, 39.998436, 22.495378>,  <43.344494, 39.914577, 22.363312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.526501, 39.998436, 22.495378>,  <43.829845, 40.138199, 22.715490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526501, 39.998436, 22.495378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447351, 0.335024, -0.829238,
		0.474095, -0.875029, -0.097763,
		-0.758361, -0.349404, -0.550279,
		43.298992, 39.893616, 22.330296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093918, 39.775806, 22.146183>,  <43.829845, 40.138199, 22.715490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093918, 39.775806, 22.146183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720181, 39.860229, 22.031317>,  <43.495937, 39.910885, 21.962397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720181, 39.860229, 22.031317>,  <44.093918, 39.775806, 22.146183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720181, 39.860229, 22.031317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350348, 0.396321, -0.848637,
		-0.065301, -0.893524, -0.444242,
		-0.934340, 0.211057, -0.287164,
		43.439877, 39.923546, 21.945168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195591, 39.561218, 21.550968>,  <44.093918, 39.775806, 22.146183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195591, 39.561218, 21.550968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874252, 39.799202, 21.540716>,  <43.681450, 39.941994, 21.534565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874252, 39.799202, 21.540716>,  <44.195591, 39.561218, 21.550968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874252, 39.799202, 21.540716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315603, 0.388853, -0.865557,
		-0.505005, -0.703431, -0.500155,
		-0.803346, 0.594961, -0.025632,
		43.633247, 39.977692, 21.533026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.390327, 38.831600, 21.371397>,  <44.195591, 39.561218, 21.550968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.390327, 38.831600, 21.371397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603573, 38.495552, 21.331409>,  <44.731522, 38.293922, 21.307417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603573, 38.495552, 21.331409>,  <44.390327, 38.831600, 21.371397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603573, 38.495552, 21.331409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835304, -0.541425, 0.095528,
		-0.134380, 0.032576, -0.990394,
		0.533113, -0.840117, -0.099967,
		44.763508, 38.243515, 21.301418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928226, 38.369156, 20.992208>,  <44.390327, 38.831600, 21.371397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928226, 38.369156, 20.992208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.218281, 38.153992, 21.164179>,  <44.392315, 38.024895, 21.267361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.218281, 38.153992, 21.164179>,  <43.928226, 38.369156, 20.992208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218281, 38.153992, 21.164179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687523, -0.600568, 0.408203,
		0.038626, -0.591587, -0.805315,
		0.725135, -0.537906, 0.429927,
		44.435822, 37.992619, 21.293158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741661, 37.701336, 20.912153>,  <43.928226, 38.369156, 20.992208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741661, 37.701336, 20.912153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010403, 37.672791, 21.207047>,  <44.171650, 37.655663, 21.383984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010403, 37.672791, 21.207047>,  <43.741661, 37.701336, 20.912153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010403, 37.672791, 21.207047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436732, -0.842078, 0.316497,
		0.598224, -0.534615, -0.596922,
		0.671858, -0.071359, 0.737234,
		44.211960, 37.651382, 21.428217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739510, 37.037308, 20.983990>,  <43.741661, 37.701336, 20.912153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739510, 37.037308, 20.983990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875252, 37.205986, 21.320326>,  <43.956696, 37.307194, 21.522127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875252, 37.205986, 21.320326>,  <43.739510, 37.037308, 20.983990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875252, 37.205986, 21.320326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472281, -0.696669, 0.540003,
		0.813504, -0.580364, -0.037258,
		0.339355, 0.421698, 0.840838,
		43.977058, 37.332497, 21.572577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984802, 36.477051, 21.424326>,  <43.739510, 37.037308, 20.983990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984802, 36.477051, 21.424326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888939, 36.781281, 21.665688>,  <43.831421, 36.963818, 21.810505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.888939, 36.781281, 21.665688>,  <43.984802, 36.477051, 21.424326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888939, 36.781281, 21.665688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567969, -0.613899, 0.548215,
		0.787385, -0.211329, 0.579107,
		-0.239660, 0.760571, 0.603403,
		43.817039, 37.009453, 21.846708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065651, 36.164585, 22.104017>,  <43.984802, 36.477051, 21.424326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065651, 36.164585, 22.104017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841156, 36.486725, 22.180361>,  <43.706459, 36.680008, 22.226168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.841156, 36.486725, 22.180361>,  <44.065651, 36.164585, 22.104017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841156, 36.486725, 22.180361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625949, -0.563888, 0.538719,
		0.541479, 0.182881, 0.820582,
		-0.561238, 0.805347, 0.190859,
		43.672783, 36.728329, 22.237619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026928, 36.168358, 22.853415>,  <44.065651, 36.164585, 22.104017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026928, 36.168358, 22.853415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742966, 36.390263, 22.679853>,  <43.572586, 36.523407, 22.575716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.742966, 36.390263, 22.679853>,  <44.026928, 36.168358, 22.853415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742966, 36.390263, 22.679853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678603, -0.373899, 0.632216,
		0.188494, 0.743263, 0.641896,
		-0.709908, 0.554761, -0.433902,
		43.529995, 36.556690, 22.549683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635849, 36.438866, 23.466368>,  <44.026928, 36.168358, 22.853415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635849, 36.438866, 23.466368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418552, 36.488655, 23.134249>,  <43.288174, 36.518528, 22.934977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.418552, 36.488655, 23.134249>,  <43.635849, 36.438866, 23.466368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.418552, 36.488655, 23.134249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802910, -0.366094, 0.470437,
		-0.245411, 0.922216, 0.298818,
		-0.543239, 0.124474, -0.830299,
		43.255581, 36.525997, 22.885159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118256, 36.819138, 23.667721>,  <43.635849, 36.438866, 23.466368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118256, 36.819138, 23.667721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014687, 36.588757, 23.357561>,  <42.952545, 36.450527, 23.171465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014687, 36.588757, 23.357561>,  <43.118256, 36.819138, 23.667721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014687, 36.588757, 23.357561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830642, -0.276926, 0.483060,
		-0.492946, 0.769151, -0.406707,
		-0.258918, -0.575950, -0.775398,
		42.937012, 36.415970, 23.124941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469925, 37.017345, 23.457098>,  <43.118256, 36.819138, 23.667721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469925, 37.017345, 23.457098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484673, 36.645969, 23.309238>,  <42.493523, 36.423145, 23.220524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.484673, 36.645969, 23.309238>,  <42.469925, 37.017345, 23.457098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484673, 36.645969, 23.309238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877256, -0.207229, 0.432987,
		-0.478604, 0.308309, -0.822121,
		0.036873, -0.928440, -0.369647,
		42.495735, 36.367435, 23.198345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820129, 36.911407, 23.304226>,  <42.469925, 37.017345, 23.457098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820129, 36.911407, 23.304226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971786, 36.541275, 23.305676>,  <42.062778, 36.319195, 23.306545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971786, 36.541275, 23.305676>,  <41.820129, 36.911407, 23.304226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971786, 36.541275, 23.305676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783742, -0.319039, 0.532881,
		-0.491935, -0.204878, -0.846183,
		0.379141, -0.925332, 0.003625,
		42.085529, 36.263676, 23.306763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283733, 36.378143, 23.129448>,  <41.820129, 36.911407, 23.304226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283733, 36.378143, 23.129448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563400, 36.173187, 23.328897>,  <41.731201, 36.050213, 23.448566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563400, 36.173187, 23.328897>,  <41.283733, 36.378143, 23.129448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563400, 36.173187, 23.328897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683071, -0.272761, 0.677507,
		-0.211136, -0.814289, -0.540699,
		0.699169, -0.512381, 0.498627,
		41.773151, 36.019470, 23.478485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059048, 35.671993, 23.230225>,  <41.283733, 36.378143, 23.129448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059048, 35.671993, 23.230225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314152, 35.708916, 23.536098>,  <41.467213, 35.731071, 23.719624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314152, 35.708916, 23.536098>,  <41.059048, 35.671993, 23.230225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314152, 35.708916, 23.536098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628162, -0.512190, 0.585725,
		0.445731, -0.853897, -0.268669,
		0.637758, 0.092308, 0.764685,
		41.505478, 35.736607, 23.765505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895676, 35.208755, 23.670933>,  <41.059048, 35.671993, 23.230225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895676, 35.208755, 23.670933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160542, 35.385368, 23.913120>,  <41.319462, 35.491337, 24.058432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160542, 35.385368, 23.913120>,  <40.895676, 35.208755, 23.670933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160542, 35.385368, 23.913120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502009, -0.338502, 0.795866,
		0.556350, -0.830945, -0.002493,
		0.662164, 0.441528, 0.605467,
		41.359192, 35.517826, 24.094761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155300, 34.740009, 24.195320>,  <40.895676, 35.208755, 23.670933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155300, 34.740009, 24.195320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231480, 35.094017, 24.365252>,  <41.277187, 35.306419, 24.467211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231480, 35.094017, 24.365252>,  <41.155300, 34.740009, 24.195320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231480, 35.094017, 24.365252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294468, -0.361319, 0.884724,
		0.936492, -0.293594, 0.191795,
		0.190450, 0.885015, 0.424826,
		41.288616, 35.359520, 24.492699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518764, 34.570095, 24.892477>,  <41.155300, 34.740009, 24.195320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518764, 34.570095, 24.892477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356682, 34.935722, 24.899321>,  <41.259434, 35.155098, 24.903427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356682, 34.935722, 24.899321>,  <41.518764, 34.570095, 24.892477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356682, 34.935722, 24.899321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524673, -0.247829, 0.814432,
		0.748685, 0.321033, 0.580007,
		-0.405202, 0.914067, 0.017108,
		41.235123, 35.209942, 24.904453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715336, 34.875320, 25.575104>,  <41.518764, 34.570095, 24.892477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715336, 34.875320, 25.575104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383362, 35.047943, 25.433702>,  <41.184177, 35.151516, 25.348862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383362, 35.047943, 25.433702>,  <41.715336, 34.875320, 25.575104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383362, 35.047943, 25.433702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421607, -0.070263, 0.904052,
		0.365312, 0.899345, 0.240261,
		-0.829936, 0.431557, -0.353502,
		41.134380, 35.177410, 25.327652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.671917, 35.546291, 25.783268>,  <41.715336, 34.875320, 25.575104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.671917, 35.546291, 25.783268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293995, 35.452667, 25.691568>,  <41.067242, 35.396492, 25.636549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293995, 35.452667, 25.691568>,  <41.671917, 35.546291, 25.783268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293995, 35.452667, 25.691568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180988, -0.210401, 0.960716,
		-0.273098, 0.949183, 0.156427,
		-0.944807, -0.234058, -0.229251,
		41.010551, 35.382450, 25.622793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267979, 35.812809, 26.300278>,  <41.671917, 35.546291, 25.783268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267979, 35.812809, 26.300278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999443, 35.560337, 26.144886>,  <40.838322, 35.408855, 26.051651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999443, 35.560337, 26.144886>,  <41.267979, 35.812809, 26.300278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999443, 35.560337, 26.144886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347855, -0.194503, 0.917151,
		-0.654448, 0.750853, -0.088982,
		-0.671338, -0.631181, -0.388480,
		40.798042, 35.370983, 26.028341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718601, 35.867863, 26.674765>,  <41.267979, 35.812809, 26.300278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718601, 35.867863, 26.674765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666786, 35.497173, 26.533682>,  <40.635696, 35.274761, 26.449032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.666786, 35.497173, 26.533682>,  <40.718601, 35.867863, 26.674765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666786, 35.497173, 26.533682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434312, -0.266742, 0.860361,
		-0.891400, 0.264631, -0.367935,
		-0.129534, -0.926725, -0.352707,
		40.627926, 35.219154, 26.427870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066601, 35.602108, 26.959379>,  <40.718601, 35.867863, 26.674765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066601, 35.602108, 26.959379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263176, 35.268829, 26.857979>,  <40.381123, 35.068863, 26.797138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.263176, 35.268829, 26.857979>,  <40.066601, 35.602108, 26.959379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263176, 35.268829, 26.857979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201412, -0.391916, 0.897683,
		-0.847302, -0.390099, -0.360420,
		0.491440, -0.833201, -0.253500,
		40.410606, 35.018867, 26.781929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668579, 35.019932, 27.106762>,  <40.066601, 35.602108, 26.959379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668579, 35.019932, 27.106762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049950, 34.902351, 27.079708>,  <40.278770, 34.831802, 27.063477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049950, 34.902351, 27.079708>,  <39.668579, 35.019932, 27.106762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049950, 34.902351, 27.079708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059520, -0.403173, 0.913186,
		-0.295695, -0.866630, -0.401892,
		0.953426, -0.293946, -0.067634,
		40.335976, 34.814167, 27.059418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651787, 34.374790, 27.415705>,  <39.668579, 35.019932, 27.106762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651787, 34.374790, 27.415705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034801, 34.490101, 27.417633>,  <40.264610, 34.559288, 27.418789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034801, 34.490101, 27.417633>,  <39.651787, 34.374790, 27.415705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034801, 34.490101, 27.417633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144620, -0.494701, 0.856946,
		0.249420, -0.819859, -0.515384,
		0.957536, 0.288274, 0.004820,
		40.322063, 34.576584, 27.419079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000351, 33.816669, 27.705946>,  <39.651787, 34.374790, 27.415705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000351, 33.816669, 27.705946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268723, 34.111996, 27.733500>,  <40.429745, 34.289192, 27.750032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268723, 34.111996, 27.733500>,  <40.000351, 33.816669, 27.705946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268723, 34.111996, 27.733500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300508, -0.355653, 0.884989,
		0.677899, -0.573065, -0.460488,
		0.670930, 0.738314, 0.068886,
		40.470001, 34.333488, 27.754166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562691, 33.481712, 28.015429>,  <40.000351, 33.816669, 27.705946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562691, 33.481712, 28.015429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663834, 33.866791, 28.053951>,  <40.724522, 34.097839, 28.077065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663834, 33.866791, 28.053951>,  <40.562691, 33.481712, 28.015429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663834, 33.866791, 28.053951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413550, -0.197535, 0.888795,
		0.874665, -0.184912, -0.448072,
		0.252859, 0.962698, 0.096307,
		40.739693, 34.155602, 28.082844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253880, 33.463112, 28.267296>,  <40.562691, 33.481712, 28.015429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253880, 33.463112, 28.267296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070786, 33.798393, 28.385883>,  <40.960930, 33.999561, 28.457035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070786, 33.798393, 28.385883>,  <41.253880, 33.463112, 28.267296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070786, 33.798393, 28.385883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399665, -0.103873, 0.910757,
		0.794193, 0.535376, -0.287453,
		-0.457739, 0.838202, 0.296466,
		40.933464, 34.049854, 28.474823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.709515, 33.880287, 28.704538>,  <41.253880, 33.463112, 28.267296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.709515, 33.880287, 28.704538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355949, 34.034245, 28.810785>,  <41.143810, 34.126617, 28.874533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355949, 34.034245, 28.810785>,  <41.709515, 33.880287, 28.704538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355949, 34.034245, 28.810785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209122, -0.182711, 0.960669,
		0.418287, 0.904695, 0.081011,
		-0.883914, 0.384894, 0.265618,
		41.090775, 34.149712, 28.890471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875298, 34.376034, 29.216663>,  <41.709515, 33.880287, 28.704538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875298, 34.376034, 29.216663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484951, 34.314838, 29.278999>,  <41.250744, 34.278122, 29.316401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484951, 34.314838, 29.278999>,  <41.875298, 34.376034, 29.216663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484951, 34.314838, 29.278999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167794, -0.068542, 0.983436,
		-0.139775, 0.985848, 0.092559,
		-0.975863, -0.152991, 0.155839,
		41.192192, 34.268940, 29.325750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653229, 34.859524, 29.788185>,  <41.875298, 34.376034, 29.216663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653229, 34.859524, 29.788185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355377, 34.593933, 29.760845>,  <41.176666, 34.434578, 29.744442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355377, 34.593933, 29.760845>,  <41.653229, 34.859524, 29.788185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355377, 34.593933, 29.760845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015132, -0.085581, 0.996216,
		-0.667310, 0.742842, 0.053679,
		-0.744626, -0.663973, -0.068350,
		41.131989, 34.394741, 29.740339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039543, 35.094875, 30.165129>,  <41.653229, 34.859524, 29.788185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039543, 35.094875, 30.165129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031235, 34.696045, 30.135695>,  <41.026249, 34.456749, 30.118034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031235, 34.696045, 30.135695>,  <41.039543, 35.094875, 30.165129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031235, 34.696045, 30.135695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162604, -0.069251, 0.984258,
		-0.986473, 0.032410, -0.160689,
		-0.020772, -0.997072, -0.073584,
		41.025002, 34.396923, 30.113619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407787, 34.894817, 30.514679>,  <41.039543, 35.094875, 30.165129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407787, 34.894817, 30.514679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634430, 34.565296, 30.507711>,  <40.770416, 34.367584, 30.503531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634430, 34.565296, 30.507711>,  <40.407787, 34.894817, 30.514679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634430, 34.565296, 30.507711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213475, -0.167181, 0.962538,
		-0.795852, -0.541665, -0.270587,
		0.566610, -0.823802, -0.017419,
		40.804413, 34.318157, 30.502485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096783, 34.323112, 30.806768>,  <40.407787, 34.894817, 30.514679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096783, 34.323112, 30.806768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472591, 34.189964, 30.839031>,  <40.698074, 34.110077, 30.858389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472591, 34.189964, 30.839031>,  <40.096783, 34.323112, 30.806768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472591, 34.189964, 30.839031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226528, -0.427288, 0.875277,
		-0.256886, -0.840610, -0.476848,
		0.939518, -0.332866, 0.080658,
		40.754448, 34.090103, 30.863228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011635, 33.699448, 31.158661>,  <40.096783, 34.323112, 30.806768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011635, 33.699448, 31.158661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409351, 33.736343, 31.180122>,  <40.647980, 33.758480, 31.192999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409351, 33.736343, 31.180122>,  <40.011635, 33.699448, 31.158661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409351, 33.736343, 31.180122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012750, -0.396511, 0.917941,
		0.105945, -0.913384, -0.393071,
		0.994290, 0.092240, 0.053654,
		40.707638, 33.764015, 31.196218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300453, 33.015533, 31.275608>,  <40.011635, 33.699448, 31.158661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300453, 33.015533, 31.275608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555283, 33.295486, 31.404789>,  <40.708179, 33.463459, 31.482298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555283, 33.295486, 31.404789>,  <40.300453, 33.015533, 31.275608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555283, 33.295486, 31.404789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006160, -0.414345, 0.910099,
		0.770779, -0.581788, -0.259656,
		0.637072, 0.699886, 0.322952,
		40.746403, 33.505451, 31.501675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942726, 32.630722, 31.589991>,  <40.300453, 33.015533, 31.275608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942726, 32.630722, 31.589991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940250, 32.995659, 31.753742>,  <40.938766, 33.214622, 31.851994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940250, 32.995659, 31.753742>,  <40.942726, 32.630722, 31.589991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940250, 32.995659, 31.753742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028504, -0.409383, 0.911917,
		0.999574, -0.006028, 0.028538,
		-0.006186, 0.912343, 0.409381,
		40.938393, 33.269363, 31.876556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312469, 32.609600, 32.197754>,  <40.942726, 32.630722, 31.589991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312469, 32.609600, 32.197754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102482, 32.947227, 32.241478>,  <40.976490, 33.149803, 32.267712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102482, 32.947227, 32.241478>,  <41.312469, 32.609600, 32.197754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102482, 32.947227, 32.241478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141892, -0.213429, 0.966600,
		0.839211, 0.491923, 0.231811,
		-0.524968, 0.844073, 0.109313,
		40.944992, 33.200451, 32.274273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491142, 32.832752, 32.843155>,  <41.312469, 32.609600, 32.197754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491142, 32.832752, 32.843155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137859, 33.013443, 32.792732>,  <40.925888, 33.121857, 32.762478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.137859, 33.013443, 32.792732>,  <41.491142, 32.832752, 32.843155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.137859, 33.013443, 32.792732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280089, -0.292486, 0.914331,
		0.376156, 0.842851, 0.384849,
		-0.883208, 0.451724, -0.126053,
		40.872898, 33.148960, 32.754917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438026, 33.269207, 33.396046>,  <41.491142, 32.832752, 32.843155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438026, 33.269207, 33.396046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064964, 33.207607, 33.265545>,  <40.841125, 33.170647, 33.187244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064964, 33.207607, 33.265545>,  <41.438026, 33.269207, 33.396046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064964, 33.207607, 33.265545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298517, -0.178405, 0.937582,
		-0.202595, 0.971831, 0.120417,
		-0.932654, -0.154002, -0.326251,
		40.785168, 33.161407, 33.167671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012688, 33.598938, 33.878510>,  <41.438026, 33.269207, 33.396046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012688, 33.598938, 33.878510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761459, 33.341778, 33.703144>,  <40.610722, 33.187481, 33.597923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761459, 33.341778, 33.703144>,  <41.012688, 33.598938, 33.878510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761459, 33.341778, 33.703144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363746, -0.255502, 0.895772,
		-0.687911, 0.722076, -0.073381,
		-0.628067, -0.642904, -0.438414,
		40.573040, 33.148907, 33.571621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325871, 33.726040, 34.111416>,  <41.012688, 33.598938, 33.878510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325871, 33.726040, 34.111416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311241, 33.348663, 33.979614>,  <40.302464, 33.122238, 33.900532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311241, 33.348663, 33.979614>,  <40.325871, 33.726040, 34.111416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311241, 33.348663, 33.979614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570510, -0.251000, 0.781996,
		-0.820476, 0.216585, -0.529065,
		-0.036573, -0.943446, -0.329504,
		40.300270, 33.065628, 33.880764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613438, 33.605682, 34.190968>,  <40.325871, 33.726040, 34.111416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613438, 33.605682, 34.190968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856178, 33.288170, 34.207146>,  <40.001823, 33.097660, 34.216854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856178, 33.288170, 34.207146>,  <39.613438, 33.605682, 34.190968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856178, 33.288170, 34.207146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474606, -0.321079, 0.819547,
		-0.637559, -0.516538, -0.571582,
		0.606851, -0.793786, 0.040445,
		40.038235, 33.050034, 34.219280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153378, 33.121998, 34.317265>,  <39.613438, 33.605682, 34.190968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153378, 33.121998, 34.317265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512157, 33.019325, 34.461258>,  <39.727425, 32.957722, 34.547653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512157, 33.019325, 34.461258>,  <39.153378, 33.121998, 34.317265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512157, 33.019325, 34.461258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434503, -0.361187, 0.825076,
		-0.081760, -0.896470, -0.435497,
		0.896951, -0.256683, 0.359988,
		39.781242, 32.942322, 34.569256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165905, 32.372669, 34.562172>,  <39.153378, 33.121998, 34.317265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165905, 32.372669, 34.562172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460865, 32.553272, 34.763126>,  <39.637840, 32.661633, 34.883698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460865, 32.553272, 34.763126>,  <39.165905, 32.372669, 34.562172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460865, 32.553272, 34.763126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296090, -0.452436, 0.841209,
		0.607106, -0.769055, -0.199939,
		0.737396, 0.451504, 0.502386,
		39.682083, 32.688725, 34.913841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464035, 31.892445, 34.889404>,  <39.165905, 32.372669, 34.562172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464035, 31.892445, 34.889404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558044, 32.220894, 35.097450>,  <39.614449, 32.417965, 35.222279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558044, 32.220894, 35.097450>,  <39.464035, 31.892445, 34.889404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558044, 32.220894, 35.097450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121302, -0.506143, 0.853876,
		0.964391, -0.263771, -0.019351,
		0.235022, 0.821124, 0.520116,
		39.628551, 32.467232, 35.253487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942211, 31.630899, 35.492191>,  <39.464035, 31.892445, 34.889404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942211, 31.630899, 35.492191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853802, 32.002029, 35.612385>,  <39.800758, 32.224709, 35.684502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.853802, 32.002029, 35.612385>,  <39.942211, 31.630899, 35.492191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853802, 32.002029, 35.612385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066950, -0.321812, 0.944434,
		0.972969, 0.188621, 0.133245,
		-0.221020, 0.927825, 0.300485,
		39.787495, 32.280376, 35.702530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360142, 31.727924, 36.108341>,  <39.942211, 31.630899, 35.492191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360142, 31.727924, 36.108341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050991, 31.981325, 36.122982>,  <39.865501, 32.133366, 36.131767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050991, 31.981325, 36.122982>,  <40.360142, 31.727924, 36.108341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050991, 31.981325, 36.122982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027503, -0.024179, 0.999329,
		0.633962, 0.773363, 0.001265,
		-0.772875, 0.633502, 0.036598,
		39.819130, 32.171375, 36.133961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552040, 32.167500, 36.613129>,  <40.360142, 31.727924, 36.108341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552040, 32.167500, 36.613129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160015, 32.246502, 36.621876>,  <39.924801, 32.293903, 36.627125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160015, 32.246502, 36.621876>,  <40.552040, 32.167500, 36.613129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160015, 32.246502, 36.621876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072908, -0.459756, 0.885047,
		0.184853, 0.865804, 0.464987,
		-0.980058, 0.197505, 0.021863,
		39.865997, 32.305752, 36.628433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441639, 32.540535, 37.245518>,  <40.552040, 32.167500, 36.613129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441639, 32.540535, 37.245518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099369, 32.370953, 37.126801>,  <39.894009, 32.269203, 37.055569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.099369, 32.370953, 37.126801>,  <40.441639, 32.540535, 37.245518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099369, 32.370953, 37.126801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079112, -0.459600, 0.884595,
		-0.511435, 0.780404, 0.359728,
		-0.855672, -0.423955, -0.296795,
		39.842667, 32.243767, 37.037762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169373, 32.558506, 37.885006>,  <40.441639, 32.540535, 37.245518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169373, 32.558506, 37.885006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973816, 32.275047, 37.681519>,  <39.856480, 32.104973, 37.559425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973816, 32.275047, 37.681519>,  <40.169373, 32.558506, 37.885006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973816, 32.275047, 37.681519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043975, -0.562407, 0.825690,
		-0.871233, 0.426048, 0.243795,
		-0.488896, -0.708648, -0.508723,
		39.827148, 32.062454, 37.528900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946354, 32.049534, 38.367210>,  <40.169373, 32.558506, 37.885006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946354, 32.049534, 38.367210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865253, 31.842112, 38.034946>,  <39.816593, 31.717659, 37.835587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865253, 31.842112, 38.034946>,  <39.946354, 32.049534, 38.367210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865253, 31.842112, 38.034946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070005, -0.853782, 0.515902,
		-0.976725, 0.046449, 0.209407,
		-0.202751, -0.518554, -0.830659,
		39.804428, 31.686546, 37.785748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348740, 31.585371, 38.568813>,  <39.946354, 32.049534, 38.367210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348740, 31.585371, 38.568813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626984, 31.476868, 38.302715>,  <39.793930, 31.411766, 38.143055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.626984, 31.476868, 38.302715>,  <39.348740, 31.585371, 38.568813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626984, 31.476868, 38.302715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209444, -0.809186, 0.548955,
		-0.687216, -0.521188, -0.506061,
		0.695606, -0.271259, -0.665245,
		39.835667, 31.395491, 38.103142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293827, 30.868395, 38.292717>,  <39.348740, 31.585371, 38.568813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293827, 30.868395, 38.292717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677795, 30.970415, 38.246243>,  <39.908176, 31.031628, 38.218357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.677795, 30.970415, 38.246243>,  <39.293827, 30.868395, 38.292717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677795, 30.970415, 38.246243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261064, -0.662877, 0.701741,
		0.101961, -0.703948, -0.702894,
		0.959922, 0.255051, -0.116188,
		39.965771, 31.046930, 38.211388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657703, 30.206074, 38.062706>,  <39.293827, 30.868395, 38.292717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657703, 30.206074, 38.062706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848118, 30.494204, 38.264507>,  <39.962368, 30.667082, 38.385586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848118, 30.494204, 38.264507>,  <39.657703, 30.206074, 38.062706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848118, 30.494204, 38.264507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092924, -0.611661, 0.785644,
		0.874501, -0.327117, -0.358110,
		0.476039, 0.720323, 0.504501,
		39.990929, 30.710300, 38.415859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224968, 29.973642, 38.373016>,  <39.657703, 30.206074, 38.062706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224968, 29.973642, 38.373016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069427, 30.267994, 38.594746>,  <39.976101, 30.444605, 38.727783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069427, 30.267994, 38.594746>,  <40.224968, 29.973642, 38.373016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069427, 30.267994, 38.594746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042237, -0.615283, 0.787174,
		0.920330, 0.282684, 0.270337,
		-0.388855, 0.735878, 0.554324,
		39.952770, 30.488758, 38.761044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.588783, 29.892975, 38.985447>,  <40.224968, 29.973642, 38.373016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.588783, 29.892975, 38.985447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247360, 30.080845, 39.075645>,  <40.042507, 30.193567, 39.129765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247360, 30.080845, 39.075645>,  <40.588783, 29.892975, 38.985447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247360, 30.080845, 39.075645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118124, -0.596002, 0.794247,
		0.507435, 0.651296, 0.564201,
		-0.853555, 0.469675, 0.225498,
		39.991295, 30.221746, 39.143295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526390, 30.110783, 39.645359>,  <40.588783, 29.892975, 38.985447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526390, 30.110783, 39.645359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140053, 30.085938, 39.544724>,  <39.908253, 30.071032, 39.484341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140053, 30.085938, 39.544724>,  <40.526390, 30.110783, 39.645359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140053, 30.085938, 39.544724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122544, -0.745974, 0.654604,
		-0.228337, 0.663073, 0.712879,
		-0.965839, -0.062111, -0.251589,
		39.850300, 30.067305, 39.469246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285648, 30.173319, 40.274479>,  <40.526390, 30.110783, 39.645359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285648, 30.173319, 40.274479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011257, 29.998735, 40.041607>,  <39.846622, 29.893986, 39.901882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011257, 29.998735, 40.041607>,  <40.285648, 30.173319, 40.274479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011257, 29.998735, 40.041607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209901, -0.647402, 0.732675,
		-0.696689, 0.624799, 0.352491,
		-0.685978, -0.436458, -0.582184,
		39.805462, 29.867798, 39.866951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883610, 29.973688, 40.712234>,  <40.285648, 30.173319, 40.274479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883610, 29.973688, 40.712234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694778, 29.774492, 40.421265>,  <39.581482, 29.654974, 40.246681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694778, 29.774492, 40.421265>,  <39.883610, 29.973688, 40.712234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694778, 29.774492, 40.421265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325101, -0.668657, 0.668735,
		-0.819424, 0.552180, 0.153758,
		-0.472074, -0.497991, -0.727428,
		39.553158, 29.625095, 40.203037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257244, 29.975134, 40.972584>,  <39.883610, 29.973688, 40.712234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257244, 29.975134, 40.972584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287212, 29.675629, 40.709148>,  <39.305191, 29.495926, 40.551086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287212, 29.675629, 40.709148>,  <39.257244, 29.975134, 40.972584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287212, 29.675629, 40.709148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406091, -0.626111, 0.665639,
		-0.910757, 0.217580, -0.350972,
		0.074918, -0.748761, -0.658592,
		39.309689, 29.451000, 40.511570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650875, 29.629486, 40.627701>,  <39.257244, 29.975134, 40.972584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650875, 29.629486, 40.627701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951271, 29.418644, 40.786785>,  <39.131508, 29.292139, 40.882236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951271, 29.418644, 40.786785>,  <38.650875, 29.629486, 40.627701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951271, 29.418644, 40.786785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607887, -0.316683, 0.728138,
		-0.257856, -0.788589, -0.558245,
		0.750989, -0.527104, 0.397714,
		39.176567, 29.260513, 40.906097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401299, 28.889040, 40.769142>,  <38.650875, 29.629486, 40.627701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401299, 28.889040, 40.769142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690826, 29.050308, 40.993122>,  <38.864544, 29.147068, 41.127510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690826, 29.050308, 40.993122>,  <38.401299, 28.889040, 40.769142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690826, 29.050308, 40.993122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573810, -0.098956, 0.812988,
		0.383183, -0.909759, 0.159717,
		0.723819, 0.403170, 0.559947,
		38.907970, 29.171259, 41.161106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467552, 28.554802, 41.337505>,  <38.401299, 28.889040, 40.769142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467552, 28.554802, 41.337505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541119, 28.942429, 41.403343>,  <38.585258, 29.175005, 41.442844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541119, 28.942429, 41.403343>,  <38.467552, 28.554802, 41.337505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541119, 28.942429, 41.403343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672454, 0.001910, 0.740136,
		0.716925, -0.246801, 0.652003,
		0.183911, 0.969064, 0.164593,
		38.596291, 29.233149, 41.452721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992519, 28.824564, 41.814793>,  <38.467552, 28.554802, 41.337505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992519, 28.824564, 41.814793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096920, 28.469494, 41.663052>,  <39.159561, 28.256453, 41.572006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.096920, 28.469494, 41.663052>,  <38.992519, 28.824564, 41.814793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096920, 28.469494, 41.663052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070424, 0.374423, -0.924580,
		0.962766, 0.268034, 0.035212,
		0.261003, -0.887674, -0.379357,
		39.175220, 28.203192, 41.549244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565498, 28.804293, 41.387501>,  <38.992519, 28.824564, 41.814793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565498, 28.804293, 41.387501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300472, 28.523952, 41.281811>,  <39.141457, 28.355749, 41.218395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300472, 28.523952, 41.281811>,  <39.565498, 28.804293, 41.387501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300472, 28.523952, 41.281811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033267, 0.324885, -0.945168,
		0.748264, -0.635027, -0.191943,
		-0.662567, -0.700850, -0.264225,
		39.101704, 28.313698, 41.202545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936081, 28.409523, 40.876846>,  <39.565498, 28.804293, 41.387501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936081, 28.409523, 40.876846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544270, 28.464363, 40.817894>,  <39.309181, 28.497267, 40.782520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544270, 28.464363, 40.817894>,  <39.936081, 28.409523, 40.876846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544270, 28.464363, 40.817894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186497, 0.342596, -0.920786,
		-0.075749, -0.929425, -0.361153,
		-0.979531, 0.137103, -0.147383,
		39.250412, 28.505493, 40.773678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743893, 28.151953, 40.252087>,  <39.936081, 28.409523, 40.876846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743893, 28.151953, 40.252087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518726, 28.468510, 40.347439>,  <39.383625, 28.658443, 40.404652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518726, 28.468510, 40.347439>,  <39.743893, 28.151953, 40.252087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518726, 28.468510, 40.347439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230244, 0.427150, -0.874374,
		-0.793796, -0.437315, -0.422664,
		-0.562918, 0.791390, 0.238381,
		39.349850, 28.705927, 40.418953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459000, 28.434694, 39.649773>,  <39.743893, 28.151953, 40.252087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459000, 28.434694, 39.649773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407467, 28.742746, 39.899670>,  <39.376545, 28.927578, 40.049606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407467, 28.742746, 39.899670>,  <39.459000, 28.434694, 39.649773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407467, 28.742746, 39.899670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137895, 0.637786, -0.757769,
		-0.982032, -0.011478, -0.188366,
		-0.128834, 0.770128, 0.624743,
		39.368816, 28.973785, 40.087093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095524, 28.910254, 39.272968>,  <39.459000, 28.434694, 39.649773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095524, 28.910254, 39.272968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221638, 29.152748, 39.565014>,  <39.297306, 29.298244, 39.740242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.221638, 29.152748, 39.565014>,  <39.095524, 28.910254, 39.272968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221638, 29.152748, 39.565014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243816, 0.691786, -0.679695,
		-0.917141, 0.392313, 0.070301,
		0.315286, 0.606236, 0.730118,
		39.316223, 29.334620, 39.784050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720093, 29.504763, 39.232700>,  <39.095524, 28.910254, 39.272968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720093, 29.504763, 39.232700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044125, 29.631458, 39.430061>,  <39.238544, 29.707476, 39.548477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.044125, 29.631458, 39.430061>,  <38.720093, 29.504763, 39.232700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044125, 29.631458, 39.430061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114390, 0.739979, -0.662832,
		-0.575056, 0.593386, 0.563208,
		0.810077, 0.316740, 0.493407,
		39.287148, 29.726480, 39.578083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626579, 30.260580, 39.383419>,  <38.720093, 29.504763, 39.232700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626579, 30.260580, 39.383419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017101, 30.190262, 39.433891>,  <39.251415, 30.148071, 39.464176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017101, 30.190262, 39.433891>,  <38.626579, 30.260580, 39.383419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017101, 30.190262, 39.433891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214875, 0.856533, -0.469234,
		-0.025589, 0.485229, 0.874012,
		0.976306, -0.175796, 0.126182,
		39.309994, 30.137524, 39.471745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960934, 30.882565, 39.571606>,  <38.626579, 30.260580, 39.383419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960934, 30.882565, 39.571606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268913, 30.672915, 39.426022>,  <39.453701, 30.547125, 39.338673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268913, 30.672915, 39.426022>,  <38.960934, 30.882565, 39.571606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268913, 30.672915, 39.426022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289107, 0.795009, -0.533271,
		0.568850, 0.305371, 0.763648,
		0.769952, -0.524127, -0.363956,
		39.499901, 30.515676, 39.316833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632038, 31.302130, 39.691860>,  <38.960934, 30.882565, 39.571606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632038, 31.302130, 39.691860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662594, 31.076849, 39.362747>,  <39.680927, 30.941681, 39.165279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662594, 31.076849, 39.362747>,  <39.632038, 31.302130, 39.691860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662594, 31.076849, 39.362747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334396, 0.791871, -0.510997,
		0.939331, -0.236098, 0.248826,
		0.076393, -0.563202, -0.822780,
		39.685513, 30.907888, 39.115913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249359, 31.545628, 39.308350>,  <39.632038, 31.302130, 39.691860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249359, 31.545628, 39.308350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021885, 31.339325, 39.052040>,  <39.885403, 31.215544, 38.898254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021885, 31.339325, 39.052040>,  <40.249359, 31.545628, 39.308350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021885, 31.339325, 39.052040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147136, 0.702657, -0.696149,
		0.809291, -0.490168, -0.323702,
		-0.568682, -0.515759, -0.640776,
		39.851280, 31.184597, 38.859806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908195, 31.181299, 39.069340>,  <40.249359, 31.545628, 39.308350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908195, 31.181299, 39.069340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272636, 31.240005, 38.915276>,  <41.491302, 31.275229, 38.822838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272636, 31.240005, 38.915276>,  <40.908195, 31.181299, 39.069340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272636, 31.240005, 38.915276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164132, -0.727983, -0.665658,
		-0.378083, 0.669702, -0.639181,
		0.911106, 0.146764, -0.385158,
		41.545967, 31.284035, 38.799728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838558, 31.213772, 38.261959>,  <40.908195, 31.181299, 39.069340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838558, 31.213772, 38.261959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207001, 31.086378, 38.351524>,  <41.428066, 31.009941, 38.405262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207001, 31.086378, 38.351524>,  <40.838558, 31.213772, 38.261959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207001, 31.086378, 38.351524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038762, -0.647301, -0.761248,
		0.387383, 0.692509, -0.608577,
		0.921104, -0.318484, 0.223910,
		41.483334, 30.990833, 38.418697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478783, 31.322943, 37.569538>,  <40.838558, 31.213772, 38.261959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478783, 31.322943, 37.569538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626812, 31.585142, 37.306217>,  <40.715630, 31.742462, 37.148224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626812, 31.585142, 37.306217>,  <40.478783, 31.322943, 37.569538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626812, 31.585142, 37.306217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258328, -0.753280, -0.604843,
		-0.892362, 0.053779, -0.448104,
		0.370076, 0.655497, -0.658306,
		40.737835, 31.781792, 37.108727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904091, 31.322033, 37.104065>,  <40.478783, 31.322943, 37.569538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904091, 31.322033, 37.104065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684425, 31.528242, 37.367172>,  <39.552628, 31.651968, 37.525036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684425, 31.528242, 37.367172>,  <39.904091, 31.322033, 37.104065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684425, 31.528242, 37.367172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347375, 0.575049, -0.740709,
		-0.760100, -0.635261, -0.136715,
		-0.549161, 0.515521, 0.657769,
		39.519676, 31.682898, 37.564503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152035, 31.161688, 36.998608>,  <39.904091, 31.322033, 37.104065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152035, 31.161688, 36.998608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276882, 31.519741, 37.125931>,  <39.351791, 31.734573, 37.202324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276882, 31.519741, 37.125931>,  <39.152035, 31.161688, 36.998608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276882, 31.519741, 37.125931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138033, 0.374219, -0.917010,
		-0.939964, 0.242274, 0.240357,
		0.312114, 0.895133, 0.318311,
		39.370518, 31.788280, 37.221424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685291, 31.685730, 36.774719>,  <39.152035, 31.161688, 36.998608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685291, 31.685730, 36.774719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036221, 31.858244, 36.858913>,  <39.246777, 31.961752, 36.909431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036221, 31.858244, 36.858913>,  <38.685291, 31.685730, 36.774719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036221, 31.858244, 36.858913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043388, 0.508087, -0.860212,
		-0.477941, 0.745549, 0.464467,
		0.877320, 0.431283, 0.210487,
		39.299416, 31.987629, 36.922058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568176, 32.442619, 36.516178>,  <38.685291, 31.685730, 36.774719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568176, 32.442619, 36.516178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963741, 32.398808, 36.556278>,  <39.201080, 32.372520, 36.580338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963741, 32.398808, 36.556278>,  <38.568176, 32.442619, 36.516178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963741, 32.398808, 36.556278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147035, 0.628419, -0.763852,
		0.020666, 0.770125, 0.637558,
		0.988915, -0.109530, 0.100248,
		39.260414, 32.365948, 36.586353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939964, 33.110725, 36.358887>,  <38.568176, 32.442619, 36.516178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939964, 33.110725, 36.358887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192780, 32.807949, 36.292461>,  <39.344467, 32.626286, 36.252605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192780, 32.807949, 36.292461>,  <38.939964, 33.110725, 36.358887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192780, 32.807949, 36.292461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406971, 0.506575, -0.760103,
		0.659473, 0.412831, 0.628225,
		0.632037, -0.756937, -0.166063,
		39.382389, 32.580868, 36.242641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534859, 33.468781, 36.196812>,  <38.939964, 33.110725, 36.358887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534859, 33.468781, 36.196812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596634, 33.105236, 36.041832>,  <39.633701, 32.887108, 35.948845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596634, 33.105236, 36.041832>,  <39.534859, 33.468781, 36.196812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596634, 33.105236, 36.041832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308413, 0.416909, -0.855025,
		0.938631, 0.012557, 0.344693,
		0.154442, -0.908861, -0.387451,
		39.642967, 32.832577, 35.925598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050678, 33.515907, 35.774483>,  <39.534859, 33.468781, 36.196812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050678, 33.515907, 35.774483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950180, 33.147663, 35.654919>,  <39.889881, 32.926716, 35.583179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950180, 33.147663, 35.654919>,  <40.050678, 33.515907, 35.774483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950180, 33.147663, 35.654919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498654, 0.141571, -0.855162,
		0.829590, -0.363908, 0.423499,
		-0.251246, -0.920613, -0.298910,
		39.874805, 32.871479, 35.565247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635162, 33.217285, 35.591053>,  <40.050678, 33.515907, 35.774483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635162, 33.217285, 35.591053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337311, 33.061142, 35.374481>,  <40.158600, 32.967457, 35.244537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337311, 33.061142, 35.374481>,  <40.635162, 33.217285, 35.591053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337311, 33.061142, 35.374481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540567, 0.123145, -0.832239,
		0.391547, -0.912389, 0.119319,
		-0.744633, -0.390361, -0.541425,
		40.113922, 32.944035, 35.212055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877773, 32.671356, 35.222462>,  <40.635162, 33.217285, 35.591053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877773, 32.671356, 35.222462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567287, 32.822826, 35.020828>,  <40.380997, 32.913708, 34.899849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567287, 32.822826, 35.020828>,  <40.877773, 32.671356, 35.222462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567287, 32.822826, 35.020828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563697, 0.058733, -0.823891,
		-0.282379, -0.923665, -0.259046,
		-0.776214, 0.378673, -0.504082,
		40.334423, 32.936428, 34.869602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642288, 32.757164, 35.335026>,  <40.877773, 32.671356, 35.222462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642288, 32.757164, 35.335026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990082, 32.753448, 35.137474>,  <42.198757, 32.751217, 35.018944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990082, 32.753448, 35.137474>,  <41.642288, 32.757164, 35.335026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990082, 32.753448, 35.137474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490421, 0.135746, 0.860849,
		0.059043, -0.990700, 0.122586,
		0.869483, -0.009292, -0.493875,
		42.250927, 32.750660, 34.989311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177078, 32.357903, 35.705803>,  <41.642288, 32.757164, 35.335026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177078, 32.357903, 35.705803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357651, 32.624477, 35.468464>,  <42.465996, 32.784424, 35.326061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357651, 32.624477, 35.468464>,  <42.177078, 32.357903, 35.705803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357651, 32.624477, 35.468464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512813, 0.350412, 0.783731,
		0.730228, -0.658078, -0.183573,
		0.451430, 0.666442, -0.593352,
		42.493080, 32.824409, 35.290459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687958, 32.498783, 36.139370>,  <42.177078, 32.357903, 35.705803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687958, 32.498783, 36.139370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803902, 32.548798, 36.518917>,  <41.873470, 32.578808, 36.746643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803902, 32.548798, 36.518917>,  <41.687958, 32.498783, 36.139370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803902, 32.548798, 36.518917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945487, -0.191180, -0.263637,
		0.148439, 0.973558, -0.173639,
		0.289863, 0.125039, 0.948865,
		41.890862, 32.586308, 36.803577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983299, 33.043808, 36.565777>,  <41.687958, 32.498783, 36.139370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983299, 33.043808, 36.565777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012333, 33.438828, 36.621597>,  <42.029755, 33.675838, 36.655090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012333, 33.438828, 36.621597>,  <41.983299, 33.043808, 36.565777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012333, 33.438828, 36.621597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242908, -0.118206, 0.962820,
		0.967330, -0.103788, 0.231304,
		0.072588, 0.987550, 0.139555,
		42.034111, 33.735092, 36.663464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520237, 33.176441, 37.075108>,  <41.983299, 33.043808, 36.565777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520237, 33.176441, 37.075108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215382, 33.435242, 37.084446>,  <42.032471, 33.590523, 37.090050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.215382, 33.435242, 37.084446>,  <42.520237, 33.176441, 37.075108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215382, 33.435242, 37.084446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326233, -0.414931, 0.849355,
		0.559217, 0.639708, 0.527305,
		-0.762134, 0.646998, 0.023342,
		41.986740, 33.629341, 37.091450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511093, 33.624908, 37.745937>,  <42.520237, 33.176441, 37.075108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511093, 33.624908, 37.745937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161282, 33.550167, 37.566925>,  <41.951393, 33.505322, 37.459518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161282, 33.550167, 37.566925>,  <42.511093, 33.624908, 37.745937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161282, 33.550167, 37.566925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371451, -0.335216, 0.865826,
		-0.311803, 0.923426, 0.223749,
		-0.874530, -0.186856, -0.447528,
		41.898922, 33.494110, 37.432667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987625, 33.852108, 37.307602>,  <42.511093, 33.624908, 37.745937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987625, 33.852108, 37.307602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146141, 34.036846, 37.625004>,  <43.241249, 34.147690, 37.815445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146141, 34.036846, 37.625004>,  <42.987625, 33.852108, 37.307602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146141, 34.036846, 37.625004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398083, -0.692374, 0.601788,
		0.827337, -0.554364, -0.090527,
		0.396288, 0.461843, 0.793509,
		43.265026, 34.175400, 37.863056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416691, 33.385468, 37.626976>,  <42.987625, 33.852108, 37.307602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416691, 33.385468, 37.626976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318485, 33.662567, 37.898216>,  <43.259560, 33.828827, 38.060963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318485, 33.662567, 37.898216>,  <43.416691, 33.385468, 37.626976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318485, 33.662567, 37.898216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331995, -0.717300, 0.612585,
		0.910769, -0.074727, 0.406098,
		-0.245518, 0.692746, 0.678103,
		43.244831, 33.870392, 38.101646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570393, 33.124374, 38.373272>,  <43.416691, 33.385468, 37.626976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570393, 33.124374, 38.373272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306381, 33.423367, 38.403309>,  <43.147976, 33.602760, 38.421329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.306381, 33.423367, 38.403309>,  <43.570393, 33.124374, 38.373272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306381, 33.423367, 38.403309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459940, -0.481104, 0.746320,
		0.593983, 0.458057, 0.661338,
		-0.660030, 0.747477, 0.075089,
		43.108372, 33.647610, 38.425835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666924, 33.512428, 39.034962>,  <43.570393, 33.124374, 38.373272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666924, 33.512428, 39.034962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293270, 33.508690, 38.892246>,  <43.069077, 33.506447, 38.806618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293270, 33.508690, 38.892246>,  <43.666924, 33.512428, 39.034962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293270, 33.508690, 38.892246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295399, -0.540801, 0.787575,
		-0.200313, 0.841099, 0.502422,
		-0.934138, -0.009347, -0.356789,
		43.013027, 33.505886, 38.785210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230473, 33.200100, 38.747803>,  <43.666924, 33.512428, 39.034962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230473, 33.200100, 38.747803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051064, 33.527431, 38.604042>,  <43.943417, 33.723831, 38.517788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.051064, 33.527431, 38.604042>,  <44.230473, 33.200100, 38.747803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.051064, 33.527431, 38.604042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892425, 0.387992, -0.230305,
		-0.049021, -0.424034, -0.904319,
		-0.448526, 0.818326, -0.359398,
		43.916508, 33.772930, 38.496223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832207, 33.630375, 38.821701>,  <44.230473, 33.200100, 38.747803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832207, 33.630375, 38.821701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536945, 33.824429, 38.634182>,  <44.359791, 33.940861, 38.521671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536945, 33.824429, 38.634182>,  <44.832207, 33.630375, 38.821701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.536945, 33.824429, 38.634182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674003, 0.560374, -0.481353,
		0.029182, -0.671285, -0.740625,
		-0.738152, 0.485137, -0.468801,
		44.315498, 33.969971, 38.493542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121494, 33.577965, 38.210777>,  <44.832207, 33.630375, 38.821701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.121494, 33.577965, 38.210777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840832, 33.848595, 38.121391>,  <44.672436, 34.010971, 38.067760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840832, 33.848595, 38.121391>,  <45.121494, 33.577965, 38.210777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840832, 33.848595, 38.121391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704639, 0.612369, -0.358452,
		-0.105675, -0.408969, -0.906409,
		-0.701653, 0.676571, -0.223463,
		44.630337, 34.051567, 38.054352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033375, 33.754799, 37.433655>,  <45.121494, 33.577965, 38.210777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033375, 33.754799, 37.433655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.955444, 34.050159, 37.691898>,  <44.908684, 34.227375, 37.846844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.955444, 34.050159, 37.691898>,  <45.033375, 33.754799, 37.433655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.955444, 34.050159, 37.691898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736290, 0.544971, -0.401104,
		-0.648012, 0.397206, -0.649853,
		-0.194830, 0.738400, 0.645606,
		44.896996, 34.271679, 37.885582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678905, 33.611382, 37.083046>,  <45.033375, 33.754799, 37.433655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678905, 33.611382, 37.083046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014996, 33.396954, 37.050434>,  <46.216648, 33.268295, 37.030865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.014996, 33.396954, 37.050434>,  <45.678905, 33.611382, 37.083046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.014996, 33.396954, 37.050434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281659, 0.559974, -0.779165,
		0.463344, 0.631711, 0.621494,
		0.840227, -0.536070, -0.081534,
		46.267063, 33.236134, 37.025974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.171082, 34.161934, 36.970837>,  <45.678905, 33.611382, 37.083046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.171082, 34.161934, 36.970837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.292652, 33.816792, 36.809288>,  <46.365593, 33.609707, 36.712360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.292652, 33.816792, 36.809288>,  <46.171082, 34.161934, 36.970837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.292652, 33.816792, 36.809288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450948, 0.503719, -0.736826,
		0.839212, 0.041814, 0.542195,
		0.303923, -0.862855, -0.403871,
		46.383827, 33.557934, 36.688126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.875584, 34.242912, 36.851585>,  <46.171082, 34.161934, 36.970837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.875584, 34.242912, 36.851585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.725945, 33.987255, 36.582798>,  <46.636162, 33.833858, 36.421524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.725945, 33.987255, 36.582798>,  <46.875584, 34.242912, 36.851585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.725945, 33.987255, 36.582798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527153, 0.449585, -0.721098,
		0.762994, -0.623993, 0.168738,
		-0.374098, -0.639145, -0.671971,
		46.613716, 33.795513, 36.381207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.426296, 33.943821, 36.486916>,  <46.875584, 34.242912, 36.851585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.426296, 33.943821, 36.486916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.095119, 33.914722, 36.264484>,  <46.896412, 33.897263, 36.131027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.095119, 33.914722, 36.264484>,  <47.426296, 33.943821, 36.486916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.095119, 33.914722, 36.264484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495462, 0.369654, -0.786049,
		0.262732, -0.926318, -0.270013,
		-0.827943, -0.072739, -0.556075,
		46.846737, 33.892899, 36.097660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.557003, 33.609802, 35.911411>,  <47.426296, 33.943821, 36.486916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.557003, 33.609802, 35.911411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260174, 33.874157, 35.866573>,  <47.082077, 34.032768, 35.839668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260174, 33.874157, 35.866573>,  <47.557003, 33.609802, 35.911411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.260174, 33.874157, 35.866573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538253, 0.487802, -0.687265,
		-0.399519, -0.570337, -0.717705,
		-0.742070, 0.660882, -0.112099,
		47.037552, 34.072422, 35.832943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.471317, 33.675056, 35.170189>,  <47.557003, 33.609802, 35.911411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.471317, 33.675056, 35.170189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.380363, 34.012962, 35.363964>,  <47.325790, 34.215706, 35.480228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.380363, 34.012962, 35.363964>,  <47.471317, 33.675056, 35.170189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.380363, 34.012962, 35.363964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765653, 0.462475, -0.447093,
		-0.601725, 0.269248, -0.751952,
		-0.227380, 0.844762, 0.484434,
		47.312149, 34.266392, 35.509293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.404308, 34.173840, 34.606747>,  <47.471317, 33.675056, 35.170189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.404308, 34.173840, 34.606747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.509487, 34.335613, 34.957127>,  <47.572594, 34.432678, 35.167355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.509487, 34.335613, 34.957127>,  <47.404308, 34.173840, 34.606747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.509487, 34.335613, 34.957127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783244, 0.440659, -0.438576,
		-0.563370, 0.801408, -0.200897,
		0.262951, 0.404432, 0.875952,
		47.588371, 34.456944, 35.219913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.514744, 34.853203, 34.535580>,  <47.404308, 34.173840, 34.606747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.514744, 34.853203, 34.535580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726913, 34.787640, 34.868275>,  <47.854214, 34.748302, 35.067890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.726913, 34.787640, 34.868275>,  <47.514744, 34.853203, 34.535580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.726913, 34.787640, 34.868275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734536, 0.578669, -0.354400,
		-0.423211, 0.798922, 0.427336,
		0.530424, -0.163908, 0.831736,
		47.886040, 34.738468, 35.117794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.322781, 32.297794, 24.479235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.038960, 32.165604, 24.230295>,  <39.868668, 32.086288, 24.080931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.038960, 32.165604, 24.230295>,  <40.322781, 32.297794, 24.479235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038960, 32.165604, 24.230295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631133, -0.094724, 0.769869,
		-0.313378, 0.939048, -0.141365,
		-0.709553, -0.330480, -0.622349,
		39.826096, 32.066460, 24.043591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781376, 32.587376, 24.762436>,  <40.322781, 32.297794, 24.479235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781376, 32.587376, 24.762436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.642712, 32.296131, 24.525900>,  <39.559513, 32.121384, 24.383978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.642712, 32.296131, 24.525900>,  <39.781376, 32.587376, 24.762436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642712, 32.296131, 24.525900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723773, -0.193370, 0.662390,
		-0.596641, 0.657619, -0.459954,
		-0.346659, -0.728111, -0.591339,
		39.538715, 32.077698, 24.348497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135689, 32.598804, 24.828463>,  <39.781376, 32.587376, 24.762436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135689, 32.598804, 24.828463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160480, 32.238167, 24.657213>,  <39.175354, 32.021786, 24.554464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160480, 32.238167, 24.657213>,  <39.135689, 32.598804, 24.828463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160480, 32.238167, 24.657213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630139, -0.367994, 0.683743,
		-0.774004, 0.227399, -0.590937,
		0.061979, -0.901593, -0.428122,
		39.179073, 31.967690, 24.528776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436096, 32.404446, 24.639864>,  <39.135689, 32.598804, 24.828463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436096, 32.404446, 24.639864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.665169, 32.077160, 24.660107>,  <38.802612, 31.880789, 24.672253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.665169, 32.077160, 24.660107>,  <38.436096, 32.404446, 24.639864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665169, 32.077160, 24.660107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596341, -0.373436, 0.710580,
		-0.562509, -0.437114, -0.701794,
		0.572679, -0.818216, 0.050608,
		38.836971, 31.831696, 24.675289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022335, 31.774685, 24.388220>,  <38.436096, 32.404446, 24.639864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022335, 31.774685, 24.388220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311653, 31.668726, 24.643305>,  <38.485245, 31.605150, 24.796356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311653, 31.668726, 24.643305>,  <38.022335, 31.774685, 24.388220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311653, 31.668726, 24.643305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681558, -0.422331, 0.597591,
		0.111025, -0.866871, -0.486012,
		0.723293, -0.264898, 0.637713,
		38.528641, 31.589256, 24.834618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744816, 31.172195, 24.684607>,  <38.022335, 31.774685, 24.388220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744816, 31.172195, 24.684607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039795, 31.291220, 24.927137>,  <38.216782, 31.362635, 25.072655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.039795, 31.291220, 24.927137>,  <37.744816, 31.172195, 24.684607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039795, 31.291220, 24.927137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566557, -0.216166, 0.795164,
		0.367675, -0.929909, 0.009174,
		0.737447, 0.297559, 0.606325,
		38.261028, 31.380487, 25.109035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755421, 30.693253, 25.177336>,  <37.744816, 31.172195, 24.684607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755421, 30.693253, 25.177336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940395, 31.005812, 25.344942>,  <38.051380, 31.193346, 25.445505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.940395, 31.005812, 25.344942>,  <37.755421, 30.693253, 25.177336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940395, 31.005812, 25.344942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334465, -0.283933, 0.898618,
		0.821149, -0.555699, 0.130049,
		0.462436, 0.781397, 0.419014,
		38.079124, 31.240231, 25.470646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889538, 30.450941, 25.852983>,  <37.755421, 30.693253, 25.177336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889538, 30.450941, 25.852983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.935452, 30.846514, 25.890587>,  <37.963001, 31.083857, 25.913149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.935452, 30.846514, 25.890587>,  <37.889538, 30.450941, 25.852983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935452, 30.846514, 25.890587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339547, -0.049874, 0.939266,
		0.933559, -0.139734, 0.330065,
		0.114786, 0.988932, 0.094006,
		37.969887, 31.143194, 25.918789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264786, 30.563951, 26.445419>,  <37.889538, 30.450941, 25.852983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264786, 30.563951, 26.445419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.062283, 30.902859, 26.381117>,  <37.940781, 31.106203, 26.342535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.062283, 30.902859, 26.381117>,  <38.264786, 30.563951, 26.445419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062283, 30.902859, 26.381117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292697, 0.006530, 0.956183,
		0.811191, 0.531129, 0.244686,
		-0.506259, 0.847266, -0.160757,
		37.910404, 31.157038, 26.332890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348904, 31.040827, 27.074762>,  <38.264786, 30.563951, 26.445419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348904, 31.040827, 27.074762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.030064, 31.194597, 26.888496>,  <37.838760, 31.286860, 26.776737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.030064, 31.194597, 26.888496>,  <38.348904, 31.040827, 27.074762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030064, 31.194597, 26.888496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425165, 0.190302, 0.884884,
		0.428790, 0.903327, 0.011755,
		-0.797103, 0.384427, -0.465663,
		37.790932, 31.309925, 26.748796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198322, 31.647247, 27.393061>,  <38.348904, 31.040827, 27.074762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198322, 31.647247, 27.393061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847881, 31.561012, 27.220568>,  <37.637615, 31.509272, 27.117073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.847881, 31.561012, 27.220568>,  <38.198322, 31.647247, 27.393061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847881, 31.561012, 27.220568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471424, 0.195715, 0.859916,
		-0.100990, 0.956670, -0.273101,
		-0.876105, -0.215589, -0.431231,
		37.585049, 31.496336, 27.091198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766567, 32.074760, 27.575577>,  <38.198322, 31.647247, 27.393061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766567, 32.074760, 27.575577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509117, 31.785976, 27.473970>,  <37.354649, 31.612705, 27.413006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509117, 31.785976, 27.473970>,  <37.766567, 32.074760, 27.575577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509117, 31.785976, 27.473970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454700, 0.093737, 0.885698,
		-0.615628, 0.685556, -0.388607,
		-0.643623, -0.721960, -0.254015,
		37.316029, 31.569389, 27.397766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147324, 32.212776, 27.922003>,  <37.766567, 32.074760, 27.575577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147324, 32.212776, 27.922003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110939, 31.831404, 27.806982>,  <37.089108, 31.602579, 27.737970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110939, 31.831404, 27.806982>,  <37.147324, 32.212776, 27.922003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110939, 31.831404, 27.806982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540292, -0.195311, 0.818498,
		-0.836547, 0.229812, -0.497368,
		-0.090959, -0.953436, -0.287553,
		37.083652, 31.545372, 27.720716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469311, 32.059315, 27.976295>,  <37.147324, 32.212776, 27.922003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469311, 32.059315, 27.976295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.680798, 31.720972, 28.004551>,  <36.807690, 31.517967, 28.021503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.680798, 31.720972, 28.004551>,  <36.469311, 32.059315, 27.976295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680798, 31.720972, 28.004551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405391, -0.178526, 0.896541,
		-0.745734, -0.502649, -0.437292,
		0.528714, -0.845856, 0.070636,
		36.839413, 31.467215, 28.025742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972385, 31.574600, 28.287054>,  <36.469311, 32.059315, 27.976295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972385, 31.574600, 28.287054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.348484, 31.456106, 28.354204>,  <36.574142, 31.385010, 28.394495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.348484, 31.456106, 28.354204>,  <35.972385, 31.574600, 28.287054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348484, 31.456106, 28.354204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230362, -0.190360, 0.954304,
		-0.250745, -0.935952, -0.247227,
		0.940245, -0.296239, 0.167876,
		36.630558, 31.367235, 28.404568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862202, 31.178923, 28.840641>,  <35.972385, 31.574600, 28.287054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862202, 31.178923, 28.840641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.260365, 31.214869, 28.853802>,  <36.499264, 31.236435, 28.861698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.260365, 31.214869, 28.853802>,  <35.862202, 31.178923, 28.840641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260365, 31.214869, 28.853802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007807, -0.266391, 0.963833,
		0.095377, -0.959667, -0.264467,
		0.995411, 0.089863, 0.032900,
		36.558987, 31.241827, 28.863672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133900, 30.551380, 29.186169>,  <35.862202, 31.178923, 28.840641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133900, 30.551380, 29.186169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.412243, 30.838263, 29.201141>,  <36.579247, 31.010393, 29.210125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.412243, 30.838263, 29.201141>,  <36.133900, 30.551380, 29.186169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412243, 30.838263, 29.201141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118176, -0.165753, 0.979061,
		0.708393, -0.676860, -0.200097,
		0.695854, 0.717207, 0.037429,
		36.620998, 31.053425, 29.212370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571289, 30.293989, 29.736511>,  <36.133900, 30.551380, 29.186169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571289, 30.293989, 29.736511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.671181, 30.680948, 29.719667>,  <36.731117, 30.913124, 29.709560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.671181, 30.680948, 29.719667>,  <36.571289, 30.293989, 29.736511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671181, 30.680948, 29.719667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099956, 0.017501, 0.994838,
		0.963142, -0.252651, -0.092327,
		0.249731, 0.967399, -0.042110,
		36.746101, 30.971169, 29.707035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028690, 30.283573, 30.271339>,  <36.571289, 30.293989, 29.736511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028690, 30.283573, 30.271339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927502, 30.663246, 30.196444>,  <36.866791, 30.891050, 30.151506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927502, 30.663246, 30.196444>,  <37.028690, 30.283573, 30.271339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927502, 30.663246, 30.196444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011172, 0.190657, 0.981593,
		0.967410, 0.250405, -0.037626,
		-0.252970, 0.949182, -0.187241,
		36.851612, 30.948000, 30.140270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503052, 30.752474, 30.551819>,  <37.028690, 30.283573, 30.271339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503052, 30.752474, 30.551819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.173218, 30.975193, 30.511744>,  <36.975319, 31.108826, 30.487698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.173218, 30.975193, 30.511744>,  <37.503052, 30.752474, 30.551819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173218, 30.975193, 30.511744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009570, 0.163341, 0.986523,
		0.565661, 0.814428, -0.129359,
		-0.824582, 0.556800, -0.100190,
		36.925842, 31.142233, 30.481688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625229, 31.259314, 31.017975>,  <37.503052, 30.752474, 30.551819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625229, 31.259314, 31.017975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.232182, 31.218874, 30.955694>,  <36.996353, 31.194611, 30.918325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.232182, 31.218874, 30.955694>,  <37.625229, 31.259314, 31.017975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.232182, 31.218874, 30.955694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161123, 0.047829, 0.985775,
		-0.092212, 0.993726, -0.063287,
		-0.982617, -0.101097, -0.155702,
		36.937397, 31.188545, 30.908983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382179, 31.662136, 31.502174>,  <37.625229, 31.259314, 31.017975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382179, 31.662136, 31.502174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.057068, 31.445873, 31.415380>,  <36.862003, 31.316114, 31.363304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.057068, 31.445873, 31.415380>,  <37.382179, 31.662136, 31.502174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057068, 31.445873, 31.415380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343892, 0.144612, 0.927807,
		-0.470248, 0.828719, -0.303465,
		-0.812776, -0.540659, -0.216986,
		36.813236, 31.283676, 31.350285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794949, 31.141859, 31.794327>,  <37.382179, 31.662136, 31.502174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794949, 31.141859, 31.794327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.080307, 31.183607, 32.071503>,  <38.251522, 31.208656, 32.237808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.080307, 31.183607, 32.071503>,  <37.794949, 31.141859, 31.794327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080307, 31.183607, 32.071503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517709, 0.587924, -0.621549,
		-0.472268, 0.802155, 0.365391,
		0.713401, 0.104372, 0.692940,
		38.294327, 31.214918, 32.279385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982700, 31.901049, 31.991053>,  <37.794949, 31.141859, 31.794327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982700, 31.901049, 31.991053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.279579, 31.637421, 32.039673>,  <38.457706, 31.479244, 32.068844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.279579, 31.637421, 32.039673>,  <37.982700, 31.901049, 31.991053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279579, 31.637421, 32.039673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503065, 0.428044, -0.750802,
		0.442800, 0.618391, 0.649247,
		0.742195, -0.659068, 0.121553,
		38.502239, 31.439701, 32.076138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625710, 32.255898, 31.802860>,  <37.982700, 31.901049, 31.991053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625710, 32.255898, 31.802860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756927, 31.879250, 31.772556>,  <38.835659, 31.653261, 31.754374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.756927, 31.879250, 31.772556>,  <38.625710, 32.255898, 31.802860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756927, 31.879250, 31.772556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625128, 0.276506, -0.729903,
		0.708240, 0.192080, 0.679339,
		0.328042, -0.941621, -0.075758,
		38.855339, 31.596764, 31.749828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402077, 32.282364, 31.782135>,  <38.625710, 32.255898, 31.802860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402077, 32.282364, 31.782135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.285343, 31.922514, 31.652203>,  <39.215302, 31.706604, 31.574244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.285343, 31.922514, 31.652203>,  <39.402077, 32.282364, 31.782135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285343, 31.922514, 31.652203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692521, 0.035511, -0.720523,
		0.659734, -0.435223, 0.612644,
		-0.291832, -0.899622, -0.324829,
		39.197792, 31.652628, 31.554754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061909, 31.969114, 31.533224>,  <39.402077, 32.282364, 31.782135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061909, 31.969114, 31.533224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.790447, 31.716473, 31.383293>,  <39.627571, 31.564888, 31.293335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.790447, 31.716473, 31.383293>,  <40.061909, 31.969114, 31.533224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790447, 31.716473, 31.383293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631629, -0.241484, -0.736702,
		0.374791, -0.736721, 0.562826,
		-0.678658, -0.631607, -0.374829,
		39.586849, 31.526991, 31.270844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426666, 31.253580, 31.276022>,  <40.061909, 31.969114, 31.533224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426666, 31.253580, 31.276022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078754, 31.314074, 31.088148>,  <39.870007, 31.350370, 30.975424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078754, 31.314074, 31.088148>,  <40.426666, 31.253580, 31.276022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078754, 31.314074, 31.088148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444620, -0.172576, -0.878937,
		-0.213980, -0.973317, 0.082863,
		-0.869785, 0.151233, -0.469684,
		39.817818, 31.359444, 30.947243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423954, 30.727217, 30.781420>,  <40.426666, 31.253580, 31.276022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423954, 30.727217, 30.781420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.173141, 31.010418, 30.651461>,  <40.022652, 31.180338, 30.573486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.173141, 31.010418, 30.651461>,  <40.423954, 30.727217, 30.781420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173141, 31.010418, 30.651461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412698, -0.051811, -0.909393,
		-0.660687, -0.704306, -0.259704,
		-0.627035, 0.708003, -0.324896,
		39.985031, 31.222818, 30.553991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146534, 30.502804, 30.129936>,  <40.423954, 30.727217, 30.781420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146534, 30.502804, 30.129936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.105412, 30.900669, 30.133457>,  <40.080738, 31.139389, 30.135571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.105412, 30.900669, 30.133457>,  <40.146534, 30.502804, 30.129936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105412, 30.900669, 30.133457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491955, 0.058534, -0.868651,
		-0.864530, -0.084971, -0.495347,
		-0.102804, 0.994663, 0.008802,
		40.074570, 31.199068, 30.136097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271126, 30.705931, 29.407518>,  <40.146534, 30.502804, 30.129936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271126, 30.705931, 29.407518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.289963, 31.055073, 29.601797>,  <40.301266, 31.264559, 29.718365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.289963, 31.055073, 29.601797>,  <40.271126, 30.705931, 29.407518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289963, 31.055073, 29.601797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478614, 0.407070, -0.777961,
		-0.876761, 0.269102, -0.398589,
		0.047097, 0.872856, 0.485699,
		40.304092, 31.316929, 29.747507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923439, 31.167469, 28.986650>,  <40.271126, 30.705931, 29.407518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923439, 31.167469, 28.986650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.171902, 31.372208, 29.224030>,  <40.320980, 31.495050, 29.366457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.171902, 31.372208, 29.224030>,  <39.923439, 31.167469, 28.986650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171902, 31.372208, 29.224030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533857, 0.278009, -0.798566,
		-0.573728, 0.812848, -0.100567,
		0.621155, 0.511848, 0.593446,
		40.358250, 31.525763, 29.402063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847237, 31.815815, 28.744804>,  <39.923439, 31.167469, 28.986650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847237, 31.815815, 28.744804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.199589, 31.790491, 28.932440>,  <40.410999, 31.775297, 29.045021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.199589, 31.790491, 28.932440>,  <39.847237, 31.815815, 28.744804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199589, 31.790491, 28.932440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454535, 0.389699, -0.800958,
		-0.132093, 0.918764, 0.372055,
		0.880880, -0.063311, 0.469086,
		40.463852, 31.771498, 29.073166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160526, 32.469326, 28.717813>,  <39.847237, 31.815815, 28.744804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160526, 32.469326, 28.717813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.459702, 32.207504, 28.761885>,  <40.639206, 32.050411, 28.788326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.459702, 32.207504, 28.761885>,  <40.160526, 32.469326, 28.717813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459702, 32.207504, 28.761885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340820, 0.236280, -0.909952,
		0.569582, 0.718142, 0.399810,
		0.747943, -0.654556, 0.110176,
		40.684086, 32.011139, 28.794937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687668, 32.801060, 28.419052>,  <40.160526, 32.469326, 28.717813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687668, 32.801060, 28.419052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.783859, 32.413643, 28.444656>,  <40.841576, 32.181194, 28.460018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.783859, 32.413643, 28.444656>,  <40.687668, 32.801060, 28.419052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783859, 32.413643, 28.444656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613122, 0.100445, -0.783577,
		0.752497, 0.227679, 0.617989,
		0.240478, -0.968542, 0.064010,
		40.856003, 32.123081, 28.463860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399792, 32.674442, 28.246895>,  <40.687668, 32.801060, 28.419052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399792, 32.674442, 28.246895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.278671, 32.298023, 28.186567>,  <41.206001, 32.072174, 28.150372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.278671, 32.298023, 28.186567>,  <41.399792, 32.674442, 28.246895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278671, 32.298023, 28.186567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664007, -0.094788, -0.741694,
		0.683672, -0.324728, 0.653563,
		-0.302799, -0.941046, -0.150817,
		41.187832, 32.015709, 28.141321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940033, 32.488174, 28.056559>,  <41.399792, 32.674442, 28.246895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940033, 32.488174, 28.056559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.686340, 32.194862, 27.958536>,  <41.534126, 32.018875, 27.899723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.686340, 32.194862, 27.958536>,  <41.940033, 32.488174, 28.056559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686340, 32.194862, 27.958536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567008, -0.225673, -0.792195,
		0.525598, -0.641384, 0.558904,
		-0.634230, -0.733280, -0.245057,
		41.496071, 31.974878, 27.885019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353603, 31.862305, 27.991817>,  <41.940033, 32.488174, 28.056559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353603, 31.862305, 27.991817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.012810, 31.878054, 27.782984>,  <41.808334, 31.887503, 27.657684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.012810, 31.878054, 27.782984>,  <42.353603, 31.862305, 27.991817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012810, 31.878054, 27.782984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512044, -0.145378, -0.846567,
		-0.109229, -0.988592, 0.103701,
		-0.851985, 0.039370, -0.522083,
		41.757214, 31.889864, 27.626358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504189, 31.347065, 27.492130>,  <42.353603, 31.862305, 27.991817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504189, 31.347065, 27.492130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.203514, 31.583443, 27.374992>,  <42.023109, 31.725269, 27.304710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.203514, 31.583443, 27.374992>,  <42.504189, 31.347065, 27.492130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203514, 31.583443, 27.374992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306319, -0.080406, -0.948527,
		-0.584072, -0.802696, -0.120577,
		-0.751684, 0.590943, -0.292844,
		41.978008, 31.760725, 27.287140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320354, 31.049898, 26.787699>,  <42.504189, 31.347065, 27.492130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320354, 31.049898, 26.787699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.136723, 31.405018, 26.774670>,  <42.026543, 31.618090, 26.766851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.136723, 31.405018, 26.774670>,  <42.320354, 31.049898, 26.787699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136723, 31.405018, 26.774670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123605, 0.027522, -0.991950,
		-0.879754, -0.459410, -0.122371,
		-0.459079, 0.887798, -0.032573,
		41.999001, 31.671358, 26.764898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.665367, 31.123856, 26.142109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.727699, 31.502419, 26.255270>,  <41.765099, 31.729555, 26.323166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.727699, 31.502419, 26.255270>,  <41.665367, 31.123856, 26.142109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727699, 31.502419, 26.255270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013207, 0.284379, -0.958621,
		-0.987696, 0.153118, 0.031815,
		0.155830, 0.946406, 0.282902,
		41.774448, 31.786341, 26.340141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142372, 31.555918, 25.827522>,  <41.665367, 31.123856, 26.142109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142372, 31.555918, 25.827522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.429882, 31.823456, 25.903425>,  <41.602390, 31.983978, 25.948967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.429882, 31.823456, 25.903425>,  <41.142372, 31.555918, 25.827522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429882, 31.823456, 25.903425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027059, 0.245815, -0.968939,
		-0.694714, 0.701586, 0.158588,
		0.718777, 0.668844, 0.189755,
		41.645515, 32.024109, 25.960352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012131, 32.109268, 25.460922>,  <41.142372, 31.555918, 25.827522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012131, 32.109268, 25.460922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.406460, 32.139191, 25.520987>,  <41.643059, 32.157146, 25.557026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.406460, 32.139191, 25.520987>,  <41.012131, 32.109268, 25.460922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406460, 32.139191, 25.520987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111327, 0.377892, -0.919132,
		-0.125505, 0.922822, 0.364207,
		0.985827, 0.074810, 0.150163,
		41.702209, 32.161633, 25.566036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126659, 32.851154, 25.296297>,  <41.012131, 32.109268, 25.460922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126659, 32.851154, 25.296297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.484783, 32.673580, 25.281681>,  <41.699657, 32.567036, 25.272911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.484783, 32.673580, 25.281681>,  <41.126659, 32.851154, 25.296297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484783, 32.673580, 25.281681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262050, 0.591265, -0.762716,
		0.360203, 0.673293, 0.645701,
		0.895312, -0.443939, -0.036539,
		41.753376, 32.540398, 25.270720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555191, 33.389938, 25.181173>,  <41.126659, 32.851154, 25.296297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555191, 33.389938, 25.181173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.805103, 33.097317, 25.072008>,  <41.955051, 32.921745, 25.006510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.805103, 33.097317, 25.072008>,  <41.555191, 33.389938, 25.181173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805103, 33.097317, 25.072008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282839, 0.537837, -0.794187,
		0.727770, 0.419004, 0.542942,
		0.624782, -0.731551, -0.272911,
		41.992538, 32.877850, 24.990135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174892, 33.752846, 24.963625>,  <41.555191, 33.389938, 25.181173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174892, 33.752846, 24.963625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.212467, 33.391842, 24.795506>,  <42.235012, 33.175240, 24.694633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.212467, 33.391842, 24.795506>,  <42.174892, 33.752846, 24.963625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212467, 33.391842, 24.795506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456412, 0.414228, -0.787467,
		0.884796, -0.117856, 0.450828,
		0.093937, -0.902511, -0.420298,
		42.240650, 33.121090, 24.669416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905521, 33.636021, 24.719233>,  <42.174892, 33.752846, 24.963625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905521, 33.636021, 24.719233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.673759, 33.386806, 24.509047>,  <42.534702, 33.237278, 24.382935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.673759, 33.386806, 24.509047>,  <42.905521, 33.636021, 24.719233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673759, 33.386806, 24.509047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546059, 0.181874, -0.817766,
		0.605065, -0.760755, 0.234835,
		-0.579410, -0.623035, -0.525463,
		42.499935, 33.199894, 24.351408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436840, 33.244453, 24.351992>,  <42.905521, 33.636021, 24.719233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436840, 33.244453, 24.351992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.086872, 33.201168, 24.163179>,  <42.876892, 33.175198, 24.049892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.086872, 33.201168, 24.163179>,  <43.436840, 33.244453, 24.351992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086872, 33.201168, 24.163179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448388, 0.187203, -0.874015,
		0.182970, -0.976340, -0.115252,
		-0.874911, -0.108241, -0.472032,
		42.824398, 33.168705, 24.021570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455151, 32.741772, 23.873693>,  <43.436840, 33.244453, 24.351992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455151, 32.741772, 23.873693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.170006, 32.989147, 23.741421>,  <42.998917, 33.137573, 23.662056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.170006, 32.989147, 23.741421>,  <43.455151, 32.741772, 23.873693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170006, 32.989147, 23.741421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567579, 0.231816, -0.790009,
		-0.411918, -0.750859, -0.516269,
		-0.712865, 0.618443, -0.330683,
		42.956146, 33.174679, 23.642216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.514847, 32.630096, 23.271315>,  <43.455151, 32.741772, 23.873693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.514847, 32.630096, 23.271315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.297855, 32.966049, 23.278383>,  <43.167660, 33.167622, 23.282625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.297855, 32.966049, 23.278383>,  <43.514847, 32.630096, 23.271315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297855, 32.966049, 23.278383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396735, 0.274680, -0.875872,
		-0.740486, -0.468129, -0.482220,
		-0.542478, 0.839885, 0.017673,
		43.135113, 33.218014, 23.283686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367847, 32.735378, 22.572615>,  <43.514847, 32.630096, 23.271315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367847, 32.735378, 22.572615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.269112, 33.091911, 22.724716>,  <43.209869, 33.305832, 22.815977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.269112, 33.091911, 22.724716>,  <43.367847, 32.735378, 22.572615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269112, 33.091911, 22.724716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381084, 0.450064, -0.807599,
		-0.890980, -0.054439, -0.450768,
		-0.246840, 0.891335, 0.380252,
		43.195061, 33.359310, 22.838791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.029018, 33.124184, 22.047724>,  <43.367847, 32.735378, 22.572615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.029018, 33.124184, 22.047724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.200161, 33.384941, 22.298157>,  <43.302845, 33.541393, 22.448416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.200161, 33.384941, 22.298157>,  <43.029018, 33.124184, 22.047724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200161, 33.384941, 22.298157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453534, 0.444324, -0.772582,
		-0.781822, 0.614504, -0.105547,
		0.427857, 0.651891, 0.626081,
		43.328518, 33.580509, 22.485981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007275, 33.708717, 21.634033>,  <43.029018, 33.124184, 22.047724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007275, 33.708717, 21.634033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.283733, 33.807705, 21.905645>,  <43.449608, 33.867096, 22.068613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.283733, 33.807705, 21.905645>,  <43.007275, 33.708717, 21.634033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283733, 33.807705, 21.905645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472338, 0.556454, -0.683561,
		-0.547007, 0.793170, 0.267702,
		0.691144, 0.247466, 0.679029,
		43.491077, 33.881947, 22.109354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137512, 34.429386, 21.557880>,  <43.007275, 33.708717, 21.634033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137512, 34.429386, 21.557880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.466591, 34.288486, 21.736361>,  <43.664036, 34.203945, 21.843449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.466591, 34.288486, 21.736361>,  <43.137512, 34.429386, 21.557880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466591, 34.288486, 21.736361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566029, 0.434672, -0.700479,
		0.052795, 0.828841, 0.556987,
		0.822693, -0.352253, 0.446200,
		43.713398, 34.182812, 21.870220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.628403, 35.015831, 21.541662>,  <43.137512, 34.429386, 21.557880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.628403, 35.015831, 21.541662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.833473, 34.677670, 21.601608>,  <43.956516, 34.474773, 21.637577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.833473, 34.677670, 21.601608>,  <43.628403, 35.015831, 21.541662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833473, 34.677670, 21.601608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652222, 0.269958, -0.708328,
		0.558364, 0.460889, 0.689790,
		0.512676, -0.845401, 0.149867,
		43.987274, 34.424049, 21.646568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253605, 35.364937, 21.723499>,  <43.628403, 35.015831, 21.541662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253605, 35.364937, 21.723499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.341560, 34.985016, 21.634480>,  <44.394333, 34.757065, 21.581068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.341560, 34.985016, 21.634480>,  <44.253605, 35.364937, 21.723499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.341560, 34.985016, 21.634480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788113, 0.307411, -0.533269,
		0.574913, -0.058135, 0.816146,
		0.219891, -0.949799, -0.222552,
		44.407528, 34.700077, 21.567715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.977154, 35.094368, 21.985909>,  <44.253605, 35.364937, 21.723499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.977154, 35.094368, 21.985909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.883221, 34.872261, 21.666777>,  <44.826862, 34.738995, 21.475298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.883221, 34.872261, 21.666777>,  <44.977154, 35.094368, 21.985909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883221, 34.872261, 21.666777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894332, 0.198141, -0.401137,
		0.380822, -0.807721, 0.450067,
		-0.234830, -0.555271, -0.797827,
		44.812771, 34.705681, 21.427429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620625, 34.780930, 21.857033>,  <44.977154, 35.094368, 21.985909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620625, 34.780930, 21.857033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.396935, 34.751022, 21.526779>,  <45.262718, 34.733078, 21.328627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.396935, 34.751022, 21.526779>,  <45.620625, 34.780930, 21.857033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.396935, 34.751022, 21.526779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826203, 0.031676, -0.562481,
		0.068209, -0.996698, 0.044061,
		-0.559228, -0.074769, -0.825636,
		45.229168, 34.728592, 21.279089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.951355, 34.274418, 21.499598>,  <45.620625, 34.780930, 21.857033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.951355, 34.274418, 21.499598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.725555, 34.467045, 21.231440>,  <45.590076, 34.582619, 21.070545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.725555, 34.467045, 21.231440>,  <45.951355, 34.274418, 21.499598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.725555, 34.467045, 21.231440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810482, 0.169500, -0.560703,
		-0.156383, -0.859863, -0.485983,
		-0.564502, 0.481565, -0.670397,
		45.556206, 34.611515, 21.030321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328140, 34.167702, 20.853176>,  <45.951355, 34.274418, 21.499598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328140, 34.167702, 20.853176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.054428, 34.445583, 20.764505>,  <45.890202, 34.612312, 20.711302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.054428, 34.445583, 20.764505>,  <46.328140, 34.167702, 20.853176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054428, 34.445583, 20.764505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574583, 0.326475, -0.750512,
		-0.449013, -0.640934, -0.622568,
		-0.684282, 0.694707, -0.221678,
		45.849144, 34.653996, 20.698002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195873, 34.206257, 20.038639>,  <46.328140, 34.167702, 20.853176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195873, 34.206257, 20.038639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.079247, 34.556126, 20.193523>,  <46.009270, 34.766048, 20.286453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.079247, 34.556126, 20.193523>,  <46.195873, 34.206257, 20.038639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.079247, 34.556126, 20.193523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471186, 0.483609, -0.737635,
		-0.832450, -0.032620, -0.553139,
		-0.291565, 0.874676, 0.387210,
		45.991776, 34.818527, 20.309687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792664, 34.446835, 19.594049>,  <46.195873, 34.206257, 20.038639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792664, 34.446835, 19.594049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.869286, 34.782845, 19.797094>,  <45.915260, 34.984451, 19.918921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.869286, 34.782845, 19.797094>,  <45.792664, 34.446835, 19.594049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869286, 34.782845, 19.797094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212561, 0.469409, -0.857014,
		-0.958187, 0.272068, -0.088636,
		0.191560, 0.840021, 0.507612,
		45.926754, 35.034851, 19.949379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.356644, 35.065014, 19.336203>,  <45.792664, 34.446835, 19.594049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.356644, 35.065014, 19.336203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.713745, 35.165131, 19.486057>,  <45.928005, 35.225201, 19.575970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.713745, 35.165131, 19.486057>,  <45.356644, 35.065014, 19.336203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713745, 35.165131, 19.486057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269386, 0.369985, -0.889125,
		-0.361147, 0.894688, 0.262880,
		0.892751, 0.250288, 0.374635,
		45.981571, 35.240215, 19.598448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696838, 35.037193, 18.879150>,  <45.356644, 35.065014, 19.336203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696838, 35.037193, 18.879150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.550957, 35.303600, 18.618872>,  <44.463428, 35.463444, 18.462704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.550957, 35.303600, 18.618872>,  <44.696838, 35.037193, 18.879150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.550957, 35.303600, 18.618872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906459, -0.094177, 0.411658,
		0.212891, 0.739965, 0.638066,
		-0.364704, 0.666019, -0.650699,
		44.441547, 35.503407, 18.423662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211452, 35.555378, 19.341322>,  <44.696838, 35.037193, 18.879150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211452, 35.555378, 19.341322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.122887, 35.527931, 18.952217>,  <44.069748, 35.511463, 18.718754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.122887, 35.527931, 18.952217>,  <44.211452, 35.555378, 19.341322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122887, 35.527931, 18.952217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968701, -0.099322, 0.227496,
		-0.112226, 0.992687, -0.044475,
		-0.221415, -0.068614, -0.972763,
		44.056461, 35.507347, 18.660389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.548065, 35.813278, 19.318472>,  <44.211452, 35.555378, 19.341322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.548065, 35.813278, 19.318472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.569519, 35.640442, 18.958378>,  <43.582390, 35.536739, 18.742321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.569519, 35.640442, 18.958378>,  <43.548065, 35.813278, 19.318472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.569519, 35.640442, 18.958378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993729, -0.111678, -0.005604,
		-0.098115, 0.894889, -0.435370,
		0.053636, -0.432090, -0.900234,
		43.585609, 35.510815, 18.688307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.016922, 36.119835, 19.019234>,  <43.548065, 35.813278, 19.318472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.016922, 36.119835, 19.019234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.114933, 35.785206, 18.823229>,  <43.173740, 35.584431, 18.705626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.114933, 35.785206, 18.823229>,  <43.016922, 36.119835, 19.019234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114933, 35.785206, 18.823229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864149, -0.417595, 0.280822,
		-0.439554, 0.354635, -0.825243,
		0.245028, -0.836569, -0.490013,
		43.188442, 35.534233, 18.676226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428440, 35.967770, 18.671642>,  <43.016922, 36.119835, 19.019234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428440, 35.967770, 18.671642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.646057, 35.644245, 18.760941>,  <42.776627, 35.450130, 18.814520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.646057, 35.644245, 18.760941>,  <42.428440, 35.967770, 18.671642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.646057, 35.644245, 18.760941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765292, -0.369239, 0.527249,
		-0.344009, -0.457703, -0.819857,
		0.544047, -0.808808, 0.223255,
		42.809269, 35.401600, 18.827915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012897, 35.425060, 18.525492>,  <42.428440, 35.967770, 18.671642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012897, 35.425060, 18.525492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.289883, 35.227501, 18.735847>,  <42.456074, 35.108967, 18.862061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.289883, 35.227501, 18.735847>,  <42.012897, 35.425060, 18.525492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289883, 35.227501, 18.735847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719526, -0.526035, 0.453398,
		0.052703, -0.692352, -0.719633,
		0.692463, -0.493899, 0.525888,
		42.497623, 35.079330, 18.893614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906231, 34.667480, 18.544144>,  <42.012897, 35.425060, 18.525492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906231, 34.667480, 18.544144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.106743, 34.760025, 18.877657>,  <42.227051, 34.815552, 19.077765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.106743, 34.760025, 18.877657>,  <41.906231, 34.667480, 18.544144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106743, 34.760025, 18.877657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690740, -0.473364, 0.546631,
		0.521151, -0.849941, -0.077477,
		0.501279, 0.231361, 0.833781,
		42.257126, 34.829433, 19.127790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677223, 34.146488, 18.982290>,  <41.906231, 34.667480, 18.544144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677223, 34.146488, 18.982290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.857323, 34.402973, 19.230844>,  <41.965382, 34.556866, 19.379976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.857323, 34.402973, 19.230844>,  <41.677223, 34.146488, 18.982290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857323, 34.402973, 19.230844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453809, -0.435004, 0.777708,
		0.768984, -0.632150, 0.095131,
		0.450246, 0.641216, 0.621386,
		41.992397, 34.595337, 19.417261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.960770, 33.826225, 19.549667>,  <41.677223, 34.146488, 18.982290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.960770, 33.826225, 19.549667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.939133, 34.187862, 19.719231>,  <41.926151, 34.404842, 19.820969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.939133, 34.187862, 19.719231>,  <41.960770, 33.826225, 19.549667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939133, 34.187862, 19.719231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320312, -0.417804, 0.850200,
		0.945766, -0.089792, 0.312192,
		-0.054094, 0.904089, 0.423907,
		41.922905, 34.459087, 19.846403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346622, 33.806004, 20.184076>,  <41.960770, 33.826225, 19.549667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346622, 33.806004, 20.184076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.093220, 34.114128, 20.213171>,  <41.941177, 34.299004, 20.230629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.093220, 34.114128, 20.213171>,  <42.346622, 33.806004, 20.184076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093220, 34.114128, 20.213171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401785, -0.407852, 0.819894,
		0.661237, 0.490186, 0.567877,
		-0.633510, 0.770308, 0.072738,
		41.903168, 34.345219, 20.234993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361519, 34.029850, 20.831305>,  <42.346622, 33.806004, 20.184076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361519, 34.029850, 20.831305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.002754, 34.159306, 20.710766>,  <41.787495, 34.236980, 20.638443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.002754, 34.159306, 20.710766>,  <42.361519, 34.029850, 20.831305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002754, 34.159306, 20.710766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388508, -0.251198, 0.886545,
		0.211225, 0.912226, 0.351039,
		-0.896909, 0.323641, -0.301348,
		41.733681, 34.256397, 20.620361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059856, 34.306950, 21.416117>,  <42.361519, 34.029850, 20.831305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059856, 34.306950, 21.416117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.744419, 34.240753, 21.179224>,  <41.555157, 34.201035, 21.037088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.744419, 34.240753, 21.179224>,  <42.059856, 34.306950, 21.416117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744419, 34.240753, 21.179224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487401, -0.418989, 0.766087,
		-0.374918, 0.892783, 0.249750,
		-0.788591, -0.165491, -0.592230,
		41.507843, 34.191105, 21.001554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566433, 34.470142, 21.823912>,  <42.059856, 34.306950, 21.416117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566433, 34.470142, 21.823912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.370617, 34.260231, 21.545355>,  <41.253128, 34.134285, 21.378222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.370617, 34.260231, 21.545355>,  <41.566433, 34.470142, 21.823912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370617, 34.260231, 21.545355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572767, -0.408663, 0.710586,
		-0.657490, 0.746728, -0.100521,
		-0.489535, -0.524778, -0.696393,
		41.223755, 34.102798, 21.336437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927864, 34.284420, 22.153551>,  <41.566433, 34.470142, 21.823912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927864, 34.284420, 22.153551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.959549, 34.028683, 21.847618>,  <40.978558, 33.875240, 21.664059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.959549, 34.028683, 21.847618>,  <40.927864, 34.284420, 22.153551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959549, 34.028683, 21.847618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457276, -0.705062, 0.542020,
		-0.885790, 0.306807, -0.348203,
		0.079209, -0.639341, -0.764833,
		40.983311, 33.836880, 21.618168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214249, 34.042141, 21.961098>,  <40.927864, 34.284420, 22.153551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214249, 34.042141, 21.961098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.500896, 33.775642, 21.878571>,  <40.672886, 33.615742, 21.829054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.500896, 33.775642, 21.878571>,  <40.214249, 34.042141, 21.961098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500896, 33.775642, 21.878571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388727, -0.627136, 0.674976,
		-0.579091, -0.403500, -0.708408,
		0.716620, -0.666250, -0.206317,
		40.715881, 33.575768, 21.816675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855507, 33.436989, 22.037783>,  <40.214249, 34.042141, 21.961098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855507, 33.436989, 22.037783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.227837, 33.291092, 22.028652>,  <40.451237, 33.203552, 22.023174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.227837, 33.291092, 22.028652>,  <39.855507, 33.436989, 22.037783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227837, 33.291092, 22.028652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243664, -0.665962, 0.705069,
		-0.272370, -0.650737, -0.708771,
		0.930829, -0.364742, -0.022827,
		40.507084, 33.181667, 22.021805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845734, 32.719193, 21.962345>,  <39.855507, 33.436989, 22.037783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845734, 32.719193, 21.962345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.187622, 32.818516, 22.144682>,  <40.392757, 32.878109, 22.254084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.187622, 32.818516, 22.144682>,  <39.845734, 32.719193, 21.962345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187622, 32.818516, 22.144682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265499, -0.545485, 0.794957,
		0.446046, -0.800494, -0.400315,
		0.854724, 0.248304, 0.455842,
		40.444038, 32.893005, 22.281435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153511, 32.130585, 22.105553>,  <39.845734, 32.719193, 21.962345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153511, 32.130585, 22.105553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.343552, 32.372551, 22.361164>,  <40.457577, 32.517731, 22.514532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.343552, 32.372551, 22.361164>,  <40.153511, 32.130585, 22.105553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343552, 32.372551, 22.361164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289993, -0.578016, 0.762759,
		0.830774, -0.547700, -0.099193,
		0.475099, 0.604915, 0.639030,
		40.486080, 32.554024, 22.552874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520035, 31.701036, 22.570276>,  <40.153511, 32.130585, 22.105553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520035, 31.701036, 22.570276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.439140, 32.055439, 22.737175>,  <40.390602, 32.268082, 22.837315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.439140, 32.055439, 22.737175>,  <40.520035, 31.701036, 22.570276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439140, 32.055439, 22.737175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536150, -0.456698, 0.709909,
		0.819538, -0.080135, 0.567393,
		-0.202239, 0.886005, 0.417246,
		40.378468, 32.321239, 22.862349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717655, 31.638222, 23.288435>,  <40.520035, 31.701036, 22.570276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717655, 31.638222, 23.288435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.456226, 31.940189, 23.266747>,  <40.299370, 32.121368, 23.253733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.456226, 31.940189, 23.266747>,  <40.717655, 31.638222, 23.288435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456226, 31.940189, 23.266747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488952, -0.366457, 0.791603,
		0.577725, 0.543884, 0.608626,
		-0.653575, 0.754917, -0.054222,
		40.260155, 32.166664, 23.250481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678391, 31.918552, 23.967474>,  <40.717655, 31.638222, 23.288435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678391, 31.918552, 23.967474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.336033, 32.030094, 23.793262>,  <40.130619, 32.097019, 23.688736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.336033, 32.030094, 23.793262>,  <40.678391, 31.918552, 23.967474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336033, 32.030094, 23.793262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484006, -0.135276, 0.864545,
		0.182165, 0.950758, 0.250749,
		-0.855893, 0.278854, -0.435530,
		40.079266, 32.113750, 23.662603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.624760, 31.246025, 29.278938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.377342, 31.531477, 29.147404>,  <41.228889, 31.702747, 29.068483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.377342, 31.531477, 29.147404>,  <41.624760, 31.246025, 29.278938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377342, 31.531477, 29.147404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426975, 0.046054, 0.903090,
		0.659615, 0.699009, 0.276216,
		-0.618547, 0.713629, -0.328837,
		41.191780, 31.745565, 29.048752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596935, 31.885189, 29.716639>,  <41.624760, 31.246025, 29.278938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596935, 31.885189, 29.716639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.253658, 31.829163, 29.519100>,  <41.047691, 31.795547, 29.400578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.253658, 31.829163, 29.519100>,  <41.596935, 31.885189, 29.716639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.253658, 31.829163, 29.519100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503502, 0.042405, 0.862953,
		-0.099927, 0.989234, -0.106914,
		-0.858196, -0.140064, -0.493844,
		40.996201, 31.787144, 29.370947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168682, 32.134541, 30.197683>,  <41.596935, 31.885189, 29.716639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168682, 32.134541, 30.197683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.915207, 31.939556, 29.957411>,  <40.763123, 31.822567, 29.813248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.915207, 31.939556, 29.957411>,  <41.168682, 32.134541, 30.197683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915207, 31.939556, 29.957411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727188, 0.110487, 0.677488,
		-0.263878, 0.866129, -0.424487,
		-0.633692, -0.487457, -0.600684,
		40.725098, 31.793320, 29.777206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542065, 32.437637, 30.298750>,  <41.168682, 32.134541, 30.197683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542065, 32.437637, 30.298750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.452915, 32.084545, 30.133287>,  <40.399426, 31.872690, 30.034010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.452915, 32.084545, 30.133287>,  <40.542065, 32.437637, 30.298750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452915, 32.084545, 30.133287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761582, -0.107217, 0.639138,
		-0.608539, 0.457482, -0.648376,
		-0.222877, -0.882731, -0.413656,
		40.386051, 31.819725, 30.009192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807068, 32.468426, 30.298944>,  <40.542065, 32.437637, 30.298750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807068, 32.468426, 30.298944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.905296, 32.084034, 30.248022>,  <39.964233, 31.853397, 30.217468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.905296, 32.084034, 30.248022>,  <39.807068, 32.468426, 30.298944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905296, 32.084034, 30.248022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760704, -0.272438, 0.589158,
		-0.600853, -0.047838, -0.797927,
		0.245569, -0.960983, -0.127305,
		39.978966, 31.795738, 30.209831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156822, 32.098389, 30.092112>,  <39.807068, 32.468426, 30.298944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156822, 32.098389, 30.092112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.401604, 31.827709, 30.255861>,  <39.548473, 31.665302, 30.354111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.401604, 31.827709, 30.255861>,  <39.156822, 32.098389, 30.092112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401604, 31.827709, 30.255861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737670, -0.301699, 0.604004,
		-0.285213, -0.671616, -0.683802,
		0.611961, -0.676690, 0.409383,
		39.585190, 31.624701, 30.378674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763809, 31.536772, 30.231417>,  <39.156822, 32.098389, 30.092112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763809, 31.536772, 30.231417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.087154, 31.491852, 30.462564>,  <39.281162, 31.464899, 30.601254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.087154, 31.491852, 30.462564>,  <38.763809, 31.536772, 30.231417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087154, 31.491852, 30.462564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588634, -0.142268, 0.795782,
		-0.007154, -0.983437, -0.181108,
		0.808368, -0.112299, 0.577868,
		39.329666, 31.458160, 30.635925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656353, 30.942625, 30.567329>,  <38.763809, 31.536772, 30.231417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656353, 30.942625, 30.567329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.934559, 31.124123, 30.790174>,  <39.101482, 31.233021, 30.923882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.934559, 31.124123, 30.790174>,  <38.656353, 30.942625, 30.567329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934559, 31.124123, 30.790174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520690, -0.216008, 0.825968,
		0.495119, -0.864556, 0.086024,
		0.695514, 0.453744, 0.557115,
		39.143211, 31.260246, 30.957310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805439, 30.523298, 31.073755>,  <38.656353, 30.942625, 30.567329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805439, 30.523298, 31.073755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959347, 30.861673, 31.221451>,  <39.051693, 31.064699, 31.310068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.959347, 30.861673, 31.221451>,  <38.805439, 30.523298, 31.073755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959347, 30.861673, 31.221451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417773, -0.197103, 0.886914,
		0.823053, -0.495519, 0.277570,
		0.384773, 0.845938, 0.369241,
		39.074780, 31.115456, 31.332224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148094, 30.330898, 31.711617>,  <38.805439, 30.523298, 31.073755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148094, 30.330898, 31.711617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053951, 30.719646, 31.708103>,  <38.997467, 30.952894, 31.705996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053951, 30.719646, 31.708103>,  <39.148094, 30.330898, 31.711617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053951, 30.719646, 31.708103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334525, -0.072519, 0.939592,
		0.912524, 0.224078, 0.342183,
		-0.235357, 0.971869, -0.008784,
		38.983345, 31.011208, 31.705467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280529, 30.463837, 32.383728>,  <39.148094, 30.330898, 31.711617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280529, 30.463837, 32.383728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.070286, 30.791632, 32.292362>,  <38.944141, 30.988310, 32.237541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.070286, 30.791632, 32.292362>,  <39.280529, 30.463837, 32.383728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070286, 30.791632, 32.292362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361352, 0.028011, 0.932009,
		0.770169, 0.572410, 0.281401,
		-0.525609, 0.819489, -0.228415,
		38.912601, 31.037477, 32.223839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372307, 31.083712, 32.934845>,  <39.280529, 30.463837, 32.383728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372307, 31.083712, 32.934845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.025143, 31.124332, 32.740356>,  <38.816845, 31.148705, 32.623661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.025143, 31.124332, 32.740356>,  <39.372307, 31.083712, 32.934845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025143, 31.124332, 32.740356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496649, -0.161321, 0.852828,
		0.008169, 0.981663, 0.190448,
		-0.867913, 0.101552, -0.486224,
		38.764771, 31.154799, 32.594490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041649, 31.084684, 33.418488>,  <39.372307, 31.083712, 32.934845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041649, 31.084684, 33.418488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.325085, 31.277313, 33.212189>,  <40.495144, 31.392891, 33.088409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.325085, 31.277313, 33.212189>,  <40.041649, 31.084684, 33.418488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325085, 31.277313, 33.212189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693823, 0.342397, -0.633541,
		-0.128507, 0.806754, 0.576744,
		0.708587, 0.481573, -0.515744,
		40.537663, 31.421785, 33.057465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530281, 31.660767, 33.798908>,  <40.041649, 31.084684, 33.418488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530281, 31.660767, 33.798908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.709248, 32.012486, 33.733604>,  <40.816628, 32.223518, 33.694420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.709248, 32.012486, 33.733604>,  <40.530281, 31.660767, 33.798908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709248, 32.012486, 33.733604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512340, -0.102378, 0.852658,
		0.733028, -0.465136, -0.496305,
		0.447413, 0.879299, -0.163262,
		40.843472, 32.276276, 33.684628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028698, 31.891838, 33.329281>,  <40.530281, 31.660767, 33.798908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028698, 31.891838, 33.329281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.094578, 32.245583, 33.503994>,  <40.134106, 32.457829, 33.608822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.094578, 32.245583, 33.503994>,  <40.028698, 31.891838, 33.329281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094578, 32.245583, 33.503994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340831, 0.364526, -0.866577,
		-0.925586, 0.291593, -0.241381,
		0.164698, 0.884361, 0.436784,
		40.143986, 32.510891, 33.635029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701317, 32.349918, 32.981670>,  <40.028698, 31.891838, 33.329281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701317, 32.349918, 32.981670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.987770, 32.576317, 33.145035>,  <40.159641, 32.712154, 33.243053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.987770, 32.576317, 33.145035>,  <39.701317, 32.349918, 32.981670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987770, 32.576317, 33.145035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117501, 0.479038, -0.869894,
		-0.688000, 0.670951, 0.276552,
		0.716136, 0.565992, 0.408415,
		40.202610, 32.746113, 33.267559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591923, 32.979137, 32.619812>,  <39.701317, 32.349918, 32.981670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591923, 32.979137, 32.619812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.938728, 33.044773, 32.808010>,  <40.146812, 33.084156, 32.920929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.938728, 33.044773, 32.808010>,  <39.591923, 32.979137, 32.619812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938728, 33.044773, 32.808010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265576, 0.646757, -0.714965,
		-0.421616, 0.744835, 0.517166,
		0.867011, 0.164094, 0.470494,
		40.198833, 33.094002, 32.949158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687317, 33.687981, 32.522984>,  <39.591923, 32.979137, 32.619812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687317, 33.687981, 32.522984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.051033, 33.539925, 32.599068>,  <40.269264, 33.451092, 32.644718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.051033, 33.539925, 32.599068>,  <39.687317, 33.687981, 32.522984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051033, 33.539925, 32.599068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389645, 0.596686, -0.701529,
		0.146168, 0.712011, 0.686786,
		0.909292, -0.370144, 0.190215,
		40.323822, 33.428883, 32.656132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228642, 34.181492, 32.609703>,  <39.687317, 33.687981, 32.522984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228642, 34.181492, 32.609703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.469154, 33.880173, 32.503120>,  <40.613461, 33.699379, 32.439171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.469154, 33.880173, 32.503120>,  <40.228642, 34.181492, 32.609703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469154, 33.880173, 32.503120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189408, 0.458338, -0.868361,
		0.776264, 0.471661, 0.418271,
		0.601282, -0.753301, -0.266455,
		40.649540, 33.654182, 32.423183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896469, 34.470711, 32.354630>,  <40.228642, 34.181492, 32.609703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896469, 34.470711, 32.354630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.909161, 34.101711, 32.200756>,  <40.916775, 33.880310, 32.108433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.909161, 34.101711, 32.200756>,  <40.896469, 34.470711, 32.354630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909161, 34.101711, 32.200756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204704, 0.382721, -0.900900,
		0.978309, -0.050158, 0.200985,
		0.031733, -0.922502, -0.384687,
		40.918682, 33.824963, 32.085350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567837, 34.367908, 31.989529>,  <40.896469, 34.470711, 32.354630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567837, 34.367908, 31.989529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.310013, 34.105915, 31.831774>,  <41.155319, 33.948719, 31.737122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.310013, 34.105915, 31.831774>,  <41.567837, 34.367908, 31.989529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310013, 34.105915, 31.831774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300913, 0.256876, -0.918404,
		0.702848, -0.710642, 0.031521,
		-0.644559, -0.654983, -0.394386,
		41.116646, 33.909420, 31.713459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956726, 34.056561, 31.419117>,  <41.567837, 34.367908, 31.989529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956726, 34.056561, 31.419117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.571877, 33.975441, 31.346239>,  <41.340969, 33.926769, 31.302513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.571877, 33.975441, 31.346239>,  <41.956726, 34.056561, 31.419117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571877, 33.975441, 31.346239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161894, 0.112689, -0.980353,
		0.219348, -0.972714, -0.075588,
		-0.962121, -0.202801, -0.182195,
		41.283241, 33.914600, 31.291580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948154, 33.611145, 30.810125>,  <41.956726, 34.056561, 31.419117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948154, 33.611145, 30.810125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.574688, 33.751389, 30.839359>,  <41.350609, 33.835537, 30.856899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.574688, 33.751389, 30.839359>,  <41.948154, 33.611145, 30.810125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574688, 33.751389, 30.839359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005651, 0.189618, -0.981842,
		-0.358104, -0.917124, -0.175058,
		-0.933665, 0.350612, 0.073086,
		41.294590, 33.856571, 30.861284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530415, 33.267082, 30.323772>,  <41.948154, 33.611145, 30.810125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530415, 33.267082, 30.323772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.319920, 33.600536, 30.390846>,  <41.193623, 33.800610, 30.431091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.319920, 33.600536, 30.390846>,  <41.530415, 33.267082, 30.323772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319920, 33.600536, 30.390846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225801, 0.053125, -0.972724,
		-0.819808, -0.549750, 0.160280,
		-0.526240, 0.833638, 0.167686,
		41.162048, 33.850628, 30.441153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939766, 33.119236, 30.078032>,  <41.530415, 33.267082, 30.323772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939766, 33.119236, 30.078032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.963409, 33.518536, 30.077166>,  <40.977596, 33.758114, 30.076647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.963409, 33.518536, 30.077166>,  <40.939766, 33.119236, 30.078032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.963409, 33.518536, 30.077166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351202, 0.018765, -0.936112,
		-0.934432, 0.056089, 0.351697,
		0.059105, 0.998250, -0.002164,
		40.981140, 33.818012, 30.076517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382336, 33.310944, 29.660181>,  <40.939766, 33.119236, 30.078032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382336, 33.310944, 29.660181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.587334, 33.653473, 29.685671>,  <40.710335, 33.858990, 29.700964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.587334, 33.653473, 29.685671>,  <40.382336, 33.310944, 29.660181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587334, 33.653473, 29.685671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293139, 0.244224, -0.924351,
		-0.807104, 0.455047, 0.376185,
		0.512497, 0.856321, 0.063723,
		40.741081, 33.910370, 29.704788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942112, 33.945221, 29.410677>,  <40.382336, 33.310944, 29.660181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942112, 33.945221, 29.410677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.326313, 34.056393, 29.405212>,  <40.556835, 34.123096, 29.401934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.326313, 34.056393, 29.405212>,  <39.942112, 33.945221, 29.410677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326313, 34.056393, 29.405212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137184, 0.430238, -0.892231,
		-0.242104, 0.858864, 0.451373,
		0.960503, 0.277934, -0.013660,
		40.614464, 34.139774, 29.401114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949638, 34.617619, 29.199518>,  <39.942112, 33.945221, 29.410677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949638, 34.617619, 29.199518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.310818, 34.475204, 29.103251>,  <40.527527, 34.389755, 29.045490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.310818, 34.475204, 29.103251>,  <39.949638, 34.617619, 29.199518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310818, 34.475204, 29.103251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147499, 0.269254, -0.951707,
		0.403642, 0.894842, 0.190608,
		0.902949, -0.356034, -0.240670,
		40.581703, 34.368393, 29.031050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796028, 35.064827, 29.905361>,  <39.949638, 34.617619, 29.199518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796028, 35.064827, 29.905361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.536186, 35.365467, 29.951166>,  <39.380283, 35.545853, 29.978649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.536186, 35.365467, 29.951166>,  <39.796028, 35.064827, 29.905361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536186, 35.365467, 29.951166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393143, -0.460998, 0.795562,
		0.650736, 0.471778, 0.594952,
		-0.649601, 0.751602, 0.114511,
		39.341305, 35.590946, 29.985519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732689, 35.291573, 30.728580>,  <39.796028, 35.064827, 29.905361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732689, 35.291573, 30.728580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.402561, 35.396759, 30.528700>,  <39.204487, 35.459869, 30.408772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.402561, 35.396759, 30.528700>,  <39.732689, 35.291573, 30.728580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402561, 35.396759, 30.528700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564577, -0.368255, 0.738675,
		0.010229, 0.891761, 0.452392,
		-0.825317, 0.262965, -0.499701,
		39.154964, 35.475647, 30.378790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250042, 35.509960, 31.173140>,  <39.732689, 35.291573, 30.728580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250042, 35.509960, 31.173140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.024796, 35.445572, 30.848921>,  <38.889648, 35.406940, 30.654390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.024796, 35.445572, 30.848921>,  <39.250042, 35.509960, 31.173140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024796, 35.445572, 30.848921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694849, -0.438686, 0.569859,
		-0.447307, 0.884106, 0.135181,
		-0.563118, -0.160971, -0.810547,
		38.855862, 35.397282, 30.605757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609711, 35.541103, 31.413490>,  <39.250042, 35.509960, 31.173140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609711, 35.541103, 31.413490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.517647, 35.394711, 31.052805>,  <38.462410, 35.306873, 30.836393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.517647, 35.394711, 31.052805>,  <38.609711, 35.541103, 31.413490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.517647, 35.394711, 31.052805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788757, -0.472561, 0.393125,
		-0.569991, 0.801713, -0.179907,
		-0.230157, -0.365981, -0.901713,
		38.448601, 35.284916, 30.782291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917873, 35.775909, 31.303400>,  <38.609711, 35.541103, 31.413490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917873, 35.775909, 31.303400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.988892, 35.446770, 31.087477>,  <38.031502, 35.249287, 30.957922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.988892, 35.446770, 31.087477>,  <37.917873, 35.775909, 31.303400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988892, 35.446770, 31.087477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846702, -0.407287, 0.342364,
		-0.501572, 0.396274, -0.769020,
		0.177543, -0.822851, -0.539810,
		38.042156, 35.199913, 30.925533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232796, 35.653355, 30.931372>,  <37.917873, 35.775909, 31.303400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232796, 35.653355, 30.931372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.444588, 35.314133, 30.939930>,  <37.571663, 35.110600, 30.945065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.444588, 35.314133, 30.939930>,  <37.232796, 35.653355, 30.931372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444588, 35.314133, 30.939930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811653, -0.499091, 0.303526,
		-0.246728, -0.178077, -0.952583,
		0.529476, -0.848055, 0.021397,
		37.603432, 35.059715, 30.946348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765961, 35.157139, 30.664793>,  <37.232796, 35.653355, 30.931372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765961, 35.157139, 30.664793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.046238, 34.951988, 30.863182>,  <37.214405, 34.828899, 30.982216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.046238, 34.951988, 30.863182>,  <36.765961, 35.157139, 30.664793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046238, 34.951988, 30.863182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687915, -0.670018, 0.279014,
		0.189214, -0.536692, -0.822290,
		0.700693, -0.512872, 0.495975,
		37.256447, 34.798126, 31.011974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553535, 34.529076, 30.456343>,  <36.765961, 35.157139, 30.664793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553535, 34.529076, 30.456343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.788967, 34.507458, 30.778996>,  <36.930225, 34.494488, 30.972588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.788967, 34.507458, 30.778996>,  <36.553535, 34.529076, 30.456343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788967, 34.507458, 30.778996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653443, -0.619292, 0.435305,
		0.476013, -0.783298, -0.399819,
		0.588578, -0.054048, 0.806632,
		36.965542, 34.491241, 31.020985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686192, 33.843307, 30.591188>,  <36.553535, 34.529076, 30.456343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686192, 33.843307, 30.591188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.734699, 34.023121, 30.945187>,  <36.763805, 34.131008, 31.157585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.734699, 34.023121, 30.945187>,  <36.686192, 33.843307, 30.591188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734699, 34.023121, 30.945187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722207, -0.571685, 0.389350,
		0.680964, -0.686364, 0.255328,
		0.121268, 0.449533, 0.884994,
		36.771080, 34.157982, 31.210686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456470, 33.371323, 30.971613>,  <36.686192, 33.843307, 30.591188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456470, 33.371323, 30.971613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.474640, 33.674381, 31.232044>,  <36.485542, 33.856216, 31.388304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.474640, 33.674381, 31.232044>,  <36.456470, 33.371323, 30.971613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474640, 33.674381, 31.232044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717702, -0.428597, 0.548824,
		0.694867, -0.492212, 0.524297,
		0.045426, 0.757649, 0.651079,
		36.488266, 33.901676, 31.427368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531731, 33.136692, 31.630430>,  <36.456470, 33.371323, 30.971613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531731, 33.136692, 31.630430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.364384, 33.499386, 31.651617>,  <36.263977, 33.717003, 31.664330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.364384, 33.499386, 31.651617>,  <36.531731, 33.136692, 31.630430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364384, 33.499386, 31.651617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811352, -0.399297, 0.426930,
		0.408261, 0.135638, 0.902732,
		-0.418366, 0.906733, 0.052967,
		36.238873, 33.771404, 31.667507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249859, 33.322227, 32.350876>,  <36.531731, 33.136692, 31.630430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249859, 33.322227, 32.350876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.022804, 33.534935, 32.099476>,  <35.886574, 33.662560, 31.948635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.022804, 33.534935, 32.099476>,  <36.249859, 33.322227, 32.350876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022804, 33.534935, 32.099476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822939, -0.388534, 0.414503,
		-0.023775, 0.752505, 0.658157,
		-0.567632, 0.531769, -0.628503,
		35.852516, 33.694466, 31.910925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.556622, 37.938946, 27.694447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193722, 37.864227, 27.543711>,  <40.975983, 37.819397, 27.453268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193722, 37.864227, 27.543711>,  <41.556622, 37.938946, 27.694447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193722, 37.864227, 27.543711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360459, -0.116366, 0.925488,
		-0.216726, 0.975483, 0.038242,
		-0.907248, -0.186793, -0.376842,
		40.921547, 37.808189, 27.430658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114746, 38.300774, 28.194435>,  <41.556622, 37.938946, 27.694447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114746, 38.300774, 28.194435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873936, 38.065357, 27.978594>,  <40.729450, 37.924107, 27.849089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873936, 38.065357, 27.978594>,  <41.114746, 38.300774, 28.194435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873936, 38.065357, 27.978594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606061, -0.103168, 0.788699,
		-0.519855, 0.801855, -0.294585,
		-0.602030, -0.588546, -0.539605,
		40.693325, 37.888794, 27.816711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397282, 38.463417, 28.384518>,  <41.114746, 38.300774, 28.194435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397282, 38.463417, 28.384518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406826, 38.088432, 28.245607>,  <40.412552, 37.863441, 28.162262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406826, 38.088432, 28.245607>,  <40.397282, 38.463417, 28.384518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406826, 38.088432, 28.245607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667223, -0.273619, 0.692782,
		-0.744476, 0.215179, -0.632024,
		0.023862, -0.937460, -0.347275,
		40.413986, 37.807194, 28.141424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654900, 38.237644, 28.448317>,  <40.397282, 38.463417, 28.384518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654900, 38.237644, 28.448317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873257, 37.904110, 28.415520>,  <40.004272, 37.703991, 28.395842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873257, 37.904110, 28.415520>,  <39.654900, 38.237644, 28.448317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873257, 37.904110, 28.415520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653265, -0.484859, 0.581512,
		-0.524643, -0.263875, -0.809395,
		0.545889, -0.833836, -0.081997,
		40.037025, 37.653961, 28.390921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235607, 37.727058, 28.618759>,  <39.654900, 38.237644, 28.448317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235607, 37.727058, 28.618759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542526, 37.470760, 28.629343>,  <39.726677, 37.316982, 28.635693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542526, 37.470760, 28.629343>,  <39.235607, 37.727058, 28.618759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542526, 37.470760, 28.629343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548580, -0.634437, 0.544564,
		-0.332142, -0.432356, -0.838302,
		0.767295, -0.640748, 0.026459,
		39.772717, 37.278534, 28.637281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954586, 37.022621, 28.455254>,  <39.235607, 37.727058, 28.618759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954586, 37.022621, 28.455254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295544, 36.950577, 28.651613>,  <39.500118, 36.907349, 28.769428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295544, 36.950577, 28.651613>,  <38.954586, 37.022621, 28.455254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295544, 36.950577, 28.651613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467840, -0.682019, 0.562117,
		0.233557, -0.708808, -0.665614,
		0.852395, -0.180114, 0.490899,
		39.551262, 36.896542, 28.798883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947124, 36.380688, 28.551310>,  <38.954586, 37.022621, 28.455254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947124, 36.380688, 28.551310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218639, 36.460072, 28.834114>,  <39.381546, 36.507702, 29.003796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218639, 36.460072, 28.834114>,  <38.947124, 36.380688, 28.551310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218639, 36.460072, 28.834114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346233, -0.762559, 0.546467,
		0.647591, -0.615724, -0.448899,
		0.678785, 0.198463, 0.707010,
		39.422276, 36.519611, 29.046217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175640, 35.730515, 28.793755>,  <38.947124, 36.380688, 28.551310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175640, 35.730515, 28.793755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286400, 35.982841, 29.083693>,  <39.352856, 36.134235, 29.257654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286400, 35.982841, 29.083693>,  <39.175640, 35.730515, 28.793755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286400, 35.982841, 29.083693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398852, -0.610831, 0.683961,
		0.874210, -0.478495, 0.082463,
		0.276901, 0.630815, 0.724843,
		39.369469, 36.172085, 29.301146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626511, 35.321381, 29.215864>,  <39.175640, 35.730515, 28.793755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626511, 35.321381, 29.215864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491844, 35.618031, 29.447950>,  <39.411045, 35.796021, 29.587202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491844, 35.618031, 29.447950>,  <39.626511, 35.321381, 29.215864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491844, 35.618031, 29.447950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225786, -0.661792, 0.714879,
		0.914152, 0.109674, 0.390253,
		-0.336669, 0.741622, 0.580216,
		39.390842, 35.840519, 29.622015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238171, 35.100910, 28.768044>,  <39.626511, 35.321381, 29.215864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238171, 35.100910, 28.768044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487057, 34.799847, 28.681923>,  <40.636391, 34.619209, 28.630251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487057, 34.799847, 28.681923>,  <40.238171, 35.100910, 28.768044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487057, 34.799847, 28.681923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020756, 0.290787, -0.956563,
		0.782570, 0.590721, 0.196555,
		0.622217, -0.752657, -0.215300,
		40.673721, 34.574051, 28.617332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887539, 35.378242, 28.430008>,  <40.238171, 35.100910, 28.768044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887539, 35.378242, 28.430008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843445, 34.995895, 28.321074>,  <40.816990, 34.766487, 28.255713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843445, 34.995895, 28.321074>,  <40.887539, 35.378242, 28.430008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843445, 34.995895, 28.321074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024920, 0.276577, -0.960668,
		0.993594, -0.099109, -0.054307,
		-0.110231, -0.955867, -0.272336,
		40.810375, 34.709137, 28.239372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.436001, 35.202095, 27.971500>,  <40.887539, 35.378242, 28.430008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.436001, 35.202095, 27.971500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132439, 34.950062, 27.905701>,  <40.950302, 34.798843, 27.866220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132439, 34.950062, 27.905701>,  <41.436001, 35.202095, 27.971500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132439, 34.950062, 27.905701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017416, 0.232879, -0.972350,
		0.650967, -0.740787, -0.165759,
		-0.758906, -0.630081, -0.164498,
		40.904766, 34.761036, 27.856352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580605, 34.865936, 27.400356>,  <41.436001, 35.202095, 27.971500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580605, 34.865936, 27.400356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186890, 34.797169, 27.416468>,  <40.950661, 34.755909, 27.426134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186890, 34.797169, 27.416468>,  <41.580605, 34.865936, 27.400356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186890, 34.797169, 27.416468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071056, 0.176827, -0.981674,
		0.161634, -0.969113, -0.186264,
		-0.984289, -0.171907, 0.040280,
		40.891605, 34.745594, 27.428551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531055, 34.601303, 26.719860>,  <41.580605, 34.865936, 27.400356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531055, 34.601303, 26.719860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152153, 34.624531, 26.845928>,  <40.924812, 34.638470, 26.921570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152153, 34.624531, 26.845928>,  <41.531055, 34.601303, 26.719860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152153, 34.624531, 26.845928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299590, 0.188754, -0.935210,
		-0.113798, -0.980306, -0.161401,
		-0.947257, 0.058071, 0.315170,
		40.867977, 34.641953, 26.940479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159260, 34.060413, 26.298229>,  <41.531055, 34.601303, 26.719860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159260, 34.060413, 26.298229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919052, 34.341099, 26.451584>,  <40.774929, 34.509510, 26.543596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919052, 34.341099, 26.451584>,  <41.159260, 34.060413, 26.298229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919052, 34.341099, 26.451584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219367, 0.316492, -0.922882,
		-0.768935, -0.638306, -0.036126,
		-0.600515, 0.701711, 0.383385,
		40.738899, 34.551613, 26.566599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573288, 34.092220, 25.890961>,  <41.159260, 34.060413, 26.298229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573288, 34.092220, 25.890961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564152, 34.451176, 26.067219>,  <40.558670, 34.666550, 26.172974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564152, 34.451176, 26.067219>,  <40.573288, 34.092220, 25.890961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564152, 34.451176, 26.067219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082738, 0.440945, -0.893713,
		-0.996310, 0.016042, -0.084321,
		-0.022844, 0.897391, 0.440645,
		40.557297, 34.720394, 26.199411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119953, 34.509541, 25.450739>,  <40.573288, 34.092220, 25.890961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119953, 34.509541, 25.450739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313221, 34.788879, 25.661968>,  <40.429184, 34.956482, 25.788706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313221, 34.788879, 25.661968>,  <40.119953, 34.509541, 25.450739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313221, 34.788879, 25.661968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294809, 0.438157, -0.849180,
		-0.824399, 0.565979, 0.005827,
		0.483171, 0.698345, 0.528072,
		40.458172, 34.998383, 25.820391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828072, 35.175026, 25.179440>,  <40.119953, 34.509541, 25.450739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828072, 35.175026, 25.179440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189819, 35.230629, 25.340834>,  <40.406868, 35.263992, 25.437670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189819, 35.230629, 25.340834>,  <39.828072, 35.175026, 25.179440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189819, 35.230629, 25.340834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302163, 0.459086, -0.835426,
		-0.301367, 0.877449, 0.373178,
		0.904365, 0.139010, 0.403486,
		40.461128, 35.272331, 25.461880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092289, 35.903679, 25.068588>,  <39.828072, 35.175026, 25.179440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092289, 35.903679, 25.068588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437145, 35.720592, 25.155504>,  <40.644058, 35.610741, 25.207653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437145, 35.720592, 25.155504>,  <40.092289, 35.903679, 25.068588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437145, 35.720592, 25.155504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486971, 0.630104, -0.604838,
		0.139931, 0.627266, 0.766131,
		0.862136, -0.457718, 0.217289,
		40.695786, 35.583279, 25.220692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707001, 36.421249, 25.130693>,  <40.092289, 35.903679, 25.068588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707001, 36.421249, 25.130693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845127, 36.053192, 25.056829>,  <40.928001, 35.832359, 25.012510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845127, 36.053192, 25.056829>,  <40.707001, 36.421249, 25.130693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845127, 36.053192, 25.056829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612984, 0.370129, -0.698037,
		0.710641, 0.127846, 0.691842,
		0.345312, -0.920141, -0.184661,
		40.948719, 35.777149, 25.001431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474087, 36.525417, 25.033409>,  <40.707001, 36.421249, 25.130693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474087, 36.525417, 25.033409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404026, 36.168842, 24.866240>,  <41.361988, 35.954899, 24.765938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404026, 36.168842, 24.866240>,  <41.474087, 36.525417, 25.033409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404026, 36.168842, 24.866240> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582958, 0.248173, -0.773674,
		0.793398, -0.379147, 0.476200,
		-0.175156, -0.891436, -0.417926,
		41.351479, 35.901413, 24.740862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089664, 36.293552, 24.783306>,  <41.474087, 36.525417, 25.033409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089664, 36.293552, 24.783306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846336, 36.055332, 24.573442>,  <41.700340, 35.912399, 24.447525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846336, 36.055332, 24.573442>,  <42.089664, 36.293552, 24.783306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846336, 36.055332, 24.573442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626918, 0.044850, -0.777793,
		0.486747, -0.802064, 0.346079,
		-0.608318, -0.595552, -0.524659,
		41.663841, 35.876667, 24.416044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470829, 35.714825, 24.563074>,  <42.089664, 36.293552, 24.783306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470829, 35.714825, 24.563074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170998, 35.755901, 24.301514>,  <41.991100, 35.780548, 24.144577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170998, 35.755901, 24.301514>,  <42.470829, 35.714825, 24.563074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170998, 35.755901, 24.301514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650953, -0.064674, -0.756358,
		-0.119964, -0.992608, -0.018371,
		-0.749579, 0.102695, -0.653900,
		41.946125, 35.786709, 24.105343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.921024, 33.473526, 20.719917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.070610, 33.635330, 21.053749>,  <38.160362, 33.732410, 21.254047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.070610, 33.635330, 21.053749>,  <37.921024, 33.473526, 20.719917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070610, 33.635330, 21.053749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640636, -0.538018, 0.547835,
		0.670622, -0.739533, 0.057941,
		0.373969, 0.404509, 0.834578,
		38.182800, 33.756683, 21.304123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133705, 32.834076, 21.231550>,  <37.921024, 33.473526, 20.719917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.133705, 32.834076, 21.231550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.061852, 33.167110, 21.441133>,  <38.018742, 33.366932, 21.566883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.061852, 33.167110, 21.441133>,  <38.133705, 32.834076, 21.231550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061852, 33.167110, 21.441133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405834, -0.547905, 0.731504,
		0.896120, -0.081240, 0.436312,
		-0.179630, 0.832586, 0.523959,
		38.007961, 33.416885, 21.598322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356773, 32.680267, 21.963829>,  <38.133705, 32.834076, 21.231550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356773, 32.680267, 21.963829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122997, 33.004620, 21.975838>,  <37.982731, 33.199230, 21.983044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122997, 33.004620, 21.975838>,  <38.356773, 32.680267, 21.963829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122997, 33.004620, 21.975838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334203, -0.274265, 0.901714,
		0.739415, 0.516967, 0.431290,
		-0.584444, 0.810879, 0.030023,
		37.947662, 33.247883, 21.984844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467319, 32.975170, 22.648565>,  <38.356773, 32.680267, 21.963829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467319, 32.975170, 22.648565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112316, 33.094566, 22.508146>,  <37.899315, 33.166203, 22.423895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112316, 33.094566, 22.508146>,  <38.467319, 32.975170, 22.648565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112316, 33.094566, 22.508146> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430808, -0.267149, 0.861996,
		0.163515, 0.916261, 0.365688,
		-0.887506, 0.298490, -0.351049,
		37.846066, 33.184113, 22.402832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190323, 33.206619, 23.243780>,  <38.467319, 32.975170, 22.648565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190323, 33.206619, 23.243780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.874550, 33.174358, 23.000372>,  <37.685085, 33.155003, 22.854326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.874550, 33.174358, 23.000372>,  <38.190323, 33.206619, 23.243780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874550, 33.174358, 23.000372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563143, -0.299343, 0.770236,
		-0.244278, 0.950731, 0.190891,
		-0.789429, -0.080653, -0.608520,
		37.637722, 33.150162, 22.817816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595158, 33.512127, 23.611034>,  <38.190323, 33.206619, 23.243780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595158, 33.512127, 23.611034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.416882, 33.286152, 23.333271>,  <37.309917, 33.150566, 23.166613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.416882, 33.286152, 23.333271>,  <37.595158, 33.512127, 23.611034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416882, 33.286152, 23.333271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665854, -0.309265, 0.678965,
		-0.598332, 0.764981, -0.238333,
		-0.445687, -0.564941, -0.694409,
		37.283176, 33.116669, 23.124949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007504, 33.553623, 23.732986>,  <37.595158, 33.512127, 23.611034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007504, 33.553623, 23.732986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.953415, 33.231808, 23.501665>,  <36.920959, 33.038719, 23.362873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.953415, 33.231808, 23.501665>,  <37.007504, 33.553623, 23.732986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953415, 33.231808, 23.501665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674826, -0.352578, 0.648304,
		-0.725482, 0.477919, -0.495246,
		-0.135224, -0.804539, -0.578301,
		36.912849, 32.990448, 23.328175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302631, 33.484047, 23.609190>,  <37.007504, 33.553623, 23.732986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302631, 33.484047, 23.609190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471870, 33.123524, 23.572044>,  <36.573414, 32.907207, 23.549757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.471870, 33.123524, 23.572044>,  <36.302631, 33.484047, 23.609190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471870, 33.123524, 23.572044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747635, -0.405176, 0.526187,
		-0.511886, -0.153200, -0.845283,
		0.423101, -0.901311, -0.092866,
		36.598801, 32.853130, 23.544186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754295, 32.993084, 23.601856>,  <36.302631, 33.484047, 23.609190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754295, 32.993084, 23.601856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.094917, 32.802708, 23.689802>,  <36.299290, 32.688484, 23.742569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.094917, 32.802708, 23.689802>,  <35.754295, 32.993084, 23.601856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094917, 32.802708, 23.689802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497625, -0.601775, 0.624689,
		-0.165004, -0.641366, -0.749282,
		0.851553, -0.475938, 0.219865,
		36.350384, 32.659927, 23.755762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559196, 32.251331, 23.621323>,  <35.754295, 32.993084, 23.601856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559196, 32.251331, 23.621323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.888935, 32.281464, 23.845745>,  <36.086777, 32.299541, 23.980398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.888935, 32.281464, 23.845745>,  <35.559196, 32.251331, 23.621323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888935, 32.281464, 23.845745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440183, -0.537892, 0.718965,
		0.355947, -0.839641, -0.410249,
		0.824342, 0.075329, 0.561057,
		36.136238, 32.304062, 24.014063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539768, 31.660063, 24.127184>,  <35.559196, 32.251331, 23.621323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539768, 31.660063, 24.127184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.815716, 31.895267, 24.296099>,  <35.981285, 32.036388, 24.397448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.815716, 31.895267, 24.296099>,  <35.539768, 31.660063, 24.127184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815716, 31.895267, 24.296099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292756, -0.306899, 0.905598,
		0.662101, -0.748369, -0.039576,
		0.689867, 0.588011, 0.422287,
		36.022675, 32.071671, 24.422785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740837, 31.338058, 24.735062>,  <35.539768, 31.660063, 24.127184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740837, 31.338058, 24.735062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860889, 31.713169, 24.804920>,  <35.932919, 31.938234, 24.846836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.860889, 31.713169, 24.804920>,  <35.740837, 31.338058, 24.735062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860889, 31.713169, 24.804920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349530, -0.062239, 0.934856,
		0.887555, -0.341619, 0.309101,
		0.300126, 0.937775, 0.174647,
		35.950928, 31.994501, 24.857315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959309, 31.302444, 25.308994>,  <35.740837, 31.338058, 24.735062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959309, 31.302444, 25.308994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.933426, 31.700867, 25.284718>,  <35.917896, 31.939920, 25.270151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.933426, 31.700867, 25.284718>,  <35.959309, 31.302444, 25.308994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933426, 31.700867, 25.284718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174386, 0.048596, 0.983478,
		0.982549, 0.074222, 0.170554,
		-0.064707, 0.996057, -0.060692,
		35.914013, 31.999683, 25.266510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176529, 31.538273, 25.961561>,  <35.959309, 31.302444, 25.308994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176529, 31.538273, 25.961561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.946995, 31.831108, 25.814720>,  <35.809277, 32.006809, 25.726616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.946995, 31.831108, 25.814720>,  <36.176529, 31.538273, 25.961561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946995, 31.831108, 25.814720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382534, 0.156750, 0.910548,
		0.724142, 0.662933, 0.190100,
		-0.573834, 0.732086, -0.367104,
		35.774845, 32.050735, 25.704590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820274, 31.806807, 26.113228>,  <36.176529, 31.538273, 25.961561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820274, 31.806807, 26.113228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.114780, 31.642490, 26.328325>,  <37.291485, 31.543901, 26.457384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.114780, 31.642490, 26.328325>,  <36.820274, 31.806807, 26.113228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114780, 31.642490, 26.328325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664435, 0.288281, -0.689507,
		0.128222, 0.864954, 0.485194,
		0.736264, -0.410790, 0.537742,
		37.335659, 31.519253, 26.489649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278492, 32.309444, 26.168518>,  <36.820274, 31.806807, 26.113228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278492, 32.309444, 26.168518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465729, 31.957733, 26.203768>,  <37.578072, 31.746708, 26.224918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465729, 31.957733, 26.203768>,  <37.278492, 32.309444, 26.168518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465729, 31.957733, 26.203768> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645045, 0.271823, -0.714163,
		0.603991, 0.391140, 0.694410,
		0.468094, -0.879273, 0.088124,
		37.606155, 31.693951, 26.230206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009468, 32.382393, 26.111382>,  <37.278492, 32.309444, 26.168518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009468, 32.382393, 26.111382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989758, 31.990377, 26.034340>,  <37.977932, 31.755169, 25.988115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.989758, 31.990377, 26.034340>,  <38.009468, 32.382393, 26.111382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989758, 31.990377, 26.034340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791364, 0.079337, -0.606175,
		0.609356, -0.182292, 0.771657,
		-0.049280, -0.980038, -0.192604,
		37.974972, 31.696365, 25.976559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708706, 32.175953, 26.078062>,  <38.009468, 32.382393, 26.111382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708706, 32.175953, 26.078062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526714, 31.866934, 25.900900>,  <38.417519, 31.681522, 25.794601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526714, 31.866934, 25.900900>,  <38.708706, 32.175953, 26.078062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526714, 31.866934, 25.900900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753425, -0.068822, -0.653922,
		0.474702, -0.631220, 0.613367,
		-0.454982, -0.772544, -0.442907,
		38.390221, 31.635170, 25.768028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199097, 31.649521, 25.960548>,  <38.708706, 32.175953, 26.078062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199097, 31.649521, 25.960548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.915890, 31.556133, 25.693953>,  <38.745968, 31.500101, 25.533995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.915890, 31.556133, 25.693953>,  <39.199097, 31.649521, 25.960548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915890, 31.556133, 25.693953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682808, 0.014573, -0.730452,
		0.180253, -0.972255, 0.149098,
		-0.708013, -0.233471, -0.666490,
		38.703487, 31.486092, 25.494005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533905, 31.187548, 25.530500>,  <39.199097, 31.649521, 25.960548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533905, 31.187548, 25.530500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.223442, 31.323788, 25.318245>,  <39.037163, 31.405531, 25.190891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.223442, 31.323788, 25.318245>,  <39.533905, 31.187548, 25.530500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223442, 31.323788, 25.318245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593144, 0.108878, -0.797700,
		-0.213921, -0.933884, -0.286530,
		-0.776155, 0.340598, -0.530636,
		38.990597, 31.425966, 25.159054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655663, 30.857576, 24.830349>,  <39.533905, 31.187548, 25.530500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655663, 30.857576, 24.830349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.373810, 31.132677, 24.760498>,  <39.204700, 31.297737, 24.718588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.373810, 31.132677, 24.760498>,  <39.655663, 30.857576, 24.830349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373810, 31.132677, 24.760498> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483980, 0.285852, -0.827074,
		-0.518906, -0.667296, -0.534278,
		-0.704628, 0.687753, -0.174628,
		39.162422, 31.339003, 24.708109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315834, 30.771461, 24.109089>,  <39.655663, 30.857576, 24.830349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315834, 30.771461, 24.109089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.286732, 31.148811, 24.238546>,  <39.269268, 31.375221, 24.316221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.286732, 31.148811, 24.238546>,  <39.315834, 30.771461, 24.109089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286732, 31.148811, 24.238546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355179, 0.327740, -0.875462,
		-0.931962, 0.051253, -0.358914,
		-0.072760, 0.943377, 0.323646,
		39.264904, 31.431824, 24.335640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060745, 31.211401, 23.427073>,  <39.315834, 30.771461, 24.109089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060745, 31.211401, 23.427073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.210632, 31.462475, 23.700012>,  <39.300564, 31.613119, 23.863777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.210632, 31.462475, 23.700012>,  <39.060745, 31.211401, 23.427073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210632, 31.462475, 23.700012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502207, 0.481238, -0.718470,
		-0.779345, 0.611901, -0.134901,
		0.374713, 0.627684, 0.682351,
		39.323048, 31.650780, 23.904718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865158, 31.849113, 23.208027>,  <39.060745, 31.211401, 23.427073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865158, 31.849113, 23.208027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.173176, 31.917383, 23.453924>,  <39.357986, 31.958345, 23.601463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.173176, 31.917383, 23.453924>,  <38.865158, 31.849113, 23.208027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173176, 31.917383, 23.453924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410003, 0.605860, -0.681785,
		-0.488811, 0.777049, 0.396560,
		0.770040, 0.170673, 0.614743,
		39.404186, 31.968586, 23.638348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004505, 32.585499, 23.146551>,  <38.865158, 31.849113, 23.208027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004505, 32.585499, 23.146551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.343315, 32.431374, 23.293018>,  <39.546600, 32.338898, 23.380898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.343315, 32.431374, 23.293018>,  <39.004505, 32.585499, 23.146551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343315, 32.431374, 23.293018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515182, 0.425457, -0.744026,
		0.130897, 0.818852, 0.558881,
		0.847026, -0.385316, 0.366167,
		39.597424, 32.315781, 23.402868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458229, 33.175407, 23.346056>,  <39.004505, 32.585499, 23.146551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458229, 33.175407, 23.346056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.709904, 32.866852, 23.307926>,  <39.860909, 32.681721, 23.285049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.709904, 32.866852, 23.307926>,  <39.458229, 33.175407, 23.346056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709904, 32.866852, 23.307926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540762, 0.522537, -0.659190,
		0.558299, 0.363208, 0.745910,
		0.629189, -0.771385, -0.095323,
		39.898659, 32.635437, 23.279329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106819, 33.360878, 23.502083>,  <39.458229, 33.175407, 23.346056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106819, 33.360878, 23.502083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.200893, 33.030144, 23.297720>,  <40.257339, 32.831703, 23.175102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.200893, 33.030144, 23.297720>,  <40.106819, 33.360878, 23.502083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200893, 33.030144, 23.297720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697968, 0.509493, -0.503247,
		0.676407, -0.238238, 0.696934,
		0.235190, -0.826837, -0.510907,
		40.271450, 32.782093, 23.144447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873386, 33.338081, 23.486803>,  <40.106819, 33.360878, 23.502083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873386, 33.338081, 23.486803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.753124, 33.098820, 23.189665>,  <40.680969, 32.955265, 23.011381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.753124, 33.098820, 23.189665>,  <40.873386, 33.338081, 23.486803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753124, 33.098820, 23.189665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560100, 0.519684, -0.645148,
		0.771943, -0.610035, 0.178781,
		-0.300653, -0.598153, -0.742847,
		40.662930, 32.919373, 22.966810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569454, 33.219608, 23.611908>,  <40.873386, 33.338081, 23.486803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569454, 33.219608, 23.611908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.954384, 33.174503, 23.710871>,  <42.185341, 33.147442, 23.770248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.954384, 33.174503, 23.710871>,  <41.569454, 33.219608, 23.611908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954384, 33.174503, 23.710871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264825, -0.594816, 0.758987,
		0.061578, -0.795914, -0.602270,
		0.962329, -0.112759, 0.247405,
		42.243084, 33.140675, 23.785091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844448, 32.362461, 23.644283>,  <41.569454, 33.219608, 23.611908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844448, 32.362461, 23.644283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.042850, 32.616367, 23.881279>,  <42.161892, 32.768711, 24.023476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.042850, 32.616367, 23.881279>,  <41.844448, 32.362461, 23.644283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042850, 32.616367, 23.881279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238669, -0.556394, 0.795904,
		0.834874, -0.536183, -0.124476,
		0.496007, 0.634771, 0.592489,
		42.191654, 32.806797, 24.059025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333294, 31.926794, 24.085110>,  <41.844448, 32.362461, 23.644283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333294, 31.926794, 24.085110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.275860, 32.277962, 24.267817>,  <42.241398, 32.488663, 24.377441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.275860, 32.277962, 24.267817>,  <42.333294, 31.926794, 24.085110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275860, 32.277962, 24.267817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096040, -0.471733, 0.876495,
		0.984966, 0.081987, 0.152051,
		-0.143589, 0.877922, 0.456767,
		42.232784, 32.541340, 24.404846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755341, 31.888241, 24.739548>,  <42.333294, 31.926794, 24.085110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755341, 31.888241, 24.739548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.505482, 32.190144, 24.819698>,  <42.355564, 32.371284, 24.867788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.505482, 32.190144, 24.819698>,  <42.755341, 31.888241, 24.739548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505482, 32.190144, 24.819698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039766, -0.287008, 0.957102,
		0.779892, 0.589886, 0.209294,
		-0.624650, 0.754759, 0.200378,
		42.318089, 32.416573, 24.879812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921310, 31.983370, 25.320024>,  <42.755341, 31.888241, 24.739548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921310, 31.983370, 25.320024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.566685, 32.167980, 25.332691>,  <42.353909, 32.278748, 25.340292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.566685, 32.167980, 25.332691>,  <42.921310, 31.983370, 25.320024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.566685, 32.167980, 25.332691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088335, -0.236083, 0.967710,
		0.454101, 0.855136, 0.250071,
		-0.886560, 0.461528, 0.031668,
		42.300716, 32.306438, 25.342192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926899, 32.188839, 26.022537>,  <42.921310, 31.983370, 25.320024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926899, 32.188839, 26.022537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.550999, 32.228088, 25.891546>,  <42.325459, 32.251637, 25.812952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.550999, 32.228088, 25.891546>,  <42.926899, 32.188839, 26.022537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550999, 32.228088, 25.891546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340340, -0.178195, 0.923264,
		0.032240, 0.979091, 0.200854,
		-0.939750, 0.098125, -0.327478,
		42.269073, 32.257526, 25.793303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572010, 32.785366, 26.357250>,  <42.926899, 32.188839, 26.022537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572010, 32.785366, 26.357250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.289505, 32.536049, 26.222969>,  <42.120003, 32.386459, 26.142401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.289505, 32.536049, 26.222969>,  <42.572010, 32.785366, 26.357250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.289505, 32.536049, 26.222969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288205, -0.179978, 0.940503,
		-0.646629, 0.760994, -0.052525,
		-0.706263, -0.623295, -0.335701,
		42.077625, 32.349060, 26.122259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096630, 32.998291, 26.709656>,  <42.572010, 32.785366, 26.357250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096630, 32.998291, 26.709656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.002964, 32.632149, 26.578630>,  <41.946766, 32.412464, 26.500015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.002964, 32.632149, 26.578630>,  <42.096630, 32.998291, 26.709656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002964, 32.632149, 26.578630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290495, -0.255661, 0.922090,
		-0.927782, 0.311077, -0.206038,
		-0.234165, -0.915352, -0.327564,
		41.932716, 32.357544, 26.480362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374863, 32.881077, 26.826126>,  <42.096630, 32.998291, 26.709656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374863, 32.881077, 26.826126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.546371, 32.519947, 26.813097>,  <41.649277, 32.303268, 26.805281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.546371, 32.519947, 26.813097>,  <41.374863, 32.881077, 26.826126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546371, 32.519947, 26.813097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521004, -0.276566, 0.807506,
		-0.738047, -0.329263, -0.588959,
		0.428768, -0.902828, -0.032571,
		41.675003, 32.249100, 26.803326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848778, 32.400330, 26.889061>,  <41.374863, 32.881077, 26.826126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848778, 32.400330, 26.889061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.182762, 32.207401, 26.995052>,  <41.383152, 32.091644, 27.058647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.182762, 32.207401, 26.995052>,  <40.848778, 32.400330, 26.889061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182762, 32.207401, 26.995052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493320, -0.442614, 0.748818,
		-0.243886, -0.755951, -0.607502,
		0.834958, -0.482319, 0.264979,
		41.433250, 32.062706, 27.074547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715508, 31.650229, 26.940044>,  <40.848778, 32.400330, 26.889061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715508, 31.650229, 26.940044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032104, 31.734274, 27.169615>,  <41.222061, 31.784702, 27.307358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032104, 31.734274, 27.169615>,  <40.715508, 31.650229, 26.940044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032104, 31.734274, 27.169615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472631, -0.384965, 0.792731,
		0.387506, -0.898696, -0.205390,
		0.791492, 0.210114, 0.573928,
		41.269550, 31.797308, 27.341793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716297, 31.075373, 27.246723>,  <40.715508, 31.650229, 26.940044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716297, 31.075373, 27.246723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.928364, 31.345139, 27.452282>,  <41.055603, 31.506998, 27.575617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.928364, 31.345139, 27.452282>,  <40.716297, 31.075373, 27.246723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928364, 31.345139, 27.452282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493030, -0.247888, 0.833950,
		0.689817, -0.695498, 0.201086,
		0.530164, 0.674414, 0.513899,
		41.087414, 31.547462, 27.606451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763996, 30.855930, 27.894119>,  <40.716297, 31.075373, 27.246723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.763996, 30.855930, 27.894119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.871159, 31.237295, 27.949591>,  <40.935455, 31.466114, 27.982874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.871159, 31.237295, 27.949591>,  <40.763996, 30.855930, 27.894119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871159, 31.237295, 27.949591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369675, -0.031198, 0.928637,
		0.889700, -0.300055, 0.344094,
		0.267907, 0.953412, 0.138679,
		40.951530, 31.523319, 27.991194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986942, 30.816153, 28.581121>,  <40.763996, 30.855930, 27.894119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986942, 30.816153, 28.581121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.937317, 31.210443, 28.535604>,  <40.907543, 31.447018, 28.508295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.937317, 31.210443, 28.535604>,  <40.986942, 30.816153, 28.581121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937317, 31.210443, 28.535604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408476, 0.053775, 0.911184,
		0.904298, 0.159525, 0.395975,
		-0.124063, 0.985728, -0.113790,
		40.900097, 31.506163, 28.501467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.660549, 35.295681, 24.004570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.378540, 35.546856, 23.872725>,  <42.209335, 35.697559, 23.793617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.378540, 35.546856, 23.872725>,  <42.660549, 35.295681, 24.004570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378540, 35.546856, 23.872725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477723, 0.076996, -0.875130,
		-0.524147, -0.774447, -0.354263,
		-0.705018, 0.627936, -0.329614,
		42.167034, 35.735237, 23.773840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.492344, 35.046173, 23.261185>,  <42.660549, 35.295681, 24.004570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.492344, 35.046173, 23.261185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.382496, 35.429173, 23.296471>,  <42.316586, 35.658974, 23.317642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.382496, 35.429173, 23.296471>,  <42.492344, 35.046173, 23.261185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382496, 35.429173, 23.296471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560181, 0.233878, -0.794669,
		-0.781525, -0.168815, -0.600599,
		-0.274619, 0.957498, 0.088215,
		42.300110, 35.716423, 23.322935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787651, 35.269318, 22.636446>,  <42.492344, 35.046173, 23.261185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787651, 35.269318, 22.636446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.666801, 35.610760, 22.806187>,  <42.594292, 35.815624, 22.908031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.666801, 35.610760, 22.806187>,  <42.787651, 35.269318, 22.636446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666801, 35.610760, 22.806187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555661, 0.519406, -0.649199,
		-0.774572, 0.039656, -0.631242,
		-0.302126, 0.853607, 0.424352,
		42.576164, 35.866840, 22.933493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595684, 35.751717, 22.068171>,  <42.787651, 35.269318, 22.636446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595684, 35.751717, 22.068171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.650860, 35.984001, 22.389107>,  <42.683964, 36.123371, 22.581669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.650860, 35.984001, 22.389107>,  <42.595684, 35.751717, 22.068171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650860, 35.984001, 22.389107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485923, 0.666210, -0.565723,
		-0.863048, 0.467909, -0.190287,
		0.137936, 0.580711, 0.802339,
		42.692242, 36.158215, 22.629808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578194, 36.568821, 21.811983>,  <42.595684, 35.751717, 22.068171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578194, 36.568821, 21.811983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.791779, 36.523491, 22.147133>,  <42.919930, 36.496292, 22.348223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.791779, 36.523491, 22.147133>,  <42.578194, 36.568821, 21.811983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.791779, 36.523491, 22.147133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670144, 0.660970, -0.337677,
		-0.515545, 0.741806, 0.428879,
		0.533967, -0.113323, 0.837877,
		42.951969, 36.489494, 22.398497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547707, 37.242119, 22.146469>,  <42.578194, 36.568821, 21.811983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547707, 37.242119, 22.146469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.867599, 37.030716, 22.260382>,  <43.059536, 36.903873, 22.328730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.867599, 37.030716, 22.260382>,  <42.547707, 37.242119, 22.146469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867599, 37.030716, 22.260382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596832, 0.751199, -0.281942,
		-0.064917, 0.395446, 0.916192,
		0.799736, -0.528510, 0.284780,
		43.107521, 36.872162, 22.345816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977161, 37.768486, 22.449968>,  <42.547707, 37.242119, 22.146469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977161, 37.768486, 22.449968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.195286, 37.441166, 22.377289>,  <43.326160, 37.244774, 22.333681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.195286, 37.441166, 22.377289>,  <42.977161, 37.768486, 22.449968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195286, 37.441166, 22.377289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744350, 0.572401, -0.343948,
		0.385457, 0.052313, 0.921242,
		0.545312, -0.818304, -0.181697,
		43.358879, 37.195675, 22.322781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710819, 38.077877, 22.539167>,  <42.977161, 37.768486, 22.449968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710819, 38.077877, 22.539167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.778316, 37.729145, 22.355240>,  <43.818817, 37.519905, 22.244883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.778316, 37.729145, 22.355240>,  <43.710819, 38.077877, 22.539167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778316, 37.729145, 22.355240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761649, 0.411447, -0.500602,
		0.625632, -0.265745, 0.733460,
		0.168748, -0.871832, -0.459819,
		43.828941, 37.467594, 22.217295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.407822, 37.771278, 22.702196>,  <43.710819, 38.077877, 22.539167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.407822, 37.771278, 22.702196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.271786, 37.654732, 22.344549>,  <44.190163, 37.584805, 22.129961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.271786, 37.654732, 22.344549>,  <44.407822, 37.771278, 22.702196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271786, 37.654732, 22.344549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844892, 0.322805, -0.426562,
		0.412910, -0.900502, 0.136389,
		-0.340093, -0.291366, -0.894116,
		44.169758, 37.567322, 22.076315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955055, 37.605270, 22.428082>,  <44.407822, 37.771278, 22.702196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955055, 37.605270, 22.428082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.711250, 37.607059, 22.110975>,  <44.564968, 37.608131, 21.920712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.711250, 37.607059, 22.110975>,  <44.955055, 37.605270, 22.428082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.711250, 37.607059, 22.110975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783385, 0.156858, -0.601418,
		0.121664, -0.987611, -0.099108,
		-0.609513, 0.004469, -0.792764,
		44.528397, 37.608398, 21.873146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.252342, 37.217678, 21.899746>,  <44.955055, 37.605270, 22.428082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.252342, 37.217678, 21.899746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.009735, 37.468529, 21.704258>,  <44.864170, 37.619038, 21.586966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.009735, 37.468529, 21.704258>,  <45.252342, 37.217678, 21.899746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.009735, 37.468529, 21.704258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749243, 0.245162, -0.615248,
		-0.266020, -0.739333, -0.618563,
		-0.606521, 0.627123, -0.488722,
		44.827778, 37.656666, 21.557642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.466450, 37.134388, 21.290958>,  <45.252342, 37.217678, 21.899746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.466450, 37.134388, 21.290958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.257160, 37.475189, 21.298073>,  <45.131584, 37.679672, 21.302341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.257160, 37.475189, 21.298073>,  <45.466450, 37.134388, 21.290958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.257160, 37.475189, 21.298073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699769, 0.441462, -0.561636,
		-0.486370, -0.281415, -0.827194,
		-0.523228, 0.852007, 0.017788,
		45.100193, 37.730793, 21.303410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.485886, 37.478657, 20.656664>,  <45.466450, 37.134388, 21.290958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.485886, 37.478657, 20.656664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.392952, 37.770756, 20.913651>,  <45.337193, 37.946014, 21.067842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.392952, 37.770756, 20.913651>,  <45.485886, 37.478657, 20.656664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392952, 37.770756, 20.913651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766811, 0.543875, -0.340882,
		-0.598349, 0.413452, -0.686320,
		-0.232334, 0.730244, 0.642467,
		45.323250, 37.989830, 21.106390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.938351, 36.825665, 20.770330>,  <45.485886, 37.478657, 20.656664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.938351, 36.825665, 20.770330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.997181, 37.182831, 20.600122>,  <46.032478, 37.397129, 20.497997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.997181, 37.182831, 20.600122>,  <45.938351, 36.825665, 20.770330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.997181, 37.182831, 20.600122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853304, -0.332107, -0.401967,
		-0.500242, -0.303981, -0.810774,
		0.147073, 0.892917, -0.425522,
		46.041302, 37.450706, 20.472466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.113197, 36.119469, 20.654716>,  <45.938351, 36.825665, 20.770330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.113197, 36.119469, 20.654716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.034161, 35.797672, 20.430664>,  <45.986740, 35.604595, 20.296232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.034161, 35.797672, 20.430664>,  <46.113197, 36.119469, 20.654716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034161, 35.797672, 20.430664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473449, -0.422018, 0.773141,
		-0.858372, 0.417961, -0.297499,
		-0.197593, -0.804493, -0.560132,
		45.974884, 35.556324, 20.262625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471581, 35.921429, 20.806063>,  <46.113197, 36.119469, 20.654716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471581, 35.921429, 20.806063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.614388, 35.588554, 20.636356>,  <45.700073, 35.388828, 20.534533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.614388, 35.588554, 20.636356>,  <45.471581, 35.921429, 20.806063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614388, 35.588554, 20.636356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528966, -0.554474, 0.642459,
		-0.769890, -0.004949, -0.638158,
		0.357021, -0.832186, -0.424266,
		45.721493, 35.338898, 20.509077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971725, 35.589306, 20.384220>,  <45.471581, 35.921429, 20.806063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971725, 35.589306, 20.384220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.205334, 35.268936, 20.437059>,  <45.345497, 35.076714, 20.468763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.205334, 35.268936, 20.437059>,  <44.971725, 35.589306, 20.384220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205334, 35.268936, 20.437059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617280, -0.332506, 0.713025,
		-0.527154, -0.497960, -0.688582,
		0.584016, -0.800922, 0.132098,
		45.380539, 35.028660, 20.476688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594147, 35.055737, 20.259695>,  <44.971725, 35.589306, 20.384220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594147, 35.055737, 20.259695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.892582, 34.926537, 20.492599>,  <45.071644, 34.849014, 20.632341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.892582, 34.926537, 20.492599>,  <44.594147, 35.055737, 20.259695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892582, 34.926537, 20.492599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665813, -0.352615, 0.657537,
		-0.007073, -0.878255, -0.478140,
		0.746085, -0.323003, 0.582260,
		45.116409, 34.829636, 20.667278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381695, 34.430805, 20.284687>,  <44.594147, 35.055737, 20.259695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381695, 34.430805, 20.284687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.647835, 34.489456, 20.577482>,  <44.807518, 34.524647, 20.753159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.647835, 34.489456, 20.577482>,  <44.381695, 34.430805, 20.284687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647835, 34.489456, 20.577482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620019, -0.437580, 0.651230,
		0.415792, -0.887143, -0.200233,
		0.665352, 0.146628, 0.731988,
		44.847439, 34.533443, 20.797079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500645, 33.827347, 20.517012>,  <44.381695, 34.430805, 20.284687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500645, 33.827347, 20.517012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.609112, 34.078178, 20.809103>,  <44.674194, 34.228680, 20.984358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.609112, 34.078178, 20.809103>,  <44.500645, 33.827347, 20.517012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609112, 34.078178, 20.809103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621184, -0.465503, 0.630427,
		0.735253, -0.624560, 0.263303,
		0.271171, 0.627083, 0.730229,
		44.690464, 34.266304, 21.028172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.566116, 33.505867, 21.150761>,  <44.500645, 33.827347, 20.517012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.566116, 33.505867, 21.150761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.551666, 33.875572, 21.302780>,  <44.542995, 34.097397, 21.393991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.551666, 33.875572, 21.302780>,  <44.566116, 33.505867, 21.150761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551666, 33.875572, 21.302780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665814, -0.305854, 0.680547,
		0.745243, -0.228458, 0.626435,
		-0.036121, 0.924262, 0.380046,
		44.540829, 34.152851, 21.416794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782375, 33.423843, 21.867474>,  <44.566116, 33.505867, 21.150761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782375, 33.423843, 21.867474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.553165, 33.746696, 21.810656>,  <44.415642, 33.940411, 21.776566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.553165, 33.746696, 21.810656>,  <44.782375, 33.423843, 21.867474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553165, 33.746696, 21.810656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534095, -0.236328, 0.811722,
		0.621602, 0.540999, 0.566509,
		-0.573022, 0.807137, -0.142043,
		44.381260, 33.988838, 21.768044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.716671, 33.729881, 22.523344>,  <44.782375, 33.423843, 21.867474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.716671, 33.729881, 22.523344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.411377, 33.840225, 22.289637>,  <44.228199, 33.906429, 22.149412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.411377, 33.840225, 22.289637>,  <44.716671, 33.729881, 22.523344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.411377, 33.840225, 22.289637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646116, -0.326513, 0.689872,
		-0.000464, 0.904042, 0.427444,
		-0.763239, 0.275858, -0.584267,
		44.182404, 33.922981, 22.114357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379013, 34.129459, 22.982824>,  <44.716671, 33.729881, 22.523344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379013, 34.129459, 22.982824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.103092, 34.031445, 22.710316>,  <43.937538, 33.972633, 22.546810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.103092, 34.031445, 22.710316>,  <44.379013, 34.129459, 22.982824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103092, 34.031445, 22.710316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681933, -0.096179, 0.725064,
		-0.243193, 0.964731, -0.100756,
		-0.689801, -0.245039, -0.681272,
		43.896152, 33.957932, 22.505934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802471, 34.428562, 23.303246>,  <44.379013, 34.129459, 22.982824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802471, 34.428562, 23.303246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.649895, 34.160023, 23.049067>,  <43.558350, 33.998898, 22.896559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.649895, 34.160023, 23.049067>,  <43.802471, 34.428562, 23.303246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.649895, 34.160023, 23.049067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582462, -0.359235, 0.729170,
		-0.717802, 0.648259, -0.254008,
		-0.381443, -0.671350, -0.635446,
		43.535461, 33.958618, 22.858433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030132, 34.516338, 23.341295>,  <43.802471, 34.428562, 23.303246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030132, 34.516338, 23.341295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.092804, 34.152454, 23.187471>,  <43.130405, 33.934124, 23.095177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.092804, 34.152454, 23.187471>,  <43.030132, 34.516338, 23.341295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092804, 34.152454, 23.187471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436744, -0.413044, 0.799155,
		-0.885837, 0.042743, -0.462024,
		0.156678, -0.909707, -0.384558,
		43.139809, 33.879543, 23.072104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342281, 34.251446, 23.308172>,  <43.030132, 34.516338, 23.341295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342281, 34.251446, 23.308172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.598072, 33.943924, 23.307064>,  <42.751545, 33.759411, 23.306398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.598072, 33.943924, 23.307064>,  <42.342281, 34.251446, 23.308172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598072, 33.943924, 23.307064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518337, -0.433795, 0.736986,
		-0.567804, -0.469846, -0.675902,
		0.639473, -0.768809, -0.002772,
		42.789913, 33.713280, 23.306232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870182, 33.734814, 23.187098>,  <42.342281, 34.251446, 23.308172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870182, 33.734814, 23.187098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.205898, 33.578228, 23.338011>,  <42.407330, 33.484276, 23.428558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.205898, 33.578228, 23.338011>,  <41.870182, 33.734814, 23.187098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205898, 33.578228, 23.338011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533941, -0.462761, 0.707644,
		-0.102424, -0.795368, -0.597410,
		0.839295, -0.391461, 0.377282,
		42.457687, 33.460789, 23.451195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597713, 33.180847, 22.731516>,  <41.870182, 33.734814, 23.187098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.597713, 33.180847, 22.731516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.246635, 33.054825, 22.587080>,  <41.035988, 32.979210, 22.500420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.246635, 33.054825, 22.587080>,  <41.597713, 33.180847, 22.731516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246635, 33.054825, 22.587080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189044, 0.464761, -0.865020,
		0.440343, -0.827491, -0.348363,
		-0.877701, -0.315049, -0.361086,
		40.983326, 32.960308, 22.478754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734798, 32.741791, 22.071564>,  <41.597713, 33.180847, 22.731516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734798, 32.741791, 22.071564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.359169, 32.879116, 22.064856>,  <41.133793, 32.961510, 22.060831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.359169, 32.879116, 22.064856>,  <41.734798, 32.741791, 22.071564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359169, 32.879116, 22.064856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152825, 0.373323, -0.915027,
		-0.307880, -0.861838, -0.403044,
		-0.939071, 0.343314, -0.016771,
		41.077446, 32.982109, 22.059824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706367, 32.875877, 21.412804>,  <41.734798, 32.741791, 22.071564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706367, 32.875877, 21.412804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.364639, 33.049568, 21.527050>,  <41.159603, 33.153782, 21.595598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.364639, 33.049568, 21.527050>,  <41.706367, 32.875877, 21.412804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364639, 33.049568, 21.527050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040043, 0.602891, -0.796818,
		-0.518197, -0.669304, -0.532452,
		-0.854324, 0.434230, 0.285616,
		41.108341, 33.179836, 21.612734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253826, 32.854027, 20.784334>,  <41.706367, 32.875877, 21.412804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253826, 32.854027, 20.784334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.136456, 33.161526, 21.011639>,  <41.066032, 33.346027, 21.148022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.136456, 33.161526, 21.011639>,  <41.253826, 32.854027, 20.784334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136456, 33.161526, 21.011639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098583, 0.615592, -0.781875,
		-0.950884, -0.173405, -0.256420,
		-0.293431, 0.768751, 0.568261,
		41.048428, 33.392151, 21.182117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785545, 33.320187, 20.402624>,  <41.253826, 32.854027, 20.784334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785545, 33.320187, 20.402624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.915253, 33.569950, 20.686869>,  <40.993076, 33.719807, 20.857414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.915253, 33.569950, 20.686869>,  <40.785545, 33.320187, 20.402624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915253, 33.569950, 20.686869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136654, 0.712400, -0.688340,
		-0.936043, 0.320313, 0.145679,
		0.324266, 0.624409, 0.710609,
		41.012531, 33.757275, 20.900051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506035, 33.950584, 20.204868>,  <40.785545, 33.320187, 20.402624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506035, 33.950584, 20.204868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.807453, 34.043449, 20.450882>,  <40.988304, 34.099167, 20.598490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.807453, 34.043449, 20.450882>,  <40.506035, 33.950584, 20.204868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807453, 34.043449, 20.450882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363173, 0.632824, -0.683841,
		-0.547971, 0.738671, 0.392548,
		0.753547, 0.232162, 0.615035,
		41.033516, 34.113098, 20.635393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514809, 34.680630, 20.300640>,  <40.506035, 33.950584, 20.204868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514809, 34.680630, 20.300640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.887695, 34.554153, 20.371058>,  <41.111427, 34.478268, 20.413307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.887695, 34.554153, 20.371058>,  <40.514809, 34.680630, 20.300640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887695, 34.554153, 20.371058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360900, 0.776184, -0.517000,
		0.026830, 0.545491, 0.837687,
		0.932219, -0.316192, 0.176042,
		41.167362, 34.459297, 20.423870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397549, 35.421131, 20.365747>,  <40.514809, 34.680630, 20.300640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397549, 35.421131, 20.365747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.065014, 35.616394, 20.259476>,  <39.865494, 35.733551, 20.195713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.065014, 35.616394, 20.259476>,  <40.397549, 35.421131, 20.365747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065014, 35.616394, 20.259476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537096, -0.582771, 0.609841,
		0.142867, 0.649678, 0.746664,
		-0.831334, 0.488156, -0.265681,
		39.815613, 35.762840, 20.179771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046505, 35.751522, 20.946255>,  <40.397549, 35.421131, 20.365747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046505, 35.751522, 20.946255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.769447, 35.692696, 20.663805>,  <39.603214, 35.657398, 20.494335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.769447, 35.692696, 20.663805>,  <40.046505, 35.751522, 20.946255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769447, 35.692696, 20.663805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552836, -0.520544, 0.650697,
		-0.463266, 0.841074, 0.279248,
		-0.692645, -0.147068, -0.706126,
		39.561653, 35.648575, 20.451967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514046, 35.828346, 21.312784>,  <40.046505, 35.751522, 20.946255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514046, 35.828346, 21.312784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.397114, 35.630283, 20.985525>,  <39.326954, 35.511448, 20.789169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.397114, 35.630283, 20.985525>,  <39.514046, 35.828346, 21.312784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397114, 35.630283, 20.985525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568235, -0.598175, 0.565062,
		-0.769188, 0.630085, -0.106499,
		-0.292332, -0.495155, -0.818146,
		39.309414, 35.481735, 20.740082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846714, 35.733051, 21.295641>,  <39.514046, 35.828346, 21.312784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846714, 35.733051, 21.295641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.968815, 35.445961, 21.045301>,  <39.042076, 35.273705, 20.895098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.968815, 35.445961, 21.045301>,  <38.846714, 35.733051, 21.295641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968815, 35.445961, 21.045301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527840, -0.674542, 0.516119,
		-0.792595, 0.172803, -0.584750,
		0.305252, -0.717727, -0.625851,
		39.060390, 35.230644, 20.857546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213451, 35.385468, 21.139303>,  <38.846714, 35.733051, 21.295641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213451, 35.385468, 21.139303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.498127, 35.121521, 21.042908>,  <38.668934, 34.963154, 20.985071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.498127, 35.121521, 21.042908>,  <38.213451, 35.385468, 21.139303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498127, 35.121521, 21.042908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580643, -0.745638, 0.326920,
		-0.395413, -0.092739, -0.913810,
		0.711690, -0.659866, -0.240987,
		38.711636, 34.923561, 20.970612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907230, 34.889175, 20.790249>,  <38.213451, 35.385468, 21.139303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907230, 34.889175, 20.790249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.241520, 34.724419, 20.935526>,  <38.442093, 34.625565, 21.022692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.241520, 34.724419, 20.935526>,  <37.907230, 34.889175, 20.790249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241520, 34.724419, 20.935526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541591, -0.727556, 0.421119,
		0.090786, -0.548640, -0.831115,
		0.835725, -0.411892, 0.363191,
		38.492237, 34.600849, 21.044483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852192, 34.179081, 20.618277>,  <37.907230, 34.889175, 20.790249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852192, 34.179081, 20.618277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119083, 34.176243, 20.916204>,  <38.279217, 34.174541, 21.094961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.119083, 34.176243, 20.916204>,  <37.852192, 34.179081, 20.618277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119083, 34.176243, 20.916204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509526, -0.733736, 0.449460,
		0.543313, -0.679397, -0.493184,
		0.667229, -0.007093, 0.744819,
		38.319252, 34.174114, 21.139650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.633743, 40.712791, 21.726757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.910023, 40.461773, 21.583027>,  <43.075790, 40.311161, 21.496788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.910023, 40.461773, 21.583027>,  <42.633743, 40.712791, 21.726757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910023, 40.461773, 21.583027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351022, -0.725385, 0.592115,
		-0.632230, -0.282844, -0.721308,
		0.690702, -0.627547, -0.359326,
		43.117233, 40.273510, 21.475229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250828, 40.154236, 21.479385>,  <42.633743, 40.712791, 21.726757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250828, 40.154236, 21.479385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.618793, 40.061367, 21.605783>,  <42.839573, 40.005646, 21.681623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.618793, 40.061367, 21.605783>,  <42.250828, 40.154236, 21.479385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618793, 40.061367, 21.605783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391861, -0.514999, 0.762379,
		-0.014267, -0.825149, -0.564734,
		0.919913, -0.232174, 0.315997,
		42.894768, 39.991714, 21.700583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255169, 39.481270, 21.655188>,  <42.250828, 40.154236, 21.479385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255169, 39.481270, 21.655188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.574368, 39.599682, 21.865168>,  <42.765884, 39.670731, 21.991156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.574368, 39.599682, 21.865168>,  <42.255169, 39.481270, 21.655188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574368, 39.599682, 21.865168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259120, -0.617893, 0.742338,
		0.544116, -0.728406, -0.416368,
		0.797994, 0.296029, 0.524950,
		42.813766, 39.688492, 22.022654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592377, 38.878841, 21.810137>,  <42.255169, 39.481270, 21.655188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592377, 38.878841, 21.810137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.724434, 39.147881, 22.075052>,  <42.803669, 39.309303, 22.234001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.724434, 39.147881, 22.075052>,  <42.592377, 38.878841, 21.810137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724434, 39.147881, 22.075052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434870, -0.514357, 0.739138,
		0.837792, -0.532028, 0.122681,
		0.330140, 0.672594, 0.662287,
		42.823475, 39.349659, 22.273739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894028, 38.557888, 22.381414>,  <42.592377, 38.878841, 21.810137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894028, 38.557888, 22.381414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.821346, 38.915169, 22.545935>,  <42.777737, 39.129539, 22.644648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.821346, 38.915169, 22.545935>,  <42.894028, 38.557888, 22.381414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821346, 38.915169, 22.545935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367071, -0.449640, 0.814299,
		0.912274, -0.003019, 0.409569,
		-0.181700, 0.893205, 0.411303,
		42.766838, 39.183128, 22.669325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174816, 38.563274, 23.130474>,  <42.894028, 38.557888, 22.381414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174816, 38.563274, 23.130474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.909092, 38.859463, 23.089689>,  <42.749657, 39.037174, 23.065218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.909092, 38.859463, 23.089689>,  <43.174816, 38.563274, 23.130474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909092, 38.859463, 23.089689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431820, -0.268855, 0.860958,
		0.610097, 0.615976, 0.498352,
		-0.664314, 0.740467, -0.101963,
		42.709797, 39.081604, 23.059101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251995, 39.017677, 23.722965>,  <43.174816, 38.563274, 23.130474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251995, 39.017677, 23.722965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.879295, 39.070179, 23.587547>,  <42.655674, 39.101681, 23.506296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.879295, 39.070179, 23.587547>,  <43.251995, 39.017677, 23.722965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879295, 39.070179, 23.587547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353429, -0.114142, 0.928471,
		0.083220, 0.984756, 0.152740,
		-0.931752, 0.131250, -0.338543,
		42.599770, 39.109554, 23.485985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955490, 39.448963, 24.277119>,  <43.251995, 39.017677, 23.722965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955490, 39.448963, 24.277119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.645866, 39.297367, 24.074259>,  <42.460091, 39.206409, 23.952543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.645866, 39.297367, 24.074259>,  <42.955490, 39.448963, 24.277119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645866, 39.297367, 24.074259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496195, -0.134372, 0.857750,
		-0.393224, 0.915594, -0.084040,
		-0.774058, -0.378988, -0.507151,
		42.413651, 39.183670, 23.922113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324169, 39.796516, 24.559032>,  <42.955490, 39.448963, 24.277119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324169, 39.796516, 24.559032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.200985, 39.466698, 24.369177>,  <42.127075, 39.268806, 24.255262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.200985, 39.466698, 24.369177>,  <42.324169, 39.796516, 24.559032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200985, 39.466698, 24.369177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563939, -0.243593, 0.789072,
		-0.766245, 0.510674, -0.389975,
		-0.307964, -0.824545, -0.474641,
		42.108597, 39.219334, 24.226784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674534, 39.851425, 24.714437>,  <42.324169, 39.796516, 24.559032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674534, 39.851425, 24.714437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.731850, 39.469574, 24.610016>,  <41.766239, 39.240463, 24.547363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.731850, 39.469574, 24.610016>,  <41.674534, 39.851425, 24.714437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731850, 39.469574, 24.610016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505771, -0.297361, 0.809798,
		-0.850685, 0.015998, -0.525433,
		0.143289, -0.954631, -0.261052,
		41.774837, 39.183186, 24.531700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097736, 39.598667, 24.722088>,  <41.674534, 39.851425, 24.714437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097736, 39.598667, 24.722088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.336884, 39.282112, 24.773088>,  <41.480373, 39.092178, 24.803688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.336884, 39.282112, 24.773088>,  <41.097736, 39.598667, 24.722088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336884, 39.282112, 24.773088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560142, -0.298685, 0.772676,
		-0.573405, -0.533376, -0.621865,
		0.597869, -0.791389, 0.127499,
		41.516243, 39.044697, 24.811338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699024, 39.126427, 24.954208>,  <41.097736, 39.598667, 24.722088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699024, 39.126427, 24.954208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.044338, 38.953770, 25.058846>,  <41.251526, 38.850178, 25.121628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.044338, 38.953770, 25.058846>,  <40.699024, 39.126427, 24.954208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044338, 38.953770, 25.058846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452566, -0.432532, 0.779808,
		-0.223448, -0.791583, -0.568742,
		0.863282, -0.431640, 0.261595,
		41.303322, 38.824276, 25.137323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390007, 38.812481, 24.297012>,  <40.699024, 39.126427, 24.954208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390007, 38.812481, 24.297012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.027592, 38.689899, 24.180265>,  <39.810143, 38.616352, 24.110216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.027592, 38.689899, 24.180265>,  <40.390007, 38.812481, 24.297012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027592, 38.689899, 24.180265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242396, 0.189551, -0.951480,
		0.346911, -0.932821, -0.097456,
		-0.906034, -0.306456, -0.291869,
		39.755783, 38.597961, 24.092705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386532, 38.258305, 23.784260>,  <40.390007, 38.812481, 24.297012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386532, 38.258305, 23.784260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.036503, 38.441799, 23.722551>,  <39.826485, 38.551895, 23.685526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.036503, 38.441799, 23.722551>,  <40.386532, 38.258305, 23.784260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036503, 38.441799, 23.722551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251278, 0.158202, -0.954899,
		-0.413644, -0.874374, -0.253710,
		-0.875076, 0.458739, -0.154272,
		39.773979, 38.579422, 23.676270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231651, 38.037338, 23.085405>,  <40.386532, 38.258305, 23.784260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231651, 38.037338, 23.085405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.972378, 38.330894, 23.166664>,  <39.816814, 38.507027, 23.215420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.972378, 38.330894, 23.166664>,  <40.231651, 38.037338, 23.085405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972378, 38.330894, 23.166664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071218, 0.324029, -0.943363,
		-0.758149, -0.597002, -0.262295,
		-0.648181, 0.733889, 0.203145,
		39.777924, 38.551060, 23.227608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.797871, 38.057789, 22.490620>,  <40.231651, 38.037338, 23.085405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.797871, 38.057789, 22.490620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.723473, 38.408047, 22.668903>,  <39.678833, 38.618202, 22.775873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.723473, 38.408047, 22.668903>,  <39.797871, 38.057789, 22.490620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723473, 38.408047, 22.668903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226661, 0.403150, -0.886620,
		-0.956049, -0.265935, 0.123488,
		-0.185999, 0.875642, 0.445708,
		39.667671, 38.670738, 22.802616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162495, 38.169048, 22.374619>,  <39.797871, 38.057789, 22.490620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162495, 38.169048, 22.374619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.300423, 38.541805, 22.419655>,  <39.383179, 38.765461, 22.446676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.300423, 38.541805, 22.419655>,  <39.162495, 38.169048, 22.374619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300423, 38.541805, 22.419655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334803, 0.234159, -0.912730,
		-0.876931, 0.277031, 0.392742,
		0.344818, 0.931892, 0.112590,
		39.403870, 38.821373, 22.453432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702053, 38.552567, 22.000280>,  <39.162495, 38.169048, 22.374619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702053, 38.552567, 22.000280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.004963, 38.809143, 22.049425>,  <39.186707, 38.963089, 22.078911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.004963, 38.809143, 22.049425>,  <38.702053, 38.552567, 22.000280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004963, 38.809143, 22.049425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008102, 0.178876, -0.983838,
		-0.653051, 0.746027, 0.130261,
		0.757271, 0.641441, 0.122860,
		39.232143, 39.001575, 22.086283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619926, 39.132778, 21.595284>,  <38.702053, 38.552567, 22.000280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619926, 39.132778, 21.595284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.008778, 39.190506, 21.669197>,  <39.242088, 39.225143, 21.713545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.008778, 39.190506, 21.669197>,  <38.619926, 39.132778, 21.595284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008778, 39.190506, 21.669197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107066, 0.427910, -0.897457,
		-0.208593, 0.892224, 0.400530,
		0.972124, 0.144320, 0.184786,
		39.300415, 39.233803, 21.724632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699989, 39.835007, 21.454525>,  <38.619926, 39.132778, 21.595284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699989, 39.835007, 21.454525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.036720, 39.627972, 21.393299>,  <39.238758, 39.503750, 21.356564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.036720, 39.627972, 21.393299>,  <38.699989, 39.835007, 21.454525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036720, 39.627972, 21.393299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079911, 0.399980, -0.913034,
		0.533802, 0.756383, 0.378074,
		0.841825, -0.517591, -0.153067,
		39.289268, 39.472694, 21.347380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070034, 40.267494, 21.184647>,  <38.699989, 39.835007, 21.454525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070034, 40.267494, 21.184647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.274696, 39.946209, 21.062632>,  <39.397495, 39.753437, 20.989424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.274696, 39.946209, 21.062632>,  <39.070034, 40.267494, 21.184647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274696, 39.946209, 21.062632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150032, 0.433098, -0.888772,
		0.845988, 0.408983, 0.342107,
		0.511659, -0.803218, -0.305035,
		39.428192, 39.705242, 20.971121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697235, 40.538002, 20.866499>,  <39.070034, 40.267494, 21.184647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697235, 40.538002, 20.866499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.609238, 40.173939, 20.726086>,  <39.556438, 39.955502, 20.641838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.609238, 40.173939, 20.726086>,  <39.697235, 40.538002, 20.866499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609238, 40.173939, 20.726086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243008, 0.297372, -0.923319,
		0.944749, -0.288425, 0.155755,
		-0.219991, -0.910154, -0.351031,
		39.543240, 39.900894, 20.620777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276039, 40.482475, 20.388990>,  <39.697235, 40.538002, 20.866499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276039, 40.482475, 20.388990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.016396, 40.193504, 20.293695>,  <39.860607, 40.020123, 20.236519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.016396, 40.193504, 20.293695>,  <40.276039, 40.482475, 20.388990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016396, 40.193504, 20.293695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265311, 0.078511, -0.960961,
		0.712925, -0.686979, 0.140704,
		-0.649113, -0.722424, -0.238236,
		39.821663, 39.976776, 20.222225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591873, 40.230415, 19.823767>,  <40.276039, 40.482475, 20.388990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591873, 40.230415, 19.823767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.222870, 40.081158, 19.784275>,  <40.001469, 39.991604, 19.760580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.222870, 40.081158, 19.784275>,  <40.591873, 40.230415, 19.823767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222870, 40.081158, 19.784275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146223, -0.101129, -0.984069,
		0.357214, -0.922246, 0.147854,
		-0.922505, -0.373143, -0.098729,
		39.946117, 39.969215, 19.754656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658710, 39.650345, 19.318352>,  <40.591873, 40.230415, 19.823767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658710, 39.650345, 19.318352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.279980, 39.777752, 19.300201>,  <40.052742, 39.854198, 19.289312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.279980, 39.777752, 19.300201>,  <40.658710, 39.650345, 19.318352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279980, 39.777752, 19.300201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025739, -0.065590, -0.997515,
		-0.320704, -0.945644, 0.053904,
		-0.946829, 0.318520, -0.045375,
		39.995930, 39.873306, 19.286589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285011, 39.150276, 18.911814>,  <40.658710, 39.650345, 19.318352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285011, 39.150276, 18.911814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.085445, 39.496532, 18.895033>,  <39.965706, 39.704285, 18.884964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.085445, 39.496532, 18.895033>,  <40.285011, 39.150276, 18.911814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085445, 39.496532, 18.895033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095929, -0.103271, -0.990017,
		-0.861328, -0.489905, 0.134562,
		-0.498911, 0.865637, -0.041954,
		39.935772, 39.756222, 18.882446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961784, 38.488888, 18.807329>,  <40.285011, 39.150276, 18.911814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961784, 38.488888, 18.807329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.077534, 38.183174, 18.576805>,  <40.146984, 37.999744, 18.438490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.077534, 38.183174, 18.576805>,  <39.961784, 38.488888, 18.807329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077534, 38.183174, 18.576805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416907, -0.642593, 0.642855,
		-0.861657, 0.054244, -0.504584,
		0.289371, -0.764285, -0.576310,
		40.164345, 37.953888, 18.403912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372047, 38.017986, 18.649120>,  <39.961784, 38.488888, 18.807329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372047, 38.017986, 18.649120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.718639, 37.819775, 18.624880>,  <39.926594, 37.700848, 18.610336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.718639, 37.819775, 18.624880>,  <39.372047, 38.017986, 18.649120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718639, 37.819775, 18.624880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360734, -0.705398, 0.610151,
		-0.345093, -0.506821, -0.789964,
		0.866477, -0.495526, -0.060601,
		39.978580, 37.671116, 18.606699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173725, 37.387318, 18.470652>,  <39.372047, 38.017986, 18.649120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173725, 37.387318, 18.470652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.538090, 37.346657, 18.630608>,  <39.756706, 37.322258, 18.726582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.538090, 37.346657, 18.630608>,  <39.173725, 37.387318, 18.470652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538090, 37.346657, 18.630608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357823, -0.677204, 0.642928,
		0.205452, -0.728739, -0.653245,
		0.910907, -0.101655, 0.399892,
		39.811363, 37.316158, 18.750576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.281246, 36.712856, 18.495291>,  <39.173725, 37.387318, 18.470652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.281246, 36.712856, 18.495291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.555470, 36.850510, 18.751911>,  <39.720001, 36.933102, 18.905884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.555470, 36.850510, 18.751911>,  <39.281246, 36.712856, 18.495291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555470, 36.850510, 18.751911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306818, -0.662570, 0.683274,
		0.660211, -0.665260, -0.348641,
		0.685554, 0.344136, 0.641550,
		39.761135, 36.953751, 18.944376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639278, 36.099964, 18.668728>,  <39.281246, 36.712856, 18.495291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639278, 36.099964, 18.668728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.732098, 36.364151, 18.954367>,  <39.787788, 36.522663, 19.125750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.732098, 36.364151, 18.954367>,  <39.639278, 36.099964, 18.668728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732098, 36.364151, 18.954367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130497, -0.706359, 0.695721,
		0.963911, -0.254626, -0.077718,
		0.232046, 0.660472, 0.714095,
		39.801712, 36.562294, 19.168594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243248, 35.802692, 19.090782>,  <39.639278, 36.099964, 18.668728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243248, 35.802692, 19.090782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.075512, 36.076748, 19.329023>,  <39.974873, 36.241180, 19.471968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.075512, 36.076748, 19.329023>,  <40.243248, 35.802692, 19.090782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075512, 36.076748, 19.329023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060948, -0.675840, 0.734524,
		0.905783, 0.271712, 0.325161,
		-0.419335, 0.685137, 0.595604,
		39.949711, 36.282288, 19.507704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589149, 35.777115, 19.748825>,  <40.243248, 35.802692, 19.090782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589149, 35.777115, 19.748825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.226746, 35.931377, 19.818594>,  <40.009304, 36.023933, 19.860455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.226746, 35.931377, 19.818594>,  <40.589149, 35.777115, 19.748825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226746, 35.931377, 19.818594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118254, -0.626309, 0.770554,
		0.406411, 0.677500, 0.613045,
		-0.906006, 0.385657, 0.174421,
		39.954945, 36.047073, 19.870920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108562, 35.398590, 20.143227>,  <40.589149, 35.777115, 19.748825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108562, 35.398590, 20.143227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335506, 35.073151, 20.194088>,  <41.471672, 34.877888, 20.224606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.335506, 35.073151, 20.194088>,  <41.108562, 35.398590, 20.143227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335506, 35.073151, 20.194088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635443, 0.334348, -0.696005,
		0.523753, 0.475683, 0.706688,
		0.567358, -0.813595, 0.127153,
		41.505714, 34.829071, 20.232233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842133, 35.643623, 20.323181>,  <41.108562, 35.398590, 20.143227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842133, 35.643623, 20.323181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.868149, 35.275341, 20.169260>,  <41.883759, 35.054371, 20.076906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.868149, 35.275341, 20.169260>,  <41.842133, 35.643623, 20.323181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868149, 35.275341, 20.169260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745548, 0.301148, -0.594531,
		0.663270, -0.248222, 0.706016,
		0.065039, -0.920704, -0.384804,
		41.887661, 34.999130, 20.053820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499252, 35.495209, 20.260262>,  <41.842133, 35.643623, 20.323181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499252, 35.495209, 20.260262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.352798, 35.235096, 19.994007>,  <42.264927, 35.079029, 19.834253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.352798, 35.235096, 19.994007>,  <42.499252, 35.495209, 20.260262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352798, 35.235096, 19.994007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846173, 0.064987, -0.528931,
		0.387213, -0.756907, 0.526458,
		-0.366139, -0.650284, -0.665638,
		42.242958, 35.040012, 19.794315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081573, 35.199535, 20.020052>,  <42.499252, 35.495209, 20.260262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081573, 35.199535, 20.020052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.809387, 35.067345, 19.758442>,  <42.646076, 34.988029, 19.601477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.809387, 35.067345, 19.758442>,  <43.081573, 35.199535, 20.020052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809387, 35.067345, 19.758442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721306, -0.144763, -0.677319,
		0.129161, -0.932645, 0.336883,
		-0.680467, -0.330479, -0.654024,
		42.605247, 34.968201, 19.562235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.309765, 34.470837, 19.662069>,  <43.081573, 35.199535, 20.020052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.309765, 34.470837, 19.662069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.056023, 34.671108, 19.426472>,  <42.903778, 34.791271, 19.285112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.056023, 34.671108, 19.426472>,  <43.309765, 34.470837, 19.662069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056023, 34.671108, 19.426472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723013, 0.114620, -0.681259,
		-0.273581, -0.858011, -0.434707,
		-0.634355, 0.500678, -0.588995,
		42.865715, 34.821312, 19.249773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616383, 34.359768, 19.034868>,  <43.309765, 34.470837, 19.662069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616383, 34.359768, 19.034868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.363480, 34.662418, 18.968212>,  <43.211739, 34.844009, 18.928219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.363480, 34.662418, 18.968212>,  <43.616383, 34.359768, 19.034868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363480, 34.662418, 18.968212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583642, 0.323700, -0.744702,
		-0.509517, -0.568104, -0.646259,
		-0.632262, 0.756622, -0.166638,
		43.173801, 34.889404, 18.918221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527378, 34.346172, 18.193140>,  <43.616383, 34.359768, 19.034868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527378, 34.346172, 18.193140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.415539, 34.699959, 18.342562>,  <43.348434, 34.912231, 18.432215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.415539, 34.699959, 18.342562>,  <43.527378, 34.346172, 18.193140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415539, 34.699959, 18.342562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545480, 0.466512, -0.696289,
		-0.790112, 0.009085, -0.612895,
		-0.279598, 0.884468, 0.373552,
		43.331661, 34.965298, 18.454628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452850, 34.822922, 17.601389>,  <43.527378, 34.346172, 18.193140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452850, 34.822922, 17.601389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.497902, 35.054543, 17.924379>,  <43.524933, 35.193516, 18.118174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.497902, 35.054543, 17.924379>,  <43.452850, 34.822922, 17.601389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497902, 35.054543, 17.924379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800234, 0.428867, -0.419165,
		-0.589016, 0.693380, -0.415071,
		0.112630, 0.579049, 0.807476,
		43.531693, 35.228256, 18.166622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609737, 35.426231, 17.343504>,  <43.452850, 34.822922, 17.601389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609737, 35.426231, 17.343504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.742470, 35.427090, 17.720839>,  <43.822109, 35.427605, 17.947239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.742470, 35.427090, 17.720839>,  <43.609737, 35.426231, 17.343504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742470, 35.427090, 17.720839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812716, 0.507054, -0.287034,
		-0.478940, 0.861912, 0.166509,
		0.331827, 0.002148, 0.943338,
		43.842018, 35.427734, 18.003839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.827400, 30.592155, 31.017483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097832, 30.866323, 31.125643>,  <36.260090, 31.030825, 31.190538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097832, 30.866323, 31.125643>,  <35.827400, 30.592155, 31.017483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097832, 30.866323, 31.125643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178275, 0.203908, -0.962621,
		-0.714936, 0.699014, 0.015665,
		0.676080, 0.685420, 0.270398,
		36.300655, 31.071949, 31.206762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656330, 31.240679, 30.652470>,  <35.827400, 30.592155, 31.017483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656330, 31.240679, 30.652470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046387, 31.226732, 30.739992>,  <36.280422, 31.218365, 30.792505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.046387, 31.226732, 30.739992>,  <35.656330, 31.240679, 30.652470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046387, 31.226732, 30.739992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221550, 0.166196, -0.960882,
		-0.002864, 0.985476, 0.169789,
		0.975145, -0.034865, 0.218808,
		36.338932, 31.216272, 30.805635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827831, 31.739756, 30.257740>,  <35.656330, 31.240679, 30.652470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827831, 31.739756, 30.257740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164467, 31.539225, 30.338137>,  <36.366447, 31.418907, 30.386374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164467, 31.539225, 30.338137>,  <35.827831, 31.739756, 30.257740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164467, 31.539225, 30.338137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272122, 0.072117, -0.959557,
		0.466556, 0.862248, 0.197115,
		0.841591, -0.501326, 0.200990,
		36.416943, 31.388826, 30.398434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395561, 32.119320, 29.971556>,  <35.827831, 31.739756, 30.257740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395561, 32.119320, 29.971556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.558945, 31.757072, 30.017202>,  <36.656975, 31.539724, 30.044590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.558945, 31.757072, 30.017202>,  <36.395561, 32.119320, 29.971556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558945, 31.757072, 30.017202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317191, 0.023598, -0.948068,
		0.855891, 0.423445, 0.296892,
		0.408461, -0.905614, 0.114116,
		36.681484, 31.485388, 30.051437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948650, 32.184097, 29.539022>,  <36.395561, 32.119320, 29.971556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948650, 32.184097, 29.539022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.908123, 31.791391, 29.603361>,  <36.883804, 31.555767, 29.641964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.908123, 31.791391, 29.603361>,  <36.948650, 32.184097, 29.539022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908123, 31.791391, 29.603361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361410, -0.186955, -0.913472,
		0.926886, -0.034423, 0.373762,
		-0.101322, -0.981765, 0.160845,
		36.877728, 31.496862, 29.651615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619839, 31.801140, 29.307758>,  <36.948650, 32.184097, 29.539022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619839, 31.801140, 29.307758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.274765, 31.599413, 29.292561>,  <37.067722, 31.478376, 29.283442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.274765, 31.599413, 29.292561>,  <37.619839, 31.801140, 29.307758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274765, 31.599413, 29.292561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179916, -0.235817, -0.954998,
		0.472665, -0.830694, 0.294170,
		-0.862681, -0.504320, -0.037993,
		37.015961, 31.448116, 29.281162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903568, 31.292715, 28.944689>,  <37.619839, 31.801140, 29.307758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903568, 31.292715, 28.944689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.504971, 31.270859, 28.919373>,  <37.265812, 31.257746, 28.904182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.504971, 31.270859, 28.919373>,  <37.903568, 31.292715, 28.944689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504971, 31.270859, 28.919373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066774, -0.064511, -0.995680,
		0.050325, -0.996420, 0.067934,
		-0.996498, -0.054644, -0.063288,
		37.206020, 31.254467, 28.900387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773281, 30.764862, 28.529114>,  <37.903568, 31.292715, 28.944689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773281, 30.764862, 28.529114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416084, 30.942194, 28.498058>,  <37.201767, 31.048594, 28.479425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416084, 30.942194, 28.498058>,  <37.773281, 30.764862, 28.529114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416084, 30.942194, 28.498058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031997, -0.109529, -0.993468,
		-0.448939, -0.889641, 0.083623,
		-0.892989, 0.443331, -0.077638,
		37.148186, 31.075193, 28.474768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348808, 30.322445, 28.211891>,  <37.773281, 30.764862, 28.529114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348808, 30.322445, 28.211891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.160061, 30.665741, 28.131130>,  <37.046814, 30.871719, 28.082674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.160061, 30.665741, 28.131130>,  <37.348808, 30.322445, 28.211891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160061, 30.665741, 28.131130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251241, -0.088616, -0.963859,
		-0.845115, -0.505540, -0.173810,
		-0.471867, 0.858240, -0.201903,
		37.018501, 30.923214, 28.070559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885986, 30.252539, 27.594225>,  <37.348808, 30.322445, 28.211891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885986, 30.252539, 27.594225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.978031, 30.641279, 27.614431>,  <37.033257, 30.874523, 27.626556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.978031, 30.641279, 27.614431>,  <36.885986, 30.252539, 27.594225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978031, 30.641279, 27.614431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164128, 0.012411, -0.986361,
		-0.959224, 0.235263, -0.156652,
		0.230110, 0.971852, 0.050518,
		37.047066, 30.932835, 27.629587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498474, 30.611568, 27.005051>,  <36.885986, 30.252539, 27.594225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498474, 30.611568, 27.005051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.774418, 30.876764, 27.121351>,  <36.939983, 31.035883, 27.191132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.774418, 30.876764, 27.121351>,  <36.498474, 30.611568, 27.005051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774418, 30.876764, 27.121351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384215, 0.005095, -0.923229,
		-0.613575, 0.748610, -0.251217,
		0.689858, 0.662992, 0.290753,
		36.981377, 31.075663, 27.208578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427521, 31.250143, 26.574009>,  <36.498474, 30.611568, 27.005051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427521, 31.250143, 26.574009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.793182, 31.277599, 26.733814>,  <37.012581, 31.294073, 26.829699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.793182, 31.277599, 26.733814>,  <36.427521, 31.250143, 26.574009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793182, 31.277599, 26.733814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384521, 0.165157, -0.908222,
		-0.128324, 0.983876, 0.124584,
		0.914153, 0.068642, 0.399515,
		37.067429, 31.298191, 26.853668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291199, 32.046162, 26.557489>,  <36.427521, 31.250143, 26.574009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291199, 32.046162, 26.557489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976868, 32.174042, 26.345726>,  <35.788269, 32.250771, 26.218668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976868, 32.174042, 26.345726>,  <36.291199, 32.046162, 26.557489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976868, 32.174042, 26.345726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527608, 0.100057, 0.843575,
		0.322663, 0.942221, 0.090050,
		-0.785824, 0.319701, -0.529407,
		35.741119, 32.269951, 26.186903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127708, 32.745201, 26.757467>,  <36.291199, 32.046162, 26.557489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127708, 32.745201, 26.757467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797825, 32.575325, 26.608076>,  <35.599895, 32.473400, 26.518440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797825, 32.575325, 26.608076>,  <36.127708, 32.745201, 26.757467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797825, 32.575325, 26.608076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528208, 0.342416, 0.777012,
		-0.202107, 0.838085, -0.506721,
		-0.824711, -0.424693, -0.373479,
		35.550411, 32.447918, 26.496033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608322, 33.294338, 26.877747>,  <36.127708, 32.745201, 26.757467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608322, 33.294338, 26.877747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400684, 32.960728, 26.802971>,  <35.276100, 32.760563, 26.758106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.400684, 32.960728, 26.802971>,  <35.608322, 33.294338, 26.877747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400684, 32.960728, 26.802971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624196, 0.220505, 0.749505,
		-0.583884, 0.505749, -0.635057,
		-0.519094, -0.834024, -0.186937,
		35.244957, 32.710522, 26.746889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882030, 33.500416, 26.924416>,  <35.608322, 33.294338, 26.877747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882030, 33.500416, 26.924416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894035, 33.103771, 26.974714>,  <34.901237, 32.865784, 27.004892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894035, 33.103771, 26.974714>,  <34.882030, 33.500416, 26.924416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894035, 33.103771, 26.974714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559310, 0.087601, 0.824317,
		-0.828415, -0.095074, -0.551987,
		0.030016, -0.991608, 0.125746,
		34.903042, 32.806290, 27.012438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165909, 33.322330, 27.225832>,  <34.882030, 33.500416, 26.924416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165909, 33.322330, 27.225832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.430233, 33.037468, 27.320627>,  <34.588829, 32.866550, 27.377504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.430233, 33.037468, 27.320627>,  <34.165909, 33.322330, 27.225832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430233, 33.037468, 27.320627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276860, 0.062197, 0.958895,
		-0.697623, -0.699261, -0.156067,
		0.660811, -0.712156, 0.236987,
		34.628475, 32.823822, 27.391724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816498, 32.901295, 27.738295>,  <34.165909, 33.322330, 27.225832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816498, 32.901295, 27.738295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206219, 32.828030, 27.790726>,  <34.440052, 32.784073, 27.822184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206219, 32.828030, 27.790726>,  <33.816498, 32.901295, 27.738295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206219, 32.828030, 27.790726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159644, -0.151061, 0.975548,
		-0.158912, -0.971402, -0.176424,
		0.974300, -0.183192, 0.131073,
		34.498508, 32.773083, 27.830050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820747, 32.271576, 28.207317>,  <33.816498, 32.901295, 27.738295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820747, 32.271576, 28.207317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.177666, 32.451080, 28.227020>,  <34.391815, 32.558784, 28.238842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.177666, 32.451080, 28.227020>,  <33.820747, 32.271576, 28.207317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177666, 32.451080, 28.227020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016149, -0.077306, 0.996876,
		0.451170, -0.890300, -0.061732,
		0.892292, 0.448764, 0.049256,
		34.445354, 32.585709, 28.241796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289398, 31.767656, 28.553917>,  <33.820747, 32.271576, 28.207317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289398, 31.767656, 28.553917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.437984, 32.136978, 28.592943>,  <34.527138, 32.358570, 28.616360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.437984, 32.136978, 28.592943>,  <34.289398, 31.767656, 28.553917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437984, 32.136978, 28.592943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095595, -0.066491, 0.993197,
		0.923512, -0.378265, 0.063564,
		0.371466, 0.923306, 0.097565,
		34.549423, 32.413971, 28.622213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782536, 31.725176, 29.127449>,  <34.289398, 31.767656, 28.553917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782536, 31.725176, 29.127449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.737904, 32.121769, 29.100574>,  <34.711124, 32.359726, 29.084450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.737904, 32.121769, 29.100574>,  <34.782536, 31.725176, 29.127449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737904, 32.121769, 29.100574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165780, 0.048089, 0.984990,
		0.979830, 0.121044, 0.159003,
		-0.111581, 0.991482, -0.067185,
		34.704430, 32.419212, 29.080420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135464, 31.886377, 29.705500>,  <34.782536, 31.725176, 29.127449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135464, 31.886377, 29.705500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932911, 32.218407, 29.612076>,  <34.811378, 32.417625, 29.556023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932911, 32.218407, 29.612076>,  <35.135464, 31.886377, 29.705500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932911, 32.218407, 29.612076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178071, 0.164352, 0.970196,
		0.843720, 0.532884, 0.064587,
		-0.506387, 0.830074, -0.233558,
		34.780994, 32.467430, 29.542009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281445, 32.365143, 30.298098>,  <35.135464, 31.886377, 29.705500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281445, 32.365143, 30.298098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.935226, 32.483398, 30.136389>,  <34.727497, 32.554352, 30.039364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.935226, 32.483398, 30.136389>,  <35.281445, 32.365143, 30.298098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935226, 32.483398, 30.136389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404856, 0.062188, 0.912263,
		0.294840, 0.953274, 0.065865,
		-0.865541, 0.295638, -0.404274,
		34.675564, 32.572090, 30.015106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069717, 32.904343, 30.728004>,  <35.281445, 32.365143, 30.298098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069717, 32.904343, 30.728004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749680, 32.781113, 30.522116>,  <34.557655, 32.707172, 30.398582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.749680, 32.781113, 30.522116>,  <35.069717, 32.904343, 30.728004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749680, 32.781113, 30.522116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552269, 0.043301, 0.832541,
		-0.234201, 0.950374, -0.204787,
		-0.800093, -0.308080, -0.514721,
		34.509651, 32.688690, 30.367699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508755, 33.297489, 30.944054>,  <35.069717, 32.904343, 30.728004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508755, 33.297489, 30.944054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322483, 32.972149, 30.804569>,  <34.210720, 32.776943, 30.720879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.322483, 32.972149, 30.804569>,  <34.508755, 33.297489, 30.944054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322483, 32.972149, 30.804569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474700, -0.102971, 0.874103,
		-0.746861, 0.572587, -0.338147,
		-0.465681, -0.813352, -0.348712,
		34.182777, 32.728142, 30.699955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762978, 33.303555, 31.103683>,  <34.508755, 33.297489, 30.944054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762978, 33.303555, 31.103683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.798489, 32.915394, 31.013845>,  <33.819798, 32.682499, 30.959942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.798489, 32.915394, 31.013845>,  <33.762978, 33.303555, 31.103683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798489, 32.915394, 31.013845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624734, -0.229869, 0.746235,
		-0.775774, 0.074061, -0.626650,
		0.088781, -0.970399, -0.224595,
		33.825123, 32.624275, 30.946466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301338, 33.646168, 31.317879>,  <33.762978, 33.303555, 31.103683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301338, 33.646168, 31.317879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.074032, 33.883247, 31.546190>,  <32.937649, 34.025494, 31.683176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.074032, 33.883247, 31.546190>,  <33.301338, 33.646168, 31.317879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074032, 33.883247, 31.546190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392366, 0.804903, -0.445174,
		-0.723273, -0.029023, -0.689952,
		-0.568265, 0.592696, 0.570777,
		32.903553, 34.061058, 31.717422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771130, 34.133202, 30.914911>,  <33.301338, 33.646168, 31.317879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771130, 34.133202, 30.914911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952698, 34.250664, 31.251417>,  <33.061638, 34.321140, 31.453321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.952698, 34.250664, 31.251417>,  <32.771130, 34.133202, 30.914911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952698, 34.250664, 31.251417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489736, 0.706523, -0.510866,
		-0.744391, 0.643888, 0.176891,
		0.453918, 0.293654, 0.841264,
		33.088875, 34.338760, 31.503796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618027, 34.894718, 31.010788>,  <32.771130, 34.133202, 30.914911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618027, 34.894718, 31.010788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982334, 34.791729, 31.139915>,  <33.200920, 34.729935, 31.217392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982334, 34.791729, 31.139915>,  <32.618027, 34.894718, 31.010788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982334, 34.791729, 31.139915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401219, 0.736600, -0.544467,
		-0.097603, 0.625404, 0.774173,
		0.910767, -0.257471, 0.322819,
		33.255566, 34.714489, 31.236761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912971, 35.463783, 31.200468>,  <32.618027, 34.894718, 31.010788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912971, 35.463783, 31.200468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213215, 35.204220, 31.150667>,  <33.393360, 35.048481, 31.120787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.213215, 35.204220, 31.150667>,  <32.912971, 35.463783, 31.200468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213215, 35.204220, 31.150667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458629, 0.647315, -0.608804,
		0.475652, 0.399873, 0.783490,
		0.750609, -0.648911, -0.124503,
		33.438396, 35.009548, 31.113316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511089, 35.880161, 31.289438>,  <32.912971, 35.463783, 31.200468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511089, 35.880161, 31.289438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.617779, 35.546726, 31.095947>,  <33.681793, 35.346664, 30.979853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.617779, 35.546726, 31.095947>,  <33.511089, 35.880161, 31.289438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617779, 35.546726, 31.095947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591830, 0.537793, -0.600429,
		0.760656, -0.126138, 0.636783,
		0.266721, -0.833587, -0.483727,
		33.697796, 35.296650, 30.950829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230110, 35.885735, 31.207315>,  <33.511089, 35.880161, 31.289438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230110, 35.885735, 31.207315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087254, 35.652760, 30.915228>,  <34.001541, 35.512974, 30.739975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.087254, 35.652760, 30.915228>,  <34.230110, 35.885735, 31.207315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087254, 35.652760, 30.915228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553588, 0.497689, -0.667716,
		0.752325, -0.642707, 0.144687,
		-0.357137, -0.582437, -0.730219,
		33.980114, 35.478027, 30.696161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809376, 35.698658, 30.763832>,  <34.230110, 35.885735, 31.207315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809376, 35.698658, 30.763832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.501183, 35.597427, 30.529804>,  <34.316265, 35.536690, 30.389387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.501183, 35.597427, 30.529804>,  <34.809376, 35.698658, 30.763832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501183, 35.597427, 30.529804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508968, 0.308369, -0.803654,
		0.383801, -0.916985, -0.108788,
		-0.770486, -0.253073, -0.585069,
		34.270039, 35.521503, 30.354284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142605, 35.462109, 30.259094>,  <34.809376, 35.698658, 30.763832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142605, 35.462109, 30.259094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.775375, 35.534618, 30.118078>,  <34.555038, 35.578125, 30.033468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.775375, 35.534618, 30.118078>,  <35.142605, 35.462109, 30.259094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775375, 35.534618, 30.118078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395865, 0.466010, -0.791281,
		0.020852, -0.866011, -0.499589,
		-0.918072, 0.181270, -0.352540,
		34.499954, 35.589001, 30.012316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167809, 35.150455, 29.636051>,  <35.142605, 35.462109, 30.259094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167809, 35.150455, 29.636051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873344, 35.420162, 29.612617>,  <34.696667, 35.581985, 29.598557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.873344, 35.420162, 29.612617>,  <35.167809, 35.150455, 29.636051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873344, 35.420162, 29.612617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448649, 0.421355, -0.788146,
		-0.506733, -0.606488, -0.612694,
		-0.736163, 0.674264, -0.058585,
		34.652496, 35.622440, 29.595041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941841, 35.208225, 28.986122>,  <35.167809, 35.150455, 29.636051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941841, 35.208225, 28.986122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764252, 35.552307, 29.086472>,  <34.657700, 35.758755, 29.146681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.764252, 35.552307, 29.086472>,  <34.941841, 35.208225, 28.986122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764252, 35.552307, 29.086472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336143, 0.419426, -0.843261,
		-0.830599, -0.290057, -0.475365,
		-0.443974, 0.860203, 0.250874,
		34.631058, 35.810368, 29.161734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592411, 35.379864, 28.400457>,  <34.941841, 35.208225, 28.986122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592411, 35.379864, 28.400457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.599697, 35.729832, 28.594027>,  <34.604069, 35.939812, 28.710169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.599697, 35.729832, 28.594027>,  <34.592411, 35.379864, 28.400457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599697, 35.729832, 28.594027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272135, 0.461392, -0.844428,
		-0.962087, 0.147074, -0.229692,
		0.018215, 0.874921, 0.483923,
		34.605164, 35.992310, 28.739204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287449, 35.903458, 27.844805>,  <34.592411, 35.379864, 28.400457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287449, 35.903458, 27.844805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.528313, 36.060413, 28.122921>,  <34.672832, 36.154587, 28.289791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.528313, 36.060413, 28.122921>,  <34.287449, 35.903458, 27.844805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528313, 36.060413, 28.122921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569538, 0.399179, -0.718528,
		-0.559490, 0.828665, 0.016888,
		0.602161, 0.392391, 0.695293,
		34.708961, 36.178131, 28.331509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488529, 36.489994, 27.503740>,  <34.287449, 35.903458, 27.844805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488529, 36.489994, 27.503740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753021, 36.459538, 27.802263>,  <34.911716, 36.441265, 27.981377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753021, 36.459538, 27.802263>,  <34.488529, 36.489994, 27.503740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753021, 36.459538, 27.802263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670815, 0.505365, -0.542783,
		-0.335830, 0.859540, 0.385240,
		0.661231, -0.076142, 0.746309,
		34.951389, 36.436695, 28.026155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807850, 37.092422, 27.550455>,  <34.488529, 36.489994, 27.503740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807850, 37.092422, 27.550455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.081120, 36.861069, 27.728781>,  <35.245083, 36.722256, 27.835775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.081120, 36.861069, 27.728781>,  <34.807850, 37.092422, 27.550455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081120, 36.861069, 27.728781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701700, 0.350886, -0.620078,
		0.202212, 0.736448, 0.645565,
		0.683175, -0.578380, 0.445812,
		35.286072, 36.687553, 27.862524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412685, 37.519676, 27.634069>,  <34.807850, 37.092422, 27.550455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412685, 37.519676, 27.634069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581871, 37.166275, 27.714594>,  <35.683380, 36.954235, 27.762909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581871, 37.166275, 27.714594>,  <35.412685, 37.519676, 27.634069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581871, 37.166275, 27.714594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873621, 0.338601, -0.349478,
		0.240601, 0.323684, 0.915063,
		0.422962, -0.883503, 0.201309,
		35.708759, 36.901222, 27.774986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095573, 37.566273, 28.068945>,  <35.412685, 37.519676, 27.634069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095573, 37.566273, 28.068945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.138409, 37.218037, 27.876860>,  <36.164108, 37.009094, 27.761608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.138409, 37.218037, 27.876860>,  <36.095573, 37.566273, 28.068945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138409, 37.218037, 27.876860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862842, 0.321351, -0.390176,
		0.494000, -0.372565, 0.785595,
		0.107086, -0.870591, -0.480212,
		36.170536, 36.956860, 27.732796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686508, 37.589672, 27.827248>,  <36.095573, 37.566273, 28.068945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686508, 37.589672, 27.827248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.592846, 37.244926, 27.647306>,  <36.536648, 37.038078, 27.539341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.592846, 37.244926, 27.647306>,  <36.686508, 37.589672, 27.827248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592846, 37.244926, 27.647306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815635, 0.077661, -0.573331,
		0.529068, -0.501163, 0.684779,
		-0.234152, -0.861861, -0.449854,
		36.522602, 36.986370, 27.512350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302258, 37.061184, 27.775850>,  <36.686508, 37.589672, 27.827248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302258, 37.061184, 27.775850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068829, 36.979973, 27.461342>,  <36.928772, 36.931244, 27.272636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068829, 36.979973, 27.461342>,  <37.302258, 37.061184, 27.775850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068829, 36.979973, 27.461342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785206, 0.105857, -0.610119,
		0.207105, -0.973433, 0.097645,
		-0.583574, -0.203030, -0.786269,
		36.893757, 36.919064, 27.225462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698658, 36.632835, 27.389706>,  <37.302258, 37.061184, 27.775850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698658, 36.632835, 27.389706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424526, 36.783886, 27.140635>,  <37.260048, 36.874516, 26.991192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424526, 36.783886, 27.140635>,  <37.698658, 36.632835, 27.389706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424526, 36.783886, 27.140635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720177, 0.224582, -0.656435,
		-0.108044, -0.898310, -0.425869,
		-0.685326, 0.377625, -0.622678,
		37.218929, 36.897175, 26.953831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768494, 36.334972, 26.806519>,  <37.698658, 36.632835, 27.389706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768494, 36.334972, 26.806519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.573151, 36.660774, 26.681244>,  <37.455944, 36.856255, 26.606079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.573151, 36.660774, 26.681244>,  <37.768494, 36.334972, 26.806519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573151, 36.660774, 26.681244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688086, 0.138691, -0.712252,
		-0.536695, -0.563336, -0.628180,
		-0.488360, 0.814504, -0.313189,
		37.426643, 36.905125, 26.587288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516853, 36.302551, 25.988304>,  <37.768494, 36.334972, 26.806519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516853, 36.302551, 25.988304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.531132, 36.692928, 26.074329>,  <37.539700, 36.927155, 26.125944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.531132, 36.692928, 26.074329>,  <37.516853, 36.302551, 25.988304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531132, 36.692928, 26.074329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647762, 0.141279, -0.748628,
		-0.761006, 0.166033, -0.627139,
		0.035696, 0.975947, 0.215064,
		37.541840, 36.985714, 26.138849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548019, 36.545742, 25.407141>,  <37.516853, 36.302551, 25.988304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548019, 36.545742, 25.407141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.619587, 36.880379, 25.614256>,  <37.662529, 37.081161, 25.738525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.619587, 36.880379, 25.614256>,  <37.548019, 36.545742, 25.407141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619587, 36.880379, 25.614256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597163, 0.325911, -0.732925,
		-0.781910, 0.440341, -0.441267,
		0.178922, 0.836589, 0.517788,
		37.673264, 37.131355, 25.769592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591850, 37.078854, 24.966162>,  <37.548019, 36.545742, 25.407141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591850, 37.078854, 24.966162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795876, 37.230316, 25.275082>,  <37.918293, 37.321194, 25.460434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795876, 37.230316, 25.275082>,  <37.591850, 37.078854, 24.966162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795876, 37.230316, 25.275082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641313, 0.430926, -0.634839,
		-0.573193, 0.819096, -0.023040,
		0.510065, 0.378661, 0.772301,
		37.948895, 37.343914, 25.506771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723175, 37.738831, 24.807768>,  <37.591850, 37.078854, 24.966162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723175, 37.738831, 24.807768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.991764, 37.679104, 25.098099>,  <38.152920, 37.643269, 25.272297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.991764, 37.679104, 25.098099>,  <37.723175, 37.738831, 24.807768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991764, 37.679104, 25.098099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660469, 0.564728, -0.494837,
		-0.336007, 0.811657, 0.477820,
		0.671476, -0.149317, 0.725827,
		38.193207, 37.634308, 25.315847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003170, 38.371731, 25.017197>,  <37.723175, 37.738831, 24.807768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003170, 38.371731, 25.017197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.286140, 38.106087, 25.113947>,  <38.455921, 37.946701, 25.171997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.286140, 38.106087, 25.113947>,  <38.003170, 38.371731, 25.017197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286140, 38.106087, 25.113947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698845, 0.606065, -0.379870,
		0.105684, 0.437764, 0.892857,
		0.707423, -0.664115, 0.241877,
		38.498367, 37.906853, 25.186510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550186, 38.791706, 25.127323>,  <38.003170, 38.371731, 25.017197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550186, 38.791706, 25.127323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.712528, 38.427242, 25.098839>,  <38.809933, 38.208565, 25.081749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.712528, 38.427242, 25.098839>,  <38.550186, 38.791706, 25.127323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712528, 38.427242, 25.098839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775283, 0.384492, -0.501101,
		0.483964, 0.148164, 0.862454,
		0.405852, -0.911161, -0.071211,
		38.834282, 38.153893, 25.077475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255394, 38.889172, 25.259132>,  <38.550186, 38.791706, 25.127323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255394, 38.889172, 25.259132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.251266, 38.549225, 25.048376>,  <39.248791, 38.345257, 24.921923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.251266, 38.549225, 25.048376>,  <39.255394, 38.889172, 25.259132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251266, 38.549225, 25.048376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548757, 0.435673, -0.713481,
		0.835918, -0.296494, 0.461879,
		-0.010315, -0.849871, -0.526890,
		39.248173, 38.294262, 24.890308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889057, 38.924458, 24.867451>,  <39.255394, 38.889172, 25.259132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889057, 38.924458, 24.867451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716164, 38.622936, 24.669481>,  <39.612427, 38.442024, 24.550699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.716164, 38.622936, 24.669481>,  <39.889057, 38.924458, 24.867451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716164, 38.622936, 24.669481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370407, 0.351990, -0.859594,
		0.822174, -0.554871, 0.127072,
		-0.432236, -0.753804, -0.494925,
		39.586494, 38.396793, 24.521004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509346, 38.450771, 25.098999>,  <39.889057, 38.924458, 24.867451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509346, 38.450771, 25.098999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.852306, 38.479507, 25.302845>,  <41.058083, 38.496750, 25.425152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.852306, 38.479507, 25.302845>,  <40.509346, 38.450771, 25.098999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852306, 38.479507, 25.302845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385338, -0.566769, 0.728209,
		0.341148, -0.820739, -0.458264,
		0.857399, 0.071840, 0.509614,
		41.109528, 38.501060, 25.455729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545815, 37.901127, 25.482754>,  <40.509346, 38.450771, 25.098999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545815, 37.901127, 25.482754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.813992, 38.111942, 25.691652>,  <40.974895, 38.238430, 25.816992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.813992, 38.111942, 25.691652>,  <40.545815, 37.901127, 25.482754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813992, 38.111942, 25.691652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277136, -0.475047, 0.835180,
		0.688263, -0.704671, -0.172430,
		0.670440, 0.527038, 0.522247,
		41.015125, 38.270054, 25.848326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882801, 37.414341, 25.905180>,  <40.545815, 37.901127, 25.482754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882801, 37.414341, 25.905180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.981773, 37.759933, 26.080597>,  <41.041157, 37.967289, 26.185846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.981773, 37.759933, 26.080597>,  <40.882801, 37.414341, 25.905180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.981773, 37.759933, 26.080597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193372, -0.399475, 0.896118,
		0.949413, -0.306529, 0.068227,
		0.247431, 0.863979, 0.438540,
		41.056004, 38.019127, 26.212158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295704, 37.214279, 26.456081>,  <40.882801, 37.414341, 25.905180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295704, 37.214279, 26.456081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.149117, 37.574390, 26.550055>,  <41.061165, 37.790459, 26.606438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.149117, 37.574390, 26.550055>,  <41.295704, 37.214279, 26.456081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149117, 37.574390, 26.550055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361597, -0.370458, 0.855575,
		0.857291, 0.228592, 0.461301,
		-0.366470, 0.900281, 0.234932,
		41.039177, 37.844475, 26.620535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.582417, 37.427956, 27.184721>,  <41.295704, 37.214279, 26.456081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.582417, 37.427956, 27.184721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.248878, 37.630779, 27.097464>,  <41.048756, 37.752476, 27.045109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.248878, 37.630779, 27.097464>,  <41.582417, 37.427956, 27.184721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248878, 37.630779, 27.097464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377693, -0.235906, 0.895375,
		0.402550, 0.828997, 0.388224,
		-0.833847, 0.507063, -0.218142,
		40.998726, 37.782898, 27.032021>
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
