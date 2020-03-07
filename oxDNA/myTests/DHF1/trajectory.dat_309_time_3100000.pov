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
	<1.845291, -0.216041, -0.117994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.599743, -0.462662, 0.079197>,  <1.452414, -0.610634, 0.197511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.599743, -0.462662, 0.079197>,  <1.845291, -0.216041, -0.117994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.599743, -0.462662, 0.079197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002984, 0.622674, 0.782475,
		-0.789401, 0.481810, -0.380402,
		-0.613871, -0.616552, 0.492977,
		1.415582, -0.647627, 0.227090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.153523, 0.165787, 0.026933>,  <1.845291, -0.216041, -0.117994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.153523, 0.165787, 0.026933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.302238, -0.111832, 0.273533>,  <1.391468, -0.278403, 0.421493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.302238, -0.111832, 0.273533>,  <1.153523, 0.165787, 0.026933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.302238, -0.111832, 0.273533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307289, 0.534655, 0.787222,
		-0.875983, -0.482123, -0.014495,
		0.371788, -0.694047, 0.616500,
		1.413775, -0.320046, 0.458483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.695797, 0.026406, 0.623516>,  <1.153523, 0.165787, 0.026933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.695797, 0.026406, 0.623516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.057522, -0.096451, 0.742096>,  <1.274557, -0.170165, 0.813244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.057522, -0.096451, 0.742096>,  <0.695797, 0.026406, 0.623516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.057522, -0.096451, 0.742096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097897, 0.526740, 0.844371,
		-0.415495, -0.792596, 0.446269,
		0.904312, -0.307143, 0.296450,
		1.328815, -0.188594, 0.831031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.915783, -0.427783, 1.234626>,  <0.695797, 0.026406, 0.623516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.915783, -0.427783, 1.234626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.171806, -0.126160, 1.175671>,  <1.325420, 0.054814, 1.140297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.171806, -0.126160, 1.175671>,  <0.915783, -0.427783, 1.234626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.171806, -0.126160, 1.175671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267655, 0.398645, 0.877179,
		0.720200, -0.521995, 0.456983,
		0.640057, 0.754058, -0.147390,
		1.363824, 0.100058, 1.131454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.396847, -0.435307, 1.850157>,  <0.915783, -0.427783, 1.234626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.396847, -0.435307, 1.850157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.335186, -0.089737, 1.658379>,  <1.298190, 0.117605, 1.543311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.335186, -0.089737, 1.658379>,  <1.396847, -0.435307, 1.850157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.335186, -0.089737, 1.658379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156407, 0.457792, 0.875193,
		0.975589, 0.209901, 0.064554,
		-0.154152, 0.863926, -0.479447,
		1.288941, 0.169441, 1.514544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.717902, 0.062687, 2.281792>,  <1.396847, -0.435307, 1.850157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.717902, 0.062687, 2.281792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.447491, 0.257004, 2.060165>,  <1.285244, 0.373594, 1.927189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.447491, 0.257004, 2.060165>,  <1.717902, 0.062687, 2.281792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.447491, 0.257004, 2.060165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265555, 0.540777, 0.798148,
		0.687361, 0.686707, -0.236577,
		-0.676029, 0.485791, -0.554068,
		1.244682, 0.402741, 1.893945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.793318, 0.833542, 2.372686>,  <1.717902, 0.062687, 2.281792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.793318, 0.833542, 2.372686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.413696, 0.766464, 2.265972>,  <1.185923, 0.726217, 2.201944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.413696, 0.766464, 2.265972>,  <1.793318, 0.833542, 2.372686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.413696, 0.766464, 2.265972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310471, 0.352854, 0.882668,
		-0.053883, 0.920528, -0.386942,
		-0.949054, -0.167695, -0.266784,
		1.128980, 0.716156, 2.185937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.276530, 1.380607, 2.694678>,  <1.793318, 0.833542, 2.372686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.276530, 1.380607, 2.694678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.049515, 1.057205, 2.632423>,  <0.913306, 0.863164, 2.595071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.049515, 1.057205, 2.632423>,  <1.276530, 1.380607, 2.694678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.049515, 1.057205, 2.632423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449675, 0.146028, 0.881174,
		-0.689705, 0.570085, -0.446440,
		-0.567537, -0.808504, -0.155637,
		0.879254, 0.814654, 2.585732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.093362, 1.066966, 4.137884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.116455, 0.674103, 4.066296>,  <-0.130311, 0.438385, 4.023343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.116455, 0.674103, 4.066296>,  <-0.093362, 1.066966, 4.137884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.116455, 0.674103, 4.066296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368375, 0.145661, -0.918196,
		0.927883, -0.118939, 0.353393,
		-0.057733, -0.982159, -0.178971,
		-0.133775, 0.379455, 4.012604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.548939, 0.901486, 3.790272>,  <-0.093362, 1.066966, 4.137884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.548939, 0.901486, 3.790272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.248199, 0.654251, 3.698456>,  <0.067755, 0.505910, 3.643366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.248199, 0.654251, 3.698456>,  <0.548939, 0.901486, 3.790272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.248199, 0.654251, 3.698456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227205, 0.083937, -0.970223,
		0.618950, -0.781615, 0.077325,
		-0.751850, -0.618088, -0.229539,
		0.022644, 0.468825, 3.629594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.776186, 0.230905, 3.430206>,  <0.548939, 0.901486, 3.790272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.776186, 0.230905, 3.430206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.414053, 0.351318, 3.310371>,  <0.196773, 0.423566, 3.238471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.414053, 0.351318, 3.310371>,  <0.776186, 0.230905, 3.430206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.414053, 0.351318, 3.310371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321787, 0.025840, -0.946459,
		-0.277175, -0.953263, -0.120262,
		-0.905333, 0.301034, -0.299586,
		0.142453, 0.441628, 3.220496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.294200, -0.197554, 2.941780>,  <0.776186, 0.230905, 3.430206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.294200, -0.197554, 2.941780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.300226, 0.200424, 2.902065>,  <0.303842, 0.439211, 2.878237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.300226, 0.200424, 2.902065>,  <0.294200, -0.197554, 2.941780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.300226, 0.200424, 2.902065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427060, -0.096188, -0.899092,
		-0.904098, -0.028856, -0.426351,
		0.015066, 0.994945, -0.099287,
		0.304746, 0.498908, 2.872279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.028559, -0.028209, 2.316594>,  <0.294200, -0.197554, 2.941780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.028559, -0.028209, 2.316594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.264324, 0.291046, 2.366501>,  <0.405783, 0.482599, 2.396445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.264324, 0.291046, 2.366501>,  <0.028559, -0.028209, 2.316594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.264324, 0.291046, 2.366501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416556, -0.167952, -0.893462,
		-0.692151, 0.578591, -0.431462,
		0.589414, 0.798138, 0.124767,
		0.441148, 0.530488, 2.403931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.080812, 0.528819, 1.755745>,  <0.028559, -0.028209, 2.316594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.080812, 0.528819, 1.755745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.295790, 0.537369, 1.890274>,  <0.521751, 0.542499, 1.970991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.295790, 0.537369, 1.890274>,  <-0.080812, 0.528819, 1.755745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.295790, 0.537369, 1.890274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336299, -0.123967, -0.933561,
		0.021739, 0.992056, -0.123903,
		0.941505, 0.021374, 0.336322,
		0.578241, 0.543781, 1.991171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.264399, 0.854455, 1.233762>,  <-0.080812, 0.528819, 1.755745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.264399, 0.854455, 1.233762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.576157, 0.731705, 1.452255>,  <0.763211, 0.658055, 1.583351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.576157, 0.731705, 1.452255>,  <0.264399, 0.854455, 1.233762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.576157, 0.731705, 1.452255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554893, -0.066735, -0.829241,
		0.290926, 0.949407, 0.118270,
		0.779395, -0.306875, 0.546234,
		0.809975, 0.639642, 1.616125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.806711, 1.220936, 0.998301>,  <0.264399, 0.854455, 1.233762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.806711, 1.220936, 0.998301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.973991, 0.904800, 1.177399>,  <1.074360, 0.715119, 1.284857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.973991, 0.904800, 1.177399>,  <0.806711, 1.220936, 0.998301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.973991, 0.904800, 1.177399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515197, -0.199589, -0.833509,
		0.748118, 0.579250, 0.323711,
		0.418201, -0.790338, 0.447744,
		1.099452, 0.667699, 1.311722>
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
