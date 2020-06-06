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
	<24.284422, 35.257263, 34.667095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.336544, 35.019913, 34.984821>,  <24.367817, 34.877502, 35.175457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.336544, 35.019913, 34.984821>,  <24.284422, 35.257263, 34.667095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.336544, 35.019913, 34.984821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846645, 0.483503, 0.222301,
		-0.515959, 0.643533, 0.565378,
		0.130304, -0.593372, 0.794312,
		24.375635, 34.841900, 35.223114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.433289, 35.628963, 35.352909>,  <24.284422, 35.257263, 34.667095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.433289, 35.628963, 35.352909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.627474, 35.279289, 35.348450>,  <24.743984, 35.069485, 35.345776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.627474, 35.279289, 35.348450>,  <24.433289, 35.628963, 35.352909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.627474, 35.279289, 35.348450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858958, 0.474556, 0.192320,
		-0.162835, -0.102937, 0.981269,
		0.485464, -0.874186, -0.011144,
		24.773113, 35.017033, 35.345108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819658, 35.571030, 35.994293>,  <24.433289, 35.628963, 35.352909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.819658, 35.571030, 35.994293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003176, 35.347210, 35.718201>,  <25.113285, 35.212917, 35.552547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.003176, 35.347210, 35.718201>,  <24.819658, 35.571030, 35.994293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.003176, 35.347210, 35.718201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882865, 0.374756, 0.283034,
		0.100296, -0.739232, 0.665940,
		0.458793, -0.559548, -0.690228,
		25.140814, 35.179344, 35.511131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286266, 35.194008, 36.344109>,  <24.819658, 35.571030, 35.994293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286266, 35.194008, 36.344109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409437, 35.295773, 35.977402>,  <25.483339, 35.356831, 35.757378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409437, 35.295773, 35.977402>,  <25.286266, 35.194008, 36.344109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409437, 35.295773, 35.977402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780808, 0.482998, 0.396297,
		0.543617, -0.837847, -0.049919,
		0.307925, 0.254412, -0.916764,
		25.501814, 35.372097, 35.702374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571779, 35.850582, 36.288322>,  <25.286266, 35.194008, 36.344109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571779, 35.850582, 36.288322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623470, 35.969093, 35.909794>,  <25.654486, 36.040199, 35.682678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623470, 35.969093, 35.909794>,  <25.571779, 35.850582, 36.288322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623470, 35.969093, 35.909794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274006, 0.927835, 0.253068,
		0.953006, 0.226593, 0.201084,
		0.129229, 0.296273, -0.946320,
		25.662239, 36.057976, 35.625896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022507, 35.275322, 36.333782>,  <25.571779, 35.850582, 36.288322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022507, 35.275322, 36.333782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369572, 35.130291, 36.197723>,  <26.577810, 35.043270, 36.116089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369572, 35.130291, 36.197723>,  <26.022507, 35.275322, 36.333782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369572, 35.130291, 36.197723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410061, 0.135105, 0.901996,
		-0.281091, -0.922108, 0.265905,
		0.867662, -0.362580, -0.340143,
		26.629871, 35.021519, 36.095680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151365, 34.757484, 36.787472>,  <26.022507, 35.275322, 36.333782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151365, 34.757484, 36.787472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506285, 34.820225, 36.613991>,  <26.719236, 34.857868, 36.509903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.506285, 34.820225, 36.613991>,  <26.151365, 34.757484, 36.787472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506285, 34.820225, 36.613991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428588, 0.066888, 0.901021,
		0.170341, -0.985354, -0.007878,
		0.887297, 0.156857, -0.433705,
		26.772474, 34.867283, 36.483879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662535, 34.242798, 37.064976>,  <26.151365, 34.757484, 36.787472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662535, 34.242798, 37.064976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878933, 34.549747, 36.927303>,  <27.008772, 34.733917, 36.844700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878933, 34.549747, 36.927303>,  <26.662535, 34.242798, 37.064976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878933, 34.549747, 36.927303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526978, 0.009641, 0.849824,
		0.655454, -0.641124, -0.399175,
		0.540994, 0.767377, -0.344177,
		27.041231, 34.779961, 36.824051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399494, 34.078880, 37.315392>,  <26.662535, 34.242798, 37.064976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399494, 34.078880, 37.315392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373837, 34.465664, 37.216698>,  <27.358442, 34.697735, 37.157482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373837, 34.465664, 37.216698>,  <27.399494, 34.078880, 37.315392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373837, 34.465664, 37.216698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498741, 0.245210, 0.831342,
		0.864374, -0.069729, -0.497991,
		-0.064143, 0.966959, -0.246731,
		27.354593, 34.755753, 37.142677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958735, 34.233562, 37.785103>,  <27.399494, 34.078880, 37.315392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958735, 34.233562, 37.785103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758486, 34.556221, 37.659435>,  <27.638336, 34.749817, 37.584034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.758486, 34.556221, 37.659435>,  <27.958735, 34.233562, 37.785103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.758486, 34.556221, 37.659435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203426, 0.462385, 0.863028,
		0.841424, 0.368141, -0.395572,
		-0.500623, 0.806643, -0.314173,
		27.608299, 34.798214, 37.565182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404747, 34.757847, 37.929615>,  <27.958735, 34.233562, 37.785103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404747, 34.757847, 37.929615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050369, 34.940216, 37.895584>,  <27.837744, 35.049637, 37.875164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050369, 34.940216, 37.895584>,  <28.404747, 34.757847, 37.929615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050369, 34.940216, 37.895584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175279, 0.498972, 0.848708,
		0.429397, 0.736995, -0.521975,
		-0.885943, 0.455923, -0.085077,
		27.784586, 35.076992, 37.870060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506140, 35.463940, 38.160881>,  <28.404747, 34.757847, 37.929615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506140, 35.463940, 38.160881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113184, 35.393234, 38.185101>,  <27.877411, 35.350811, 38.199631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113184, 35.393234, 38.185101>,  <28.506140, 35.463940, 38.160881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113184, 35.393234, 38.185101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032818, 0.482248, 0.875420,
		-0.183946, 0.858015, -0.479556,
		-0.982388, -0.176768, 0.060550,
		27.818468, 35.340202, 38.203266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324261, 36.009048, 38.549942>,  <28.506140, 35.463940, 38.160881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324261, 36.009048, 38.549942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997097, 35.783417, 38.595261>,  <27.800798, 35.648037, 38.622452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.997097, 35.783417, 38.595261>,  <28.324261, 36.009048, 38.549942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997097, 35.783417, 38.595261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135442, 0.380163, 0.914949,
		-0.559175, 0.733002, -0.387340,
		-0.817911, -0.564079, 0.113299,
		27.751724, 35.614193, 38.629250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782639, 36.409485, 38.813095>,  <28.324261, 36.009048, 38.549942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782639, 36.409485, 38.813095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686989, 36.032040, 38.904678>,  <27.629599, 35.805573, 38.959629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.686989, 36.032040, 38.904678>,  <27.782639, 36.409485, 38.813095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686989, 36.032040, 38.904678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053233, 0.248181, 0.967250,
		-0.969529, 0.219103, -0.109577,
		-0.239122, -0.943610, 0.228955,
		27.615252, 35.748955, 38.973366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273254, 36.535645, 39.189442>,  <27.782639, 36.409485, 38.813095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273254, 36.535645, 39.189442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405861, 36.169941, 39.282585>,  <27.485424, 35.950520, 39.338470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405861, 36.169941, 39.282585>,  <27.273254, 36.535645, 39.189442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405861, 36.169941, 39.282585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132340, 0.199308, 0.970960,
		-0.934122, -0.352705, -0.054919,
		0.331517, -0.914262, 0.232855,
		27.505316, 35.895660, 39.352440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690882, 36.237057, 39.515957>,  <27.273254, 36.535645, 39.189442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690882, 36.237057, 39.515957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026218, 36.044254, 39.617821>,  <27.227421, 35.928574, 39.678940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026218, 36.044254, 39.617821>,  <26.690882, 36.237057, 39.515957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026218, 36.044254, 39.617821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218092, 0.131586, 0.967016,
		-0.499620, -0.866229, 0.005192,
		0.838341, -0.482008, 0.254661,
		27.277721, 35.899651, 39.694218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.440168, 35.851467, 40.002010>,  <26.690882, 36.237057, 39.515957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.440168, 35.851467, 40.002010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832952, 35.866528, 40.076126>,  <27.068623, 35.875565, 40.120598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832952, 35.866528, 40.076126>,  <26.440168, 35.851467, 40.002010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832952, 35.866528, 40.076126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185408, -0.000419, 0.982661,
		0.037089, -0.999290, 0.006572,
		0.981961, 0.037664, 0.185292,
		27.127541, 35.877823, 40.131714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486675, 35.377159, 40.487808>,  <26.440168, 35.851467, 40.002010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486675, 35.377159, 40.487808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837797, 35.567989, 40.505054>,  <27.048470, 35.682487, 40.515400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837797, 35.567989, 40.505054>,  <26.486675, 35.377159, 40.487808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837797, 35.567989, 40.505054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059614, 0.019500, 0.998031,
		0.475295, -0.878646, 0.045557,
		0.877805, 0.477075, 0.043112,
		27.101139, 35.711113, 40.517986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821573, 34.989254, 41.093620>,  <26.486675, 35.377159, 40.487808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821573, 34.989254, 41.093620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999676, 35.341301, 41.027725>,  <27.106537, 35.552528, 40.988190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.999676, 35.341301, 41.027725>,  <26.821573, 34.989254, 41.093620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.999676, 35.341301, 41.027725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089392, 0.139364, 0.986198,
		0.890931, -0.453834, -0.016623,
		0.445254, 0.880120, -0.164733,
		27.133251, 35.605335, 40.978306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386501, 34.904755, 41.488045>,  <26.821573, 34.989254, 41.093620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386501, 34.904755, 41.488045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314188, 35.293015, 41.424595>,  <27.270800, 35.525970, 41.386524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314188, 35.293015, 41.424595>,  <27.386501, 34.904755, 41.488045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314188, 35.293015, 41.424595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123870, 0.182468, 0.975378,
		0.975691, 0.156684, -0.153222,
		-0.180784, 0.970647, -0.158624,
		27.259953, 35.584209, 41.377007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896776, 35.243931, 41.893848>,  <27.386501, 34.904755, 41.488045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896776, 35.243931, 41.893848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647070, 35.547073, 41.818016>,  <27.497246, 35.728958, 41.772518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.647070, 35.547073, 41.818016>,  <27.896776, 35.243931, 41.893848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.647070, 35.547073, 41.818016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057386, 0.286507, 0.956358,
		0.779102, 0.586142, -0.222347,
		-0.624265, 0.757860, -0.189582,
		27.459791, 35.774433, 41.761143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258945, 35.682549, 42.145638>,  <27.896776, 35.243931, 41.893848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258945, 35.682549, 42.145638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889502, 35.835758, 42.139458>,  <27.667835, 35.927685, 42.135750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.889502, 35.835758, 42.139458>,  <28.258945, 35.682549, 42.145638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889502, 35.835758, 42.139458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090791, 0.257735, 0.961941,
		0.372431, 0.887053, -0.272821,
		-0.923608, 0.383027, -0.015452,
		27.612419, 35.950665, 42.134823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326958, 36.358505, 42.494114>,  <28.258945, 35.682549, 42.145638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326958, 36.358505, 42.494114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946575, 36.234959, 42.500797>,  <27.718346, 36.160831, 42.504807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946575, 36.234959, 42.500797>,  <28.326958, 36.358505, 42.494114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946575, 36.234959, 42.500797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011705, 0.089905, 0.995882,
		-0.309098, 0.946846, -0.089111,
		-0.950958, -0.308868, 0.016706,
		27.661287, 36.142300, 42.505810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054003, 36.773151, 42.989120>,  <28.326958, 36.358505, 42.494114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054003, 36.773151, 42.989120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840197, 36.436367, 42.959740>,  <27.711914, 36.234295, 42.942112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.840197, 36.436367, 42.959740>,  <28.054003, 36.773151, 42.989120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840197, 36.436367, 42.959740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007825, -0.091835, 0.995743,
		-0.845124, 0.531664, 0.055675,
		-0.534514, -0.841962, -0.073452,
		27.679842, 36.183777, 42.937706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.498928, 36.816620, 43.484299>,  <28.054003, 36.773151, 42.989120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.498928, 36.816620, 43.484299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580912, 36.436802, 43.389332>,  <27.630102, 36.208912, 43.332352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580912, 36.436802, 43.389332>,  <27.498928, 36.816620, 43.484299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580912, 36.436802, 43.389332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226415, -0.281979, 0.932322,
		-0.952223, -0.137332, -0.272784,
		0.204957, -0.949541, -0.237413,
		27.642399, 36.151939, 43.318108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082872, 36.262165, 43.717499>,  <27.498928, 36.816620, 43.484299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082872, 36.262165, 43.717499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463024, 36.137821, 43.722301>,  <27.691116, 36.063217, 43.725182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463024, 36.137821, 43.722301>,  <27.082872, 36.262165, 43.717499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463024, 36.137821, 43.722301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075556, -0.193213, 0.978244,
		-0.301773, -0.930611, -0.207113,
		0.950382, -0.310856, 0.012007,
		27.748138, 36.044563, 43.725903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889896, 35.696796, 44.097858>,  <27.082872, 36.262165, 43.717499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889896, 35.696796, 44.097858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279110, 35.781288, 44.134933>,  <27.512638, 35.831982, 44.157177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.279110, 35.781288, 44.134933>,  <26.889896, 35.696796, 44.097858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.279110, 35.781288, 44.134933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031728, -0.275438, 0.960795,
		0.228477, -0.937826, -0.261308,
		0.973033, 0.211228, 0.092686,
		27.571020, 35.844658, 44.162739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129332, 35.203987, 44.480286>,  <26.889896, 35.696796, 44.097858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129332, 35.203987, 44.480286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406267, 35.487789, 44.532856>,  <27.572428, 35.658070, 44.564396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406267, 35.487789, 44.532856>,  <27.129332, 35.203987, 44.480286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406267, 35.487789, 44.532856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116814, -0.289937, 0.949890,
		0.712055, -0.642293, -0.283614,
		0.692338, 0.709505, 0.131422,
		27.613968, 35.700642, 44.572281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194118, 34.517498, 44.123882>,  <27.129332, 35.203987, 44.480286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194118, 34.517498, 44.123882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813597, 34.423592, 44.043976>,  <26.585283, 34.367249, 43.996033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.813597, 34.423592, 44.043976>,  <27.194118, 34.517498, 44.123882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.813597, 34.423592, 44.043976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308008, -0.749867, -0.585518,
		-0.012340, -0.618535, 0.785661,
		-0.951304, -0.234765, -0.199767,
		26.528206, 34.353161, 43.984047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102680, 33.800503, 44.112617>,  <27.194118, 34.517498, 44.123882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102680, 33.800503, 44.112617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812477, 33.963631, 43.890873>,  <26.638355, 34.061508, 43.757824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812477, 33.963631, 43.890873>,  <27.102680, 33.800503, 44.112617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812477, 33.963631, 43.890873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161312, -0.682301, -0.713052,
		-0.669039, -0.606752, 0.429230,
		-0.725510, 0.407820, -0.554363,
		26.594824, 34.085976, 43.724564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980862, 33.215446, 43.539722>,  <27.102680, 33.800503, 44.112617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980862, 33.215446, 43.539722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840492, 33.557892, 43.387970>,  <26.756271, 33.763359, 43.296917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840492, 33.557892, 43.387970>,  <26.980862, 33.215446, 43.539722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840492, 33.557892, 43.387970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239617, -0.309560, -0.920194,
		-0.905228, -0.413822, -0.096507,
		-0.350922, 0.856110, -0.379381,
		26.735216, 33.814724, 43.274155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439110, 33.018375, 42.971878>,  <26.980862, 33.215446, 43.539722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439110, 33.018375, 42.971878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629332, 33.367496, 42.927937>,  <26.743464, 33.576969, 42.901569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629332, 33.367496, 42.927937>,  <26.439110, 33.018375, 42.971878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629332, 33.367496, 42.927937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107858, -0.181791, -0.977404,
		-0.873050, 0.452958, -0.180589,
		0.475552, 0.872801, -0.109857,
		26.771997, 33.629337, 42.894978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439180, 32.472698, 42.398705>,  <26.439110, 33.018375, 42.971878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439180, 32.472698, 42.398705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171774, 32.379967, 42.681362>,  <26.011330, 32.324326, 42.850956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171774, 32.379967, 42.681362>,  <26.439180, 32.472698, 42.398705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171774, 32.379967, 42.681362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337092, -0.941418, 0.010049,
		0.662915, 0.244921, 0.707501,
		-0.668515, -0.231831, 0.706641,
		25.971220, 32.310417, 42.893356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760540, 32.216946, 43.036644>,  <26.439180, 32.472698, 42.398705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760540, 32.216946, 43.036644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411274, 32.042263, 42.950050>,  <26.201714, 31.937452, 42.898094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411274, 32.042263, 42.950050>,  <26.760540, 32.216946, 43.036644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411274, 32.042263, 42.950050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479423, -0.849614, -0.219794,
		-0.087940, -0.295704, 0.951223,
		-0.873166, -0.436710, -0.216483,
		26.149324, 31.911249, 42.885105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772984, 31.580929, 43.301872>,  <26.760540, 32.216946, 43.036644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772984, 31.580929, 43.301872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527197, 31.562050, 42.986862>,  <26.379725, 31.550722, 42.797855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.527197, 31.562050, 42.986862>,  <26.772984, 31.580929, 43.301872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.527197, 31.562050, 42.986862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634990, -0.621984, -0.458174,
		-0.468207, -0.781606, 0.412159,
		-0.614468, -0.047197, -0.787529,
		26.342857, 31.547892, 42.750603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764380, 30.842043, 42.989384>,  <26.772984, 31.580929, 43.301872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764380, 30.842043, 42.989384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645540, 31.111361, 42.718563>,  <26.574236, 31.272951, 42.556068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645540, 31.111361, 42.718563>,  <26.764380, 30.842043, 42.989384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645540, 31.111361, 42.718563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328161, -0.593881, -0.734585,
		-0.896684, -0.440428, -0.044507,
		-0.297100, 0.673296, -0.677055,
		26.556410, 31.313349, 42.515446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602707, 30.495146, 42.331055>,  <26.764380, 30.842043, 42.989384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602707, 30.495146, 42.331055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595940, 30.871250, 42.195038>,  <26.591879, 31.096912, 42.113430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595940, 30.871250, 42.195038>,  <26.602707, 30.495146, 42.331055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595940, 30.871250, 42.195038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352377, -0.312660, -0.882085,
		-0.935705, -0.134745, -0.326036,
		-0.016918, 0.940259, -0.340038,
		26.590864, 31.153328, 42.093025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469381, 30.427805, 41.613823>,  <26.602707, 30.495146, 42.331055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469381, 30.427805, 41.613823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584501, 30.809620, 41.644890>,  <26.653572, 31.038708, 41.663528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.584501, 30.809620, 41.644890>,  <26.469381, 30.427805, 41.613823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584501, 30.809620, 41.644890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496643, -0.079416, -0.864314,
		-0.818851, 0.287321, -0.496920,
		0.287799, 0.954536, 0.077666,
		26.670841, 31.095982, 41.668190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243065, 30.715597, 41.098991>,  <26.469381, 30.427805, 41.613823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243065, 30.715597, 41.098991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545029, 30.957476, 41.200542>,  <26.726206, 31.102604, 41.261475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.545029, 30.957476, 41.200542>,  <26.243065, 30.715597, 41.098991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545029, 30.957476, 41.200542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338745, -0.028042, -0.940460,
		-0.561575, 0.795961, -0.226007,
		0.754907, 0.604698, 0.253880,
		26.771502, 31.138885, 41.276707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206966, 31.260271, 40.647144>,  <26.243065, 30.715597, 41.098991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206966, 31.260271, 40.647144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570936, 31.333193, 40.796169>,  <26.789318, 31.376945, 40.885582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.570936, 31.333193, 40.796169>,  <26.206966, 31.260271, 40.647144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.570936, 31.333193, 40.796169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334519, 0.208485, -0.919038,
		-0.245219, 0.960884, 0.128721,
		0.909926, 0.182306, 0.372559,
		26.843914, 31.387884, 40.907936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457977, 31.930304, 40.374725>,  <26.206966, 31.260271, 40.647144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457977, 31.930304, 40.374725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795298, 31.757360, 40.502419>,  <26.997690, 31.653595, 40.579033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795298, 31.757360, 40.502419>,  <26.457977, 31.930304, 40.374725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795298, 31.757360, 40.502419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480058, 0.338921, -0.809121,
		0.241637, 0.835582, 0.493371,
		0.843300, -0.432360, 0.319232,
		27.048288, 31.627653, 40.598186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067459, 32.397377, 40.178673>,  <26.457977, 31.930304, 40.374725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067459, 32.397377, 40.178673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206882, 32.027729, 40.241287>,  <27.290537, 31.805939, 40.278854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206882, 32.027729, 40.241287>,  <27.067459, 32.397377, 40.178673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206882, 32.027729, 40.241287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402801, -0.003110, -0.915282,
		0.846321, 0.382080, 0.371154,
		0.348557, -0.924124, 0.156534,
		27.311449, 31.750492, 40.288246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769375, 32.400429, 39.986084>,  <27.067459, 32.397377, 40.178673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769375, 32.400429, 39.986084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649351, 32.019135, 39.971661>,  <27.577337, 31.790358, 39.963005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.649351, 32.019135, 39.971661>,  <27.769375, 32.400429, 39.986084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649351, 32.019135, 39.971661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444632, -0.106314, -0.889381,
		0.843959, -0.282902, 0.455741,
		-0.300059, -0.953239, -0.036062,
		27.559334, 31.733164, 39.960842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308195, 32.113091, 39.650963>,  <27.769375, 32.400429, 39.986084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308195, 32.113091, 39.650963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030579, 31.825539, 39.635418>,  <27.864008, 31.653008, 39.626091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.030579, 31.825539, 39.635418>,  <28.308195, 32.113091, 39.650963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030579, 31.825539, 39.635418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209697, -0.150218, -0.966158,
		0.688717, -0.678705, 0.255005,
		-0.694043, -0.718884, -0.038864,
		27.822365, 31.609873, 39.623760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578568, 31.516562, 39.344852>,  <28.308195, 32.113091, 39.650963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578568, 31.516562, 39.344852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183521, 31.467621, 39.305561>,  <27.946493, 31.438257, 39.281986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183521, 31.467621, 39.305561>,  <28.578568, 31.516562, 39.344852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183521, 31.467621, 39.305561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106727, -0.064962, -0.992164,
		0.115013, -0.990359, 0.077215,
		-0.987614, -0.122353, -0.098227,
		27.887238, 31.430916, 39.276093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494530, 30.945005, 38.948204>,  <28.578568, 31.516562, 39.344852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494530, 30.945005, 38.948204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145073, 31.137819, 38.921696>,  <27.935398, 31.253508, 38.905792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145073, 31.137819, 38.921696>,  <28.494530, 30.945005, 38.948204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145073, 31.137819, 38.921696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056048, -0.035592, -0.997794,
		-0.483328, -0.875430, 0.004078,
		-0.873643, 0.482033, -0.066268,
		27.882980, 31.282429, 38.901814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132284, 30.583395, 38.521687>,  <28.494530, 30.945005, 38.948204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132284, 30.583395, 38.521687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970831, 30.949305, 38.515167>,  <27.873959, 31.168850, 38.511253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970831, 30.949305, 38.515167>,  <28.132284, 30.583395, 38.521687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970831, 30.949305, 38.515167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035148, -0.002299, -0.999379,
		-0.914246, -0.403955, -0.031225,
		-0.403632, 0.914776, -0.016300,
		27.849741, 31.223738, 38.510277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814268, 30.655636, 37.869061>,  <28.132284, 30.583395, 38.521687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814268, 30.655636, 37.869061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794888, 31.042143, 37.970242>,  <27.783258, 31.274046, 38.030949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794888, 31.042143, 37.970242>,  <27.814268, 30.655636, 37.869061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794888, 31.042143, 37.970242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288059, 0.256005, -0.922759,
		-0.956386, 0.028155, -0.290745,
		-0.048452, 0.966265, 0.252950,
		27.780352, 31.332022, 38.046127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236471, 31.038589, 37.469948>,  <27.814268, 30.655636, 37.869061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236471, 31.038589, 37.469948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516457, 31.298517, 37.588463>,  <27.684448, 31.454473, 37.659573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516457, 31.298517, 37.588463>,  <27.236471, 31.038589, 37.469948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516457, 31.298517, 37.588463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005349, 0.419623, -0.907683,
		-0.714160, 0.633759, 0.297196,
		0.699962, 0.649820, 0.296288,
		27.726446, 31.493464, 37.677349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070139, 31.696899, 37.063984>,  <27.236471, 31.038589, 37.469948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070139, 31.696899, 37.063984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433838, 31.766506, 37.215240>,  <27.652058, 31.808270, 37.305992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.433838, 31.766506, 37.215240>,  <27.070139, 31.696899, 37.063984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.433838, 31.766506, 37.215240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276632, 0.426188, -0.861301,
		-0.311039, 0.887740, 0.339371,
		0.909247, 0.174017, 0.378138,
		27.706612, 31.818710, 37.328682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190577, 32.387318, 36.857796>,  <27.070139, 31.696899, 37.063984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190577, 32.387318, 36.857796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541075, 32.207191, 36.926392>,  <27.751373, 32.099113, 36.967548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541075, 32.207191, 36.926392>,  <27.190577, 32.387318, 36.857796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541075, 32.207191, 36.926392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342912, 0.332704, -0.878475,
		0.338538, 0.828566, 0.445950,
		0.876244, -0.450319, 0.171493,
		27.803947, 32.072094, 36.977840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688414, 32.868977, 36.674534>,  <27.190577, 32.387318, 36.857796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688414, 32.868977, 36.674534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934832, 32.554111, 36.686253>,  <28.082682, 32.365192, 36.693283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934832, 32.554111, 36.686253>,  <27.688414, 32.868977, 36.674534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934832, 32.554111, 36.686253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576915, 0.425553, -0.697191,
		0.536339, 0.446400, 0.716287,
		0.616044, -0.787167, 0.029294,
		28.119644, 32.317963, 36.695042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.331366, 33.022469, 37.015213>,  <27.688414, 32.868977, 36.674534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.331366, 33.022469, 37.015213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369246, 32.734047, 36.740662>,  <28.391973, 32.560993, 36.575932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369246, 32.734047, 36.740662>,  <28.331366, 33.022469, 37.015213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369246, 32.734047, 36.740662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600020, 0.591505, -0.538608,
		0.794361, -0.360833, 0.488662,
		0.094698, -0.721056, -0.686375,
		28.397655, 32.517731, 36.534748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040506, 32.887077, 36.836720>,  <28.331366, 33.022469, 37.015213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040506, 32.887077, 36.836720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860445, 32.738083, 36.512100>,  <28.752409, 32.648685, 36.317329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860445, 32.738083, 36.512100>,  <29.040506, 32.887077, 36.836720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860445, 32.738083, 36.512100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541868, 0.608429, -0.579822,
		0.709747, -0.700762, -0.072048,
		-0.450154, -0.372487, -0.811551,
		28.725399, 32.626335, 36.268635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347937, 33.198463, 36.369186>,  <29.040506, 32.887077, 36.836720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347937, 33.198463, 36.369186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100914, 32.992973, 36.130955>,  <28.952700, 32.869678, 35.988014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100914, 32.992973, 36.130955>,  <29.347937, 33.198463, 36.369186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100914, 32.992973, 36.130955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232699, 0.603992, -0.762263,
		0.751316, -0.609331, -0.253457,
		-0.617556, -0.513721, -0.595579,
		28.915648, 32.838856, 35.952282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703289, 32.904621, 35.801605>,  <29.347937, 33.198463, 36.369186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703289, 32.904621, 35.801605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327036, 32.944302, 35.671761>,  <29.101284, 32.968109, 35.593857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327036, 32.944302, 35.671761>,  <29.703289, 32.904621, 35.801605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327036, 32.944302, 35.671761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321163, 0.569603, -0.756576,
		0.109843, -0.815911, -0.567647,
		-0.940632, 0.099203, -0.324607,
		29.044846, 32.974064, 35.574379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735914, 32.716656, 35.060219>,  <29.703289, 32.904621, 35.801605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735914, 32.716656, 35.060219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417021, 32.946762, 35.133411>,  <29.225685, 33.084827, 35.177326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417021, 32.946762, 35.133411>,  <29.735914, 32.716656, 35.060219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417021, 32.946762, 35.133411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399329, 0.729882, -0.554804,
		-0.452718, -0.369238, -0.811609,
		-0.797235, 0.575269, 0.182983,
		29.177851, 33.119343, 35.188305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466513, 32.946804, 34.505772>,  <29.735914, 32.716656, 35.060219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466513, 32.946804, 34.505772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409412, 33.225025, 34.787430>,  <29.375153, 33.391960, 34.956425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.409412, 33.225025, 34.787430>,  <29.466513, 32.946804, 34.505772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409412, 33.225025, 34.787430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382145, 0.695001, -0.609048,
		-0.913010, 0.182145, -0.365014,
		-0.142750, 0.695555, 0.704149,
		29.366587, 33.433693, 34.998672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166790, 33.016373, 34.468311>,  <29.466513, 32.946804, 34.505772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166790, 33.016373, 34.468311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315458, 33.062611, 34.836769>,  <30.404659, 33.090355, 35.057842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315458, 33.062611, 34.836769>,  <30.166790, 33.016373, 34.468311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315458, 33.062611, 34.836769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515047, -0.851191, -0.100994,
		0.772392, 0.511967, -0.375900,
		0.371668, 0.115599, 0.921140,
		30.426958, 33.097290, 35.113110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303411, 32.432789, 34.144974>,  <30.166790, 33.016373, 34.468311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303411, 32.432789, 34.144974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339151, 32.036144, 34.182323>,  <30.360596, 31.798157, 34.204731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.339151, 32.036144, 34.182323>,  <30.303411, 32.432789, 34.144974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.339151, 32.036144, 34.182323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819894, 0.020002, -0.572165,
		0.565500, 0.127678, 0.814806,
		0.089350, -0.991614, 0.093371,
		30.365957, 31.738661, 34.210335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878283, 32.153324, 34.475735>,  <30.303411, 32.432789, 34.144974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878283, 32.153324, 34.475735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739202, 31.935143, 34.170689>,  <30.655754, 31.804234, 33.987659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739202, 31.935143, 34.170689>,  <30.878283, 32.153324, 34.475735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739202, 31.935143, 34.170689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784259, 0.276569, -0.555381,
		0.513850, -0.791196, 0.331613,
		-0.347702, -0.545452, -0.762617,
		30.634892, 31.771507, 33.941902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388580, 32.308556, 34.023327>,  <30.878283, 32.153324, 34.475735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388580, 32.308556, 34.023327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151352, 32.064487, 33.813198>,  <31.009016, 31.918045, 33.687122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.151352, 32.064487, 33.813198>,  <31.388580, 32.308556, 34.023327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.151352, 32.064487, 33.813198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681591, -0.033159, -0.730982,
		0.428607, -0.791574, 0.435554,
		-0.593069, -0.610173, -0.525318,
		30.973431, 31.881435, 33.655602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811640, 31.637712, 33.812042>,  <31.388580, 32.308556, 34.023327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811640, 31.637712, 33.812042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512672, 31.738188, 33.566029>,  <31.333292, 31.798473, 33.418419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512672, 31.738188, 33.566029>,  <31.811640, 31.637712, 33.812042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512672, 31.738188, 33.566029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608057, -0.114311, -0.785621,
		-0.267644, -0.961165, -0.067298,
		-0.747418, 0.251187, -0.615037,
		31.288446, 31.813543, 33.381516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618330, 31.069221, 33.551056>,  <31.811640, 31.637712, 33.812042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618330, 31.069221, 33.551056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558828, 31.394981, 33.326691>,  <31.523129, 31.590437, 33.192070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.558828, 31.394981, 33.326691>,  <31.618330, 31.069221, 33.551056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558828, 31.394981, 33.326691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559927, -0.398170, -0.726597,
		-0.815079, -0.422156, -0.396775,
		-0.148753, 0.814399, -0.560916,
		31.514202, 31.639301, 33.158417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441132, 30.833269, 32.767170>,  <31.618330, 31.069221, 33.551056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441132, 30.833269, 32.767170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569899, 31.211813, 32.778309>,  <31.647160, 31.438938, 32.784992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.569899, 31.211813, 32.778309>,  <31.441132, 30.833269, 32.767170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569899, 31.211813, 32.778309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651224, -0.199979, -0.732062,
		-0.687224, 0.253801, -0.680668,
		0.321918, 0.946358, 0.027850,
		31.666473, 31.495720, 32.786663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928009, 31.213045, 32.450806>,  <31.441132, 30.833269, 32.767170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928009, 31.213045, 32.450806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819550, 31.595617, 32.407497>,  <31.754475, 31.825161, 32.381512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819550, 31.595617, 32.407497>,  <31.928009, 31.213045, 32.450806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819550, 31.595617, 32.407497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774187, -0.283544, -0.565895,
		-0.571939, -0.069618, 0.817337,
		-0.271147, 0.956429, -0.108273,
		31.738205, 31.882545, 32.375015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437923, 30.628672, 32.477879>,  <31.928009, 31.213045, 32.450806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437923, 30.628672, 32.477879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808861, 30.778234, 32.483952>,  <33.031422, 30.867971, 32.487595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.808861, 30.778234, 32.483952>,  <32.437923, 30.628672, 32.477879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808861, 30.778234, 32.483952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036678, 0.050434, 0.998054,
		0.372412, -0.926095, 0.060483,
		0.927343, 0.373905, 0.015185,
		33.087063, 30.890406, 32.488506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695934, 30.355991, 33.020233>,  <32.437923, 30.628672, 32.477879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695934, 30.355991, 33.020233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971790, 30.640276, 32.964680>,  <33.137302, 30.810846, 32.931347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971790, 30.640276, 32.964680>,  <32.695934, 30.355991, 33.020233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971790, 30.640276, 32.964680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126585, 0.070516, 0.989446,
		0.713003, -0.699941, -0.041335,
		0.689640, 0.710711, -0.138880,
		33.178680, 30.853489, 32.923016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280834, 30.195648, 33.385571>,  <32.695934, 30.355991, 33.020233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280834, 30.195648, 33.385571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342442, 30.586836, 33.329208>,  <33.379406, 30.821548, 33.295391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342442, 30.586836, 33.329208>,  <33.280834, 30.195648, 33.385571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342442, 30.586836, 33.329208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274402, 0.094666, 0.956944,
		0.949202, -0.186048, -0.253776,
		0.154014, 0.977970, -0.140909,
		33.388645, 30.880226, 33.286934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981888, 30.367180, 33.488510>,  <33.280834, 30.195648, 33.385571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981888, 30.367180, 33.488510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797134, 30.716829, 33.548603>,  <33.686283, 30.926619, 33.584660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797134, 30.716829, 33.548603>,  <33.981888, 30.367180, 33.488510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797134, 30.716829, 33.548603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459953, 0.091238, 0.883243,
		0.758356, 0.477059, -0.444197,
		-0.461887, 0.874123, 0.150234,
		33.658569, 30.979067, 33.593674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512642, 30.887955, 33.855984>,  <33.981888, 30.367180, 33.488510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512642, 30.887955, 33.855984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149170, 31.049078, 33.899895>,  <33.931087, 31.145752, 33.926239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149170, 31.049078, 33.899895>,  <34.512642, 30.887955, 33.855984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149170, 31.049078, 33.899895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274290, 0.377754, 0.884345,
		0.314756, 0.833694, -0.453743,
		-0.908677, 0.402810, 0.109773,
		33.876568, 31.169922, 33.932827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585598, 31.589529, 34.162449>,  <34.512642, 30.887955, 33.855984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585598, 31.589529, 34.162449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207859, 31.487560, 34.245617>,  <33.981216, 31.426380, 34.295517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.207859, 31.487560, 34.245617>,  <34.585598, 31.589529, 34.162449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207859, 31.487560, 34.245617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122389, 0.314414, 0.941363,
		-0.305346, 0.914417, -0.265716,
		-0.944344, -0.254921, 0.207919,
		33.924557, 31.411083, 34.307991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355511, 32.231979, 34.457073>,  <34.585598, 31.589529, 34.162449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355511, 32.231979, 34.457073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103352, 31.944221, 34.573742>,  <33.952057, 31.771566, 34.643742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103352, 31.944221, 34.573742>,  <34.355511, 32.231979, 34.457073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103352, 31.944221, 34.573742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141517, 0.262931, 0.954379,
		-0.763265, 0.642913, -0.063943,
		-0.630396, -0.719396, 0.291669,
		33.914234, 31.728403, 34.661243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936222, 32.459606, 35.023163>,  <34.355511, 32.231979, 34.457073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936222, 32.459606, 35.023163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880962, 32.064548, 35.052750>,  <33.847805, 31.827513, 35.070499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.880962, 32.064548, 35.052750>,  <33.936222, 32.459606, 35.023163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880962, 32.064548, 35.052750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079539, 0.085501, 0.993158,
		-0.987212, 0.131322, -0.090369,
		-0.138150, -0.987646, 0.073963,
		33.839516, 31.768255, 35.074940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254700, 32.413490, 35.370556>,  <33.936222, 32.459606, 35.023163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254700, 32.413490, 35.370556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471100, 32.082317, 35.429676>,  <33.600941, 31.883614, 35.465149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471100, 32.082317, 35.429676>,  <33.254700, 32.413490, 35.370556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471100, 32.082317, 35.429676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122614, 0.096221, 0.987779,
		-0.832040, -0.552507, -0.049461,
		0.540996, -0.827936, 0.147805,
		33.633400, 31.833937, 35.474018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870304, 31.947613, 35.749249>,  <33.254700, 32.413490, 35.370556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870304, 31.947613, 35.749249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235989, 31.791088, 35.791382>,  <33.455399, 31.697174, 35.816662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235989, 31.791088, 35.791382>,  <32.870304, 31.947613, 35.749249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235989, 31.791088, 35.791382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179302, -0.157493, 0.971106,
		-0.363415, -0.906682, -0.214144,
		0.914210, -0.391311, 0.105334,
		33.510250, 31.673695, 35.822983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808060, 31.237392, 36.000923>,  <32.870304, 31.947613, 35.749249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808060, 31.237392, 36.000923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160629, 31.395880, 36.103767>,  <33.372169, 31.490973, 36.165474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160629, 31.395880, 36.103767>,  <32.808060, 31.237392, 36.000923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160629, 31.395880, 36.103767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187830, -0.205418, 0.960481,
		0.433377, -0.894881, -0.106638,
		0.881422, 0.396221, 0.257109,
		33.425056, 31.514746, 36.180901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118004, 30.810181, 36.531467>,  <32.808060, 31.237392, 36.000923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118004, 30.810181, 36.531467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305206, 31.158712, 36.590466>,  <33.417526, 31.367832, 36.625866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305206, 31.158712, 36.590466>,  <33.118004, 30.810181, 36.531467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305206, 31.158712, 36.590466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210310, -0.052295, 0.976235,
		0.858336, -0.487904, 0.158776,
		0.468006, 0.871330, 0.147498,
		33.445610, 31.420111, 36.634716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532990, 30.698174, 37.054241>,  <33.118004, 30.810181, 36.531467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532990, 30.698174, 37.054241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446335, 31.088068, 37.032494>,  <33.394341, 31.322004, 37.019447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446335, 31.088068, 37.032494>,  <33.532990, 30.698174, 37.054241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446335, 31.088068, 37.032494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367844, -0.029918, 0.929406,
		0.904300, 0.221343, 0.365032,
		-0.216639, 0.974737, -0.054365,
		33.381344, 31.380489, 37.016186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730427, 30.993471, 37.702408>,  <33.532990, 30.698174, 37.054241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730427, 30.993471, 37.702408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481556, 31.277617, 37.570782>,  <33.332233, 31.448103, 37.491806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481556, 31.277617, 37.570782>,  <33.730427, 30.993471, 37.702408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481556, 31.277617, 37.570782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349025, 0.124556, 0.928799,
		0.700772, 0.692726, 0.170440,
		-0.622173, 0.710364, -0.329064,
		33.294903, 31.490726, 37.472061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771946, 31.690186, 38.053097>,  <33.730427, 30.993471, 37.702408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771946, 31.690186, 38.053097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396488, 31.699162, 37.915428>,  <33.171215, 31.704548, 37.832829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396488, 31.699162, 37.915428>,  <33.771946, 31.690186, 38.053097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396488, 31.699162, 37.915428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344168, 0.003977, 0.938900,
		0.022439, 0.999740, 0.003991,
		-0.938640, 0.022441, -0.344168,
		33.114895, 31.705894, 37.812180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389019, 31.777546, 38.574638>,  <33.771946, 31.690186, 38.053097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389019, 31.777546, 38.574638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047962, 31.744207, 38.368320>,  <32.843327, 31.724203, 38.244530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047962, 31.744207, 38.368320>,  <33.389019, 31.777546, 38.574638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047962, 31.744207, 38.368320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501450, -0.146770, 0.852647,
		-0.146770, 0.985653, 0.083348,
		-0.852647, -0.083348, -0.515797,
		32.792168, 31.719202, 38.213581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930119, 32.176975, 38.921108>,  <33.389019, 31.777546, 38.574638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930119, 32.176975, 38.921108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692001, 31.935541, 38.708950>,  <32.549133, 31.790682, 38.581654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692001, 31.935541, 38.708950>,  <32.930119, 32.176975, 38.921108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692001, 31.935541, 38.708950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624438, -0.067904, 0.778117,
		-0.505673, 0.794405, -0.336476,
		-0.595291, -0.603581, -0.530394,
		32.513412, 31.754467, 38.549831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317738, 32.526588, 38.968773>,  <32.930119, 32.176975, 38.921108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317738, 32.526588, 38.968773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231796, 32.145531, 38.882690>,  <32.180233, 31.916897, 38.831043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231796, 32.145531, 38.882690>,  <32.317738, 32.526588, 38.968773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231796, 32.145531, 38.882690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515020, -0.076707, 0.853739,
		-0.829815, 0.294261, -0.474149,
		-0.214852, -0.952642, -0.215203,
		32.167339, 31.859737, 38.818130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495512, 32.372562, 38.922504>,  <32.317738, 32.526588, 38.968773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495512, 32.372562, 38.922504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687115, 32.026897, 38.984184>,  <31.802076, 31.819498, 39.021194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687115, 32.026897, 38.984184>,  <31.495512, 32.372562, 38.922504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687115, 32.026897, 38.984184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662163, -0.240388, 0.709756,
		-0.576275, -0.442086, -0.687362,
		0.479007, -0.864160, 0.154203,
		31.830816, 31.767649, 39.030445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922398, 31.874815, 39.000416>,  <31.495512, 32.372562, 38.922504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922398, 31.874815, 39.000416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256685, 31.727005, 39.162907>,  <31.457258, 31.638319, 39.260403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256685, 31.727005, 39.162907>,  <30.922398, 31.874815, 39.000416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256685, 31.727005, 39.162907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490392, -0.169256, 0.854908,
		-0.247160, -0.913673, -0.322666,
		0.835720, -0.369531, 0.406225,
		31.507402, 31.616146, 39.284775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591866, 31.618883, 39.417496>,  <30.922398, 31.874815, 39.000416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591866, 31.618883, 39.417496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960579, 31.567326, 39.563759>,  <31.181807, 31.536390, 39.651516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960579, 31.567326, 39.563759>,  <30.591866, 31.618883, 39.417496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960579, 31.567326, 39.563759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385257, -0.198600, 0.901186,
		-0.043538, -0.971568, -0.232723,
		0.921782, -0.128893, 0.365656,
		31.237114, 31.528658, 39.673454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587801, 31.059746, 39.822697>,  <30.591866, 31.618883, 39.417496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587801, 31.059746, 39.822697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927475, 31.220619, 39.959595>,  <31.131279, 31.317142, 40.041733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927475, 31.220619, 39.959595>,  <30.587801, 31.059746, 39.822697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927475, 31.220619, 39.959595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179221, -0.390135, 0.903147,
		0.496752, -0.828277, -0.259218,
		0.849186, 0.402182, 0.342245,
		31.182230, 31.341274, 40.062267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933176, 30.549475, 40.282993>,  <30.587801, 31.059746, 39.822697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933176, 30.549475, 40.282993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075169, 30.910965, 40.378712>,  <31.160364, 31.127859, 40.436142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075169, 30.910965, 40.378712>,  <30.933176, 30.549475, 40.282993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075169, 30.910965, 40.378712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212389, -0.171317, 0.962050,
		0.910428, -0.392335, 0.131127,
		0.354982, 0.903727, 0.239300,
		31.181664, 31.182083, 40.450500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396437, 30.460363, 40.827652>,  <30.933176, 30.549475, 40.282993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396437, 30.460363, 40.827652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281805, 30.843586, 40.828186>,  <31.213026, 31.073519, 40.828506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281805, 30.843586, 40.828186>,  <31.396437, 30.460363, 40.827652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281805, 30.843586, 40.828186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190478, -0.058343, 0.979956,
		0.938931, 0.280580, 0.199208,
		-0.286578, 0.958056, 0.001336,
		31.195831, 31.131002, 40.828587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876753, 30.772791, 41.218838>,  <31.396437, 30.460363, 40.827652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876753, 30.772791, 41.218838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564093, 31.021870, 41.233093>,  <31.376495, 31.171316, 41.241646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.564093, 31.021870, 41.233093>,  <31.876753, 30.772791, 41.218838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564093, 31.021870, 41.233093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011060, -0.070962, 0.997418,
		0.623616, 0.779240, 0.062355,
		-0.781652, 0.622696, 0.035635,
		31.329597, 31.208679, 41.243782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008949, 31.114817, 41.763855>,  <31.876753, 30.772791, 41.218838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008949, 31.114817, 41.763855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619627, 31.137581, 41.674923>,  <31.386032, 31.151239, 41.621563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619627, 31.137581, 41.674923>,  <32.008949, 31.114817, 41.763855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619627, 31.137581, 41.674923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228398, -0.335053, 0.914097,
		-0.022472, 0.940479, 0.339108,
		-0.973309, 0.056910, -0.222333,
		31.327635, 31.154654, 41.608223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775063, 31.335463, 42.320518>,  <32.008949, 31.114817, 41.763855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775063, 31.335463, 42.320518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450209, 31.203590, 42.127956>,  <31.255297, 31.124468, 42.012421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450209, 31.203590, 42.127956>,  <31.775063, 31.335463, 42.320518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450209, 31.203590, 42.127956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388924, -0.309163, 0.867846,
		-0.434943, 0.892037, 0.122861,
		-0.812135, -0.329680, -0.481403,
		31.206568, 31.104687, 41.983536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200991, 31.656822, 42.626160>,  <31.775063, 31.335463, 42.320518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200991, 31.656822, 42.626160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044188, 31.332191, 42.452873>,  <30.950106, 31.137413, 42.348904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044188, 31.332191, 42.452873>,  <31.200991, 31.656822, 42.626160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044188, 31.332191, 42.452873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435416, -0.251142, 0.864488,
		-0.810397, 0.527512, -0.254925,
		-0.392006, -0.811578, -0.433212,
		30.926586, 31.088718, 42.322910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510683, 31.701012, 42.819340>,  <31.200991, 31.656822, 42.626160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510683, 31.701012, 42.819340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593105, 31.322710, 42.718872>,  <30.642559, 31.095728, 42.658592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.593105, 31.322710, 42.718872>,  <30.510683, 31.701012, 42.819340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593105, 31.322710, 42.718872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418534, -0.317194, 0.851009,
		-0.884517, -0.070232, -0.461191,
		0.206056, -0.945757, -0.251169,
		30.654922, 31.038982, 42.643520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912567, 31.266747, 42.949432>,  <30.510683, 31.701012, 42.819340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912567, 31.266747, 42.949432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234890, 31.033365, 42.989948>,  <30.428284, 30.893337, 43.014259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234890, 31.033365, 42.989948>,  <29.912567, 31.266747, 42.949432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234890, 31.033365, 42.989948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324550, -0.292048, 0.899653,
		-0.495321, -0.757821, -0.424693,
		0.805807, -0.583451, 0.101293,
		30.476631, 30.858330, 43.020336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589655, 30.671352, 43.235668>,  <29.912567, 31.266747, 42.949432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589655, 30.671352, 43.235668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976011, 30.568863, 43.220695>,  <30.207825, 30.507370, 43.211712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976011, 30.568863, 43.220695>,  <29.589655, 30.671352, 43.235668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976011, 30.568863, 43.220695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104378, -0.517538, 0.849270,
		-0.236972, -0.816398, -0.526630,
		0.965893, -0.256222, -0.037428,
		30.265779, 30.491997, 43.209469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660767, 29.935274, 43.336510>,  <29.589655, 30.671352, 43.235668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660767, 29.935274, 43.336510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025545, 30.070095, 43.430099>,  <30.244413, 30.150988, 43.486252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025545, 30.070095, 43.430099>,  <29.660767, 29.935274, 43.336510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025545, 30.070095, 43.430099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050355, -0.657875, 0.751442,
		0.407203, -0.673495, -0.616920,
		0.911948, 0.337055, 0.233975,
		30.299129, 30.171211, 43.500294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021875, 29.405556, 43.494743>,  <29.660767, 29.935274, 43.336510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021875, 29.405556, 43.494743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248585, 29.688606, 43.663517>,  <30.384611, 29.858437, 43.764782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248585, 29.688606, 43.663517>,  <30.021875, 29.405556, 43.494743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248585, 29.688606, 43.663517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064240, -0.472620, 0.878922,
		0.821365, -0.525255, -0.222410,
		0.566774, 0.707628, 0.421936,
		30.418617, 29.900894, 43.790096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252075, 28.939665, 43.993065>,  <30.021875, 29.405556, 43.494743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252075, 28.939665, 43.993065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426167, 29.284777, 44.095974>,  <30.530621, 29.491844, 44.157719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426167, 29.284777, 44.095974>,  <30.252075, 28.939665, 43.993065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426167, 29.284777, 44.095974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221975, -0.379768, 0.898056,
		0.872528, -0.333750, -0.356801,
		0.435227, 0.862779, 0.257274,
		30.556734, 29.543610, 44.173157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802547, 28.817783, 44.375698>,  <30.252075, 28.939665, 43.993065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802547, 28.817783, 44.375698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708038, 29.185181, 44.502533>,  <30.651333, 29.405619, 44.578632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708038, 29.185181, 44.502533>,  <30.802547, 28.817783, 44.375698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708038, 29.185181, 44.502533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087020, -0.305011, 0.948365,
		0.967782, 0.251667, -0.007861,
		-0.236275, 0.918494, 0.317084,
		30.637156, 29.460730, 44.597656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.368507, 29.082438, 44.830826>,  <30.802547, 28.817783, 44.375698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.368507, 29.082438, 44.830826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003119, 29.216738, 44.922771>,  <30.783884, 29.297318, 44.977940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003119, 29.216738, 44.922771>,  <31.368507, 29.082438, 44.830826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003119, 29.216738, 44.922771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034203, -0.626275, 0.778852,
		0.405458, 0.703599, 0.583569,
		-0.913474, 0.335751, 0.229863,
		30.729076, 29.317463, 44.991730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372459, 29.131680, 45.574379>,  <31.368507, 29.082438, 44.830826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372459, 29.131680, 45.574379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995258, 29.103310, 45.444324>,  <30.768938, 29.086288, 45.366291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995258, 29.103310, 45.444324>,  <31.372459, 29.131680, 45.574379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995258, 29.103310, 45.444324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208424, -0.635784, 0.743195,
		-0.259425, 0.768602, 0.584765,
		-0.943005, -0.070924, -0.325134,
		30.712357, 29.082033, 45.346783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044500, 28.887302, 46.106083>,  <31.372459, 29.131680, 45.574379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044500, 28.887302, 46.106083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761902, 28.826834, 45.829529>,  <30.592342, 28.790552, 45.663597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761902, 28.826834, 45.829529>,  <31.044500, 28.887302, 46.106083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761902, 28.826834, 45.829529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384452, -0.738226, 0.554273,
		-0.594186, 0.657396, 0.463437,
		-0.706498, -0.151172, -0.691381,
		30.549952, 28.781483, 45.622116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399160, 28.888882, 46.419792>,  <31.044500, 28.887302, 46.106083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399160, 28.888882, 46.419792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405581, 28.669470, 46.085403>,  <30.409433, 28.537823, 45.884769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405581, 28.669470, 46.085403>,  <30.399160, 28.888882, 46.419792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405581, 28.669470, 46.085403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318396, -0.795365, 0.515771,
		-0.947822, 0.257893, -0.187415,
		0.016050, -0.548531, -0.835976,
		30.410395, 28.504911, 45.834610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695585, 28.716152, 46.352089>,  <30.399160, 28.888882, 46.419792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695585, 28.716152, 46.352089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948523, 28.482279, 46.148800>,  <30.100285, 28.341955, 46.026825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948523, 28.482279, 46.148800>,  <29.695585, 28.716152, 46.352089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948523, 28.482279, 46.148800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230828, -0.768437, 0.596844,
		-0.739497, -0.260102, -0.620879,
		0.632347, -0.584681, -0.508218,
		30.138226, 28.306873, 45.996334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.013458, 28.869568, 47.023289>,  <29.695585, 28.716152, 46.352089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.013458, 28.869568, 47.023289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720390, 28.682091, 47.220680>,  <29.544550, 28.569605, 47.339115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720390, 28.682091, 47.220680>,  <30.013458, 28.869568, 47.023289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720390, 28.682091, 47.220680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479292, -0.870115, -0.114800,
		0.483193, 0.152412, 0.862146,
		-0.732669, -0.468690, 0.493483,
		29.500589, 28.541483, 47.368725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330996, 28.512209, 47.598267>,  <30.013458, 28.869568, 47.023289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330996, 28.512209, 47.598267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014095, 28.273401, 47.547825>,  <29.823956, 28.130116, 47.517559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014095, 28.273401, 47.547825>,  <30.330996, 28.512209, 47.598267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014095, 28.273401, 47.547825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600488, -0.799533, 0.012692,
		-0.108404, -0.065670, 0.991935,
		-0.792252, -0.597021, -0.126107,
		29.776421, 28.094296, 47.509995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252237, 27.870708, 48.077946>,  <30.330996, 28.512209, 47.598267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252237, 27.870708, 48.077946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072304, 27.797321, 47.728321>,  <29.964344, 27.753288, 47.518547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072304, 27.797321, 47.728321>,  <30.252237, 27.870708, 48.077946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072304, 27.797321, 47.728321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401638, -0.915684, -0.014497,
		-0.797708, -0.357579, 0.485592,
		-0.449832, -0.183468, -0.874066,
		29.937355, 27.742281, 47.466103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864384, 27.261248, 48.154369>,  <30.252237, 27.870708, 48.077946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864384, 27.261248, 48.154369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951023, 27.305048, 47.766331>,  <30.003006, 27.331329, 47.533508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951023, 27.305048, 47.766331>,  <29.864384, 27.261248, 48.154369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951023, 27.305048, 47.766331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266592, -0.962556, -0.049128,
		-0.939156, -0.247980, -0.237679,
		0.216597, 0.109502, -0.970100,
		30.016003, 27.337898, 47.475300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709824, 26.615976, 47.758556>,  <29.864384, 27.261248, 48.154369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709824, 26.615976, 47.758556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985182, 26.809261, 47.542179>,  <30.150396, 26.925232, 47.412354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985182, 26.809261, 47.542179>,  <29.709824, 26.615976, 47.758556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985182, 26.809261, 47.542179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415740, -0.873978, -0.251641,
		-0.594367, -0.051662, -0.802533,
		0.688396, 0.483212, -0.540942,
		30.191700, 26.954226, 47.379898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.961901, 26.196352, 47.162964>,  <29.709824, 26.615976, 47.758556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.961901, 26.196352, 47.162964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254696, 26.463993, 47.214333>,  <30.430374, 26.624578, 47.245152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254696, 26.463993, 47.214333>,  <29.961901, 26.196352, 47.162964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254696, 26.463993, 47.214333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663748, -0.657805, -0.355992,
		-0.153722, 0.345820, -0.925623,
		0.731989, 0.669105, 0.128419,
		30.474293, 26.664724, 47.252857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504381, 26.230297, 46.568768>,  <29.961901, 26.196352, 47.162964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504381, 26.230297, 46.568768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660257, 26.353880, 46.915798>,  <30.753782, 26.428030, 47.124016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660257, 26.353880, 46.915798>,  <30.504381, 26.230297, 46.568768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660257, 26.353880, 46.915798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749660, -0.653607, -0.103964,
		0.534933, 0.690900, -0.486317,
		0.389688, 0.308958, 0.867576,
		30.777164, 26.446568, 47.176071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328024, 26.397610, 46.623753>,  <30.504381, 26.230297, 46.568768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328024, 26.397610, 46.623753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144304, 26.238569, 46.941486>,  <31.034073, 26.143145, 47.132126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.144304, 26.238569, 46.941486>,  <31.328024, 26.397610, 46.623753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144304, 26.238569, 46.941486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477940, -0.864374, -0.156306,
		0.748745, 0.307851, 0.587034,
		-0.459297, -0.397600, 0.794330,
		31.006516, 26.119289, 47.179787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062401, 26.586823, 45.971680>,  <31.328024, 26.397610, 46.623753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062401, 26.586823, 45.971680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750210, 26.768974, 45.800339>,  <30.562895, 26.878265, 45.697533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750210, 26.768974, 45.800339>,  <31.062401, 26.586823, 45.971680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750210, 26.768974, 45.800339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521094, 0.095279, -0.848164,
		-0.345424, -0.885184, -0.311659,
		-0.780476, 0.455380, -0.428353,
		30.516068, 26.905588, 45.671833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970913, 26.243078, 45.446201>,  <31.062401, 26.586823, 45.971680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970913, 26.243078, 45.446201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820938, 26.609272, 45.387810>,  <30.730953, 26.828989, 45.352776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820938, 26.609272, 45.387810>,  <30.970913, 26.243078, 45.446201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820938, 26.609272, 45.387810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436358, 0.035353, -0.899078,
		-0.817932, -0.400797, -0.412734,
		-0.374939, 0.915484, -0.145975,
		30.708456, 26.883917, 45.344017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500620, 26.224718, 44.846626>,  <30.970913, 26.243078, 45.446201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500620, 26.224718, 44.846626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632956, 26.601055, 44.875916>,  <30.712357, 26.826857, 44.893490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.632956, 26.601055, 44.875916>,  <30.500620, 26.224718, 44.846626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632956, 26.601055, 44.875916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390225, -0.065743, -0.918369,
		-0.859226, 0.332406, -0.388891,
		0.330839, 0.940842, 0.073225,
		30.732206, 26.883308, 44.897884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407928, 26.519220, 44.146843>,  <30.500620, 26.224718, 44.846626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407928, 26.519220, 44.146843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672367, 26.753220, 44.334770>,  <30.831030, 26.893620, 44.447525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672367, 26.753220, 44.334770>,  <30.407928, 26.519220, 44.146843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672367, 26.753220, 44.334770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511386, 0.106883, -0.852678,
		-0.549031, 0.803960, -0.228501,
		0.661097, 0.584999, 0.469816,
		30.870697, 26.928719, 44.475716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535498, 27.022242, 43.717072>,  <30.407928, 26.519220, 44.146843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535498, 27.022242, 43.717072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860155, 27.027086, 43.950680>,  <31.054951, 27.029993, 44.090847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860155, 27.027086, 43.950680>,  <30.535498, 27.022242, 43.717072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860155, 27.027086, 43.950680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576749, 0.142037, -0.804479,
		-0.092695, 0.989787, 0.108300,
		0.811645, 0.012109, 0.584025,
		31.103649, 27.030720, 44.125889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940212, 27.662815, 43.601727>,  <30.535498, 27.022242, 43.717072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940212, 27.662815, 43.601727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217772, 27.414797, 43.748177>,  <31.384308, 27.265985, 43.836048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.217772, 27.414797, 43.748177>,  <30.940212, 27.662815, 43.601727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217772, 27.414797, 43.748177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620611, 0.257121, -0.740764,
		0.365169, 0.741237, 0.563222,
		0.693898, -0.620046, 0.366127,
		31.425941, 27.228783, 43.858013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590437, 28.097099, 43.605759>,  <30.940212, 27.662815, 43.601727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590437, 28.097099, 43.605759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688297, 27.709284, 43.600979>,  <31.747013, 27.476595, 43.598110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.688297, 27.709284, 43.600979>,  <31.590437, 28.097099, 43.605759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688297, 27.709284, 43.600979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713806, 0.188432, -0.674518,
		0.656221, 0.156496, 0.738162,
		0.244653, -0.969537, -0.011946,
		31.761694, 27.418423, 43.597397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302105, 28.112698, 43.728718>,  <31.590437, 28.097099, 43.605759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302105, 28.112698, 43.728718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212124, 27.754759, 43.574497>,  <32.158134, 27.539995, 43.481964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212124, 27.754759, 43.574497>,  <32.302105, 28.112698, 43.728718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212124, 27.754759, 43.574497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755990, 0.089345, -0.648457,
		0.614716, -0.437343, 0.656396,
		-0.224952, -0.894846, -0.385549,
		32.144638, 27.486305, 43.458832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918537, 27.749987, 43.562119>,  <32.302105, 28.112698, 43.728718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918537, 27.749987, 43.562119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666641, 27.513416, 43.360664>,  <32.515503, 27.371473, 43.239792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666641, 27.513416, 43.360664>,  <32.918537, 27.749987, 43.562119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666641, 27.513416, 43.360664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655624, -0.056926, -0.752939,
		0.416637, -0.804348, 0.423601,
		-0.629738, -0.591426, -0.503632,
		32.477718, 27.335989, 43.209576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261475, 27.121878, 43.285316>,  <32.918537, 27.749987, 43.562119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261475, 27.121878, 43.285316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938141, 27.206661, 43.065617>,  <32.744141, 27.257532, 42.933796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938141, 27.206661, 43.065617>,  <33.261475, 27.121878, 43.285316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938141, 27.206661, 43.065617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519265, -0.182932, -0.834805,
		-0.277423, -0.960004, 0.037805,
		-0.808332, 0.211964, -0.549246,
		32.695641, 27.270250, 42.900845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574032, 26.879032, 42.682640>,  <33.261475, 27.121878, 43.285316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574032, 26.879032, 42.682640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227493, 27.046623, 42.573906>,  <33.019569, 27.147179, 42.508663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227493, 27.046623, 42.573906>,  <33.574032, 26.879032, 42.682640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227493, 27.046623, 42.573906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314173, 0.034073, -0.948754,
		-0.388245, -0.907357, -0.161151,
		-0.866349, 0.418978, -0.271838,
		32.967587, 27.172316, 42.492355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327065, 26.552349, 42.089996>,  <33.574032, 26.879032, 42.682640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327065, 26.552349, 42.089996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147324, 26.909472, 42.077431>,  <33.039478, 27.123745, 42.069889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147324, 26.909472, 42.077431>,  <33.327065, 26.552349, 42.089996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147324, 26.909472, 42.077431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366970, 0.152405, -0.917663,
		-0.814505, -0.423880, -0.396115,
		-0.449349, 0.892804, -0.031417,
		33.012520, 27.177313, 42.068005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098183, 26.656731, 41.340321>,  <33.327065, 26.552349, 42.089996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098183, 26.656731, 41.340321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113667, 27.029266, 41.485153>,  <33.122959, 27.252789, 41.572052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113667, 27.029266, 41.485153>,  <33.098183, 26.656731, 41.340321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113667, 27.029266, 41.485153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469001, 0.303029, -0.829585,
		-0.882349, 0.201932, -0.425069,
		0.038711, 0.931341, 0.362084,
		33.125278, 27.308668, 41.593777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957672, 27.123718, 40.767658>,  <33.098183, 26.656731, 41.340321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957672, 27.123718, 40.767658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127682, 27.347723, 41.052120>,  <33.229687, 27.482126, 41.222797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127682, 27.347723, 41.052120>,  <32.957672, 27.123718, 40.767658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127682, 27.347723, 41.052120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486587, 0.521126, -0.701186,
		-0.763273, 0.644060, -0.051002,
		0.425027, 0.560013, 0.711152,
		33.255188, 27.515726, 41.265465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897743, 27.826595, 40.531921>,  <32.957672, 27.123718, 40.767658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897743, 27.826595, 40.531921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194267, 27.850487, 40.799324>,  <33.372181, 27.864822, 40.959766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194267, 27.850487, 40.799324>,  <32.897743, 27.826595, 40.531921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194267, 27.850487, 40.799324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535448, 0.547916, -0.642715,
		-0.404672, 0.834398, 0.374193,
		0.741307, 0.059728, 0.668503,
		33.416660, 27.868404, 40.999874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027054, 28.533585, 40.603668>,  <32.897743, 27.826595, 40.531921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027054, 28.533585, 40.603668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351818, 28.345530, 40.742096>,  <33.546677, 28.232697, 40.825153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351818, 28.345530, 40.742096>,  <33.027054, 28.533585, 40.603668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351818, 28.345530, 40.742096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568903, 0.770173, -0.288414,
		-0.130939, 0.431048, 0.892778,
		0.811914, -0.470139, 0.346071,
		33.595394, 28.204487, 40.845917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375641, 29.040283, 40.980297>,  <33.027054, 28.533585, 40.603668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375641, 29.040283, 40.980297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617886, 28.752567, 40.844147>,  <33.763233, 28.579939, 40.762455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617886, 28.752567, 40.844147>,  <33.375641, 29.040283, 40.980297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617886, 28.752567, 40.844147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521080, 0.681737, -0.513527,
		0.601420, 0.133637, 0.787677,
		0.605615, -0.719288, -0.340375,
		33.799568, 28.536781, 40.742035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008820, 29.410814, 40.830849>,  <33.375641, 29.040283, 40.980297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008820, 29.410814, 40.830849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049538, 29.044683, 40.674995>,  <34.073967, 28.825005, 40.581482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049538, 29.044683, 40.674995>,  <34.008820, 29.410814, 40.830849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049538, 29.044683, 40.674995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563082, 0.375901, -0.735960,
		0.820108, -0.144483, 0.553667,
		0.101791, -0.915327, -0.389635,
		34.080074, 28.770086, 40.558105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660671, 29.449596, 40.567844>,  <34.008820, 29.410814, 40.830849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660671, 29.449596, 40.567844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544292, 29.099915, 40.412350>,  <34.474464, 28.890106, 40.319054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544292, 29.099915, 40.412350>,  <34.660671, 29.449596, 40.567844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544292, 29.099915, 40.412350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561475, 0.172974, -0.809213,
		0.774658, -0.453707, 0.440516,
		-0.290948, -0.874202, -0.388741,
		34.457008, 28.837654, 40.295727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246647, 29.042099, 40.316891>,  <34.660671, 29.449596, 40.567844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246647, 29.042099, 40.316891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929070, 28.917425, 40.108078>,  <34.738525, 28.842621, 39.982792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.929070, 28.917425, 40.108078>,  <35.246647, 29.042099, 40.316891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929070, 28.917425, 40.108078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496219, 0.163948, -0.852577,
		0.351319, -0.935935, 0.024499,
		-0.793940, -0.311684, -0.522027,
		34.690887, 28.823921, 39.951469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519081, 28.528639, 39.790531>,  <35.246647, 29.042099, 40.316891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519081, 28.528639, 39.790531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167480, 28.663183, 39.655350>,  <34.956520, 28.743910, 39.574242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167480, 28.663183, 39.655350>,  <35.519081, 28.528639, 39.790531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167480, 28.663183, 39.655350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381377, 0.070563, -0.921722,
		-0.286186, -0.939085, -0.190306,
		-0.879005, 0.336362, -0.337952,
		34.903778, 28.764091, 39.553963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404198, 28.139364, 39.261719>,  <35.519081, 28.528639, 39.790531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404198, 28.139364, 39.261719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163750, 28.450390, 39.187901>,  <35.019482, 28.637005, 39.143612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163750, 28.450390, 39.187901>,  <35.404198, 28.139364, 39.261719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163750, 28.450390, 39.187901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347455, 0.046335, -0.936551,
		-0.719677, -0.627096, -0.298021,
		-0.601116, 0.777563, -0.184542,
		34.983414, 28.683659, 39.132538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042686, 27.933727, 38.645813>,  <35.404198, 28.139364, 39.261719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042686, 27.933727, 38.645813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996780, 28.327967, 38.695492>,  <34.969234, 28.564510, 38.725300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996780, 28.327967, 38.695492>,  <35.042686, 27.933727, 38.645813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996780, 28.327967, 38.695492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100093, 0.135862, -0.985659,
		-0.988337, -0.100692, -0.114245,
		-0.114770, 0.985597, 0.124199,
		34.962349, 28.623646, 38.732750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619331, 28.099283, 38.089966>,  <35.042686, 27.933727, 38.645813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619331, 28.099283, 38.089966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810902, 28.426239, 38.218037>,  <34.925842, 28.622412, 38.294876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810902, 28.426239, 38.218037>,  <34.619331, 28.099283, 38.089966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810902, 28.426239, 38.218037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246642, 0.224740, -0.942687,
		-0.842497, 0.530443, -0.093969,
		0.478923, 0.817388, 0.320172,
		34.954578, 28.671455, 38.314087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306282, 28.600950, 37.677883>,  <34.619331, 28.099283, 38.089966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306282, 28.600950, 37.677883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649693, 28.746021, 37.822876>,  <34.855740, 28.833063, 37.909870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649693, 28.746021, 37.822876>,  <34.306282, 28.600950, 37.677883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649693, 28.746021, 37.822876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111316, 0.558230, -0.822185,
		-0.500534, 0.746220, 0.438886,
		0.858530, 0.362676, 0.362480,
		34.907253, 28.854824, 37.931622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314945, 29.276974, 37.543087>,  <34.306282, 28.600950, 37.677883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314945, 29.276974, 37.543087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705692, 29.197504, 37.574718>,  <34.940140, 29.149822, 37.593697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705692, 29.197504, 37.574718>,  <34.314945, 29.276974, 37.543087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705692, 29.197504, 37.574718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142831, 0.331027, -0.932749,
		0.159136, 0.922469, 0.351747,
		0.976870, -0.198675, 0.079079,
		34.998753, 29.137901, 37.598442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663296, 29.713493, 37.076351>,  <34.314945, 29.276974, 37.543087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663296, 29.713493, 37.076351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933411, 29.425026, 37.138195>,  <35.095478, 29.251945, 37.175301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933411, 29.425026, 37.138195>,  <34.663296, 29.713493, 37.076351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933411, 29.425026, 37.138195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231055, 0.007771, -0.972910,
		0.700432, 0.692714, 0.171878,
		0.675284, -0.721171, 0.154612,
		35.135994, 29.208675, 37.184578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295597, 29.920830, 36.757244>,  <34.663296, 29.713493, 37.076351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295597, 29.920830, 36.757244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336800, 29.523001, 36.763172>,  <35.361519, 29.284304, 36.766727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336800, 29.523001, 36.763172>,  <35.295597, 29.920830, 36.757244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336800, 29.523001, 36.763172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142783, 0.000040, -0.989754,
		0.984380, 0.104064, 0.142011,
		0.103004, -0.994571, 0.014819,
		35.367702, 29.224630, 36.767616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681114, 29.808468, 36.240467>,  <35.295597, 29.920830, 36.757244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681114, 29.808468, 36.240467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599522, 29.427378, 36.330540>,  <35.550564, 29.198725, 36.384583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599522, 29.427378, 36.330540>,  <35.681114, 29.808468, 36.240467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599522, 29.427378, 36.330540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338300, -0.284449, -0.897019,
		0.918664, -0.106798, 0.380329,
		-0.203984, -0.952724, 0.225183,
		35.538326, 29.141560, 36.398094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326092, 29.416420, 36.106552>,  <35.681114, 29.808468, 36.240467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326092, 29.416420, 36.106552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013374, 29.167042, 36.110851>,  <35.825745, 29.017414, 36.113430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013374, 29.167042, 36.110851>,  <36.326092, 29.416420, 36.106552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013374, 29.167042, 36.110851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284896, -0.372485, -0.883227,
		0.554650, -0.687436, 0.468823,
		-0.781792, -0.623447, 0.010751,
		35.778835, 28.980007, 36.114075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624557, 28.799412, 35.954716>,  <36.326092, 29.416420, 36.106552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624557, 28.799412, 35.954716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238827, 28.788351, 35.849411>,  <36.007389, 28.781715, 35.786228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238827, 28.788351, 35.849411>,  <36.624557, 28.799412, 35.954716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238827, 28.788351, 35.849411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251477, -0.406243, -0.878479,
		-0.082658, -0.913346, 0.398705,
		-0.964327, -0.027652, -0.263265,
		35.949528, 28.780056, 35.770432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590027, 28.161146, 35.525707>,  <36.624557, 28.799412, 35.954716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590027, 28.161146, 35.525707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267876, 28.387255, 35.454334>,  <36.074585, 28.522921, 35.411510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267876, 28.387255, 35.454334>,  <36.590027, 28.161146, 35.525707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267876, 28.387255, 35.454334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070998, -0.206855, -0.975792,
		-0.588497, -0.798548, 0.126462,
		-0.805376, 0.565272, -0.178429,
		36.026264, 28.556837, 35.400806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180958, 27.865154, 34.988102>,  <36.590027, 28.161146, 35.525707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180958, 27.865154, 34.988102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067688, 28.248652, 34.998112>,  <35.999725, 28.478750, 35.004120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067688, 28.248652, 34.998112>,  <36.180958, 27.865154, 34.988102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067688, 28.248652, 34.998112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147848, 0.069423, -0.986570,
		-0.947603, -0.275674, -0.161407,
		-0.283177, 0.958741, 0.025028,
		35.982735, 28.536274, 35.005619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777058, 28.024303, 34.374866>,  <36.180958, 27.865154, 34.988102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777058, 28.024303, 34.374866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896351, 28.387312, 34.493164>,  <35.967926, 28.605118, 34.564140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896351, 28.387312, 34.493164>,  <35.777058, 28.024303, 34.374866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896351, 28.387312, 34.493164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292501, 0.208038, -0.933361,
		-0.908571, 0.364862, -0.203407,
		0.298232, 0.907522, 0.295739,
		35.985821, 28.659569, 34.581886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590214, 28.398016, 33.913353>,  <35.777058, 28.024303, 34.374866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590214, 28.398016, 33.913353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866432, 28.645550, 34.063122>,  <36.032162, 28.794069, 34.152985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.866432, 28.645550, 34.063122>,  <35.590214, 28.398016, 33.913353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866432, 28.645550, 34.063122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282227, 0.246095, -0.927246,
		-0.665954, 0.745978, -0.004712,
		0.690545, 0.618833, 0.374423,
		36.073597, 28.831200, 34.175449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486111, 29.163015, 33.638180>,  <35.590214, 28.398016, 33.913353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486111, 29.163015, 33.638180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852715, 29.182480, 33.796993>,  <36.072678, 29.194159, 33.892281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.852715, 29.182480, 33.796993>,  <35.486111, 29.163015, 33.638180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852715, 29.182480, 33.796993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340085, 0.427759, -0.837475,
		-0.210587, 0.902582, 0.375498,
		0.916512, 0.048660, 0.397035,
		36.127666, 29.197079, 33.916103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793907, 29.830128, 33.389732>,  <35.486111, 29.163015, 33.638180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793907, 29.830128, 33.389732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080452, 29.568300, 33.486366>,  <36.252380, 29.411203, 33.544346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080452, 29.568300, 33.486366>,  <35.793907, 29.830128, 33.389732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080452, 29.568300, 33.486366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534112, 0.291665, -0.793509,
		0.448944, 0.697474, 0.558551,
		0.716361, -0.654569, 0.241588,
		36.295361, 29.371929, 33.558842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390121, 30.214855, 33.346100>,  <35.793907, 29.830128, 33.389732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390121, 30.214855, 33.346100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495888, 29.830404, 33.314316>,  <36.559349, 29.599733, 33.295246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495888, 29.830404, 33.314316>,  <36.390121, 30.214855, 33.346100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495888, 29.830404, 33.314316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625023, 0.233529, -0.744856,
		0.734458, 0.147293, 0.662477,
		0.264420, -0.961129, -0.079456,
		36.575214, 29.542065, 33.290478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111927, 30.294289, 33.227787>,  <36.390121, 30.214855, 33.346100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111927, 30.294289, 33.227787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009483, 29.929073, 33.100807>,  <36.948017, 29.709944, 33.024620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009483, 29.929073, 33.100807>,  <37.111927, 30.294289, 33.227787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009483, 29.929073, 33.100807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613398, 0.100305, -0.783378,
		0.747094, -0.395353, 0.534366,
		-0.256111, -0.913036, -0.317446,
		36.932652, 29.655163, 33.005573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745472, 30.123711, 32.959984>,  <37.111927, 30.294289, 33.227787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745472, 30.123711, 32.959984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477600, 29.877531, 32.793728>,  <37.316879, 29.729822, 32.693974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.477600, 29.877531, 32.793728>,  <37.745472, 30.123711, 32.959984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477600, 29.877531, 32.793728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461477, 0.093643, -0.882196,
		0.581870, -0.782592, 0.221306,
		-0.669676, -0.615451, -0.415637,
		37.276699, 29.692896, 32.669037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482346, 29.915493, 33.013027>,  <37.745472, 30.123711, 32.959984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482346, 29.915493, 33.013027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872921, 29.843887, 32.964828>,  <39.107265, 29.800924, 32.935909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872921, 29.843887, 32.964828>,  <38.482346, 29.915493, 33.013027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872921, 29.843887, 32.964828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131138, 0.048784, 0.990163,
		-0.171378, -0.982636, 0.071110,
		0.976439, -0.179017, -0.120501,
		39.165852, 29.790182, 32.928677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727600, 29.458761, 33.528099>,  <38.482346, 29.915493, 33.013027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727600, 29.458761, 33.528099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095596, 29.591887, 33.445301>,  <39.316395, 29.671762, 33.395622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095596, 29.591887, 33.445301>,  <38.727600, 29.458761, 33.528099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095596, 29.591887, 33.445301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279884, -0.188161, 0.941414,
		0.274367, -0.924029, -0.266256,
		0.919993, 0.332814, -0.206996,
		39.371593, 29.691730, 33.383202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186859, 28.877249, 33.786961>,  <38.727600, 29.458761, 33.528099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186859, 28.877249, 33.786961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404076, 29.213009, 33.777878>,  <39.534405, 29.414465, 33.772427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404076, 29.213009, 33.777878>,  <39.186859, 28.877249, 33.786961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404076, 29.213009, 33.777878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389689, -0.227966, 0.892286,
		0.743807, -0.493397, -0.450899,
		0.543040, 0.839399, -0.022709,
		39.566986, 29.464828, 33.771065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794716, 28.674595, 34.094246>,  <39.186859, 28.877249, 33.786961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794716, 28.674595, 34.094246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783279, 29.073465, 34.122017>,  <39.776417, 29.312788, 34.138680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783279, 29.073465, 34.122017>,  <39.794716, 28.674595, 34.094246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783279, 29.073465, 34.122017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192285, -0.062673, 0.979336,
		0.980922, 0.041349, -0.189950,
		-0.028590, 0.997177, 0.069428,
		39.774704, 29.372618, 34.142845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282768, 28.725859, 34.627556>,  <39.794716, 28.674595, 34.094246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282768, 28.725859, 34.627556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119812, 29.086790, 34.571228>,  <40.022038, 29.303349, 34.537430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119812, 29.086790, 34.571228>,  <40.282768, 28.725859, 34.627556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119812, 29.086790, 34.571228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285294, 0.272228, 0.918966,
		0.867546, 0.334207, -0.368333,
		-0.407395, 0.902329, -0.140824,
		39.997593, 29.357489, 34.528980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703236, 29.246122, 34.963600>,  <40.282768, 28.725859, 34.627556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703236, 29.246122, 34.963600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324783, 29.374582, 34.947113>,  <40.097713, 29.451658, 34.937222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324783, 29.374582, 34.947113>,  <40.703236, 29.246122, 34.963600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324783, 29.374582, 34.947113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045360, 0.257507, 0.965211,
		0.320589, 0.911347, -0.258203,
		-0.946132, 0.321148, -0.041215,
		40.040943, 29.470926, 34.934750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701210, 29.574598, 35.519680>,  <40.703236, 29.246122, 34.963600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701210, 29.574598, 35.519680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316597, 29.611073, 35.416035>,  <40.085831, 29.632957, 35.353848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316597, 29.611073, 35.416035>,  <40.701210, 29.574598, 35.519680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316597, 29.611073, 35.416035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228421, 0.258518, 0.938612,
		0.152572, 0.961693, -0.227745,
		-0.961533, 0.091184, -0.259113,
		40.028137, 29.638428, 35.338303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450939, 30.260490, 35.677204>,  <40.701210, 29.574598, 35.519680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450939, 30.260490, 35.677204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148155, 29.999964, 35.698345>,  <39.966484, 29.843647, 35.711029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.148155, 29.999964, 35.698345>,  <40.450939, 30.260490, 35.677204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.148155, 29.999964, 35.698345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108871, 0.205451, 0.972593,
		-0.644325, 0.730463, -0.226429,
		-0.756963, -0.651317, 0.052851,
		39.921066, 29.804569, 35.714199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019939, 30.525959, 36.184315>,  <40.450939, 30.260490, 35.677204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019939, 30.525959, 36.184315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874695, 30.153654, 36.167194>,  <39.787548, 29.930271, 36.156921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874695, 30.153654, 36.167194>,  <40.019939, 30.525959, 36.184315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874695, 30.153654, 36.167194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319309, 0.081150, 0.944170,
		-0.875324, 0.356507, -0.326667,
		-0.363112, -0.930762, -0.042803,
		39.765762, 29.874426, 36.154354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332108, 30.555948, 36.363594>,  <40.019939, 30.525959, 36.184315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332108, 30.555948, 36.363594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413551, 30.171926, 36.440369>,  <39.462418, 29.941513, 36.486435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413551, 30.171926, 36.440369>,  <39.332108, 30.555948, 36.363594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413551, 30.171926, 36.440369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493560, 0.068660, 0.866997,
		-0.845541, -0.271265, -0.459864,
		0.203612, -0.960053, 0.191941,
		39.474636, 29.883911, 36.497952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753349, 30.303600, 36.697472>,  <39.332108, 30.555948, 36.363594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753349, 30.303600, 36.697472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055202, 30.058130, 36.790367>,  <39.236313, 29.910849, 36.846104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055202, 30.058130, 36.790367>,  <38.753349, 30.303600, 36.697472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055202, 30.058130, 36.790367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241484, 0.069351, 0.967923,
		-0.610096, -0.786507, -0.095858,
		0.754631, -0.613675, 0.232240,
		39.281593, 29.874027, 36.860039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461655, 29.774370, 37.089859>,  <38.753349, 30.303600, 36.697472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.461655, 29.774370, 37.089859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846977, 29.719286, 37.182007>,  <39.078171, 29.686235, 37.237297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846977, 29.719286, 37.182007>,  <38.461655, 29.774370, 37.089859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846977, 29.719286, 37.182007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268138, -0.456563, 0.848323,
		-0.011642, -0.878969, -0.476736,
		0.963310, -0.137708, 0.230370,
		39.135971, 29.677973, 37.251118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472969, 29.118174, 37.165516>,  <38.461655, 29.774370, 37.089859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472969, 29.118174, 37.165516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784184, 29.271696, 37.364452>,  <38.970913, 29.363810, 37.483814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784184, 29.271696, 37.364452>,  <38.472969, 29.118174, 37.165516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784184, 29.271696, 37.364452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299948, -0.468655, 0.830899,
		0.551989, -0.795647, -0.249508,
		0.778035, 0.383808, 0.497346,
		39.017593, 29.386839, 37.513657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853077, 28.627563, 37.518040>,  <38.472969, 29.118174, 37.165516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853077, 28.627563, 37.518040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955330, 28.944923, 37.739006>,  <39.016682, 29.135340, 37.871586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955330, 28.944923, 37.739006>,  <38.853077, 28.627563, 37.518040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955330, 28.944923, 37.739006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212177, -0.511433, 0.832717,
		0.943204, -0.330078, 0.037604,
		0.255630, 0.793401, 0.552420,
		39.032021, 29.182943, 37.904732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261337, 28.368862, 38.021828>,  <38.853077, 28.627563, 37.518040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261337, 28.368862, 38.021828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100670, 28.706141, 38.164761>,  <39.004269, 28.908508, 38.250519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100670, 28.706141, 38.164761>,  <39.261337, 28.368862, 38.021828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100670, 28.706141, 38.164761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246220, -0.475257, 0.844693,
		0.882066, 0.251301, 0.398506,
		-0.401665, 0.843196, 0.357333,
		38.980171, 28.959099, 38.271961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344467, 28.346708, 38.728428>,  <39.261337, 28.368862, 38.021828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344467, 28.346708, 38.728428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075245, 28.641474, 38.703266>,  <38.913712, 28.818333, 38.688171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075245, 28.641474, 38.703266>,  <39.344467, 28.346708, 38.728428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075245, 28.641474, 38.703266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572181, -0.464928, 0.675612,
		0.468622, 0.490715, 0.734569,
		-0.673055, 0.736913, -0.062903,
		38.873329, 28.862547, 38.684395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261326, 28.570871, 39.488712>,  <39.344467, 28.346708, 38.728428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261326, 28.570871, 39.488712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941311, 28.693287, 39.282299>,  <38.749302, 28.766737, 39.158451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941311, 28.693287, 39.282299>,  <39.261326, 28.570871, 39.488712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941311, 28.693287, 39.282299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575548, -0.148660, 0.804142,
		0.169385, 0.940341, 0.295073,
		-0.800033, 0.306038, -0.516030,
		38.701302, 28.785099, 39.127491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919464, 29.004185, 40.074059>,  <39.261326, 28.570871, 39.488712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919464, 29.004185, 40.074059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691284, 28.886044, 39.767502>,  <38.554375, 28.815159, 39.583569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691284, 28.886044, 39.767502>,  <38.919464, 29.004185, 40.074059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691284, 28.886044, 39.767502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736532, -0.228967, 0.636470,
		-0.363461, 0.927546, -0.086922,
		-0.570453, -0.295352, -0.766388,
		38.520149, 28.797438, 39.537586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303635, 29.377001, 40.024311>,  <38.919464, 29.004185, 40.074059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303635, 29.377001, 40.024311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213341, 29.047436, 39.816383>,  <38.159164, 28.849697, 39.691628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213341, 29.047436, 39.816383>,  <38.303635, 29.377001, 40.024311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213341, 29.047436, 39.816383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827066, -0.119887, 0.549171,
		-0.514789, 0.553891, -0.654368,
		-0.225731, -0.823913, -0.519821,
		38.145622, 28.800262, 39.660439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678432, 29.416941, 40.052864>,  <38.303635, 29.377001, 40.024311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678432, 29.416941, 40.052864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749058, 29.040499, 39.937527>,  <37.791431, 28.814632, 39.868324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749058, 29.040499, 39.937527>,  <37.678432, 29.416941, 40.052864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749058, 29.040499, 39.937527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854077, -0.292101, 0.430383,
		-0.489263, 0.170280, -0.855352,
		0.176563, -0.941106, -0.288346,
		37.802029, 28.758167, 39.851025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996582, 29.140900, 39.969643>,  <37.678432, 29.416941, 40.052864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996582, 29.140900, 39.969643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221928, 28.812912, 40.010174>,  <37.357136, 28.616119, 40.034492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221928, 28.812912, 40.010174>,  <36.996582, 29.140900, 39.969643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221928, 28.812912, 40.010174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681262, -0.391637, 0.618468,
		-0.467440, -0.417457, -0.779249,
		0.563366, -0.819969, 0.101330,
		37.390938, 28.566921, 40.040573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558426, 28.548592, 39.880714>,  <36.996582, 29.140900, 39.969643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558426, 28.548592, 39.880714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865993, 28.462980, 40.121696>,  <37.050533, 28.411613, 40.266285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865993, 28.462980, 40.121696>,  <36.558426, 28.548592, 39.880714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865993, 28.462980, 40.121696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637591, -0.326361, 0.697829,
		0.047262, -0.920696, -0.387409,
		0.768923, -0.214028, 0.602452,
		37.096672, 28.398771, 40.302433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422962, 27.867401, 40.111004>,  <36.558426, 28.548592, 39.880714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422962, 27.867401, 40.111004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662910, 28.053017, 40.371719>,  <36.806877, 28.164385, 40.528149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662910, 28.053017, 40.371719>,  <36.422962, 27.867401, 40.111004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662910, 28.053017, 40.371719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593623, -0.288061, 0.751420,
		0.536443, -0.837669, 0.102665,
		0.599867, 0.464038, 0.651788,
		36.842873, 28.192228, 40.567257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335804, 27.457689, 40.703033>,  <36.422962, 27.867401, 40.111004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335804, 27.457689, 40.703033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527641, 27.770819, 40.861614>,  <36.642742, 27.958696, 40.956764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527641, 27.770819, 40.861614>,  <36.335804, 27.457689, 40.703033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527641, 27.770819, 40.861614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571798, -0.063913, 0.817901,
		0.665611, -0.618952, 0.416965,
		0.479592, 0.782825, 0.396456,
		36.671520, 28.005667, 40.980553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660515, 27.220509, 41.331165>,  <36.335804, 27.457689, 40.703033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660515, 27.220509, 41.331165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617970, 27.616713, 41.365993>,  <36.592442, 27.854435, 41.386890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.617970, 27.616713, 41.365993>,  <36.660515, 27.220509, 41.331165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617970, 27.616713, 41.365993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518499, -0.129965, 0.845143,
		0.848437, 0.044746, 0.527401,
		-0.106360, 0.990508, 0.087066,
		36.586063, 27.913866, 41.392113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802971, 27.358875, 42.040535>,  <36.660515, 27.220509, 41.331165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802971, 27.358875, 42.040535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611820, 27.685448, 41.910873>,  <36.497128, 27.881392, 41.833076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611820, 27.685448, 41.910873>,  <36.802971, 27.358875, 42.040535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611820, 27.685448, 41.910873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516997, 0.036929, 0.855190,
		0.710173, 0.576264, 0.404444,
		-0.477879, 0.816429, -0.324152,
		36.468456, 27.930376, 41.813629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899620, 27.945759, 42.546558>,  <36.802971, 27.358875, 42.040535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899620, 27.945759, 42.546558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558449, 28.018579, 42.350857>,  <36.353745, 28.062271, 42.233437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558449, 28.018579, 42.350857>,  <36.899620, 27.945759, 42.546558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558449, 28.018579, 42.350857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442132, 0.246374, 0.862449,
		0.277550, 0.951923, -0.129649,
		-0.852928, 0.182051, -0.489257,
		36.302570, 28.073195, 42.204079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693962, 28.451977, 42.848686>,  <36.899620, 27.945759, 42.546558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693962, 28.451977, 42.848686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364151, 28.328627, 42.658928>,  <36.166264, 28.254616, 42.545074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364151, 28.328627, 42.658928>,  <36.693962, 28.451977, 42.848686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364151, 28.328627, 42.658928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542484, 0.192561, 0.817699,
		-0.160810, 0.931571, -0.326062,
		-0.824531, -0.308377, -0.474397,
		36.116791, 28.236113, 42.516609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196278, 28.910482, 42.995594>,  <36.693962, 28.451977, 42.848686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196278, 28.910482, 42.995594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963989, 28.603659, 42.886501>,  <35.824615, 28.419565, 42.821045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963989, 28.603659, 42.886501>,  <36.196278, 28.910482, 42.995594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963989, 28.603659, 42.886501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562180, 0.135535, 0.815833,
		-0.588827, 0.627097, -0.509933,
		-0.580720, -0.767059, -0.272735,
		35.789772, 28.373541, 42.804680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458668, 29.133068, 43.024109>,  <36.196278, 28.910482, 42.995594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458668, 29.133068, 43.024109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507259, 28.739660, 43.077671>,  <35.536415, 28.503614, 43.109806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507259, 28.739660, 43.077671>,  <35.458668, 29.133068, 43.024109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507259, 28.739660, 43.077671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642873, 0.024827, 0.765570,
		-0.756279, -0.179079, -0.629264,
		0.121475, -0.983522, 0.133901,
		35.543701, 28.444603, 43.117840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823467, 28.849337, 43.171322>,  <35.458668, 29.133068, 43.024109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823467, 28.849337, 43.171322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022476, 28.518993, 43.277481>,  <35.141880, 28.320787, 43.341175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022476, 28.518993, 43.277481>,  <34.823467, 28.849337, 43.171322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022476, 28.518993, 43.277481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566993, -0.078050, 0.820017,
		-0.656502, -0.558453, -0.507086,
		0.497519, -0.825856, 0.265399,
		35.171734, 28.271236, 43.357101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339775, 28.470734, 43.460506>,  <34.823467, 28.849337, 43.171322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339775, 28.470734, 43.460506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677197, 28.293406, 43.581760>,  <34.879650, 28.187008, 43.654514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677197, 28.293406, 43.581760>,  <34.339775, 28.470734, 43.460506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677197, 28.293406, 43.581760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418684, -0.189358, 0.888171,
		-0.336343, -0.876134, -0.345344,
		0.843551, -0.443320, 0.303135,
		34.930260, 28.160410, 43.672699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156654, 27.796556, 43.751987>,  <34.339775, 28.470734, 43.460506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156654, 27.796556, 43.751987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499092, 27.920460, 43.917465>,  <34.704556, 27.994801, 44.016754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499092, 27.920460, 43.917465>,  <34.156654, 27.796556, 43.751987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499092, 27.920460, 43.917465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338086, -0.269772, 0.901621,
		0.390888, -0.911742, -0.126227,
		0.856098, 0.309758, 0.413698,
		34.755920, 28.013388, 44.041576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477123, 27.190264, 44.177891>,  <34.156654, 27.796556, 43.751987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477123, 27.190264, 44.177891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638149, 27.530107, 44.314190>,  <34.734764, 27.734013, 44.395969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638149, 27.530107, 44.314190>,  <34.477123, 27.190264, 44.177891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638149, 27.530107, 44.314190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188659, -0.287243, 0.939095,
		0.895738, -0.442334, 0.044652,
		0.402567, 0.849607, 0.340745,
		34.758919, 27.784990, 44.416412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711445, 26.927225, 44.861168>,  <34.477123, 27.190264, 44.177891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711445, 26.927225, 44.861168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811527, 27.314495, 44.863449>,  <34.871578, 27.546858, 44.864819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811527, 27.314495, 44.863449>,  <34.711445, 26.927225, 44.861168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811527, 27.314495, 44.863449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069497, 0.012086, 0.997509,
		0.965694, -0.249982, 0.070310,
		0.250209, 0.968175, 0.005701,
		34.886589, 27.604948, 44.865158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329998, 27.079891, 45.321289>,  <34.711445, 26.927225, 44.861168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329998, 27.079891, 45.321289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109676, 27.412714, 45.295059>,  <34.977486, 27.612408, 45.279324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109676, 27.412714, 45.295059>,  <35.329998, 27.079891, 45.321289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109676, 27.412714, 45.295059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100189, 0.012080, 0.994895,
		0.828600, 0.554560, 0.076710,
		-0.550802, 0.832056, -0.065570,
		34.944435, 27.662331, 45.275387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536591, 27.591021, 45.853771>,  <35.329998, 27.079891, 45.321289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536591, 27.591021, 45.853771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157761, 27.673857, 45.755653>,  <34.930462, 27.723558, 45.696781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.157761, 27.673857, 45.755653>,  <35.536591, 27.591021, 45.853771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157761, 27.673857, 45.755653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234324, 0.076328, 0.969157,
		0.219427, 0.975339, -0.023761,
		-0.947071, 0.207092, -0.245294,
		34.873638, 27.735985, 45.682064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376743, 28.003288, 46.319408>,  <35.536591, 27.591021, 45.853771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376743, 28.003288, 46.319408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009575, 27.920115, 46.184238>,  <34.789276, 27.870211, 46.103138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009575, 27.920115, 46.184238>,  <35.376743, 28.003288, 46.319408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009575, 27.920115, 46.184238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365410, 0.111160, 0.924186,
		-0.154605, 0.971806, -0.178016,
		-0.917918, -0.207932, -0.337922,
		34.734200, 27.857735, 46.082863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939835, 28.396713, 46.664406>,  <35.376743, 28.003288, 46.319408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939835, 28.396713, 46.664406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689232, 28.116299, 46.528152>,  <34.538872, 27.948050, 46.446400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689232, 28.116299, 46.528152>,  <34.939835, 28.396713, 46.664406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689232, 28.116299, 46.528152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459833, -0.020424, 0.887771,
		-0.629319, 0.712831, -0.309565,
		-0.626508, -0.701039, -0.340636,
		34.501278, 27.905987, 46.425961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402222, 28.271479, 47.275120>,  <34.939835, 28.396713, 46.664406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402222, 28.271479, 47.275120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439713, 28.623663, 47.461025>,  <34.462208, 28.834972, 47.572571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439713, 28.623663, 47.461025>,  <34.402222, 28.271479, 47.275120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439713, 28.623663, 47.461025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524089, 0.353272, -0.774939,
		-0.846490, 0.316215, -0.428326,
		0.093732, 0.880458, 0.464766,
		34.467831, 28.887800, 47.600456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202160, 28.800303, 46.748535>,  <34.402222, 28.271479, 47.275120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202160, 28.800303, 46.748535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455841, 28.906622, 47.038952>,  <34.608047, 28.970413, 47.213203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455841, 28.906622, 47.038952>,  <34.202160, 28.800303, 46.748535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455841, 28.906622, 47.038952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569296, 0.474863, -0.671124,
		-0.523157, 0.838961, 0.149839,
		0.634199, 0.265801, 0.726045,
		34.646099, 28.986362, 47.256767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226559, 29.506908, 46.656174>,  <34.202160, 28.800303, 46.748535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226559, 29.506908, 46.656174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565044, 29.396776, 46.838654>,  <34.768135, 29.330696, 46.948143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565044, 29.396776, 46.838654>,  <34.226559, 29.506908, 46.656174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565044, 29.396776, 46.838654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498005, 0.713166, -0.493342,
		-0.189514, 0.644661, 0.740606,
		0.846213, -0.275330, 0.456199,
		34.818909, 29.314177, 46.975513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611580, 30.133698, 46.574940>,  <34.226559, 29.506908, 46.656174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611580, 30.133698, 46.574940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892323, 29.858673, 46.649403>,  <35.060768, 29.693659, 46.694080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892323, 29.858673, 46.649403>,  <34.611580, 30.133698, 46.574940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892323, 29.858673, 46.649403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618666, 0.458874, -0.637721,
		0.353050, 0.562758, 0.747435,
		0.701861, -0.687560, 0.186154,
		35.102882, 29.652405, 46.705250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227440, 30.499117, 46.499363>,  <34.611580, 30.133698, 46.574940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227440, 30.499117, 46.499363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339008, 30.116802, 46.462112>,  <35.405949, 29.887413, 46.439762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339008, 30.116802, 46.462112>,  <35.227440, 30.499117, 46.499363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339008, 30.116802, 46.462112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671210, 0.263385, -0.692896,
		0.686790, 0.130756, 0.714998,
		0.278920, -0.955788, -0.093126,
		35.422684, 29.830067, 46.434174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989117, 30.514824, 46.391949>,  <35.227440, 30.499117, 46.499363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989117, 30.514824, 46.391949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878227, 30.152147, 46.264790>,  <35.811695, 29.934542, 46.188496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878227, 30.152147, 46.264790>,  <35.989117, 30.514824, 46.391949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878227, 30.152147, 46.264790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575568, 0.108213, -0.810562,
		0.769331, -0.407676, 0.491864,
		-0.277221, -0.906692, -0.317897,
		35.795059, 29.880140, 46.169422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629318, 30.184141, 46.233547>,  <35.989117, 30.514824, 46.391949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629318, 30.184141, 46.233547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327202, 30.018499, 46.030354>,  <36.145931, 29.919115, 45.908436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327202, 30.018499, 46.030354>,  <36.629318, 30.184141, 46.233547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327202, 30.018499, 46.030354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514965, 0.104458, -0.850823,
		0.405392, -0.904216, 0.134352,
		-0.755294, -0.414103, -0.507986,
		36.100613, 29.894268, 45.877956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943150, 30.153065, 45.665539>,  <36.629318, 30.184141, 46.233547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943150, 30.153065, 45.665539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578754, 30.066746, 45.524948>,  <36.360119, 30.014956, 45.440594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578754, 30.066746, 45.524948>,  <36.943150, 30.153065, 45.665539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578754, 30.066746, 45.524948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333754, 0.114966, -0.935624,
		0.242313, -0.969647, -0.032710,
		-0.910984, -0.215797, -0.351481,
		36.305458, 30.002007, 45.419502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038074, 29.619678, 45.195770>,  <36.943150, 30.153065, 45.665539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038074, 29.619678, 45.195770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696892, 29.791170, 45.076668>,  <36.492184, 29.894064, 45.005207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696892, 29.791170, 45.076668>,  <37.038074, 29.619678, 45.195770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696892, 29.791170, 45.076668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396915, 0.162234, -0.903404,
		-0.339007, -0.888748, -0.308546,
		-0.852955, 0.428727, -0.297759,
		36.441006, 29.919788, 44.987339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860840, 29.245270, 44.552761>,  <37.038074, 29.619678, 45.195770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860840, 29.245270, 44.552761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674618, 29.595512, 44.501266>,  <36.562885, 29.805658, 44.470371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.674618, 29.595512, 44.501266>,  <36.860840, 29.245270, 44.552761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674618, 29.595512, 44.501266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198806, -0.038275, -0.979291,
		-0.862400, -0.481509, -0.156256,
		-0.465557, 0.875605, -0.128735,
		36.534950, 29.858194, 44.462646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461182, 29.201515, 43.990700>,  <36.860840, 29.245270, 44.552761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461182, 29.201515, 43.990700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514664, 29.594109, 44.045570>,  <36.546753, 29.829664, 44.078491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514664, 29.594109, 44.045570>,  <36.461182, 29.201515, 43.990700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514664, 29.594109, 44.045570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301303, 0.091608, -0.949118,
		-0.944108, 0.168234, -0.283475,
		0.133706, 0.981481, 0.137177,
		36.554775, 29.888554, 44.086723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180389, 29.550850, 43.415249>,  <36.461182, 29.201515, 43.990700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180389, 29.550850, 43.415249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420315, 29.834473, 43.563553>,  <36.564270, 30.004646, 43.652534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420315, 29.834473, 43.563553>,  <36.180389, 29.550850, 43.415249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420315, 29.834473, 43.563553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351572, 0.182698, -0.918160,
		-0.718765, 0.681073, -0.139700,
		0.599811, 0.709056, 0.370763,
		36.600258, 30.047190, 43.674782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063469, 30.163015, 42.926258>,  <36.180389, 29.550850, 43.415249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063469, 30.163015, 42.926258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411125, 30.208292, 43.118832>,  <36.619720, 30.235458, 43.234375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411125, 30.208292, 43.118832>,  <36.063469, 30.163015, 42.926258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411125, 30.208292, 43.118832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416653, 0.356847, -0.836099,
		-0.266437, 0.927280, 0.262990,
		0.869144, 0.113192, 0.481431,
		36.671867, 30.242250, 43.263260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350899, 30.826347, 42.739166>,  <36.063469, 30.163015, 42.926258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350899, 30.826347, 42.739166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656223, 30.599483, 42.862900>,  <36.839417, 30.463366, 42.937141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656223, 30.599483, 42.862900>,  <36.350899, 30.826347, 42.739166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656223, 30.599483, 42.862900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520764, 0.256816, -0.814156,
		0.382314, 0.782544, 0.491386,
		0.763309, -0.567160, 0.309337,
		36.885216, 30.429337, 42.955700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765839, 31.294617, 42.534473>,  <36.350899, 30.826347, 42.739166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765839, 31.294617, 42.534473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956051, 30.946527, 42.585991>,  <37.070179, 30.737675, 42.616901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956051, 30.946527, 42.585991>,  <36.765839, 31.294617, 42.534473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956051, 30.946527, 42.585991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657799, 0.254539, -0.708880,
		0.584100, 0.421811, 0.693471,
		0.475529, -0.870222, 0.128790,
		37.098709, 30.685461, 42.624626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395855, 31.506287, 42.592663>,  <36.765839, 31.294617, 42.534473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395855, 31.506287, 42.592663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421387, 31.126043, 42.471157>,  <37.436707, 30.897898, 42.398254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421387, 31.126043, 42.471157>,  <37.395855, 31.506287, 42.592663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421387, 31.126043, 42.471157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568287, 0.284837, -0.771957,
		0.820351, -0.123350, 0.558399,
		0.063832, -0.950606, -0.303764,
		37.440536, 30.840862, 42.380028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023365, 31.478817, 42.362473>,  <37.395855, 31.506287, 42.592663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023365, 31.478817, 42.362473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907135, 31.129995, 42.204948>,  <37.837399, 30.920702, 42.110432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907135, 31.129995, 42.204948>,  <38.023365, 31.478817, 42.362473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907135, 31.129995, 42.204948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552195, 0.183292, -0.813317,
		0.781438, -0.453793, 0.428283,
		-0.290576, -0.872053, -0.393814,
		37.819962, 30.868380, 42.086803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611721, 31.207312, 42.012222>,  <38.023365, 31.478817, 42.362473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611721, 31.207312, 42.012222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309860, 31.000584, 41.850533>,  <38.128746, 30.876547, 41.753517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309860, 31.000584, 41.850533>,  <38.611721, 31.207312, 42.012222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309860, 31.000584, 41.850533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500539, -0.055144, -0.863956,
		0.424221, -0.854315, 0.300304,
		-0.754650, -0.516822, -0.404225,
		38.083466, 30.845537, 41.729263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899231, 30.625071, 41.674946>,  <38.611721, 31.207312, 42.012222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899231, 30.625071, 41.674946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537636, 30.702156, 41.522282>,  <38.320679, 30.748407, 41.430683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537636, 30.702156, 41.522282>,  <38.899231, 30.625071, 41.674946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537636, 30.702156, 41.522282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397724, 0.051453, -0.916061,
		-0.156902, -0.979905, -0.123161,
		-0.903989, 0.192716, -0.381659,
		38.266438, 30.759970, 41.407784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738834, 30.068184, 41.172054>,  <38.899231, 30.625071, 41.674946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738834, 30.068184, 41.172054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527325, 30.394066, 41.076839>,  <38.400421, 30.589594, 41.019711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527325, 30.394066, 41.076839>,  <38.738834, 30.068184, 41.172054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527325, 30.394066, 41.076839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432438, 0.017271, -0.901498,
		-0.730342, -0.579621, -0.361441,
		-0.528770, 0.814703, -0.238037,
		38.368694, 30.638477, 41.005428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844967, 30.028667, 40.550301>,  <38.738834, 30.068184, 41.172054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844967, 30.028667, 40.550301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708717, 30.404097, 40.572411>,  <38.626968, 30.629354, 40.585678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708717, 30.404097, 40.572411>,  <38.844967, 30.028667, 40.550301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708717, 30.404097, 40.572411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350217, 0.181222, -0.918971,
		-0.872538, -0.293665, -0.390433,
		-0.340625, 0.938573, 0.055277,
		38.606529, 30.685669, 40.588993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601093, 30.079561, 39.958801>,  <38.844967, 30.028667, 40.550301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601093, 30.079561, 39.958801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656628, 30.452192, 40.093197>,  <38.689949, 30.675772, 40.173832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656628, 30.452192, 40.093197>,  <38.601093, 30.079561, 39.958801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656628, 30.452192, 40.093197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363696, 0.267598, -0.892254,
		-0.921113, 0.246078, -0.301658,
		0.138841, 0.931578, 0.335985,
		38.698280, 30.731667, 40.193993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298206, 30.482588, 39.441566>,  <38.601093, 30.079561, 39.958801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298206, 30.482588, 39.441566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577374, 30.681595, 39.647633>,  <38.744873, 30.800999, 39.771271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577374, 30.681595, 39.647633>,  <38.298206, 30.482588, 39.441566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577374, 30.681595, 39.647633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380657, 0.351609, -0.855261,
		-0.606643, 0.792999, 0.056009,
		0.697914, 0.497518, 0.515162,
		38.786747, 30.830851, 39.802181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351868, 31.139753, 39.117256>,  <38.298206, 30.482588, 39.441566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.351868, 31.139753, 39.117256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700417, 31.070913, 39.301037>,  <38.909546, 31.029610, 39.411304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700417, 31.070913, 39.301037>,  <38.351868, 31.139753, 39.117256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700417, 31.070913, 39.301037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487334, 0.411916, -0.769955,
		-0.056745, 0.894822, 0.442802,
		0.871370, -0.172101, 0.459451,
		38.961826, 31.019283, 39.438873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637474, 31.707594, 39.028534>,  <38.351868, 31.139753, 39.117256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637474, 31.707594, 39.028534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947262, 31.464811, 39.099869>,  <39.133133, 31.319141, 39.142670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947262, 31.464811, 39.099869>,  <38.637474, 31.707594, 39.028534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947262, 31.464811, 39.099869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558167, 0.522923, -0.644205,
		0.297747, 0.598459, 0.743770,
		0.774465, -0.606958, 0.178341,
		39.179600, 31.282724, 39.153370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198074, 32.142796, 38.973663>,  <38.637474, 31.707594, 39.028534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198074, 32.142796, 38.973663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363110, 31.778521, 38.965473>,  <39.462132, 31.559956, 38.960560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363110, 31.778521, 38.965473>,  <39.198074, 32.142796, 38.973663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363110, 31.778521, 38.965473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738460, 0.347554, -0.577826,
		0.533337, 0.223282, 0.815903,
		0.412589, -0.910687, -0.020479,
		39.486885, 31.505314, 38.959328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849003, 32.212376, 39.191765>,  <39.198074, 32.142796, 38.973663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849003, 32.212376, 39.191765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854122, 31.877363, 38.973267>,  <39.857193, 31.676357, 38.842167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854122, 31.877363, 38.973267>,  <39.849003, 32.212376, 39.191765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854122, 31.877363, 38.973267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878792, 0.270043, -0.393449,
		0.477034, -0.475000, 0.739468,
		0.012800, -0.837527, -0.546246,
		39.857964, 31.626104, 38.809391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554829, 31.999453, 39.216637>,  <39.849003, 32.212376, 39.191765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554829, 31.999453, 39.216637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386852, 31.796774, 38.915462>,  <40.286068, 31.675167, 38.734756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.386852, 31.796774, 38.915462>,  <40.554829, 31.999453, 39.216637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386852, 31.796774, 38.915462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865933, 0.024655, -0.499552,
		0.271685, -0.861772, 0.428412,
		-0.419937, -0.506697, -0.752935,
		40.260872, 31.644764, 38.689583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974651, 31.627031, 38.910107>,  <40.554829, 31.999453, 39.216637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974651, 31.627031, 38.910107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718239, 31.635475, 38.603218>,  <40.564392, 31.640541, 38.419086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718239, 31.635475, 38.603218>,  <40.974651, 31.627031, 38.910107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718239, 31.635475, 38.603218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765892, 0.082516, -0.637652,
		0.049848, -0.996366, -0.069062,
		-0.641034, 0.021109, -0.767222,
		40.525928, 31.641808, 38.373051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144733, 31.140989, 38.440281>,  <40.974651, 31.627031, 38.910107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144733, 31.140989, 38.440281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939674, 31.399185, 38.213818>,  <40.816639, 31.554104, 38.077938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939674, 31.399185, 38.213818>,  <41.144733, 31.140989, 38.440281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939674, 31.399185, 38.213818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732385, -0.015403, -0.680716,
		-0.448117, -0.763613, -0.464852,
		-0.512643, 0.645491, -0.566161,
		40.785881, 31.592833, 38.043968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277016, 30.903259, 37.770786>,  <41.144733, 31.140989, 38.440281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277016, 30.903259, 37.770786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132309, 31.271652, 37.712940>,  <41.045486, 31.492689, 37.678230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132309, 31.271652, 37.712940>,  <41.277016, 30.903259, 37.770786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132309, 31.271652, 37.712940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626117, 0.125090, -0.769630,
		-0.690727, -0.368972, -0.621897,
		-0.361765, 0.920984, -0.144617,
		41.023781, 31.547947, 37.669556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993427, 30.899412, 37.062088>,  <41.277016, 30.903259, 37.770786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993427, 30.899412, 37.062088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090588, 31.269102, 37.179939>,  <41.148884, 31.490917, 37.250648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090588, 31.269102, 37.179939>,  <40.993427, 30.899412, 37.062088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090588, 31.269102, 37.179939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457337, 0.158742, -0.875011,
		-0.855477, 0.347286, -0.384124,
		0.242902, 0.924226, 0.294627,
		41.163460, 31.546370, 37.268326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006721, 31.301817, 36.466572>,  <40.993427, 30.899412, 37.062088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006721, 31.301817, 36.466572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217934, 31.521294, 36.725838>,  <41.344662, 31.652979, 36.881397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217934, 31.521294, 36.725838>,  <41.006721, 31.301817, 36.466572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217934, 31.521294, 36.725838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550293, 0.360246, -0.753260,
		-0.646806, 0.754427, -0.111718,
		0.528034, 0.548691, 0.648166,
		41.376343, 31.685902, 36.920288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077488, 32.071918, 36.183990>,  <41.006721, 31.301817, 36.466572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077488, 32.071918, 36.183990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364300, 32.070351, 36.462803>,  <41.536388, 32.069408, 36.630089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.364300, 32.070351, 36.462803>,  <41.077488, 32.071918, 36.183990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.364300, 32.070351, 36.462803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663209, 0.311596, -0.680487,
		-0.214523, 0.950207, 0.226025,
		0.717031, -0.003921, 0.697030,
		41.579411, 32.069176, 36.671913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354496, 32.671585, 36.142895>,  <41.077488, 32.071918, 36.183990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354496, 32.671585, 36.142895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623192, 32.423332, 36.304672>,  <41.784409, 32.274380, 36.401741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623192, 32.423332, 36.304672>,  <41.354496, 32.671585, 36.142895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623192, 32.423332, 36.304672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651288, 0.234653, -0.721638,
		0.352969, 0.748165, 0.561838,
		0.671742, -0.620634, 0.404446,
		41.824715, 32.237141, 36.426006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036148, 33.103485, 36.260983>,  <41.354496, 32.671585, 36.142895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036148, 33.103485, 36.260983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146141, 32.720024, 36.231693>,  <42.212139, 32.489948, 36.214119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146141, 32.720024, 36.231693>,  <42.036148, 33.103485, 36.260983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146141, 32.720024, 36.231693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595122, 0.229530, -0.770159,
		0.755125, 0.168207, 0.633635,
		0.274984, -0.958657, -0.073220,
		42.228638, 32.432426, 36.209728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735565, 33.155571, 36.196056>,  <42.036148, 33.103485, 36.260983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735565, 33.155571, 36.196056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656334, 32.788094, 36.059376>,  <42.608795, 32.567608, 35.977367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656334, 32.788094, 36.059376>,  <42.735565, 33.155571, 36.196056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656334, 32.788094, 36.059376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462399, 0.219800, -0.858996,
		0.864264, -0.328149, 0.381268,
		-0.198077, -0.918698, -0.341701,
		42.596912, 32.512486, 35.956867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313164, 32.998909, 35.748562>,  <42.735565, 33.155571, 36.196056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313164, 32.998909, 35.748562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.021416, 32.741314, 35.656216>,  <42.846367, 32.586758, 35.600807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.021416, 32.741314, 35.656216>,  <43.313164, 32.998909, 35.748562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021416, 32.741314, 35.656216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152899, 0.175472, -0.972539,
		0.666812, -0.744641, -0.029519,
		-0.729372, -0.643987, -0.230861,
		42.802605, 32.548119, 35.586956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634296, 32.482792, 35.217419>,  <43.313164, 32.998909, 35.748562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634296, 32.482792, 35.217419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236488, 32.462570, 35.180820>,  <42.997803, 32.450436, 35.158863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.236488, 32.462570, 35.180820>,  <43.634296, 32.482792, 35.217419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236488, 32.462570, 35.180820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086660, 0.090721, -0.992099,
		0.058455, -0.994592, -0.085843,
		-0.994522, -0.050554, -0.091495,
		42.938133, 32.447403, 35.153374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521679, 31.969887, 34.696327>,  <43.634296, 32.482792, 35.217419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521679, 31.969887, 34.696327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190987, 32.193825, 34.718536>,  <42.992569, 32.328190, 34.731861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.190987, 32.193825, 34.718536>,  <43.521679, 31.969887, 34.696327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190987, 32.193825, 34.718536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035230, 0.046981, -0.998274,
		-0.561489, -0.827263, -0.019117,
		-0.826734, 0.559847, 0.055524,
		42.942966, 32.361778, 34.735195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161369, 31.658115, 34.181515>,  <43.521679, 31.969887, 34.696327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161369, 31.658115, 34.181515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046024, 32.037006, 34.237526>,  <42.976818, 32.264339, 34.271133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046024, 32.037006, 34.237526>,  <43.161369, 31.658115, 34.181515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046024, 32.037006, 34.237526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017195, 0.151340, -0.988332,
		-0.957367, -0.282590, -0.059928,
		-0.288362, 0.947227, 0.140028,
		42.959515, 32.321175, 34.279533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520157, 31.897604, 33.788490>,  <43.161369, 31.658115, 34.181515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520157, 31.897604, 33.788490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765430, 32.207745, 33.848934>,  <42.912594, 32.393829, 33.885201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765430, 32.207745, 33.848934>,  <42.520157, 31.897604, 33.788490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765430, 32.207745, 33.848934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045798, 0.225870, -0.973080,
		-0.788612, 0.589756, 0.174009,
		0.613183, 0.775352, 0.151114,
		42.949387, 32.440350, 33.894268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199993, 32.716034, 33.703907>,  <42.520157, 31.897604, 33.788490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199993, 32.716034, 33.703907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569298, 32.612129, 33.590698>,  <42.790882, 32.549786, 33.522774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569298, 32.612129, 33.590698>,  <42.199993, 32.716034, 33.703907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569298, 32.612129, 33.590698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216676, 0.256245, -0.942014,
		0.317225, 0.931054, 0.180298,
		0.923266, -0.259764, -0.283024,
		42.846279, 32.534199, 33.505791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570831, 33.233147, 33.276497>,  <42.199993, 32.716034, 33.703907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570831, 33.233147, 33.276497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742973, 32.887222, 33.173042>,  <42.846260, 32.679668, 33.110970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742973, 32.887222, 33.173042>,  <42.570831, 33.233147, 33.276497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742973, 32.887222, 33.173042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126083, 0.226126, -0.965904,
		0.893808, 0.448296, -0.011723,
		0.430360, -0.864811, -0.258636,
		42.872082, 32.627777, 33.095451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.130474, 33.372494, 32.928131>,  <42.570831, 33.233147, 33.276497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.130474, 33.372494, 32.928131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974102, 33.024364, 32.808323>,  <42.880280, 32.815487, 32.736439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974102, 33.024364, 32.808323>,  <43.130474, 33.372494, 32.928131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974102, 33.024364, 32.808323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047203, 0.343946, -0.937802,
		0.919208, -0.352480, -0.175542,
		-0.390934, -0.870321, -0.299519,
		42.856823, 32.763268, 32.718468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466064, 33.254932, 32.293282>,  <43.130474, 33.372494, 32.928131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466064, 33.254932, 32.293282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776428, 33.084404, 32.479279>,  <43.962646, 32.982086, 32.590878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.776428, 33.084404, 32.479279>,  <43.466064, 33.254932, 32.293282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.776428, 33.084404, 32.479279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541186, 0.828590, -0.143374,
		-0.324162, 0.362891, 0.873630,
		0.775910, -0.426320, 0.464989,
		44.009201, 32.956509, 32.618774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069904, 33.513920, 32.493530>,  <43.466064, 33.254932, 32.293282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069904, 33.513920, 32.493530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367165, 33.768833, 32.411949>,  <44.545521, 33.921780, 32.362999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367165, 33.768833, 32.411949>,  <44.069904, 33.513920, 32.493530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367165, 33.768833, 32.411949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636556, 0.579402, -0.509009,
		-0.206209, 0.508101, 0.836248,
		0.743152, 0.637281, -0.203956,
		44.590111, 33.960018, 32.350761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984913, 34.123299, 32.831135>,  <44.069904, 33.513920, 32.493530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984913, 34.123299, 32.831135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178078, 34.154263, 32.482239>,  <44.293976, 34.172840, 32.272900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178078, 34.154263, 32.482239>,  <43.984913, 34.123299, 32.831135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178078, 34.154263, 32.482239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798188, 0.448567, -0.402100,
		0.360131, 0.890390, 0.278407,
		0.482910, 0.077413, -0.872241,
		44.322952, 34.177486, 32.220566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787174, 34.723858, 32.534016>,  <43.984913, 34.123299, 32.831135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787174, 34.723858, 32.534016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940899, 34.534184, 32.217167>,  <44.033134, 34.420380, 32.027058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.940899, 34.534184, 32.217167>,  <43.787174, 34.723858, 32.534016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.940899, 34.534184, 32.217167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731345, 0.367258, -0.574679,
		0.563416, 0.800169, -0.205649,
		0.384314, -0.474184, -0.792119,
		44.056194, 34.391930, 31.979530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983189, 35.180130, 31.979078>,  <43.787174, 34.723858, 32.534016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983189, 35.180130, 31.979078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889801, 34.831696, 31.806246>,  <43.833771, 34.622635, 31.702545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.889801, 34.831696, 31.806246>,  <43.983189, 35.180130, 31.979078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889801, 34.831696, 31.806246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654077, 0.469491, -0.593094,
		0.719498, 0.144149, -0.679370,
		-0.233464, -0.871091, -0.432083,
		43.819763, 34.570370, 31.676620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758171, 35.434891, 31.432196>,  <43.983189, 35.180130, 31.979078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758171, 35.434891, 31.432196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695744, 35.049400, 31.345596>,  <43.658287, 34.818104, 31.293636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.695744, 35.049400, 31.345596>,  <43.758171, 35.434891, 31.432196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695744, 35.049400, 31.345596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644297, 0.265462, -0.717225,
		0.748682, 0.027552, -0.662357,
		-0.156069, -0.963728, -0.216498,
		43.648922, 34.760281, 31.280647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835495, 35.257320, 30.685575>,  <43.758171, 35.434891, 31.432196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835495, 35.257320, 30.685575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595737, 34.970577, 30.828032>,  <43.451881, 34.798531, 30.913506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595737, 34.970577, 30.828032>,  <43.835495, 35.257320, 30.685575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595737, 34.970577, 30.828032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674018, 0.212017, -0.707636,
		0.431769, -0.664198, -0.610259,
		-0.599396, -0.716861, 0.356139,
		43.415920, 34.755520, 30.934874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622364, 34.794868, 30.055393>,  <43.835495, 35.257320, 30.685575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622364, 34.794868, 30.055393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353588, 34.735405, 30.345608>,  <43.192322, 34.699726, 30.519737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353588, 34.735405, 30.345608>,  <43.622364, 34.794868, 30.055393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353588, 34.735405, 30.345608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740272, 0.105257, -0.664017,
		0.022345, -0.983271, -0.180775,
		-0.671936, -0.148660, 0.725536,
		43.152008, 34.690807, 30.563269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011620, 34.411842, 29.734180>,  <43.622364, 34.794868, 30.055393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011620, 34.411842, 29.734180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857395, 34.553246, 30.075090>,  <42.764862, 34.638088, 30.279636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857395, 34.553246, 30.075090>,  <43.011620, 34.411842, 29.734180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857395, 34.553246, 30.075090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848677, 0.226592, -0.477917,
		-0.362066, -0.907573, 0.212649,
		-0.385560, 0.353507, 0.852277,
		42.741726, 34.659298, 30.330774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288074, 34.173294, 29.756310>,  <43.011620, 34.411842, 29.734180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288074, 34.173294, 29.756310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298935, 34.502029, 29.983940>,  <42.305450, 34.699268, 30.120518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.298935, 34.502029, 29.983940>,  <42.288074, 34.173294, 29.756310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.298935, 34.502029, 29.983940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871692, 0.298123, -0.388941,
		-0.489301, -0.485498, 0.724483,
		0.027155, 0.821836, 0.569077,
		42.307083, 34.748581, 30.154663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713966, 34.151791, 30.185562>,  <42.288074, 34.173294, 29.756310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713966, 34.151791, 30.185562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820316, 34.537109, 30.170748>,  <41.884125, 34.768299, 30.161860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.820316, 34.537109, 30.170748>,  <41.713966, 34.151791, 30.185562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820316, 34.537109, 30.170748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962499, 0.263116, -0.066068,
		-0.053898, 0.053212, 0.997128,
		0.265875, 0.963295, -0.037035,
		41.900078, 34.826099, 30.159637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190868, 34.505630, 30.531790>,  <41.713966, 34.151791, 30.185562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190868, 34.505630, 30.531790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373001, 34.818565, 30.361792>,  <41.482281, 35.006329, 30.259792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373001, 34.818565, 30.361792>,  <41.190868, 34.505630, 30.531790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373001, 34.818565, 30.361792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888946, 0.426031, -0.168146,
		0.049512, 0.454358, 0.889442,
		0.455328, 0.782340, -0.424993,
		41.509598, 35.053268, 30.234293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960522, 35.151836, 30.803829>,  <41.190868, 34.505630, 30.531790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960522, 35.151836, 30.803829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094898, 35.253418, 30.441029>,  <41.175526, 35.314365, 30.223349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.094898, 35.253418, 30.441029>,  <40.960522, 35.151836, 30.803829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.094898, 35.253418, 30.441029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839598, 0.517165, -0.166176,
		0.426869, 0.817342, 0.386955,
		0.335943, 0.253951, -0.907001,
		41.195683, 35.329605, 30.168928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818607, 35.831619, 30.720116>,  <40.960522, 35.151836, 30.803829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818607, 35.831619, 30.720116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879593, 35.772701, 30.329208>,  <40.916183, 35.737350, 30.094664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879593, 35.772701, 30.329208>,  <40.818607, 35.831619, 30.720116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879593, 35.772701, 30.329208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750930, 0.625615, -0.211449,
		0.642541, 0.766100, -0.015228,
		0.152464, -0.147300, -0.977271,
		40.925331, 35.728512, 30.036028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809139, 36.520218, 30.383232>,  <40.818607, 35.831619, 30.720116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809139, 36.520218, 30.383232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730103, 36.234810, 30.114353>,  <40.682682, 36.063564, 29.953026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730103, 36.234810, 30.114353>,  <40.809139, 36.520218, 30.383232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730103, 36.234810, 30.114353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738052, 0.559579, -0.377028,
		0.645164, 0.421618, -0.637183,
		-0.197593, -0.713519, -0.672196,
		40.670826, 36.020756, 29.912695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617573, 36.902748, 29.724405>,  <40.809139, 36.520218, 30.383232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617573, 36.902748, 29.724405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473110, 36.533039, 29.674959>,  <40.386433, 36.311214, 29.645292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473110, 36.533039, 29.674959>,  <40.617573, 36.902748, 29.724405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473110, 36.533039, 29.674959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785749, 0.373018, -0.493412,
		0.502159, -0.081068, -0.860967,
		-0.361156, -0.924275, -0.123616,
		40.364761, 36.255756, 29.637875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357052, 36.839550, 29.012684>,  <40.617573, 36.902748, 29.724405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357052, 36.839550, 29.012684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156776, 36.575825, 29.237049>,  <40.036613, 36.417591, 29.371668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156776, 36.575825, 29.237049>,  <40.357052, 36.839550, 29.012684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156776, 36.575825, 29.237049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861930, 0.319882, -0.393385,
		0.079937, -0.680431, -0.728439,
		-0.500686, -0.659310, 0.560914,
		40.006569, 36.378033, 29.405323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960178, 36.437756, 28.509563>,  <40.357052, 36.839550, 29.012684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960178, 36.437756, 28.509563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809616, 36.452011, 28.879871>,  <39.719280, 36.460564, 29.102057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809616, 36.452011, 28.879871>,  <39.960178, 36.437756, 28.509563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809616, 36.452011, 28.879871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906809, 0.190518, -0.376032,
		-0.189778, -0.981037, -0.039392,
		-0.376407, 0.035641, 0.925769,
		39.696693, 36.462704, 29.157602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228886, 36.210842, 28.311399>,  <39.960178, 36.437756, 28.509563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228886, 36.210842, 28.311399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211628, 36.360287, 28.682034>,  <39.201275, 36.449951, 28.904413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211628, 36.360287, 28.682034>,  <39.228886, 36.210842, 28.311399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211628, 36.360287, 28.682034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948002, 0.277413, -0.155996,
		-0.315327, -0.885133, 0.342212,
		-0.043143, 0.373607, 0.926583,
		39.198685, 36.472370, 28.960009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543255, 35.971809, 28.580729>,  <39.228886, 36.210842, 28.311399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543255, 35.971809, 28.580729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671024, 36.276821, 28.805765>,  <38.747688, 36.459827, 28.940786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671024, 36.276821, 28.805765>,  <38.543255, 35.971809, 28.580729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671024, 36.276821, 28.805765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926822, 0.375076, 0.017854,
		-0.197400, -0.527125, 0.826542,
		0.319428, 0.762533, 0.562591,
		38.766853, 36.505581, 28.974543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154900, 35.951283, 29.287504>,  <38.543255, 35.971809, 28.580729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154900, 35.951283, 29.287504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293015, 36.318382, 29.209011>,  <38.375881, 36.538643, 29.161915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293015, 36.318382, 29.209011>,  <38.154900, 35.951283, 29.287504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293015, 36.318382, 29.209011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929694, 0.363057, 0.062122,
		0.128257, 0.160987, 0.978588,
		0.345283, 0.917754, -0.196233,
		38.396599, 36.593708, 29.150141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700729, 36.309021, 29.738703>,  <38.154900, 35.951283, 29.287504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700729, 36.309021, 29.738703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866497, 36.566761, 29.481619>,  <37.965958, 36.721405, 29.327368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866497, 36.566761, 29.481619>,  <37.700729, 36.309021, 29.738703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866497, 36.566761, 29.481619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896968, 0.408658, -0.168664,
		0.153971, 0.646387, 0.747313,
		0.414417, 0.644347, -0.642709,
		37.990822, 36.760063, 29.288807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503662, 36.941257, 29.903334>,  <37.700729, 36.309021, 29.738703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503662, 36.941257, 29.903334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566391, 36.935787, 29.508320>,  <37.604027, 36.932507, 29.271313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566391, 36.935787, 29.508320>,  <37.503662, 36.941257, 29.903334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566391, 36.935787, 29.508320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928225, 0.339505, -0.152102,
		0.337352, 0.940505, 0.040549,
		0.156819, -0.013673, -0.987533,
		37.613438, 36.931686, 29.212061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416325, 37.606312, 29.511442>,  <37.503662, 36.941257, 29.903334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416325, 37.606312, 29.511442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306725, 37.285973, 29.298435>,  <37.240963, 37.093769, 29.170631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306725, 37.285973, 29.298435>,  <37.416325, 37.606312, 29.511442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306725, 37.285973, 29.298435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956486, 0.284662, 0.064052,
		0.100291, 0.526894, -0.843993,
		-0.274001, -0.800844, -0.532516,
		37.224525, 37.045719, 29.138680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549805, 38.249165, 29.936306>,  <37.416325, 37.606312, 29.511442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549805, 38.249165, 29.936306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892994, 38.347042, 30.116972>,  <38.098907, 38.405769, 30.225372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892994, 38.347042, 30.116972>,  <37.549805, 38.249165, 29.936306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892994, 38.347042, 30.116972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453622, 0.051693, -0.889694,
		-0.241052, 0.968221, -0.066648,
		0.857975, 0.244696, 0.451667,
		38.150387, 38.420452, 30.252472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845638, 38.872723, 29.554440>,  <37.549805, 38.249165, 29.936306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845638, 38.872723, 29.554440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122665, 38.663837, 29.753498>,  <38.288879, 38.538506, 29.872932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122665, 38.663837, 29.753498>,  <37.845638, 38.872723, 29.554440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122665, 38.663837, 29.753498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609980, 0.055692, -0.790457,
		0.385070, 0.850996, 0.357109,
		0.692564, -0.522211, 0.497645,
		38.330433, 38.507175, 29.902792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514984, 39.175758, 29.493591>,  <37.845638, 38.872723, 29.554440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514984, 39.175758, 29.493591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546116, 38.776981, 29.491005>,  <38.564796, 38.537716, 29.489452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546116, 38.776981, 29.491005>,  <38.514984, 39.175758, 29.493591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546116, 38.776981, 29.491005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592566, 0.051477, -0.803875,
		0.801753, 0.058736, 0.594763,
		0.077833, -0.996946, -0.006467,
		38.569466, 38.477898, 29.489065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314884, 39.065498, 29.354572>,  <38.514984, 39.175758, 29.493591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314884, 39.065498, 29.354572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059975, 38.785809, 29.224977>,  <38.907028, 38.617992, 29.147221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059975, 38.785809, 29.224977>,  <39.314884, 39.065498, 29.354572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059975, 38.785809, 29.224977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393495, 0.066236, -0.916938,
		0.662607, -0.711825, 0.232932,
		-0.637270, -0.699227, -0.323987,
		38.868793, 38.576042, 29.127781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966129, 39.205208, 28.922405>,  <39.314884, 39.065498, 29.354572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966129, 39.205208, 28.922405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586800, 39.218643, 28.796196>,  <39.359203, 39.226704, 28.720470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586800, 39.218643, 28.796196>,  <39.966129, 39.205208, 28.922405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586800, 39.218643, 28.796196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252873, 0.520664, 0.815454,
		0.191674, 0.853101, -0.485263,
		-0.948323, 0.033592, -0.315524,
		39.302303, 39.228722, 28.701538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821922, 39.933498, 29.097473>,  <39.966129, 39.205208, 28.922405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821922, 39.933498, 29.097473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760277, 40.078308, 29.465210>,  <39.723289, 40.165192, 29.685852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760277, 40.078308, 29.465210>,  <39.821922, 39.933498, 29.097473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760277, 40.078308, 29.465210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470976, -0.791033, 0.390445,
		0.868580, 0.493161, -0.048595,
		-0.154112, 0.362020, 0.919343,
		39.714043, 40.186913, 29.741013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455795, 40.166149, 29.447140>,  <39.821922, 39.933498, 29.097473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455795, 40.166149, 29.447140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144905, 40.010757, 29.645128>,  <39.958370, 39.917522, 29.763922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.144905, 40.010757, 29.645128>,  <40.455795, 40.166149, 29.447140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144905, 40.010757, 29.645128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574093, -0.759816, 0.305119,
		0.257555, 0.521308, 0.813574,
		-0.777227, -0.388482, 0.494974,
		39.911736, 39.894215, 29.793621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688789, 39.954002, 30.115625>,  <40.455795, 40.166149, 29.447140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688789, 39.954002, 30.115625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384853, 39.731739, 29.980637>,  <40.202492, 39.598381, 29.899643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.384853, 39.731739, 29.980637>,  <40.688789, 39.954002, 30.115625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384853, 39.731739, 29.980637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512185, -0.831360, 0.215657,
		-0.400393, -0.008984, 0.916299,
		-0.759837, -0.555662, -0.337472,
		40.156902, 39.565041, 29.879395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146317, 39.526619, 30.540684>,  <40.688789, 39.954002, 30.115625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146317, 39.526619, 30.540684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300018, 39.377422, 30.202871>,  <40.392239, 39.287907, 30.000183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300018, 39.377422, 30.202871>,  <40.146317, 39.526619, 30.540684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300018, 39.377422, 30.202871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681176, -0.502922, 0.532043,
		-0.623179, -0.779711, 0.060823,
		0.384250, -0.372988, -0.844530,
		40.415295, 39.265526, 29.949512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288425, 38.800339, 30.610130>,  <40.146317, 39.526619, 30.540684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288425, 38.800339, 30.610130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530483, 38.977638, 30.345606>,  <40.675716, 39.084019, 30.186892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530483, 38.977638, 30.345606>,  <40.288425, 38.800339, 30.610130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530483, 38.977638, 30.345606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740161, -0.619162, 0.262298,
		-0.293195, -0.648205, -0.702757,
		0.605143, 0.443249, -0.661311,
		40.712025, 39.110611, 30.147213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668213, 38.280582, 30.258026>,  <40.288425, 38.800339, 30.610130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668213, 38.280582, 30.258026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910835, 38.588291, 30.177711>,  <41.056408, 38.772915, 30.129522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910835, 38.588291, 30.177711>,  <40.668213, 38.280582, 30.258026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910835, 38.588291, 30.177711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762683, -0.491692, 0.420183,
		0.224510, -0.407999, -0.884948,
		0.606556, 0.769270, -0.200784,
		41.092800, 38.819073, 30.117476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.329651, 38.003441, 29.885656>,  <40.668213, 38.280582, 30.258026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.329651, 38.003441, 29.885656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399200, 38.355629, 30.062086>,  <41.440929, 38.566940, 30.167944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.399200, 38.355629, 30.062086>,  <41.329651, 38.003441, 29.885656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399200, 38.355629, 30.062086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808602, -0.383291, 0.446376,
		0.562079, 0.279042, -0.778590,
		0.173869, 0.880468, 0.441074,
		41.451363, 38.619770, 30.194408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032944, 37.978443, 29.932241>,  <41.329651, 38.003441, 29.885656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032944, 37.978443, 29.932241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972878, 38.301506, 30.160324>,  <41.936836, 38.495346, 30.297173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.972878, 38.301506, 30.160324>,  <42.032944, 37.978443, 29.932241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.972878, 38.301506, 30.160324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710945, -0.312569, 0.629967,
		0.687028, 0.499985, -0.527264,
		-0.150167, 0.807661, 0.570205,
		41.927826, 38.543804, 30.331387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653236, 38.368042, 29.958961>,  <42.032944, 37.978443, 29.932241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653236, 38.368042, 29.958961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444901, 38.442295, 30.292252>,  <42.319897, 38.486847, 30.492226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444901, 38.442295, 30.292252>,  <42.653236, 38.368042, 29.958961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444901, 38.442295, 30.292252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683480, -0.494108, 0.537319,
		0.511446, 0.849352, 0.130478,
		-0.520844, 0.185630, 0.833225,
		42.288647, 38.497986, 30.542219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198727, 38.563160, 30.421614>,  <42.653236, 38.368042, 29.958961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198727, 38.563160, 30.421614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874790, 38.468349, 30.636267>,  <42.680428, 38.411465, 30.765059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874790, 38.468349, 30.636267>,  <43.198727, 38.563160, 30.421614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874790, 38.468349, 30.636267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569955, -0.534543, 0.624031,
		0.138945, 0.811224, 0.567987,
		-0.809843, -0.237021, 0.536633,
		42.631836, 38.397243, 30.797256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450779, 38.612106, 31.015509>,  <43.198727, 38.563160, 30.421614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450779, 38.612106, 31.015509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116009, 38.403103, 31.080671>,  <42.915146, 38.277702, 31.119770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116009, 38.403103, 31.080671>,  <43.450779, 38.612106, 31.015509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116009, 38.403103, 31.080671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452042, -0.492107, 0.743968,
		-0.308559, 0.696289, 0.648053,
		-0.836929, -0.522505, 0.162908,
		42.864929, 38.246353, 31.129543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.289104, 38.707745, 31.681276>,  <43.450779, 38.612106, 31.015509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.289104, 38.707745, 31.681276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116730, 38.362675, 31.575378>,  <43.013306, 38.155632, 31.511841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116730, 38.362675, 31.575378>,  <43.289104, 38.707745, 31.681276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116730, 38.362675, 31.575378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533851, -0.480255, 0.695959,
		-0.727530, 0.158578, 0.667497,
		-0.430933, -0.862675, -0.264743,
		42.987450, 38.103870, 31.495955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079788, 38.460320, 32.354218>,  <43.289104, 38.707745, 31.681276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079788, 38.460320, 32.354218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070831, 38.144081, 32.109447>,  <43.065456, 37.954338, 31.962585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070831, 38.144081, 32.109447>,  <43.079788, 38.460320, 32.354218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070831, 38.144081, 32.109447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358779, -0.577666, 0.733199,
		-0.933154, -0.203125, 0.296587,
		-0.022397, -0.790596, -0.611928,
		43.064114, 37.906902, 31.925869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742893, 37.903355, 32.651741>,  <43.079788, 38.460320, 32.354218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742893, 37.903355, 32.651741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939873, 37.707802, 32.363716>,  <43.058060, 37.590469, 32.190903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939873, 37.707802, 32.363716>,  <42.742893, 37.903355, 32.651741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939873, 37.707802, 32.363716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295561, -0.684229, 0.666689,
		-0.818620, -0.541132, -0.192453,
		0.492449, -0.488883, -0.720061,
		43.087608, 37.561138, 32.147697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664993, 37.265385, 32.819393>,  <42.742893, 37.903355, 32.651741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664993, 37.265385, 32.819393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975231, 37.251263, 32.567295>,  <43.161373, 37.242790, 32.416035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975231, 37.251263, 32.567295>,  <42.664993, 37.265385, 32.819393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975231, 37.251263, 32.567295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499343, -0.576470, 0.646791,
		-0.386152, -0.816355, -0.429477,
		0.775592, -0.035303, -0.630246,
		43.207909, 37.240673, 32.378220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814919, 36.561943, 32.804081>,  <42.664993, 37.265385, 32.819393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814919, 36.561943, 32.804081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146885, 36.725540, 32.652317>,  <43.346066, 36.823700, 32.561256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146885, 36.725540, 32.652317>,  <42.814919, 36.561943, 32.804081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146885, 36.725540, 32.652317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528734, -0.793599, 0.301067,
		-0.177966, -0.450470, -0.874874,
		0.829921, 0.408996, -0.379412,
		43.395863, 36.848240, 32.538494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052448, 36.045086, 32.459759>,  <42.814919, 36.561943, 32.804081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052448, 36.045086, 32.459759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361965, 36.296585, 32.490543>,  <43.547676, 36.447483, 32.509014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.361965, 36.296585, 32.490543>,  <43.052448, 36.045086, 32.459759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361965, 36.296585, 32.490543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587494, -0.757783, 0.283928,
		0.236839, -0.174487, -0.955752,
		0.773794, 0.628744, 0.076963,
		43.594105, 36.485207, 32.513634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680077, 35.872250, 31.991695>,  <43.052448, 36.045086, 32.459759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680077, 35.872250, 31.991695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832729, 36.058880, 32.310860>,  <43.924320, 36.170856, 32.502357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832729, 36.058880, 32.310860>,  <43.680077, 35.872250, 31.991695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832729, 36.058880, 32.310860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747826, -0.663211, 0.030129,
		0.543241, 0.585201, -0.602021,
		0.381635, 0.466574, 0.797912,
		43.947220, 36.198853, 32.550232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439144, 36.028343, 31.774052>,  <43.680077, 35.872250, 31.991695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439144, 36.028343, 31.774052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426643, 36.037453, 32.173752>,  <44.419144, 36.042919, 32.413574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426643, 36.037453, 32.173752>,  <44.439144, 36.028343, 31.774052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426643, 36.037453, 32.173752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901854, -0.430366, 0.038011,
		0.430910, 0.902367, -0.007089,
		-0.031249, 0.022773, 0.999252,
		44.417271, 36.044285, 32.473526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065075, 36.299469, 31.952744>,  <44.439144, 36.028343, 31.774052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065075, 36.299469, 31.952744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925037, 36.106503, 32.273918>,  <44.841015, 35.990723, 32.466621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.925037, 36.106503, 32.273918>,  <45.065075, 36.299469, 31.952744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.925037, 36.106503, 32.273918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880770, -0.461331, 0.106853,
		0.318871, 0.744610, 0.586410,
		-0.350093, -0.482420, 0.802936,
		44.820011, 35.961777, 32.514797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.643391, 36.265114, 32.365761>,  <45.065075, 36.299469, 31.952744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.643391, 36.265114, 32.365761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.414452, 35.982010, 32.531410>,  <45.277088, 35.812149, 32.630798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.414452, 35.982010, 32.531410>,  <45.643391, 36.265114, 32.365761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414452, 35.982010, 32.531410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806467, -0.577248, 0.128046,
		0.148426, 0.407263, 0.901169,
		-0.572347, -0.707758, 0.414123,
		45.242748, 35.769684, 32.655647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.036079, 36.111168, 32.998386>,  <45.643391, 36.265114, 32.365761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.036079, 36.111168, 32.998386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800804, 35.794868, 32.930557>,  <45.659637, 35.605091, 32.889862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800804, 35.794868, 32.930557>,  <46.036079, 36.111168, 32.998386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.800804, 35.794868, 32.930557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716495, -0.606767, 0.344193,
		-0.375059, 0.080955, 0.923459,
		-0.588189, -0.790746, -0.169570,
		45.624348, 35.557644, 32.879684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.178703, 35.687550, 33.551449>,  <46.036079, 36.111168, 32.998386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.178703, 35.687550, 33.551449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.032013, 35.448742, 33.266048>,  <45.943996, 35.305458, 33.094810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.032013, 35.448742, 33.266048>,  <46.178703, 35.687550, 33.551449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.032013, 35.448742, 33.266048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717307, -0.669838, 0.191802,
		-0.592436, -0.441457, 0.673896,
		-0.366729, -0.597020, -0.713496,
		45.921993, 35.269634, 33.051998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.846813, 35.059090, 33.836033>,  <46.178703, 35.687550, 33.551449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.846813, 35.059090, 33.836033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971630, 34.968174, 33.467041>,  <46.046520, 34.913624, 33.245647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971630, 34.968174, 33.467041>,  <45.846813, 35.059090, 33.836033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.971630, 34.968174, 33.467041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504433, -0.783164, 0.363595,
		-0.805093, -0.578787, -0.129731,
		0.312045, -0.227288, -0.922480,
		46.065243, 34.899986, 33.190296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.846699, 34.382473, 33.794891>,  <45.846813, 35.059090, 33.836033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.846699, 34.382473, 33.794891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.119038, 34.499115, 33.526142>,  <46.282440, 34.569099, 33.364891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.119038, 34.499115, 33.526142>,  <45.846699, 34.382473, 33.794891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.119038, 34.499115, 33.526142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564295, -0.793642, 0.227382,
		-0.466922, -0.533948, -0.704899,
		0.680848, 0.291602, -0.671874,
		46.323292, 34.586594, 33.324581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.533775, 34.442173, 34.063156>,  <45.846699, 34.382473, 33.794891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.533775, 34.442173, 34.063156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826969, 34.285046, 33.841011>,  <47.002884, 34.190769, 33.707722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.826969, 34.285046, 33.841011>,  <46.533775, 34.442173, 34.063156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.826969, 34.285046, 33.841011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592767, -0.031676, 0.804751,
		-0.333713, -0.919071, 0.209632,
		0.732982, -0.392818, -0.555366,
		47.046864, 34.167202, 33.674400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.367825, 34.600266, 34.869312>,  <46.533775, 34.442173, 34.063156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.367825, 34.600266, 34.869312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.997070, 34.692318, 34.987915>,  <45.774616, 34.747551, 35.059078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.997070, 34.692318, 34.987915>,  <46.367825, 34.600266, 34.869312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.997070, 34.692318, 34.987915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182513, 0.966640, -0.179712,
		-0.327976, -0.112455, -0.937969,
		-0.926888, 0.230133, 0.296510,
		45.719006, 34.761356, 35.076866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.110172, 34.698696, 35.180489>,  <46.367825, 34.600266, 34.869312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.110172, 34.698696, 35.180489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.933807, 34.349380, 35.263409>,  <46.827988, 34.139793, 35.313160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.933807, 34.349380, 35.263409>,  <47.110172, 34.698696, 35.180489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.933807, 34.349380, 35.263409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344441, 0.377906, 0.859388,
		-0.828831, 0.307508, -0.467416,
		-0.440908, -0.873285, 0.207302,
		46.801537, 34.087395, 35.325600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.732929, 34.748161, 35.534855>,  <47.110172, 34.698696, 35.180489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.732929, 34.748161, 35.534855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.556725, 34.945625, 35.234921>,  <47.451000, 35.064102, 35.054962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.556725, 34.945625, 35.234921>,  <47.732929, 34.748161, 35.534855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.556725, 34.945625, 35.234921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281891, 0.716934, 0.637607,
		0.852341, 0.492246, -0.176661,
		-0.440514, 0.493659, -0.749832,
		47.424572, 35.093723, 35.009972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.586399, 33.191463, 41.107700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.232716, 33.149162, 40.925720>,  <34.020504, 33.123779, 40.816532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.232716, 33.149162, 40.925720>,  <34.586399, 33.191463, 41.107700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232716, 33.149162, 40.925720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466527, -0.152400, -0.871279,
		0.022809, -0.982644, 0.184093,
		-0.884213, -0.105757, -0.454954,
		33.967453, 33.117435, 40.789234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661831, 32.596649, 40.597237>,  <34.586399, 33.191463, 41.107700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661831, 32.596649, 40.597237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.332199, 32.783985, 40.469765>,  <34.134422, 32.896385, 40.393280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.332199, 32.783985, 40.469765>,  <34.661831, 32.596649, 40.597237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332199, 32.783985, 40.469765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269892, -0.170004, -0.947764,
		-0.498053, -0.867038, 0.013695,
		-0.824076, 0.468341, -0.318678,
		34.084976, 32.924488, 40.374161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328056, 32.127506, 40.045120>,  <34.661831, 32.596649, 40.597237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328056, 32.127506, 40.045120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.212662, 32.507080, 39.994049>,  <34.143425, 32.734825, 39.963406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.212662, 32.507080, 39.994049>,  <34.328056, 32.127506, 40.045120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212662, 32.507080, 39.994049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374632, -0.010851, -0.927110,
		-0.881149, -0.315296, -0.352370,
		-0.288491, 0.948931, -0.127681,
		34.126114, 32.791759, 39.955746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928772, 32.135357, 39.474171>,  <34.328056, 32.127506, 40.045120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928772, 32.135357, 39.474171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.046551, 32.516548, 39.502831>,  <34.117218, 32.745262, 39.520027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.046551, 32.516548, 39.502831>,  <33.928772, 32.135357, 39.474171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046551, 32.516548, 39.502831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417988, -0.060996, -0.906403,
		-0.859412, 0.296835, -0.416293,
		0.294444, 0.952979, 0.071653,
		34.134884, 32.802441, 39.524326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813515, 32.375828, 38.848717>,  <33.928772, 32.135357, 39.474171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813515, 32.375828, 38.848717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.065731, 32.654705, 38.985149>,  <34.217060, 32.822033, 39.067009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.065731, 32.654705, 38.985149>,  <33.813515, 32.375828, 38.848717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065731, 32.654705, 38.985149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414355, 0.069221, -0.907479,
		-0.656300, 0.713531, -0.245240,
		0.630539, 0.697195, 0.341085,
		34.254894, 32.863865, 39.087475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805820, 32.852272, 38.394405>,  <33.813515, 32.375828, 38.848717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805820, 32.852272, 38.394405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.140766, 32.969471, 38.578999>,  <34.341736, 33.039791, 38.689754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.140766, 32.969471, 38.578999>,  <33.805820, 32.852272, 38.394405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140766, 32.969471, 38.578999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426601, 0.177598, -0.886832,
		-0.341798, 0.939474, 0.023722,
		0.837368, 0.292997, 0.461483,
		34.391975, 33.057369, 38.717445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027027, 33.406467, 37.999161>,  <33.805820, 32.852272, 38.394405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027027, 33.406467, 37.999161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.348270, 33.273224, 38.196774>,  <34.541016, 33.193279, 38.315342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.348270, 33.273224, 38.196774>,  <34.027027, 33.406467, 37.999161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348270, 33.273224, 38.196774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507516, -0.051973, -0.860073,
		0.312172, 0.941456, 0.127318,
		0.803104, -0.333107, 0.494029,
		34.589203, 33.173290, 38.344982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597153, 33.818352, 37.767159>,  <34.027027, 33.406467, 37.999161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597153, 33.818352, 37.767159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774982, 33.498917, 37.929447>,  <34.881680, 33.307255, 38.026821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774982, 33.498917, 37.929447>,  <34.597153, 33.818352, 37.767159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774982, 33.498917, 37.929447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674592, 0.000507, -0.738191,
		0.589307, 0.601873, 0.538948,
		0.444571, -0.798591, 0.405720,
		34.908352, 33.259338, 38.051163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297928, 33.933456, 37.773159>,  <34.597153, 33.818352, 37.767159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297928, 33.933456, 37.773159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286457, 33.533634, 37.776402>,  <35.279575, 33.293739, 37.778347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.286457, 33.533634, 37.776402>,  <35.297928, 33.933456, 37.773159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286457, 33.533634, 37.776402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745600, -0.026790, -0.665855,
		0.665776, -0.013055, 0.746037,
		-0.028680, -0.999556, 0.008102,
		35.277855, 33.233768, 37.778831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046261, 33.657356, 37.687992>,  <35.297928, 33.933456, 37.773159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046261, 33.657356, 37.687992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.813271, 33.348595, 37.586094>,  <35.673477, 33.163338, 37.524956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.813271, 33.348595, 37.586094>,  <36.046261, 33.657356, 37.687992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813271, 33.348595, 37.586094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508843, -0.101868, -0.854811,
		0.633878, -0.627530, 0.452111,
		-0.582475, -0.771899, -0.254743,
		35.638527, 33.117023, 37.509670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515751, 33.061554, 37.549419>,  <36.046261, 33.657356, 37.687992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515751, 33.061554, 37.549419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.161228, 33.010441, 37.371372>,  <35.948513, 32.979774, 37.264542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.161228, 33.010441, 37.371372>,  <36.515751, 33.061554, 37.549419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161228, 33.010441, 37.371372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462256, -0.302124, -0.833691,
		-0.027952, -0.944666, 0.326842,
		-0.886306, -0.127781, -0.445122,
		35.895336, 32.972107, 37.237835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545048, 32.472672, 37.166164>,  <36.515751, 33.061554, 37.549419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545048, 32.472672, 37.166164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250988, 32.673546, 36.984016>,  <36.074551, 32.794071, 36.874729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250988, 32.673546, 36.984016>,  <36.545048, 32.472672, 37.166164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250988, 32.673546, 36.984016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407646, -0.209229, -0.888847,
		-0.541646, -0.839065, -0.050901,
		-0.735150, 0.502189, -0.455369,
		36.030441, 32.824203, 36.847404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611416, 32.155247, 36.515984>,  <36.545048, 32.472672, 37.166164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611416, 32.155247, 36.515984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.370201, 32.467621, 36.450882>,  <36.225471, 32.655045, 36.411819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.370201, 32.467621, 36.450882>,  <36.611416, 32.155247, 36.515984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370201, 32.467621, 36.450882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407490, 0.126165, -0.904453,
		-0.685782, -0.611741, -0.394304,
		-0.603038, 0.780932, -0.162756,
		36.189289, 32.701900, 36.402054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255344, 32.052174, 35.928493>,  <36.611416, 32.155247, 36.515984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255344, 32.052174, 35.928493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264111, 32.450680, 35.961880>,  <36.269371, 32.689785, 35.981911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264111, 32.450680, 35.961880>,  <36.255344, 32.052174, 35.928493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264111, 32.450680, 35.961880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358353, 0.070111, -0.930950,
		-0.933329, 0.050315, -0.355479,
		0.021918, 0.996269, 0.083467,
		36.270687, 32.749561, 35.986919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113834, 32.227180, 35.314892>,  <36.255344, 32.052174, 35.928493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113834, 32.227180, 35.314892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264954, 32.562893, 35.471291>,  <36.355625, 32.764320, 35.565132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264954, 32.562893, 35.471291>,  <36.113834, 32.227180, 35.314892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264954, 32.562893, 35.471291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471434, 0.189086, -0.861392,
		-0.796880, 0.509763, -0.324228,
		0.377799, 0.839278, 0.390999,
		36.378292, 32.814678, 35.588589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118515, 32.856907, 34.741920>,  <36.113834, 32.227180, 35.314892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118515, 32.856907, 34.741920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.328266, 33.020092, 35.040874>,  <36.454117, 33.118004, 35.220249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.328266, 33.020092, 35.040874>,  <36.118515, 32.856907, 34.741920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328266, 33.020092, 35.040874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608909, 0.433883, -0.664060,
		-0.595193, 0.803311, -0.020894,
		0.524382, 0.407967, 0.747387,
		36.485580, 33.142483, 35.265091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221722, 33.585278, 34.531734>,  <36.118515, 32.856907, 34.741920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221722, 33.585278, 34.531734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503658, 33.477814, 34.794342>,  <36.672821, 33.413334, 34.951908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.503658, 33.477814, 34.794342>,  <36.221722, 33.585278, 34.531734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503658, 33.477814, 34.794342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705516, 0.169253, -0.688186,
		0.073770, 0.948249, 0.308841,
		0.704844, -0.268660, 0.656519,
		36.715111, 33.397217, 34.991299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816872, 34.138538, 34.533459>,  <36.221722, 33.585278, 34.531734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816872, 34.138538, 34.533459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.949783, 33.794132, 34.687466>,  <37.029530, 33.587486, 34.779869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.949783, 33.794132, 34.687466>,  <36.816872, 34.138538, 34.533459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949783, 33.794132, 34.687466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831571, 0.074820, -0.550356,
		0.445060, 0.503040, 0.740859,
		0.332282, -0.861019, 0.385014,
		37.049469, 33.535828, 34.802971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397800, 34.231884, 34.968361>,  <36.816872, 34.138538, 34.533459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397800, 34.231884, 34.968361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.414932, 33.867420, 34.804428>,  <37.425213, 33.648743, 34.706070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.414932, 33.867420, 34.804428>,  <37.397800, 34.231884, 34.968361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414932, 33.867420, 34.804428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744073, 0.302839, -0.595520,
		0.666724, -0.279436, 0.690938,
		0.042834, -0.911156, -0.409831,
		37.427784, 33.594074, 34.681480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018456, 34.236889, 34.703270>,  <37.397800, 34.231884, 34.968361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018456, 34.236889, 34.703270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.871178, 33.894451, 34.558201>,  <37.782810, 33.688988, 34.471161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.871178, 33.894451, 34.558201>,  <38.018456, 34.236889, 34.703270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871178, 33.894451, 34.558201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724919, -0.020083, -0.688541,
		0.582175, -0.516424, 0.627996,
		-0.368191, -0.856098, -0.362674,
		37.760719, 33.637623, 34.449398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577980, 33.871212, 34.656754>,  <38.018456, 34.236889, 34.703270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577980, 33.871212, 34.656754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.329979, 33.692223, 34.398956>,  <38.181179, 33.584831, 34.244278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.329979, 33.692223, 34.398956>,  <38.577980, 33.871212, 34.656754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329979, 33.692223, 34.398956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739134, -0.057545, -0.671096,
		0.263209, -0.892445, 0.366419,
		-0.620002, -0.447471, -0.644490,
		38.143978, 33.557980, 34.205608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956936, 33.275372, 34.413712>,  <38.577980, 33.871212, 34.656754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956936, 33.275372, 34.413712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.679619, 33.390095, 34.149261>,  <38.513229, 33.458927, 33.990593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.679619, 33.390095, 34.149261>,  <38.956936, 33.275372, 34.413712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679619, 33.390095, 34.149261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706127, 0.087072, -0.702712,
		-0.143977, -0.954024, -0.262888,
		-0.693294, 0.286806, -0.661125,
		38.471630, 33.476135, 33.950924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729858, 33.461697, 34.234940>,  <38.956936, 33.275372, 34.413712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729858, 33.461697, 34.234940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.021851, 33.630875, 34.449696>,  <40.197044, 33.732380, 34.578548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.021851, 33.630875, 34.449696>,  <39.729858, 33.461697, 34.234940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021851, 33.630875, 34.449696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576320, -0.041364, 0.816177,
		0.367402, -0.905213, 0.213554,
		0.729980, 0.422941, 0.536889,
		40.240845, 33.757755, 34.610764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776936, 33.076855, 34.891788>,  <39.729858, 33.461697, 34.234940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776936, 33.076855, 34.891788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.931641, 33.442822, 34.937988>,  <40.024464, 33.662403, 34.965710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.931641, 33.442822, 34.937988>,  <39.776936, 33.076855, 34.891788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931641, 33.442822, 34.937988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477463, 0.091519, 0.873872,
		0.788950, -0.393130, 0.472236,
		0.386764, 0.914917, 0.115501,
		40.047668, 33.717297, 34.972637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701553, 33.122787, 35.595367>,  <39.776936, 33.076855, 34.891788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701553, 33.122787, 35.595367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.877480, 33.477074, 35.535938>,  <39.983036, 33.689644, 35.500282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.877480, 33.477074, 35.535938>,  <39.701553, 33.122787, 35.595367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877480, 33.477074, 35.535938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195274, 0.255784, 0.946806,
		0.876604, -0.387403, 0.285454,
		0.439811, 0.885716, -0.148572,
		40.009422, 33.742790, 35.491367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229076, 33.353733, 36.095280>,  <39.701553, 33.122787, 35.595367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229076, 33.353733, 36.095280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.052261, 33.679817, 35.945591>,  <39.946171, 33.875465, 35.855778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.052261, 33.679817, 35.945591>,  <40.229076, 33.353733, 36.095280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052261, 33.679817, 35.945591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373241, 0.212199, 0.903140,
		0.815655, 0.538897, 0.210468,
		-0.442039, 0.815206, -0.374219,
		39.919651, 33.924377, 35.833324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404789, 33.984573, 36.562977>,  <40.229076, 33.353733, 36.095280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404789, 33.984573, 36.562977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.068134, 34.090748, 36.374855>,  <39.866142, 34.154453, 36.261982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.068134, 34.090748, 36.374855>,  <40.404789, 33.984573, 36.562977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068134, 34.090748, 36.374855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301772, 0.491054, 0.817190,
		0.447858, 0.829704, -0.333189,
		-0.841640, 0.265438, -0.470304,
		39.815643, 34.170380, 36.233765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265388, 34.635780, 36.867985>,  <40.404789, 33.984573, 36.562977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265388, 34.635780, 36.867985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.922138, 34.525017, 36.695042>,  <39.716187, 34.458557, 36.591274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.922138, 34.525017, 36.695042>,  <40.265388, 34.635780, 36.867985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922138, 34.525017, 36.695042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512292, 0.405698, 0.756945,
		-0.034199, 0.871051, -0.490001,
		-0.858130, -0.276910, -0.432358,
		39.664700, 34.441944, 36.565334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800495, 35.151337, 37.083447>,  <40.265388, 34.635780, 36.867985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800495, 35.151337, 37.083447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.570377, 34.857845, 36.938847>,  <39.432304, 34.681751, 36.852085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.570377, 34.857845, 36.938847>,  <39.800495, 35.151337, 37.083447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570377, 34.857845, 36.938847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683734, 0.188814, 0.704881,
		-0.448932, 0.652686, -0.610296,
		-0.575298, -0.733724, -0.361499,
		39.397789, 34.637730, 36.830399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147930, 35.423153, 37.105801>,  <39.800495, 35.151337, 37.083447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147930, 35.423153, 37.105801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.097271, 35.026501, 37.115807>,  <39.066875, 34.788509, 37.121811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.097271, 35.026501, 37.115807>,  <39.147930, 35.423153, 37.105801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097271, 35.026501, 37.115807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726446, 0.109890, 0.678380,
		-0.675452, 0.067745, -0.734285,
		-0.126648, -0.991632, 0.025012,
		39.059277, 34.729012, 37.123310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443329, 35.192841, 37.200096>,  <39.147930, 35.423153, 37.105801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443329, 35.192841, 37.200096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.633121, 34.859341, 37.313049>,  <38.746998, 34.659241, 37.380821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.633121, 34.859341, 37.313049>,  <38.443329, 35.192841, 37.200096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633121, 34.859341, 37.313049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725273, -0.188486, 0.662157,
		-0.498846, -0.518982, -0.694126,
		0.474480, -0.833745, 0.282379,
		38.775467, 34.609219, 37.397762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852036, 34.813873, 37.404202>,  <38.443329, 35.192841, 37.200096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852036, 34.813873, 37.404202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.178757, 34.651402, 37.568077>,  <38.374790, 34.553917, 37.666401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.178757, 34.651402, 37.568077>,  <37.852036, 34.813873, 37.404202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178757, 34.651402, 37.568077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550134, -0.334561, 0.765128,
		-0.173715, -0.850345, -0.496725,
		0.816808, -0.406180, 0.409685,
		38.423798, 34.529549, 37.690983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498367, 34.333862, 37.906342>,  <37.852036, 34.813873, 37.404202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498367, 34.333862, 37.906342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.888363, 34.322853, 37.994556>,  <38.122360, 34.316250, 38.047485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.888363, 34.322853, 37.994556>,  <37.498367, 34.333862, 37.906342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888363, 34.322853, 37.994556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221875, -0.178251, 0.958644,
		0.012930, -0.983600, -0.179899,
		0.974990, -0.027520, 0.220541,
		38.180859, 34.314598, 38.060719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698093, 33.677334, 38.294144>,  <37.498367, 34.333862, 37.906342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698093, 33.677334, 38.294144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934296, 33.977409, 38.413155>,  <38.076015, 34.157455, 38.484562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.934296, 33.977409, 38.413155>,  <37.698093, 33.677334, 38.294144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934296, 33.977409, 38.413155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196982, -0.223540, 0.954583,
		0.782625, -0.622293, 0.015772,
		0.590504, 0.750188, 0.297529,
		38.111446, 34.202465, 38.502415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029472, 33.367458, 38.832314>,  <37.698093, 33.677334, 38.294144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029472, 33.367458, 38.832314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.095772, 33.758316, 38.885551>,  <38.135551, 33.992832, 38.917492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.095772, 33.758316, 38.885551>,  <38.029472, 33.367458, 38.832314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095772, 33.758316, 38.885551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099467, -0.117706, 0.988055,
		0.981139, -0.177009, 0.077684,
		0.165751, 0.977145, 0.133092,
		38.145496, 34.051460, 38.925480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520283, 33.422134, 39.333454>,  <38.029472, 33.367458, 38.832314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520283, 33.422134, 39.333454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.289967, 33.747387, 39.299313>,  <38.151779, 33.942539, 39.278828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.289967, 33.747387, 39.299313>,  <38.520283, 33.422134, 39.333454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289967, 33.747387, 39.299313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324917, -0.131774, 0.936517,
		0.750265, 0.566968, 0.340074,
		-0.575788, 0.813132, -0.085352,
		38.117229, 33.991325, 39.273708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539845, 33.699265, 40.004082>,  <38.520283, 33.422134, 39.333454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539845, 33.699265, 40.004082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.229061, 33.888199, 39.837601>,  <38.042591, 34.001560, 39.737713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.229061, 33.888199, 39.837601>,  <38.539845, 33.699265, 40.004082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229061, 33.888199, 39.837601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442480, 0.060555, 0.894731,
		0.447821, 0.879334, 0.161953,
		-0.776960, 0.472340, -0.416206,
		37.995972, 34.029900, 39.712738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322094, 34.325497, 40.546082>,  <38.539845, 33.699265, 40.004082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322094, 34.325497, 40.546082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.010426, 34.254940, 40.305489>,  <37.823425, 34.212605, 40.161133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.010426, 34.254940, 40.305489>,  <38.322094, 34.325497, 40.546082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010426, 34.254940, 40.305489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618332, 0.058981, 0.783701,
		-0.102765, 0.982551, -0.155027,
		-0.779170, -0.176395, -0.601481,
		37.776676, 34.202023, 40.125046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777771, 34.813976, 40.704765>,  <38.322094, 34.325497, 40.546082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777771, 34.813976, 40.704765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.573685, 34.513863, 40.536594>,  <37.451233, 34.333794, 40.435692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.573685, 34.513863, 40.536594>,  <37.777771, 34.813976, 40.704765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573685, 34.513863, 40.536594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691984, 0.067837, 0.718719,
		-0.510720, 0.657631, -0.553794,
		-0.510219, -0.750280, -0.420424,
		37.420620, 34.288780, 40.410469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979877, 35.039364, 40.793190>,  <37.777771, 34.813976, 40.704765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979877, 35.039364, 40.793190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.995888, 34.644173, 40.733456>,  <37.005493, 34.407059, 40.697617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.995888, 34.644173, 40.733456>,  <36.979877, 35.039364, 40.793190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995888, 34.644173, 40.733456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767723, -0.126069, 0.628258,
		-0.639530, 0.089499, -0.763538,
		0.040030, -0.987976, -0.149336,
		37.007896, 34.347778, 40.688656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.236359, 35.017464, 40.777508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404984, 34.654778, 40.782578>,  <36.506157, 34.437168, 40.785618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.404984, 34.654778, 40.782578>,  <36.236359, 35.017464, 40.777508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404984, 34.654778, 40.782578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664196, -0.299232, 0.685057,
		-0.617357, -0.297211, -0.728379,
		0.421561, -0.906711, 0.012674,
		36.531452, 34.382763, 40.786381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728886, 34.582577, 40.793003>,  <36.236359, 35.017464, 40.777508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728886, 34.582577, 40.793003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.029133, 34.366642, 40.945393>,  <36.209282, 34.237080, 41.036827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.029133, 34.366642, 40.945393>,  <35.728886, 34.582577, 40.793003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029133, 34.366642, 40.945393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638700, -0.445160, 0.627611,
		-0.169213, -0.714427, -0.678941,
		0.750619, -0.539839, 0.380978,
		36.254318, 34.204689, 41.059685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428413, 33.912483, 40.829285>,  <35.728886, 34.582577, 40.793003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428413, 33.912483, 40.829285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.737999, 33.873035, 41.079487>,  <35.923752, 33.849365, 41.229607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.737999, 33.873035, 41.079487>,  <35.428413, 33.912483, 40.829285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737999, 33.873035, 41.079487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572276, -0.531788, 0.624262,
		0.271068, -0.841116, -0.468023,
		0.773966, -0.098621, 0.625501,
		35.970188, 33.843449, 41.267136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512535, 33.260250, 41.074818>,  <35.428413, 33.912483, 40.829285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512535, 33.260250, 41.074818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.689175, 33.455841, 41.375721>,  <35.795158, 33.573196, 41.556263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.689175, 33.455841, 41.375721>,  <35.512535, 33.260250, 41.074818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689175, 33.455841, 41.375721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486958, -0.573577, 0.658697,
		0.753564, -0.657199, -0.015183,
		0.441604, 0.488977, 0.752255,
		35.821655, 33.602535, 41.601398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826103, 32.841301, 41.606586>,  <35.512535, 33.260250, 41.074818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826103, 32.841301, 41.606586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778728, 33.171452, 41.827393>,  <35.750301, 33.369541, 41.959877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.778728, 33.171452, 41.827393>,  <35.826103, 32.841301, 41.606586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778728, 33.171452, 41.827393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236791, -0.563365, 0.791549,
		0.964314, -0.036961, 0.262167,
		-0.118439, 0.825381, 0.552013,
		35.743198, 33.419067, 41.992996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109657, 32.623199, 42.249355>,  <35.826103, 32.841301, 41.606586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109657, 32.623199, 42.249355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.882954, 32.943531, 42.326775>,  <35.746933, 33.135731, 42.373226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.882954, 32.943531, 42.326775>,  <36.109657, 32.623199, 42.249355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882954, 32.943531, 42.326775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316873, -0.428727, 0.846041,
		0.760510, 0.418172, 0.496746,
		-0.566759, 0.800828, 0.193544,
		35.712925, 33.183781, 42.384838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224102, 32.880718, 42.928371>,  <36.109657, 32.623199, 42.249355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224102, 32.880718, 42.928371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.874321, 33.055264, 42.843586>,  <35.664452, 33.159992, 42.792713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.874321, 33.055264, 42.843586>,  <36.224102, 32.880718, 42.928371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874321, 33.055264, 42.843586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315420, -0.179449, 0.931831,
		0.368579, 0.881695, 0.294556,
		-0.874449, 0.436362, -0.211963,
		35.611988, 33.186172, 42.779999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041935, 33.253830, 43.445702>,  <36.224102, 32.880718, 42.928371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041935, 33.253830, 43.445702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.682232, 33.219589, 43.274117>,  <35.466412, 33.199047, 43.171165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.682232, 33.219589, 43.274117>,  <36.041935, 33.253830, 43.445702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682232, 33.219589, 43.274117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426309, -0.048097, 0.903298,
		-0.097952, 0.995168, 0.006761,
		-0.899259, -0.085597, -0.428960,
		35.412453, 33.193909, 43.145428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632172, 33.594509, 43.809929>,  <36.041935, 33.253830, 43.445702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632172, 33.594509, 43.809929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375992, 33.344604, 43.631271>,  <35.222282, 33.194660, 43.524078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.375992, 33.344604, 43.631271>,  <35.632172, 33.594509, 43.809929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375992, 33.344604, 43.631271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381588, -0.245836, 0.891042,
		-0.666493, 0.741102, -0.080958,
		-0.640451, -0.624766, -0.446644,
		35.183857, 33.157173, 43.497276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042118, 33.750061, 44.189972>,  <35.632172, 33.594509, 43.809929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042118, 33.750061, 44.189972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009254, 33.393101, 44.012493>,  <34.989536, 33.178925, 43.906006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.009254, 33.393101, 44.012493>,  <35.042118, 33.750061, 44.189972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009254, 33.393101, 44.012493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515121, -0.343092, 0.785454,
		-0.853171, 0.293091, -0.431506,
		-0.082163, -0.892404, -0.443693,
		34.984604, 33.125378, 43.879387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572670, 33.459824, 44.577175>,  <35.042118, 33.750061, 44.189972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572670, 33.459824, 44.577175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624882, 33.113220, 44.384457>,  <34.656208, 32.905258, 44.268826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.624882, 33.113220, 44.384457>,  <34.572670, 33.459824, 44.577175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624882, 33.113220, 44.384457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493900, -0.478197, 0.726216,
		-0.859665, 0.143166, -0.490386,
		0.130532, -0.866505, -0.481799,
		34.664040, 32.853268, 44.239918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903133, 33.186256, 44.656017>,  <34.572670, 33.459824, 44.577175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903133, 33.186256, 44.656017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175369, 32.910187, 44.557659>,  <34.338711, 32.744545, 44.498646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.175369, 32.910187, 44.557659>,  <33.903133, 33.186256, 44.656017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175369, 32.910187, 44.557659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303993, -0.571367, 0.762317,
		-0.666625, -0.444074, -0.598673,
		0.680588, -0.690172, -0.245892,
		34.379547, 32.703136, 44.483891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607887, 32.562813, 44.623497>,  <33.903133, 33.186256, 44.656017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607887, 32.562813, 44.623497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.993080, 32.481316, 44.694092>,  <34.224197, 32.432415, 44.736450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.993080, 32.481316, 44.694092>,  <33.607887, 32.562813, 44.623497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993080, 32.481316, 44.694092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252770, -0.455125, 0.853797,
		-0.093635, -0.866804, -0.489779,
		0.962985, -0.203747, 0.176486,
		34.281975, 32.420193, 44.747036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594601, 31.860147, 44.831749>,  <33.607887, 32.562813, 44.623497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594601, 31.860147, 44.831749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.928265, 32.042645, 44.955704>,  <34.128464, 32.152142, 45.030075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.928265, 32.042645, 44.955704>,  <33.594601, 31.860147, 44.831749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928265, 32.042645, 44.955704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183429, -0.300386, 0.936014,
		0.520134, -0.837623, -0.166881,
		0.834155, 0.456242, 0.309886,
		34.178513, 32.179516, 45.048668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821564, 31.511869, 45.371418>,  <33.594601, 31.860147, 44.831749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821564, 31.511869, 45.371418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.093559, 31.800098, 45.425667>,  <34.256756, 31.973036, 45.458218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.093559, 31.800098, 45.425667>,  <33.821564, 31.511869, 45.371418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093559, 31.800098, 45.425667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146892, -0.047344, 0.988019,
		0.718362, -0.691759, 0.073653,
		0.679984, 0.720574, 0.135624,
		34.297554, 32.016270, 45.466354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391579, 31.273151, 45.862232>,  <33.821564, 31.511869, 45.371418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391579, 31.273151, 45.862232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.380573, 31.670988, 45.902287>,  <34.373970, 31.909691, 45.926319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.380573, 31.670988, 45.902287>,  <34.391579, 31.273151, 45.862232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380573, 31.670988, 45.902287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276941, -0.103834, 0.955260,
		0.960493, -0.001444, 0.278301,
		-0.027518, 0.994593, 0.100132,
		34.372318, 31.969366, 45.932327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831375, 31.434673, 46.418533>,  <34.391579, 31.273151, 45.862232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831375, 31.434673, 46.418533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.610195, 31.765621, 46.379128>,  <34.477486, 31.964190, 46.355484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.610195, 31.765621, 46.379128>,  <34.831375, 31.434673, 46.418533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610195, 31.765621, 46.379128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296576, -0.084950, 0.951223,
		0.778646, 0.555195, 0.292351,
		-0.552950, 0.827370, -0.098512,
		34.444309, 32.013832, 46.349575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082996, 31.846800, 46.914040>,  <34.831375, 31.434673, 46.418533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082996, 31.846800, 46.914040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.704514, 31.930561, 46.815369>,  <34.477425, 31.980818, 46.756168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.704514, 31.930561, 46.815369>,  <35.082996, 31.846800, 46.914040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704514, 31.930561, 46.815369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272749, -0.106011, 0.956227,
		0.174087, 0.972065, 0.157423,
		-0.946204, 0.209404, -0.246675,
		34.420654, 31.993382, 46.741367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747540, 32.057095, 47.518456>,  <35.082996, 31.846800, 46.914040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747540, 32.057095, 47.518456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.401405, 32.014591, 47.322536>,  <34.193726, 31.989090, 47.204983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.401405, 32.014591, 47.322536>,  <34.747540, 32.057095, 47.518456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401405, 32.014591, 47.322536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465003, -0.194419, 0.863698,
		-0.187000, 0.975147, 0.118828,
		-0.865334, -0.106256, -0.489802,
		34.141804, 31.982714, 47.175594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264977, 32.416374, 47.938961>,  <34.747540, 32.057095, 47.518456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264977, 32.416374, 47.938961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.038708, 32.198566, 47.691246>,  <33.902946, 32.067883, 47.542618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.038708, 32.198566, 47.691246>,  <34.264977, 32.416374, 47.938961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038708, 32.198566, 47.691246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539841, -0.323175, 0.777258,
		-0.623369, 0.773989, -0.111143,
		-0.565670, -0.544518, -0.619288,
		33.869007, 32.035210, 47.505459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594975, 32.603252, 48.023785>,  <34.264977, 32.416374, 47.938961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594975, 32.603252, 48.023785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.605518, 32.224129, 47.896683>,  <33.611843, 31.996655, 47.820423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.605518, 32.224129, 47.896683>,  <33.594975, 32.603252, 48.023785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605518, 32.224129, 47.896683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423616, -0.298503, 0.855246,
		-0.905458, 0.112063, -0.409374,
		0.026358, -0.947806, -0.317754,
		33.613426, 31.939787, 47.801357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906704, 32.324959, 48.006672>,  <33.594975, 32.603252, 48.023785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906704, 32.324959, 48.006672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.184776, 32.043957, 48.067608>,  <33.351620, 31.875355, 48.104168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.184776, 32.043957, 48.067608>,  <32.906704, 32.324959, 48.006672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184776, 32.043957, 48.067608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483457, -0.300092, 0.822322,
		-0.531974, -0.645310, -0.548251,
		0.695178, -0.702510, 0.152339,
		33.393330, 31.833204, 48.113308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219246, 32.193668, 48.298561>,  <32.906704, 32.324959, 48.006672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219246, 32.193668, 48.298561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153877, 32.493088, 48.555611>,  <32.114658, 32.672741, 48.709839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.153877, 32.493088, 48.555611>,  <32.219246, 32.193668, 48.298561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153877, 32.493088, 48.555611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974846, 0.022453, 0.221746,
		0.151560, 0.662696, -0.733392,
		-0.163417, 0.748552, 0.642623,
		32.104851, 32.717655, 48.748398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455772, 32.374313, 48.298759>,  <32.219246, 32.193668, 48.298561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455772, 32.374313, 48.298759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.759050, 32.427433, 48.043415>,  <31.941017, 32.459305, 47.890209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.759050, 32.427433, 48.043415>,  <31.455772, 32.374313, 48.298759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759050, 32.427433, 48.043415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492750, -0.757871, 0.427585,
		-0.427009, -0.638745, -0.640054,
		0.758196, 0.132803, -0.638359,
		31.986509, 32.467274, 47.851906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718115, 32.445652, 47.886124>,  <31.455772, 32.374313, 48.298759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718115, 32.445652, 47.886124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346783, 32.450489, 47.737503>,  <30.123983, 32.453392, 47.648331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.346783, 32.450489, 47.737503>,  <30.718115, 32.445652, 47.886124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346783, 32.450489, 47.737503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316872, -0.496903, -0.807886,
		-0.194399, -0.867722, 0.457458,
		-0.928333, 0.012097, -0.371554,
		30.068283, 32.454117, 47.626038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521631, 31.815437, 47.705425>,  <30.718115, 32.445652, 47.886124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521631, 31.815437, 47.705425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.313395, 32.074841, 47.483280>,  <30.188452, 32.230484, 47.349995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.313395, 32.074841, 47.483280>,  <30.521631, 31.815437, 47.705425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313395, 32.074841, 47.483280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358653, -0.424181, -0.831528,
		-0.774824, -0.632068, -0.011764,
		-0.520592, 0.648507, -0.555358,
		30.157217, 32.269394, 47.316673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508204, 31.346500, 47.094002>,  <30.521631, 31.815437, 47.705425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508204, 31.346500, 47.094002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.345840, 31.681025, 46.946587>,  <30.248423, 31.881739, 46.858135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.345840, 31.681025, 46.946587>,  <30.508204, 31.346500, 47.094002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345840, 31.681025, 46.946587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383489, -0.210174, -0.899312,
		-0.829562, -0.506370, -0.235405,
		-0.405909, 0.836311, -0.368540,
		30.224068, 31.931917, 46.836025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072659, 31.205454, 46.423740>,  <30.508204, 31.346500, 47.094002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072659, 31.205454, 46.423740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.232618, 31.571098, 46.450527>,  <30.328594, 31.790485, 46.466599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.232618, 31.571098, 46.450527>,  <30.072659, 31.205454, 46.423740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232618, 31.571098, 46.450527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437316, -0.126079, -0.890426,
		-0.805504, 0.385366, -0.450174,
		0.399897, 0.914110, 0.066969,
		30.352587, 31.845331, 46.470619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820690, 31.578957, 45.744106>,  <30.072659, 31.205454, 46.423740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820690, 31.578957, 45.744106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141474, 31.760113, 45.899925>,  <30.333944, 31.868807, 45.993416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.141474, 31.760113, 45.899925>,  <29.820690, 31.578957, 45.744106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141474, 31.760113, 45.899925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477515, -0.094182, -0.873561,
		-0.358941, 0.886577, -0.291793,
		0.801961, 0.452892, 0.389548,
		30.382063, 31.895981, 46.016788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.005568, 32.156918, 45.228218>,  <29.820690, 31.578957, 45.744106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.005568, 32.156918, 45.228218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.331219, 32.110733, 45.455853>,  <30.526609, 32.083023, 45.592434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.331219, 32.110733, 45.455853>,  <30.005568, 32.156918, 45.228218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331219, 32.110733, 45.455853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577584, 0.059910, -0.814130,
		0.059910, 0.991503, 0.115465,
		0.814130, -0.115465, 0.569087,
		30.575459, 32.076092, 45.626579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516809, 32.625572, 44.884850>,  <30.005568, 32.156918, 45.228218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516809, 32.625572, 44.884850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744576, 32.392361, 45.116661>,  <30.881235, 32.252434, 45.255749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744576, 32.392361, 45.116661>,  <30.516809, 32.625572, 44.884850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744576, 32.392361, 45.116661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731772, 0.038300, -0.680472,
		0.374536, 0.811552, 0.448449,
		0.569414, -0.583024, 0.579526,
		30.915400, 32.217453, 45.290520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.166605, 32.927635, 44.721317>,  <30.516809, 32.625572, 44.884850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.166605, 32.927635, 44.721317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.239170, 32.588871, 44.921249>,  <31.282709, 32.385612, 45.041210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.239170, 32.588871, 44.921249>,  <31.166605, 32.927635, 44.721317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239170, 32.588871, 44.921249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798228, -0.170051, -0.577853,
		0.574387, 0.503810, 0.645178,
		0.181415, -0.846911, 0.499831,
		31.293594, 32.334797, 45.071198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838118, 33.008450, 44.982910>,  <31.166605, 32.927635, 44.721317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838118, 33.008450, 44.982910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.740376, 32.627316, 44.910919>,  <31.681730, 32.398636, 44.867725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.740376, 32.627316, 44.910919>,  <31.838118, 33.008450, 44.982910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740376, 32.627316, 44.910919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724879, -0.056214, -0.686579,
		0.644081, -0.298227, 0.704429,
		-0.244355, -0.952838, -0.179973,
		31.667068, 32.341465, 44.856926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479427, 32.656414, 44.967934>,  <31.838118, 33.008450, 44.982910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479427, 32.656414, 44.967934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199383, 32.443359, 44.777718>,  <32.031357, 32.315529, 44.663586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199383, 32.443359, 44.777718>,  <32.479427, 32.656414, 44.967934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199383, 32.443359, 44.777718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584166, -0.044288, -0.810425,
		0.410599, -0.845186, 0.342153,
		-0.700113, -0.532634, -0.475545,
		31.989349, 32.283569, 44.635056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895531, 32.250034, 44.546150>,  <32.479427, 32.656414, 44.967934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895531, 32.250034, 44.546150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.526695, 32.265152, 44.392101>,  <32.305393, 32.274223, 44.299671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.526695, 32.265152, 44.392101>,  <32.895531, 32.250034, 44.546150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526695, 32.265152, 44.392101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385930, 0.162840, -0.908042,
		0.028396, -0.985929, -0.164739,
		-0.922091, 0.037792, -0.385123,
		32.250069, 32.276489, 44.276566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058296, 31.905722, 43.860546>,  <32.895531, 32.250034, 44.546150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058296, 31.905722, 43.860546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.693623, 32.066429, 43.826103>,  <32.474819, 32.162853, 43.805439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.693623, 32.066429, 43.826103>,  <33.058296, 31.905722, 43.860546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693623, 32.066429, 43.826103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198737, 0.247741, -0.948224,
		-0.359635, -0.881593, -0.305708,
		-0.911683, 0.401770, -0.086109,
		32.420116, 32.186958, 43.800270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676685, 31.485027, 43.341122>,  <33.058296, 31.905722, 43.860546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676685, 31.485027, 43.341122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.509129, 31.847218, 43.368393>,  <32.408596, 32.064529, 43.384754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.509129, 31.847218, 43.368393>,  <32.676685, 31.485027, 43.341122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509129, 31.847218, 43.368393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074733, 0.109203, -0.991206,
		-0.904956, -0.410112, -0.113413,
		-0.418891, 0.905474, 0.068175,
		32.383461, 32.118858, 43.388844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370991, 31.615452, 42.750881>,  <32.676685, 31.485027, 43.341122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370991, 31.615452, 42.750881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.383591, 31.995050, 42.876366>,  <32.391151, 32.222809, 42.951656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.383591, 31.995050, 42.876366>,  <32.370991, 31.615452, 42.750881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383591, 31.995050, 42.876366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172265, 0.304018, -0.936962,
		-0.984547, 0.083556, -0.153902,
		0.031500, 0.948995, 0.313714,
		32.393040, 32.279747, 42.970478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299831, 31.987156, 42.230324>,  <32.370991, 31.615452, 42.750881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299831, 31.987156, 42.230324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.440002, 32.283859, 42.459061>,  <32.524105, 32.461880, 42.596302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.440002, 32.283859, 42.459061>,  <32.299831, 31.987156, 42.230324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440002, 32.283859, 42.459061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258721, 0.510133, -0.820261,
		-0.900148, 0.435385, -0.013146,
		0.350424, 0.741758, 0.571838,
		32.545128, 32.506386, 42.630611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011414, 32.650776, 41.967270>,  <32.299831, 31.987156, 42.230324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011414, 32.650776, 41.967270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.345570, 32.711796, 42.178493>,  <32.546062, 32.748409, 42.305229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.345570, 32.711796, 42.178493>,  <32.011414, 32.650776, 41.967270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345570, 32.711796, 42.178493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327197, 0.633934, -0.700764,
		-0.441658, 0.758193, 0.479669,
		0.835392, 0.152552, 0.528060,
		32.596188, 32.757561, 42.336910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167290, 33.401951, 41.879025>,  <32.011414, 32.650776, 41.967270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167290, 33.401951, 41.879025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.518749, 33.242290, 41.983829>,  <32.729626, 33.146496, 42.046711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.518749, 33.242290, 41.983829>,  <32.167290, 33.401951, 41.879025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518749, 33.242290, 41.983829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437417, 0.452940, -0.776860,
		0.191408, 0.797198, 0.572572,
		0.878652, -0.399150, 0.262011,
		32.782345, 33.122547, 42.062431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716755, 33.929935, 41.757351>,  <32.167290, 33.401951, 41.879025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716755, 33.929935, 41.757351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.933456, 33.593723, 41.758423>,  <33.063477, 33.391994, 41.759068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.933456, 33.593723, 41.758423>,  <32.716755, 33.929935, 41.757351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933456, 33.593723, 41.758423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514735, 0.329245, -0.791609,
		0.664489, 0.430240, 0.611022,
		0.541758, -0.840530, 0.002680,
		33.095985, 33.341564, 41.759228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539753, 34.027805, 41.567608>,  <32.716755, 33.929935, 41.757351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539753, 34.027805, 41.567608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459049, 33.646473, 41.477764>,  <33.410629, 33.417671, 41.423859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.459049, 33.646473, 41.477764>,  <33.539753, 34.027805, 41.567608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459049, 33.646473, 41.477764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539530, 0.083213, -0.837844,
		0.817436, -0.290222, 0.497563,
		-0.201757, -0.953335, -0.224605,
		33.398521, 33.360474, 41.410381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203110, 33.702030, 41.412308>,  <33.539753, 34.027805, 41.567608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203110, 33.702030, 41.412308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.910904, 33.488220, 41.242306>,  <33.735580, 33.359936, 41.140305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.910904, 33.488220, 41.242306>,  <34.203110, 33.702030, 41.412308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910904, 33.488220, 41.242306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472958, 0.052915, -0.879494,
		0.492600, -0.843495, 0.214153,
		-0.730517, -0.534524, -0.425004,
		33.691750, 33.327862, 41.114803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.166641, 36.902470, 28.146990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.456757, 36.671982, 27.996300>,  <38.630825, 36.533688, 27.905886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.456757, 36.671982, 27.996300>,  <38.166641, 36.902470, 28.146990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456757, 36.671982, 27.996300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151058, -0.667080, 0.729511,
		-0.671687, -0.472183, -0.570858,
		0.725271, -0.576235, -0.376742,
		38.674343, 36.499115, 27.883282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487015, 37.517906, 28.355919>,  <38.166641, 36.902470, 28.146990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487015, 37.517906, 28.355919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.331520, 37.295246, 28.649593>,  <38.238224, 37.161652, 28.825798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.331520, 37.295246, 28.649593>,  <38.487015, 37.517906, 28.355919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331520, 37.295246, 28.649593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908983, -0.361831, 0.206952,
		0.150452, 0.747811, 0.646639,
		-0.388735, -0.556648, 0.734186,
		38.214901, 37.128250, 28.869848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836113, 37.758831, 29.064037>,  <38.487015, 37.517906, 28.355919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836113, 37.758831, 29.064037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.686069, 37.388988, 29.090574>,  <38.596043, 37.167084, 29.106497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.686069, 37.388988, 29.090574>,  <38.836113, 37.758831, 29.064037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686069, 37.388988, 29.090574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857129, -0.318702, 0.404672,
		-0.353017, 0.208662, 0.912052,
		-0.375113, -0.924602, 0.066343,
		38.573536, 37.111607, 29.110477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102444, 37.524029, 29.719809>,  <38.836113, 37.758831, 29.064037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102444, 37.524029, 29.719809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.000797, 37.214973, 29.487099>,  <38.939808, 37.029541, 29.347473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.000797, 37.214973, 29.487099>,  <39.102444, 37.524029, 29.719809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000797, 37.214973, 29.487099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758865, -0.532209, 0.375338,
		-0.599625, -0.346109, 0.721567,
		-0.254116, -0.772634, -0.581775,
		38.924561, 36.983185, 29.312567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314564, 36.997189, 30.089615>,  <39.102444, 37.524029, 29.719809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314564, 36.997189, 30.089615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.272224, 36.828148, 29.729570>,  <39.246822, 36.726723, 29.513544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.272224, 36.828148, 29.729570>,  <39.314564, 36.997189, 30.089615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272224, 36.828148, 29.729570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777942, -0.599001, 0.189747,
		-0.619356, -0.680151, 0.392164,
		-0.105850, -0.422602, -0.900113,
		39.240471, 36.701366, 29.459536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070637, 36.310833, 30.272207>,  <39.314564, 36.997189, 30.089615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070637, 36.310833, 30.272207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.273975, 36.344646, 29.929411>,  <39.395981, 36.364937, 29.723732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.273975, 36.344646, 29.929411>,  <39.070637, 36.310833, 30.272207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273975, 36.344646, 29.929411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713106, -0.599220, 0.363889,
		-0.482765, -0.796108, -0.364897,
		0.508348, 0.084538, -0.856992,
		39.426479, 36.370007, 29.672314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329639, 35.564743, 30.107430>,  <39.070637, 36.310833, 30.272207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329639, 35.564743, 30.107430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.550694, 35.802528, 29.873775>,  <39.683327, 35.945198, 29.733583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.550694, 35.802528, 29.873775>,  <39.329639, 35.564743, 30.107430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550694, 35.802528, 29.873775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805948, -0.559664, 0.192932,
		-0.212228, -0.577403, -0.788394,
		0.552636, 0.594459, -0.584134,
		39.716484, 35.980865, 29.698536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715302, 35.104889, 29.623816>,  <39.329639, 35.564743, 30.107430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715302, 35.104889, 29.623816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.923809, 35.446247, 29.624252>,  <40.048912, 35.651062, 29.624514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.923809, 35.446247, 29.624252>,  <39.715302, 35.104889, 29.623816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923809, 35.446247, 29.624252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853386, -0.521269, 0.003453,
		0.003516, -0.000869, -0.999993,
		0.521268, 0.853392, 0.001091,
		40.080189, 35.702263, 29.624580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305050, 34.963886, 29.172411>,  <39.715302, 35.104889, 29.623816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305050, 34.963886, 29.172411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.417923, 35.288239, 29.377485>,  <40.485645, 35.482849, 29.500530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.417923, 35.288239, 29.377485>,  <40.305050, 34.963886, 29.172411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417923, 35.288239, 29.377485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949215, -0.313502, -0.026598,
		0.139160, 0.494153, -0.858165,
		0.282180, 0.810882, 0.512684,
		40.502579, 35.531502, 29.531290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889153, 35.215408, 28.884970>,  <40.305050, 34.963886, 29.172411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.889153, 35.215408, 28.884970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.893234, 35.386559, 29.246481>,  <40.895683, 35.489250, 29.463388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.893234, 35.386559, 29.246481>,  <40.889153, 35.215408, 28.884970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893234, 35.386559, 29.246481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959970, -0.257200, 0.110928,
		0.279916, 0.866471, -0.413372,
		0.010204, 0.427875, 0.903780,
		40.896294, 35.514919, 29.517614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412849, 35.815178, 29.021551>,  <40.889153, 35.215408, 28.884970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412849, 35.815178, 29.021551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.348286, 35.624569, 29.367239>,  <41.309547, 35.510204, 29.574652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.348286, 35.624569, 29.367239>,  <41.412849, 35.815178, 29.021551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348286, 35.624569, 29.367239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977336, -0.198726, 0.072957,
		0.136976, 0.856407, 0.497800,
		-0.161407, -0.476524, 0.864218,
		41.299862, 35.481613, 29.626505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072639, 36.018730, 29.535480>,  <41.412849, 35.815178, 29.021551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072639, 36.018730, 29.535480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.893932, 35.754238, 29.776535>,  <41.786709, 35.595543, 29.921167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.893932, 35.754238, 29.776535>,  <42.072639, 36.018730, 29.535480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893932, 35.754238, 29.776535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867436, -0.155276, 0.472699,
		-0.218988, 0.733936, 0.642948,
		-0.446765, -0.661232, 0.602638,
		41.759903, 35.555870, 29.957327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302155, 36.068581, 30.257362>,  <42.072639, 36.018730, 29.535480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302155, 36.068581, 30.257362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.184666, 35.686874, 30.235088>,  <42.114174, 35.457851, 30.221724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.184666, 35.686874, 30.235088>,  <42.302155, 36.068581, 30.257362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184666, 35.686874, 30.235088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802045, -0.277720, 0.528768,
		-0.520052, 0.110646, 0.846938,
		-0.293717, -0.954269, -0.055685,
		42.096550, 35.400593, 30.218382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410427, 35.817749, 30.919437>,  <42.302155, 36.068581, 30.257362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410427, 35.817749, 30.919437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347080, 35.503223, 30.680565>,  <42.309074, 35.314507, 30.537241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.347080, 35.503223, 30.680565>,  <42.410427, 35.817749, 30.919437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.347080, 35.503223, 30.680565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862961, -0.404131, 0.303277,
		-0.479811, -0.467318, 0.742560,
		-0.158365, -0.786316, -0.597184,
		42.299572, 35.267330, 30.501410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227509, 35.191746, 31.386311>,  <42.410427, 35.817749, 30.919437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227509, 35.191746, 31.386311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.387585, 35.031567, 31.056585>,  <42.483631, 34.935459, 30.858751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.387585, 35.031567, 31.056585>,  <42.227509, 35.191746, 31.386311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387585, 35.031567, 31.056585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683410, -0.468873, 0.559561,
		-0.610571, -0.787275, 0.086028,
		0.400193, -0.400444, -0.824312,
		42.507641, 34.911434, 30.809292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279675, 34.476978, 31.499496>,  <42.227509, 35.191746, 31.386311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279675, 34.476978, 31.499496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554501, 34.540676, 31.215923>,  <42.719395, 34.578896, 31.045778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554501, 34.540676, 31.215923>,  <42.279675, 34.476978, 31.499496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554501, 34.540676, 31.215923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675263, -0.500177, 0.542073,
		-0.268269, -0.851154, -0.451186,
		0.687060, 0.159248, -0.708934,
		42.760620, 34.588451, 31.003242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674370, 33.798725, 31.324928>,  <42.279675, 34.476978, 31.499496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674370, 33.798725, 31.324928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.897964, 34.102764, 31.192398>,  <43.032124, 34.285187, 31.112879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.897964, 34.102764, 31.192398>,  <42.674370, 33.798725, 31.324928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897964, 34.102764, 31.192398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806059, -0.404444, 0.432081,
		0.194423, -0.508598, -0.838766,
		0.558989, 0.760101, -0.331327,
		43.065662, 34.330795, 31.093000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265965, 33.504742, 31.149172>,  <42.674370, 33.798725, 31.324928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265965, 33.504742, 31.149172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.382420, 33.884678, 31.194843>,  <43.452293, 34.112640, 31.222246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.382420, 33.884678, 31.194843>,  <43.265965, 33.504742, 31.149172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382420, 33.884678, 31.194843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753234, -0.301166, 0.584754,
		0.589812, -0.084238, -0.803135,
		0.291135, 0.949844, 0.114180,
		43.469761, 34.169632, 31.229097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882324, 33.399513, 31.070068>,  <43.265965, 33.504742, 31.149172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882324, 33.399513, 31.070068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873119, 33.770657, 31.218954>,  <43.867596, 33.993343, 31.308285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873119, 33.770657, 31.218954>,  <43.882324, 33.399513, 31.070068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873119, 33.770657, 31.218954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717812, -0.243810, 0.652152,
		0.695856, 0.282188, -0.660420,
		-0.023013, 0.927861, 0.372215,
		43.866215, 34.049015, 31.330618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.521095, 33.703979, 31.007696>,  <43.882324, 33.399513, 31.070068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.521095, 33.703979, 31.007696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.384659, 33.931461, 31.307091>,  <44.302795, 34.067951, 31.486727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.384659, 33.931461, 31.307091>,  <44.521095, 33.703979, 31.007696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.384659, 33.931461, 31.307091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847617, -0.158206, 0.506474,
		0.406448, 0.807185, -0.428079,
		-0.341094, 0.568702, 0.748487,
		44.282330, 34.102074, 31.531637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000351, 34.113045, 31.094854>,  <44.521095, 33.703979, 31.007696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000351, 34.113045, 31.094854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.800373, 34.136501, 31.440483>,  <44.680386, 34.150574, 31.647860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.800373, 34.136501, 31.440483>,  <45.000351, 34.113045, 31.094854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.800373, 34.136501, 31.440483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857886, -0.103220, 0.503366,
		0.118707, 0.992929, 0.001298,
		-0.499941, 0.058640, 0.864072,
		44.650391, 34.154095, 31.699705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447437, 34.544270, 31.517698>,  <45.000351, 34.113045, 31.094854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447437, 34.544270, 31.517698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.200916, 34.320484, 31.739391>,  <45.053005, 34.186214, 31.872408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.200916, 34.320484, 31.739391>,  <45.447437, 34.544270, 31.517698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.200916, 34.320484, 31.739391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724967, -0.128201, 0.676748,
		-0.307562, 0.818882, 0.484602,
		-0.616303, -0.559462, 0.554232,
		45.016026, 34.152645, 31.905661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.095955, 34.667210, 31.957973>,  <45.447437, 34.544270, 31.517698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.095955, 34.667210, 31.957973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.101990, 34.712475, 32.355358>,  <46.105610, 34.739635, 32.593788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.101990, 34.712475, 32.355358>,  <46.095955, 34.667210, 31.957973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.101990, 34.712475, 32.355358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717947, 0.692768, -0.068010,
		-0.695935, -0.712226, 0.091700,
		0.015088, 0.113166, 0.993462,
		46.106518, 34.746426, 32.653397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.415031, 34.444427, 32.231483>,  <46.095955, 34.667210, 31.957973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.415031, 34.444427, 32.231483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.576740, 34.716045, 32.476582>,  <45.673767, 34.879017, 32.623642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.576740, 34.716045, 32.476582>,  <45.415031, 34.444427, 32.231483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576740, 34.716045, 32.476582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854081, 0.519983, -0.012745,
		-0.327273, -0.518184, 0.790175,
		0.404274, 0.679045, 0.612748,
		45.698021, 34.919758, 32.660404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866322, 34.484478, 32.676708>,  <45.415031, 34.444427, 32.231483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866322, 34.484478, 32.676708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.106663, 34.800282, 32.726746>,  <45.250870, 34.989765, 32.756767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.106663, 34.800282, 32.726746>,  <44.866322, 34.484478, 32.676708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106663, 34.800282, 32.726746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799337, 0.594581, 0.086801,
		-0.005848, -0.152147, 0.988340,
		0.600855, 0.789509, 0.125094,
		45.286919, 35.037136, 32.764275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544861, 34.878975, 33.260571>,  <44.866322, 34.484478, 32.676708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544861, 34.878975, 33.260571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.779285, 35.154747, 33.090290>,  <44.919941, 35.320210, 32.988121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.779285, 35.154747, 33.090290>,  <44.544861, 34.878975, 33.260571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.779285, 35.154747, 33.090290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662835, 0.710101, 0.237502,
		0.466029, 0.142977, 0.873140,
		0.586060, 0.689431, -0.425698,
		44.955105, 35.361576, 32.962582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379906, 35.497658, 33.693783>,  <44.544861, 34.878975, 33.260571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379906, 35.497658, 33.693783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.518250, 35.654739, 33.352921>,  <44.601257, 35.748989, 33.148403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.518250, 35.654739, 33.352921>,  <44.379906, 35.497658, 33.693783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.518250, 35.654739, 33.352921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663989, 0.744128, 0.073430,
		0.662948, 0.540425, 0.518113,
		0.345859, 0.392701, -0.852154,
		44.622005, 35.772549, 33.097275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.432884, 36.186729, 33.746540>,  <44.379906, 35.497658, 33.693783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.432884, 36.186729, 33.746540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.442928, 36.153362, 33.348061>,  <44.448956, 36.133343, 33.108974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.442928, 36.153362, 33.348061>,  <44.432884, 36.186729, 33.746540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442928, 36.153362, 33.348061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548643, 0.831878, -0.083486,
		0.835679, 0.548654, -0.024874,
		0.025113, -0.083414, -0.996199,
		44.450462, 36.128338, 33.049202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423454, 36.869930, 33.510933>,  <44.432884, 36.186729, 33.746540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423454, 36.869930, 33.510933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.296654, 36.660202, 33.194805>,  <44.220573, 36.534363, 33.005131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.296654, 36.660202, 33.194805>,  <44.423454, 36.869930, 33.510933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296654, 36.660202, 33.194805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520768, 0.792662, -0.316998,
		0.792662, 0.311083, -0.524322,
		0.316998, 0.524322, 0.790316,
		44.201553, 36.502907, 32.957710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520832, 37.293419, 32.876873>,  <44.423454, 36.869930, 33.510933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520832, 37.293419, 32.876873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.248730, 37.041752, 32.726460>,  <44.085468, 36.890751, 32.636211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.248730, 37.041752, 32.726460>,  <44.520832, 37.293419, 32.876873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248730, 37.041752, 32.726460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369204, 0.737314, -0.565735,
		0.633197, -0.246010, -0.733853,
		-0.680257, -0.629163, -0.376037,
		44.044651, 36.853004, 32.613647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513504, 37.459061, 32.172989>,  <44.520832, 37.293419, 32.876873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513504, 37.459061, 32.172989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.166115, 37.279137, 32.256340>,  <43.957680, 37.171181, 32.306351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.166115, 37.279137, 32.256340>,  <44.513504, 37.459061, 32.172989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166115, 37.279137, 32.256340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469878, 0.612949, -0.635223,
		0.158007, -0.649587, -0.743687,
		-0.868475, -0.449812, 0.208376,
		43.905571, 37.144192, 32.318851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.212093, 37.391216, 31.554316>,  <44.513504, 37.459061, 32.172989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.212093, 37.391216, 31.554316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.916843, 37.352718, 31.821423>,  <43.739693, 37.329620, 31.981688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.916843, 37.352718, 31.821423>,  <44.212093, 37.391216, 31.554316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916843, 37.352718, 31.821423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595644, 0.557775, -0.578010,
		-0.316835, -0.824394, -0.469032,
		-0.738122, -0.096242, 0.667768,
		43.695408, 37.323845, 32.021751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716877, 37.073856, 31.154400>,  <44.212093, 37.391216, 31.554316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716877, 37.073856, 31.154400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.528862, 37.237530, 31.467228>,  <43.416054, 37.335735, 31.654926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.528862, 37.237530, 31.467228>,  <43.716877, 37.073856, 31.154400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528862, 37.237530, 31.467228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726574, 0.323720, -0.606050,
		-0.501158, -0.853097, 0.145143,
		-0.470034, 0.409183, 0.782073,
		43.387852, 37.360283, 31.701849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057018, 36.872547, 31.083912>,  <43.716877, 37.073856, 31.154400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057018, 36.872547, 31.083912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056389, 37.188366, 31.329388>,  <43.056011, 37.377857, 31.476673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056389, 37.188366, 31.329388>,  <43.057018, 36.872547, 31.083912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056389, 37.188366, 31.329388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796911, 0.369736, -0.477732,
		-0.604094, -0.489806, 0.628618,
		-0.001574, 0.789548, 0.613687,
		43.055916, 37.425232, 31.513494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419899, 37.070129, 30.941952>,  <43.057018, 36.872547, 31.083912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419899, 37.070129, 30.941952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.573986, 37.371853, 31.154604>,  <42.666439, 37.552887, 31.282196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.573986, 37.371853, 31.154604>,  <42.419899, 37.070129, 30.941952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573986, 37.371853, 31.154604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619657, 0.638325, -0.456691,
		-0.683838, -0.153506, 0.713303,
		0.385214, 0.754306, 0.531632,
		42.689548, 37.598145, 31.314095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850056, 37.437691, 31.309805>,  <42.419899, 37.070129, 30.941952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850056, 37.437691, 31.309805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152218, 37.694763, 31.258684>,  <42.333515, 37.849007, 31.228012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.152218, 37.694763, 31.258684>,  <41.850056, 37.437691, 31.309805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152218, 37.694763, 31.258684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616616, 0.631209, -0.470490,
		-0.221702, 0.434215, 0.873101,
		0.755402, 0.642677, -0.127803,
		42.378838, 37.887566, 31.220343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.492531, 38.023109, 31.465326>,  <41.850056, 37.437691, 31.309805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.492531, 38.023109, 31.465326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827621, 38.151367, 31.288507>,  <42.028675, 38.228321, 31.182417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.827621, 38.151367, 31.288507>,  <41.492531, 38.023109, 31.465326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827621, 38.151367, 31.288507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495661, 0.786209, -0.369048,
		0.229208, 0.528266, 0.817557,
		0.837726, 0.320642, -0.442046,
		42.078938, 38.247559, 31.155893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536148, 38.740276, 31.566423>,  <41.492531, 38.023109, 31.465326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536148, 38.740276, 31.566423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785812, 38.681480, 31.259487>,  <41.935612, 38.646202, 31.075325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.785812, 38.681480, 31.259487>,  <41.536148, 38.740276, 31.566423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785812, 38.681480, 31.259487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413133, 0.771509, -0.483834,
		0.663129, 0.619006, 0.420822,
		0.624164, -0.146989, -0.767342,
		41.973061, 38.637383, 31.029285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705612, 39.435863, 31.317070>,  <41.536148, 38.740276, 31.566423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705612, 39.435863, 31.317070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.743721, 39.169109, 31.021452>,  <41.766586, 39.009056, 30.844080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.743721, 39.169109, 31.021452>,  <41.705612, 39.435863, 31.317070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743721, 39.169109, 31.021452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468395, 0.625067, -0.624417,
		0.878367, 0.405658, -0.252810,
		0.095277, -0.666883, -0.739047,
		41.772305, 38.969044, 30.799738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824291, 39.775581, 30.669527>,  <41.705612, 39.435863, 31.317070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824291, 39.775581, 30.669527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.685581, 39.421234, 30.546253>,  <41.602356, 39.208626, 30.472288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.685581, 39.421234, 30.546253>,  <41.824291, 39.775581, 30.669527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685581, 39.421234, 30.546253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657178, 0.463920, -0.594050,
		0.669224, -0.003472, -0.743052,
		-0.346779, -0.885870, -0.308185,
		41.581547, 39.155472, 30.453798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715633, 39.955425, 29.998413>,  <41.824291, 39.775581, 30.669527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715633, 39.955425, 29.998413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.513615, 39.614990, 30.055788>,  <41.392403, 39.410728, 30.090214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.513615, 39.614990, 30.055788>,  <41.715633, 39.955425, 29.998413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513615, 39.614990, 30.055788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721201, 0.324849, -0.611836,
		0.474133, -0.412450, -0.777871,
		-0.505042, -0.851093, 0.143438,
		41.362103, 39.359661, 30.098820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570190, 39.674271, 29.326780>,  <41.715633, 39.955425, 29.998413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570190, 39.674271, 29.326780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.309258, 39.530376, 29.593630>,  <41.152699, 39.444038, 29.753738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.309258, 39.530376, 29.593630>,  <41.570190, 39.674271, 29.326780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309258, 39.530376, 29.593630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750788, 0.186127, -0.633777,
		0.103822, -0.914302, -0.391501,
		-0.652333, -0.359734, 0.667123,
		41.113556, 39.422455, 29.793766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.052006, 35.020638, 38.900024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769897, 34.763481, 38.780506>,  <38.600632, 34.609188, 38.708794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769897, 34.763481, 38.780506>,  <39.052006, 35.020638, 38.900024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769897, 34.763481, 38.780506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401356, -0.014660, -0.915805,
		0.584385, -0.765815, 0.268368,
		-0.705271, -0.642894, -0.298797,
		38.558315, 34.570614, 38.690868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401154, 34.537716, 38.555309>,  <39.052006, 35.020638, 38.900024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401154, 34.537716, 38.555309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037956, 34.458340, 38.407707>,  <38.820038, 34.410713, 38.319145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037956, 34.458340, 38.407707>,  <39.401154, 34.537716, 38.555309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037956, 34.458340, 38.407707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404582, -0.186359, -0.895312,
		0.108903, -0.962232, 0.249500,
		-0.907994, -0.198445, -0.369007,
		38.765556, 34.398808, 38.297005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456997, 33.980568, 38.145382>,  <39.401154, 34.537716, 38.555309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456997, 33.980568, 38.145382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122700, 34.151752, 38.007755>,  <38.922119, 34.254463, 37.925179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122700, 34.151752, 38.007755>,  <39.456997, 33.980568, 38.145382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122700, 34.151752, 38.007755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332286, -0.104690, -0.937351,
		-0.437169, -0.897714, -0.054712,
		-0.835745, 0.427961, -0.344065,
		38.871975, 34.280140, 37.904537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363102, 33.532745, 37.655628>,  <39.456997, 33.980568, 38.145382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363102, 33.532745, 37.655628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162292, 33.865353, 37.560509>,  <39.041805, 34.064919, 37.503437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162292, 33.865353, 37.560509>,  <39.363102, 33.532745, 37.655628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162292, 33.865353, 37.560509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439348, 0.008360, -0.898278,
		-0.744946, -0.555435, -0.369523,
		-0.502025, 0.831518, -0.237801,
		39.011684, 34.114807, 37.489170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074966, 33.416698, 36.979546>,  <39.363102, 33.532745, 37.655628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074966, 33.416698, 36.979546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056335, 33.813442, 37.026939>,  <39.045158, 34.051491, 37.055378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056335, 33.813442, 37.026939>,  <39.074966, 33.416698, 36.979546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056335, 33.813442, 37.026939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409277, 0.127152, -0.903507,
		-0.911221, 0.006413, -0.411868,
		-0.046576, 0.991862, 0.118488,
		39.042362, 34.111000, 37.062485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530754, 33.702698, 36.572708>,  <39.074966, 33.416698, 36.979546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530754, 33.702698, 36.572708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809540, 33.984550, 36.625980>,  <38.976810, 34.153664, 36.657944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809540, 33.984550, 36.625980>,  <38.530754, 33.702698, 36.572708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809540, 33.984550, 36.625980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198440, -0.011047, -0.980051,
		-0.689106, 0.709484, -0.147527,
		0.696961, 0.704634, 0.133178,
		39.018627, 34.195942, 36.665936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540466, 34.084381, 36.026466>,  <38.530754, 33.702698, 36.572708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540466, 34.084381, 36.026466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894253, 34.208088, 36.166225>,  <39.106525, 34.282310, 36.250080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894253, 34.208088, 36.166225>,  <38.540466, 34.084381, 36.026466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894253, 34.208088, 36.166225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389698, -0.077766, -0.917653,
		-0.256630, 0.947790, -0.189303,
		0.884464, 0.309268, 0.349395,
		39.159592, 34.300869, 36.271046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816883, 34.623684, 35.546253>,  <38.540466, 34.084381, 36.026466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816883, 34.623684, 35.546253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125957, 34.475521, 35.752460>,  <39.311401, 34.386623, 35.876186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125957, 34.475521, 35.752460>,  <38.816883, 34.623684, 35.546253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125957, 34.475521, 35.752460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552532, -0.007372, -0.833459,
		0.312520, 0.928840, 0.198966,
		0.772683, -0.370408, 0.515518,
		39.357761, 34.364399, 35.907116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359730, 34.858688, 35.169323>,  <38.816883, 34.623684, 35.546253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359730, 34.858688, 35.169323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548214, 34.574680, 35.378635>,  <39.661304, 34.404274, 35.504223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548214, 34.574680, 35.378635>,  <39.359730, 34.858688, 35.169323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548214, 34.574680, 35.378635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596301, -0.180703, -0.782158,
		0.649910, 0.680596, 0.338238,
		0.471213, -0.710025, 0.523281,
		39.689579, 34.361671, 35.535622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097004, 35.005379, 35.400005>,  <39.359730, 34.858688, 35.169323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097004, 35.005379, 35.400005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040150, 34.611561, 35.359062>,  <40.006039, 34.375271, 35.334496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040150, 34.611561, 35.359062>,  <40.097004, 35.005379, 35.400005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040150, 34.611561, 35.359062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748669, -0.039277, -0.661779,
		0.647528, -0.170695, 0.742678,
		-0.142133, -0.984541, -0.102361,
		39.997509, 34.316200, 35.328354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761055, 34.788628, 35.153332>,  <40.097004, 35.005379, 35.400005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761055, 34.788628, 35.153332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546867, 34.451424, 35.132889>,  <40.418354, 34.249104, 35.120621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546867, 34.451424, 35.132889>,  <40.761055, 34.788628, 35.153332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546867, 34.451424, 35.132889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710519, -0.416945, -0.566851,
		0.456550, -0.339845, 0.822233,
		-0.535468, -0.843008, -0.051110,
		40.386227, 34.198521, 35.117558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204025, 34.277534, 35.325714>,  <40.761055, 34.788628, 35.153332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204025, 34.277534, 35.325714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921593, 34.107677, 35.099041>,  <40.752132, 34.005764, 34.963039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921593, 34.107677, 35.099041>,  <41.204025, 34.277534, 35.325714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921593, 34.107677, 35.099041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707734, -0.396369, -0.584811,
		0.023724, -0.813982, 0.580406,
		-0.706080, -0.424647, -0.566679,
		40.709770, 33.980282, 34.929039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180309, 33.449955, 35.406170>,  <41.204025, 34.277534, 35.325714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180309, 33.449955, 35.406170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088959, 33.580570, 35.039299>,  <41.034149, 33.658939, 34.819176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088959, 33.580570, 35.039299>,  <41.180309, 33.449955, 35.406170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088959, 33.580570, 35.039299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821543, -0.440873, -0.361522,
		-0.522411, -0.836064, -0.167582,
		-0.228373, 0.326539, -0.917179,
		41.020447, 33.678532, 34.764145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087704, 32.880375, 34.944305>,  <41.180309, 33.449955, 35.406170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087704, 32.880375, 34.944305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243534, 33.218056, 34.797031>,  <41.337032, 33.420662, 34.708668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243534, 33.218056, 34.797031>,  <41.087704, 32.880375, 34.944305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243534, 33.218056, 34.797031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856452, -0.479085, -0.192268,
		-0.338704, -0.240430, -0.909655,
		0.389576, 0.844198, -0.368185,
		41.360405, 33.471313, 34.686577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778038, 32.967190, 34.768879>,  <41.087704, 32.880375, 34.944305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778038, 32.967190, 34.768879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128487, 32.774796, 34.755859>,  <42.338757, 32.659359, 34.748047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128487, 32.774796, 34.755859>,  <41.778038, 32.967190, 34.768879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128487, 32.774796, 34.755859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214642, -0.449642, 0.867036,
		-0.431662, -0.752647, -0.497182,
		0.876126, -0.480983, -0.032544,
		42.391323, 32.630497, 34.746094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644676, 32.296902, 34.993259>,  <41.778038, 32.967190, 34.768879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644676, 32.296902, 34.993259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037159, 32.346279, 35.052578>,  <42.272648, 32.375908, 35.088169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037159, 32.346279, 35.052578>,  <41.644676, 32.296902, 34.993259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037159, 32.346279, 35.052578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084275, -0.417179, 0.904909,
		0.173573, -0.900401, -0.398936,
		0.981209, 0.123448, 0.148292,
		42.331520, 32.383312, 35.097065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892159, 31.649647, 35.211990>,  <41.644676, 32.296902, 34.993259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892159, 31.649647, 35.211990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170357, 31.912586, 35.328041>,  <42.337276, 32.070351, 35.397671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170357, 31.912586, 35.328041>,  <41.892159, 31.649647, 35.211990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170357, 31.912586, 35.328041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086416, -0.324330, 0.941989,
		0.713314, -0.680222, -0.168765,
		0.695497, 0.657349, 0.290131,
		42.379005, 32.109791, 35.415081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349155, 31.286699, 35.633419>,  <41.892159, 31.649647, 35.211990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349155, 31.286699, 35.633419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441418, 31.665333, 35.723553>,  <42.496777, 31.892513, 35.777634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441418, 31.665333, 35.723553>,  <42.349155, 31.286699, 35.633419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441418, 31.665333, 35.723553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131044, -0.199251, 0.971147,
		0.964170, -0.253532, 0.078085,
		0.230658, 0.946584, 0.225336,
		42.510616, 31.949308, 35.791153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815594, 31.307592, 36.180046>,  <42.349155, 31.286699, 35.633419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815594, 31.307592, 36.180046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612312, 31.651785, 36.194466>,  <42.490345, 31.858301, 36.203117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612312, 31.651785, 36.194466>,  <42.815594, 31.307592, 36.180046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612312, 31.651785, 36.194466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439619, -0.295182, 0.848294,
		0.740585, 0.415256, 0.528296,
		-0.508203, 0.860483, 0.036053,
		42.459850, 31.909929, 36.205280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765232, 31.520613, 36.921722>,  <42.815594, 31.307592, 36.180046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765232, 31.520613, 36.921722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470654, 31.743315, 36.768005>,  <42.293907, 31.876936, 36.675777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470654, 31.743315, 36.768005>,  <42.765232, 31.520613, 36.921722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470654, 31.743315, 36.768005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506838, -0.077840, 0.858520,
		0.448071, 0.827023, 0.339508,
		-0.736443, 0.556753, -0.384289,
		42.249722, 31.910341, 36.652718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514977, 31.898342, 37.528767>,  <42.765232, 31.520613, 36.921722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514977, 31.898342, 37.528767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234413, 31.955978, 37.249550>,  <42.066074, 31.990561, 37.082020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.234413, 31.955978, 37.249550>,  <42.514977, 31.898342, 37.528767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234413, 31.955978, 37.249550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709729, -0.050974, 0.702628,
		0.065662, 0.988250, 0.138020,
		-0.701408, 0.144093, -0.698043,
		42.023991, 31.999207, 37.040138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.995895, 32.416809, 37.794403>,  <42.514977, 31.898342, 37.528767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.995895, 32.416809, 37.794403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826561, 32.180336, 37.519798>,  <41.724960, 32.038452, 37.355038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826561, 32.180336, 37.519798>,  <41.995895, 32.416809, 37.794403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826561, 32.180336, 37.519798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737989, -0.214519, 0.639807,
		-0.525511, 0.777488, -0.345472,
		-0.423332, -0.591180, -0.686510,
		41.699562, 32.002983, 37.313847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271030, 32.807846, 37.717121>,  <41.995895, 32.416809, 37.794403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271030, 32.807846, 37.717121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231899, 32.442665, 37.558655>,  <41.208420, 32.223557, 37.463577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231899, 32.442665, 37.558655>,  <41.271030, 32.807846, 37.717121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231899, 32.442665, 37.558655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909359, -0.079733, 0.408301,
		-0.404347, 0.400199, -0.822402,
		-0.097829, -0.912953, -0.396164,
		41.202549, 32.168777, 37.439804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576168, 32.783260, 37.488976>,  <41.271030, 32.807846, 37.717121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576168, 32.783260, 37.488976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713406, 32.409969, 37.531620>,  <40.795750, 32.185993, 37.557205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713406, 32.409969, 37.531620>,  <40.576168, 32.783260, 37.488976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713406, 32.409969, 37.531620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852142, -0.261501, 0.453288,
		-0.395143, -0.246370, -0.884965,
		0.343096, -0.933230, 0.106612,
		40.816334, 32.130001, 37.563602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090313, 32.409977, 37.304771>,  <40.576168, 32.783260, 37.488976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090313, 32.409977, 37.304771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313103, 32.161556, 37.525341>,  <40.446777, 32.012505, 37.657681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313103, 32.161556, 37.525341>,  <40.090313, 32.409977, 37.304771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313103, 32.161556, 37.525341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827307, -0.356474, 0.434154,
		-0.073067, -0.698009, -0.712352,
		0.556979, -0.621056, 0.551421,
		40.480198, 31.975239, 37.690765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825241, 31.754473, 37.294788>,  <40.090313, 32.409977, 37.304771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825241, 31.754473, 37.294788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026840, 31.756058, 37.640266>,  <40.147800, 31.757008, 37.847553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026840, 31.756058, 37.640266>,  <39.825241, 31.754473, 37.294788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026840, 31.756058, 37.640266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815581, -0.326953, 0.477419,
		0.284280, -0.945032, -0.161553,
		0.503996, 0.003961, 0.863697,
		40.178040, 31.757246, 37.899376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567806, 31.179474, 37.653587>,  <39.825241, 31.754473, 37.294788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567806, 31.179474, 37.653587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789394, 31.317472, 37.956665>,  <39.922348, 31.400272, 38.138512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789394, 31.317472, 37.956665>,  <39.567806, 31.179474, 37.653587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789394, 31.317472, 37.956665> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564943, -0.512714, 0.646500,
		0.611520, -0.786193, -0.089123,
		0.553969, 0.344998, 0.757690,
		39.955585, 31.420973, 38.183971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698986, 30.606722, 38.031155>,  <39.567806, 31.179474, 37.653587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698986, 30.606722, 38.031155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742985, 30.930252, 38.262222>,  <39.769382, 31.124371, 38.400864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742985, 30.930252, 38.262222>,  <39.698986, 30.606722, 38.031155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742985, 30.930252, 38.262222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454084, -0.476107, 0.753080,
		0.884143, -0.345148, 0.314904,
		0.109996, 0.808824, 0.577672,
		39.775982, 31.172899, 38.435524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050354, 29.924700, 38.185085>,  <39.698986, 30.606722, 38.031155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050354, 29.924700, 38.185085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743462, 29.771482, 37.979317>,  <39.559326, 29.679552, 37.855854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743462, 29.771482, 37.979317>,  <40.050354, 29.924700, 38.185085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743462, 29.771482, 37.979317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439690, 0.269807, -0.856666,
		0.466936, -0.883449, -0.038584,
		-0.767231, -0.383043, -0.514426,
		39.513290, 29.656570, 37.824989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423664, 29.623568, 37.564964>,  <40.050354, 29.924700, 38.185085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423664, 29.623568, 37.564964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033749, 29.644709, 37.478245>,  <39.799801, 29.657394, 37.426212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033749, 29.644709, 37.478245>,  <40.423664, 29.623568, 37.564964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033749, 29.644709, 37.478245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219480, 0.051601, -0.974251,
		-0.040306, -0.997268, -0.061901,
		-0.974784, 0.052855, -0.216801,
		39.741314, 29.660564, 37.413204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247643, 29.058718, 37.160038>,  <40.423664, 29.623568, 37.564964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247643, 29.058718, 37.160038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971291, 29.332729, 37.067581>,  <39.805481, 29.497137, 37.012108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971291, 29.332729, 37.067581>,  <40.247643, 29.058718, 37.160038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971291, 29.332729, 37.067581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043461, -0.279781, -0.959080,
		-0.721667, -0.672650, 0.163521,
		-0.690875, 0.685029, -0.231142,
		39.764027, 29.538239, 36.998238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781563, 28.663071, 36.693218>,  <40.247643, 29.058718, 37.160038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781563, 28.663071, 36.693218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729015, 29.054050, 36.627083>,  <39.697487, 29.288637, 36.587402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729015, 29.054050, 36.627083>,  <39.781563, 28.663071, 36.693218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729015, 29.054050, 36.627083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080446, -0.155719, -0.984520,
		-0.988064, -0.142639, -0.058174,
		-0.131373, 0.977449, -0.165335,
		39.689602, 29.347284, 36.577484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241280, 28.669516, 36.173752>,  <39.781563, 28.663071, 36.693218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241280, 28.669516, 36.173752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393635, 29.039076, 36.159161>,  <39.485046, 29.260813, 36.150406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393635, 29.039076, 36.159161>,  <39.241280, 28.669516, 36.173752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393635, 29.039076, 36.159161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061542, -0.014028, -0.998006,
		-0.922571, 0.382372, 0.051515,
		0.380887, 0.923902, -0.036474,
		39.507900, 29.316246, 36.148220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087612, 28.858395, 35.572659>,  <39.241280, 28.669516, 36.173752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087612, 28.858395, 35.572659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345215, 29.158401, 35.632973>,  <39.499775, 29.338406, 35.669163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345215, 29.158401, 35.632973>,  <39.087612, 28.858395, 35.572659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345215, 29.158401, 35.632973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023552, 0.216444, -0.976011,
		-0.764660, 0.625003, 0.157055,
		0.644004, 0.750015, 0.150786,
		39.538418, 29.383406, 35.678207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780937, 29.443268, 35.154236>,  <39.087612, 28.858395, 35.572659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780937, 29.443268, 35.154236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169056, 29.520187, 35.212952>,  <39.401928, 29.566339, 35.248180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169056, 29.520187, 35.212952>,  <38.780937, 29.443268, 35.154236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169056, 29.520187, 35.212952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107521, 0.200770, -0.973720,
		-0.216718, 0.960579, 0.174130,
		0.970295, 0.192300, 0.146793,
		39.460144, 29.577877, 35.256989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850773, 29.975529, 34.703678>,  <38.780937, 29.443268, 35.154236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850773, 29.975529, 34.703678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212921, 29.839342, 34.805180>,  <39.430210, 29.757629, 34.866081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212921, 29.839342, 34.805180>,  <38.850773, 29.975529, 34.703678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212921, 29.839342, 34.805180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337058, 0.212753, -0.917131,
		0.258265, 0.915871, 0.307376,
		0.905368, -0.340467, 0.253755,
		39.484531, 29.737202, 34.881306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444633, 30.480726, 34.623764>,  <38.850773, 29.975529, 34.703678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444633, 30.480726, 34.623764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630352, 30.128082, 34.589844>,  <39.741783, 29.916496, 34.569492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630352, 30.128082, 34.589844>,  <39.444633, 30.480726, 34.623764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630352, 30.128082, 34.589844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267752, 0.230987, -0.935390,
		0.844240, 0.411588, 0.343299,
		0.464293, -0.881612, -0.084805,
		39.769638, 29.863598, 34.564404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998562, 30.673706, 34.268631>,  <39.444633, 30.480726, 34.623764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998562, 30.673706, 34.268631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918549, 30.284929, 34.219128>,  <39.870541, 30.051662, 34.189426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918549, 30.284929, 34.219128>,  <39.998562, 30.673706, 34.268631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918549, 30.284929, 34.219128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060609, 0.113793, -0.991654,
		0.977912, -0.205866, 0.036146,
		-0.200035, -0.971942, -0.123757,
		39.858540, 29.993347, 34.181999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369518, 30.512016, 33.655788>,  <39.998562, 30.673706, 34.268631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369518, 30.512016, 33.655788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118717, 30.201696, 33.684074>,  <39.968235, 30.015505, 33.701046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118717, 30.201696, 33.684074>,  <40.369518, 30.512016, 33.655788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118717, 30.201696, 33.684074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093067, -0.015525, -0.995539,
		0.773439, -0.630786, -0.062467,
		-0.627002, -0.775802, 0.070713,
		39.930618, 29.968956, 33.705288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600033, 29.992350, 33.161224>,  <40.369518, 30.512016, 33.655788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600033, 29.992350, 33.161224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213608, 29.915949, 33.230782>,  <39.981750, 29.870108, 33.272514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213608, 29.915949, 33.230782>,  <40.600033, 29.992350, 33.161224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213608, 29.915949, 33.230782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161757, -0.077493, -0.983783,
		0.201382, -0.978526, 0.043966,
		-0.966064, -0.191004, 0.173889,
		39.923790, 29.858648, 33.282948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.153439, 28.075628, 40.939613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.815083, 28.160812, 40.744011>,  <37.612068, 28.211924, 40.626652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.815083, 28.160812, 40.744011>,  <38.153439, 28.075628, 40.939613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815083, 28.160812, 40.744011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530234, 0.236614, -0.814166,
		-0.057681, -0.947977, -0.313069,
		-0.845887, 0.212962, -0.489001,
		37.561317, 28.224701, 40.597309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233200, 27.610920, 40.276714>,  <38.153439, 28.075628, 40.939613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233200, 27.610920, 40.276714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.958305, 27.893114, 40.207436>,  <37.793369, 28.062429, 40.165871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.958305, 27.893114, 40.207436>,  <38.233200, 27.610920, 40.276714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958305, 27.893114, 40.207436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501139, 0.287830, -0.816096,
		-0.525892, -0.647647, -0.551354,
		-0.687239, 0.705483, -0.173194,
		37.752132, 28.104759, 40.155476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946571, 27.517363, 39.563896>,  <38.233200, 27.610920, 40.276714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946571, 27.517363, 39.563896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.913651, 27.903511, 39.662918>,  <37.893898, 28.135201, 39.722332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.913651, 27.903511, 39.662918>,  <37.946571, 27.517363, 39.563896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.913651, 27.903511, 39.662918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356790, 0.260472, -0.897137,
		-0.930552, 0.014489, -0.365872,
		-0.082301, 0.965372, 0.247552,
		37.888962, 28.193123, 39.737183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909798, 27.779884, 38.919994>,  <37.946571, 27.517363, 39.563896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909798, 27.779884, 38.919994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944244, 28.099854, 39.157551>,  <37.964912, 28.291836, 39.300083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944244, 28.099854, 39.157551>,  <37.909798, 27.779884, 38.919994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944244, 28.099854, 39.157551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487580, 0.485998, -0.725308,
		-0.868821, 0.352030, -0.348175,
		0.086118, 0.799925, 0.593888,
		37.970081, 28.339830, 39.335716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715637, 28.449518, 38.620323>,  <37.909798, 27.779884, 38.919994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715637, 28.449518, 38.620323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.977890, 28.552557, 38.904236>,  <38.135242, 28.614380, 39.074585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.977890, 28.552557, 38.904236>,  <37.715637, 28.449518, 38.620323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977890, 28.552557, 38.904236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512163, 0.539001, -0.668706,
		-0.554831, 0.801949, 0.221453,
		0.655631, 0.257598, 0.709782,
		38.174580, 28.629837, 39.117172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741009, 29.118149, 38.361256>,  <37.715637, 28.449518, 38.620323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741009, 29.118149, 38.361256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.031246, 29.054510, 38.629047>,  <38.205391, 29.016327, 38.789722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.031246, 29.054510, 38.629047>,  <37.741009, 29.118149, 38.361256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031246, 29.054510, 38.629047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667528, 0.398973, -0.628671,
		-0.167082, 0.903055, 0.395695,
		0.725596, -0.159098, 0.669476,
		38.248924, 29.006781, 38.829891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051136, 29.797497, 38.551727>,  <37.741009, 29.118149, 38.361256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051136, 29.797497, 38.551727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312016, 29.496881, 38.591373>,  <38.468544, 29.316513, 38.615162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312016, 29.496881, 38.591373>,  <38.051136, 29.797497, 38.551727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312016, 29.496881, 38.591373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639986, 0.475827, -0.603330,
		0.406263, 0.456925, 0.791309,
		0.652203, -0.751537, 0.099115,
		38.507675, 29.271420, 38.621109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639130, 30.137787, 38.738369>,  <38.051136, 29.797497, 38.551727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639130, 30.137787, 38.738369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734646, 29.776337, 38.596138>,  <38.791958, 29.559465, 38.510799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.734646, 29.776337, 38.596138>,  <38.639130, 30.137787, 38.738369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734646, 29.776337, 38.596138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601599, 0.425099, -0.676291,
		0.762271, -0.052422, 0.645131,
		0.238792, -0.903628, -0.355578,
		38.806282, 29.505249, 38.489464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404785, 30.119436, 38.719181>,  <38.639130, 30.137787, 38.738369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404785, 30.119436, 38.719181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.255844, 29.867260, 38.446739>,  <39.166481, 29.715954, 38.283276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.255844, 29.867260, 38.446739>,  <39.404785, 30.119436, 38.719181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255844, 29.867260, 38.446739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574780, 0.419554, -0.702569,
		0.728687, -0.653085, 0.206144,
		-0.372348, -0.630440, -0.681104,
		39.144138, 29.678127, 38.242409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065891, 30.298086, 38.910831>,  <39.404785, 30.119436, 38.719181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065891, 30.298086, 38.910831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.907673, 30.665464, 38.911869>,  <39.812744, 30.885891, 38.912491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.907673, 30.665464, 38.911869>,  <40.065891, 30.298086, 38.910831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907673, 30.665464, 38.911869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578800, -0.251464, 0.775730,
		0.713118, 0.305330, 0.631060,
		-0.395542, 0.918444, 0.002598,
		39.789009, 30.940998, 38.912647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104462, 30.489222, 39.502460>,  <40.065891, 30.298086, 38.910831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104462, 30.489222, 39.502460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836521, 30.764027, 39.389809>,  <39.675758, 30.928909, 39.322216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.836521, 30.764027, 39.389809>,  <40.104462, 30.489222, 39.502460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836521, 30.764027, 39.389809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477923, -0.108657, 0.871656,
		0.568236, 0.718477, 0.401122,
		-0.669849, 0.687011, -0.281634,
		39.635567, 30.970131, 39.305317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034557, 30.996054, 40.147255>,  <40.104462, 30.489222, 39.502460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034557, 30.996054, 40.147255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.702595, 30.994553, 39.924099>,  <39.503418, 30.993652, 39.790207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.702595, 30.994553, 39.924099>,  <40.034557, 30.996054, 40.147255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702595, 30.994553, 39.924099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555734, -0.082547, 0.827252,
		-0.049156, 0.996580, 0.066421,
		-0.829906, -0.003752, -0.557891,
		39.453625, 30.993427, 39.756733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640179, 31.457773, 40.544468>,  <40.034557, 30.996054, 40.147255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640179, 31.457773, 40.544468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.372700, 31.279200, 40.306629>,  <39.212212, 31.172056, 40.163925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.372700, 31.279200, 40.306629>,  <39.640179, 31.457773, 40.544468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372700, 31.279200, 40.306629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660083, -0.011672, 0.751102,
		-0.342256, 0.894742, -0.286877,
		-0.668694, -0.446432, -0.594598,
		39.172092, 31.145269, 40.128250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989777, 31.900829, 40.575546>,  <39.640179, 31.457773, 40.544468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989777, 31.900829, 40.575546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.885639, 31.535616, 40.449947>,  <38.823158, 31.316488, 40.374588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.885639, 31.535616, 40.449947>,  <38.989777, 31.900829, 40.575546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885639, 31.535616, 40.449947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735299, -0.023281, 0.677343,
		-0.625746, 0.407223, -0.665291,
		-0.260341, -0.913032, -0.313999,
		38.807537, 31.261707, 40.355747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241062, 31.874323, 40.880322>,  <38.989777, 31.900829, 40.575546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241062, 31.874323, 40.880322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.311646, 31.497568, 40.765976>,  <38.353996, 31.271515, 40.697369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.311646, 31.497568, 40.765976>,  <38.241062, 31.874323, 40.880322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311646, 31.497568, 40.765976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672806, -0.327397, 0.663433,
		-0.718468, 0.075265, -0.691476,
		0.176454, -0.941884, -0.285863,
		38.364582, 31.215002, 40.680218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548328, 31.575621, 40.687195>,  <38.241062, 31.874323, 40.880322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548328, 31.575621, 40.687195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.799782, 31.284399, 40.796566>,  <37.950653, 31.109667, 40.862190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.799782, 31.284399, 40.796566>,  <37.548328, 31.575621, 40.687195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799782, 31.284399, 40.796566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558253, -0.177652, 0.810428,
		-0.541460, -0.662101, -0.518115,
		0.628629, -0.728054, 0.273428,
		37.988369, 31.065983, 40.878593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105091, 31.035999, 40.929451>,  <37.548328, 31.575621, 40.687195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105091, 31.035999, 40.929451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465065, 30.939375, 41.074646>,  <37.681049, 30.881399, 41.161762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465065, 30.939375, 41.074646>,  <37.105091, 31.035999, 40.929451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465065, 30.939375, 41.074646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427749, -0.327757, 0.842381,
		-0.084514, -0.913358, -0.398288,
		0.899937, -0.241561, 0.362988,
		37.735046, 30.866907, 41.183544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112469, 30.336506, 41.117500>,  <37.105091, 31.035999, 40.929451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112469, 30.336506, 41.117500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.403893, 30.487623, 41.346050>,  <37.578747, 30.578293, 41.483181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.403893, 30.487623, 41.346050>,  <37.112469, 30.336506, 41.117500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403893, 30.487623, 41.346050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427886, -0.400362, 0.810323,
		0.534891, -0.834855, -0.130037,
		0.728564, 0.377794, 0.571372,
		37.622463, 30.600962, 41.517464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269814, 29.837902, 41.563801>,  <37.112469, 30.336506, 41.117500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269814, 29.837902, 41.563801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.443653, 30.150875, 41.742207>,  <37.547958, 30.338659, 41.849251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.443653, 30.150875, 41.742207>,  <37.269814, 29.837902, 41.563801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443653, 30.150875, 41.742207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364662, -0.299939, 0.881509,
		0.823497, -0.545745, 0.154970,
		0.434597, 0.782431, 0.446011,
		37.574032, 30.385605, 41.876011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725636, 29.593351, 42.095940>,  <37.269814, 29.837902, 41.563801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725636, 29.593351, 42.095940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629448, 29.971323, 42.184742>,  <37.571735, 30.198105, 42.238022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.629448, 29.971323, 42.184742>,  <37.725636, 29.593351, 42.095940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629448, 29.971323, 42.184742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428480, -0.308561, 0.849232,
		0.870964, 0.109092, 0.479083,
		-0.240471, 0.944928, 0.222002,
		37.557308, 30.254801, 42.251343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793594, 29.589401, 42.794697>,  <37.725636, 29.593351, 42.095940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793594, 29.589401, 42.794697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.597622, 29.931240, 42.725842>,  <37.480038, 30.136343, 42.684528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.597622, 29.931240, 42.725842>,  <37.793594, 29.589401, 42.794697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597622, 29.931240, 42.725842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389373, -0.037854, 0.920302,
		0.779970, 0.517912, 0.351302,
		-0.489934, 0.854596, -0.172136,
		37.450642, 30.187618, 42.674202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939114, 29.919834, 43.389141>,  <37.793594, 29.589401, 42.794697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939114, 29.919834, 43.389141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.604305, 30.080584, 43.240601>,  <37.403419, 30.177032, 43.151478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.604305, 30.080584, 43.240601>,  <37.939114, 29.919834, 43.389141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604305, 30.080584, 43.240601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321347, 0.188274, 0.928056,
		0.442876, 0.896131, -0.028448,
		-0.837017, 0.401872, -0.371352,
		37.353199, 30.201145, 43.129196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763050, 30.335203, 43.959797>,  <37.939114, 29.919834, 43.389141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763050, 30.335203, 43.959797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.426323, 30.325096, 43.744129>,  <37.224285, 30.319033, 43.614731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.426323, 30.325096, 43.744129>,  <37.763050, 30.335203, 43.959797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426323, 30.325096, 43.744129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535154, 0.169270, 0.827622,
		0.070355, 0.985246, -0.156016,
		-0.841820, -0.025265, -0.539167,
		37.173779, 30.317516, 43.582378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.343431, 32.019104, 41.104767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.656483, 31.783148, 41.184292>,  <30.844313, 31.641575, 41.232006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.656483, 31.783148, 41.184292>,  <30.343431, 32.019104, 41.104767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656483, 31.783148, 41.184292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350147, 0.153104, -0.924097,
		0.514677, 0.792836, 0.326371,
		0.782626, -0.589890, 0.198811,
		30.891270, 31.606180, 41.243935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940933, 32.389244, 40.925545>,  <30.343431, 32.019104, 41.104767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940933, 32.389244, 40.925545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028244, 31.999987, 40.896282>,  <31.080631, 31.766434, 40.878723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028244, 31.999987, 40.896282>,  <30.940933, 32.389244, 40.925545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028244, 31.999987, 40.896282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197322, 0.117427, -0.973280,
		0.955729, 0.198011, 0.217654,
		0.218278, -0.973141, -0.073156,
		31.093727, 31.708044, 40.874336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646427, 32.412003, 40.682777>,  <30.940933, 32.389244, 40.925545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646427, 32.412003, 40.682777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.514030, 32.040318, 40.617050>,  <31.434593, 31.817305, 40.577614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.514030, 32.040318, 40.617050>,  <31.646427, 32.412003, 40.682777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514030, 32.040318, 40.617050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537133, -0.042356, -0.842434,
		0.775843, -0.367100, 0.513132,
		-0.330991, -0.929216, -0.164320,
		31.414734, 31.761553, 40.567753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199173, 31.918413, 40.614410>,  <31.646427, 32.412003, 40.682777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199173, 31.918413, 40.614410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.877668, 31.797693, 40.409321>,  <31.684765, 31.725262, 40.286266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.877668, 31.797693, 40.409321>,  <32.199173, 31.918413, 40.614410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877668, 31.797693, 40.409321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547902, -0.039595, -0.835605,
		0.231884, -0.952549, 0.197182,
		-0.803762, -0.301800, -0.512722,
		31.636539, 31.707153, 40.255505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472744, 31.449282, 40.182770>,  <32.199173, 31.918413, 40.614410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472744, 31.449282, 40.182770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.103931, 31.483170, 40.031681>,  <31.882643, 31.503502, 39.941029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.103931, 31.483170, 40.031681>,  <32.472744, 31.449282, 40.182770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103931, 31.483170, 40.031681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346256, -0.255798, -0.902593,
		-0.173087, -0.963011, 0.206520,
		-0.922035, 0.084718, -0.377723,
		31.827322, 31.508585, 39.918365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381115, 30.811413, 39.806541>,  <32.472744, 31.449282, 40.182770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381115, 30.811413, 39.806541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.130814, 31.080643, 39.648853>,  <31.980633, 31.242180, 39.554241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.130814, 31.080643, 39.648853>,  <32.381115, 30.811413, 39.806541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130814, 31.080643, 39.648853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361464, -0.197636, -0.911199,
		-0.691215, -0.712680, -0.119621,
		-0.625752, 0.673073, -0.394217,
		31.943089, 31.282564, 39.530590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320686, 30.600288, 39.202946>,  <32.381115, 30.811413, 39.806541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320686, 30.600288, 39.202946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.161148, 30.963810, 39.153965>,  <32.065426, 31.181923, 39.124577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.161148, 30.963810, 39.153965>,  <32.320686, 30.600288, 39.202946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161148, 30.963810, 39.153965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230832, -0.029738, -0.972539,
		-0.887490, -0.416160, -0.197920,
		-0.398846, 0.908805, -0.122456,
		32.041492, 31.236452, 39.117229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868927, 30.650618, 38.606647>,  <32.320686, 30.600288, 39.202946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868927, 30.650618, 38.606647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.992615, 31.026106, 38.667553>,  <32.066826, 31.251398, 38.704098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.992615, 31.026106, 38.667553>,  <31.868927, 30.650618, 38.606647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992615, 31.026106, 38.667553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117811, 0.121067, -0.985628,
		-0.943665, 0.322715, -0.073156,
		0.309221, 0.938721, 0.152266,
		32.085381, 31.307722, 38.713234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606270, 31.072649, 37.984642>,  <31.868927, 30.650618, 38.606647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606270, 31.072649, 37.984642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.918394, 31.254904, 38.155994>,  <32.105667, 31.364256, 38.258804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.918394, 31.254904, 38.155994>,  <31.606270, 31.072649, 37.984642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918394, 31.254904, 38.155994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407639, 0.148916, -0.900919,
		-0.474285, 0.877621, -0.069535,
		0.780310, 0.455637, 0.428382,
		32.152489, 31.391594, 38.284508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843592, 31.499817, 37.444855>,  <31.606270, 31.072649, 37.984642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843592, 31.499817, 37.444855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.139481, 31.592793, 37.697453>,  <32.317013, 31.648579, 37.849010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.139481, 31.592793, 37.697453>,  <31.843592, 31.499817, 37.444855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139481, 31.592793, 37.697453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577317, 0.262915, -0.773033,
		-0.345713, 0.936401, 0.060292,
		0.739721, 0.232440, 0.631494,
		32.361397, 31.662525, 37.886902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053822, 32.186378, 37.292255>,  <31.843592, 31.499817, 37.444855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053822, 32.186378, 37.292255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.359051, 31.984558, 37.453823>,  <32.542187, 31.863466, 37.550766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.359051, 31.984558, 37.453823>,  <32.053822, 32.186378, 37.292255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359051, 31.984558, 37.453823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579142, 0.256356, -0.773871,
		0.286907, 0.824448, 0.487822,
		0.763072, -0.504547, 0.403922,
		32.587971, 31.833195, 37.575001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542614, 32.436928, 36.888096>,  <32.053822, 32.186378, 37.292255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542614, 32.436928, 36.888096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.766201, 32.161678, 37.073154>,  <32.900352, 31.996529, 37.184189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.766201, 32.161678, 37.073154>,  <32.542614, 32.436928, 36.888096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766201, 32.161678, 37.073154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663561, 0.036639, -0.747225,
		0.497230, 0.724670, 0.477090,
		0.558971, -0.688121, 0.462645,
		32.933891, 31.955242, 37.211948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280678, 32.676617, 36.873127>,  <32.542614, 32.436928, 36.888096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280678, 32.676617, 36.873127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.290565, 32.280376, 36.926949>,  <33.296497, 32.042633, 36.959240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.290565, 32.280376, 36.926949>,  <33.280678, 32.676617, 36.873127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290565, 32.280376, 36.926949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488191, -0.105493, -0.866338,
		0.872387, 0.087099, 0.480994,
		0.024715, -0.990598, 0.134552,
		33.297981, 31.983196, 36.967316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091915, 32.493671, 36.915867>,  <33.280678, 32.676617, 36.873127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091915, 32.493671, 36.915867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.899078, 32.151016, 36.842377>,  <33.783375, 31.945423, 36.798283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.899078, 32.151016, 36.842377>,  <34.091915, 32.493671, 36.915867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.899078, 32.151016, 36.842377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232780, 0.076920, -0.969483,
		0.844630, -0.510148, 0.162326,
		-0.482093, -0.856641, -0.183721,
		33.754452, 31.894024, 36.787262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778130, 32.206203, 37.107899>,  <34.091915, 32.493671, 36.915867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778130, 32.206203, 37.107899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.040924, 32.476902, 37.240795>,  <35.198601, 32.639320, 37.320534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.040924, 32.476902, 37.240795>,  <34.778130, 32.206203, 37.107899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040924, 32.476902, 37.240795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398904, -0.061909, 0.914900,
		0.639723, -0.733610, 0.229283,
		0.656985, 0.676745, 0.332245,
		35.238018, 32.679924, 37.340469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105072, 31.954453, 37.789795>,  <34.778130, 32.206203, 37.107899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105072, 31.954453, 37.789795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.149807, 32.351936, 37.787445>,  <35.176647, 32.590427, 37.786034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.149807, 32.351936, 37.787445>,  <35.105072, 31.954453, 37.789795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149807, 32.351936, 37.787445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213152, 0.029762, 0.976566,
		0.970597, -0.107960, 0.215140,
		0.111833, 0.993710, -0.005875,
		35.183357, 32.650051, 37.785683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492279, 32.147091, 38.381752>,  <35.105072, 31.954453, 37.789795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492279, 32.147091, 38.381752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.291019, 32.479912, 38.288353>,  <35.170265, 32.679604, 38.232311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.291019, 32.479912, 38.288353>,  <35.492279, 32.147091, 38.381752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291019, 32.479912, 38.288353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295224, 0.088449, 0.951325,
		0.812209, 0.547594, 0.201140,
		-0.503150, 0.832056, -0.233502,
		35.140076, 32.729530, 38.218304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633816, 32.634590, 38.898533>,  <35.492279, 32.147091, 38.381752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633816, 32.634590, 38.898533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313442, 32.813671, 38.739502>,  <35.121220, 32.921120, 38.644081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313442, 32.813671, 38.739502>,  <35.633816, 32.634590, 38.898533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313442, 32.813671, 38.739502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329435, 0.224974, 0.916984,
		0.499983, 0.865418, -0.032699,
		-0.800931, 0.447704, -0.397582,
		35.073162, 32.947983, 38.620228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512390, 33.123356, 39.408382>,  <35.633816, 32.634590, 38.898533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512390, 33.123356, 39.408382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.188908, 33.134678, 39.173374>,  <34.994816, 33.141472, 39.032368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.188908, 33.134678, 39.173374>,  <35.512390, 33.123356, 39.408382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188908, 33.134678, 39.173374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524290, 0.418131, 0.741813,
		0.266658, 0.907945, -0.323308,
		-0.808711, 0.028303, -0.587525,
		34.946293, 33.143169, 38.997116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128700, 33.762909, 39.571156>,  <35.512390, 33.123356, 39.408382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128700, 33.762909, 39.571156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.854374, 33.520298, 39.410267>,  <34.689777, 33.374733, 39.313732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.854374, 33.520298, 39.410267>,  <35.128700, 33.762909, 39.571156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854374, 33.520298, 39.410267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605878, 0.169638, 0.777262,
		-0.403197, 0.776756, -0.483821,
		-0.685817, -0.606525, -0.402222,
		34.648628, 33.338341, 39.289600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485264, 34.057667, 39.637657>,  <35.128700, 33.762909, 39.571156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485264, 34.057667, 39.637657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.394920, 33.669098, 39.608456>,  <34.340714, 33.435955, 39.590935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.394920, 33.669098, 39.608456>,  <34.485264, 34.057667, 39.637657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394920, 33.669098, 39.608456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631740, 0.089012, 0.770053,
		-0.741549, 0.220038, -0.633789,
		-0.225855, -0.971422, -0.073000,
		34.327164, 33.377670, 39.586555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757305, 34.005199, 39.682034>,  <34.485264, 34.057667, 39.637657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757305, 34.005199, 39.682034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900604, 33.647839, 39.790466>,  <33.986584, 33.433422, 39.855526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900604, 33.647839, 39.790466>,  <33.757305, 34.005199, 39.682034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900604, 33.647839, 39.790466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594312, 0.005707, 0.804214,
		-0.720035, -0.449220, -0.528915,
		0.358251, -0.893403, 0.271086,
		34.008080, 33.379818, 39.871792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088463, 33.623741, 39.975613>,  <33.757305, 34.005199, 39.682034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088463, 33.623741, 39.975613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.416531, 33.426750, 40.092091>,  <33.613369, 33.308556, 40.161976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.416531, 33.426750, 40.092091>,  <33.088463, 33.623741, 39.975613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416531, 33.426750, 40.092091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492695, -0.349244, 0.797045,
		-0.290829, -0.797179, -0.529079,
		0.820165, -0.492478, 0.291196,
		33.662579, 33.279007, 40.179451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759911, 33.096851, 40.267593>,  <33.088463, 33.623741, 39.975613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759911, 33.096851, 40.267593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.128593, 33.108158, 40.422333>,  <33.349804, 33.114941, 40.515175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.128593, 33.108158, 40.422333>,  <32.759911, 33.096851, 40.267593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128593, 33.108158, 40.422333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370658, -0.229690, 0.899920,
		0.114291, -0.972853, -0.201231,
		0.921710, 0.028265, 0.386847,
		33.405106, 33.116638, 40.538387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930927, 32.381744, 40.594086>,  <32.759911, 33.096851, 40.267593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930927, 32.381744, 40.594086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.142139, 32.675232, 40.765129>,  <33.268867, 32.851322, 40.867756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.142139, 32.675232, 40.765129>,  <32.930927, 32.381744, 40.594086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142139, 32.675232, 40.765129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326068, -0.289762, 0.899843,
		0.784131, -0.614574, 0.086237,
		0.528032, 0.733714, 0.427604,
		33.300549, 32.895348, 40.893410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185467, 32.096180, 41.268440>,  <32.930927, 32.381744, 40.594086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185467, 32.096180, 41.268440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252693, 32.489826, 41.291309>,  <33.293030, 32.726013, 41.305031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252693, 32.489826, 41.291309>,  <33.185467, 32.096180, 41.268440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252693, 32.489826, 41.291309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141890, -0.033240, 0.989324,
		0.975510, -0.174385, 0.134050,
		0.168068, 0.984116, 0.057170,
		33.303112, 32.785061, 41.308460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518818, 32.141308, 41.822815>,  <33.185467, 32.096180, 41.268440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518818, 32.141308, 41.822815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.399586, 32.522842, 41.808178>,  <33.328049, 32.751762, 41.799397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.399586, 32.522842, 41.808178>,  <33.518818, 32.141308, 41.822815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399586, 32.522842, 41.808178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217345, -0.030493, 0.975618,
		0.929468, 0.298764, 0.216402,
		-0.298078, 0.953840, -0.036593,
		33.310162, 32.808994, 41.797199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821339, 32.476757, 42.359074>,  <33.518818, 32.141308, 41.822815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821339, 32.476757, 42.359074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.500168, 32.701145, 42.278461>,  <33.307465, 32.835777, 42.230095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.500168, 32.701145, 42.278461>,  <33.821339, 32.476757, 42.359074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500168, 32.701145, 42.278461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297832, -0.084689, 0.950854,
		0.516331, 0.823494, 0.235074,
		-0.802931, 0.560968, -0.201535,
		33.259289, 32.869434, 42.218002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305969, 33.120998, 42.526352>,  <33.821339, 32.476757, 42.359074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305969, 33.120998, 42.526352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647789, 33.148342, 42.732296>,  <34.852879, 33.164749, 42.855862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647789, 33.148342, 42.732296>,  <34.305969, 33.120998, 42.526352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647789, 33.148342, 42.732296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375465, 0.603618, -0.703329,
		-0.358853, 0.794338, 0.490155,
		0.854547, 0.068356, 0.514856,
		34.904152, 33.168850, 42.886753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507305, 33.741783, 42.426422>,  <34.305969, 33.120998, 42.526352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507305, 33.741783, 42.426422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851170, 33.573082, 42.541740>,  <35.057487, 33.471863, 42.610931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.851170, 33.573082, 42.541740>,  <34.507305, 33.741783, 42.426422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851170, 33.573082, 42.541740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486658, 0.504412, -0.713255,
		0.155396, 0.753457, 0.638870,
		0.859661, -0.421748, 0.288292,
		35.109066, 33.446556, 42.628227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968758, 34.257778, 42.610565>,  <34.507305, 33.741783, 42.426422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968758, 34.257778, 42.610565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.197140, 33.940662, 42.525257>,  <35.334171, 33.750393, 42.474072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.197140, 33.940662, 42.525257>,  <34.968758, 34.257778, 42.610565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197140, 33.940662, 42.525257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578537, 0.572850, -0.580636,
		0.582496, 0.208136, 0.785734,
		0.570959, -0.792794, -0.213268,
		35.368427, 33.702824, 42.461277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675613, 34.529881, 42.659714>,  <34.968758, 34.257778, 42.610565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675613, 34.529881, 42.659714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.694164, 34.185440, 42.457188>,  <35.705296, 33.978775, 42.335670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.694164, 34.185440, 42.457188>,  <35.675613, 34.529881, 42.659714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694164, 34.185440, 42.457188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608559, 0.426300, -0.669272,
		0.792152, -0.277080, 0.543803,
		0.046382, -0.861101, -0.506314,
		35.708080, 33.927109, 42.305294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368488, 34.331444, 42.506359>,  <35.675613, 34.529881, 42.659714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368488, 34.331444, 42.506359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.213249, 34.102142, 42.217705>,  <36.120106, 33.964561, 42.044514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.213249, 34.102142, 42.217705>,  <36.368488, 34.331444, 42.506359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213249, 34.102142, 42.217705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832474, 0.117907, -0.541373,
		0.395430, -0.810850, 0.431460,
		-0.388101, -0.573254, -0.721636,
		36.096821, 33.930164, 42.001213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880322, 33.852825, 42.210171>,  <36.368488, 34.331444, 42.506359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880322, 33.852825, 42.210171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.618958, 33.889629, 41.909615>,  <36.462139, 33.911713, 41.729282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.618958, 33.889629, 41.909615>,  <36.880322, 33.852825, 42.210171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618958, 33.889629, 41.909615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754072, 0.166390, -0.635366,
		0.066564, -0.981758, -0.178102,
		-0.653410, 0.092009, -0.751391,
		36.422935, 33.917233, 41.684196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187271, 33.472305, 41.629330>,  <36.880322, 33.852825, 42.210171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.187271, 33.472305, 41.629330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.904869, 33.695915, 41.455410>,  <36.735428, 33.830082, 41.351059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.904869, 33.695915, 41.455410>,  <37.187271, 33.472305, 41.629330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904869, 33.695915, 41.455410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554838, 0.055058, -0.830135,
		-0.440130, -0.827318, -0.349041,
		-0.706003, 0.559029, -0.434794,
		36.693069, 33.863625, 41.324970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145473, 33.203075, 40.969265>,  <37.187271, 33.472305, 41.629330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145473, 33.203075, 40.969265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.981461, 33.564037, 40.916290>,  <36.883053, 33.780613, 40.884506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.981461, 33.564037, 40.916290>,  <37.145473, 33.203075, 40.969265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981461, 33.564037, 40.916290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402161, 0.048550, -0.914281,
		-0.818622, -0.428145, -0.382819,
		-0.410031, 0.902405, -0.132439,
		36.858452, 33.834759, 40.876560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861980, 33.130653, 40.325699>,  <37.145473, 33.203075, 40.969265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861980, 33.130653, 40.325699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.910774, 33.510921, 40.439785>,  <36.940052, 33.739082, 40.508236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.910774, 33.510921, 40.439785>,  <36.861980, 33.130653, 40.325699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910774, 33.510921, 40.439785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639573, 0.144456, -0.755036,
		-0.758991, 0.274518, -0.590401,
		0.121984, 0.950669, 0.285215,
		36.947369, 33.796124, 40.525349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681553, 33.496113, 39.701157>,  <36.861980, 33.130653, 40.325699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681553, 33.496113, 39.701157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.906597, 33.736729, 39.928001>,  <37.041626, 33.881100, 40.064106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.906597, 33.736729, 39.928001>,  <36.681553, 33.496113, 39.701157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906597, 33.736729, 39.928001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618990, 0.148205, -0.771289,
		-0.548012, 0.784972, -0.288966,
		0.562614, 0.601542, 0.567108,
		37.075382, 33.917191, 40.098133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750324, 34.103073, 39.299671>,  <36.681553, 33.496113, 39.701157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750324, 34.103073, 39.299671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.057877, 34.101707, 39.555424>,  <37.242409, 34.100887, 39.708874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.057877, 34.101707, 39.555424>,  <36.750324, 34.103073, 39.299671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057877, 34.101707, 39.555424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631991, 0.155747, -0.759164,
		-0.096989, 0.987791, 0.121909,
		0.768883, -0.003415, 0.639381,
		37.288540, 34.100681, 39.747238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054985, 34.761162, 39.214657>,  <36.750324, 34.103073, 39.299671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054985, 34.761162, 39.214657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.347343, 34.542645, 39.378292>,  <37.522758, 34.411533, 39.476475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.347343, 34.542645, 39.378292>,  <37.054985, 34.761162, 39.214657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347343, 34.542645, 39.378292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610096, 0.254319, -0.750403,
		0.305899, 0.798052, 0.519172,
		0.730896, -0.546292, 0.409092,
		37.566612, 34.378757, 39.501019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629848, 35.234676, 39.300838>,  <37.054985, 34.761162, 39.214657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629848, 35.234676, 39.300838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776501, 34.862717, 39.289024>,  <37.864491, 34.639542, 39.281937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.776501, 34.862717, 39.289024>,  <37.629848, 35.234676, 39.300838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776501, 34.862717, 39.289024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402899, 0.187309, -0.895873,
		0.838603, 0.316551, 0.443328,
		0.366629, -0.929898, -0.029539,
		37.886490, 34.583748, 39.280163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396618, 35.288803, 39.136471>,  <37.629848, 35.234676, 39.300838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396618, 35.288803, 39.136471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.298721, 34.909157, 39.057201>,  <38.239983, 34.681370, 39.009640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.298721, 34.909157, 39.057201>,  <38.396618, 35.288803, 39.136471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298721, 34.909157, 39.057201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530008, 0.040192, -0.847039,
		0.811907, -0.312341, 0.493204,
		-0.244742, -0.949119, -0.198176,
		38.225300, 34.624420, 38.997749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.605225, 35.076000, 43.186611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.462835, 35.441616, 43.264385>,  <27.377401, 35.660988, 43.311050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.462835, 35.441616, 43.264385>,  <27.605225, 35.076000, 43.186611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462835, 35.441616, 43.264385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061352, 0.230478, -0.971142,
		-0.932480, -0.333771, -0.138123,
		-0.355973, 0.914044, 0.194439,
		27.356043, 35.715828, 43.322716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923874, 35.177387, 42.814392>,  <27.605225, 35.076000, 43.186611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923874, 35.177387, 42.814392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.134148, 35.514027, 42.863972>,  <27.260311, 35.716011, 42.893719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.134148, 35.514027, 42.863972>,  <26.923874, 35.177387, 42.814392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134148, 35.514027, 42.863972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192125, 0.259398, -0.946468,
		-0.828701, 0.473728, 0.298054,
		0.525683, 0.841602, 0.123948,
		27.291853, 35.766506, 42.901157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438004, 35.719830, 42.651417>,  <26.923874, 35.177387, 42.814392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438004, 35.719830, 42.651417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.820368, 35.828079, 42.605820>,  <27.049786, 35.893028, 42.578461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.820368, 35.828079, 42.605820>,  <26.438004, 35.719830, 42.651417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820368, 35.828079, 42.605820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203025, 0.328588, -0.922394,
		-0.212167, 0.904871, 0.369045,
		0.955911, 0.270627, -0.113996,
		27.107141, 35.909267, 42.571621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375610, 36.298420, 42.177330>,  <26.438004, 35.719830, 42.651417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375610, 36.298420, 42.177330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.767021, 36.217243, 42.162918>,  <27.001867, 36.168537, 42.154270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.767021, 36.217243, 42.162918>,  <26.375610, 36.298420, 42.177330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.767021, 36.217243, 42.162918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028334, 0.040714, -0.998769,
		0.204157, 0.978344, 0.034089,
		0.978528, -0.202940, -0.036033,
		27.060579, 36.156361, 42.152107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609169, 36.785713, 41.669888>,  <26.375610, 36.298420, 42.177330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609169, 36.785713, 41.669888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.877480, 36.490173, 41.695679>,  <27.038465, 36.312847, 41.711151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.877480, 36.490173, 41.695679>,  <26.609169, 36.785713, 41.669888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877480, 36.490173, 41.695679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084636, -0.010107, -0.996361,
		0.736816, 0.673790, 0.055754,
		0.670775, -0.738853, 0.064474,
		27.078712, 36.268517, 41.715019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212282, 36.846889, 41.141567>,  <26.609169, 36.785713, 41.669888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212282, 36.846889, 41.141567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.185877, 36.453037, 41.206249>,  <27.170034, 36.216728, 41.245060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.185877, 36.453037, 41.206249>,  <27.212282, 36.846889, 41.141567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185877, 36.453037, 41.206249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268567, -0.173615, -0.947486,
		0.960996, -0.019116, 0.275900,
		-0.066013, -0.984628, 0.161709,
		27.166073, 36.157650, 41.254761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327398, 36.827972, 40.543564>,  <27.212282, 36.846889, 41.141567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327398, 36.827972, 40.543564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.322710, 36.471619, 40.725193>,  <27.319897, 36.257805, 40.834171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.322710, 36.471619, 40.725193>,  <27.327398, 36.827972, 40.543564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.322710, 36.471619, 40.725193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209966, -0.446176, -0.869966,
		0.977638, 0.085146, 0.192285,
		-0.011719, -0.890885, 0.454077,
		27.319195, 36.204353, 40.861416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081127, 36.580288, 40.462208>,  <27.327398, 36.827972, 40.543564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081127, 36.580288, 40.462208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.807407, 36.293114, 40.513279>,  <27.643175, 36.120808, 40.543922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.807407, 36.293114, 40.513279>,  <28.081127, 36.580288, 40.462208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807407, 36.293114, 40.513279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245426, -0.391639, -0.886783,
		0.686657, -0.575490, 0.444199,
		-0.684301, -0.717934, 0.127682,
		27.602118, 36.077732, 40.551582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401943, 35.841396, 40.364197>,  <28.081127, 36.580288, 40.462208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401943, 35.841396, 40.364197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011642, 35.862652, 40.279259>,  <27.777462, 35.875404, 40.228298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.011642, 35.862652, 40.279259>,  <28.401943, 35.841396, 40.364197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011642, 35.862652, 40.279259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180264, -0.355223, -0.917236,
		-0.124164, -0.933271, 0.337030,
		-0.975750, 0.053134, -0.212341,
		27.718918, 35.878593, 40.215557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333801, 35.246979, 39.989521>,  <28.401943, 35.841396, 40.364197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333801, 35.246979, 39.989521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.014500, 35.465481, 39.888020>,  <27.822918, 35.596584, 39.827118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.014500, 35.465481, 39.888020>,  <28.333801, 35.246979, 39.989521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014500, 35.465481, 39.888020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032718, -0.459996, -0.887318,
		-0.601430, -0.700004, 0.385067,
		-0.798255, 0.546258, -0.253753,
		27.775023, 35.629356, 39.811893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.890692, 34.735909, 39.789402>,  <28.333801, 35.246979, 39.989521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.890692, 34.735909, 39.789402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755898, 35.082458, 39.641979>,  <27.675020, 35.290390, 39.553524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.755898, 35.082458, 39.641979>,  <27.890692, 34.735909, 39.789402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755898, 35.082458, 39.641979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032903, -0.402052, -0.915025,
		-0.940934, -0.296225, 0.163992,
		-0.336987, 0.866375, -0.368558,
		27.654802, 35.342369, 39.531410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327570, 34.562286, 39.368160>,  <27.890692, 34.735909, 39.789402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327570, 34.562286, 39.368160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.424501, 34.928001, 39.238323>,  <27.482660, 35.147430, 39.160423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.424501, 34.928001, 39.238323>,  <27.327570, 34.562286, 39.368160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424501, 34.928001, 39.238323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059420, -0.319946, -0.945570,
		-0.968374, 0.248424, -0.023204,
		0.242326, 0.914287, -0.324589,
		27.497200, 35.202286, 39.140945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.850407, 34.676495, 38.766918>,  <27.327570, 34.562286, 39.368160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.850407, 34.676495, 38.766918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.127432, 34.958527, 38.705956>,  <27.293646, 35.127747, 38.669380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.127432, 34.958527, 38.705956>,  <26.850407, 34.676495, 38.766918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127432, 34.958527, 38.705956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168949, -0.046855, -0.984511,
		-0.701295, 0.707583, 0.086672,
		0.692561, 0.705076, -0.152405,
		27.335201, 35.170048, 38.660233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535213, 35.082420, 38.296906>,  <26.850407, 34.676495, 38.766918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535213, 35.082420, 38.296906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.926161, 35.166080, 38.284199>,  <27.160728, 35.216278, 38.276577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.926161, 35.166080, 38.284199>,  <26.535213, 35.082420, 38.296906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926161, 35.166080, 38.284199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004577, -0.171021, -0.985257,
		-0.211500, 0.962813, -0.168107,
		0.977367, 0.209151, -0.031764,
		27.219372, 35.228825, 38.274670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520655, 35.342136, 37.638203>,  <26.535213, 35.082420, 38.296906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520655, 35.342136, 37.638203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.908175, 35.295727, 37.725807>,  <27.140686, 35.267879, 37.778370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.908175, 35.295727, 37.725807>,  <26.520655, 35.342136, 37.638203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.908175, 35.295727, 37.725807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200299, -0.153888, -0.967573,
		0.145967, 0.981252, -0.125847,
		0.968800, -0.116027, 0.219007,
		27.198814, 35.260918, 37.791508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906471, 35.836941, 37.339569>,  <26.520655, 35.342136, 37.638203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906471, 35.836941, 37.339569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.145998, 35.520119, 37.387001>,  <27.289713, 35.330025, 37.415462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.145998, 35.520119, 37.387001>,  <26.906471, 35.836941, 37.339569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145998, 35.520119, 37.387001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143651, -0.039441, -0.988842,
		0.787899, 0.609169, 0.090162,
		0.598816, -0.792059, 0.118584,
		27.325644, 35.282501, 37.422577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443300, 36.014091, 36.888271>,  <26.906471, 35.836941, 37.339569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443300, 36.014091, 36.888271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.409700, 35.620827, 36.953178>,  <27.389542, 35.384869, 36.992123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.409700, 35.620827, 36.953178>,  <27.443300, 36.014091, 36.888271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409700, 35.620827, 36.953178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114826, -0.152208, -0.981656,
		0.989828, -0.101090, -0.100108,
		-0.083999, -0.983165, 0.162268,
		27.384501, 35.325878, 37.001858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721603, 35.725174, 36.264900>,  <27.443300, 36.014091, 36.888271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721603, 35.725174, 36.264900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543156, 35.408134, 36.431164>,  <27.436087, 35.217911, 36.530922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543156, 35.408134, 36.431164>,  <27.721603, 35.725174, 36.264900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543156, 35.408134, 36.431164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345363, -0.275998, -0.896967,
		0.825652, -0.543706, -0.150606,
		-0.446119, -0.792596, 0.415655,
		27.409321, 35.170357, 36.555859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879648, 35.137062, 35.843678>,  <27.721603, 35.725174, 36.264900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879648, 35.137062, 35.843678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.560163, 35.027485, 36.057972>,  <27.368473, 34.961739, 36.186550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.560163, 35.027485, 36.057972>,  <27.879648, 35.137062, 35.843678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560163, 35.027485, 36.057972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417836, -0.388166, -0.821426,
		0.432977, -0.879934, 0.195571,
		-0.798714, -0.273942, 0.535735,
		27.320549, 34.945301, 36.218693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743238, 34.402931, 35.701324>,  <27.879648, 35.137062, 35.843678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743238, 34.402931, 35.701324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417252, 34.601326, 35.821209>,  <27.221659, 34.720364, 35.893139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417252, 34.601326, 35.821209>,  <27.743238, 34.402931, 35.701324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417252, 34.601326, 35.821209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510047, -0.368386, -0.777267,
		-0.275098, -0.786317, 0.553196,
		-0.814968, 0.495981, 0.299717,
		27.172762, 34.750122, 35.911125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032879, 33.752708, 35.329109>,  <27.743238, 34.402931, 35.701324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032879, 33.752708, 35.329109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.373678, 33.547810, 35.285839>,  <28.578157, 33.424870, 35.259876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.373678, 33.547810, 35.285839>,  <28.032879, 33.752708, 35.329109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373678, 33.547810, 35.285839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320537, -0.673744, 0.665826,
		-0.413953, -0.532607, -0.738223,
		0.851997, -0.512248, -0.108178,
		28.629278, 33.394135, 35.253384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818134, 32.999092, 35.099373>,  <28.032879, 33.752708, 35.329109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818134, 32.999092, 35.099373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188616, 33.004925, 35.250069>,  <28.410904, 33.008427, 35.340488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188616, 33.004925, 35.250069>,  <27.818134, 32.999092, 35.099373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188616, 33.004925, 35.250069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213533, -0.803244, 0.556061,
		0.310726, -0.595472, -0.740852,
		0.926203, 0.014586, 0.376742,
		28.466476, 33.009300, 35.363091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967667, 32.373466, 35.147957>,  <27.818134, 32.999092, 35.099373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967667, 32.373466, 35.147957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.252867, 32.516697, 35.389091>,  <28.423986, 32.602634, 35.533772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.252867, 32.516697, 35.389091>,  <27.967667, 32.373466, 35.147957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252867, 32.516697, 35.389091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202097, -0.718324, 0.665708,
		0.671407, -0.596481, -0.439799,
		0.713000, 0.358079, 0.602835,
		28.466766, 32.624123, 35.569942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286013, 31.808548, 35.398243>,  <27.967667, 32.373466, 35.147957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286013, 31.808548, 35.398243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.395334, 32.084846, 35.666027>,  <28.460926, 32.250626, 35.826698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.395334, 32.084846, 35.666027>,  <28.286013, 31.808548, 35.398243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395334, 32.084846, 35.666027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034801, -0.688398, 0.724498,
		0.961298, -0.221305, -0.164102,
		0.273302, 0.690748, 0.669457,
		28.477325, 32.292072, 35.866863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561144, 31.372463, 35.908875>,  <28.286013, 31.808548, 35.398243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561144, 31.372463, 35.908875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536835, 31.723984, 36.098194>,  <28.522249, 31.934896, 36.211788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536835, 31.723984, 36.098194>,  <28.561144, 31.372463, 35.908875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536835, 31.723984, 36.098194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309608, -0.467387, 0.828066,
		0.948920, -0.096213, 0.300489,
		-0.060774, 0.878802, 0.473301,
		28.518602, 31.987625, 36.240185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814812, 31.294584, 36.552532>,  <28.561144, 31.372463, 35.908875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814812, 31.294584, 36.552532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.570210, 31.609360, 36.585476>,  <28.423449, 31.798225, 36.605244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.570210, 31.609360, 36.585476>,  <28.814812, 31.294584, 36.552532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570210, 31.609360, 36.585476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131571, -0.203776, 0.970137,
		0.780224, 0.582408, 0.228148,
		-0.611507, 0.786941, 0.082363,
		28.386757, 31.845442, 36.610184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902838, 31.533060, 37.201233>,  <28.814812, 31.294584, 36.552532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902838, 31.533060, 37.201233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.558115, 31.727715, 37.143997>,  <28.351282, 31.844507, 37.109653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.558115, 31.727715, 37.143997>,  <28.902838, 31.533060, 37.201233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558115, 31.727715, 37.143997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205442, -0.076946, 0.975640,
		0.463772, 0.870209, 0.166288,
		-0.861806, 0.486637, -0.143091,
		28.299574, 31.873705, 37.101070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898937, 32.141781, 37.681381>,  <28.902838, 31.533060, 37.201233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898937, 32.141781, 37.681381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536234, 32.011688, 37.574039>,  <28.318611, 31.933634, 37.509636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536234, 32.011688, 37.574039>,  <28.898937, 32.141781, 37.681381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536234, 32.011688, 37.574039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275364, -0.025217, 0.961009,
		-0.319314, 0.945300, -0.066691,
		-0.906760, -0.325228, -0.268354,
		28.264206, 31.914120, 37.493534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501717, 32.468323, 38.105854>,  <28.898937, 32.141781, 37.681381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501717, 32.468323, 38.105854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.263367, 32.175426, 37.973938>,  <28.120358, 31.999689, 37.894787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.263367, 32.175426, 37.973938>,  <28.501717, 32.468323, 38.105854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263367, 32.175426, 37.973938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345030, -0.137400, 0.928480,
		-0.725183, 0.667043, -0.170772,
		-0.595873, -0.732239, -0.329790,
		28.084604, 31.955755, 37.875000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942953, 32.572388, 38.390053>,  <28.501717, 32.468323, 38.105854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942953, 32.572388, 38.390053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.893826, 32.190823, 38.280529>,  <27.864349, 31.961884, 38.214813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.893826, 32.190823, 38.280529>,  <27.942953, 32.572388, 38.390053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893826, 32.190823, 38.280529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483011, -0.183565, 0.856156,
		-0.866958, 0.237405, -0.438204,
		-0.122817, -0.953909, -0.273813,
		27.856981, 31.904650, 38.198383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176287, 32.329815, 38.426697>,  <27.942953, 32.572388, 38.390053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176287, 32.329815, 38.426697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.398890, 31.999056, 38.459057>,  <27.532452, 31.800602, 38.478474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.398890, 31.999056, 38.459057>,  <27.176287, 32.329815, 38.426697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398890, 31.999056, 38.459057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394369, -0.177190, 0.901708,
		-0.731282, -0.533713, -0.424709,
		0.556507, -0.826894, 0.080904,
		27.565842, 31.750988, 38.483330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787834, 31.980339, 38.859985>,  <27.176287, 32.329815, 38.426697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787834, 31.980339, 38.859985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.120855, 31.758884, 38.852558>,  <27.320667, 31.626013, 38.848103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.120855, 31.758884, 38.852558>,  <26.787834, 31.980339, 38.859985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.120855, 31.758884, 38.852558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184652, -0.308969, 0.932975,
		-0.522265, -0.773321, -0.359463,
		0.832552, -0.553636, -0.018569,
		27.370621, 31.592794, 38.846989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631754, 31.313362, 39.198563>,  <26.787834, 31.980339, 38.859985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631754, 31.313362, 39.198563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.028131, 31.365454, 39.211624>,  <27.265959, 31.396709, 39.219460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.028131, 31.365454, 39.211624>,  <26.631754, 31.313362, 39.198563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.028131, 31.365454, 39.211624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018266, -0.371699, 0.928174,
		0.133012, -0.919174, -0.370712,
		0.990946, 0.130229, 0.032650,
		27.325415, 31.404522, 39.221420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883162, 30.679308, 39.464329>,  <26.631754, 31.313362, 39.198563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883162, 30.679308, 39.464329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.139315, 30.979897, 39.527832>,  <27.293007, 31.160250, 39.565933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.139315, 30.979897, 39.527832>,  <26.883162, 30.679308, 39.464329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139315, 30.979897, 39.527832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039571, -0.238710, 0.970284,
		0.767037, -0.615070, -0.182602,
		0.640381, 0.751470, 0.158760,
		27.331429, 31.205338, 39.575459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407225, 30.451805, 39.905479>,  <26.883162, 30.679308, 39.464329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407225, 30.451805, 39.905479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.443262, 30.848997, 39.936127>,  <27.464884, 31.087313, 39.954514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.443262, 30.848997, 39.936127>,  <27.407225, 30.451805, 39.905479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443262, 30.848997, 39.936127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070638, -0.070363, 0.995017,
		0.993425, -0.095054, 0.063803,
		0.090091, 0.992982, 0.076615,
		27.470289, 31.146893, 39.959110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915232, 30.622738, 40.373489>,  <27.407225, 30.451805, 39.905479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915232, 30.622738, 40.373489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.694820, 30.956430, 40.365253>,  <27.562574, 31.156647, 40.360313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.694820, 30.956430, 40.365253>,  <27.915232, 30.622738, 40.373489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694820, 30.956430, 40.365253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011769, 0.016903, 0.999788,
		0.834404, 0.551152, 0.000504,
		-0.551027, 0.834233, -0.020590,
		27.529512, 31.206701, 40.359077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111185, 30.976875, 41.001381>,  <27.915232, 30.622738, 40.373489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111185, 30.976875, 41.001381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.778326, 31.152433, 40.865791>,  <27.578611, 31.257769, 40.784439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.778326, 31.152433, 40.865791>,  <28.111185, 30.976875, 41.001381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778326, 31.152433, 40.865791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351314, 0.055730, 0.934598,
		0.429082, 0.896808, 0.107815,
		-0.832146, 0.438896, -0.338974,
		27.528683, 31.284101, 40.764099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063349, 31.482042, 41.408756>,  <28.111185, 30.976875, 41.001381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063349, 31.482042, 41.408756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.691772, 31.425093, 41.272053>,  <27.468826, 31.390923, 41.190029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.691772, 31.425093, 41.272053>,  <28.063349, 31.482042, 41.408756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691772, 31.425093, 41.272053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364403, 0.188477, 0.911968,
		-0.065425, 0.971703, -0.226965,
		-0.928940, -0.142372, -0.341761,
		27.413090, 31.382381, 41.169525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680080, 31.966873, 41.757809>,  <28.063349, 31.482042, 41.408756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680080, 31.966873, 41.757809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395351, 31.735743, 41.598095>,  <27.224514, 31.597065, 41.502266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.395351, 31.735743, 41.598095>,  <27.680080, 31.966873, 41.757809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395351, 31.735743, 41.598095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631103, 0.276700, 0.724670,
		-0.308250, 0.767825, -0.561628,
		-0.711822, -0.577825, -0.399284,
		27.181805, 31.562395, 41.478310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101860, 32.338737, 41.845982>,  <27.680080, 31.966873, 41.757809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101860, 32.338737, 41.845982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.960751, 31.969332, 41.785751>,  <26.876085, 31.747688, 41.749615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.960751, 31.969332, 41.785751>,  <27.101860, 32.338737, 41.845982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960751, 31.969332, 41.785751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796476, 0.211914, 0.566320,
		-0.491096, 0.319711, -0.810314,
		-0.352775, -0.923514, -0.150572,
		26.854918, 31.692278, 41.740582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471830, 32.408676, 41.649227>,  <27.101860, 32.338737, 41.845982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471830, 32.408676, 41.649227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494049, 32.026558, 41.765377>,  <26.507380, 31.797285, 41.835068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494049, 32.026558, 41.765377>,  <26.471830, 32.408676, 41.649227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494049, 32.026558, 41.765377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803909, 0.129686, 0.580441,
		-0.592153, -0.265674, -0.760771,
		0.055546, -0.955300, 0.290372,
		26.510714, 31.739967, 41.852489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.775707, 31.952478, 41.534336>,  <26.471830, 32.408676, 41.649227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.775707, 31.952478, 41.534336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.995274, 31.821806, 41.842094>,  <26.127012, 31.743402, 42.026749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.995274, 31.821806, 41.842094>,  <25.775707, 31.952478, 41.534336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.995274, 31.821806, 41.842094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819855, -0.031050, 0.571729,
		-0.162885, -0.944623, -0.284878,
		0.548914, -0.326685, 0.769396,
		26.159948, 31.723801, 42.072914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.307896, 30.872353, 44.337940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063751, 30.645622, 44.116611>,  <36.917263, 30.509584, 43.983814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063751, 30.645622, 44.116611>,  <37.307896, 30.872353, 44.337940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063751, 30.645622, 44.116611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598726, -0.127235, 0.790783,
		-0.518640, 0.813952, -0.261716,
		-0.610360, -0.566828, -0.553323,
		36.880642, 30.475574, 43.950615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652061, 31.154335, 44.382534>,  <37.307896, 30.872353, 44.337940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652061, 31.154335, 44.382534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.614452, 30.770504, 44.276421>,  <36.591885, 30.540205, 44.212753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.614452, 30.770504, 44.276421>,  <36.652061, 31.154335, 44.382534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614452, 30.770504, 44.276421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603394, -0.157016, 0.781832,
		-0.791880, 0.233581, -0.564239,
		-0.094027, -0.959576, -0.265279,
		36.586243, 30.482632, 44.196838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983551, 31.006599, 44.353115>,  <36.652061, 31.154335, 44.382534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983551, 31.006599, 44.353115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.123833, 30.634174, 44.393375>,  <36.208004, 30.410719, 44.417530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.123833, 30.634174, 44.393375>,  <35.983551, 31.006599, 44.353115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123833, 30.634174, 44.393375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669721, -0.174230, 0.721885,
		-0.654583, -0.320575, -0.684655,
		0.350706, -0.931061, 0.100647,
		36.229046, 30.354856, 44.423569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332657, 30.463438, 44.560501>,  <35.983551, 31.006599, 44.353115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332657, 30.463438, 44.560501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675350, 30.310411, 44.698868>,  <35.880966, 30.218596, 44.781887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.675350, 30.310411, 44.698868>,  <35.332657, 30.463438, 44.560501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675350, 30.310411, 44.698868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454658, -0.243517, 0.856730,
		-0.243517, -0.891260, -0.382564,
		-0.856730, 0.382564, -0.345917,
		35.932369, 30.195642, 44.802643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095634, 29.870785, 44.984642>,  <35.332657, 30.463438, 44.560501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095634, 29.870785, 44.984642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.475475, 29.884720, 45.109249>,  <35.703381, 29.893082, 45.184013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.475475, 29.884720, 45.109249>,  <35.095634, 29.870785, 44.984642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475475, 29.884720, 45.109249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286851, -0.304115, 0.908422,
		0.126387, -0.951998, -0.278794,
		0.949601, 0.034840, 0.311517,
		35.760357, 29.895172, 45.202705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174534, 29.256769, 45.278019>,  <35.095634, 29.870785, 44.984642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174534, 29.256769, 45.278019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.471302, 29.461727, 45.450993>,  <35.649364, 29.584702, 45.554775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.471302, 29.461727, 45.450993>,  <35.174534, 29.256769, 45.278019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471302, 29.461727, 45.450993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140867, -0.511440, 0.847695,
		0.655521, -0.689839, -0.307268,
		0.741922, 0.512398, 0.432435,
		35.693878, 29.615446, 45.580723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562916, 28.768326, 45.638546>,  <35.174534, 29.256769, 45.278019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562916, 28.768326, 45.638546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578617, 29.135248, 45.797043>,  <35.588039, 29.355402, 45.892143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578617, 29.135248, 45.797043>,  <35.562916, 28.768326, 45.638546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578617, 29.135248, 45.797043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430949, -0.342234, 0.834960,
		0.901522, -0.203536, 0.381878,
		0.039252, 0.917305, 0.396245,
		35.590393, 29.410440, 45.915916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803604, 28.607193, 46.284199>,  <35.562916, 28.768326, 45.638546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803604, 28.607193, 46.284199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648979, 28.974751, 46.315693>,  <35.556202, 29.195286, 46.334587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.648979, 28.974751, 46.315693>,  <35.803604, 28.607193, 46.284199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648979, 28.974751, 46.315693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451940, -0.263155, 0.852350,
		0.803939, 0.293907, 0.517012,
		-0.386566, 0.918895, 0.078732,
		35.533009, 29.250420, 46.339314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964722, 28.735704, 47.003784>,  <35.803604, 28.607193, 46.284199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964722, 28.735704, 47.003784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681919, 29.004431, 46.915417>,  <35.512238, 29.165667, 46.862396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.681919, 29.004431, 46.915417>,  <35.964722, 28.735704, 47.003784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681919, 29.004431, 46.915417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394538, -0.115437, 0.911600,
		0.586923, 0.731670, 0.346671,
		-0.707009, 0.671814, -0.220919,
		35.469818, 29.205975, 46.849140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932583, 29.152843, 47.576885>,  <35.964722, 28.735704, 47.003784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932583, 29.152843, 47.576885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576488, 29.205173, 47.402359>,  <35.362831, 29.236572, 47.297642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.576488, 29.205173, 47.402359>,  <35.932583, 29.152843, 47.576885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576488, 29.205173, 47.402359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449968, -0.103645, 0.887010,
		0.070821, 0.985973, 0.151135,
		-0.890232, 0.130824, -0.436316,
		35.309418, 29.244421, 47.271465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542683, 29.479174, 48.145660>,  <35.932583, 29.152843, 47.576885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542683, 29.479174, 48.145660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293728, 29.296551, 47.891357>,  <35.144356, 29.186977, 47.738777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.293728, 29.296551, 47.891357>,  <35.542683, 29.479174, 48.145660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293728, 29.296551, 47.891357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579232, -0.277629, 0.766428,
		-0.526421, 0.845269, -0.091657,
		-0.622391, -0.456555, -0.635757,
		35.107010, 29.159584, 47.700630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866924, 29.552876, 48.388054>,  <35.542683, 29.479174, 48.145660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866924, 29.552876, 48.388054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841885, 29.220060, 48.167583>,  <34.826862, 29.020372, 48.035301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841885, 29.220060, 48.167583>,  <34.866924, 29.552876, 48.388054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841885, 29.220060, 48.167583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504910, -0.449975, 0.736606,
		-0.860899, 0.324403, -0.391938,
		-0.062595, -0.832036, -0.551178,
		34.823105, 28.970449, 48.002232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360298, 30.098444, 48.700222>,  <34.866924, 29.552876, 48.388054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360298, 30.098444, 48.700222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066986, 30.317484, 48.861435>,  <33.890999, 30.448908, 48.958164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066986, 30.317484, 48.861435>,  <34.360298, 30.098444, 48.700222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066986, 30.317484, 48.861435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646301, 0.377251, 0.663308,
		0.211183, 0.746870, -0.630545,
		-0.733278, 0.547601, 0.403034,
		33.847004, 30.481764, 48.982346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106850, 30.812330, 48.565525>,  <34.360298, 30.098444, 48.700222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106850, 30.812330, 48.565525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807816, 31.063457, 48.478840>,  <33.628395, 31.214134, 48.426826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807816, 31.063457, 48.478840>,  <34.106850, 30.812330, 48.565525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807816, 31.063457, 48.478840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429982, 0.208805, -0.878360,
		-0.506200, -0.749829, -0.426050,
		-0.747581, 0.627820, -0.216716,
		33.583542, 31.251802, 48.413826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861557, 30.735807, 47.893169>,  <34.106850, 30.812330, 48.565525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861557, 30.735807, 47.893169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753582, 31.104538, 48.004433>,  <33.688797, 31.325777, 48.071190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.753582, 31.104538, 48.004433>,  <33.861557, 30.735807, 47.893169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753582, 31.104538, 48.004433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222576, 0.340793, -0.913411,
		-0.936800, -0.184650, -0.297169,
		-0.269934, 0.921826, 0.278156,
		33.672600, 31.381086, 48.087879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468082, 30.769907, 47.334362>,  <33.861557, 30.735807, 47.893169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468082, 30.769907, 47.334362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.519115, 31.137779, 47.482906>,  <33.549736, 31.358503, 47.572033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.519115, 31.137779, 47.482906>,  <33.468082, 30.769907, 47.334362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519115, 31.137779, 47.482906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140689, 0.353849, -0.924661,
		-0.981798, 0.170220, -0.084243,
		0.127587, 0.919683, 0.371356,
		33.557392, 31.413685, 47.594315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160221, 31.155899, 46.885571>,  <33.468082, 30.769907, 47.334362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160221, 31.155899, 46.885571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387218, 31.425909, 47.074162>,  <33.523418, 31.587915, 47.187317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387218, 31.425909, 47.074162>,  <33.160221, 31.155899, 46.885571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387218, 31.425909, 47.074162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202955, 0.440267, -0.874628,
		-0.797970, 0.592038, 0.112851,
		0.567497, 0.675023, 0.471477,
		33.557468, 31.628416, 47.215603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038815, 31.735855, 46.523125>,  <33.160221, 31.155899, 46.885571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038815, 31.735855, 46.523125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.376728, 31.823286, 46.718498>,  <33.579475, 31.875746, 46.835724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.376728, 31.823286, 46.718498>,  <33.038815, 31.735855, 46.523125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376728, 31.823286, 46.718498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351001, 0.462624, -0.814111,
		-0.403909, 0.859187, 0.314095,
		0.844782, 0.218579, 0.488434,
		33.630161, 31.888859, 46.865028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297596, 32.418518, 46.411835>,  <33.038815, 31.735855, 46.523125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297596, 32.418518, 46.411835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.660328, 32.306866, 46.538166>,  <33.877968, 32.239876, 46.613964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.660328, 32.306866, 46.538166>,  <33.297596, 32.418518, 46.411835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660328, 32.306866, 46.538166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417064, 0.485744, -0.768187,
		0.061012, 0.828335, 0.556902,
		0.906827, -0.279132, 0.315832,
		33.932377, 32.223125, 46.632915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742622, 33.053921, 46.237873>,  <33.297596, 32.418518, 46.411835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742622, 33.053921, 46.237873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944736, 32.709499, 46.260742>,  <34.066006, 32.502846, 46.274464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944736, 32.709499, 46.260742>,  <33.742622, 33.053921, 46.237873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944736, 32.709499, 46.260742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368622, 0.155465, -0.916487,
		0.780259, 0.484161, 0.395959,
		0.505285, -0.861057, 0.057169,
		34.096321, 32.451183, 46.277893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433311, 33.243065, 46.110569>,  <33.742622, 33.053921, 46.237873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433311, 33.243065, 46.110569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391342, 32.851452, 46.040733>,  <34.366161, 32.616482, 45.998833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391342, 32.851452, 46.040733>,  <34.433311, 33.243065, 46.110569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391342, 32.851452, 46.040733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281697, 0.139110, -0.949366,
		0.953749, -0.148792, 0.261196,
		-0.104923, -0.979035, -0.174591,
		34.359867, 32.557743, 45.988358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081821, 33.024929, 45.746841>,  <34.433311, 33.243065, 46.110569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081821, 33.024929, 45.746841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839073, 32.718300, 45.662872>,  <34.693424, 32.534321, 45.612492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839073, 32.718300, 45.662872>,  <35.081821, 33.024929, 45.746841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839073, 32.718300, 45.662872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406577, -0.072465, -0.910738,
		0.682939, -0.638050, 0.355649,
		-0.606869, -0.766577, -0.209927,
		34.657013, 32.488327, 45.599895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433685, 32.719139, 45.312462>,  <35.081821, 33.024929, 45.746841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433685, 32.719139, 45.312462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070919, 32.564411, 45.245686>,  <34.853260, 32.471577, 45.205620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070919, 32.564411, 45.245686>,  <35.433685, 32.719139, 45.312462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070919, 32.564411, 45.245686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252453, -0.181733, -0.950390,
		0.337289, -0.904072, 0.262470,
		-0.906920, -0.386818, -0.166939,
		34.798843, 32.448364, 45.195602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582840, 32.150688, 44.951004>,  <35.433685, 32.719139, 45.312462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582840, 32.150688, 44.951004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200489, 32.250496, 44.888985>,  <34.971081, 32.310383, 44.851772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200489, 32.250496, 44.888985>,  <35.582840, 32.150688, 44.951004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200489, 32.250496, 44.888985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168351, 0.032733, -0.985184,
		-0.240752, -0.967815, -0.073296,
		-0.955875, 0.249525, -0.155052,
		34.913727, 32.325352, 44.842468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340508, 31.816475, 44.261696>,  <35.582840, 32.150688, 44.951004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340508, 31.816475, 44.261696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056152, 32.093269, 44.311954>,  <34.885540, 32.259346, 44.342110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.056152, 32.093269, 44.311954>,  <35.340508, 31.816475, 44.261696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056152, 32.093269, 44.311954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111039, 0.286840, -0.951521,
		-0.694481, -0.662477, -0.280750,
		-0.710891, 0.691988, 0.125644,
		34.842884, 32.300865, 44.349648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839355, 31.720877, 43.746780>,  <35.340508, 31.816475, 44.261696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839355, 31.720877, 43.746780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.836399, 32.105663, 43.856007>,  <34.834625, 32.336536, 43.921543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.836399, 32.105663, 43.856007>,  <34.839355, 31.720877, 43.746780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836399, 32.105663, 43.856007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020447, 0.272871, -0.961833,
		-0.999764, -0.012688, 0.017654,
		-0.007387, 0.961967, 0.273066,
		34.834183, 32.394253, 43.937927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662033, 32.017471, 43.190292>,  <34.839355, 31.720877, 43.746780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662033, 32.017471, 43.190292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.742065, 32.332817, 43.422997>,  <34.790085, 32.522026, 43.562618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.742065, 32.332817, 43.422997>,  <34.662033, 32.017471, 43.190292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742065, 32.332817, 43.422997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119212, 0.569770, -0.813112,
		-0.972501, 0.232038, 0.020015,
		0.200077, 0.788366, 0.581763,
		34.802090, 32.569328, 43.597527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220516, 32.475117, 42.946365>,  <34.662033, 32.017471, 43.190292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220516, 32.475117, 42.946365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.538628, 32.668236, 43.093025>,  <34.729496, 32.784107, 43.181023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.538628, 32.668236, 43.093025>,  <34.220516, 32.475117, 42.946365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538628, 32.668236, 43.093025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153900, 0.424202, -0.892394,
		-0.586384, 0.766130, 0.263055,
		0.795279, 0.482802, 0.366653,
		34.777210, 32.813076, 43.203022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718323, 32.944183, 42.962189>,  <34.220516, 32.475117, 42.946365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718323, 32.944183, 42.962189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.370998, 32.934044, 42.764042>,  <33.162605, 32.927959, 42.645153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.370998, 32.934044, 42.764042>,  <33.718323, 32.944183, 42.962189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370998, 32.934044, 42.764042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480847, -0.202087, 0.853198,
		-0.121737, 0.979040, 0.163285,
		-0.868312, -0.025351, -0.495370,
		33.110504, 32.926437, 42.615433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156483, 33.365383, 43.358265>,  <33.718323, 32.944183, 42.962189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156483, 33.365383, 43.358265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.950058, 33.114883, 43.124512>,  <32.826202, 32.964584, 42.984261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.950058, 33.114883, 43.124512>,  <33.156483, 33.365383, 43.358265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950058, 33.114883, 43.124512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614047, -0.205177, 0.762134,
		-0.597186, 0.752142, -0.278661,
		-0.516058, -0.626247, -0.584379,
		32.795242, 32.927010, 42.949200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446846, 33.488064, 43.336052>,  <33.156483, 33.365383, 43.358265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446846, 33.488064, 43.336052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430012, 33.100590, 43.238178>,  <32.419910, 32.868103, 43.179455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.430012, 33.100590, 43.238178>,  <32.446846, 33.488064, 43.336052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.430012, 33.100590, 43.238178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632484, -0.163746, 0.757067,
		-0.773429, 0.186621, -0.605789,
		-0.042089, -0.968689, -0.244681,
		32.417385, 32.809982, 43.164776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710150, 33.273769, 43.426323>,  <32.446846, 33.488064, 43.336052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710150, 33.273769, 43.426323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.939903, 32.946407, 43.433117>,  <32.077755, 32.749989, 43.437195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.939903, 32.946407, 43.433117>,  <31.710150, 33.273769, 43.426323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939903, 32.946407, 43.433117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550484, -0.370822, 0.747969,
		-0.605846, -0.438974, -0.663516,
		0.574385, -0.818409, 0.016987,
		32.112221, 32.700886, 43.438213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252010, 32.764416, 43.563705>,  <31.710150, 33.273769, 43.426323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252010, 32.764416, 43.563705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.599699, 32.591118, 43.658997>,  <31.808311, 32.487141, 43.716171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.599699, 32.591118, 43.658997>,  <31.252010, 32.764416, 43.563705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599699, 32.591118, 43.658997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409060, -0.359515, 0.838701,
		-0.277710, -0.826470, -0.489719,
		0.869222, -0.433240, 0.238234,
		31.860466, 32.461143, 43.730465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099564, 32.050694, 43.686668>,  <31.252010, 32.764416, 43.563705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099564, 32.050694, 43.686668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.451834, 32.118275, 43.863697>,  <31.663195, 32.158825, 43.969913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.451834, 32.118275, 43.863697>,  <31.099564, 32.050694, 43.686668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451834, 32.118275, 43.863697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304712, -0.513285, 0.802303,
		0.362717, -0.841423, -0.400554,
		0.880674, 0.168955, 0.442569,
		31.716036, 32.168961, 43.996468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321434, 31.491894, 43.860298>,  <31.099564, 32.050694, 43.686668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321434, 31.491894, 43.860298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517969, 31.745327, 44.099350>,  <31.635891, 31.897387, 44.242779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517969, 31.745327, 44.099350>,  <31.321434, 31.491894, 43.860298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517969, 31.745327, 44.099350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273656, -0.539112, 0.796537,
		0.826860, -0.554914, -0.091503,
		0.491339, 0.633584, 0.597626,
		31.665371, 31.935402, 44.278637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471926, 30.714386, 43.755428>,  <31.321434, 31.491894, 43.860298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471926, 30.714386, 43.755428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.121119, 30.534498, 43.687790>,  <30.910635, 30.426565, 43.647205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.121119, 30.534498, 43.687790>,  <31.471926, 30.714386, 43.755428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121119, 30.534498, 43.687790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077599, 0.214744, -0.973583,
		0.474154, -0.866969, -0.153436,
		-0.877016, -0.449721, -0.169098,
		30.858013, 30.399582, 43.637062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504181, 30.133417, 43.330147>,  <31.471926, 30.714386, 43.755428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504181, 30.133417, 43.330147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.128712, 30.263531, 43.284397>,  <30.903429, 30.341599, 43.256947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.128712, 30.263531, 43.284397>,  <31.504181, 30.133417, 43.330147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128712, 30.263531, 43.284397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156486, 0.106317, -0.981941,
		-0.307250, -0.939620, -0.150700,
		-0.938674, 0.325284, -0.114372,
		30.847109, 30.361116, 43.250084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489981, 29.960285, 42.696121>,  <31.504181, 30.133417, 43.330147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489981, 29.960285, 42.696121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.174231, 30.188292, 42.787312>,  <30.984781, 30.325094, 42.842026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.174231, 30.188292, 42.787312>,  <31.489981, 29.960285, 42.696121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174231, 30.188292, 42.787312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047391, 0.313655, -0.948354,
		-0.612080, -0.759410, -0.220578,
		-0.789375, 0.570015, 0.227972,
		30.937418, 30.359297, 42.855701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993675, 29.777653, 42.356163>,  <31.489981, 29.960285, 42.696121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993675, 29.777653, 42.356163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.898170, 30.155291, 42.447094>,  <30.840868, 30.381872, 42.501652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.898170, 30.155291, 42.447094>,  <30.993675, 29.777653, 42.356163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.898170, 30.155291, 42.447094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006515, 0.235653, -0.971815,
		-0.971056, -0.230553, -0.062416,
		-0.238763, 0.944094, 0.227330,
		30.826542, 30.438519, 42.515293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588802, 29.939074, 41.837395>,  <30.993675, 29.777653, 42.356163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588802, 29.939074, 41.837395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.650522, 30.303036, 41.991413>,  <30.687553, 30.521414, 42.083824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.650522, 30.303036, 41.991413>,  <30.588802, 29.939074, 41.837395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650522, 30.303036, 41.991413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152467, 0.363118, -0.919184,
		-0.976189, 0.200537, -0.082702,
		0.154300, 0.909907, 0.385047,
		30.696812, 30.576008, 42.106926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143621, 30.498409, 41.532139>,  <30.588802, 29.939074, 41.837395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143621, 30.498409, 41.532139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.461634, 30.708803, 41.652977>,  <30.652441, 30.835039, 41.725479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.461634, 30.708803, 41.652977>,  <30.143621, 30.498409, 41.532139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461634, 30.708803, 41.652977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154850, 0.305540, -0.939503,
		-0.586468, 0.793715, 0.161465,
		0.795032, 0.525986, 0.302097,
		30.700144, 30.866598, 41.743607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045599, 31.157824, 41.330906>,  <30.143621, 30.498409, 41.532139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045599, 31.157824, 41.330906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.438768, 31.148445, 41.403912>,  <30.674669, 31.142818, 41.447716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.438768, 31.148445, 41.403912>,  <30.045599, 31.157824, 41.330906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438768, 31.148445, 41.403912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162189, 0.578889, -0.799114,
		-0.086919, 0.815070, 0.572806,
		0.982924, -0.023445, 0.182512,
		30.733646, 31.141411, 41.458664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.711166, 26.986877, 46.042233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.963192, 27.279930, 46.145206>,  <34.114407, 27.455763, 46.206989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.963192, 27.279930, 46.145206>,  <33.711166, 26.986877, 46.042233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963192, 27.279930, 46.145206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089522, 0.260776, -0.961240,
		-0.771369, 0.628685, 0.098717,
		0.630060, 0.732633, 0.257436,
		34.152210, 27.499720, 46.222439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567410, 27.536949, 45.579929>,  <33.711166, 26.986877, 46.042233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567410, 27.536949, 45.579929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.911602, 27.654093, 45.746689>,  <34.118118, 27.724379, 45.846745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.911602, 27.654093, 45.746689>,  <33.567410, 27.536949, 45.579929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911602, 27.654093, 45.746689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290573, 0.390048, -0.873745,
		-0.418494, 0.872981, 0.250533,
		0.860483, 0.292859, 0.416897,
		34.169746, 27.741951, 45.871758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665447, 28.245302, 45.408985>,  <33.567410, 27.536949, 45.579929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665447, 28.245302, 45.408985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.027763, 28.092936, 45.483231>,  <34.245152, 28.001516, 45.527779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.027763, 28.092936, 45.483231>,  <33.665447, 28.245302, 45.408985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027763, 28.092936, 45.483231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331900, 0.365468, -0.869641,
		0.263424, 0.849315, 0.457462,
		0.905787, -0.380916, 0.185615,
		34.299500, 27.978661, 45.538914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097904, 28.582912, 44.982334>,  <33.665447, 28.245302, 45.408985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097904, 28.582912, 44.982334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.364319, 28.303032, 45.085732>,  <34.524166, 28.135105, 45.147770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.364319, 28.303032, 45.085732>,  <34.097904, 28.582912, 44.982334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364319, 28.303032, 45.085732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539097, 0.212021, -0.815120,
		0.515532, 0.682253, 0.518419,
		0.666034, -0.699699, 0.258497,
		34.564129, 28.093122, 45.163280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809204, 28.858599, 44.778744>,  <34.097904, 28.582912, 44.982334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809204, 28.858599, 44.778744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.819336, 28.461149, 44.822697>,  <34.825413, 28.222679, 44.849068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.819336, 28.461149, 44.822697>,  <34.809204, 28.858599, 44.778744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819336, 28.461149, 44.822697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496937, -0.082864, -0.863821,
		0.867417, 0.076485, 0.491669,
		0.025328, -0.993621, 0.109886,
		34.826935, 28.163063, 44.855663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576561, 28.693136, 44.786877>,  <34.809204, 28.858599, 44.778744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576561, 28.693136, 44.786877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.329224, 28.403471, 44.664738>,  <35.180820, 28.229671, 44.591454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.329224, 28.403471, 44.664738>,  <35.576561, 28.693136, 44.786877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329224, 28.403471, 44.664738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391810, 0.052750, -0.918533,
		0.681275, -0.687607, 0.251117,
		-0.618343, -0.724164, -0.305349,
		35.143723, 28.186222, 44.573132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958576, 28.254061, 44.388245>,  <35.576561, 28.693136, 44.786877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958576, 28.254061, 44.388245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.579178, 28.167156, 44.296028>,  <35.351540, 28.115013, 44.240696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.579178, 28.167156, 44.296028>,  <35.958576, 28.254061, 44.388245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579178, 28.167156, 44.296028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252882, -0.080961, -0.964104,
		0.190796, -0.972750, 0.131733,
		-0.948498, -0.217260, -0.230544,
		35.294628, 28.101978, 44.226864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008312, 27.617374, 44.174374>,  <35.958576, 28.254061, 44.388245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008312, 27.617374, 44.174374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.686569, 27.798983, 44.021080>,  <35.493523, 27.907948, 43.929104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.686569, 27.798983, 44.021080>,  <36.008312, 27.617374, 44.174374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686569, 27.798983, 44.021080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342649, -0.172465, -0.923498,
		-0.485384, -0.874139, -0.016847,
		-0.804360, 0.454023, -0.383234,
		35.445263, 27.935190, 43.906109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927891, 27.211462, 43.583069>,  <36.008312, 27.617374, 44.174374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927891, 27.211462, 43.583069> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.670563, 27.512651, 43.527679>,  <35.516167, 27.693365, 43.494446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.670563, 27.512651, 43.527679>,  <35.927891, 27.211462, 43.583069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670563, 27.512651, 43.527679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212044, 0.001446, -0.977259,
		-0.735648, -0.658051, -0.160594,
		-0.643318, 0.752972, -0.138472,
		35.477566, 27.738543, 43.486137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497879, 27.088329, 43.053379>,  <35.927891, 27.211462, 43.583069>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.497879, 27.088329, 43.053379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.538216, 27.484303, 43.093102>,  <35.562416, 27.721888, 43.116936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.538216, 27.484303, 43.093102>,  <35.497879, 27.088329, 43.053379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538216, 27.484303, 43.093102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278736, 0.067702, -0.957978,
		-0.955059, 0.124285, -0.269103,
		0.100843, 0.989934, 0.099302,
		35.568470, 27.781282, 43.122890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203693, 27.243177, 42.503036>,  <35.497879, 27.088329, 43.053379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203693, 27.243177, 42.503036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.418163, 27.566124, 42.601570>,  <35.546844, 27.759892, 42.660690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.418163, 27.566124, 42.601570>,  <35.203693, 27.243177, 42.503036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418163, 27.566124, 42.601570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180971, 0.175090, -0.967777,
		-0.824482, 0.563473, -0.052232,
		0.536171, 0.807368, 0.246331,
		35.579014, 27.808334, 42.675468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067547, 27.691082, 41.954914>,  <35.203693, 27.243177, 42.503036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067547, 27.691082, 41.954914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.383698, 27.872686, 42.119442>,  <35.573387, 27.981649, 42.218159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.383698, 27.872686, 42.119442>,  <35.067547, 27.691082, 41.954914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383698, 27.872686, 42.119442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338025, 0.236758, -0.910870,
		-0.510927, 0.858965, 0.033660,
		0.790375, 0.454010, 0.411318,
		35.620811, 28.008890, 42.242836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287727, 27.843811, 41.917362>,  <35.067547, 27.691082, 41.954914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287727, 27.843811, 41.917362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.022400, 27.887077, 41.621174>,  <33.863201, 27.913036, 41.443459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.022400, 27.887077, 41.621174>,  <34.287727, 27.843811, 41.917362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022400, 27.887077, 41.621174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733505, -0.289982, 0.614720,
		-0.148232, 0.950900, 0.271692,
		-0.663323, 0.108166, -0.740475,
		33.823402, 27.919527, 41.399033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727951, 28.275120, 42.215160>,  <34.287727, 27.843811, 41.917362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727951, 28.275120, 42.215160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.573730, 28.058788, 41.916134>,  <33.481197, 27.928989, 41.736717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.573730, 28.058788, 41.916134>,  <33.727951, 28.275120, 42.215160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573730, 28.058788, 41.916134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788558, -0.227549, 0.571312,
		-0.479089, 0.809770, -0.338742,
		-0.385551, -0.540828, -0.747567,
		33.458065, 27.896540, 41.691864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121441, 28.467520, 42.186119>,  <33.727951, 28.275120, 42.215160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121441, 28.467520, 42.186119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.126778, 28.113892, 41.999252>,  <33.129982, 27.901714, 41.887135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.126778, 28.113892, 41.999252>,  <33.121441, 28.467520, 42.186119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126778, 28.113892, 41.999252> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731116, -0.327347, 0.598593,
		-0.682123, 0.333564, -0.650726,
		0.013344, -0.884070, -0.467164,
		33.130779, 27.848671, 41.859104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520557, 28.375235, 41.946281>,  <33.121441, 28.467520, 42.186119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520557, 28.375235, 41.946281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.680656, 28.010942, 41.987019>,  <32.776714, 27.792368, 42.011459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.680656, 28.010942, 41.987019>,  <32.520557, 28.375235, 41.946281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680656, 28.010942, 41.987019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735546, -0.252981, 0.628469,
		-0.546602, -0.326451, -0.771140,
		0.400248, -0.910731, 0.101839,
		32.800732, 27.737722, 42.017570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028240, 27.929640, 41.826260>,  <32.520557, 28.375235, 41.946281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028240, 27.929640, 41.826260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.283562, 27.717684, 42.049610>,  <32.436756, 27.590511, 42.183620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.283562, 27.717684, 42.049610>,  <32.028240, 27.929640, 41.826260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283562, 27.717684, 42.049610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726595, -0.175177, 0.664358,
		-0.254221, -0.829778, -0.496831,
		0.638303, -0.529889, 0.558379,
		32.475052, 27.558718, 42.217125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645910, 27.388195, 42.180145>,  <32.028240, 27.929640, 41.826260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645910, 27.388195, 42.180145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.985292, 27.367977, 42.390884>,  <32.188923, 27.355846, 42.517326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.985292, 27.367977, 42.390884>,  <31.645910, 27.388195, 42.180145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985292, 27.367977, 42.390884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495343, -0.426477, 0.756804,
		0.186437, -0.903085, -0.386883,
		0.848455, -0.050544, 0.526848,
		32.239830, 27.352814, 42.548939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656559, 26.652225, 42.490097>,  <31.645910, 27.388195, 42.180145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656559, 26.652225, 42.490097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.910717, 26.866352, 42.712704>,  <32.063213, 26.994827, 42.846268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.910717, 26.866352, 42.712704>,  <31.656559, 26.652225, 42.490097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910717, 26.866352, 42.712704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405767, -0.381710, 0.830452,
		0.656982, -0.753481, -0.025323,
		0.635396, 0.535317, 0.556514,
		32.101337, 27.026947, 42.879658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920706, 26.214466, 43.070656>,  <31.656559, 26.652225, 42.490097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920706, 26.214466, 43.070656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.979555, 26.594679, 43.180084>,  <32.014866, 26.822807, 43.245743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.979555, 26.594679, 43.180084>,  <31.920706, 26.214466, 43.070656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979555, 26.594679, 43.180084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548407, -0.151786, 0.822320,
		0.823167, -0.271011, 0.498948,
		0.147125, 0.950534, 0.273570,
		32.023693, 26.879839, 43.262154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073311, 26.165867, 43.743980>,  <31.920706, 26.214466, 43.070656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073311, 26.165867, 43.743980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981586, 26.554293, 43.717304>,  <31.926552, 26.787348, 43.701298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.981586, 26.554293, 43.717304>,  <32.073311, 26.165867, 43.743980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981586, 26.554293, 43.717304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507693, -0.060867, 0.859386,
		0.830460, 0.230926, 0.506960,
		-0.229311, 0.971066, -0.066692,
		31.912792, 26.845612, 43.697296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332188, 26.490187, 44.328930>,  <32.073311, 26.165867, 43.743980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332188, 26.490187, 44.328930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.024681, 26.709282, 44.196880>,  <31.840178, 26.840738, 44.117649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.024681, 26.709282, 44.196880>,  <32.332188, 26.490187, 44.328930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024681, 26.709282, 44.196880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460801, -0.116465, 0.879829,
		0.443467, 0.828504, 0.341932,
		-0.768765, 0.547738, -0.330127,
		31.794052, 26.873604, 44.097843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105583, 26.947292, 44.920666>,  <32.332188, 26.490187, 44.328930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105583, 26.947292, 44.920666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.790815, 26.988068, 44.677235>,  <31.601955, 27.012533, 44.531174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.790815, 26.988068, 44.677235>,  <32.105583, 26.947292, 44.920666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790815, 26.988068, 44.677235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580245, 0.213323, 0.786009,
		0.209947, 0.971649, -0.108719,
		-0.786917, 0.101936, -0.608581,
		31.554741, 27.018648, 44.494659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800768, 27.596954, 45.049271>,  <32.105583, 26.947292, 44.920666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800768, 27.596954, 45.049271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.514284, 27.367199, 44.890717>,  <31.342394, 27.229345, 44.795582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.514284, 27.367199, 44.890717>,  <31.800768, 27.596954, 45.049271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514284, 27.367199, 44.890717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575551, 0.164907, 0.800966,
		-0.394698, 0.801800, -0.448697,
		-0.716209, -0.574388, -0.396388,
		31.299421, 27.194883, 44.771801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261673, 28.045330, 45.121948>,  <31.800768, 27.596954, 45.049271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261673, 28.045330, 45.121948> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.092497, 27.688375, 45.058998>,  <30.990992, 27.474203, 45.021229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.092497, 27.688375, 45.058998>,  <31.261673, 28.045330, 45.121948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092497, 27.688375, 45.058998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687330, 0.202754, 0.697473,
		-0.590506, 0.403161, -0.699116,
		-0.422942, -0.892386, -0.157377,
		30.965614, 27.420660, 45.011784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557598, 28.159121, 45.140835>,  <31.261673, 28.045330, 45.121948>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557598, 28.159121, 45.140835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.593370, 27.770441, 45.228294>,  <30.614834, 27.537233, 45.280769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.593370, 27.770441, 45.228294>,  <30.557598, 28.159121, 45.140835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593370, 27.770441, 45.228294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550508, 0.134725, 0.823887,
		-0.830026, -0.194048, -0.522878,
		0.089429, -0.971696, 0.218650,
		30.620199, 27.478931, 45.293888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926497, 27.845457, 45.146324>,  <30.557598, 28.159121, 45.140835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926497, 27.845457, 45.146324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.205278, 27.684986, 45.384087>,  <30.372547, 27.588703, 45.526745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.205278, 27.684986, 45.384087>,  <29.926497, 27.845457, 45.146324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205278, 27.684986, 45.384087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528751, 0.272452, 0.803861,
		-0.484437, -0.874543, -0.022237,
		0.696953, -0.401178, 0.594401,
		30.414364, 27.564632, 45.562408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634817, 28.598526, 44.803638>,  <29.926497, 27.845457, 45.146324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634817, 28.598526, 44.803638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.882223, 28.686308, 45.105442>,  <30.030666, 28.738977, 45.286522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.882223, 28.686308, 45.105442>,  <29.634817, 28.598526, 44.803638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882223, 28.686308, 45.105442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171894, 0.899163, -0.402441,
		-0.766740, 0.378611, 0.518425,
		0.618517, 0.219454, 0.754504,
		30.067778, 28.752144, 45.331795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404724, 29.225948, 45.098236>,  <29.634817, 28.598526, 44.803638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404724, 29.225948, 45.098236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.791218, 29.185825, 45.193169>,  <30.023115, 29.161751, 45.250130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.791218, 29.185825, 45.193169>,  <29.404724, 29.225948, 45.098236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791218, 29.185825, 45.193169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185875, 0.909249, -0.372447,
		-0.178438, 0.403986, 0.897193,
		0.966235, -0.100307, 0.237335,
		30.081089, 29.155733, 45.264370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670252, 29.905136, 45.320629>,  <29.404724, 29.225948, 45.098236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670252, 29.905136, 45.320629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.991842, 29.706154, 45.190300>,  <30.184797, 29.586763, 45.112103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.991842, 29.706154, 45.190300>,  <29.670252, 29.905136, 45.320629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991842, 29.706154, 45.190300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242565, 0.774593, -0.584096,
		0.542941, 0.390566, 0.743420,
		0.803976, -0.497458, -0.325821,
		30.233034, 29.556917, 45.092552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172968, 30.391373, 45.239597>,  <29.670252, 29.905136, 45.320629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172968, 30.391373, 45.239597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.304228, 30.099932, 44.999115>,  <30.382984, 29.925066, 44.854824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.304228, 30.099932, 44.999115>,  <30.172968, 30.391373, 45.239597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304228, 30.099932, 44.999115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304518, 0.684070, -0.662810,
		0.894196, 0.034422, 0.446351,
		0.328151, -0.728604, -0.601210,
		30.402674, 29.881351, 44.818752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681183, 30.734978, 44.917461>,  <30.172968, 30.391373, 45.239597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681183, 30.734978, 44.917461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.610596, 30.431414, 44.666729>,  <30.568243, 30.249275, 44.516289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.610596, 30.431414, 44.666729>,  <30.681183, 30.734978, 44.917461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610596, 30.431414, 44.666729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291003, 0.568130, -0.769770,
		0.940307, -0.318248, 0.120589,
		-0.176467, -0.758912, -0.626827,
		30.557655, 30.203741, 44.478680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909555, 31.000694, 44.252506>,  <30.681183, 30.734978, 44.917461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909555, 31.000694, 44.252506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.796934, 30.636696, 44.130764>,  <30.729361, 30.418297, 44.057720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.796934, 30.636696, 44.130764>,  <30.909555, 31.000694, 44.252506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796934, 30.636696, 44.130764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393112, 0.179952, -0.901710,
		0.875323, -0.373526, 0.307064,
		-0.281555, -0.909998, -0.304354,
		30.712467, 30.363697, 44.039459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464521, 31.057135, 44.753105>,  <30.909555, 31.000694, 44.252506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464521, 31.057135, 44.753105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.512691, 31.450743, 44.805573>,  <31.541594, 31.686907, 44.837051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.512691, 31.450743, 44.805573>,  <31.464521, 31.057135, 44.753105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512691, 31.450743, 44.805573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500361, -0.053948, 0.864134,
		0.857401, -0.169695, 0.485868,
		0.120427, 0.984019, 0.131164,
		31.548820, 31.745949, 44.844921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490608, 31.085562, 45.388786>,  <31.464521, 31.057135, 44.753105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490608, 31.085562, 45.388786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.437237, 31.471251, 45.297161>,  <31.405214, 31.702663, 45.242184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.437237, 31.471251, 45.297161>,  <31.490608, 31.085562, 45.388786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437237, 31.471251, 45.297161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622114, 0.098434, 0.776714,
		0.771474, 0.246140, 0.586723,
		-0.133427, 0.964223, -0.229066,
		31.397209, 31.760517, 45.228443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533878, 31.376060, 46.021839>,  <31.490608, 31.085562, 45.388786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533878, 31.376060, 46.021839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.354733, 31.653803, 45.796528>,  <31.247246, 31.820448, 45.661339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.354733, 31.653803, 45.796528>,  <31.533878, 31.376060, 46.021839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354733, 31.653803, 45.796528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580207, 0.253630, 0.773971,
		0.680277, 0.673455, 0.289279,
		-0.447865, 0.694356, -0.563282,
		31.220373, 31.862110, 45.627544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642914, 31.949400, 46.382072>,  <31.533878, 31.376060, 46.021839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642914, 31.949400, 46.382072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.326466, 31.972589, 46.138512>,  <31.136597, 31.986504, 45.992374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.326466, 31.972589, 46.138512>,  <31.642914, 31.949400, 46.382072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326466, 31.972589, 46.138512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564229, 0.315191, 0.763086,
		0.236162, 0.947256, -0.216643,
		-0.791121, 0.057976, -0.608906,
		31.089128, 31.989983, 45.955841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352707, 32.565872, 46.626892>,  <31.642914, 31.949400, 46.382072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352707, 32.565872, 46.626892> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.069092, 32.367542, 46.426323>,  <30.898924, 32.248547, 46.305981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.069092, 32.367542, 46.426323>,  <31.352707, 32.565872, 46.626892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069092, 32.367542, 46.426323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674499, 0.269415, 0.687362,
		-0.205717, 0.825576, -0.525456,
		-0.709036, -0.495822, -0.501427,
		30.856380, 32.218796, 46.275894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819803, 33.070938, 46.596066>,  <31.352707, 32.565872, 46.626892>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819803, 33.070938, 46.596066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.679333, 32.698906, 46.552937>,  <30.595051, 32.475685, 46.527058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.679333, 32.698906, 46.552937>,  <30.819803, 33.070938, 46.596066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679333, 32.698906, 46.552937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797859, 0.236994, 0.554305,
		-0.489995, 0.280685, -0.825300,
		-0.351176, -0.930080, -0.107821,
		30.573980, 32.419880, 46.520592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057734, 33.167809, 46.508385>,  <30.819803, 33.070938, 46.596066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057734, 33.167809, 46.508385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.107637, 32.788048, 46.623672>,  <30.137579, 32.560192, 46.692844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.107637, 32.788048, 46.623672>,  <30.057734, 33.167809, 46.508385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107637, 32.788048, 46.623672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661473, 0.136926, 0.737363,
		-0.739519, -0.282641, -0.610922,
		0.124758, -0.949402, 0.288219,
		30.145065, 32.503227, 46.710136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.462877, 32.978939, 46.531879>,  <30.057734, 33.167809, 46.508385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.462877, 32.978939, 46.531879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.673361, 32.753906, 46.786942>,  <29.799650, 32.618885, 46.939980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.673361, 32.753906, 46.786942>,  <29.462877, 32.978939, 46.531879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673361, 32.753906, 46.786942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612260, 0.269729, 0.743225,
		-0.590121, -0.781502, -0.202514,
		0.526209, -0.562584, 0.637655,
		29.831223, 32.585133, 46.978237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043644, 32.751217, 46.901207>,  <29.462877, 32.978939, 46.531879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043644, 32.751217, 46.901207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.358765, 32.676109, 47.135853>,  <29.547836, 32.631046, 47.276638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.358765, 32.676109, 47.135853>,  <29.043644, 32.751217, 46.901207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358765, 32.676109, 47.135853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554337, 0.198995, 0.808153,
		-0.268480, -0.961844, 0.052680,
		0.787800, -0.187770, 0.586612,
		29.595104, 32.619778, 47.311836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.527321, 33.764599, 33.112114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811836, 33.576096, 33.320724>,  <37.982544, 33.462994, 33.445892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811836, 33.576096, 33.320724>,  <37.527321, 33.764599, 33.112114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811836, 33.576096, 33.320724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646852, -0.148507, 0.748016,
		-0.275059, -0.869403, -0.410465,
		0.711284, -0.471258, 0.521527,
		38.025223, 33.434719, 33.477184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268517, 33.066628, 33.392113>,  <37.527321, 33.764599, 33.112114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268517, 33.066628, 33.392113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540154, 33.214951, 33.645519>,  <37.703136, 33.303944, 33.797562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540154, 33.214951, 33.645519>,  <37.268517, 33.066628, 33.392113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540154, 33.214951, 33.645519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619632, -0.173148, 0.765556,
		0.393569, -0.912424, 0.112184,
		0.679088, 0.370812, 0.633513,
		37.743881, 33.326195, 33.835571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310059, 32.535954, 33.914803>,  <37.268517, 33.066628, 33.392113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310059, 32.535954, 33.914803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459087, 32.866402, 34.083897>,  <37.548504, 33.064671, 34.185352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459087, 32.866402, 34.083897>,  <37.310059, 32.535954, 33.914803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459087, 32.866402, 34.083897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617490, -0.119358, 0.777470,
		0.692743, -0.550704, 0.465652,
		0.372576, 0.826123, 0.422739,
		37.570862, 33.114239, 34.210720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502602, 32.320190, 34.576176>,  <37.310059, 32.535954, 33.914803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502602, 32.320190, 34.576176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454094, 32.717121, 34.566589>,  <37.424992, 32.955280, 34.560837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454094, 32.717121, 34.566589>,  <37.502602, 32.320190, 34.576176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454094, 32.717121, 34.566589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670174, -0.064035, 0.739437,
		0.732231, 0.105732, 0.672799,
		-0.121265, 0.992331, -0.023971,
		37.417713, 33.014820, 34.559399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657246, 32.487984, 35.253937>,  <37.502602, 32.320190, 34.576176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657246, 32.487984, 35.253937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465908, 32.812218, 35.118797>,  <37.351105, 33.006756, 35.037712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465908, 32.812218, 35.118797>,  <37.657246, 32.487984, 35.253937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465908, 32.812218, 35.118797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478629, 0.081907, 0.874188,
		0.736272, 0.579871, 0.348788,
		-0.478348, 0.810580, -0.337849,
		37.322403, 33.055393, 35.017441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650532, 32.904980, 35.797791>,  <37.657246, 32.487984, 35.253937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650532, 32.904980, 35.797791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362591, 33.043095, 35.556927>,  <37.189827, 33.125961, 35.412407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362591, 33.043095, 35.556927>,  <37.650532, 32.904980, 35.797791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362591, 33.043095, 35.556927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611928, 0.093829, 0.785328,
		0.327661, 0.933796, 0.143746,
		-0.719849, 0.345283, -0.602160,
		37.146637, 33.146679, 35.376278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451572, 33.495750, 36.034744>,  <37.650532, 32.904980, 35.797791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451572, 33.495750, 36.034744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142563, 33.376846, 35.810299>,  <36.957157, 33.305504, 35.675632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142563, 33.376846, 35.810299>,  <37.451572, 33.495750, 36.034744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142563, 33.376846, 35.810299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617419, 0.145205, 0.773117,
		-0.148343, 0.943690, -0.295710,
		-0.772521, -0.297263, -0.561111,
		36.910805, 33.287666, 35.641964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939991, 33.931824, 35.918190>,  <37.451572, 33.495750, 36.034744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939991, 33.931824, 35.918190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732536, 33.605900, 35.814579>,  <36.608063, 33.410343, 35.752411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732536, 33.605900, 35.814579>,  <36.939991, 33.931824, 35.918190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732536, 33.605900, 35.814579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590119, 0.121913, 0.798058,
		-0.618690, 0.566759, -0.544065,
		-0.518636, -0.814813, -0.259029,
		36.576946, 33.361454, 35.736870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277596, 34.060940, 36.155888>,  <36.939991, 33.931824, 35.918190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277596, 34.060940, 36.155888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269131, 33.666382, 36.090672>,  <36.264053, 33.429649, 36.051540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269131, 33.666382, 36.090672>,  <36.277596, 34.060940, 36.155888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269131, 33.666382, 36.090672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635078, -0.112689, 0.764184,
		-0.772158, 0.119713, -0.624052,
		-0.021159, -0.986392, -0.163041,
		36.262783, 33.370464, 36.041759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602226, 33.826538, 36.249981>,  <36.277596, 34.060940, 36.155888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602226, 33.826538, 36.249981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751694, 33.456760, 36.280361>,  <35.841373, 33.234894, 36.298588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751694, 33.456760, 36.280361>,  <35.602226, 33.826538, 36.249981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751694, 33.456760, 36.280361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615838, -0.186031, 0.765595,
		-0.693624, -0.332852, -0.638824,
		0.373671, -0.924447, 0.075947,
		35.863796, 33.179428, 36.303146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014961, 33.387196, 36.349430>,  <35.602226, 33.826538, 36.249981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014961, 33.387196, 36.349430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343376, 33.208759, 36.491928>,  <35.540424, 33.101700, 36.577427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.343376, 33.208759, 36.491928>,  <35.014961, 33.387196, 36.349430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343376, 33.208759, 36.491928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481643, -0.206275, 0.851746,
		-0.306473, -0.870892, -0.384215,
		0.821032, -0.446092, 0.356242,
		35.589687, 33.074932, 36.598801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750500, 32.791492, 36.660553>,  <35.014961, 33.387196, 36.349430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750500, 32.791492, 36.660553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104752, 32.819313, 36.844215>,  <35.317303, 32.836006, 36.954414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104752, 32.819313, 36.844215>,  <34.750500, 32.791492, 36.660553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104752, 32.819313, 36.844215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446050, -0.147730, 0.882731,
		0.129228, -0.986579, -0.099810,
		0.885629, 0.069553, 0.459155,
		35.370441, 32.840179, 36.981960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481869, 32.202560, 36.300041>,  <34.750500, 32.791492, 36.660553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481869, 32.202560, 36.300041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166748, 31.956419, 36.310654>,  <33.977676, 31.808735, 36.317020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166748, 31.956419, 36.310654>,  <34.481869, 32.202560, 36.300041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166748, 31.956419, 36.310654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182904, -0.274862, -0.943926,
		0.588140, -0.738777, 0.329088,
		-0.787805, -0.615353, 0.026531,
		33.930405, 31.771812, 36.318615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753105, 31.555267, 35.938866>,  <34.481869, 32.202560, 36.300041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753105, 31.555267, 35.938866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354084, 31.528742, 35.929932>,  <34.114674, 31.512827, 35.924572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354084, 31.528742, 35.929932>,  <34.753105, 31.555267, 35.938866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354084, 31.528742, 35.929932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044341, -0.352192, -0.934877,
		0.054129, -0.933576, 0.354270,
		-0.997549, -0.066313, -0.022332,
		34.054821, 31.508848, 35.923233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537766, 30.889046, 35.572659>,  <34.753105, 31.555267, 35.938866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537766, 30.889046, 35.572659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224445, 31.137377, 35.559959>,  <34.036453, 31.286375, 35.552338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224445, 31.137377, 35.559959>,  <34.537766, 30.889046, 35.572659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224445, 31.137377, 35.559959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167824, -0.260374, -0.950811,
		-0.598557, -0.739444, 0.308141,
		-0.783304, 0.620828, -0.031752,
		33.989452, 31.323626, 35.550434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813522, 30.557037, 35.313984>,  <34.537766, 30.889046, 35.572659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813522, 30.557037, 35.313984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837486, 30.946220, 35.224751>,  <33.851864, 31.179729, 35.171211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837486, 30.946220, 35.224751>,  <33.813522, 30.557037, 35.313984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837486, 30.946220, 35.224751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124624, -0.214449, -0.968752,
		-0.990394, 0.085839, 0.108407,
		0.059909, 0.972956, -0.223086,
		33.855457, 31.238108, 35.157825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194218, 30.668163, 34.859913>,  <33.813522, 30.557037, 35.313984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194218, 30.668163, 34.859913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415665, 30.997976, 34.813164>,  <33.548531, 31.195864, 34.785114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415665, 30.997976, 34.813164>,  <33.194218, 30.668163, 34.859913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415665, 30.997976, 34.813164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184111, -0.015687, -0.982780,
		-0.812165, 0.565600, 0.143121,
		0.553616, 0.824530, -0.116874,
		33.581749, 31.245335, 34.778103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710503, 31.080727, 34.542526>,  <33.194218, 30.668163, 34.859913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710503, 31.080727, 34.542526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091057, 31.183990, 34.475323>,  <33.319389, 31.245949, 34.435001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091057, 31.183990, 34.475323>,  <32.710503, 31.080727, 34.542526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091057, 31.183990, 34.475323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126853, -0.168666, -0.977476,
		-0.280683, 0.951265, -0.127717,
		0.951381, 0.258160, -0.168013,
		33.376472, 31.261438, 34.424919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649677, 31.593378, 34.038788>,  <32.710503, 31.080727, 34.542526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649677, 31.593378, 34.038788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027012, 31.464840, 34.005676>,  <33.253414, 31.387718, 33.985809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027012, 31.464840, 34.005676>,  <32.649677, 31.593378, 34.038788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027012, 31.464840, 34.005676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099070, -0.034652, -0.994477,
		0.316701, 0.946328, -0.064524,
		0.943338, -0.321344, -0.082779,
		33.310013, 31.368437, 33.980843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920330, 32.050861, 33.598183>,  <32.649677, 31.593378, 34.038788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920330, 32.050861, 33.598183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169487, 31.738411, 33.580948>,  <33.318981, 31.550941, 33.570606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169487, 31.738411, 33.580948>,  <32.920330, 32.050861, 33.598183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169487, 31.738411, 33.580948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003241, 0.052502, -0.998616,
		0.782303, 0.622167, 0.030172,
		0.622890, -0.781122, -0.043089,
		33.356354, 31.504074, 33.568020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433361, 32.139252, 33.100555>,  <32.920330, 32.050861, 33.598183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433361, 32.139252, 33.100555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399639, 31.744946, 33.158745>,  <33.379406, 31.508362, 33.193661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399639, 31.744946, 33.158745>,  <33.433361, 32.139252, 33.100555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399639, 31.744946, 33.158745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049114, -0.141708, -0.988690,
		0.995229, -0.090500, -0.036467,
		-0.084309, -0.985763, 0.145477,
		33.374348, 31.449217, 33.202389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025669, 31.835972, 32.706650>,  <33.433361, 32.139252, 33.100555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025669, 31.835972, 32.706650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756828, 31.548281, 32.777058>,  <33.595524, 31.375666, 32.819302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.756828, 31.548281, 32.777058>,  <34.025669, 31.835972, 32.706650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756828, 31.548281, 32.777058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003134, -0.234956, -0.972001,
		0.740450, -0.653838, 0.155661,
		-0.672104, -0.719230, 0.176022,
		33.555199, 31.332512, 32.829865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339241, 31.304419, 32.427418>,  <34.025669, 31.835972, 32.706650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339241, 31.304419, 32.427418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948257, 31.221060, 32.440960>,  <33.713669, 31.171043, 32.449085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948257, 31.221060, 32.440960>,  <34.339241, 31.304419, 32.427418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948257, 31.221060, 32.440960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062103, -0.437048, -0.897292,
		0.201791, -0.874962, 0.440138,
		-0.977458, -0.208399, 0.033854,
		33.655022, 31.158541, 32.451115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286243, 30.775295, 32.060928>,  <34.339241, 31.304419, 32.427418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286243, 30.775295, 32.060928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896938, 30.866581, 32.071350>,  <33.663357, 30.921352, 32.077602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896938, 30.866581, 32.071350>,  <34.286243, 30.775295, 32.060928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896938, 30.866581, 32.071350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153637, -0.562470, -0.812418,
		-0.170750, -0.794699, 0.582493,
		-0.973263, 0.228213, 0.026053,
		33.604961, 30.935045, 32.079166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039425, 30.694870, 32.252991>,  <34.286243, 30.775295, 32.060928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039425, 30.694870, 32.252991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028229, 30.423611, 31.959234>,  <35.021511, 30.260855, 31.782980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028229, 30.423611, 31.959234>,  <35.039425, 30.694870, 32.252991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028229, 30.423611, 31.959234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231967, -0.719032, 0.655122,
		-0.972321, -0.152018, 0.177433,
		-0.027990, -0.678147, -0.734393,
		35.019833, 30.220167, 31.738916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762836, 30.046198, 32.514194>,  <35.039425, 30.694870, 32.252991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762836, 30.046198, 32.514194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999477, 29.979166, 32.198746>,  <35.141464, 29.938948, 32.009476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999477, 29.979166, 32.198746>,  <34.762836, 30.046198, 32.514194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999477, 29.979166, 32.198746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336992, -0.837213, 0.430709,
		-0.732420, -0.520568, -0.438828,
		0.591606, -0.167579, -0.788619,
		35.176960, 29.928892, 31.962160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680042, 29.388756, 32.212765>,  <34.762836, 30.046198, 32.514194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680042, 29.388756, 32.212765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060497, 29.496918, 32.153133>,  <35.288769, 29.561815, 32.117355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.060497, 29.496918, 32.153133>,  <34.680042, 29.388756, 32.212765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060497, 29.496918, 32.153133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307746, -0.869609, 0.386099,
		-0.025240, -0.413111, -0.910331,
		0.951134, 0.270405, -0.149082,
		35.345837, 29.578039, 32.108410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133781, 28.825096, 31.835596>,  <34.680042, 29.388756, 32.212765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133781, 28.825096, 31.835596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328033, 29.063232, 32.091637>,  <35.444584, 29.206114, 32.245262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328033, 29.063232, 32.091637>,  <35.133781, 28.825096, 31.835596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328033, 29.063232, 32.091637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541928, -0.779592, 0.313929,
		0.685913, 0.194435, -0.701226,
		0.485631, 0.595342, 0.640102,
		35.473724, 29.241835, 32.283669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871887, 28.888704, 31.736671>,  <35.133781, 28.825096, 31.835596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871887, 28.888704, 31.736671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761166, 28.893169, 32.121017>,  <35.694733, 28.895847, 32.351624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761166, 28.893169, 32.121017>,  <35.871887, 28.888704, 31.736671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761166, 28.893169, 32.121017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525285, -0.835551, 0.161027,
		0.804647, 0.549299, 0.225418,
		-0.276800, 0.011161, 0.960863,
		35.678127, 28.896517, 32.409275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490940, 28.924601, 32.034931>,  <35.871887, 28.888704, 31.736671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490940, 28.924601, 32.034931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768932, 29.114613, 32.250839>,  <36.935726, 29.228619, 32.380386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768932, 29.114613, 32.250839>,  <36.490940, 28.924601, 32.034931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768932, 29.114613, 32.250839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498683, -0.222375, 0.837774,
		0.517998, -0.851409, 0.082343,
		0.694977, 0.475028, 0.539773,
		36.977425, 29.257122, 32.412769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588837, 28.497982, 32.558189>,  <36.490940, 28.924601, 32.034931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588837, 28.497982, 32.558189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713646, 28.860361, 32.672661>,  <36.788532, 29.077789, 32.741344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713646, 28.860361, 32.672661>,  <36.588837, 28.497982, 32.558189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713646, 28.860361, 32.672661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361807, -0.165208, 0.917498,
		0.878484, -0.389825, 0.276229,
		0.312028, 0.905949, 0.286174,
		36.807255, 29.132145, 32.758514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027039, 28.354128, 33.184460>,  <36.588837, 28.497982, 32.558189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027039, 28.354128, 33.184460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890152, 28.726524, 33.235291>,  <36.808022, 28.949963, 33.265789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890152, 28.726524, 33.235291>,  <37.027039, 28.354128, 33.184460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890152, 28.726524, 33.235291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397468, -0.265975, 0.878223,
		0.851415, 0.250034, 0.461060,
		-0.342216, 0.930989, 0.127074,
		36.787487, 29.005821, 33.273415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336380, 28.687677, 33.860641>,  <37.027039, 28.354128, 33.184460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336380, 28.687677, 33.860641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998615, 28.880350, 33.766884>,  <36.795956, 28.995955, 33.710629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998615, 28.880350, 33.766884>,  <37.336380, 28.687677, 33.860641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998615, 28.880350, 33.766884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349228, -0.163201, 0.922716,
		0.406203, 0.861015, 0.306027,
		-0.844416, 0.481684, -0.234398,
		36.745289, 29.024855, 33.696564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328785, 29.107813, 34.393497>,  <37.336380, 28.687677, 33.860641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328785, 29.107813, 34.393497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959557, 29.129049, 34.241119>,  <36.738018, 29.141790, 34.149693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959557, 29.129049, 34.241119>,  <37.328785, 29.107813, 34.393497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959557, 29.129049, 34.241119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381528, -0.001004, 0.924357,
		0.048691, 0.998590, 0.021182,
		-0.923074, 0.053089, -0.380941,
		36.682636, 29.144976, 34.126839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887970, 29.679321, 34.743050>,  <37.328785, 29.107813, 34.393497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887970, 29.679321, 34.743050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624550, 29.424253, 34.583202>,  <36.466499, 29.271214, 34.487293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624550, 29.424253, 34.583202>,  <36.887970, 29.679321, 34.743050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624550, 29.424253, 34.583202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429761, -0.117232, 0.895300,
		-0.617752, 0.761338, -0.196842,
		-0.658550, -0.637668, -0.399614,
		36.426987, 29.232952, 34.463318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248863, 29.898439, 35.022907>,  <36.887970, 29.679321, 34.743050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248863, 29.898439, 35.022907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168358, 29.528591, 34.893555>,  <36.120056, 29.306683, 34.815945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168358, 29.528591, 34.893555>,  <36.248863, 29.898439, 35.022907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168358, 29.528591, 34.893555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583217, -0.152125, 0.797944,
		-0.786988, 0.349196, -0.508636,
		-0.201263, -0.924619, -0.323378,
		36.107979, 29.251205, 34.796543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585438, 29.775501, 35.145359>,  <36.248863, 29.898439, 35.022907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585438, 29.775501, 35.145359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701149, 29.395327, 35.099773>,  <35.770576, 29.167221, 35.072422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701149, 29.395327, 35.099773>,  <35.585438, 29.775501, 35.145359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701149, 29.395327, 35.099773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497333, -0.250948, 0.830473,
		-0.817912, -0.183556, -0.545277,
		0.289275, -0.950438, -0.113965,
		35.787930, 29.110195, 35.065582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932755, 29.292236, 35.092590>,  <35.585438, 29.775501, 35.145359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932755, 29.292236, 35.092590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257828, 29.074545, 35.175880>,  <35.452873, 28.943930, 35.225853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257828, 29.074545, 35.175880>,  <34.932755, 29.292236, 35.092590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257828, 29.074545, 35.175880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449780, -0.358697, 0.817945,
		-0.370472, -0.758379, -0.536294,
		0.812680, -0.544240, 0.208216,
		35.501633, 28.911276, 35.238346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720757, 28.577898, 35.378399>,  <34.932755, 29.292236, 35.092590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720757, 28.577898, 35.378399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087845, 28.670210, 35.507721>,  <35.308098, 28.725597, 35.585316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087845, 28.670210, 35.507721>,  <34.720757, 28.577898, 35.378399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087845, 28.670210, 35.507721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275536, -0.216430, 0.936610,
		0.286123, -0.948630, -0.135034,
		0.917722, 0.230779, 0.323308,
		35.363163, 28.739443, 35.604713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693817, 28.218246, 36.001896>,  <34.720757, 28.577898, 35.378399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693817, 28.218246, 36.001896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037338, 28.419512, 36.040443>,  <35.243450, 28.540272, 36.063572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037338, 28.419512, 36.040443>,  <34.693817, 28.218246, 36.001896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037338, 28.419512, 36.040443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117656, 0.010637, 0.992997,
		0.498617, -0.864124, 0.068335,
		0.858800, 0.503166, 0.096365,
		35.294979, 28.570461, 36.069351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098099, 27.920975, 36.524452>,  <34.693817, 28.218246, 36.001896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098099, 27.920975, 36.524452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233757, 28.296568, 36.501522>,  <35.315151, 28.521925, 36.487762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233757, 28.296568, 36.501522>,  <35.098099, 27.920975, 36.524452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233757, 28.296568, 36.501522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066302, 0.036926, 0.997116,
		0.938394, -0.341970, -0.049733,
		0.339147, 0.938985, -0.057324,
		35.335503, 28.578264, 36.484325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751938, 27.948698, 36.833519>,  <35.098099, 27.920975, 36.524452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751938, 27.948698, 36.833519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612537, 28.323515, 36.842480>,  <35.528896, 28.548405, 36.847858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612537, 28.323515, 36.842480>,  <35.751938, 27.948698, 36.833519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612537, 28.323515, 36.842480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117864, 0.020096, 0.992827,
		0.929869, 0.348641, -0.117447,
		-0.348500, 0.937041, 0.022406,
		35.507988, 28.604628, 36.849201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077019, 28.354813, 37.358959>,  <35.751938, 27.948698, 36.833519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077019, 28.354813, 37.358959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770741, 28.605474, 37.300964>,  <35.586975, 28.755871, 37.266167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770741, 28.605474, 37.300964>,  <36.077019, 28.354813, 37.358959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770741, 28.605474, 37.300964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050558, 0.166086, 0.984815,
		0.641218, 0.761395, -0.095488,
		-0.765692, 0.626653, -0.144991,
		35.541035, 28.793470, 37.257465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253868, 28.961716, 37.628490>,  <36.077019, 28.354813, 37.358959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253868, 28.961716, 37.628490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856396, 29.005846, 37.636662>,  <35.617912, 29.032324, 37.641563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856396, 29.005846, 37.636662>,  <36.253868, 28.961716, 37.628490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856396, 29.005846, 37.636662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026927, 0.057705, 0.997970,
		0.108925, 0.992218, -0.060312,
		-0.993685, 0.110328, 0.020432,
		35.558289, 29.038944, 37.642792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060726, 29.305788, 38.279873>,  <36.253868, 28.961716, 37.628490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060726, 29.305788, 38.279873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685852, 29.188190, 38.204777>,  <35.460926, 29.117632, 38.159718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685852, 29.188190, 38.204777>,  <36.060726, 29.305788, 38.279873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685852, 29.188190, 38.204777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197879, 0.004834, 0.980215,
		-0.287270, 0.955795, -0.062706,
		-0.937187, -0.293994, -0.187743,
		35.404697, 29.099993, 38.148453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609619, 29.691616, 38.808296>,  <36.060726, 29.305788, 38.279873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609619, 29.691616, 38.808296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407795, 29.381012, 38.657326>,  <35.286701, 29.194649, 38.566746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.407795, 29.381012, 38.657326>,  <35.609619, 29.691616, 38.808296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407795, 29.381012, 38.657326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499227, -0.094261, 0.861329,
		-0.704407, 0.623014, -0.340095,
		-0.504562, -0.776511, -0.377424,
		35.256428, 29.148058, 38.544098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843468, 29.945147, 38.772400>,  <35.609619, 29.691616, 38.808296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843468, 29.945147, 38.772400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866154, 29.546236, 38.753525>,  <34.879765, 29.306890, 38.742199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866154, 29.546236, 38.753525>,  <34.843468, 29.945147, 38.772400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866154, 29.546236, 38.753525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489179, -0.068958, 0.869453,
		-0.870337, -0.026229, -0.491757,
		0.056716, -0.997275, -0.047186,
		34.883167, 29.247053, 38.739368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144749, 29.672445, 38.877140>,  <34.843468, 29.945147, 38.772400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144749, 29.672445, 38.877140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403309, 29.379990, 38.964413>,  <34.558445, 29.204515, 39.016777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403309, 29.379990, 38.964413>,  <34.144749, 29.672445, 38.877140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403309, 29.379990, 38.964413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523505, -0.216951, 0.823939,
		-0.555081, -0.646811, -0.522992,
		0.646397, -0.731142, 0.218183,
		34.597229, 29.160646, 39.029869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765240, 29.063171, 39.059956>,  <34.144749, 29.672445, 38.877140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765240, 29.063171, 39.059956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115120, 28.992826, 39.240612>,  <34.325047, 28.950619, 39.349007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115120, 28.992826, 39.240612>,  <33.765240, 29.063171, 39.059956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115120, 28.992826, 39.240612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484270, -0.354978, 0.799671,
		0.019690, -0.918185, -0.395663,
		0.874697, -0.175862, 0.451639,
		34.377529, 28.940067, 39.376102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616005, 28.464457, 39.347466>,  <33.765240, 29.063171, 39.059956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616005, 28.464457, 39.347466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963760, 28.548674, 39.526276>,  <34.172413, 28.599203, 39.633560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963760, 28.548674, 39.526276>,  <33.616005, 28.464457, 39.347466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963760, 28.548674, 39.526276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348471, -0.380162, 0.856764,
		0.350326, -0.900638, -0.257142,
		0.869390, 0.210541, 0.447027,
		34.224579, 28.611835, 39.660385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883202, 27.852098, 39.581860>,  <33.616005, 28.464457, 39.347466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883202, 27.852098, 39.581860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036350, 28.149464, 39.801224>,  <34.128239, 28.327883, 39.932842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036350, 28.149464, 39.801224>,  <33.883202, 27.852098, 39.581860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036350, 28.149464, 39.801224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255854, -0.485087, 0.836199,
		0.887666, -0.460466, 0.004481,
		0.382867, 0.743412, 0.548407,
		34.151211, 28.372488, 39.965748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363415, 27.626196, 40.001865>,  <33.883202, 27.852098, 39.581860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363415, 27.626196, 40.001865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281212, 27.976156, 40.177277>,  <34.231892, 28.186132, 40.282524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281212, 27.976156, 40.177277>,  <34.363415, 27.626196, 40.001865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281212, 27.976156, 40.177277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067914, -0.459766, 0.885439,
		0.976296, 0.152183, 0.153904,
		-0.205508, 0.874903, 0.438533,
		34.219559, 28.238626, 40.308838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728252, 27.560974, 40.614388>,  <34.363415, 27.626196, 40.001865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728252, 27.560974, 40.614388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451862, 27.845573, 40.665489>,  <34.286026, 28.016333, 40.696148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451862, 27.845573, 40.665489>,  <34.728252, 27.560974, 40.614388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451862, 27.845573, 40.665489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139102, -0.304295, 0.942367,
		0.709366, 0.633384, 0.309232,
		-0.690978, 0.711497, 0.127752,
		34.244568, 28.059023, 40.703815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845539, 27.905462, 41.262466>,  <34.728252, 27.560974, 40.614388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845539, 27.905462, 41.262466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462700, 27.936012, 41.150661>,  <34.232998, 27.954342, 41.083576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462700, 27.936012, 41.150661>,  <34.845539, 27.905462, 41.262466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462700, 27.936012, 41.150661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287324, -0.375014, 0.881368,
		-0.037506, 0.923867, 0.380870,
		-0.957099, 0.076376, -0.279514,
		34.175571, 27.958925, 41.066807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212486, 28.385710, 41.606579>,  <34.845539, 27.905462, 41.262466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212486, 28.385710, 41.606579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554527, 28.296934, 41.793999>,  <35.759754, 28.243670, 41.906452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554527, 28.296934, 41.793999>,  <35.212486, 28.385710, 41.606579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554527, 28.296934, 41.793999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508951, 0.187088, -0.840218,
		0.098815, 0.956944, 0.272935,
		0.855105, -0.221937, 0.468551,
		35.811058, 28.230352, 41.934563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670845, 28.838745, 41.329880>,  <35.212486, 28.385710, 41.606579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670845, 28.838745, 41.329880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915932, 28.563871, 41.486012>,  <36.062984, 28.398947, 41.579689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915932, 28.563871, 41.486012>,  <35.670845, 28.838745, 41.329880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915932, 28.563871, 41.486012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714251, 0.270101, -0.645671,
		0.338265, 0.674408, 0.656316,
		0.612717, -0.687182, 0.390331,
		36.099747, 28.357718, 41.603111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411499, 29.144253, 41.458641>,  <35.670845, 28.838745, 41.329880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411499, 29.144253, 41.458641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470024, 28.748981, 41.440311>,  <36.505138, 28.511820, 41.429314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.470024, 28.748981, 41.440311>,  <36.411499, 29.144253, 41.458641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470024, 28.748981, 41.440311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679990, 0.134106, -0.720853,
		0.718475, 0.074308, 0.691572,
		0.146309, -0.988177, -0.045823,
		36.513916, 28.452528, 41.426563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207455, 29.065657, 41.478310>,  <36.411499, 29.144253, 41.458641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207455, 29.065657, 41.478310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036770, 28.732868, 41.336472>,  <36.934361, 28.533195, 41.251369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.036770, 28.732868, 41.336472>,  <37.207455, 29.065657, 41.478310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036770, 28.732868, 41.336472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549900, 0.072603, -0.832069,
		0.718004, -0.550045, 0.426522,
		-0.426709, -0.831973, -0.354599,
		36.908756, 28.483276, 41.230091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805958, 28.611874, 41.334019>,  <37.207455, 29.065657, 41.478310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805958, 28.611874, 41.334019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499592, 28.483791, 41.111008>,  <37.315773, 28.406942, 40.977200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499592, 28.483791, 41.111008>,  <37.805958, 28.611874, 41.334019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499592, 28.483791, 41.111008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573798, 0.050770, -0.817422,
		0.290051, -0.945986, 0.144849,
		-0.765916, -0.320208, -0.557531,
		37.269817, 28.387730, 40.943748>
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
