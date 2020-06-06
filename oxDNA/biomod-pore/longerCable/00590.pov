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
	<24.609621, 35.158634, 34.828373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213129, 35.132671, 34.874416>,  <23.975233, 35.117096, 34.902042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.213129, 35.132671, 34.874416>,  <24.609621, 35.158634, 34.828373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.213129, 35.132671, 34.874416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037548, 0.973504, 0.225565,
		-0.126698, 0.219265, -0.967404,
		-0.991230, -0.064902, 0.115108,
		23.915760, 35.113201, 34.908947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.592585, 35.897484, 34.693062>,  <24.609621, 35.158634, 34.828373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.592585, 35.897484, 34.693062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.712059, 35.639481, 34.411709>,  <24.783745, 35.484676, 34.242897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.712059, 35.639481, 34.411709>,  <24.592585, 35.897484, 34.693062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.712059, 35.639481, 34.411709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913383, 0.020423, -0.406589,
		0.276619, 0.763901, -0.583041,
		0.298687, -0.645010, -0.703383,
		24.801664, 35.445976, 34.200695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211134, 36.017071, 35.021339>,  <24.592585, 35.897484, 34.693062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211134, 36.017071, 35.021339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300165, 36.390591, 35.133389>,  <25.353584, 36.614704, 35.200619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300165, 36.390591, 35.133389>,  <25.211134, 36.017071, 35.021339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.300165, 36.390591, 35.133389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853759, -0.325426, 0.406441,
		0.470696, 0.148695, -0.869675,
		0.222579, 0.933803, 0.280127,
		25.366940, 36.670731, 35.217426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785986, 36.310844, 34.602730>,  <25.211134, 36.017071, 35.021339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785986, 36.310844, 34.602730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763895, 36.473915, 34.967312>,  <25.750641, 36.571758, 35.186062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763895, 36.473915, 34.967312>,  <25.785986, 36.310844, 34.602730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763895, 36.473915, 34.967312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819375, -0.503154, 0.274702,
		0.570592, 0.761993, -0.306253,
		-0.055229, 0.407679, 0.911454,
		25.747326, 36.596218, 35.240749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341585, 36.753006, 34.871479>,  <25.785986, 36.310844, 34.602730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341585, 36.753006, 34.871479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207397, 36.542088, 35.183743>,  <26.126884, 36.415535, 35.371101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207397, 36.542088, 35.183743>,  <26.341585, 36.753006, 34.871479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207397, 36.542088, 35.183743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890875, -0.446984, 0.080915,
		0.306274, 0.722610, 0.619703,
		-0.335467, -0.527295, 0.780655,
		26.106758, 36.383900, 35.417938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825127, 36.758396, 35.466763>,  <26.341585, 36.753006, 34.871479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825127, 36.758396, 35.466763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619644, 36.415859, 35.487843>,  <26.496355, 36.210335, 35.500492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619644, 36.415859, 35.487843>,  <26.825127, 36.758396, 35.466763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619644, 36.415859, 35.487843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846328, -0.515864, -0.132713,
		0.140836, -0.023572, 0.989752,
		-0.513706, -0.856346, 0.052703,
		26.465532, 36.158955, 35.503654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101065, 37.156979, 34.864754>,  <26.825127, 36.758396, 35.466763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101065, 37.156979, 34.864754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.095530, 36.962967, 34.514999>,  <27.092209, 36.846558, 34.305145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.095530, 36.962967, 34.514999>,  <27.101065, 37.156979, 34.864754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095530, 36.962967, 34.514999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641657, -0.666360, 0.379791,
		-0.766867, 0.566311, -0.302004,
		-0.013837, -0.485032, -0.874387,
		27.091379, 36.817459, 34.252682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621252, 37.064869, 34.346855>,  <27.101065, 37.156979, 34.864754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621252, 37.064869, 34.346855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656263, 37.348770, 34.626453>,  <27.677271, 37.519112, 34.794212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.656263, 37.348770, 34.626453>,  <27.621252, 37.064869, 34.346855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656263, 37.348770, 34.626453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347664, 0.635803, -0.689118,
		-0.933525, 0.303333, -0.191103,
		0.087528, 0.709749, 0.698996,
		27.682522, 37.561695, 34.836151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291828, 37.649712, 33.981762>,  <27.621252, 37.064869, 34.346855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291828, 37.649712, 33.981762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586784, 37.683941, 34.249771>,  <27.763758, 37.704479, 34.410576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586784, 37.683941, 34.249771>,  <27.291828, 37.649712, 33.981762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586784, 37.683941, 34.249771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478124, 0.634553, -0.607240,
		-0.477128, 0.768128, 0.427000,
		0.737392, 0.085572, 0.670023,
		27.808002, 37.709614, 34.450779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343111, 38.307396, 34.106678>,  <27.291828, 37.649712, 33.981762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343111, 38.307396, 34.106678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700895, 38.160793, 34.209141>,  <27.915565, 38.072834, 34.270618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700895, 38.160793, 34.209141>,  <27.343111, 38.307396, 34.106678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700895, 38.160793, 34.209141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447139, 0.729969, -0.516926,
		0.002471, 0.576907, 0.816807,
		0.894461, -0.366504, 0.256154,
		27.969234, 38.050842, 34.285988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778025, 38.845734, 34.157238>,  <27.343111, 38.307396, 34.106678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778025, 38.845734, 34.157238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024607, 38.537025, 34.094810>,  <28.172556, 38.351799, 34.057354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.024607, 38.537025, 34.094810>,  <27.778025, 38.845734, 34.157238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.024607, 38.537025, 34.094810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635170, 0.604551, -0.480705,
		0.465344, 0.197204, 0.862882,
		0.616453, -0.771770, -0.156066,
		28.209543, 38.305496, 34.047989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407028, 39.036808, 34.265697>,  <27.778025, 38.845734, 34.157238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407028, 39.036808, 34.265697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482368, 38.738739, 34.009808>,  <28.527573, 38.559898, 33.856274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482368, 38.738739, 34.009808>,  <28.407028, 39.036808, 34.265697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482368, 38.738739, 34.009808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578364, 0.610609, -0.540973,
		0.793737, -0.268100, 0.545989,
		0.188351, -0.745170, -0.639723,
		28.538874, 38.515186, 33.817890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096577, 38.838970, 34.323193>,  <28.407028, 39.036808, 34.265697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096577, 38.838970, 34.323193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946455, 38.783062, 33.956673>,  <28.856382, 38.749516, 33.736759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946455, 38.783062, 33.956673>,  <29.096577, 38.838970, 34.323193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946455, 38.783062, 33.956673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646993, 0.668391, -0.366951,
		0.663739, -0.730559, -0.160418,
		-0.375302, -0.139771, -0.916304,
		28.833864, 38.741131, 33.681782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341209, 39.248035, 34.920761>,  <29.096577, 38.838970, 34.323193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341209, 39.248035, 34.920761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599434, 38.958736, 35.018867>,  <29.754370, 38.785156, 35.077732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599434, 38.958736, 35.018867>,  <29.341209, 39.248035, 34.920761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599434, 38.958736, 35.018867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740730, -0.514786, 0.431642,
		-0.185925, -0.460330, -0.868060,
		0.645563, -0.723251, 0.245268,
		29.793102, 38.741760, 35.092449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002920, 39.217529, 34.815472>,  <29.341209, 39.248035, 34.920761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002920, 39.217529, 34.815472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262556, 38.927204, 34.906578>,  <30.418339, 38.753010, 34.961243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262556, 38.927204, 34.906578>,  <30.002920, 39.217529, 34.815472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262556, 38.927204, 34.906578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750281, 0.660233, -0.034224,
		-0.125537, 0.193102, 0.973115,
		0.649091, -0.725813, 0.227764,
		30.457283, 38.709461, 34.974907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313890, 39.551674, 35.339081>,  <30.002920, 39.217529, 34.815472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313890, 39.551674, 35.339081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562370, 39.289070, 35.167919>,  <30.711458, 39.131508, 35.065224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562370, 39.289070, 35.167919>,  <30.313890, 39.551674, 35.339081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562370, 39.289070, 35.167919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645009, 0.738452, -0.196599,
		0.445055, -0.153873, 0.882184,
		0.621200, -0.656514, -0.427902,
		30.748730, 39.092117, 35.039547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873777, 39.445950, 35.718704>,  <30.313890, 39.551674, 35.339081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873777, 39.445950, 35.718704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939369, 39.406784, 35.326069>,  <30.978724, 39.383286, 35.090488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939369, 39.406784, 35.326069>,  <30.873777, 39.445950, 35.718704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939369, 39.406784, 35.326069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515660, 0.856793, 0.000677,
		0.840955, -0.506279, 0.190987,
		0.163979, -0.097915, -0.981592,
		30.988564, 39.377411, 35.031590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501875, 39.649590, 35.762218>,  <30.873777, 39.445950, 35.718704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501875, 39.649590, 35.762218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366802, 39.701275, 35.389278>,  <31.285759, 39.732285, 35.165516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.366802, 39.701275, 35.389278>,  <31.501875, 39.649590, 35.762218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366802, 39.701275, 35.389278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567181, 0.818439, -0.091996,
		0.751185, -0.559877, -0.349658,
		-0.337680, 0.129214, -0.932350,
		31.265499, 39.740040, 35.109573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933302, 39.710487, 35.224060>,  <31.501875, 39.649590, 35.762218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933302, 39.710487, 35.224060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627934, 39.961575, 35.163177>,  <31.444714, 40.112225, 35.126648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627934, 39.961575, 35.163177>,  <31.933302, 39.710487, 35.224060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627934, 39.961575, 35.163177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640464, 0.766189, -0.052532,
		0.083641, -0.137584, -0.986952,
		-0.763420, 0.627714, -0.152203,
		31.398907, 40.149887, 35.117516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870417, 40.152172, 34.630672>,  <31.933302, 39.710487, 35.224060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870417, 40.152172, 34.630672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715733, 40.359653, 34.935673>,  <31.622921, 40.484142, 35.118671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715733, 40.359653, 34.935673>,  <31.870417, 40.152172, 34.630672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715733, 40.359653, 34.935673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657874, 0.734591, -0.166066,
		-0.646263, 0.437408, -0.625315,
		-0.386712, 0.518701, 0.762498,
		31.599718, 40.515263, 35.164421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173414, 40.018845, 34.307358>,  <31.870417, 40.152172, 34.630672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173414, 40.018845, 34.307358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459126, 39.823364, 34.507748>,  <31.630552, 39.706078, 34.627983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459126, 39.823364, 34.507748>,  <31.173414, 40.018845, 34.307358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459126, 39.823364, 34.507748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429062, -0.871300, -0.238204,
		0.552912, -0.044806, -0.832034,
		0.714279, -0.488700, 0.500977,
		31.673409, 39.676754, 34.658039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417700, 39.523048, 33.852039>,  <31.173414, 40.018845, 34.307358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417700, 39.523048, 33.852039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479679, 39.410999, 34.230991>,  <31.516867, 39.343769, 34.458363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479679, 39.410999, 34.230991>,  <31.417700, 39.523048, 33.852039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479679, 39.410999, 34.230991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412791, -0.889591, -0.195526,
		0.897549, -0.360772, -0.253475,
		0.154949, -0.280127, 0.947375,
		31.526163, 39.326962, 34.515205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183325, 38.804203, 33.947083>,  <31.417700, 39.523048, 33.852039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183325, 38.804203, 33.947083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250010, 38.897827, 34.330212>,  <31.290020, 38.954002, 34.560089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250010, 38.897827, 34.330212>,  <31.183325, 38.804203, 33.947083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250010, 38.897827, 34.330212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641390, -0.712059, 0.285641,
		0.748884, -0.661956, 0.031419,
		0.166710, 0.234063, 0.957821,
		31.300022, 38.968044, 34.617558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488325, 38.221241, 34.488350>,  <31.183325, 38.804203, 33.947083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488325, 38.221241, 34.488350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272757, 38.495152, 34.684574>,  <31.143415, 38.659496, 34.802307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272757, 38.495152, 34.684574>,  <31.488325, 38.221241, 34.488350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272757, 38.495152, 34.684574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622145, -0.716184, 0.316253,
		0.567892, -0.134763, 0.811996,
		-0.538920, 0.684777, 0.490557,
		31.111080, 38.700584, 34.831741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477060, 37.955860, 35.138214>,  <31.488325, 38.221241, 34.488350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477060, 37.955860, 35.138214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161716, 38.187637, 35.055523>,  <30.972509, 38.326702, 35.005909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.161716, 38.187637, 35.055523>,  <31.477060, 37.955860, 35.138214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.161716, 38.187637, 35.055523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614979, -0.751541, 0.238717,
		-0.017042, 0.315328, 0.948830,
		-0.788359, 0.579442, -0.206728,
		30.925209, 38.361469, 34.993504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158260, 37.907684, 35.700611>,  <31.477060, 37.955860, 35.138214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158260, 37.907684, 35.700611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921240, 37.983479, 35.387440>,  <30.779028, 38.028957, 35.199535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921240, 37.983479, 35.387440>,  <31.158260, 37.907684, 35.700611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921240, 37.983479, 35.387440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526487, -0.826714, 0.198380,
		-0.609668, 0.529753, 0.589633,
		-0.592550, 0.189488, -0.782929,
		30.743475, 38.040325, 35.152561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382145, 37.558884, 36.455734>,  <31.158260, 37.907684, 35.700611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382145, 37.558884, 36.455734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374844, 37.612694, 36.852032>,  <31.370462, 37.644981, 37.089809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374844, 37.612694, 36.852032>,  <31.382145, 37.558884, 36.455734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374844, 37.612694, 36.852032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887258, 0.454618, -0.078075,
		-0.460912, -0.880469, 0.111061,
		-0.018252, 0.134526, 0.990742,
		31.369368, 37.653053, 37.149254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906252, 37.146122, 36.525185>,  <31.382145, 37.558884, 36.455734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906252, 37.146122, 36.525185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665451, 36.917957, 36.748692>,  <30.520969, 36.781059, 36.882797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665451, 36.917957, 36.748692>,  <30.906252, 37.146122, 36.525185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665451, 36.917957, 36.748692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699260, -0.714464, 0.024018,
		0.385520, 0.405184, 0.828975,
		-0.602004, -0.570410, 0.558769,
		30.484850, 36.746834, 36.916321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071596, 36.781494, 37.033199>,  <30.906252, 37.146122, 36.525185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071596, 36.781494, 37.033199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812284, 36.482742, 37.092407>,  <30.656698, 36.303493, 37.127934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812284, 36.482742, 37.092407>,  <31.071596, 36.781494, 37.033199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812284, 36.482742, 37.092407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761283, -0.632340, 0.143507,
		-0.013581, 0.205720, 0.978517,
		-0.648278, -0.746877, 0.148023,
		30.617802, 36.258678, 37.136814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382193, 36.563488, 37.746010>,  <31.071596, 36.781494, 37.033199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382193, 36.563488, 37.746010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156404, 36.308834, 37.535839>,  <31.020931, 36.156044, 37.409737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156404, 36.308834, 37.535839>,  <31.382193, 36.563488, 37.746010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156404, 36.308834, 37.535839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639075, -0.739929, 0.209969,
		-0.522454, -0.217269, 0.824522,
		-0.564468, -0.636631, -0.525431,
		30.987064, 36.117844, 37.378208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356937, 35.974609, 38.130573>,  <31.382193, 36.563488, 37.746010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356937, 35.974609, 38.130573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209988, 35.850964, 37.779690>,  <31.121819, 35.776775, 37.569160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209988, 35.850964, 37.779690>,  <31.356937, 35.974609, 38.130573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209988, 35.850964, 37.779690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560345, -0.826329, 0.056513,
		-0.742328, -0.470776, 0.476780,
		-0.367373, -0.309113, -0.877204,
		31.099775, 35.758228, 37.516529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335573, 35.264874, 38.085140>,  <31.356937, 35.974609, 38.130573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335573, 35.264874, 38.085140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305944, 35.332973, 37.692097>,  <31.288168, 35.373833, 37.456268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305944, 35.332973, 37.692097>,  <31.335573, 35.264874, 38.085140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305944, 35.332973, 37.692097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551960, -0.813636, -0.182584,
		-0.830574, -0.555887, -0.033706,
		-0.074072, 0.170254, -0.982612,
		31.283722, 35.384048, 37.397312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979887, 34.747589, 37.732574>,  <31.335573, 35.264874, 38.085140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979887, 34.747589, 37.732574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289902, 34.940639, 37.569412>,  <31.475910, 35.056469, 37.471516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289902, 34.940639, 37.569412>,  <30.979887, 34.747589, 37.732574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289902, 34.940639, 37.569412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500235, -0.863005, -0.070620,
		-0.386110, -0.149317, -0.910287,
		0.775038, 0.482625, -0.407909,
		31.522413, 35.085426, 37.447041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187113, 34.320457, 37.185760>,  <30.979887, 34.747589, 37.732574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187113, 34.320457, 37.185760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484818, 34.551090, 37.320595>,  <31.663441, 34.689472, 37.401493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484818, 34.551090, 37.320595>,  <31.187113, 34.320457, 37.185760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484818, 34.551090, 37.320595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595111, -0.801606, 0.057189,
		0.303182, 0.158038, -0.939737,
		0.744261, 0.576586, 0.337082,
		31.708096, 34.724068, 37.421719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693649, 33.954792, 37.526367>,  <31.187113, 34.320457, 37.185760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693649, 33.954792, 37.526367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029331, 34.165871, 37.578934>,  <32.230740, 34.292519, 37.610474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029331, 34.165871, 37.578934>,  <31.693649, 33.954792, 37.526367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029331, 34.165871, 37.578934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488885, 0.837912, -0.242682,
		-0.238177, 0.139413, 0.961164,
		0.839204, 0.527700, 0.131415,
		32.281094, 34.324181, 37.618359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148926, 33.657825, 38.118755>,  <31.693649, 33.954792, 37.526367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148926, 33.657825, 38.118755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905087, 33.744781, 38.423683>,  <31.758781, 33.796955, 38.606640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905087, 33.744781, 38.423683>,  <32.148926, 33.657825, 38.118755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905087, 33.744781, 38.423683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537730, 0.593170, -0.599162,
		-0.582437, -0.775171, -0.244699,
		-0.609601, 0.217392, 0.762317,
		31.722206, 33.809998, 38.652378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937157, 33.474388, 38.026031>,  <32.148926, 33.657825, 38.118755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937157, 33.474388, 38.026031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314724, 33.573956, 38.112797>,  <33.541264, 33.633698, 38.164856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314724, 33.573956, 38.112797>,  <32.937157, 33.474388, 38.026031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314724, 33.573956, 38.112797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168256, -0.927918, 0.332652,
		0.284084, -0.277500, -0.917764,
		0.943920, 0.248920, 0.216916,
		33.597900, 33.648632, 38.177872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439579, 33.048954, 37.752850>,  <32.937157, 33.474388, 38.026031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439579, 33.048954, 37.752850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566422, 33.207680, 38.097404>,  <33.642529, 33.302914, 38.304138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.566422, 33.207680, 38.097404>,  <33.439579, 33.048954, 37.752850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566422, 33.207680, 38.097404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216346, -0.914579, 0.341672,
		0.923384, 0.078012, -0.375867,
		0.317105, 0.396812, 0.861385,
		33.661552, 33.326725, 38.355820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121113, 32.909000, 37.971935>,  <33.439579, 33.048954, 37.752850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121113, 32.909000, 37.971935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910431, 32.950909, 38.309364>,  <33.784023, 32.976051, 38.511822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910431, 32.950909, 38.309364>,  <34.121113, 32.909000, 37.971935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910431, 32.950909, 38.309364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432786, -0.821078, 0.372193,
		0.731631, 0.561119, 0.387120,
		-0.526700, 0.104768, 0.843570,
		33.752422, 32.982338, 38.562435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381912, 32.387917, 37.513264>,  <34.121113, 32.909000, 37.971935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381912, 32.387917, 37.513264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199574, 32.456100, 37.163830>,  <34.090168, 32.497013, 36.954170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199574, 32.456100, 37.163830>,  <34.381912, 32.387917, 37.513264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199574, 32.456100, 37.163830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640642, -0.744195, 0.189083,
		-0.617883, 0.645846, 0.448446,
		-0.455850, 0.170462, -0.873581,
		34.062817, 32.507240, 36.901756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927464, 31.841213, 37.605816>,  <34.381912, 32.387917, 37.513264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927464, 31.841213, 37.605816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845310, 32.167835, 37.821613>,  <34.796017, 32.363808, 37.951092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845310, 32.167835, 37.821613>,  <34.927464, 31.841213, 37.605816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845310, 32.167835, 37.821613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827696, 0.439079, -0.349468,
		-0.522240, 0.374759, -0.766042,
		-0.205387, 0.816557, 0.539492,
		34.783695, 32.412804, 37.983459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961868, 32.371128, 37.103119>,  <34.927464, 31.841213, 37.605816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961868, 32.371128, 37.103119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040024, 32.484650, 37.478622>,  <35.086918, 32.552765, 37.703926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040024, 32.484650, 37.478622>,  <34.961868, 32.371128, 37.103119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040024, 32.484650, 37.478622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907417, 0.310807, -0.282832,
		-0.372044, 0.907112, -0.196802,
		0.195393, 0.283807, 0.938763,
		35.098640, 32.569790, 37.760250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206913, 33.070415, 37.202667>,  <34.961868, 32.371128, 37.103119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206913, 33.070415, 37.202667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378593, 32.850986, 37.489681>,  <35.481602, 32.719330, 37.661888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378593, 32.850986, 37.489681>,  <35.206913, 33.070415, 37.202667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378593, 32.850986, 37.489681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902271, 0.296609, -0.312939,
		-0.041155, 0.781721, 0.622269,
		0.429201, -0.548576, 0.717531,
		35.507355, 32.686413, 37.704941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635204, 33.389568, 37.777836>,  <35.206913, 33.070415, 37.202667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635204, 33.389568, 37.777836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783047, 33.029400, 37.686066>,  <35.871754, 32.813301, 37.631004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.783047, 33.029400, 37.686066>,  <35.635204, 33.389568, 37.777836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783047, 33.029400, 37.686066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929164, 0.359927, 0.084297,
		0.006673, -0.244331, 0.969669,
		0.369606, -0.900419, -0.229425,
		35.893929, 32.759274, 37.617237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302891, 33.289047, 38.146278>,  <35.635204, 33.389568, 37.777836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302891, 33.289047, 38.146278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316635, 33.065727, 37.814709>,  <36.324883, 32.931736, 37.615765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316635, 33.065727, 37.814709>,  <36.302891, 33.289047, 38.146278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316635, 33.065727, 37.814709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906380, 0.366852, -0.209512,
		0.421064, -0.744124, 0.518636,
		0.034359, -0.558300, -0.828927,
		36.326942, 32.898239, 37.566029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065250, 32.946857, 38.130856>,  <36.302891, 33.289047, 38.146278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065250, 32.946857, 38.130856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890884, 33.002209, 37.775139>,  <36.786266, 33.035419, 37.561710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890884, 33.002209, 37.775139>,  <37.065250, 32.946857, 38.130856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890884, 33.002209, 37.775139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829451, 0.445241, -0.337299,
		0.349274, -0.884654, -0.308861,
		-0.435911, 0.138376, -0.889289,
		36.760113, 33.043720, 37.508350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427296, 32.657085, 37.598297>,  <37.065250, 32.946857, 38.130856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427296, 32.657085, 37.598297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234314, 32.999668, 37.524841>,  <37.118523, 33.205215, 37.480770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234314, 32.999668, 37.524841>,  <37.427296, 32.657085, 37.598297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234314, 32.999668, 37.524841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875865, 0.474033, -0.090295,
		0.009717, -0.204405, -0.978838,
		-0.482459, 0.856452, -0.183638,
		37.089577, 33.256603, 37.469749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872406, 32.973278, 37.231361>,  <37.427296, 32.657085, 37.598297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872406, 32.973278, 37.231361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627632, 33.258587, 37.368053>,  <37.480766, 33.429771, 37.450069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627632, 33.258587, 37.368053>,  <37.872406, 32.973278, 37.231361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627632, 33.258587, 37.368053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756612, 0.653791, -0.009737,
		-0.230367, 0.252600, -0.939747,
		-0.611938, 0.713267, 0.341732,
		37.444050, 33.472569, 37.470573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195179, 33.634949, 36.723244>,  <37.872406, 32.973278, 37.231361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195179, 33.634949, 36.723244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367920, 33.995399, 36.738621>,  <38.471565, 34.211670, 36.747849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367920, 33.995399, 36.738621>,  <38.195179, 33.634949, 36.723244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367920, 33.995399, 36.738621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248693, -0.077996, -0.965437,
		-0.866980, 0.426489, -0.257786,
		0.431854, 0.901124, 0.038443,
		38.497475, 34.265736, 36.750153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962120, 33.987606, 36.099495>,  <38.195179, 33.634949, 36.723244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962120, 33.987606, 36.099495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306557, 34.139507, 36.234734>,  <38.513218, 34.230648, 36.315876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306557, 34.139507, 36.234734>,  <37.962120, 33.987606, 36.099495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306557, 34.139507, 36.234734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358876, 0.017106, -0.933228,
		-0.360178, 0.924931, -0.121554,
		0.861092, 0.379751, 0.338097,
		38.564884, 34.253433, 36.336163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004665, 34.535999, 35.664577>,  <37.962120, 33.987606, 36.099495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004665, 34.535999, 35.664577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358898, 34.429726, 35.816971>,  <38.571438, 34.365959, 35.908405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358898, 34.429726, 35.816971>,  <38.004665, 34.535999, 35.664577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358898, 34.429726, 35.816971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368866, -0.096185, -0.924492,
		0.282272, 0.959249, 0.012823,
		0.885585, -0.265688, 0.380985,
		38.624573, 34.350018, 35.931267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547554, 35.011906, 35.421963>,  <38.004665, 34.535999, 35.664577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547554, 35.011906, 35.421963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714325, 34.655891, 35.495735>,  <38.814388, 34.442284, 35.540001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714325, 34.655891, 35.495735>,  <38.547554, 35.011906, 35.421963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714325, 34.655891, 35.495735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317173, -0.047697, -0.947167,
		0.851807, 0.453395, 0.262408,
		0.416925, -0.890033, 0.184433,
		38.839401, 34.388882, 35.551064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287712, 35.061504, 35.253998>,  <38.547554, 35.011906, 35.421963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287712, 35.061504, 35.253998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171822, 34.679661, 35.226341>,  <39.102287, 34.450554, 35.209747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171822, 34.679661, 35.226341>,  <39.287712, 35.061504, 35.253998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171822, 34.679661, 35.226341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531248, -0.100301, -0.841258,
		0.796138, -0.280465, 0.536194,
		-0.289724, -0.954609, -0.069143,
		39.084904, 34.393276, 35.205597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912041, 34.757679, 35.006546>,  <39.287712, 35.061504, 35.253998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912041, 34.757679, 35.006546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602081, 34.509579, 34.957851>,  <39.416107, 34.360718, 34.928635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602081, 34.509579, 34.957851>,  <39.912041, 34.757679, 35.006546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602081, 34.509579, 34.957851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250379, -0.124358, -0.960128,
		0.580380, -0.774484, 0.251663,
		-0.774900, -0.620250, -0.121739,
		39.369610, 34.323505, 34.921329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139645, 34.295471, 34.622147>,  <39.912041, 34.757679, 35.006546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139645, 34.295471, 34.622147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744488, 34.275589, 34.563354>,  <39.507393, 34.263660, 34.528080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.744488, 34.275589, 34.563354>,  <40.139645, 34.295471, 34.622147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744488, 34.275589, 34.563354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153873, -0.192130, -0.969231,
		0.019941, -0.980110, 0.197452,
		-0.987890, -0.049709, -0.146981,
		39.448120, 34.260677, 34.519260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173023, 34.243496, 33.920734>,  <40.139645, 34.295471, 34.622147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173023, 34.243496, 33.920734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779350, 34.270195, 33.986385>,  <39.543148, 34.286213, 34.025776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779350, 34.270195, 33.986385>,  <40.173023, 34.243496, 33.920734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779350, 34.270195, 33.986385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168899, -0.073582, -0.982883,
		-0.053515, -0.995054, 0.083689,
		-0.984179, 0.066734, 0.164125,
		39.484097, 34.290218, 34.035622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931149, 33.748646, 33.368176>,  <40.173023, 34.243496, 33.920734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931149, 33.748646, 33.368176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660198, 34.018341, 33.485867>,  <39.497627, 34.180157, 33.556480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660198, 34.018341, 33.485867>,  <39.931149, 33.748646, 33.368176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660198, 34.018341, 33.485867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311988, 0.098916, -0.944923,
		-0.666206, -0.731861, 0.143351,
		-0.677373, 0.674237, 0.294230,
		39.456985, 34.220612, 33.574135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415440, 33.486122, 33.093956>,  <39.931149, 33.748646, 33.368176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415440, 33.486122, 33.093956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341389, 33.870785, 33.174889>,  <39.296959, 34.101582, 33.223450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341389, 33.870785, 33.174889>,  <39.415440, 33.486122, 33.093956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341389, 33.870785, 33.174889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614649, 0.047344, -0.787379,
		-0.766770, -0.270128, 0.582318,
		-0.185124, 0.961660, 0.202336,
		39.285851, 34.159283, 33.235588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651371, 33.627354, 33.279671>,  <39.415440, 33.486122, 33.093956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651371, 33.627354, 33.279671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813354, 33.954700, 33.116558>,  <38.910545, 34.151108, 33.018692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813354, 33.954700, 33.116558>,  <38.651371, 33.627354, 33.279671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813354, 33.954700, 33.116558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800844, 0.102261, -0.590078,
		-0.441200, 0.565526, 0.696795,
		0.404959, 0.818366, -0.407780,
		38.934841, 34.200211, 32.994225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121048, 34.096584, 33.240124>,  <38.651371, 33.627354, 33.279671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121048, 34.096584, 33.240124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393814, 34.241421, 32.985920>,  <38.557476, 34.328323, 32.833397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393814, 34.241421, 32.985920>,  <38.121048, 34.096584, 33.240124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393814, 34.241421, 32.985920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712965, 0.135072, -0.688067,
		-0.163301, 0.922306, 0.350264,
		0.681919, 0.362088, -0.635514,
		38.598389, 34.350048, 32.795265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777359, 34.565830, 32.897888>,  <38.121048, 34.096584, 33.240124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777359, 34.565830, 32.897888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076843, 34.443390, 32.662689>,  <38.256535, 34.369926, 32.521572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076843, 34.443390, 32.662689>,  <37.777359, 34.565830, 32.897888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076843, 34.443390, 32.662689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614591, 0.011877, -0.788756,
		0.248425, 0.951924, -0.179236,
		0.748707, -0.306103, -0.587995,
		38.301456, 34.351559, 32.486290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694237, 34.901424, 32.273483>,  <37.777359, 34.565830, 32.897888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694237, 34.901424, 32.273483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915653, 34.572369, 32.221550>,  <38.048504, 34.374935, 32.190392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915653, 34.572369, 32.221550>,  <37.694237, 34.901424, 32.273483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915653, 34.572369, 32.221550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464106, -0.175258, -0.868269,
		0.691515, 0.540883, -0.478803,
		0.553546, -0.822636, -0.129834,
		38.081718, 34.325577, 32.182598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872574, 34.823597, 31.582182>,  <37.694237, 34.901424, 32.273483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872574, 34.823597, 31.582182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839508, 34.459633, 31.744776>,  <37.819668, 34.241253, 31.842333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839508, 34.459633, 31.744776>,  <37.872574, 34.823597, 31.582182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839508, 34.459633, 31.744776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579891, -0.287800, -0.762166,
		0.810489, -0.298724, -0.503857,
		-0.082668, -0.909909, 0.406486,
		37.814709, 34.186661, 31.866722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685825, 34.390259, 31.013620>,  <37.872574, 34.823597, 31.582182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685825, 34.390259, 31.013620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585827, 34.185265, 31.342220>,  <37.525829, 34.062267, 31.539381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585827, 34.185265, 31.342220>,  <37.685825, 34.390259, 31.013620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585827, 34.185265, 31.342220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619902, -0.567041, -0.542389,
		0.743790, -0.644844, -0.175933,
		-0.249995, -0.512485, 0.821500,
		37.510830, 34.031521, 31.588671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743042, 33.659599, 31.012667>,  <37.685825, 34.390259, 31.013620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743042, 33.659599, 31.012667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446144, 33.737206, 31.269236>,  <37.268005, 33.783768, 31.423178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446144, 33.737206, 31.269236>,  <37.743042, 33.659599, 31.012667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446144, 33.737206, 31.269236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617955, -0.568430, -0.543156,
		0.259225, -0.799529, 0.541808,
		-0.742249, 0.194014, 0.641424,
		37.223469, 33.795410, 31.461662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370510, 33.018097, 31.181688>,  <37.743042, 33.659599, 31.012667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370510, 33.018097, 31.181688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127457, 33.332550, 31.226900>,  <36.981625, 33.521221, 31.254026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127457, 33.332550, 31.226900>,  <37.370510, 33.018097, 31.181688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127457, 33.332550, 31.226900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616910, -0.377547, -0.690566,
		-0.500204, -0.489339, 0.714384,
		-0.607634, 0.786134, 0.113027,
		36.945168, 33.568390, 31.260809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684341, 32.907608, 31.420731>,  <37.370510, 33.018097, 31.181688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684341, 32.907608, 31.420731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675663, 33.231800, 31.186584>,  <36.670456, 33.426315, 31.046097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675663, 33.231800, 31.186584>,  <36.684341, 32.907608, 31.420731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675663, 33.231800, 31.186584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639867, -0.461136, -0.614755,
		-0.768179, 0.361219, 0.528603,
		-0.021696, 0.810478, -0.585367,
		36.669155, 33.474945, 31.010975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009285, 33.175526, 31.355177>,  <36.684341, 32.907608, 31.420731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009285, 33.175526, 31.355177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224079, 33.240871, 31.024128>,  <36.352955, 33.280079, 30.825499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224079, 33.240871, 31.024128>,  <36.009285, 33.175526, 31.355177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224079, 33.240871, 31.024128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698990, -0.463096, -0.544936,
		-0.472294, 0.871122, -0.134482,
		0.536984, 0.163368, -0.827623,
		36.385174, 33.289883, 30.775841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572903, 33.462261, 30.837421>,  <36.009285, 33.175526, 31.355177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572903, 33.462261, 30.837421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880306, 33.314354, 30.628553>,  <36.064751, 33.225609, 30.503233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880306, 33.314354, 30.628553>,  <35.572903, 33.462261, 30.837421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880306, 33.314354, 30.628553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639799, -0.435354, -0.633344,
		0.006864, 0.820815, -0.571153,
		0.768512, -0.369771, -0.522168,
		36.110859, 33.203423, 30.471903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341419, 33.527462, 30.154726>,  <35.572903, 33.462261, 30.837421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341419, 33.527462, 30.154726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628986, 33.249985, 30.137043>,  <35.801525, 33.083500, 30.126432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628986, 33.249985, 30.137043>,  <35.341419, 33.527462, 30.154726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628986, 33.249985, 30.137043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493112, -0.464151, -0.735802,
		0.489899, 0.550779, -0.675752,
		0.718916, -0.693690, -0.044208,
		35.844662, 33.041878, 30.123781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552879, 33.447765, 29.433863>,  <35.341419, 33.527462, 30.154726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552879, 33.447765, 29.433863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706059, 33.125183, 29.614080>,  <35.797966, 32.931633, 29.722210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706059, 33.125183, 29.614080>,  <35.552879, 33.447765, 29.433863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706059, 33.125183, 29.614080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203315, -0.549340, -0.810487,
		0.901120, 0.218770, -0.374330,
		0.382945, -0.806452, 0.450542,
		35.820942, 32.883247, 29.749243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877823, 33.151127, 28.888456>,  <35.552879, 33.447765, 29.433863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877823, 33.151127, 28.888456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840069, 32.860622, 29.160820>,  <35.817417, 32.686321, 29.324238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840069, 32.860622, 29.160820>,  <35.877823, 33.151127, 28.888456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840069, 32.860622, 29.160820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286098, -0.635324, -0.717294,
		0.953540, -0.262512, -0.147813,
		-0.094389, -0.726258, 0.680911,
		35.811752, 32.642746, 29.365093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030487, 32.550571, 28.529039>,  <35.877823, 33.151127, 28.888456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030487, 32.550571, 28.529039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816826, 32.414547, 28.838629>,  <35.688629, 32.332932, 29.024384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816826, 32.414547, 28.838629>,  <36.030487, 32.550571, 28.529039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816826, 32.414547, 28.838629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487643, -0.623922, -0.610676,
		0.690566, -0.703620, 0.167444,
		-0.534156, -0.340059, 0.773975,
		35.656578, 32.312531, 29.070822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229965, 31.764757, 28.509628>,  <36.030487, 32.550571, 28.529039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229965, 31.764757, 28.509628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895248, 31.854313, 28.709492>,  <35.694420, 31.908047, 28.829409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895248, 31.854313, 28.709492>,  <36.229965, 31.764757, 28.509628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895248, 31.854313, 28.709492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544553, -0.435274, -0.716937,
		0.056974, -0.872015, 0.486151,
		-0.836789, 0.223888, 0.499658,
		35.644211, 31.921480, 28.859388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812294, 31.137182, 28.393415>,  <36.229965, 31.764757, 28.509628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812294, 31.137182, 28.393415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544785, 31.410131, 28.511471>,  <35.384277, 31.573902, 28.582304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544785, 31.410131, 28.511471>,  <35.812294, 31.137182, 28.393415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544785, 31.410131, 28.511471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676933, -0.394743, -0.621241,
		-0.307414, -0.615260, 0.725915,
		-0.668774, 0.682373, 0.295140,
		35.344151, 31.614843, 28.600012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128563, 30.846678, 28.427353>,  <35.812294, 31.137182, 28.393415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128563, 30.846678, 28.427353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006783, 31.225506, 28.386625>,  <34.933716, 31.452803, 28.362188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006783, 31.225506, 28.386625>,  <35.128563, 30.846678, 28.427353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006783, 31.225506, 28.386625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690768, -0.293122, -0.660998,
		-0.655858, -0.130908, 0.743447,
		-0.304451, 0.947070, -0.101820,
		34.915447, 31.509626, 28.356079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441273, 30.775770, 28.355278>,  <35.128563, 30.846678, 28.427353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441273, 30.775770, 28.355278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505253, 31.144632, 28.214396>,  <34.543640, 31.365950, 28.129866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505253, 31.144632, 28.214396>,  <34.441273, 30.775770, 28.355278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505253, 31.144632, 28.214396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456393, -0.247286, -0.854725,
		-0.875283, 0.297461, 0.381310,
		0.159955, 0.922153, -0.352204,
		34.553238, 31.421278, 28.108734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814117, 30.959806, 28.128189>,  <34.441273, 30.775770, 28.355278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814117, 30.959806, 28.128189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105572, 31.150162, 27.931162>,  <34.280445, 31.264376, 27.812946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.105572, 31.150162, 27.931162>,  <33.814117, 30.959806, 28.128189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105572, 31.150162, 27.931162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448138, -0.212603, -0.868316,
		-0.517944, 0.853422, 0.058355,
		0.728633, 0.475890, -0.492567,
		34.324162, 31.292929, 27.783392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461075, 31.299414, 27.524111>,  <33.814117, 30.959806, 28.128189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461075, 31.299414, 27.524111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846268, 31.328239, 27.420206>,  <34.077381, 31.345535, 27.357862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846268, 31.328239, 27.420206>,  <33.461075, 31.299414, 27.524111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846268, 31.328239, 27.420206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258078, -0.031934, -0.965596,
		-0.077878, 0.996889, -0.012155,
		0.962980, 0.072062, -0.259762,
		34.135162, 31.349857, 27.342278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494942, 31.723896, 27.014858>,  <33.461075, 31.299414, 27.524111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494942, 31.723896, 27.014858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826981, 31.507927, 26.959114>,  <34.026203, 31.378345, 26.925667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826981, 31.507927, 26.959114>,  <33.494942, 31.723896, 27.014858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826981, 31.507927, 26.959114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174819, -0.014661, -0.984492,
		0.529506, 0.841587, -0.106559,
		0.830097, -0.539923, -0.139363,
		34.076012, 31.345951, 26.917305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755047, 32.024254, 26.460468>,  <33.494942, 31.723896, 27.014858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755047, 32.024254, 26.460468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988571, 31.700014, 26.478790>,  <34.128685, 31.505470, 26.489784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.988571, 31.700014, 26.478790>,  <33.755047, 32.024254, 26.460468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988571, 31.700014, 26.478790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065574, -0.103311, -0.992485,
		0.809238, 0.576418, -0.113468,
		0.583809, -0.810598, 0.045805,
		34.163715, 31.456835, 26.492533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343719, 32.076614, 25.939791>,  <33.755047, 32.024254, 26.460468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343719, 32.076614, 25.939791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305355, 31.685089, 26.012142>,  <34.282337, 31.450172, 26.055553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305355, 31.685089, 26.012142>,  <34.343719, 32.076614, 25.939791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305355, 31.685089, 26.012142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065947, -0.175069, -0.982345,
		0.993203, -0.106147, -0.047759,
		-0.095912, -0.978817, 0.180879,
		34.276581, 31.391443, 26.066406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751877, 31.789598, 25.445539>,  <34.343719, 32.076614, 25.939791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751877, 31.789598, 25.445539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515060, 31.497545, 25.582008>,  <34.372971, 31.322313, 25.663889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515060, 31.497545, 25.582008>,  <34.751877, 31.789598, 25.445539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515060, 31.497545, 25.582008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274507, -0.215326, -0.937166,
		0.757718, -0.648492, -0.072945,
		-0.592038, -0.730132, 0.341172,
		34.337448, 31.278505, 25.684361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932041, 31.209557, 25.037430>,  <34.751877, 31.789598, 25.445539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932041, 31.209557, 25.037430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567112, 31.121447, 25.175501>,  <34.348156, 31.068581, 25.258343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567112, 31.121447, 25.175501>,  <34.932041, 31.209557, 25.037430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567112, 31.121447, 25.175501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328567, -0.109257, -0.938140,
		0.244361, -0.969300, 0.027302,
		-0.912322, -0.220274, 0.345178,
		34.293415, 31.055365, 25.279055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735729, 30.605042, 24.713209>,  <34.932041, 31.209557, 25.037430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735729, 30.605042, 24.713209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392727, 30.774351, 24.830185>,  <34.186924, 30.875937, 24.900370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392727, 30.774351, 24.830185>,  <34.735729, 30.605042, 24.713209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392727, 30.774351, 24.830185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381629, -0.142132, -0.913322,
		-0.345021, -0.894783, 0.283413,
		-0.857508, 0.423274, 0.292437,
		34.135475, 30.901333, 24.917915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206478, 30.157915, 24.409924>,  <34.735729, 30.605042, 24.713209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206478, 30.157915, 24.409924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008064, 30.493942, 24.497770>,  <33.889015, 30.695559, 24.550478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008064, 30.493942, 24.497770>,  <34.206478, 30.157915, 24.409924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008064, 30.493942, 24.497770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501127, -0.070419, -0.862504,
		-0.709097, -0.537890, 0.455911,
		-0.496038, 0.840069, 0.219617,
		33.859253, 30.745962, 24.563656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412640, 29.957695, 24.418541>,  <34.206478, 30.157915, 24.409924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412640, 29.957695, 24.418541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459309, 30.351988, 24.370016>,  <33.487312, 30.588564, 24.340900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459309, 30.351988, 24.370016>,  <33.412640, 29.957695, 24.418541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459309, 30.351988, 24.370016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652137, -0.016089, -0.757931,
		-0.749069, 0.167545, 0.640956,
		0.116675, 0.985733, -0.121314,
		33.494312, 30.647707, 24.333622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708157, 30.277805, 24.351652>,  <33.412640, 29.957695, 24.418541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708157, 30.277805, 24.351652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937809, 30.549004, 24.168045>,  <33.075600, 30.711723, 24.057880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937809, 30.549004, 24.168045>,  <32.708157, 30.277805, 24.351652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937809, 30.549004, 24.168045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567374, -0.074744, -0.820061,
		-0.590308, 0.731254, 0.341766,
		0.574128, 0.677998, -0.459016,
		33.110046, 30.752403, 24.030340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297054, 30.731544, 24.053810>,  <32.708157, 30.277805, 24.351652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297054, 30.731544, 24.053810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627647, 30.801210, 23.839672>,  <32.826004, 30.843010, 23.711189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627647, 30.801210, 23.839672>,  <32.297054, 30.731544, 24.053810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627647, 30.801210, 23.839672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554641, 0.089026, -0.827313,
		-0.096431, 0.980684, 0.170179,
		0.826483, 0.174167, -0.535343,
		32.875591, 30.853460, 23.679070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139774, 31.224968, 23.571716>,  <32.297054, 30.731544, 24.053810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139774, 31.224968, 23.571716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470428, 31.067881, 23.410498>,  <32.668819, 30.973627, 23.313766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470428, 31.067881, 23.410498>,  <32.139774, 31.224968, 23.571716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470428, 31.067881, 23.410498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459328, -0.057096, -0.886430,
		0.325106, 0.917884, -0.227585,
		0.826634, -0.392720, -0.403048,
		32.718418, 30.950066, 23.289583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351410, 31.713234, 23.080212>,  <32.139774, 31.224968, 23.571716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351410, 31.713234, 23.080212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527931, 31.365128, 22.992678>,  <32.633842, 31.156263, 22.940157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527931, 31.365128, 22.992678>,  <32.351410, 31.713234, 23.080212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527931, 31.365128, 22.992678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414281, 0.018738, -0.909956,
		0.796006, 0.492222, -0.352267,
		0.441299, -0.870268, -0.218834,
		32.660320, 31.104048, 22.927027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789997, 31.849373, 22.492062>,  <32.351410, 31.713234, 23.080212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789997, 31.849373, 22.492062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664017, 31.469889, 22.503082>,  <32.588428, 31.242199, 22.509695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664017, 31.469889, 22.503082>,  <32.789997, 31.849373, 22.492062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664017, 31.469889, 22.503082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410424, 0.109961, -0.905241,
		0.855780, -0.296414, -0.424005,
		-0.314950, -0.948708, 0.027553,
		32.569530, 31.185276, 22.511349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955803, 31.767015, 21.811533>,  <32.789997, 31.849373, 22.492062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955803, 31.767015, 21.811533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738899, 31.449732, 21.922365>,  <32.608757, 31.259361, 21.988865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738899, 31.449732, 21.922365>,  <32.955803, 31.767015, 21.811533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738899, 31.449732, 21.922365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528842, 0.065956, -0.846153,
		0.652903, -0.605365, -0.455249,
		-0.542258, -0.793211, 0.277080,
		32.576221, 31.211769, 22.005489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003151, 31.197533, 21.226290>,  <32.955803, 31.767015, 21.811533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003151, 31.197533, 21.226290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672997, 31.165052, 21.449772>,  <32.474903, 31.145565, 21.583860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672997, 31.165052, 21.449772>,  <33.003151, 31.197533, 21.226290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672997, 31.165052, 21.449772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560873, 0.004794, -0.827888,
		0.064549, -0.996686, -0.049502,
		-0.825381, -0.081203, 0.558705,
		32.425381, 31.140692, 21.617384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615944, 30.811384, 20.798136>,  <33.003151, 31.197533, 21.226290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615944, 30.811384, 20.798136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338985, 30.904995, 21.071140>,  <32.172810, 30.961161, 21.234943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338985, 30.904995, 21.071140>,  <32.615944, 30.811384, 20.798136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338985, 30.904995, 21.071140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717062, -0.118241, -0.686907,
		-0.080047, -0.965015, 0.249675,
		-0.692398, 0.234018, 0.682511,
		32.131268, 30.975203, 21.275892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137051, 30.328970, 20.728977>,  <32.615944, 30.811384, 20.798136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137051, 30.328970, 20.728977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938330, 30.619528, 20.918940>,  <31.819096, 30.793861, 21.032917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938330, 30.619528, 20.918940>,  <32.137051, 30.328970, 20.728977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938330, 30.619528, 20.918940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700854, -0.013068, -0.713185,
		-0.511846, -0.687155, 0.515588,
		-0.496806, 0.726393, 0.474907,
		31.789288, 30.837446, 21.061411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488750, 30.196299, 20.734539>,  <32.137051, 30.328970, 20.728977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488750, 30.196299, 20.734539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492352, 30.595032, 20.766140>,  <31.494513, 30.834272, 20.785101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492352, 30.595032, 20.766140>,  <31.488750, 30.196299, 20.734539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492352, 30.595032, 20.766140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803873, 0.054201, -0.592327,
		-0.594733, -0.058175, 0.801816,
		0.009001, 0.996834, 0.079000,
		31.495052, 30.894081, 20.789841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848425, 30.334440, 20.908331>,  <31.488750, 30.196299, 20.734539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848425, 30.334440, 20.908331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988041, 30.663958, 20.729652>,  <31.071810, 30.861668, 20.622446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988041, 30.663958, 20.729652>,  <30.848425, 30.334440, 20.908331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988041, 30.663958, 20.729652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838803, 0.062109, -0.540882,
		-0.417831, 0.563477, 0.712678,
		0.349038, 0.823794, -0.446695,
		31.092752, 30.911097, 20.595644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282888, 30.601212, 20.758080>,  <30.848425, 30.334440, 20.908331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282888, 30.601212, 20.758080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526043, 30.835836, 20.544008>,  <30.671936, 30.976612, 20.415565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526043, 30.835836, 20.544008>,  <30.282888, 30.601212, 20.758080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526043, 30.835836, 20.544008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748933, 0.199661, -0.631850,
		-0.263766, 0.784906, 0.560669,
		0.607887, 0.586564, -0.535178,
		30.708408, 31.011806, 20.383455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939404, 31.134420, 20.615442>,  <30.282888, 30.601212, 20.758080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939404, 31.134420, 20.615442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207584, 31.119133, 20.319056>,  <30.368494, 31.109961, 20.141224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207584, 31.119133, 20.319056>,  <29.939404, 31.134420, 20.615442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207584, 31.119133, 20.319056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732649, 0.123541, -0.669301,
		0.117119, 0.991603, 0.054828,
		0.670454, -0.038219, -0.740966,
		30.408720, 31.107668, 20.096766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692961, 31.576508, 20.141645>,  <29.939404, 31.134420, 20.615442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692961, 31.576508, 20.141645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954304, 31.365694, 19.924259>,  <30.111109, 31.239206, 19.793827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954304, 31.365694, 19.924259>,  <29.692961, 31.576508, 20.141645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954304, 31.365694, 19.924259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673818, -0.077601, -0.734811,
		0.345098, 0.846293, -0.405828,
		0.653358, -0.527036, -0.543467,
		30.150311, 31.207582, 19.761219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645189, 31.891800, 19.447489>,  <29.692961, 31.576508, 20.141645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645189, 31.891800, 19.447489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837429, 31.543011, 19.410208>,  <29.952774, 31.333736, 19.387838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837429, 31.543011, 19.410208>,  <29.645189, 31.891800, 19.447489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837429, 31.543011, 19.410208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416376, -0.133362, -0.899358,
		0.771786, 0.471040, -0.427162,
		0.480601, -0.871972, -0.093203,
		29.981609, 31.281420, 19.382246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985828, 31.789492, 18.704861>,  <29.645189, 31.891800, 19.447489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985828, 31.789492, 18.704861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979115, 31.415180, 18.845736>,  <29.975086, 31.190594, 18.930262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979115, 31.415180, 18.845736>,  <29.985828, 31.789492, 18.704861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979115, 31.415180, 18.845736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313150, -0.329597, -0.890676,
		0.949555, -0.125237, -0.287507,
		-0.016784, -0.935779, 0.352188,
		29.974079, 31.134447, 18.951391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330868, 31.330303, 18.209360>,  <29.985828, 31.789492, 18.704861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330868, 31.330303, 18.209360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052532, 31.134586, 18.419655>,  <29.885530, 31.017157, 18.545832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.052532, 31.134586, 18.419655>,  <30.330868, 31.330303, 18.209360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052532, 31.134586, 18.419655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393568, -0.352542, -0.849010,
		0.600760, -0.797688, 0.052742,
		-0.695839, -0.489294, 0.525737,
		29.843781, 30.987799, 18.577375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290903, 30.583904, 17.983046>,  <30.330868, 31.330303, 18.209360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290903, 30.583904, 17.983046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934320, 30.662340, 18.146435>,  <29.720371, 30.709402, 18.244469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934320, 30.662340, 18.146435>,  <30.290903, 30.583904, 17.983046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934320, 30.662340, 18.146435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445650, -0.542291, -0.712262,
		0.081845, -0.816988, 0.570817,
		-0.891458, 0.196090, 0.408475,
		29.666883, 30.721167, 18.268976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870771, 29.922640, 17.909466>,  <30.290903, 30.583904, 17.983046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870771, 29.922640, 17.909466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613892, 30.222857, 17.971777>,  <29.459763, 30.402987, 18.009163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613892, 30.222857, 17.971777>,  <29.870771, 29.922640, 17.909466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613892, 30.222857, 17.971777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660463, -0.438641, -0.609411,
		-0.389060, -0.494247, 0.777401,
		-0.642200, 0.750542, 0.155774,
		29.421230, 30.448019, 18.018511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238165, 29.624454, 17.922758>,  <29.870771, 29.922640, 17.909466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238165, 29.624454, 17.922758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129402, 30.007969, 17.889795>,  <29.064144, 30.238077, 17.870018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129402, 30.007969, 17.889795>,  <29.238165, 29.624454, 17.922758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129402, 30.007969, 17.889795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782002, -0.270053, -0.561734,
		-0.560838, -0.088296, 0.823204,
		-0.271908, 0.958789, -0.082408,
		29.047831, 30.295605, 17.865072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532654, 29.544233, 17.920877>,  <29.238165, 29.624454, 17.922758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532654, 29.544233, 17.920877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653801, 29.891296, 17.763174>,  <28.726490, 30.099535, 17.668552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.653801, 29.891296, 17.763174>,  <28.532654, 29.544233, 17.920877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653801, 29.891296, 17.763174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729180, -0.055402, -0.682076,
		-0.613652, 0.494065, 0.615899,
		0.302868, 0.867658, -0.394260,
		28.744661, 30.151594, 17.644896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959177, 29.921040, 17.845613>,  <28.532654, 29.544233, 17.920877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959177, 29.921040, 17.845613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226952, 30.053591, 17.579668>,  <28.387615, 30.133121, 17.420101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.226952, 30.053591, 17.579668>,  <27.959177, 29.921040, 17.845613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226952, 30.053591, 17.579668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662325, -0.139078, -0.736195,
		-0.336426, 0.933192, 0.126375,
		0.669435, 0.331376, -0.664866,
		28.427782, 30.153004, 17.380209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570768, 30.395088, 17.420330>,  <27.959177, 29.921040, 17.845613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570768, 30.395088, 17.420330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890593, 30.273890, 17.212910>,  <28.082487, 30.201170, 17.088457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890593, 30.273890, 17.212910>,  <27.570768, 30.395088, 17.420330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890593, 30.273890, 17.212910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551363, -0.027997, -0.833795,
		0.238121, 0.952580, -0.189447,
		0.799560, -0.302999, -0.518551,
		28.130461, 30.182989, 17.057344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.868877, 30.830278, 16.805386>,  <27.570768, 30.395088, 17.420330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.868877, 30.830278, 16.805386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934040, 30.439339, 16.751350>,  <27.973137, 30.204775, 16.718929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934040, 30.439339, 16.751350>,  <27.868877, 30.830278, 16.805386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934040, 30.439339, 16.751350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491865, 0.038242, -0.869831,
		0.855295, 0.208147, -0.474494,
		0.162907, -0.977350, -0.135088,
		27.982912, 30.146133, 16.710823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930954, 30.858492, 16.182423>,  <27.868877, 30.830278, 16.805386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930954, 30.858492, 16.182423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857010, 30.476439, 16.274981>,  <27.812643, 30.247206, 16.330515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857010, 30.476439, 16.274981>,  <27.930954, 30.858492, 16.182423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857010, 30.476439, 16.274981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568796, -0.088026, -0.817755,
		0.801435, -0.282789, -0.527004,
		-0.184862, -0.955134, 0.231396,
		27.801552, 30.189898, 16.344400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113478, 30.427023, 15.630269>,  <27.930954, 30.858492, 16.182423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.113478, 30.427023, 15.630269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837023, 30.199762, 15.808943>,  <27.671150, 30.063406, 15.916147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837023, 30.199762, 15.808943>,  <28.113478, 30.427023, 15.630269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837023, 30.199762, 15.808943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441703, -0.157133, -0.883294,
		0.572036, -0.807781, -0.142355,
		-0.691139, -0.568154, 0.446685,
		27.629681, 30.029316, 15.942948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014893, 29.801088, 15.247653>,  <28.113478, 30.427023, 15.630269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014893, 29.801088, 15.247653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694185, 29.871738, 15.476028>,  <27.501760, 29.914129, 15.613053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694185, 29.871738, 15.476028>,  <28.014893, 29.801088, 15.247653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694185, 29.871738, 15.476028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590212, -0.083904, -0.802876,
		-0.093949, -0.980686, 0.171550,
		-0.801763, 0.176680, 0.570929,
		27.453655, 29.924726, 15.647310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720692, 29.972612, 15.436335>,  <28.014893, 29.801088, 15.247653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720692, 29.972612, 15.436335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836533, 30.006445, 15.054974>,  <28.906036, 30.026745, 14.826157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836533, 30.006445, 15.054974>,  <28.720692, 29.972612, 15.436335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836533, 30.006445, 15.054974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626936, 0.735907, 0.255720,
		0.723244, -0.671779, 0.160095,
		0.289602, 0.084579, -0.953403,
		28.923412, 30.031818, 14.768952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331076, 30.116251, 15.562343>,  <28.720692, 29.972612, 15.436335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331076, 30.116251, 15.562343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269388, 30.237217, 15.186096>,  <29.232376, 30.309797, 14.960348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269388, 30.237217, 15.186096>,  <29.331076, 30.116251, 15.562343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269388, 30.237217, 15.186096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662764, 0.737718, 0.128518,
		0.732776, -0.603587, -0.314201,
		-0.154220, 0.302416, -0.940617,
		29.223122, 30.327942, 14.903911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978804, 30.031876, 15.220556>,  <29.331076, 30.116251, 15.562343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978804, 30.031876, 15.220556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775658, 30.350155, 15.088534>,  <29.653770, 30.541122, 15.009321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775658, 30.350155, 15.088534>,  <29.978804, 30.031876, 15.220556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775658, 30.350155, 15.088534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715730, 0.602978, 0.352347,
		0.479378, -0.057286, -0.875737,
		-0.507866, 0.795698, -0.330055,
		29.623299, 30.588865, 14.989518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386963, 30.553091, 14.911572>,  <29.978804, 30.031876, 15.220556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386963, 30.553091, 14.911572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088865, 30.794189, 15.025630>,  <29.910006, 30.938848, 15.094065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.088865, 30.794189, 15.025630>,  <30.386963, 30.553091, 14.911572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088865, 30.794189, 15.025630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662311, 0.619653, 0.421158,
		0.077161, 0.502721, -0.860998,
		-0.745245, 0.602746, 0.285145,
		29.865292, 30.975014, 15.111174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569565, 31.154209, 14.593655>,  <30.386963, 30.553091, 14.911572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569565, 31.154209, 14.593655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384897, 31.172962, 14.947979>,  <30.274096, 31.184214, 15.160574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384897, 31.172962, 14.947979>,  <30.569565, 31.154209, 14.593655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384897, 31.172962, 14.947979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686806, 0.650879, 0.323504,
		-0.561389, 0.757733, -0.332691,
		-0.461671, 0.046883, 0.885811,
		30.246395, 31.187027, 15.213722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813707, 31.716702, 14.847238>,  <30.569565, 31.154209, 14.593655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813707, 31.716702, 14.847238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654678, 31.573004, 15.184966>,  <30.559261, 31.486786, 15.387604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654678, 31.573004, 15.184966>,  <30.813707, 31.716702, 14.847238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654678, 31.573004, 15.184966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454308, 0.722398, 0.521292,
		-0.797208, 0.590834, -0.123999,
		-0.397573, -0.359244, 0.844322,
		30.535406, 31.465231, 15.438263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576565, 32.258038, 15.176757>,  <30.813707, 31.716702, 14.847238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576565, 32.258038, 15.176757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614426, 31.973356, 15.455188>,  <30.637142, 31.802549, 15.622247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614426, 31.973356, 15.455188>,  <30.576565, 32.258038, 15.176757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614426, 31.973356, 15.455188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596064, 0.600543, 0.532968,
		-0.797338, 0.364461, 0.481061,
		0.094652, -0.711699, 0.696078,
		30.642820, 31.759846, 15.664011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408049, 32.501160, 15.847711>,  <30.576565, 32.258038, 15.176757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408049, 32.501160, 15.847711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667261, 32.201134, 15.900566>,  <30.822788, 32.021118, 15.932280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667261, 32.201134, 15.900566>,  <30.408049, 32.501160, 15.847711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667261, 32.201134, 15.900566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584404, 0.600965, 0.545265,
		-0.488395, -0.276125, 0.827784,
		0.648030, -0.750065, 0.132140,
		30.861670, 31.976114, 15.940208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652727, 32.780975, 16.370899>,  <30.408049, 32.501160, 15.847711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652727, 32.780975, 16.370899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892338, 32.464443, 16.321968>,  <31.036104, 32.274525, 16.292610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892338, 32.464443, 16.321968>,  <30.652727, 32.780975, 16.370899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892338, 32.464443, 16.321968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613440, 0.355337, 0.705285,
		-0.514646, -0.497524, 0.698290,
		0.599025, -0.791331, -0.122328,
		31.072044, 32.227043, 16.285269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761572, 32.645378, 16.991350>,  <30.652727, 32.780975, 16.370899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761572, 32.645378, 16.991350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051016, 32.445534, 16.800865>,  <31.224682, 32.325626, 16.686575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051016, 32.445534, 16.800865>,  <30.761572, 32.645378, 16.991350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051016, 32.445534, 16.800865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629541, 0.194891, 0.752128,
		-0.282963, -0.844041, 0.455551,
		0.723609, -0.499612, -0.476212,
		31.268099, 32.295650, 16.658001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968321, 32.093555, 17.498676>,  <30.761572, 32.645378, 16.991350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968321, 32.093555, 17.498676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262806, 32.165047, 17.237587>,  <31.439497, 32.207943, 17.080935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262806, 32.165047, 17.237587>,  <30.968321, 32.093555, 17.498676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262806, 32.165047, 17.237587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613623, 0.230459, 0.755219,
		0.285410, -0.956526, 0.059990,
		0.736212, 0.178736, -0.652722,
		31.483669, 32.218666, 17.041771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516621, 31.770374, 17.739561>,  <30.968321, 32.093555, 17.498676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516621, 31.770374, 17.739561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699327, 32.031963, 17.498337>,  <31.808952, 32.188915, 17.353601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699327, 32.031963, 17.498337>,  <31.516621, 31.770374, 17.739561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699327, 32.031963, 17.498337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700064, 0.154031, 0.697270,
		0.548886, -0.740672, -0.387466,
		0.456766, 0.653972, -0.603063,
		31.836357, 32.228153, 17.317417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234512, 31.596258, 17.800451>,  <31.516621, 31.770374, 17.739561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234512, 31.596258, 17.800451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232712, 31.964474, 17.644203>,  <32.231632, 32.185402, 17.550455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232712, 31.964474, 17.644203>,  <32.234512, 31.596258, 17.800451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232712, 31.964474, 17.644203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829441, 0.221632, 0.512744,
		0.558576, -0.321689, -0.764532,
		-0.004500, 0.920541, -0.390620,
		32.231361, 32.240635, 17.527018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933800, 31.685246, 17.532482>,  <32.234512, 31.596258, 17.800451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933800, 31.685246, 17.532482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738503, 32.021091, 17.627699>,  <32.621326, 32.222599, 17.684830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738503, 32.021091, 17.627699>,  <32.933800, 31.685246, 17.532482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738503, 32.021091, 17.627699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717247, 0.230663, 0.657534,
		0.497169, 0.491770, -0.714832,
		-0.488241, 0.839617, 0.238042,
		32.592030, 32.272976, 17.699112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491051, 32.231880, 17.666691>,  <32.933800, 31.685246, 17.532482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491051, 32.231880, 17.666691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155090, 32.394485, 17.810528>,  <32.953514, 32.492046, 17.896830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155090, 32.394485, 17.810528>,  <33.491051, 32.231880, 17.666691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155090, 32.394485, 17.810528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500779, 0.325037, 0.802229,
		0.209233, 0.853874, -0.476572,
		-0.839906, 0.406510, 0.359594,
		32.903118, 32.516438, 17.918406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789425, 32.859222, 18.067091>,  <33.491051, 32.231880, 17.666691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789425, 32.859222, 18.067091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423233, 32.803078, 18.217922>,  <33.203518, 32.769390, 18.308422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423233, 32.803078, 18.217922>,  <33.789425, 32.859222, 18.067091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423233, 32.803078, 18.217922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367076, 0.092398, 0.925591,
		-0.164759, 0.985780, -0.033065,
		-0.915483, -0.140362, 0.377079,
		33.148586, 32.760971, 18.331045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656578, 33.388699, 18.499008>,  <33.789425, 32.859222, 18.067091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656578, 33.388699, 18.499008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401291, 33.112354, 18.634886>,  <33.248119, 32.946548, 18.716413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401291, 33.112354, 18.634886>,  <33.656578, 33.388699, 18.499008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401291, 33.112354, 18.634886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391455, 0.088726, 0.915910,
		-0.662904, 0.717525, 0.213813,
		-0.638218, -0.690858, 0.339696,
		33.209827, 32.905098, 18.736795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378521, 33.672195, 19.193050>,  <33.656578, 33.388699, 18.499008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378521, 33.672195, 19.193050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334183, 33.276016, 19.160238>,  <33.307579, 33.038307, 19.140551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334183, 33.276016, 19.160238>,  <33.378521, 33.672195, 19.193050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334183, 33.276016, 19.160238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205663, -0.103610, 0.973122,
		-0.972325, 0.090994, 0.215183,
		-0.110844, -0.990447, -0.082028,
		33.300930, 32.978882, 19.135630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947796, 33.565979, 19.825058>,  <33.378521, 33.672195, 19.193050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947796, 33.565979, 19.825058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111851, 33.222729, 19.701502>,  <33.210285, 33.016781, 19.627369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111851, 33.222729, 19.701502>,  <32.947796, 33.565979, 19.825058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111851, 33.222729, 19.701502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284178, -0.201582, 0.937341,
		-0.866620, -0.472218, 0.161183,
		0.410137, -0.858123, -0.308889,
		33.234894, 32.965290, 19.608835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564045, 33.096695, 20.135454>,  <32.947796, 33.565979, 19.825058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564045, 33.096695, 20.135454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925419, 32.956810, 20.036257>,  <33.142242, 32.872879, 19.976738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925419, 32.956810, 20.036257>,  <32.564045, 33.096695, 20.135454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925419, 32.956810, 20.036257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195291, -0.179260, 0.964224,
		-0.381661, -0.919546, -0.093653,
		0.903436, -0.349717, -0.247995,
		33.196449, 32.851894, 19.961859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569588, 32.556084, 20.609766>,  <32.564045, 33.096695, 20.135454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569588, 32.556084, 20.609766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944191, 32.605949, 20.478672>,  <33.168953, 32.635868, 20.400015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944191, 32.605949, 20.478672>,  <32.569588, 32.556084, 20.609766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944191, 32.605949, 20.478672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342646, -0.126842, 0.930862,
		0.074473, -0.984058, -0.161504,
		0.936508, 0.124663, -0.327737,
		33.225143, 32.643349, 20.380350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905121, 32.068043, 20.946632>,  <32.569588, 32.556084, 20.609766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905121, 32.068043, 20.946632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196644, 32.305969, 20.810965>,  <33.371555, 32.448727, 20.729565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196644, 32.305969, 20.810965>,  <32.905121, 32.068043, 20.946632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196644, 32.305969, 20.810965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408989, 0.019102, 0.912339,
		0.549154, -0.803634, -0.229352,
		0.728806, 0.594817, -0.339167,
		33.415287, 32.484413, 20.709215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578842, 31.830725, 21.070827>,  <32.905121, 32.068043, 20.946632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578842, 31.830725, 21.070827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632862, 32.227028, 21.065731>,  <33.665272, 32.464809, 21.062674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632862, 32.227028, 21.065731>,  <33.578842, 31.830725, 21.070827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632862, 32.227028, 21.065731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393453, -0.041818, 0.918394,
		0.909372, -0.129039, -0.395463,
		0.135046, 0.990758, -0.012742,
		33.673374, 32.524254, 21.061909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122364, 31.917408, 21.557163>,  <33.578842, 31.830725, 21.070827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122364, 31.917408, 21.557163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048492, 32.305233, 21.492859>,  <34.004169, 32.537930, 21.454275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048492, 32.305233, 21.492859>,  <34.122364, 31.917408, 21.557163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048492, 32.305233, 21.492859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443001, 0.228139, 0.867008,
		0.877294, 0.088897, -0.471648,
		-0.184676, 0.969562, -0.160763,
		33.993088, 32.596100, 21.444630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714298, 32.279739, 21.616140>,  <34.122364, 31.917408, 21.557163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714298, 32.279739, 21.616140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417534, 32.537331, 21.690832>,  <34.239475, 32.691887, 21.735647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.417534, 32.537331, 21.690832>,  <34.714298, 32.279739, 21.616140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417534, 32.537331, 21.690832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362578, 0.151057, 0.919630,
		0.564014, 0.749983, -0.345562,
		-0.741907, 0.643977, 0.186729,
		34.194962, 32.730522, 21.746851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976131, 32.891850, 22.047060>,  <34.714298, 32.279739, 21.616140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976131, 32.891850, 22.047060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582306, 32.932789, 22.103849>,  <34.346008, 32.957352, 22.137922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582306, 32.932789, 22.103849>,  <34.976131, 32.891850, 22.047060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582306, 32.932789, 22.103849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162422, 0.232162, 0.959020,
		0.065189, 0.967278, -0.245202,
		-0.984566, 0.102344, 0.141972,
		34.286938, 32.963493, 22.146441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973118, 33.454208, 22.528753>,  <34.976131, 32.891850, 22.047060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973118, 33.454208, 22.528753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596806, 33.319733, 22.546194>,  <34.371017, 33.239048, 22.556660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596806, 33.319733, 22.546194>,  <34.973118, 33.454208, 22.528753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596806, 33.319733, 22.546194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117710, 0.444559, 0.887982,
		-0.317918, 0.830266, -0.457807,
		-0.940783, -0.336194, 0.043603,
		34.314571, 33.218876, 22.559275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577244, 33.985760, 22.672331>,  <34.973118, 33.454208, 22.528753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577244, 33.985760, 22.672331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381451, 33.664093, 22.807220>,  <34.263977, 33.471092, 22.888155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381451, 33.664093, 22.807220>,  <34.577244, 33.985760, 22.672331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381451, 33.664093, 22.807220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026275, 0.400143, 0.916076,
		-0.871619, 0.439540, -0.216992,
		-0.489480, -0.804170, 0.337224,
		34.234608, 33.422840, 22.908388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064701, 34.256157, 23.108917>,  <34.577244, 33.985760, 22.672331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064701, 34.256157, 23.108917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116837, 33.878716, 23.230654>,  <34.148117, 33.652252, 23.303696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116837, 33.878716, 23.230654>,  <34.064701, 34.256157, 23.108917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116837, 33.878716, 23.230654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096430, 0.317569, 0.943319,
		-0.986769, -0.093604, 0.132384,
		0.130339, -0.943604, 0.304341,
		34.155937, 33.595634, 23.321957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557739, 34.091202, 23.538254>,  <34.064701, 34.256157, 23.108917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557739, 34.091202, 23.538254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829189, 33.821392, 23.654518>,  <33.992058, 33.659508, 23.724277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829189, 33.821392, 23.654518>,  <33.557739, 34.091202, 23.538254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829189, 33.821392, 23.654518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001480, 0.396990, 0.917822,
		-0.734483, -0.622427, 0.270406,
		0.678626, -0.674524, 0.290661,
		34.032776, 33.619034, 23.741716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434101, 33.921860, 24.202085>,  <33.557739, 34.091202, 23.538254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434101, 33.921860, 24.202085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807339, 33.786152, 24.154366>,  <34.031281, 33.704727, 24.125732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807339, 33.786152, 24.154366>,  <33.434101, 33.921860, 24.202085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807339, 33.786152, 24.154366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235846, 0.326827, 0.915183,
		-0.271507, -0.882087, 0.384976,
		0.933092, -0.339274, -0.119301,
		34.087265, 33.684368, 24.118576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536186, 33.529804, 24.766279>,  <33.434101, 33.921860, 24.202085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536186, 33.529804, 24.766279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906166, 33.603077, 24.633064>,  <34.128155, 33.647041, 24.553135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906166, 33.603077, 24.633064>,  <33.536186, 33.529804, 24.766279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906166, 33.603077, 24.633064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275764, 0.279586, 0.919666,
		0.261570, -0.942486, 0.208091,
		0.924951, 0.183173, -0.333035,
		34.183651, 33.658031, 24.533154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042557, 33.266365, 25.301937>,  <33.536186, 33.529804, 24.766279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042557, 33.266365, 25.301937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246452, 33.508205, 25.057112>,  <34.368790, 33.653309, 24.910217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246452, 33.508205, 25.057112>,  <34.042557, 33.266365, 25.301937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246452, 33.508205, 25.057112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566364, 0.299704, 0.767730,
		0.647611, -0.737991, -0.189656,
		0.509737, 0.604605, -0.612064,
		34.399372, 33.689587, 24.873493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699104, 33.287384, 25.583952>,  <34.042557, 33.266365, 25.301937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699104, 33.287384, 25.583952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709152, 33.614155, 25.353474>,  <34.715179, 33.810219, 25.215187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.709152, 33.614155, 25.353474>,  <34.699104, 33.287384, 25.583952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709152, 33.614155, 25.353474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704803, 0.394284, 0.589741,
		0.708959, -0.420916, -0.565868,
		0.025119, 0.816927, -0.576193,
		34.716686, 33.859234, 25.180616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398441, 33.472370, 25.451170>,  <34.699104, 33.287384, 25.583952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398441, 33.472370, 25.451170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192593, 33.809986, 25.390825>,  <35.069084, 34.012558, 25.354618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192593, 33.809986, 25.390825>,  <35.398441, 33.472370, 25.451170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192593, 33.809986, 25.390825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536133, 0.454073, 0.711603,
		0.669125, 0.285323, -0.686194,
		-0.514619, 0.844043, -0.150861,
		35.038208, 34.063198, 25.345568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858849, 33.900600, 25.425320>,  <35.398441, 33.472370, 25.451170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858849, 33.900600, 25.425320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533592, 34.116440, 25.512621>,  <35.338440, 34.245945, 25.565001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533592, 34.116440, 25.512621>,  <35.858849, 33.900600, 25.425320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533592, 34.116440, 25.512621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492412, 0.437772, 0.752254,
		0.310370, 0.719159, -0.621676,
		-0.813142, 0.539598, 0.218251,
		35.289650, 34.278320, 25.578096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103539, 34.565296, 25.520706>,  <35.858849, 33.900600, 25.425320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103539, 34.565296, 25.520706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749313, 34.528938, 25.702921>,  <35.536777, 34.507122, 25.812250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749313, 34.528938, 25.702921>,  <36.103539, 34.565296, 25.520706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749313, 34.528938, 25.702921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415856, 0.281826, 0.864661,
		-0.206977, 0.955150, -0.211775,
		-0.885564, -0.090897, 0.455537,
		35.483643, 34.501671, 25.839582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088017, 35.104576, 25.905495>,  <36.103539, 34.565296, 25.520706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088017, 35.104576, 25.905495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825413, 34.859776, 26.081882>,  <35.667850, 34.712894, 26.187716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825413, 34.859776, 26.081882>,  <36.088017, 35.104576, 25.905495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825413, 34.859776, 26.081882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448100, 0.153847, 0.880646,
		-0.606796, 0.775750, 0.173235,
		-0.656510, -0.611999, 0.440967,
		35.628460, 34.676174, 26.214172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196865, 35.330376, 26.609623>,  <36.088017, 35.104576, 25.905495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196865, 35.330376, 26.609623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976204, 34.996857, 26.618225>,  <35.843807, 34.796745, 26.623386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976204, 34.996857, 26.618225>,  <36.196865, 35.330376, 26.609623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976204, 34.996857, 26.618225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260526, -0.147761, 0.954093,
		-0.792338, 0.531935, 0.298738,
		-0.551657, -0.833793, 0.021506,
		35.810707, 34.746719, 26.624678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642162, 35.319420, 27.255159>,  <36.196865, 35.330376, 26.609623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642162, 35.319420, 27.255159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760345, 34.954590, 27.141439>,  <35.831257, 34.735691, 27.073208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760345, 34.954590, 27.141439>,  <35.642162, 35.319420, 27.255159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760345, 34.954590, 27.141439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505735, -0.103151, 0.856500,
		-0.810516, -0.396841, 0.430791,
		0.295458, -0.912073, -0.284302,
		35.848984, 34.680969, 27.056149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408165, 34.866665, 27.820560>,  <35.642162, 35.319420, 27.255159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408165, 34.866665, 27.820560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704994, 34.693489, 27.615862>,  <35.883091, 34.589584, 27.493042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704994, 34.693489, 27.615862>,  <35.408165, 34.866665, 27.820560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704994, 34.693489, 27.615862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507002, -0.136892, 0.851005,
		-0.438492, -0.890965, 0.117920,
		0.742073, -0.432945, -0.511748,
		35.927616, 34.563606, 27.462337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699879, 34.532944, 28.362869>,  <35.408165, 34.866665, 27.820560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699879, 34.532944, 28.362869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979908, 34.469303, 28.084421>,  <36.147926, 34.431118, 27.917353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.979908, 34.469303, 28.084421>,  <35.699879, 34.532944, 28.362869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.979908, 34.469303, 28.084421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655756, -0.242611, 0.714930,
		-0.282634, -0.956988, -0.065513,
		0.700073, -0.159103, -0.696121,
		36.189930, 34.421574, 27.875586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031258, 33.884140, 28.445271>,  <35.699879, 34.532944, 28.362869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031258, 33.884140, 28.445271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312901, 34.085571, 28.245012>,  <36.481884, 34.206429, 28.124857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312901, 34.085571, 28.245012>,  <36.031258, 33.884140, 28.445271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312901, 34.085571, 28.245012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694882, -0.343462, 0.631801,
		0.146208, -0.792744, -0.591760,
		0.704104, 0.503578, -0.500647,
		36.524132, 34.236645, 28.094818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608437, 33.428669, 28.254917>,  <36.031258, 33.884140, 28.445271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608437, 33.428669, 28.254917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784370, 33.785904, 28.217087>,  <36.889931, 34.000244, 28.194389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784370, 33.785904, 28.217087>,  <36.608437, 33.428669, 28.254917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784370, 33.785904, 28.217087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830854, -0.364676, 0.420349,
		0.340917, -0.263465, -0.902420,
		0.439838, 0.893083, -0.094576,
		36.916321, 34.053829, 28.188713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222771, 33.469238, 27.837797>,  <36.608437, 33.428669, 28.254917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222771, 33.469238, 27.837797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292820, 33.781654, 28.077566>,  <37.334850, 33.969105, 28.221428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292820, 33.781654, 28.077566>,  <37.222771, 33.469238, 27.837797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292820, 33.781654, 28.077566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858815, -0.418890, 0.294904,
		0.481424, 0.463147, -0.744128,
		0.175124, 0.781041, 0.599421,
		37.345356, 34.015968, 28.257393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592659, 32.929668, 28.152695>,  <37.222771, 33.469238, 27.837797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592659, 32.929668, 28.152695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883667, 32.655663, 28.137362>,  <38.058273, 32.491261, 28.128162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883667, 32.655663, 28.137362>,  <37.592659, 32.929668, 28.152695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883667, 32.655663, 28.137362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033272, 0.091032, -0.995292,
		0.685275, 0.722823, 0.089020,
		0.727524, -0.685011, -0.038332,
		38.101925, 32.450161, 28.125862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122753, 33.269058, 27.804581>,  <37.592659, 32.929668, 28.152695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122753, 33.269058, 27.804581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183456, 32.874569, 27.778240>,  <38.219879, 32.637875, 27.762436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.183456, 32.874569, 27.778240>,  <38.122753, 33.269058, 27.804581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183456, 32.874569, 27.778240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243556, 0.101882, -0.964521,
		0.957941, 0.130335, 0.255662,
		0.151758, -0.986222, -0.065853,
		38.228985, 32.578701, 27.758484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772400, 33.188080, 27.468767>,  <38.122753, 33.269058, 27.804581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772400, 33.188080, 27.468767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564404, 32.850002, 27.419359>,  <38.439606, 32.647156, 27.389715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564404, 32.850002, 27.419359>,  <38.772400, 33.188080, 27.468767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564404, 32.850002, 27.419359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165595, 0.042115, -0.985294,
		0.837969, -0.532794, 0.118062,
		-0.519987, -0.845197, -0.123519,
		38.408409, 32.596443, 27.382303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065800, 32.994259, 26.835062>,  <38.772400, 33.188080, 27.468767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065800, 32.994259, 26.835062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740704, 32.763302, 26.866211>,  <38.545647, 32.624729, 26.884901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740704, 32.763302, 26.866211>,  <39.065800, 32.994259, 26.835062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740704, 32.763302, 26.866211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027591, -0.171654, -0.984771,
		0.581966, -0.798219, 0.155442,
		-0.812745, -0.577392, 0.077873,
		38.496880, 32.590084, 26.889572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170364, 32.423492, 26.437954>,  <39.065800, 32.994259, 26.835062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170364, 32.423492, 26.437954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770954, 32.439407, 26.452723>,  <38.531307, 32.448956, 26.461584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.770954, 32.439407, 26.452723>,  <39.170364, 32.423492, 26.437954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770954, 32.439407, 26.452723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041508, -0.121402, -0.991735,
		-0.034977, -0.991805, 0.122875,
		-0.998526, 0.039788, 0.036922,
		38.471397, 32.451344, 26.463799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953186, 31.890781, 26.043669>,  <39.170364, 32.423492, 26.437954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953186, 31.890781, 26.043669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620968, 32.113174, 26.030521>,  <38.421638, 32.246609, 26.022633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620968, 32.113174, 26.030521>,  <38.953186, 31.890781, 26.043669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620968, 32.113174, 26.030521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113008, -0.226016, -0.967546,
		-0.545367, -0.799876, 0.250547,
		-0.830544, 0.555981, -0.032869,
		38.371803, 32.279968, 26.020660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449074, 31.490519, 25.667089>,  <38.953186, 31.890781, 26.043669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449074, 31.490519, 25.667089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289368, 31.857229, 25.662910>,  <38.193546, 32.077255, 25.660402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.289368, 31.857229, 25.662910>,  <38.449074, 31.490519, 25.667089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289368, 31.857229, 25.662910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057533, -0.036426, -0.997679,
		-0.915030, -0.397734, 0.067289,
		-0.399262, 0.916777, -0.010448,
		38.169590, 32.132263, 25.659777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798378, 31.414944, 25.348888>,  <38.449074, 31.490519, 25.667089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798378, 31.414944, 25.348888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920013, 31.790911, 25.286814>,  <37.992996, 32.016491, 25.249569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920013, 31.790911, 25.286814>,  <37.798378, 31.414944, 25.348888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920013, 31.790911, 25.286814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058364, -0.144213, -0.987824,
		-0.950854, 0.309445, 0.011004,
		0.304090, 0.939918, -0.155186,
		38.011242, 32.072887, 25.240257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253109, 31.704109, 24.830076>,  <37.798378, 31.414944, 25.348888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253109, 31.704109, 24.830076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573357, 31.943619, 24.821301>,  <37.765503, 32.087326, 24.816036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.573357, 31.943619, 24.821301>,  <37.253109, 31.704109, 24.830076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573357, 31.943619, 24.821301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027718, 0.000438, -0.999616,
		-0.598535, 0.800917, 0.016948,
		0.800617, 0.598775, -0.021938,
		37.813541, 32.123253, 24.814718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069607, 32.127117, 24.419481>,  <37.253109, 31.704109, 24.830076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069607, 32.127117, 24.419481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466061, 32.180019, 24.424654>,  <37.703934, 32.211761, 24.427757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.466061, 32.180019, 24.424654>,  <37.069607, 32.127117, 24.419481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466061, 32.180019, 24.424654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010220, 0.021172, -0.999724,
		-0.132489, 0.990990, 0.019632,
		0.991132, 0.132252, 0.012932,
		37.763401, 32.219696, 24.428534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201767, 32.691647, 24.047373>,  <37.069607, 32.127117, 24.419481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201767, 32.691647, 24.047373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556171, 32.506523, 24.036160>,  <37.768814, 32.395451, 24.029432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556171, 32.506523, 24.036160>,  <37.201767, 32.691647, 24.047373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556171, 32.506523, 24.036160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067982, 0.189482, -0.979528,
		0.458644, 0.865972, 0.199347,
		0.886016, -0.462807, -0.028034,
		37.821976, 32.367680, 24.027750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591187, 33.141644, 23.603045>,  <37.201767, 32.691647, 24.047373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591187, 33.141644, 23.603045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758865, 32.778965, 23.584375>,  <37.859474, 32.561359, 23.573174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758865, 32.778965, 23.584375>,  <37.591187, 33.141644, 23.603045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758865, 32.778965, 23.584375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108672, 0.000929, -0.994077,
		0.901366, 0.421791, -0.098143,
		0.419202, -0.906693, -0.046674,
		37.884624, 32.506958, 23.570374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915745, 33.184689, 23.102318>,  <37.591187, 33.141644, 23.603045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915745, 33.184689, 23.102318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937771, 32.785759, 23.121540>,  <37.950985, 32.546402, 23.133074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937771, 32.785759, 23.121540>,  <37.915745, 33.184689, 23.102318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937771, 32.785759, 23.121540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169274, -0.056755, -0.983933,
		0.984029, 0.046046, -0.171947,
		0.055066, -0.997326, 0.048055,
		37.954292, 32.486561, 23.135956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258690, 33.010338, 22.500994>,  <37.915745, 33.184689, 23.102318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258690, 33.010338, 22.500994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108906, 32.652111, 22.597113>,  <38.019035, 32.437176, 22.654783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108906, 32.652111, 22.597113>,  <38.258690, 33.010338, 22.500994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108906, 32.652111, 22.597113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151397, -0.196621, -0.968720,
		0.914800, -0.399126, -0.061959,
		-0.374459, -0.895566, 0.240296,
		37.996567, 32.383442, 22.669201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619671, 32.472942, 22.170244>,  <38.258690, 33.010338, 22.500994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619671, 32.472942, 22.170244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245220, 32.343788, 22.225975>,  <38.020550, 32.266296, 22.259413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245220, 32.343788, 22.225975>,  <38.619671, 32.472942, 22.170244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245220, 32.343788, 22.225975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086147, -0.173568, -0.981047,
		0.340944, -0.930388, 0.134667,
		-0.936128, -0.322881, 0.139328,
		37.964382, 32.246925, 22.267773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516850, 31.898207, 21.625994>,  <38.619671, 32.472942, 22.170244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516850, 31.898207, 21.625994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146343, 31.971189, 21.757896>,  <37.924038, 32.014980, 21.837038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146343, 31.971189, 21.757896>,  <38.516850, 31.898207, 21.625994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146343, 31.971189, 21.757896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366953, -0.237272, -0.899471,
		-0.085873, -0.954155, 0.286730,
		-0.926268, 0.182457, 0.329755,
		37.868462, 32.025928, 21.856823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092083, 31.284958, 21.476677>,  <38.516850, 31.898207, 21.625994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092083, 31.284958, 21.476677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861187, 31.610060, 21.508230>,  <37.722649, 31.805120, 21.527163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861187, 31.610060, 21.508230>,  <38.092083, 31.284958, 21.476677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861187, 31.610060, 21.508230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437096, -0.225938, -0.870574,
		-0.689742, -0.537008, 0.485672,
		-0.577238, 0.812757, 0.078885,
		37.688015, 31.853888, 21.531897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454456, 31.054716, 21.217003>,  <38.092083, 31.284958, 21.476677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454456, 31.054716, 21.217003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448486, 31.454527, 21.206217>,  <37.444904, 31.694412, 21.199745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.448486, 31.454527, 21.206217>,  <37.454456, 31.054716, 21.217003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448486, 31.454527, 21.206217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646483, -0.030221, -0.762329,
		-0.762782, 0.006056, 0.646627,
		-0.014925, 0.999525, -0.026967,
		37.444008, 31.754385, 21.198128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787632, 31.175241, 21.280464>,  <37.454456, 31.054716, 21.217003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787632, 31.175241, 21.280464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952419, 31.502394, 21.119789>,  <37.051292, 31.698685, 21.023384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952419, 31.502394, 21.119789>,  <36.787632, 31.175241, 21.280464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952419, 31.502394, 21.119789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731868, 0.034391, -0.680578,
		-0.542816, 0.574361, 0.612747,
		0.411971, 0.817879, -0.401688,
		37.076012, 31.747757, 20.999283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232018, 31.697948, 21.244743>,  <36.787632, 31.175241, 21.280464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232018, 31.697948, 21.244743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522442, 31.724821, 20.971008>,  <36.696697, 31.740944, 20.806768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522442, 31.724821, 20.971008>,  <36.232018, 31.697948, 21.244743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522442, 31.724821, 20.971008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687625, 0.072185, -0.722469,
		0.000864, 0.995126, 0.098606,
		0.726065, 0.067180, -0.684336,
		36.740261, 31.744974, 20.765707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886379, 32.173500, 20.829952>,  <36.232018, 31.697948, 21.244743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886379, 32.173500, 20.829952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196152, 32.034546, 20.618450>,  <36.382015, 31.951174, 20.491549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196152, 32.034546, 20.618450>,  <35.886379, 32.173500, 20.829952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196152, 32.034546, 20.618450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559931, 0.012704, -0.828442,
		0.294503, 0.937638, -0.184671,
		0.774432, -0.347382, -0.528754,
		36.428482, 31.930332, 20.459824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005291, 32.610947, 20.155897>,  <35.886379, 32.173500, 20.829952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005291, 32.610947, 20.155897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161148, 32.247421, 20.096252>,  <36.254662, 32.029305, 20.060465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161148, 32.247421, 20.096252>,  <36.005291, 32.610947, 20.155897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161148, 32.247421, 20.096252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558516, -0.104444, -0.822892,
		0.732282, 0.403917, -0.548283,
		0.389644, -0.908814, -0.149112,
		36.278042, 31.974777, 20.051519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858002, 32.557190, 19.518787>,  <36.005291, 32.610947, 20.155897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858002, 32.557190, 19.518787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995396, 32.184910, 19.569099>,  <36.077831, 31.961542, 19.599287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.995396, 32.184910, 19.569099>,  <35.858002, 32.557190, 19.518787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995396, 32.184910, 19.569099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598406, -0.320106, -0.734467,
		0.723831, 0.177008, -0.666886,
		0.343481, -0.930699, 0.125780,
		36.098438, 31.905701, 19.606833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129700, 32.276878, 18.859735>,  <35.858002, 32.557190, 19.518787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129700, 32.276878, 18.859735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016174, 31.969522, 19.089178>,  <35.948059, 31.785109, 19.226843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016174, 31.969522, 19.089178>,  <36.129700, 32.276878, 18.859735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016174, 31.969522, 19.089178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446870, -0.423279, -0.788126,
		0.848384, -0.480010, -0.223238,
		-0.283816, -0.768391, 0.573605,
		35.931030, 31.739004, 19.261259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295105, 31.597080, 18.450760>,  <36.129700, 32.276878, 18.859735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295105, 31.597080, 18.450760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010887, 31.556234, 18.729239>,  <35.840355, 31.531727, 18.896326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010887, 31.556234, 18.729239>,  <36.295105, 31.597080, 18.450760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010887, 31.556234, 18.729239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526778, -0.578761, -0.622527,
		0.466503, -0.809078, 0.357445,
		-0.710549, -0.102117, 0.696199,
		35.797722, 31.525600, 18.938099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139328, 30.951729, 18.377993>,  <36.295105, 31.597080, 18.450760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139328, 30.951729, 18.377993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823906, 31.088305, 18.582582>,  <35.634655, 31.170250, 18.705338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823906, 31.088305, 18.582582>,  <36.139328, 30.951729, 18.377993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823906, 31.088305, 18.582582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605022, -0.579721, -0.545777,
		0.110165, -0.739827, 0.663717,
		-0.788551, 0.341438, 0.511476,
		35.587341, 31.190737, 18.736025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641319, 30.493265, 18.296690>,  <36.139328, 30.951729, 18.377993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641319, 30.493265, 18.296690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397366, 30.781761, 18.428053>,  <35.250992, 30.954859, 18.506870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397366, 30.781761, 18.428053>,  <35.641319, 30.493265, 18.296690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397366, 30.781761, 18.428053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740066, -0.370125, -0.561525,
		-0.283442, -0.585511, 0.759498,
		-0.609888, 0.721238, 0.328408,
		35.214397, 30.998133, 18.526575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058430, 30.109774, 18.670519>,  <35.641319, 30.493265, 18.296690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058430, 30.109774, 18.670519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951218, 30.471640, 18.538008>,  <34.886890, 30.688759, 18.458502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951218, 30.471640, 18.538008>,  <35.058430, 30.109774, 18.670519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951218, 30.471640, 18.538008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783583, -0.404756, -0.471350,
		-0.560499, 0.133248, 0.817365,
		-0.268027, 0.904665, -0.331276,
		34.870811, 30.743038, 18.438625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360641, 30.063730, 18.641272>,  <35.058430, 30.109774, 18.670519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360641, 30.063730, 18.641272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410927, 30.400843, 18.431923>,  <34.441097, 30.603109, 18.306314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410927, 30.400843, 18.431923>,  <34.360641, 30.063730, 18.641272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410927, 30.400843, 18.431923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846563, -0.183920, -0.499503,
		-0.517230, 0.505860, 0.690346,
		0.125710, 0.842780, -0.523372,
		34.448639, 30.653677, 18.274912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741745, 30.303745, 18.670853>,  <34.360641, 30.063730, 18.641272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741745, 30.303745, 18.670853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937595, 30.424635, 18.343700>,  <34.055103, 30.497169, 18.147409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937595, 30.424635, 18.343700>,  <33.741745, 30.303745, 18.670853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937595, 30.424635, 18.343700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704705, -0.415226, -0.575306,
		-0.513478, 0.858048, 0.009676,
		0.489622, 0.302226, -0.817881,
		34.084480, 30.515303, 18.098335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214046, 30.394476, 18.237591>,  <33.741745, 30.303745, 18.670853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214046, 30.394476, 18.237591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532757, 30.407211, 17.996216>,  <33.723984, 30.414852, 17.851391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532757, 30.407211, 17.996216>,  <33.214046, 30.394476, 18.237591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532757, 30.407211, 17.996216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531937, -0.436832, -0.725411,
		-0.286698, 0.898979, -0.331120,
		0.796773, 0.031839, -0.603439,
		33.771790, 30.416763, 17.815184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976383, 30.694902, 17.561119>,  <33.214046, 30.394476, 18.237591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976383, 30.694902, 17.561119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303112, 30.472990, 17.497849>,  <33.499149, 30.339842, 17.459887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303112, 30.472990, 17.497849>,  <32.976383, 30.694902, 17.561119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303112, 30.472990, 17.497849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452856, -0.446773, -0.771567,
		0.357382, 0.701863, -0.616170,
		0.816823, -0.554781, -0.158174,
		33.548161, 30.306557, 17.450396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185833, 30.777750, 16.931246>,  <32.976383, 30.694902, 17.561119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185833, 30.777750, 16.931246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361626, 30.430664, 17.024139>,  <33.467102, 30.222412, 17.079876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361626, 30.430664, 17.024139>,  <33.185833, 30.777750, 16.931246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361626, 30.430664, 17.024139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333731, -0.397761, -0.854640,
		0.833955, 0.298094, -0.464390,
		0.439480, -0.867713, 0.232232,
		33.493469, 30.170351, 17.093809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622776, 30.609827, 16.330488>,  <33.185833, 30.777750, 16.931246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622776, 30.609827, 16.330488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611187, 30.251347, 16.507570>,  <33.604233, 30.036259, 16.613819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611187, 30.251347, 16.507570>,  <33.622776, 30.609827, 16.330488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611187, 30.251347, 16.507570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212502, -0.427245, -0.878809,
		0.976731, -0.119536, -0.178066,
		-0.028972, -0.896199, 0.442705,
		33.602497, 29.982487, 16.640381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081367, 30.153645, 15.910045>,  <33.622776, 30.609827, 16.330488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081367, 30.153645, 15.910045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816734, 29.926704, 16.106178>,  <33.657955, 29.790541, 16.223858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816734, 29.926704, 16.106178>,  <34.081367, 30.153645, 15.910045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816734, 29.926704, 16.106178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100986, -0.580521, -0.807959,
		0.743045, -0.584045, 0.326766,
		-0.661579, -0.567351, 0.490333,
		33.618259, 29.756498, 16.253279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254272, 29.501461, 15.712931>,  <34.081367, 30.153645, 15.910045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254272, 29.501461, 15.712931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871048, 29.493500, 15.827285>,  <33.641113, 29.488724, 15.895898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871048, 29.493500, 15.827285>,  <34.254272, 29.501461, 15.712931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871048, 29.493500, 15.827285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218799, -0.593465, -0.774549,
		0.185080, -0.804614, 0.564218,
		-0.958057, -0.019903, 0.285887,
		33.583630, 29.487530, 15.913051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967762, 28.741632, 15.579609>,  <34.254272, 29.501461, 15.712931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967762, 28.741632, 15.579609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643967, 28.973585, 15.616408>,  <33.449688, 29.112757, 15.638488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643967, 28.973585, 15.616408>,  <33.967762, 28.741632, 15.579609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643967, 28.973585, 15.616408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445515, -0.504592, -0.739529,
		-0.382416, -0.639629, 0.666808,
		-0.809490, 0.579881, 0.092000,
		33.401119, 29.147551, 15.644008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502598, 28.234972, 15.720675>,  <33.967762, 28.741632, 15.579609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502598, 28.234972, 15.720675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329857, 28.562378, 15.569133>,  <33.226212, 28.758821, 15.478208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329857, 28.562378, 15.569133>,  <33.502598, 28.234972, 15.720675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329857, 28.562378, 15.569133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411415, -0.552567, -0.724850,
		-0.802645, -0.157163, 0.575379,
		-0.431855, 0.818517, -0.378856,
		33.200302, 28.807934, 15.455476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080250, 27.670334, 15.441795>,  <33.502598, 28.234972, 15.720675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080250, 27.670334, 15.441795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128269, 27.279577, 15.512526>,  <33.157082, 27.045122, 15.554963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128269, 27.279577, 15.512526>,  <33.080250, 27.670334, 15.441795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128269, 27.279577, 15.512526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622767, 0.212812, 0.752909,
		-0.773143, 0.019735, 0.633925,
		0.120048, -0.976894, 0.176825,
		33.164284, 26.986509, 15.565573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072422, 27.641291, 16.115257>,  <33.080250, 27.670334, 15.441795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072422, 27.641291, 16.115257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238106, 27.290171, 16.019016>,  <33.337517, 27.079498, 15.961271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238106, 27.290171, 16.019016>,  <33.072422, 27.641291, 16.115257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238106, 27.290171, 16.019016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663719, 0.110418, 0.739787,
		-0.622819, -0.466124, 0.628351,
		0.414213, -0.877802, -0.240605,
		33.362370, 27.026831, 15.946835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122772, 27.349569, 16.734959>,  <33.072422, 27.641291, 16.115257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122772, 27.349569, 16.734959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373886, 27.139509, 16.505142>,  <33.524555, 27.013474, 16.367252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373886, 27.139509, 16.505142>,  <33.122772, 27.349569, 16.734959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373886, 27.139509, 16.505142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633461, -0.084251, 0.769174,
		-0.452339, -0.846828, 0.279771,
		0.627787, -0.525151, -0.574543,
		33.562222, 26.981964, 16.332779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316925, 26.745916, 17.112406>,  <33.122772, 27.349569, 16.734959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316925, 26.745916, 17.112406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610806, 26.817297, 16.850607>,  <33.787132, 26.860126, 16.693527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610806, 26.817297, 16.850607>,  <33.316925, 26.745916, 17.112406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610806, 26.817297, 16.850607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637253, 0.149306, 0.756054,
		0.232641, -0.972555, -0.004024,
		0.734702, 0.178453, -0.654497,
		33.831215, 26.870832, 16.654257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809742, 26.319515, 17.338287>,  <33.316925, 26.745916, 17.112406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809742, 26.319515, 17.338287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007812, 26.586821, 17.116217>,  <34.126656, 26.747204, 16.982975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007812, 26.586821, 17.116217>,  <33.809742, 26.319515, 17.338287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007812, 26.586821, 17.116217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626352, 0.168240, 0.761169,
		0.602066, -0.724649, -0.335260,
		0.495176, 0.668265, -0.555177,
		34.156364, 26.787300, 16.949663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456768, 26.340942, 17.568192>,  <33.809742, 26.319515, 17.338287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456768, 26.340942, 17.568192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525551, 26.659424, 17.336161>,  <34.566818, 26.850513, 17.196941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525551, 26.659424, 17.336161>,  <34.456768, 26.340942, 17.568192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525551, 26.659424, 17.336161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656862, 0.346164, 0.669854,
		0.734142, -0.496213, -0.463473,
		0.171952, 0.796206, -0.580076,
		34.577137, 26.898285, 17.162138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249176, 26.513426, 17.723257>,  <34.456768, 26.340942, 17.568192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249176, 26.513426, 17.723257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047569, 26.828978, 17.582611>,  <34.926605, 27.018309, 17.498224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047569, 26.828978, 17.582611>,  <35.249176, 26.513426, 17.723257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047569, 26.828978, 17.582611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343104, 0.556483, 0.756707,
		0.792619, 0.260755, -0.551147,
		-0.504019, 0.788881, -0.351613,
		34.896362, 27.065641, 17.477127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686058, 26.996897, 17.529514>,  <35.249176, 26.513426, 17.723257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686058, 26.996897, 17.529514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354176, 27.203154, 17.615028>,  <35.155048, 27.326908, 17.666336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354176, 27.203154, 17.615028>,  <35.686058, 26.996897, 17.529514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354176, 27.203154, 17.615028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507813, 0.538237, 0.672627,
		0.231768, 0.666644, -0.708427,
		-0.829704, 0.515642, 0.213785,
		35.105263, 27.357847, 17.679163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911896, 27.692305, 17.530289>,  <35.686058, 26.996897, 17.529514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911896, 27.692305, 17.530289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580242, 27.675491, 17.753279>,  <35.381252, 27.665403, 17.887072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580242, 27.675491, 17.753279>,  <35.911896, 27.692305, 17.530289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580242, 27.675491, 17.753279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489160, 0.428251, 0.759818,
		-0.270675, 0.902682, -0.334515,
		-0.829130, -0.042032, 0.557473,
		35.331505, 27.662882, 17.920521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885307, 28.329258, 17.815119>,  <35.911896, 27.692305, 17.530289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885307, 28.329258, 17.815119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661285, 28.094402, 18.048906>,  <35.526871, 27.953489, 18.189178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661285, 28.094402, 18.048906>,  <35.885307, 28.329258, 17.815119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661285, 28.094402, 18.048906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518860, 0.301401, 0.799963,
		-0.645850, 0.751282, 0.135843,
		-0.560055, -0.587140, 0.584470,
		35.493271, 27.918261, 18.224247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743378, 28.866997, 18.346117>,  <35.885307, 28.329258, 17.815119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743378, 28.866997, 18.346117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634327, 28.514261, 18.500021>,  <35.568897, 28.302620, 18.592363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634327, 28.514261, 18.500021>,  <35.743378, 28.866997, 18.346117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634327, 28.514261, 18.500021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464213, 0.229715, 0.855417,
		-0.842722, 0.411820, 0.346733,
		-0.272628, -0.881836, 0.384758,
		35.552540, 28.249710, 18.615448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451385, 29.027510, 18.990788>,  <35.743378, 28.866997, 18.346117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451385, 29.027510, 18.990788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554390, 28.641132, 19.000937>,  <35.616192, 28.409306, 19.007025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554390, 28.641132, 19.000937>,  <35.451385, 29.027510, 18.990788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554390, 28.641132, 19.000937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327019, 0.111829, 0.938378,
		-0.909255, -0.233349, 0.344679,
		0.257515, -0.965941, 0.025372,
		35.631645, 28.351351, 19.008549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043190, 28.678825, 19.587849>,  <35.451385, 29.027510, 18.990788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043190, 28.678825, 19.587849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359108, 28.443884, 19.517159>,  <35.548660, 28.302919, 19.474745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359108, 28.443884, 19.517159>,  <35.043190, 28.678825, 19.587849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359108, 28.443884, 19.517159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295804, 0.112337, 0.948621,
		-0.537325, -0.801495, 0.262465,
		0.789799, -0.587356, -0.176724,
		35.596046, 28.267677, 19.464142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090733, 28.143534, 20.070303>,  <35.043190, 28.678825, 19.587849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090733, 28.143534, 20.070303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469749, 28.171362, 19.945513>,  <35.697159, 28.188059, 19.870638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.469749, 28.171362, 19.945513>,  <35.090733, 28.143534, 20.070303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469749, 28.171362, 19.945513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304941, 0.095812, 0.947539,
		0.095812, -0.992965, 0.069571,
		-0.947539, -0.069571, 0.311976,
		35.754013, 28.192234, 19.851919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495834, 27.887388, 20.558079>,  <35.090733, 28.143534, 20.070303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495834, 27.887388, 20.558079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780823, 28.095129, 20.369333>,  <35.951817, 28.219774, 20.256086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780823, 28.095129, 20.369333>,  <35.495834, 27.887388, 20.558079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780823, 28.095129, 20.369333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506708, 0.084398, 0.857977,
		0.485417, -0.850382, -0.203029,
		0.712473, 0.519353, -0.471863,
		35.994564, 28.250935, 20.227774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132164, 27.638168, 20.914562>,  <35.495834, 27.887388, 20.558079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132164, 27.638168, 20.914562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216606, 27.979555, 20.723972>,  <36.267269, 28.184387, 20.609617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.216606, 27.979555, 20.723972>,  <36.132164, 27.638168, 20.914562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216606, 27.979555, 20.723972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592388, 0.276033, 0.756890,
		0.777503, -0.442040, -0.447313,
		0.211103, 0.853467, -0.476476,
		36.279938, 28.235596, 20.581030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783176, 27.686523, 21.116106>,  <36.132164, 27.638168, 20.914562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783176, 27.686523, 21.116106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672138, 28.044083, 20.975317>,  <36.605515, 28.258619, 20.890844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672138, 28.044083, 20.975317>,  <36.783176, 27.686523, 21.116106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672138, 28.044083, 20.975317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518988, 0.447846, 0.728069,
		0.808450, 0.019440, -0.588243,
		-0.277596, 0.893899, -0.351972,
		36.588860, 28.312252, 20.869726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349400, 27.949190, 21.085289>,  <36.783176, 27.686523, 21.116106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349400, 27.949190, 21.085289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067787, 28.231049, 21.120640>,  <36.898819, 28.400164, 21.141851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067787, 28.231049, 21.120640>,  <37.349400, 27.949190, 21.085289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067787, 28.231049, 21.120640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498562, 0.401791, 0.768115,
		0.505738, 0.584842, -0.634184,
		-0.704035, 0.704645, 0.088379,
		36.856575, 28.442442, 21.147154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699203, 28.494110, 21.482319>,  <37.349400, 27.949190, 21.085289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699203, 28.494110, 21.482319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325592, 28.635120, 21.505373>,  <37.101425, 28.719727, 21.519205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325592, 28.635120, 21.505373>,  <37.699203, 28.494110, 21.482319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325592, 28.635120, 21.505373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210119, 0.411743, 0.886746,
		0.288871, 0.840353, -0.458651,
		-0.934025, 0.352527, 0.057633,
		37.045383, 28.740879, 21.522663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676289, 29.181355, 21.570143>,  <37.699203, 28.494110, 21.482319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676289, 29.181355, 21.570143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328690, 29.070168, 21.733887>,  <37.120129, 29.003454, 21.832132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328690, 29.070168, 21.733887>,  <37.676289, 29.181355, 21.570143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328690, 29.070168, 21.733887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339526, 0.266839, 0.901953,
		-0.359948, 0.922784, -0.137505,
		-0.868999, -0.277970, 0.409358,
		37.067989, 28.986776, 21.856693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381573, 29.755960, 21.898865>,  <37.676289, 29.181355, 21.570143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381573, 29.755960, 21.898865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205864, 29.442816, 22.075123>,  <37.100441, 29.254929, 22.180878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205864, 29.442816, 22.075123>,  <37.381573, 29.755960, 21.898865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205864, 29.442816, 22.075123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242184, 0.369148, 0.897261,
		-0.865096, 0.500856, 0.027442,
		-0.439268, -0.782862, 0.440647,
		37.074085, 29.207956, 22.207317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040943, 30.099333, 22.358730>,  <37.381573, 29.755960, 21.898865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040943, 30.099333, 22.358730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047539, 29.732357, 22.517742>,  <37.051495, 29.512171, 22.613150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.047539, 29.732357, 22.517742>,  <37.040943, 30.099333, 22.358730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047539, 29.732357, 22.517742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296564, 0.384182, 0.874331,
		-0.954871, 0.103478, 0.278414,
		0.016488, -0.917440, 0.397532,
		37.052486, 29.457125, 22.637001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607227, 30.124678, 23.051308>,  <37.040943, 30.099333, 22.358730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607227, 30.124678, 23.051308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873619, 29.826773, 23.034344>,  <37.033455, 29.648029, 23.024166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873619, 29.826773, 23.034344>,  <36.607227, 30.124678, 23.051308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873619, 29.826773, 23.034344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416351, 0.323932, 0.849541,
		-0.618970, -0.583434, 0.525815,
		0.665979, -0.744764, -0.042409,
		37.073414, 29.603344, 23.021622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634178, 29.816288, 23.732815>,  <36.607227, 30.124678, 23.051308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634178, 29.816288, 23.732815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986115, 29.671417, 23.609718>,  <37.197277, 29.584496, 23.535860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986115, 29.671417, 23.609718>,  <36.634178, 29.816288, 23.732815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986115, 29.671417, 23.609718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426223, 0.314839, 0.848063,
		-0.210259, -0.877329, 0.431377,
		0.879844, -0.362175, -0.307740,
		37.250069, 29.562765, 23.517397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948574, 29.529848, 24.371267>,  <36.634178, 29.816288, 23.732815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948574, 29.529848, 24.371267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245785, 29.577950, 24.107922>,  <37.424110, 29.606810, 23.949915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245785, 29.577950, 24.107922>,  <36.948574, 29.529848, 24.371267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245785, 29.577950, 24.107922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630050, 0.206068, 0.748714,
		0.225710, -0.971120, 0.077344,
		0.743029, 0.120262, -0.658366,
		37.468693, 29.614025, 23.910412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526138, 29.076660, 24.576298>,  <36.948574, 29.529848, 24.371267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526138, 29.076660, 24.576298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702240, 29.343309, 24.335701>,  <37.807899, 29.503300, 24.191343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702240, 29.343309, 24.335701>,  <37.526138, 29.076660, 24.576298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702240, 29.343309, 24.335701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727879, 0.127254, 0.673795,
		0.525710, -0.734451, -0.429198,
		0.440252, 0.666624, -0.601490,
		37.834316, 29.543297, 24.155254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296532, 29.039387, 24.697422>,  <37.526138, 29.076660, 24.576298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296532, 29.039387, 24.697422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234695, 29.401922, 24.540121>,  <38.197594, 29.619444, 24.445740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234695, 29.401922, 24.540121>,  <38.296532, 29.039387, 24.697422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234695, 29.401922, 24.540121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694951, 0.382675, 0.608772,
		0.702244, -0.179183, -0.689019,
		-0.154589, 0.906341, -0.393255,
		38.188320, 29.673824, 24.422144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886944, 29.163738, 24.422974>,  <38.296532, 29.039387, 24.697422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886944, 29.163738, 24.422974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716339, 29.516521, 24.503212>,  <38.613976, 29.728191, 24.551355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716339, 29.516521, 24.503212>,  <38.886944, 29.163738, 24.422974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716339, 29.516521, 24.503212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796906, 0.261521, 0.544562,
		0.427821, 0.392117, -0.814379,
		-0.426510, 0.881959, 0.200596,
		38.588387, 29.781109, 24.563391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354988, 29.662910, 24.418631>,  <38.886944, 29.163738, 24.422974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354988, 29.662910, 24.418631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081699, 29.881119, 24.612793>,  <38.917728, 30.012045, 24.729290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081699, 29.881119, 24.612793>,  <39.354988, 29.662910, 24.418631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081699, 29.881119, 24.612793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714662, 0.363087, 0.597852,
		0.149898, 0.755364, -0.637931,
		-0.683220, 0.545522, 0.485404,
		38.876732, 30.044775, 24.758413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683723, 30.294264, 24.724874>,  <39.354988, 29.662910, 24.418631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683723, 30.294264, 24.724874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343189, 30.268650, 24.933153>,  <39.138870, 30.253283, 25.058121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.343189, 30.268650, 24.933153>,  <39.683723, 30.294264, 24.724874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343189, 30.268650, 24.933153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464368, 0.369841, 0.804723,
		-0.244106, 0.926886, -0.285124,
		-0.851337, -0.064035, 0.520697,
		39.087788, 30.249439, 25.089361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631065, 30.939978, 25.072880>,  <39.683723, 30.294264, 24.724874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631065, 30.939978, 25.072880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411964, 30.651991, 25.243345>,  <39.280502, 30.479198, 25.345625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411964, 30.651991, 25.243345>,  <39.631065, 30.939978, 25.072880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411964, 30.651991, 25.243345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667870, -0.069485, 0.741027,
		-0.503902, 0.690523, 0.518903,
		-0.547752, -0.719965, 0.426166,
		39.247639, 30.436001, 25.371195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663052, 31.040012, 25.775244>,  <39.631065, 30.939978, 25.072880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663052, 31.040012, 25.775244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504082, 30.673149, 25.787073>,  <39.408699, 30.453032, 25.794170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504082, 30.673149, 25.787073>,  <39.663052, 31.040012, 25.775244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504082, 30.673149, 25.787073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601820, -0.236178, 0.762910,
		-0.692726, 0.320995, 0.645827,
		-0.397421, -0.917160, 0.029574,
		39.384857, 30.398001, 25.795946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367905, 30.940599, 26.479973>,  <39.663052, 31.040012, 25.775244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367905, 30.940599, 26.479973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427193, 30.580282, 26.316704>,  <39.462765, 30.364092, 26.218742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427193, 30.580282, 26.316704>,  <39.367905, 30.940599, 26.479973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427193, 30.580282, 26.316704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566365, -0.261026, 0.781726,
		-0.810716, -0.347044, 0.471487,
		0.148223, -0.900792, -0.408171,
		39.471661, 30.310045, 26.194252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352779, 30.502541, 26.968725>,  <39.367905, 30.940599, 26.479973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352779, 30.502541, 26.968725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544849, 30.255323, 26.719742>,  <39.660091, 30.106993, 26.570353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544849, 30.255323, 26.719742>,  <39.352779, 30.502541, 26.968725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544849, 30.255323, 26.719742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419267, -0.461598, 0.781756,
		-0.770484, -0.636357, 0.037476,
		0.480177, -0.618043, -0.622458,
		39.688904, 30.069910, 26.533005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213131, 29.807142, 27.100088>,  <39.352779, 30.502541, 26.968725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213131, 29.807142, 27.100088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540089, 29.750586, 26.876707>,  <39.736263, 29.716652, 26.742678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540089, 29.750586, 26.876707>,  <39.213131, 29.807142, 27.100088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540089, 29.750586, 26.876707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426586, -0.502932, 0.751720,
		-0.387152, -0.852683, -0.350779,
		0.817397, -0.141393, -0.558454,
		39.785309, 29.708168, 26.709171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450096, 29.048372, 27.218983>,  <39.213131, 29.807142, 27.100088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450096, 29.048372, 27.218983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767632, 29.246235, 27.077484>,  <39.958153, 29.364952, 26.992584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767632, 29.246235, 27.077484>,  <39.450096, 29.048372, 27.218983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767632, 29.246235, 27.077484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594361, -0.508009, 0.623428,
		0.128676, -0.705153, -0.697282,
		0.793837, 0.494657, -0.353746,
		40.005783, 29.394632, 26.971359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018375, 28.558443, 27.051626>,  <39.450096, 29.048372, 27.218983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018375, 28.558443, 27.051626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196560, 28.909637, 27.121717>,  <40.303471, 29.120354, 27.163773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196560, 28.909637, 27.121717>,  <40.018375, 28.558443, 27.051626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196560, 28.909637, 27.121717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709410, -0.465538, 0.529161,
		0.546171, -0.111413, -0.830231,
		0.445460, 0.877987, 0.175226,
		40.330196, 29.173033, 27.174286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812080, 28.438807, 27.016317>,  <40.018375, 28.558443, 27.051626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812080, 28.438807, 27.016317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761963, 28.782309, 27.215052>,  <40.731892, 28.988409, 27.334291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761963, 28.782309, 27.215052>,  <40.812080, 28.438807, 27.016317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761963, 28.782309, 27.215052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772879, -0.229504, 0.591595,
		0.622060, 0.458115, -0.634958,
		-0.125293, 0.858754, 0.496834,
		40.724377, 29.039934, 27.364101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479031, 28.642141, 27.263884>,  <40.812080, 28.438807, 27.016317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479031, 28.642141, 27.263884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221352, 28.848356, 27.489887>,  <41.066746, 28.972086, 27.625488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221352, 28.848356, 27.489887>,  <41.479031, 28.642141, 27.263884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221352, 28.848356, 27.489887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607032, -0.104803, 0.787736,
		0.465322, 0.850434, -0.245434,
		-0.644195, 0.515538, 0.565008,
		41.028091, 29.003017, 27.659389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821445, 29.145115, 27.430698>,  <41.479031, 28.642141, 27.263884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821445, 29.145115, 27.430698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533176, 29.128250, 27.707497>,  <41.360214, 29.118132, 27.873575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533176, 29.128250, 27.707497>,  <41.821445, 29.145115, 27.430698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533176, 29.128250, 27.707497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660695, 0.260647, 0.703950,
		-0.210047, 0.964513, -0.159983,
		-0.720668, -0.042163, 0.691997,
		41.316975, 29.115601, 27.915096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823013, 29.786240, 27.825811>,  <41.821445, 29.145115, 27.430698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823013, 29.786240, 27.825811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697960, 29.461905, 28.023722>,  <41.622929, 29.267303, 28.142467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697960, 29.461905, 28.023722>,  <41.823013, 29.786240, 27.825811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697960, 29.461905, 28.023722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630624, 0.212353, 0.746471,
		-0.710334, 0.545390, 0.444945,
		-0.312632, -0.810837, 0.494778,
		41.604172, 29.218653, 28.172155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869709, 29.916403, 28.543762>,  <41.823013, 29.786240, 27.825811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869709, 29.916403, 28.543762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852917, 29.516756, 28.543201>,  <41.842842, 29.276968, 28.542866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.852917, 29.516756, 28.543201>,  <41.869709, 29.916403, 28.543762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852917, 29.516756, 28.543201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656108, -0.028625, 0.754124,
		-0.753499, 0.030738, 0.656730,
		-0.041979, -0.999118, -0.001401,
		41.840324, 29.217020, 28.542782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513687, 29.560785, 28.996895>,  <41.869709, 29.916403, 28.543762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513687, 29.560785, 28.996895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223721, 29.835800, 29.013792>,  <41.049740, 30.000809, 29.023932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.223721, 29.835800, 29.013792>,  <41.513687, 29.560785, 28.996895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223721, 29.835800, 29.013792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550830, -0.615420, 0.563778,
		0.413616, 0.385424, 0.824846,
		-0.724920, 0.687537, 0.042244,
		41.006245, 30.042061, 29.026464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396835, 29.754366, 29.663307>,  <41.513687, 29.560785, 28.996895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396835, 29.754366, 29.663307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049408, 29.804209, 29.471449>,  <40.840950, 29.834114, 29.356335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049408, 29.804209, 29.471449>,  <41.396835, 29.754366, 29.663307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049408, 29.804209, 29.471449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462215, -0.552763, 0.693404,
		-0.178728, 0.823970, 0.537708,
		-0.868570, 0.124606, -0.479646,
		40.788837, 29.841591, 29.327555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471947, 29.618725, 30.401752>,  <41.396835, 29.754366, 29.663307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471947, 29.618725, 30.401752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088596, 29.694771, 30.486950>,  <40.858585, 29.740398, 30.538069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.088596, 29.694771, 30.486950>,  <41.471947, 29.618725, 30.401752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088596, 29.694771, 30.486950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218155, -0.968903, -0.116773,
		0.184169, -0.158378, 0.970051,
		-0.958379, 0.190115, 0.212992,
		40.801083, 29.751806, 30.550848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295834, 29.229074, 31.008217>,  <41.471947, 29.618725, 30.401752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295834, 29.229074, 31.008217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982677, 29.297173, 30.768850>,  <40.794785, 29.338032, 30.625231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982677, 29.297173, 30.768850>,  <41.295834, 29.229074, 31.008217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982677, 29.297173, 30.768850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044652, -0.974728, -0.218887,
		-0.620558, -0.144643, 0.770705,
		-0.782888, 0.170246, -0.598417,
		40.747810, 29.348246, 30.589325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660847, 29.644661, 31.230654>,  <41.295834, 29.229074, 31.008217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660847, 29.644661, 31.230654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525177, 29.423033, 31.534750>,  <40.443775, 29.290056, 31.717207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525177, 29.423033, 31.534750>,  <40.660847, 29.644661, 31.230654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525177, 29.423033, 31.534750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234710, 0.732744, 0.638746,
		-0.910971, 0.395085, -0.118485,
		-0.339178, -0.554070, 0.760240,
		40.423424, 29.256811, 31.762821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947048, 29.857233, 31.621590>,  <40.660847, 29.644661, 31.230654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947048, 29.857233, 31.621590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225918, 29.689854, 31.854433>,  <40.393238, 29.589426, 31.994139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225918, 29.689854, 31.854433>,  <39.947048, 29.857233, 31.621590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225918, 29.689854, 31.854433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019012, 0.800901, 0.598495,
		-0.716650, -0.428322, 0.550411,
		0.697174, -0.418447, 0.582109,
		40.435070, 29.564320, 32.029064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741741, 29.741493, 32.378647>,  <39.947048, 29.857233, 31.621590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741741, 29.741493, 32.378647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128895, 29.807692, 32.302944>,  <40.361187, 29.847410, 32.257523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128895, 29.807692, 32.302944>,  <39.741741, 29.741493, 32.378647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128895, 29.807692, 32.302944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080259, 0.916788, 0.391227,
		0.238256, -0.363471, 0.900623,
		0.967880, 0.165496, -0.189258,
		40.419258, 29.857340, 32.246166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992661, 29.998842, 32.950871>,  <39.741741, 29.741493, 32.378647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992661, 29.998842, 32.950871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219460, 30.127998, 32.647755>,  <40.355541, 30.205492, 32.465885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219460, 30.127998, 32.647755>,  <39.992661, 29.998842, 32.950871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219460, 30.127998, 32.647755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023650, 0.925970, 0.376855,
		0.823376, -0.195756, 0.532665,
		0.567003, 0.322891, -0.757792,
		40.389561, 30.224865, 32.420418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436932, 30.458315, 33.294796>,  <39.992661, 29.998842, 32.950871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436932, 30.458315, 33.294796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407181, 30.528687, 32.902161>,  <40.389332, 30.570910, 32.666580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407181, 30.528687, 32.902161>,  <40.436932, 30.458315, 33.294796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407181, 30.528687, 32.902161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098194, 0.978240, 0.182768,
		0.992384, 0.109980, -0.055481,
		-0.074374, 0.175929, -0.981589,
		40.384869, 30.581465, 32.607685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929356, 30.935692, 33.190025>,  <40.436932, 30.458315, 33.294796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929356, 30.935692, 33.190025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618893, 30.948793, 32.938152>,  <40.432613, 30.956654, 32.787029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.618893, 30.948793, 32.938152>,  <40.929356, 30.935692, 33.190025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618893, 30.948793, 32.938152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085482, 0.983964, 0.156547,
		0.624713, 0.175332, -0.760916,
		-0.776162, 0.032753, -0.629683,
		40.386044, 30.958620, 32.749249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995876, 31.403906, 32.634483>,  <40.929356, 30.935692, 33.190025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995876, 31.403906, 32.634483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598347, 31.369368, 32.662365>,  <40.359829, 31.348644, 32.679096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598347, 31.369368, 32.662365>,  <40.995876, 31.403906, 32.634483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598347, 31.369368, 32.662365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082109, 0.994724, 0.061500,
		-0.074649, 0.055396, -0.995670,
		-0.993824, -0.086345, 0.069706,
		40.300201, 31.343464, 32.683277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798660, 31.943113, 32.126850>,  <40.995876, 31.403906, 32.634483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798660, 31.943113, 32.126850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515228, 31.866999, 32.398647>,  <40.345169, 31.821329, 32.561726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.515228, 31.866999, 32.398647>,  <40.798660, 31.943113, 32.126850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515228, 31.866999, 32.398647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234632, 0.971697, 0.027443,
		-0.665483, -0.139985, -0.733168,
		-0.708576, -0.190288, 0.679493,
		40.302654, 31.809912, 32.602497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902119, 32.113087, 31.364859>,  <40.798660, 31.943113, 32.126850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902119, 32.113087, 31.364859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974247, 31.863316, 31.060865>,  <41.017525, 31.713453, 30.878469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.974247, 31.863316, 31.060865>,  <40.902119, 32.113087, 31.364859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974247, 31.863316, 31.060865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913162, -0.393417, 0.106580,
		-0.365542, 0.674768, -0.641145,
		0.180320, -0.624429, -0.759983,
		41.028343, 31.675987, 30.832870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253506, 32.463539, 31.399529>,  <40.902119, 32.113087, 31.364859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253506, 32.463539, 31.399529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398193, 32.612278, 31.741497>,  <40.485004, 32.701523, 31.946678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398193, 32.612278, 31.741497>,  <40.253506, 32.463539, 31.399529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398193, 32.612278, 31.741497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718463, 0.695564, 0.001447,
		-0.594114, -0.614751, 0.518758,
		0.361718, 0.371849, 0.854920,
		40.506710, 32.723831, 31.997972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737453, 32.295322, 31.797670>,  <40.253506, 32.463539, 31.399529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737453, 32.295322, 31.797670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930550, 32.635517, 31.881227>,  <40.046406, 32.839634, 31.931362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930550, 32.635517, 31.881227>,  <39.737453, 32.295322, 31.797670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930550, 32.635517, 31.881227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864888, 0.500458, -0.038860,
		-0.137593, -0.161912, 0.977166,
		0.482739, 0.850486, 0.208895,
		40.075371, 32.890663, 31.943895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507408, 32.662926, 32.475239>,  <39.737453, 32.295322, 31.797670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507408, 32.662926, 32.475239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583076, 32.823399, 32.116737>,  <39.628475, 32.919682, 31.901636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583076, 32.823399, 32.116737>,  <39.507408, 32.662926, 32.475239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583076, 32.823399, 32.116737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978112, -0.003588, -0.208050,
		-0.086681, 0.915992, 0.391721,
		0.189167, 0.401181, -0.896253,
		39.639828, 32.943752, 31.847862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919235, 33.139931, 32.329514>,  <39.507408, 32.662926, 32.475239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919235, 33.139931, 32.329514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109108, 33.008884, 32.002747>,  <39.223030, 32.930256, 31.806686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109108, 33.008884, 32.002747>,  <38.919235, 33.139931, 32.329514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109108, 33.008884, 32.002747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879533, -0.141537, -0.454301,
		0.033211, 0.934151, -0.355330,
		0.474678, -0.327612, -0.816916,
		39.251511, 32.910603, 31.757671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910553, 33.442104, 31.673342>,  <38.919235, 33.139931, 32.329514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910553, 33.442104, 31.673342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750332, 33.808453, 31.662506>,  <38.654198, 34.028263, 31.656004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.750332, 33.808453, 31.662506>,  <38.910553, 33.442104, 31.673342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750332, 33.808453, 31.662506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576013, 0.274691, 0.769905,
		0.712575, 0.292788, -0.637583,
		-0.400557, 0.915871, -0.027088,
		38.630165, 34.083214, 31.654379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313686, 34.019001, 31.656677>,  <38.910553, 33.442104, 31.673342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313686, 34.019001, 31.656677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016609, 34.162834, 31.882635>,  <38.838364, 34.249134, 32.018211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016609, 34.162834, 31.882635>,  <39.313686, 34.019001, 31.656677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016609, 34.162834, 31.882635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652681, 0.200139, 0.730720,
		0.149694, 0.911398, -0.383333,
		-0.742697, 0.359579, 0.564893,
		38.793800, 34.270706, 32.052105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477852, 34.649967, 31.896667>,  <39.313686, 34.019001, 31.656677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477852, 34.649967, 31.896667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204185, 34.548836, 32.170307>,  <39.039986, 34.488155, 32.334492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204185, 34.548836, 32.170307>,  <39.477852, 34.649967, 31.896667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204185, 34.548836, 32.170307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621515, 0.288693, 0.728269,
		-0.381623, 0.923436, -0.040377,
		-0.684166, -0.252829, 0.684101,
		38.998936, 34.472988, 32.375538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587601, 35.168205, 32.393749>,  <39.477852, 34.649967, 31.896667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587601, 35.168205, 32.393749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372948, 34.881847, 32.572418>,  <39.244156, 34.710033, 32.679619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372948, 34.881847, 32.572418>,  <39.587601, 35.168205, 32.393749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372948, 34.881847, 32.572418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514901, 0.141551, 0.845482,
		-0.668506, 0.683705, 0.292655,
		-0.536635, -0.715898, 0.446668,
		39.211956, 34.667076, 32.706417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261097, 35.418171, 33.018673>,  <39.587601, 35.168205, 32.393749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261097, 35.418171, 33.018673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322208, 35.023743, 33.044983>,  <39.358875, 34.787086, 33.060768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322208, 35.023743, 33.044983>,  <39.261097, 35.418171, 33.018673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322208, 35.023743, 33.044983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479590, 0.132176, 0.867480,
		-0.864089, -0.100989, 0.493103,
		0.152783, -0.986068, 0.065779,
		39.368042, 34.727921, 33.064716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987694, 34.836796, 33.374680>,  <39.261097, 35.418171, 33.018673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987694, 34.836796, 33.374680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318985, 34.968029, 33.556404>,  <39.517757, 35.046768, 33.665440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318985, 34.968029, 33.556404>,  <38.987694, 34.836796, 33.374680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318985, 34.968029, 33.556404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040742, -0.773307, 0.632722,
		0.558912, -0.542546, -0.627105,
		0.828226, 0.328086, 0.454315,
		39.567451, 35.066456, 33.692699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659031, 34.729923, 33.957787>,  <38.987694, 34.836796, 33.374680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659031, 34.729923, 33.957787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811493, 34.380329, 33.837208>,  <38.902969, 34.170574, 33.764862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811493, 34.380329, 33.837208>,  <38.659031, 34.729923, 33.957787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811493, 34.380329, 33.837208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181151, -0.249135, 0.951376,
		-0.906588, -0.417233, 0.063363,
		0.381159, -0.873984, -0.301444,
		38.925842, 34.118134, 33.746773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265049, 34.078659, 34.250565>,  <38.659031, 34.729923, 33.957787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265049, 34.078659, 34.250565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656147, 34.014545, 34.196411>,  <38.890804, 33.976078, 34.163921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656147, 34.014545, 34.196411>,  <38.265049, 34.078659, 34.250565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656147, 34.014545, 34.196411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072810, -0.345937, 0.935428,
		-0.196771, -0.924465, -0.326566,
		0.977743, -0.160287, -0.135381,
		38.949471, 33.966457, 34.155796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531235, 33.332855, 34.373234>,  <38.265049, 34.078659, 34.250565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531235, 33.332855, 34.373234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821175, 33.600174, 34.440128>,  <38.995140, 33.760567, 34.480263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.821175, 33.600174, 34.440128>,  <38.531235, 33.332855, 34.373234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821175, 33.600174, 34.440128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027048, -0.270170, 0.962433,
		0.688376, -0.693095, -0.213909,
		0.724850, 0.668302, 0.167232,
		39.038628, 33.800663, 34.490299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539368, 33.349323, 35.136547>,  <38.531235, 33.332855, 34.373234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539368, 33.349323, 35.136547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871662, 33.555908, 35.053467>,  <39.071037, 33.679859, 35.003616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871662, 33.555908, 35.053467>,  <38.539368, 33.349323, 35.136547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871662, 33.555908, 35.053467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063118, 0.283323, 0.956945,
		0.553075, -0.808079, 0.202769,
		0.830737, 0.516464, -0.207703,
		39.120884, 33.710846, 34.991158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138359, 33.148815, 35.552971>,  <38.539368, 33.349323, 35.136547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138359, 33.148815, 35.552971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157742, 33.531143, 35.436996>,  <39.169373, 33.760540, 35.367413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157742, 33.531143, 35.436996>,  <39.138359, 33.148815, 35.552971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157742, 33.531143, 35.436996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113380, 0.293663, 0.949161,
		0.992369, -0.013122, 0.122601,
		0.048458, 0.955819, -0.289935,
		39.172279, 33.817890, 35.350018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551346, 33.388271, 35.983231>,  <39.138359, 33.148815, 35.552971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551346, 33.388271, 35.983231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337154, 33.690647, 35.832600>,  <39.208641, 33.872074, 35.742222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337154, 33.690647, 35.832600>,  <39.551346, 33.388271, 35.983231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337154, 33.690647, 35.832600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180635, 0.333062, 0.925441,
		0.825006, 0.563577, -0.041797,
		-0.535478, 0.755944, -0.376580,
		39.176510, 33.917431, 35.719627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764717, 33.974583, 36.277870>,  <39.551346, 33.388271, 35.983231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764717, 33.974583, 36.277870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404537, 34.109520, 36.168041>,  <39.188431, 34.190483, 36.102142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404537, 34.109520, 36.168041>,  <39.764717, 33.974583, 36.277870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404537, 34.109520, 36.168041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114650, 0.424858, 0.897971,
		0.419580, 0.840057, -0.343886,
		-0.900449, 0.337344, -0.274574,
		39.134403, 34.210724, 36.085670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688805, 34.787853, 36.450649>,  <39.764717, 33.974583, 36.277870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688805, 34.787853, 36.450649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328053, 34.615112, 36.454990>,  <39.111603, 34.511467, 36.457596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328053, 34.615112, 36.454990>,  <39.688805, 34.787853, 36.450649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328053, 34.615112, 36.454990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154156, 0.345191, 0.925786,
		-0.403551, 0.833273, -0.377893,
		-0.901877, -0.431856, 0.010849,
		39.057487, 34.485554, 36.458244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310139, 35.257614, 36.716084>,  <39.688805, 34.787853, 36.450649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310139, 35.257614, 36.716084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085823, 34.928394, 36.752094>,  <38.951233, 34.730862, 36.773701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085823, 34.928394, 36.752094>,  <39.310139, 35.257614, 36.716084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085823, 34.928394, 36.752094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195179, 0.237083, 0.951681,
		-0.804623, 0.516123, -0.293596,
		-0.560791, -0.823048, 0.090026,
		38.917587, 34.681480, 36.779102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624859, 35.455658, 36.937843>,  <39.310139, 35.257614, 36.716084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624859, 35.455658, 36.937843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710873, 35.078827, 37.040806>,  <38.762482, 34.852730, 37.102581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710873, 35.078827, 37.040806>,  <38.624859, 35.455658, 36.937843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710873, 35.078827, 37.040806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391736, 0.158232, 0.906370,
		-0.894597, -0.295732, -0.335020,
		0.215031, -0.942075, 0.257403,
		38.775383, 34.796204, 37.118027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044323, 35.191383, 37.133194>,  <38.624859, 35.455658, 36.937843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044323, 35.191383, 37.133194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352077, 35.007504, 37.310608>,  <38.536732, 34.897175, 37.417057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352077, 35.007504, 37.310608>,  <38.044323, 35.191383, 37.133194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352077, 35.007504, 37.310608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285147, 0.374160, 0.882437,
		-0.571606, -0.805408, 0.156793,
		0.769388, -0.459697, 0.443532,
		38.582893, 34.869595, 37.443668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924206, 34.785686, 37.717293>,  <38.044323, 35.191383, 37.133194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924206, 34.785686, 37.717293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303158, 34.864613, 37.818115>,  <38.530529, 34.911968, 37.878609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303158, 34.864613, 37.818115>,  <37.924206, 34.785686, 37.717293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303158, 34.864613, 37.818115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303054, 0.299324, 0.904745,
		0.103068, -0.933528, 0.343370,
		0.947383, 0.197311, 0.252059,
		38.587372, 34.923805, 37.893734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162464, 34.329796, 38.346073>,  <37.924206, 34.785686, 37.717293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162464, 34.329796, 38.346073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342690, 34.684532, 38.305065>,  <38.450825, 34.897373, 38.280460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.342690, 34.684532, 38.305065>,  <38.162464, 34.329796, 38.346073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342690, 34.684532, 38.305065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168641, 0.197320, 0.965725,
		0.876671, -0.417831, 0.238462,
		0.450564, 0.886838, -0.102521,
		38.477859, 34.950584, 38.274307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586353, 34.501919, 38.952827>,  <38.162464, 34.329796, 38.346073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586353, 34.501919, 38.952827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552166, 34.859814, 38.777493>,  <38.531654, 35.074551, 38.672291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.552166, 34.859814, 38.777493>,  <38.586353, 34.501919, 38.952827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552166, 34.859814, 38.777493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077172, 0.432682, 0.898238,
		0.993348, 0.110601, 0.032067,
		-0.085471, 0.894737, -0.438339,
		38.526524, 35.128235, 38.645992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003952, 35.038723, 39.263607>,  <38.586353, 34.501919, 38.952827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003952, 35.038723, 39.263607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828606, 35.301220, 39.017948>,  <38.723396, 35.458717, 38.870552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828606, 35.301220, 39.017948>,  <39.003952, 35.038723, 39.263607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828606, 35.301220, 39.017948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898300, -0.297214, 0.323605,
		0.029832, 0.693545, 0.719796,
		-0.438368, 0.656247, -0.614145,
		38.697094, 35.498093, 38.833706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603172, 35.264210, 38.838036>,  <39.003952, 35.038723, 39.263607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603172, 35.264210, 38.838036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434528, 35.621891, 38.898243>,  <39.333344, 35.836498, 38.934368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434528, 35.621891, 38.898243>,  <39.603172, 35.264210, 38.838036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434528, 35.621891, 38.898243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082272, 0.203027, -0.975711,
		-0.903038, -0.398984, -0.159166,
		-0.421608, 0.894199, 0.150516,
		39.308044, 35.890152, 38.943398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147533, 34.971764, 38.338413>,  <39.603172, 35.264210, 38.838036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147533, 34.971764, 38.338413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507576, 34.816002, 38.260265>,  <40.723602, 34.722546, 38.213375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507576, 34.816002, 38.260265>,  <40.147533, 34.971764, 38.338413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507576, 34.816002, 38.260265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114999, 0.220170, -0.968659,
		0.420219, 0.894363, 0.153395,
		0.900106, -0.389408, -0.195371,
		40.777607, 34.699181, 38.201653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435192, 34.815079, 37.732452>,  <40.147533, 34.971764, 38.338413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435192, 34.815079, 37.732452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799648, 34.808193, 37.567753>,  <41.018322, 34.804062, 37.468933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799648, 34.808193, 37.567753>,  <40.435192, 34.815079, 37.732452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799648, 34.808193, 37.567753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213367, -0.835077, 0.507071,
		-0.352569, -0.549864, -0.757196,
		0.911137, -0.017217, -0.411744,
		41.072990, 34.803028, 37.444229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557087, 34.159546, 37.575855>,  <40.435192, 34.815079, 37.732452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557087, 34.159546, 37.575855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908298, 34.340450, 37.638508>,  <41.119026, 34.448994, 37.676098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908298, 34.340450, 37.638508>,  <40.557087, 34.159546, 37.575855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908298, 34.340450, 37.638508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306932, -0.783165, 0.540782,
		0.367240, -0.426746, -0.826452,
		0.878025, 0.452261, 0.156628,
		41.171707, 34.476128, 37.685497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128181, 33.578312, 37.338394>,  <40.557087, 34.159546, 37.575855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128181, 33.578312, 37.338394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205048, 33.860371, 37.611404>,  <41.251167, 34.029606, 37.775211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205048, 33.860371, 37.611404>,  <41.128181, 33.578312, 37.338394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205048, 33.860371, 37.611404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282732, -0.705776, 0.649571,
		0.939753, 0.068147, -0.334993,
		0.192164, 0.705149, 0.682523,
		41.262695, 34.071915, 37.816162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696835, 33.311913, 37.749676>,  <41.128181, 33.578312, 37.338394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696835, 33.311913, 37.749676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530556, 33.606865, 37.962643>,  <41.430790, 33.783836, 38.090424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530556, 33.606865, 37.962643>,  <41.696835, 33.311913, 37.749676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530556, 33.606865, 37.962643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085916, -0.550940, 0.830111,
		0.905436, 0.390817, 0.165670,
		-0.415696, 0.737379, 0.532418,
		41.405846, 33.828079, 38.122368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.323982, 32.813007, 38.259197>,  <41.696835, 33.311913, 37.749676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.323982, 32.813007, 38.259197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677128, 32.746826, 38.435001>,  <41.889015, 32.707119, 38.540485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.677128, 32.746826, 38.435001>,  <41.323982, 32.813007, 38.259197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.677128, 32.746826, 38.435001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195953, 0.980305, -0.024587,
		-0.426787, 0.107831, 0.897901,
		0.882868, -0.165453, 0.439511,
		41.941990, 32.697189, 38.566856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363445, 33.194645, 38.908798>,  <41.323982, 32.813007, 38.259197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363445, 33.194645, 38.908798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711723, 33.167908, 38.713894>,  <41.920689, 33.151867, 38.596951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.711723, 33.167908, 38.713894>,  <41.363445, 33.194645, 38.908798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.711723, 33.167908, 38.713894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018247, 0.985649, -0.167818,
		0.491490, 0.155009, 0.856977,
		0.870692, -0.066844, -0.487265,
		41.972931, 33.147854, 38.567715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856712, 33.704170, 39.186153>,  <41.363445, 33.194645, 38.908798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856712, 33.704170, 39.186153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918861, 33.657623, 38.793762>,  <41.956150, 33.629696, 38.558327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.918861, 33.657623, 38.793762>,  <41.856712, 33.704170, 39.186153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918861, 33.657623, 38.793762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343251, 0.924802, -0.164072,
		0.926304, 0.362214, 0.103743,
		0.155371, -0.116371, -0.980978,
		41.965473, 33.622711, 38.499470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661446, 34.327309, 38.861561>,  <41.856712, 33.704170, 39.186153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661446, 34.327309, 38.861561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794117, 34.195736, 38.507885>,  <41.873718, 34.116791, 38.295681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794117, 34.195736, 38.507885>,  <41.661446, 34.327309, 38.861561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794117, 34.195736, 38.507885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332979, 0.836106, -0.435950,
		0.882674, 0.439012, 0.167792,
		0.331679, -0.328931, -0.884191,
		41.893620, 34.097057, 38.242626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984085, 34.897026, 38.540012>,  <41.661446, 34.327309, 38.861561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984085, 34.897026, 38.540012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823277, 34.631428, 38.287827>,  <41.726791, 34.472069, 38.136517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823277, 34.631428, 38.287827>,  <41.984085, 34.897026, 38.540012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823277, 34.631428, 38.287827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370100, 0.747642, -0.551414,
		0.837500, 0.011656, -0.546312,
		-0.402019, -0.663999, -0.630465,
		41.702671, 34.432228, 38.098686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207226, 35.164368, 37.897717>,  <41.984085, 34.897026, 38.540012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207226, 35.164368, 37.897717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885742, 34.936642, 37.828514>,  <41.692852, 34.800007, 37.786991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.885742, 34.936642, 37.828514>,  <42.207226, 35.164368, 37.897717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885742, 34.936642, 37.828514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394727, 0.727696, -0.560936,
		0.445247, -0.382538, -0.809580,
		-0.803707, -0.569318, -0.173007,
		41.644630, 34.765846, 37.776611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203094, 35.032875, 37.289669>,  <42.207226, 35.164368, 37.897717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203094, 35.032875, 37.289669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824490, 35.041523, 37.418446>,  <41.597328, 35.046711, 37.495712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824490, 35.041523, 37.418446>,  <42.203094, 35.032875, 37.289669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824490, 35.041523, 37.418446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237109, 0.630123, -0.739408,
		-0.218846, -0.776194, -0.591294,
		-0.946512, 0.021615, 0.321943,
		41.540535, 35.048008, 37.515030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537281, 35.684956, 37.022114>,  <42.203094, 35.032875, 37.289669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537281, 35.684956, 37.022114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425968, 36.044380, 37.157845>,  <42.359180, 36.260036, 37.239281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425968, 36.044380, 37.157845>,  <42.537281, 35.684956, 37.022114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425968, 36.044380, 37.157845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888390, 0.106498, 0.446566,
		0.365131, 0.425724, -0.827912,
		-0.278285, 0.898564, 0.339324,
		42.342484, 36.313950, 37.259640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878796, 36.219837, 36.800583>,  <42.537281, 35.684956, 37.022114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878796, 36.219837, 36.800583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984138, 35.934345, 36.540974>,  <43.047344, 35.763050, 36.385208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984138, 35.934345, 36.540974>,  <42.878796, 36.219837, 36.800583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984138, 35.934345, 36.540974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770288, -0.249454, 0.586880,
		-0.580776, -0.654494, 0.484083,
		0.263353, -0.713730, -0.649026,
		43.063145, 35.720226, 36.346264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377365, 35.931599, 37.217484>,  <42.878796, 36.219837, 36.800583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377365, 35.931599, 37.217484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466015, 35.859318, 36.834187>,  <43.519203, 35.815948, 36.604210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466015, 35.859318, 36.834187>,  <43.377365, 35.931599, 37.217484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466015, 35.859318, 36.834187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973522, -0.015445, 0.228071,
		-0.056014, -0.983416, 0.172496,
		0.221624, -0.180704, -0.958242,
		43.532501, 35.805107, 36.546715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.729759, 35.196690, 37.096008>,  <43.377365, 35.931599, 37.217484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.729759, 35.196690, 37.096008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833054, 35.526527, 36.894669>,  <43.895031, 35.724430, 36.773865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.833054, 35.526527, 36.894669>,  <43.729759, 35.196690, 37.096008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833054, 35.526527, 36.894669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874645, 0.021701, 0.484277,
		0.410255, -0.565312, -0.715621,
		0.258238, 0.824592, -0.503350,
		43.910526, 35.773907, 36.743664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317539, 35.112621, 36.797485>,  <43.729759, 35.196690, 37.096008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317539, 35.112621, 36.797485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282093, 35.504559, 36.869106>,  <44.260826, 35.739719, 36.912079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.282093, 35.504559, 36.869106>,  <44.317539, 35.112621, 36.797485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282093, 35.504559, 36.869106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927773, 0.015782, 0.372810,
		0.362469, 0.199159, -0.910468,
		-0.088618, 0.979840, 0.179054,
		44.255508, 35.798512, 36.922821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.811703, 35.451584, 36.361759>,  <44.317539, 35.112621, 36.797485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.811703, 35.451584, 36.361759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752708, 35.636463, 36.711529>,  <44.717312, 35.747391, 36.921391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.752708, 35.636463, 36.711529>,  <44.811703, 35.451584, 36.361759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.752708, 35.636463, 36.711529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983901, -0.021660, 0.177398,
		0.100934, 0.886510, -0.451567,
		-0.147484, 0.462202, 0.874424,
		44.708462, 35.775124, 36.973858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279751, 36.090332, 36.557133>,  <44.811703, 35.451584, 36.361759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279751, 36.090332, 36.557133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149658, 35.892471, 36.879509>,  <45.071602, 35.773754, 37.072937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149658, 35.892471, 36.879509>,  <45.279751, 36.090332, 36.557133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149658, 35.892471, 36.879509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945253, -0.145854, 0.291929,
		-0.026853, 0.856765, 0.515007,
		-0.325231, -0.494651, 0.805944,
		45.052090, 35.744076, 37.121292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809135, 36.221794, 37.150925>,  <45.279751, 36.090332, 36.557133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809135, 36.221794, 37.150925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575787, 35.914993, 37.257793>,  <45.435776, 35.730911, 37.321915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575787, 35.914993, 37.257793>,  <45.809135, 36.221794, 37.150925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575787, 35.914993, 37.257793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727560, -0.347280, 0.591653,
		-0.361018, 0.539537, 0.760635,
		-0.583372, -0.767005, 0.267171,
		45.400776, 35.684891, 37.337944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.470879, 36.383812, 36.787094>,  <45.809135, 36.221794, 37.150925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.470879, 36.383812, 36.787094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240940, 36.061623, 36.729443>,  <46.102978, 35.868309, 36.694851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240940, 36.061623, 36.729443>,  <46.470879, 36.383812, 36.787094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.240940, 36.061623, 36.729443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606823, -0.301479, -0.735443,
		0.548928, -0.510221, 0.662082,
		-0.574842, -0.805472, -0.144124,
		46.068489, 35.819981, 36.686207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.767239, 35.819099, 37.030842>,  <46.470879, 36.383812, 36.787094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.767239, 35.819099, 37.030842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536942, 35.747604, 36.711700>,  <46.398762, 35.704708, 36.520218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.536942, 35.747604, 36.711700>,  <46.767239, 35.819099, 37.030842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.536942, 35.747604, 36.711700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813289, -0.225593, -0.536349,
		-0.084123, -0.957685, 0.275251,
		-0.575747, -0.178739, -0.797851,
		46.364216, 35.693981, 36.472343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.045395, 35.562935, 36.498875>,  <46.767239, 35.819099, 37.030842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.045395, 35.562935, 36.498875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983120, 35.296406, 36.207184>,  <46.945755, 35.136490, 36.032169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.983120, 35.296406, 36.207184>,  <47.045395, 35.562935, 36.498875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.983120, 35.296406, 36.207184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765860, 0.384824, -0.515139,
		0.623873, -0.638691, 0.450396,
		-0.155691, -0.666322, -0.729230,
		46.936413, 35.096508, 35.988415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.680103, 35.348667, 36.206448>,  <47.045395, 35.562935, 36.498875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.680103, 35.348667, 36.206448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.442352, 35.272148, 35.894009>,  <47.299702, 35.226238, 35.706543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.442352, 35.272148, 35.894009>,  <47.680103, 35.348667, 36.206448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.442352, 35.272148, 35.894009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736283, 0.261176, -0.624239,
		0.323420, -0.946146, -0.014389,
		-0.594379, -0.191297, -0.781101,
		47.264038, 35.214760, 35.659679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.894966, 34.809895, 35.717064>,  <47.680103, 35.348667, 36.206448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.894966, 34.809895, 35.717064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.684185, 35.084949, 35.517273>,  <47.557716, 35.249981, 35.397396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.684185, 35.084949, 35.517273>,  <47.894966, 34.809895, 35.717064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.684185, 35.084949, 35.517273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697097, 0.013498, -0.716850,
		-0.486190, -0.725930, -0.486462,
		-0.526949, 0.687637, -0.499481,
		47.526100, 35.291241, 35.367428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.966385, 34.615280, 34.933681>,  <47.894966, 34.809895, 35.717064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.966385, 34.615280, 34.933681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.905621, 35.002880, 35.011608>,  <47.869164, 35.235439, 35.058365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.905621, 35.002880, 35.011608>,  <47.966385, 34.615280, 34.933681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.905621, 35.002880, 35.011608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718253, 0.243632, -0.651733,
		-0.678996, 0.040923, -0.733001,
		-0.151911, 0.969004, 0.194818,
		47.860046, 35.293583, 35.070053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.581192, 27.227964, 22.954206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.328033, 27.509794, 23.082592>,  <33.176140, 27.678892, 23.159622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.328033, 27.509794, 23.082592>,  <33.581192, 27.227964, 22.954206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328033, 27.509794, 23.082592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569688, 0.143055, 0.809315,
		0.524308, 0.695060, -0.491927,
		-0.632895, 0.704576, 0.320963,
		33.138165, 27.721167, 23.178881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948368, 27.760086, 23.111206>,  <33.581192, 27.227964, 22.954206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948368, 27.760086, 23.111206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.620815, 27.793203, 23.338390>,  <33.424282, 27.813074, 23.474701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.620815, 27.793203, 23.338390>,  <33.948368, 27.760086, 23.111206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620815, 27.793203, 23.338390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556832, 0.354541, 0.751158,
		-0.139176, 0.931368, -0.336429,
		-0.818883, 0.082791, 0.567959,
		33.375149, 27.818041, 23.508778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080360, 28.310785, 23.555422>,  <33.948368, 27.760086, 23.111206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080360, 28.310785, 23.555422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.759338, 28.157915, 23.738657>,  <33.566727, 28.066193, 23.848598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.759338, 28.157915, 23.738657>,  <34.080360, 28.310785, 23.555422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759338, 28.157915, 23.738657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388718, 0.247484, 0.887496,
		-0.452551, 0.890333, -0.050060,
		-0.802556, -0.382178, 0.458088,
		33.518570, 28.043262, 23.876083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891605, 28.823555, 24.120203>,  <34.080360, 28.310785, 23.555422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891605, 28.823555, 24.120203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.716545, 28.480736, 24.228964>,  <33.611511, 28.275043, 24.294220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.716545, 28.480736, 24.228964>,  <33.891605, 28.823555, 24.120203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716545, 28.480736, 24.228964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401141, 0.084528, 0.912108,
		-0.804705, 0.508253, 0.306804,
		-0.437648, -0.857050, 0.271901,
		33.585251, 28.223621, 24.310534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361855, 28.926292, 24.663479>,  <33.891605, 28.823555, 24.120203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361855, 28.926292, 24.663479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.512730, 28.556551, 24.686453>,  <33.603256, 28.334705, 24.700237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.512730, 28.556551, 24.686453>,  <33.361855, 28.926292, 24.663479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512730, 28.556551, 24.686453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267435, 0.168081, 0.948803,
		-0.886684, -0.342515, 0.310602,
		0.377186, -0.924355, 0.057435,
		33.625885, 28.279245, 24.703684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335495, 28.884615, 25.312876>,  <33.361855, 28.926292, 24.663479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335495, 28.884615, 25.312876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.556190, 28.569771, 25.202576>,  <33.688610, 28.380865, 25.136395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.556190, 28.569771, 25.202576>,  <33.335495, 28.884615, 25.312876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556190, 28.569771, 25.202576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452591, 0.004858, 0.891705,
		-0.700530, -0.616794, 0.358919,
		0.551742, -0.787109, -0.275752,
		33.721714, 28.333637, 25.119850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202179, 28.466658, 25.922276>,  <33.335495, 28.884615, 25.312876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202179, 28.466658, 25.922276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.540260, 28.427380, 25.712135>,  <33.743107, 28.403812, 25.586052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.540260, 28.427380, 25.712135>,  <33.202179, 28.466658, 25.922276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540260, 28.427380, 25.712135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533212, 0.088125, 0.841379,
		-0.036324, -0.991258, 0.126844,
		0.845202, -0.098197, -0.525349,
		33.793819, 28.397921, 25.554531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635330, 28.053520, 26.368273>,  <33.202179, 28.466658, 25.922276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635330, 28.053520, 26.368273> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.880077, 28.193792, 26.084682>,  <34.026924, 28.277956, 25.914528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.880077, 28.193792, 26.084682>,  <33.635330, 28.053520, 26.368273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880077, 28.193792, 26.084682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701289, 0.174023, 0.691310,
		0.365808, -0.920184, -0.139451,
		0.611865, 0.350682, -0.708973,
		34.063637, 28.298996, 25.871990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292671, 27.660858, 26.419817>,  <33.635330, 28.053520, 26.368273>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292671, 27.660858, 26.419817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.369293, 28.007175, 26.234903>,  <34.415268, 28.214966, 26.123955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.369293, 28.007175, 26.234903>,  <34.292671, 27.660858, 26.419817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369293, 28.007175, 26.234903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710403, 0.202688, 0.673977,
		0.677224, -0.457514, -0.576236,
		0.191557, 0.865794, -0.462285,
		34.426762, 28.266914, 26.096218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951149, 27.753237, 26.488276>,  <34.292671, 27.660858, 26.419817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951149, 27.753237, 26.488276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.858669, 28.132267, 26.400047>,  <34.803181, 28.359684, 26.347111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.858669, 28.132267, 26.400047>,  <34.951149, 27.753237, 26.488276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858669, 28.132267, 26.400047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679842, 0.319528, 0.660089,
		0.695960, 0.002663, -0.718076,
		-0.231202, 0.947573, -0.220568,
		34.789310, 28.416538, 26.333878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534245, 28.027527, 26.348610>,  <34.951149, 27.753237, 26.488276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534245, 28.027527, 26.348610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.329674, 28.353340, 26.458139>,  <35.206932, 28.548828, 26.523857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.329674, 28.353340, 26.458139>,  <35.534245, 28.027527, 26.348610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329674, 28.353340, 26.458139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770445, 0.293494, 0.565929,
		0.380601, 0.500398, -0.777653,
		-0.511427, 0.814532, 0.273825,
		35.176247, 28.597700, 26.540287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965813, 28.603729, 26.095860>,  <35.534245, 28.027527, 26.348610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965813, 28.603729, 26.095860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.732533, 28.723263, 26.398006>,  <35.592564, 28.794983, 26.579294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.732533, 28.723263, 26.398006>,  <35.965813, 28.603729, 26.095860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732533, 28.723263, 26.398006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794750, 0.402305, 0.454449,
		-0.168082, 0.865361, -0.472122,
		-0.583199, 0.298834, 0.755366,
		35.557571, 28.812914, 26.624617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138699, 29.411076, 26.224472>,  <35.965813, 28.603729, 26.095860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138699, 29.411076, 26.224472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949276, 29.282888, 26.552629>,  <35.835621, 29.205976, 26.749523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.949276, 29.282888, 26.552629>,  <36.138699, 29.411076, 26.224472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949276, 29.282888, 26.552629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603615, 0.560230, 0.567266,
		-0.641400, 0.763834, -0.071860,
		-0.473555, -0.320469, 0.820393,
		35.807209, 29.186749, 26.798748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047649, 30.070368, 26.667601>,  <36.138699, 29.411076, 26.224472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047649, 30.070368, 26.667601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.962982, 29.778646, 26.927851>,  <35.912182, 29.603613, 27.084002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.962982, 29.778646, 26.927851>,  <36.047649, 30.070368, 26.667601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962982, 29.778646, 26.927851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440754, 0.522942, 0.729566,
		-0.872315, 0.441189, 0.210755,
		-0.211664, -0.729303, 0.650627,
		35.899483, 29.559855, 27.123039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763420, 30.322308, 27.276325>,  <36.047649, 30.070368, 26.667601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763420, 30.322308, 27.276325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.918949, 29.978064, 27.407877>,  <36.012268, 29.771517, 27.486807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.918949, 29.978064, 27.407877>,  <35.763420, 30.322308, 27.276325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918949, 29.978064, 27.407877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449565, 0.488817, 0.747629,
		-0.804180, -0.142845, 0.576966,
		0.388826, -0.860612, 0.328879,
		36.035595, 29.719879, 27.506540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788624, 30.430862, 28.138931>,  <35.763420, 30.322308, 27.276325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788624, 30.430862, 28.138931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032406, 30.131735, 28.033606>,  <36.178673, 29.952259, 27.970409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.032406, 30.131735, 28.033606>,  <35.788624, 30.430862, 28.138931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032406, 30.131735, 28.033606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579849, 0.193934, 0.791306,
		-0.540687, -0.634947, 0.551815,
		0.609453, -0.747818, -0.263315,
		36.215240, 29.907389, 27.954611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954330, 30.095886, 28.761240>,  <35.788624, 30.430862, 28.138931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954330, 30.095886, 28.761240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.223164, 29.928001, 28.517227>,  <36.384464, 29.827271, 28.370819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.223164, 29.928001, 28.517227>,  <35.954330, 30.095886, 28.761240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223164, 29.928001, 28.517227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679615, 0.022563, 0.733222,
		-0.293978, -0.907377, 0.300406,
		0.672087, -0.419712, -0.610034,
		36.424789, 29.802088, 28.334217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249184, 29.606138, 29.074200>,  <35.954330, 30.095886, 28.761240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249184, 29.606138, 29.074200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.523048, 29.695868, 28.796806>,  <36.687366, 29.749704, 28.630371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.523048, 29.695868, 28.796806>,  <36.249184, 29.606138, 29.074200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523048, 29.695868, 28.796806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699258, 0.066247, 0.711793,
		0.205612, -0.972261, -0.111502,
		0.684661, 0.224322, -0.693482,
		36.728447, 29.763165, 28.588762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818199, 29.186174, 29.261988>,  <36.249184, 29.606138, 29.074200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818199, 29.186174, 29.261988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009937, 29.448370, 29.028557>,  <37.124981, 29.605688, 28.888498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009937, 29.448370, 29.028557>,  <36.818199, 29.186174, 29.261988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009937, 29.448370, 29.028557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744942, 0.047665, 0.665425,
		0.463996, -0.753697, -0.465455,
		0.479342, 0.655491, -0.583576,
		37.153740, 29.645018, 28.853483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491898, 28.981878, 29.243240>,  <36.818199, 29.186174, 29.261988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491898, 28.981878, 29.243240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.487530, 29.372120, 29.155537>,  <37.484909, 29.606266, 29.102915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.487530, 29.372120, 29.155537>,  <37.491898, 28.981878, 29.243240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487530, 29.372120, 29.155537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692545, 0.165546, 0.702122,
		0.721292, -0.144182, -0.677458,
		-0.010917, 0.975606, -0.219260,
		37.484253, 29.664801, 29.089758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173542, 29.151127, 29.119511>,  <37.491898, 28.981878, 29.243240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173542, 29.151127, 29.119511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951771, 29.459068, 29.245960>,  <37.818707, 29.643833, 29.321831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.951771, 29.459068, 29.245960>,  <38.173542, 29.151127, 29.119511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951771, 29.459068, 29.245960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689910, 0.212725, 0.691934,
		0.465441, 0.601724, -0.649071,
		-0.554427, 0.769855, 0.316125,
		37.785442, 29.690025, 29.340797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865246, 29.365768, 29.301266>,  <38.173542, 29.151127, 29.119511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865246, 29.365768, 29.301266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.137920, 29.073111, 29.301867>,  <39.301525, 28.897516, 29.302227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.137920, 29.073111, 29.301867>,  <38.865246, 29.365768, 29.301266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137920, 29.073111, 29.301867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359303, -0.336553, -0.870422,
		0.637346, 0.592812, -0.492305,
		0.681683, -0.731646, 0.001502,
		39.342426, 28.853617, 29.302317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976582, 29.329786, 28.645018>,  <38.865246, 29.365768, 29.301266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976582, 29.329786, 28.645018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123821, 28.984074, 28.782143>,  <39.212166, 28.776646, 28.864418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.123821, 28.984074, 28.782143>,  <38.976582, 29.329786, 28.645018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123821, 28.984074, 28.782143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280379, -0.454718, -0.845351,
		0.886503, 0.215060, -0.409709,
		0.368104, -0.864280, 0.342810,
		39.234253, 28.724789, 28.884985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346901, 29.104162, 28.091097>,  <38.976582, 29.329786, 28.645018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346901, 29.104162, 28.091097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.279316, 28.798876, 28.340561>,  <39.238766, 28.615704, 28.490238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.279316, 28.798876, 28.340561>,  <39.346901, 29.104162, 28.091097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279316, 28.798876, 28.340561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507994, -0.474804, -0.718682,
		0.844626, -0.438247, -0.307484,
		-0.168965, -0.763217, 0.623659,
		39.228626, 28.569910, 28.527658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696388, 28.516485, 27.836508>,  <39.346901, 29.104162, 28.091097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696388, 28.516485, 27.836508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.389015, 28.383095, 28.054977>,  <39.204590, 28.303061, 28.186060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.389015, 28.383095, 28.054977>,  <39.696388, 28.516485, 27.836508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389015, 28.383095, 28.054977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423639, -0.374595, -0.824748,
		0.479629, -0.865142, 0.146577,
		-0.768431, -0.333477, 0.546174,
		39.158485, 28.283052, 28.218830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610382, 27.876902, 27.518318>,  <39.696388, 28.516485, 27.836508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610382, 27.876902, 27.518318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.287735, 27.877447, 27.754745>,  <39.094147, 27.877773, 27.896603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.287735, 27.877447, 27.754745>,  <39.610382, 27.876902, 27.518318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287735, 27.877447, 27.754745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455888, -0.637914, -0.620671,
		0.376206, -0.770106, 0.515175,
		-0.806620, 0.001362, 0.591069,
		39.045750, 27.877855, 27.932066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409306, 27.158003, 27.696915>,  <39.610382, 27.876902, 27.518318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409306, 27.158003, 27.696915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.090065, 27.396950, 27.728373>,  <38.898521, 27.540318, 27.747248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.090065, 27.396950, 27.728373>,  <39.409306, 27.158003, 27.696915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090065, 27.396950, 27.728373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531952, -0.637307, -0.557554,
		-0.282943, -0.486821, 0.826407,
		-0.798104, 0.597365, 0.078643,
		38.850636, 27.576159, 27.751965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827564, 26.687891, 27.874931>,  <39.409306, 27.158003, 27.696915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827564, 26.687891, 27.874931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.680454, 27.027174, 27.722464>,  <38.592190, 27.230743, 27.630983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.680454, 27.027174, 27.722464>,  <38.827564, 26.687891, 27.874931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680454, 27.027174, 27.722464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404219, -0.514964, -0.755922,
		-0.837467, -0.123930, 0.532250,
		-0.367771, 0.848206, -0.381171,
		38.570122, 27.281635, 27.608112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081089, 26.535458, 27.695238>,  <38.827564, 26.687891, 27.874931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081089, 26.535458, 27.695238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191898, 26.854130, 27.480368>,  <38.258385, 27.045334, 27.351446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191898, 26.854130, 27.480368>,  <38.081089, 26.535458, 27.695238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191898, 26.854130, 27.480368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433581, -0.395256, -0.809803,
		-0.857477, 0.457242, 0.235931,
		0.277023, 0.796682, -0.537174,
		38.275005, 27.093134, 27.319216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561665, 26.749699, 27.381901>,  <38.081089, 26.535458, 27.695238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561665, 26.749699, 27.381901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.814632, 26.944330, 27.140806>,  <37.966412, 27.061110, 26.996149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.814632, 26.944330, 27.140806>,  <37.561665, 26.749699, 27.381901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814632, 26.944330, 27.140806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601026, -0.182654, -0.778078,
		-0.488689, 0.854329, 0.176934,
		0.632416, 0.486580, -0.602735,
		38.004356, 27.090303, 26.959986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221546, 27.345318, 27.048628>,  <37.561665, 26.749699, 27.381901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221546, 27.345318, 27.048628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535847, 27.262207, 26.815586>,  <37.724426, 27.212341, 26.675760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535847, 27.262207, 26.815586>,  <37.221546, 27.345318, 27.048628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535847, 27.262207, 26.815586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600953, -0.033390, -0.798586,
		0.146473, 0.977606, -0.151099,
		0.785748, -0.207775, -0.582605,
		37.771572, 27.199875, 26.640804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232700, 27.823963, 26.418201>,  <37.221546, 27.345318, 27.048628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232700, 27.823963, 26.418201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435848, 27.491032, 26.329391>,  <37.557739, 27.291273, 26.276106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.435848, 27.491032, 26.329391>,  <37.232700, 27.823963, 26.418201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435848, 27.491032, 26.329391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477479, -0.057472, -0.876762,
		0.716993, 0.551295, -0.426607,
		0.507873, -0.832328, -0.222025,
		37.588211, 27.241333, 26.262783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010506, 27.787769, 25.732414>,  <37.232700, 27.823963, 26.418201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010506, 27.787769, 25.732414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.244408, 27.463497, 25.744173>,  <37.384750, 27.268934, 25.751228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.244408, 27.463497, 25.744173>,  <37.010506, 27.787769, 25.732414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244408, 27.463497, 25.744173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434589, -0.343663, -0.832483,
		0.684979, 0.474022, -0.553270,
		0.584753, -0.810678, 0.029397,
		37.419834, 27.220293, 25.752993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513695, 27.874439, 25.197052>,  <37.010506, 27.787769, 25.732414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513695, 27.874439, 25.197052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.489861, 27.478880, 25.251499>,  <37.475559, 27.241545, 25.284166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.489861, 27.478880, 25.251499>,  <37.513695, 27.874439, 25.197052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489861, 27.478880, 25.251499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750330, -0.045564, -0.659491,
		0.658372, -0.141429, -0.739286,
		-0.059586, -0.988899, 0.136116,
		37.471985, 27.182211, 25.292334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524445, 27.591127, 24.628723>,  <37.513695, 27.874439, 25.197052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524445, 27.591127, 24.628723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341087, 27.307581, 24.843155>,  <37.231071, 27.137453, 24.971813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341087, 27.307581, 24.843155>,  <37.524445, 27.591127, 24.628723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341087, 27.307581, 24.843155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633192, -0.162778, -0.756684,
		0.623650, -0.686302, -0.374232,
		-0.458398, -0.708867, 0.536078,
		37.203568, 27.094921, 25.003979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351795, 27.086445, 24.143690>,  <37.524445, 27.591127, 24.628723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351795, 27.086445, 24.143690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.111423, 26.974165, 24.443047>,  <36.967201, 26.906797, 24.622660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.111423, 26.974165, 24.443047>,  <37.351795, 27.086445, 24.143690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111423, 26.974165, 24.443047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692841, -0.283948, -0.662830,
		0.398560, -0.916832, -0.023845,
		-0.600934, -0.280699, 0.748390,
		36.931145, 26.889956, 24.667564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082752, 26.413763, 23.945688>,  <37.351795, 27.086445, 24.143690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082752, 26.413763, 23.945688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830101, 26.552588, 24.222988>,  <36.678509, 26.635881, 24.389368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830101, 26.552588, 24.222988>,  <37.082752, 26.413763, 23.945688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830101, 26.552588, 24.222988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764566, -0.426946, -0.482862,
		0.128399, -0.835025, 0.535020,
		-0.631627, 0.347059, 0.693252,
		36.640614, 26.656706, 24.430964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664711, 25.822554, 24.001387>,  <37.082752, 26.413763, 23.945688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664711, 25.822554, 24.001387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475796, 26.140594, 24.153576>,  <36.362446, 26.331419, 24.244890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.475796, 26.140594, 24.153576>,  <36.664711, 25.822554, 24.001387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475796, 26.140594, 24.153576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833951, -0.263285, -0.484982,
		-0.285438, -0.546345, 0.787422,
		-0.472284, 0.795103, 0.380473,
		36.334110, 26.379126, 24.267719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100918, 25.556705, 24.134779>,  <36.664711, 25.822554, 24.001387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100918, 25.556705, 24.134779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.018654, 25.947794, 24.151575>,  <35.969296, 26.182447, 24.161654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.018654, 25.947794, 24.151575>,  <36.100918, 25.556705, 24.134779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018654, 25.947794, 24.151575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908827, -0.174900, -0.378739,
		-0.362958, -0.116054, 0.924550,
		-0.205658, 0.977723, 0.041992,
		35.956955, 26.241110, 24.164173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427391, 25.736881, 24.592316>,  <36.100918, 25.556705, 24.134779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427391, 25.736881, 24.592316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.497849, 26.020016, 24.318691>,  <35.540123, 26.189898, 24.154516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.497849, 26.020016, 24.318691>,  <35.427391, 25.736881, 24.592316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497849, 26.020016, 24.318691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878432, -0.200573, -0.433738,
		-0.444220, 0.677301, 0.586457,
		0.176144, 0.707837, -0.684061,
		35.550694, 26.232367, 24.113472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.627056, 26.041107, 24.339870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.881203, 26.184240, 24.066151>,  <35.033691, 26.270121, 23.901918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.881203, 26.184240, 24.066151>,  <34.627056, 26.041107, 24.339870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881203, 26.184240, 24.066151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697043, -0.115598, -0.707650,
		-0.332324, 0.926603, 0.175977,
		0.635368, 0.357833, -0.684298,
		35.071812, 26.291590, 23.860861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220013, 26.506334, 23.966713>,  <34.627056, 26.041107, 24.339870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220013, 26.506334, 23.966713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.517025, 26.442421, 23.706526>,  <34.695232, 26.404074, 23.550413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.517025, 26.442421, 23.706526>,  <34.220013, 26.506334, 23.966713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517025, 26.442421, 23.706526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660450, -0.012902, -0.750759,
		0.111567, 0.987068, -0.115109,
		0.742535, -0.159784, -0.650469,
		34.739784, 26.394485, 23.511385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165840, 27.057556, 23.363300>,  <34.220013, 26.506334, 23.966713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165840, 27.057556, 23.363300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377670, 26.760328, 23.199642>,  <34.504768, 26.581991, 23.101448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377670, 26.760328, 23.199642>,  <34.165840, 27.057556, 23.363300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377670, 26.760328, 23.199642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551255, 0.065125, -0.831792,
		0.644724, 0.666039, -0.375132,
		0.529575, -0.743069, -0.409145,
		34.536541, 26.537407, 23.076899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309593, 27.288120, 22.671144>,  <34.165840, 27.057556, 23.363300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309593, 27.288120, 22.671144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349125, 26.890091, 22.667898>,  <34.372845, 26.651274, 22.665951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.349125, 26.890091, 22.667898>,  <34.309593, 27.288120, 22.671144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349125, 26.890091, 22.667898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420431, -0.034365, -0.906673,
		0.901926, 0.093020, -0.421755,
		0.098832, -0.995071, -0.008114,
		34.378773, 26.591570, 22.665464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585911, 27.185665, 21.969357>,  <34.309593, 27.288120, 22.671144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585911, 27.185665, 21.969357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439884, 26.829838, 22.079191>,  <34.352268, 26.616343, 22.145092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439884, 26.829838, 22.079191>,  <34.585911, 27.185665, 21.969357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439884, 26.829838, 22.079191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290262, -0.171486, -0.941457,
		0.884577, -0.423395, -0.195603,
		-0.365065, -0.889567, 0.274588,
		34.330364, 26.562967, 22.161568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861683, 26.644569, 21.509426>,  <34.585911, 27.185665, 21.969357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861683, 26.644569, 21.509426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.524807, 26.500061, 21.669529>,  <34.322681, 26.413355, 21.765591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.524807, 26.500061, 21.669529>,  <34.861683, 26.644569, 21.509426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524807, 26.500061, 21.669529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436654, 0.021492, -0.899373,
		0.316317, -0.932212, -0.175851,
		-0.842186, -0.361273, 0.400256,
		34.272152, 26.391680, 21.789606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685211, 26.204641, 21.017712>,  <34.861683, 26.644569, 21.509426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685211, 26.204641, 21.017712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.346581, 26.274349, 21.218887>,  <34.143402, 26.316174, 21.339592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.346581, 26.274349, 21.218887>,  <34.685211, 26.204641, 21.017712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346581, 26.274349, 21.218887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520142, -0.070267, -0.851184,
		-0.113002, -0.982186, 0.150135,
		-0.846571, 0.174277, 0.502936,
		34.092609, 26.326630, 21.369768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205227, 25.601833, 20.950655>,  <34.685211, 26.204641, 21.017712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205227, 25.601833, 20.950655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004593, 25.943205, 21.007332>,  <33.884212, 26.148027, 21.041338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.004593, 25.943205, 21.007332>,  <34.205227, 25.601833, 20.950655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004593, 25.943205, 21.007332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466033, -0.128563, -0.875377,
		-0.728855, -0.505105, 0.462211,
		-0.501580, 0.853428, 0.141692,
		33.854118, 26.199234, 21.049839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621231, 25.295361, 20.734449>,  <34.205227, 25.601833, 20.950655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621231, 25.295361, 20.734449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.535046, 25.685940, 20.738897>,  <33.483334, 25.920288, 20.741566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.535046, 25.685940, 20.738897>,  <33.621231, 25.295361, 20.734449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535046, 25.685940, 20.738897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575808, -0.117843, -0.809048,
		-0.788684, -0.180719, 0.587638,
		-0.215459, 0.976449, 0.011118,
		33.470409, 25.978874, 20.742233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866524, 25.361879, 20.642492>,  <33.621231, 25.295361, 20.734449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866524, 25.361879, 20.642492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.042297, 25.700729, 20.522976>,  <33.147762, 25.904039, 20.451265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.042297, 25.700729, 20.522976>,  <32.866524, 25.361879, 20.642492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042297, 25.700729, 20.522976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545739, -0.012431, -0.837863,
		-0.713491, 0.531245, 0.456848,
		0.439431, 0.847127, -0.298791,
		33.174126, 25.954868, 20.433338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306477, 25.720753, 20.313934>,  <32.866524, 25.361879, 20.642492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306477, 25.720753, 20.313934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.616116, 25.933912, 20.177233>,  <32.801899, 26.061808, 20.095213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.616116, 25.933912, 20.177233>,  <32.306477, 25.720753, 20.313934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616116, 25.933912, 20.177233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527076, 0.243489, -0.814190,
		-0.350669, 0.810389, 0.469362,
		0.774095, 0.532900, -0.341752,
		32.848343, 26.093782, 20.074707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975880, 26.319115, 20.059055>,  <32.306477, 25.720753, 20.313934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975880, 26.319115, 20.059055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.334995, 26.257320, 19.894077>,  <32.550465, 26.220243, 19.795092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.334995, 26.257320, 19.894077>,  <31.975880, 26.319115, 20.059055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334995, 26.257320, 19.894077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415805, 0.011417, -0.909382,
		0.145196, 0.987929, -0.053986,
		0.897789, -0.154487, -0.412443,
		32.604332, 26.210974, 19.770344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084568, 26.891222, 19.528223>,  <31.975880, 26.319115, 20.059055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084568, 26.891222, 19.528223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.339005, 26.602974, 19.417881>,  <32.491665, 26.430025, 19.351677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.339005, 26.602974, 19.417881>,  <32.084568, 26.891222, 19.528223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339005, 26.602974, 19.417881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215535, 0.177334, -0.960259,
		0.740900, 0.670268, -0.042518,
		0.636091, -0.720620, -0.275853,
		32.529831, 26.386787, 19.335125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489700, 27.242748, 19.060137>,  <32.084568, 26.891222, 19.528223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489700, 27.242748, 19.060137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486713, 26.847168, 19.000910>,  <32.484921, 26.609819, 18.965374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486713, 26.847168, 19.000910>,  <32.489700, 27.242748, 19.060137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486713, 26.847168, 19.000910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388978, 0.139281, -0.910658,
		0.921217, 0.050798, -0.385719,
		-0.007464, -0.988949, -0.148067,
		32.484474, 26.550484, 18.956490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480652, 27.263229, 18.387774>,  <32.489700, 27.242748, 19.060137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480652, 27.263229, 18.387774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.403919, 26.874498, 18.442551>,  <32.357880, 26.641260, 18.475418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.403919, 26.874498, 18.442551>,  <32.480652, 27.263229, 18.387774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403919, 26.874498, 18.442551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335905, -0.066095, -0.939574,
		0.922155, -0.226236, -0.313763,
		-0.191827, -0.971828, 0.136944,
		32.346371, 26.582951, 18.483633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576031, 26.994444, 17.722412>,  <32.480652, 27.263229, 18.387774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576031, 26.994444, 17.722412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367981, 26.722486, 17.929182>,  <32.243149, 26.559313, 18.053244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.367981, 26.722486, 17.929182>,  <32.576031, 26.994444, 17.722412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367981, 26.722486, 17.929182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524952, -0.222931, -0.821418,
		0.673715, -0.698603, -0.240958,
		-0.520128, -0.679893, 0.516925,
		32.211941, 26.518518, 18.084259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718700, 26.389631, 17.357647>,  <32.576031, 26.994444, 17.722412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718700, 26.389631, 17.357647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.379921, 26.332222, 17.562420>,  <32.176651, 26.297777, 17.685284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.379921, 26.332222, 17.562420>,  <32.718700, 26.389631, 17.357647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379921, 26.332222, 17.562420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469121, -0.251393, -0.846597,
		0.250202, -0.957185, 0.145588,
		-0.846950, -0.143522, 0.511934,
		32.125835, 26.289165, 17.716000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280262, 25.711226, 17.232319>,  <32.718700, 26.389631, 17.357647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280262, 25.711226, 17.232319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.027641, 25.989780, 17.368660>,  <31.876068, 26.156914, 17.450464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.027641, 25.989780, 17.368660>,  <32.280262, 25.711226, 17.232319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027641, 25.989780, 17.368660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589582, -0.145855, -0.794430,
		-0.503518, -0.702686, 0.502695,
		-0.631556, 0.696390, 0.340851,
		31.838175, 26.198698, 17.470915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604908, 25.424377, 17.055418>,  <32.280262, 25.711226, 17.232319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604908, 25.424377, 17.055418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.522902, 25.808910, 17.128965>,  <31.473698, 26.039631, 17.173094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.522902, 25.808910, 17.128965>,  <31.604908, 25.424377, 17.055418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522902, 25.808910, 17.128965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699636, -0.012571, -0.714389,
		-0.684454, -0.275102, 0.675161,
		-0.205017, 0.961333, 0.183867,
		31.461397, 26.097311, 17.184126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026516, 25.296728, 16.801994>,  <31.604908, 25.424377, 17.055418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026516, 25.296728, 16.801994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.068398, 25.692093, 16.845949>,  <31.093527, 25.929312, 16.872322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.068398, 25.692093, 16.845949>,  <31.026516, 25.296728, 16.801994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068398, 25.692093, 16.845949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677242, 0.151778, -0.719935,
		-0.728272, 0.000960, 0.685288,
		0.104703, 0.988414, 0.109885,
		31.099808, 25.988617, 16.878914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377310, 25.674234, 16.981907>,  <31.026516, 25.296728, 16.801994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377310, 25.674234, 16.981907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.595713, 25.965481, 16.816149>,  <30.726755, 26.140228, 16.716694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.595713, 25.965481, 16.816149>,  <30.377310, 25.674234, 16.981907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595713, 25.965481, 16.816149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715430, 0.147854, -0.682861,
		-0.435931, 0.669320, 0.601644,
		0.546008, 0.728114, -0.414397,
		30.759516, 26.183914, 16.691830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009035, 26.246002, 16.859753>,  <30.377310, 25.674234, 16.981907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009035, 26.246002, 16.859753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.308224, 26.276205, 16.595984>,  <30.487736, 26.294327, 16.437721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.308224, 26.276205, 16.595984>,  <30.009035, 26.246002, 16.859753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308224, 26.276205, 16.595984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654121, 0.252326, -0.713062,
		0.112549, 0.964692, 0.238123,
		0.747969, 0.075507, -0.659424,
		30.532614, 26.298857, 16.398155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341272, 26.610069, 16.637449>,  <30.009035, 26.246002, 16.859753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341272, 26.610069, 16.637449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.632051, 26.739426, 16.879761>,  <29.806519, 26.817039, 17.025146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.632051, 26.739426, 16.879761>,  <29.341272, 26.610069, 16.637449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632051, 26.739426, 16.879761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019400, 0.872142, -0.488867,
		-0.686418, 0.367133, 0.627729,
		0.726948, 0.323390, 0.605777,
		29.850136, 26.836443, 17.061493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.608797, 26.676723, 16.428686>,  <29.341272, 26.610069, 16.637449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.608797, 26.676723, 16.428686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.381851, 26.956179, 16.603045>,  <28.245684, 27.123852, 16.707661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.381851, 26.956179, 16.603045>,  <28.608797, 26.676723, 16.428686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381851, 26.956179, 16.603045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823421, 0.486906, 0.291375,
		-0.008676, 0.524243, -0.851525,
		-0.567364, 0.698636, 0.435897,
		28.211641, 27.165770, 16.733814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001642, 27.252712, 16.530029>,  <28.608797, 26.676723, 16.428686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001642, 27.252712, 16.530029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.705534, 27.369789, 16.772131>,  <28.527868, 27.440035, 16.917391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.705534, 27.369789, 16.772131>,  <29.001642, 27.252712, 16.530029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705534, 27.369789, 16.772131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628027, 0.622373, 0.467155,
		-0.239961, 0.725936, -0.644543,
		-0.740271, 0.292692, 0.605253,
		28.483452, 27.457596, 16.953707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.981190, 28.051777, 16.597277>,  <29.001642, 27.252712, 16.530029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.981190, 28.051777, 16.597277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.805346, 27.864012, 16.903584>,  <28.699839, 27.751352, 17.087368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.805346, 27.864012, 16.903584>,  <28.981190, 28.051777, 16.597277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805346, 27.864012, 16.903584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570492, 0.512581, 0.641717,
		-0.693746, 0.718967, 0.042460,
		-0.439609, -0.469411, 0.765766,
		28.673462, 27.723188, 17.133314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882166, 28.516352, 17.084295>,  <28.981190, 28.051777, 16.597277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882166, 28.516352, 17.084295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.858429, 28.196007, 17.322655>,  <28.844187, 28.003799, 17.465670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.858429, 28.196007, 17.322655>,  <28.882166, 28.516352, 17.084295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858429, 28.196007, 17.322655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623763, 0.436310, 0.648501,
		-0.779358, 0.410183, 0.473658,
		-0.059342, -0.800864, 0.595899,
		28.840626, 27.955748, 17.501425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762875, 28.778049, 17.734261>,  <28.882166, 28.516352, 17.084295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762875, 28.778049, 17.734261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.908340, 28.412994, 17.808926>,  <28.995619, 28.193962, 17.853725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.908340, 28.412994, 17.808926>,  <28.762875, 28.778049, 17.734261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908340, 28.412994, 17.808926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618001, 0.386305, 0.684721,
		-0.697011, -0.133650, 0.704495,
		0.363663, -0.912637, 0.186663,
		29.017439, 28.139204, 17.864925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817682, 28.779213, 18.510401>,  <28.762875, 28.778049, 17.734261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817682, 28.779213, 18.510401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.046637, 28.482410, 18.370802>,  <29.184010, 28.304329, 18.287043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.046637, 28.482410, 18.370802>,  <28.817682, 28.779213, 18.510401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046637, 28.482410, 18.370802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708863, 0.233823, 0.665462,
		-0.412175, -0.628291, 0.659819,
		0.572385, -0.742009, -0.348996,
		29.218351, 28.259808, 18.266104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996098, 28.347057, 19.133411>,  <28.817682, 28.779213, 18.510401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996098, 28.347057, 19.133411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.253685, 28.312302, 18.829370>,  <29.408237, 28.291449, 18.646946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.253685, 28.312302, 18.829370>,  <28.996098, 28.347057, 19.133411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253685, 28.312302, 18.829370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759156, 0.195696, 0.620794,
		0.094810, -0.976808, 0.191983,
		0.643966, -0.086888, -0.760104,
		29.446875, 28.286236, 18.601339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448299, 27.858759, 19.373125>,  <28.996098, 28.347057, 19.133411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448299, 27.858759, 19.373125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.630720, 28.042322, 19.068121>,  <29.740173, 28.152460, 18.885118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.630720, 28.042322, 19.068121>,  <29.448299, 27.858759, 19.373125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630720, 28.042322, 19.068121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835482, 0.074377, 0.544461,
		0.306570, -0.885365, -0.349490,
		0.456053, 0.458908, -0.762508,
		29.767536, 28.179995, 18.839369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030054, 27.601772, 19.431198>,  <29.448299, 27.858759, 19.373125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030054, 27.601772, 19.431198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.130186, 27.910532, 19.197445>,  <30.190266, 28.095789, 19.057192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.130186, 27.910532, 19.197445>,  <30.030054, 27.601772, 19.431198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130186, 27.910532, 19.197445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791445, 0.184502, 0.582730,
		0.557630, -0.608382, -0.564731,
		0.250328, 0.771901, -0.584384,
		30.205284, 28.142101, 19.022129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666145, 27.524736, 19.412985>,  <30.030054, 27.601772, 19.431198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666145, 27.524736, 19.412985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.608612, 27.906868, 19.309711>,  <30.574093, 28.136147, 19.247747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.608612, 27.906868, 19.309711>,  <30.666145, 27.524736, 19.412985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608612, 27.906868, 19.309711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794333, 0.267054, 0.545634,
		0.590209, -0.126602, -0.797261,
		-0.143833, 0.955329, -0.258182,
		30.565462, 28.193466, 19.232256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240202, 27.791344, 19.047102>,  <30.666145, 27.524736, 19.412985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240202, 27.791344, 19.047102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.059490, 28.102705, 19.221449>,  <30.951063, 28.289522, 19.326057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.059490, 28.102705, 19.221449>,  <31.240202, 27.791344, 19.047102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059490, 28.102705, 19.221449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787492, 0.118368, 0.604852,
		0.419226, 0.616504, -0.666463,
		-0.451781, 0.778404, 0.435869,
		30.923956, 28.336226, 19.352209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679726, 28.293081, 19.042139>,  <31.240202, 27.791344, 19.047102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679726, 28.293081, 19.042139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.439125, 28.394205, 19.345264>,  <31.294764, 28.454880, 19.527140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.439125, 28.394205, 19.345264>,  <31.679726, 28.293081, 19.042139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439125, 28.394205, 19.345264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786864, 0.023649, 0.616673,
		0.137979, 0.967227, -0.213152,
		-0.601504, 0.252810, 0.757813,
		31.258675, 28.470049, 19.572609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146301, 28.672066, 19.604229>,  <31.679726, 28.293081, 19.042139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146301, 28.672066, 19.604229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.807961, 28.619316, 19.810974>,  <31.604956, 28.587666, 19.935020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.807961, 28.619316, 19.810974>,  <32.146301, 28.672066, 19.604229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807961, 28.619316, 19.810974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516404, 0.040341, 0.855395,
		-0.133657, 0.990445, 0.033979,
		-0.845850, -0.131876, 0.516861,
		31.554205, 28.579754, 19.966032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232677, 28.908514, 20.139860>,  <32.146301, 28.672066, 19.604229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232677, 28.908514, 20.139860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.919941, 28.693617, 20.266409>,  <31.732298, 28.564678, 20.342339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.919941, 28.693617, 20.266409>,  <32.232677, 28.908514, 20.139860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919941, 28.693617, 20.266409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511400, -0.262343, 0.818319,
		-0.356640, 0.801589, 0.479857,
		-0.781843, -0.537244, 0.316371,
		31.685389, 28.532444, 20.361320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182976, 29.111532, 20.857594>,  <32.232677, 28.908514, 20.139860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182976, 29.111532, 20.857594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.990578, 28.761993, 20.829212>,  <31.875137, 28.552271, 20.812183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.990578, 28.761993, 20.829212>,  <32.182976, 29.111532, 20.857594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990578, 28.761993, 20.829212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436400, -0.308831, 0.845090,
		-0.760392, 0.375522, 0.529894,
		-0.480998, -0.873846, -0.070955,
		31.846279, 28.499840, 20.807926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856186, 29.181324, 21.442980>,  <32.182976, 29.111532, 20.857594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856186, 29.181324, 21.442980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.842997, 28.793798, 21.344749>,  <31.835083, 28.561283, 21.285810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.842997, 28.793798, 21.344749>,  <31.856186, 29.181324, 21.442980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842997, 28.793798, 21.344749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214292, -0.246849, 0.945063,
		-0.976213, -0.021465, 0.215749,
		-0.032972, -0.968816, -0.245577,
		31.833105, 28.503153, 21.271076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401470, 28.888924, 21.998434>,  <31.856186, 29.181324, 21.442980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401470, 28.888924, 21.998434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.635691, 28.616514, 21.822556>,  <31.776224, 28.453068, 21.717028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.635691, 28.616514, 21.822556>,  <31.401470, 28.888924, 21.998434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635691, 28.616514, 21.822556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279375, -0.339643, 0.898105,
		-0.760971, -0.648728, -0.008618,
		0.585553, -0.681024, -0.439698,
		31.811357, 28.412207, 21.690647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319336, 28.273129, 22.406441>,  <31.401470, 28.888924, 21.998434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319336, 28.273129, 22.406441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.654219, 28.187277, 22.205236>,  <31.855148, 28.135765, 22.084515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.654219, 28.187277, 22.205236>,  <31.319336, 28.273129, 22.406441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654219, 28.187277, 22.205236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408296, -0.366621, 0.835993,
		-0.363868, -0.905269, -0.219290,
		0.837194, -0.214656, -0.503019,
		31.905380, 28.122889, 22.054333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588560, 27.523895, 22.590040>,  <31.319336, 28.273129, 22.406441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588560, 27.523895, 22.590040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.917011, 27.690165, 22.433598>,  <32.114082, 27.789927, 22.339731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.917011, 27.690165, 22.433598>,  <31.588560, 27.523895, 22.590040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917011, 27.690165, 22.433598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555012, -0.421760, 0.716994,
		0.133082, -0.805813, -0.577022,
		0.821128, 0.415673, -0.391107,
		32.163349, 27.814867, 22.316265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112675, 27.013908, 22.817976>,  <31.588560, 27.523895, 22.590040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112675, 27.013908, 22.817976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301079, 27.351315, 22.714724>,  <32.414124, 27.553759, 22.652773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.301079, 27.351315, 22.714724>,  <32.112675, 27.013908, 22.817976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301079, 27.351315, 22.714724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661287, -0.143973, 0.736187,
		0.583820, -0.517452, -0.625618,
		0.471013, 0.843514, -0.258130,
		32.442383, 27.604368, 22.637285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869011, 26.921253, 22.894529>,  <32.112675, 27.013908, 22.817976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869011, 26.921253, 22.894529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.798134, 27.314707, 22.907597>,  <32.755608, 27.550779, 22.915438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.798134, 27.314707, 22.907597>,  <32.869011, 26.921253, 22.894529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798134, 27.314707, 22.907597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682221, 0.098834, 0.724435,
		0.709351, 0.150651, -0.688568,
		-0.177191, 0.983634, 0.032669,
		32.744976, 27.609797, 22.917397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.302341, 25.962179, 25.707830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.326500, 26.345022, 25.594482>,  <37.340996, 26.574728, 25.526474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.326500, 26.345022, 25.594482>,  <37.302341, 25.962179, 25.707830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326500, 26.345022, 25.594482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783983, 0.130233, 0.606968,
		0.617838, -0.258818, -0.742489,
		0.060398, 0.957106, -0.283372,
		37.344620, 26.632154, 25.509470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960445, 26.019941, 25.600420>,  <37.302341, 25.962179, 25.707830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960445, 26.019941, 25.600420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.809010, 26.381294, 25.680983>,  <37.718147, 26.598106, 25.729321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.809010, 26.381294, 25.680983>,  <37.960445, 26.019941, 25.600420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809010, 26.381294, 25.680983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766746, 0.184230, 0.614947,
		0.518428, 0.387242, -0.762415,
		-0.378593, 0.903384, 0.201407,
		37.695431, 26.652309, 25.741405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473526, 26.337313, 26.050755>,  <37.960445, 26.019941, 25.600420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473526, 26.337313, 26.050755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.197273, 26.625587, 26.074854>,  <38.031521, 26.798553, 26.089314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.197273, 26.625587, 26.074854>,  <38.473526, 26.337313, 26.050755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197273, 26.625587, 26.074854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520939, 0.437967, 0.732671,
		0.501642, 0.537394, -0.677911,
		-0.690636, 0.720689, 0.060247,
		37.990082, 26.841795, 26.092928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753120, 26.985250, 25.855793>,  <38.473526, 26.337313, 26.050755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753120, 26.985250, 25.855793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.445923, 27.042906, 26.105406>,  <38.261604, 27.077499, 26.255173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.445923, 27.042906, 26.105406>,  <38.753120, 26.985250, 25.855793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445923, 27.042906, 26.105406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605070, 0.482703, 0.633158,
		-0.209959, 0.863841, -0.457925,
		-0.767990, 0.144140, 0.624032,
		38.215527, 27.086147, 26.292616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937931, 27.558994, 26.221605>,  <38.753120, 26.985250, 25.855793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937931, 27.558994, 26.221605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.652676, 27.409054, 26.458559>,  <38.481522, 27.319090, 26.600731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.652676, 27.409054, 26.458559>,  <38.937931, 27.558994, 26.221605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652676, 27.409054, 26.458559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391023, 0.488659, 0.779945,
		-0.581837, 0.787845, -0.201907,
		-0.713139, -0.374851, 0.592385,
		38.438732, 27.296598, 26.636274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597225, 28.095446, 26.537510>,  <38.937931, 27.558994, 26.221605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597225, 28.095446, 26.537510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.494511, 27.804991, 26.792629>,  <38.432884, 27.630718, 26.945700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.494511, 27.804991, 26.792629>,  <38.597225, 28.095446, 26.537510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494511, 27.804991, 26.792629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264002, 0.582126, 0.769046,
		-0.929712, 0.365859, 0.042221,
		-0.256785, -0.726138, 0.637797,
		38.417477, 27.587149, 26.983969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091103, 28.358246, 27.097094>,  <38.597225, 28.095446, 26.537510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091103, 28.358246, 27.097094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244579, 28.025904, 27.258318>,  <38.336666, 27.826498, 27.355053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.244579, 28.025904, 27.258318>,  <38.091103, 28.358246, 27.097094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244579, 28.025904, 27.258318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113065, 0.475449, 0.872447,
		-0.916514, -0.289177, 0.276366,
		0.383690, -0.830858, 0.403060,
		38.359688, 27.776646, 27.379236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768764, 28.234676, 27.829786>,  <38.091103, 28.358246, 27.097094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768764, 28.234676, 27.829786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.111401, 28.028721, 27.816311>,  <38.316982, 27.905148, 27.808226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.111401, 28.028721, 27.816311>,  <37.768764, 28.234676, 27.829786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111401, 28.028721, 27.816311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237082, 0.334748, 0.911996,
		-0.458301, -0.789197, 0.408814,
		0.856594, -0.514891, -0.033689,
		38.368378, 27.874254, 27.806204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950161, 28.121908, 28.529070>,  <37.768764, 28.234676, 27.829786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950161, 28.121908, 28.529070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.297932, 28.039330, 28.349524>,  <38.506592, 27.989782, 28.241795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.297932, 28.039330, 28.349524>,  <37.950161, 28.121908, 28.529070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297932, 28.039330, 28.349524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485721, 0.190866, 0.853021,
		-0.090429, -0.959662, 0.266219,
		0.869424, -0.206446, -0.448868,
		38.558758, 27.977396, 28.214863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285069, 27.702076, 29.033232>,  <37.950161, 28.121908, 28.529070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285069, 27.702076, 29.033232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.531330, 27.875418, 28.769966>,  <38.679085, 27.979422, 28.612007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.531330, 27.875418, 28.769966>,  <38.285069, 27.702076, 29.033232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531330, 27.875418, 28.769966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614071, 0.259599, 0.745336,
		0.493851, -0.863026, -0.106287,
		0.615652, 0.433353, -0.658163,
		38.716026, 28.005423, 28.572517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010601, 27.501518, 29.124258>,  <38.285069, 27.702076, 29.033232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010601, 27.501518, 29.124258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.067532, 27.864864, 28.966974>,  <39.101688, 28.082872, 28.872604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.067532, 27.864864, 28.966974>,  <39.010601, 27.501518, 29.124258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067532, 27.864864, 28.966974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557108, 0.254842, 0.790371,
		0.818153, -0.331549, -0.469788,
		0.142325, 0.908367, -0.393209,
		39.110229, 28.137375, 28.849012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696819, 27.601219, 29.299654>,  <39.010601, 27.501518, 29.124258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696819, 27.601219, 29.299654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.556938, 27.949327, 29.160898>,  <39.473007, 28.158194, 29.077644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.556938, 27.949327, 29.160898>,  <39.696819, 27.601219, 29.299654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556938, 27.949327, 29.160898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654267, 0.491880, 0.574447,
		0.670553, -0.026072, -0.741404,
		-0.349704, 0.870273, -0.346889,
		39.452026, 28.210409, 29.056831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321259, 28.019484, 29.131304>,  <39.696819, 27.601219, 29.299654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321259, 28.019484, 29.131304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.000542, 28.246819, 29.205194>,  <39.808113, 28.383219, 29.249529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.000542, 28.246819, 29.205194>,  <40.321259, 28.019484, 29.131304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000542, 28.246819, 29.205194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555416, 0.594611, 0.581335,
		0.220552, 0.568711, -0.792417,
		-0.801792, 0.568336, 0.184728,
		39.760006, 28.417318, 29.260612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868561, 28.550716, 29.057016>,  <40.321259, 28.019484, 29.131304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868561, 28.550716, 29.057016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.053780, 28.809614, 28.814804>,  <41.164909, 28.964952, 28.669477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.053780, 28.809614, 28.814804>,  <40.868561, 28.550716, 29.057016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.053780, 28.809614, 28.814804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840327, 0.103333, -0.532140,
		-0.281854, 0.755246, 0.591745,
		0.463044, 0.647245, -0.605528,
		41.192692, 29.003788, 28.633146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375988, 29.140759, 28.798067>,  <40.868561, 28.550716, 29.057016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375988, 29.140759, 28.798067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.667145, 29.142836, 28.523796>,  <40.841839, 29.144083, 28.359234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.667145, 29.142836, 28.523796>,  <40.375988, 29.140759, 28.798067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667145, 29.142836, 28.523796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676802, 0.165986, -0.717209,
		0.110087, 0.986115, 0.124335,
		0.727888, 0.005195, -0.685677,
		40.885509, 29.144394, 28.318092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251328, 29.729328, 28.342516>,  <40.375988, 29.140759, 28.798067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251328, 29.729328, 28.342516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.502033, 29.497290, 28.134417>,  <40.652454, 29.358067, 28.009558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.502033, 29.497290, 28.134417>,  <40.251328, 29.729328, 28.342516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502033, 29.497290, 28.134417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480432, 0.237965, -0.844132,
		0.613478, 0.779013, -0.129550,
		0.626761, -0.580096, -0.520249,
		40.690063, 29.323261, 27.978342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659035, 30.216911, 27.927536>,  <40.251328, 29.729328, 28.342516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659035, 30.216911, 27.927536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.662434, 29.847820, 27.773394>,  <40.664471, 29.626366, 27.680908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.662434, 29.847820, 27.773394>,  <40.659035, 30.216911, 27.927536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662434, 29.847820, 27.773394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351394, 0.358039, -0.865061,
		0.936189, 0.142761, -0.321199,
		0.008495, -0.922728, -0.385358,
		40.664982, 29.571001, 27.657785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949848, 30.310902, 27.221373>,  <40.659035, 30.216911, 27.927536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949848, 30.310902, 27.221373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.751205, 29.963726, 27.224577>,  <40.632019, 29.755421, 27.226500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.751205, 29.963726, 27.224577>,  <40.949848, 30.310902, 27.221373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751205, 29.963726, 27.224577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552841, 0.309176, -0.773807,
		0.669141, -0.388705, -0.633371,
		-0.496606, -0.867939, 0.008010,
		40.602222, 29.703344, 27.226980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984646, 30.126524, 26.540018>,  <40.949848, 30.310902, 27.221373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984646, 30.126524, 26.540018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.684151, 29.902170, 26.679188>,  <40.503853, 29.767557, 26.762690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.684151, 29.902170, 26.679188>,  <40.984646, 30.126524, 26.540018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684151, 29.902170, 26.679188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526691, 0.191725, -0.828153,
		0.397796, -0.805386, -0.439445,
		-0.751236, -0.560888, 0.347923,
		40.458778, 29.733904, 26.783566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833263, 29.669523, 26.001574>,  <40.984646, 30.126524, 26.540018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833263, 29.669523, 26.001574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.512978, 29.677402, 26.241060>,  <40.320805, 29.682129, 26.384752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.512978, 29.677402, 26.241060>,  <40.833263, 29.669523, 26.001574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512978, 29.677402, 26.241060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584268, 0.194928, -0.787803,
		-0.132225, -0.980620, -0.144574,
		-0.800717, 0.019697, 0.598719,
		40.272762, 29.683311, 26.420675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.313393, 29.243811, 25.666529>,  <40.833263, 29.669523, 26.001574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.313393, 29.243811, 25.666529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.130737, 29.498802, 25.914757>,  <40.021145, 29.651796, 26.063694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.130737, 29.498802, 25.914757>,  <40.313393, 29.243811, 25.666529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130737, 29.498802, 25.914757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633047, 0.257281, -0.730108,
		-0.625088, -0.726243, 0.286069,
		-0.456636, 0.637477, 0.620570,
		39.993748, 29.690044, 26.100927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581184, 29.095245, 25.733515>,  <40.313393, 29.243811, 25.666529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581184, 29.095245, 25.733515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.555454, 29.462437, 25.890068>,  <39.540016, 29.682751, 25.984001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.555454, 29.462437, 25.890068>,  <39.581184, 29.095245, 25.733515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555454, 29.462437, 25.890068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608305, 0.274842, -0.744598,
		-0.791093, -0.285975, 0.540732,
		-0.064321, 0.917976, 0.391385,
		39.536160, 29.737829, 26.007484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.913448, 29.203430, 25.773933>,  <39.581184, 29.095245, 25.733515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.913448, 29.203430, 25.773933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053459, 29.577732, 25.791084>,  <39.137466, 29.802313, 25.801374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053459, 29.577732, 25.791084>,  <38.913448, 29.203430, 25.773933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053459, 29.577732, 25.791084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578915, 0.252082, -0.775443,
		-0.736434, 0.246606, 0.629960,
		0.350031, 0.935757, 0.042878,
		39.158470, 29.858459, 25.803947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399570, 29.586309, 25.958832>,  <38.913448, 29.203430, 25.773933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399570, 29.586309, 25.958832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.650101, 29.852533, 25.796474>,  <38.800419, 30.012268, 25.699060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.650101, 29.852533, 25.796474>,  <38.399570, 29.586309, 25.958832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650101, 29.852533, 25.796474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708557, 0.268921, -0.652402,
		-0.325060, 0.696213, 0.640018,
		0.626325, 0.665559, -0.405891,
		38.837997, 30.052200, 25.674707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049664, 30.221363, 25.850340>,  <38.399570, 29.586309, 25.958832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049664, 30.221363, 25.850340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363747, 30.234354, 25.602989>,  <38.552197, 30.242149, 25.454578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363747, 30.234354, 25.602989>,  <38.049664, 30.221363, 25.850340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363747, 30.234354, 25.602989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618781, 0.003166, -0.785557,
		-0.023555, 0.999467, 0.022582,
		0.785210, 0.032477, -0.618377,
		38.599308, 30.244097, 25.417477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862823, 30.667967, 25.276766>,  <38.049664, 30.221363, 25.850340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862823, 30.667967, 25.276766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.177483, 30.471420, 25.127237>,  <38.366280, 30.353493, 25.037519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.177483, 30.471420, 25.127237>,  <37.862823, 30.667967, 25.276766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177483, 30.471420, 25.127237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441661, -0.024775, -0.896840,
		0.431416, 0.870601, -0.236507,
		0.786649, -0.491367, -0.373822,
		38.413479, 30.324011, 25.015091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986027, 30.963118, 24.612253>,  <37.862823, 30.667967, 25.276766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986027, 30.963118, 24.612253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.164265, 30.605690, 24.590401>,  <38.271206, 30.391233, 24.577290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.164265, 30.605690, 24.590401>,  <37.986027, 30.963118, 24.612253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164265, 30.605690, 24.590401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465320, -0.179041, -0.866846,
		0.764804, 0.411682, -0.495574,
		0.445593, -0.893567, -0.054633,
		38.297943, 30.337620, 24.574011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182190, 30.884403, 23.932243>,  <37.986027, 30.963118, 24.612253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182190, 30.884403, 23.932243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.172115, 30.517181, 24.090506>,  <38.166069, 30.296848, 24.185463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.172115, 30.517181, 24.090506>,  <38.182190, 30.884403, 23.932243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172115, 30.517181, 24.090506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576393, -0.310034, -0.756075,
		0.816784, -0.247097, -0.521351,
		-0.025188, -0.918053, 0.395656,
		38.164558, 30.241766, 24.209202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571735, 31.389036, 23.484982>,  <38.182190, 30.884403, 23.932243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571735, 31.389036, 23.484982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363663, 31.728876, 23.519848>,  <38.238819, 31.932779, 23.540768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363663, 31.728876, 23.519848>,  <38.571735, 31.389036, 23.484982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363663, 31.728876, 23.519848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199810, 0.021835, 0.979591,
		0.830356, 0.526977, -0.181117,
		-0.520177, 0.849599, 0.087165,
		38.207611, 31.983755, 23.545998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992504, 31.835117, 23.963963>,  <38.571735, 31.389036, 23.484982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992504, 31.835117, 23.963963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.626511, 31.991978, 24.001940>,  <38.406914, 32.086094, 24.024727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.626511, 31.991978, 24.001940>,  <38.992504, 31.835117, 23.963963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626511, 31.991978, 24.001940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116842, 0.032297, 0.992625,
		0.386193, 0.919333, -0.075371,
		-0.914988, 0.392152, 0.094944,
		38.352013, 32.109623, 24.030422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070461, 32.369778, 24.444187>,  <38.992504, 31.835117, 23.963963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070461, 32.369778, 24.444187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.671196, 32.347748, 24.434103>,  <38.431637, 32.334530, 24.428053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.671196, 32.347748, 24.434103>,  <39.070461, 32.369778, 24.444187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671196, 32.347748, 24.434103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034130, 0.167595, 0.985265,
		-0.050039, 0.984316, -0.169167,
		-0.998164, -0.055076, -0.025209,
		38.371746, 32.331226, 24.426540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854332, 32.916164, 24.787590>,  <39.070461, 32.369778, 24.444187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854332, 32.916164, 24.787590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.526222, 32.687565, 24.796839>,  <38.329357, 32.550404, 24.802387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.526222, 32.687565, 24.796839>,  <38.854332, 32.916164, 24.787590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526222, 32.687565, 24.796839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052797, 0.115906, 0.991856,
		-0.569524, 0.812377, -0.125249,
		-0.820278, -0.571498, 0.023121,
		38.280140, 32.516117, 24.803776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327129, 33.328632, 25.137884>,  <38.854332, 32.916164, 24.787590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327129, 33.328632, 25.137884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.223866, 32.943096, 25.164299>,  <38.161907, 32.711773, 25.180147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.223866, 32.943096, 25.164299>,  <38.327129, 33.328632, 25.137884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223866, 32.943096, 25.164299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143685, 0.105897, 0.983941,
		-0.955359, 0.244523, -0.165828,
		-0.258157, -0.963844, 0.066035,
		38.146420, 32.653942, 25.184109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763714, 33.363804, 25.559380>,  <38.327129, 33.328632, 25.137884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763714, 33.363804, 25.559380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.903263, 32.989639, 25.582310>,  <37.986992, 32.765141, 25.596067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.903263, 32.989639, 25.582310>,  <37.763714, 33.363804, 25.559380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903263, 32.989639, 25.582310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212757, -0.019482, 0.976911,
		-0.912700, -0.353016, -0.205813,
		0.348875, -0.935414, 0.057325,
		38.007927, 32.709015, 25.599506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349689, 33.069229, 26.110300>,  <37.763714, 33.363804, 25.559380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349689, 33.069229, 26.110300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.649040, 32.805424, 26.082073>,  <37.828651, 32.647141, 26.065136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.649040, 32.805424, 26.082073>,  <37.349689, 33.069229, 26.110300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649040, 32.805424, 26.082073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052008, -0.164415, 0.985019,
		-0.661234, -0.733494, -0.157344,
		0.748375, -0.659511, -0.070569,
		37.873554, 32.607571, 26.060902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156277, 32.516087, 26.526171>,  <37.349689, 33.069229, 26.110300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156277, 32.516087, 26.526171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.552444, 32.467976, 26.499008>,  <37.790146, 32.439110, 26.482710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.552444, 32.467976, 26.499008>,  <37.156277, 32.516087, 26.526171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552444, 32.467976, 26.499008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054119, -0.114410, 0.991958,
		-0.127098, -0.986123, -0.106803,
		0.990413, -0.120296, -0.067909,
		37.849567, 32.431892, 26.478636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357548, 31.989740, 26.950470>,  <37.156277, 32.516087, 26.526171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357548, 31.989740, 26.950470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.729580, 32.135101, 26.928946>,  <37.952797, 32.222317, 26.916031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.729580, 32.135101, 26.928946>,  <37.357548, 31.989740, 26.950470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729580, 32.135101, 26.928946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164951, -0.282222, 0.945062,
		0.328252, -0.887856, -0.322432,
		0.930076, 0.363404, -0.053813,
		38.008602, 32.244122, 26.912802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818562, 31.430992, 27.239868>,  <37.357548, 31.989740, 26.950470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818562, 31.430992, 27.239868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.012383, 31.779491, 27.271191>,  <38.128674, 31.988592, 27.289984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.012383, 31.779491, 27.271191>,  <37.818562, 31.430992, 27.239868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012383, 31.779491, 27.271191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025212, -0.103390, 0.994321,
		0.874399, -0.479826, -0.072064,
		0.484552, 0.871250, 0.078307,
		38.157749, 32.040867, 27.294683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383347, 31.263268, 27.664633>,  <37.818562, 31.430992, 27.239868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383347, 31.263268, 27.664633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363094, 31.662159, 27.686426>,  <38.350945, 31.901495, 27.699501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.363094, 31.662159, 27.686426>,  <38.383347, 31.263268, 27.664633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363094, 31.662159, 27.686426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086797, -0.049951, 0.994973,
		0.994939, 0.055106, -0.084028,
		-0.050632, 0.997230, 0.054482,
		38.347904, 31.961329, 27.702770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040306, 31.548197, 28.072330>,  <38.383347, 31.263268, 27.664633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040306, 31.548197, 28.072330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.749420, 31.822433, 28.085693>,  <38.574886, 31.986977, 28.093710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.749420, 31.822433, 28.085693>,  <39.040306, 31.548197, 28.072330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749420, 31.822433, 28.085693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128364, 0.088027, 0.987813,
		0.674297, 0.722644, -0.152020,
		-0.727219, 0.685593, 0.033405,
		38.531254, 32.028111, 28.095715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.383156, 31.543591, 19.693756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094933, 31.664410, 19.943417>,  <36.921997, 31.736900, 20.093212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094933, 31.664410, 19.943417>,  <37.383156, 31.543591, 19.693756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094933, 31.664410, 19.943417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692530, 0.358389, 0.626067,
		-0.034587, 0.883361, -0.467416,
		-0.720559, 0.302046, 0.624149,
		36.878765, 31.755024, 20.130661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.543831, 32.355247, 19.950504>,  <37.383156, 31.543591, 19.693756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.543831, 32.355247, 19.950504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319164, 32.135803, 20.198231>,  <37.184364, 32.004135, 20.346867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319164, 32.135803, 20.198231>,  <37.543831, 32.355247, 19.950504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319164, 32.135803, 20.198231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443029, 0.432752, 0.785144,
		-0.698751, 0.715365, -0.000011,
		-0.561669, -0.548615, 0.619314,
		37.150665, 31.971218, 20.384026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303745, 32.834267, 20.362783>,  <37.543831, 32.355247, 19.950504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303745, 32.834267, 20.362783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262581, 32.493896, 20.568827>,  <37.237885, 32.289673, 20.692453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262581, 32.493896, 20.568827>,  <37.303745, 32.834267, 20.362783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262581, 32.493896, 20.568827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385183, 0.443365, 0.809359,
		-0.917084, 0.281701, 0.282136,
		-0.102908, -0.850924, 0.515110,
		37.231709, 32.238621, 20.723360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366638, 33.053253, 21.086718>,  <37.303745, 32.834267, 20.362783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366638, 33.053253, 21.086718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357151, 32.655579, 21.128727>,  <37.351460, 32.416973, 21.153933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357151, 32.655579, 21.128727>,  <37.366638, 33.053253, 21.086718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357151, 32.655579, 21.128727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252787, 0.095676, 0.962780,
		-0.967231, 0.049380, 0.249049,
		-0.023714, -0.994187, 0.105023,
		37.350037, 32.357323, 21.160234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955437, 32.854156, 21.745632>,  <37.366638, 33.053253, 21.086718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955437, 32.854156, 21.745632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182816, 32.533123, 21.673260>,  <37.319244, 32.340504, 21.629835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182816, 32.533123, 21.673260>,  <36.955437, 32.854156, 21.745632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182816, 32.533123, 21.673260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150009, -0.115124, 0.981959,
		-0.808929, -0.585332, 0.054953,
		0.568446, -0.802579, -0.180932,
		37.353348, 32.292351, 21.618980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719978, 32.275841, 22.275248>,  <36.955437, 32.854156, 21.745632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719978, 32.275841, 22.275248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089817, 32.203335, 22.141220>,  <37.311718, 32.159832, 22.060804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089817, 32.203335, 22.141220>,  <36.719978, 32.275841, 22.275248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089817, 32.203335, 22.141220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336142, -0.025705, 0.941460,
		-0.179264, -0.983099, 0.037163,
		0.924593, -0.181262, -0.335069,
		37.367195, 32.148956, 22.040699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818298, 31.709732, 22.633768>,  <36.719978, 32.275841, 22.275248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818298, 31.709732, 22.633768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158218, 31.892401, 22.528477>,  <37.362171, 32.002003, 22.465302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158218, 31.892401, 22.528477>,  <36.818298, 31.709732, 22.633768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158218, 31.892401, 22.528477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356964, -0.131165, 0.924863,
		0.387832, -0.879913, -0.274479,
		0.849802, 0.456670, -0.263227,
		37.413158, 32.029404, 22.449509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288044, 31.414091, 23.033649>,  <36.818298, 31.709732, 22.633768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288044, 31.414091, 23.033649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527363, 31.705112, 22.899366>,  <37.670956, 31.879726, 22.818796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527363, 31.705112, 22.899366>,  <37.288044, 31.414091, 23.033649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527363, 31.705112, 22.899366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428049, 0.063961, 0.901489,
		0.677356, -0.683061, -0.273161,
		0.598300, 0.727555, -0.335707,
		37.706852, 31.923380, 22.798655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961830, 31.197346, 23.100994>,  <37.288044, 31.414091, 23.033649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961830, 31.197346, 23.100994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967342, 31.597198, 23.110374>,  <37.970650, 31.837111, 23.116003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967342, 31.597198, 23.110374>,  <37.961830, 31.197346, 23.100994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967342, 31.597198, 23.110374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403613, -0.027020, 0.914531,
		0.914826, -0.003141, -0.403836,
		0.013784, 0.999630, 0.023451,
		37.971478, 31.897087, 23.117411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275429, 30.493183, 23.344349>,  <37.961830, 31.197346, 23.100994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275429, 30.493183, 23.344349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138527, 30.223782, 23.606419>,  <38.056385, 30.062141, 23.763660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138527, 30.223782, 23.606419>,  <38.275429, 30.493183, 23.344349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138527, 30.223782, 23.606419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317439, -0.573406, -0.755274,
		0.884361, -0.466474, -0.017546,
		-0.342254, -0.673504, 0.655174,
		38.035851, 30.021730, 23.802971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456699, 29.792450, 23.086239>,  <38.275429, 30.493183, 23.344349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456699, 29.792450, 23.086239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159863, 29.731441, 23.347324>,  <37.981758, 29.694838, 23.503975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159863, 29.731441, 23.347324>,  <38.456699, 29.792450, 23.086239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159863, 29.731441, 23.347324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465201, -0.583876, -0.665340,
		0.482581, -0.797387, 0.362339,
		-0.742094, -0.152520, 0.652712,
		37.937233, 29.685686, 23.543139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352280, 28.996326, 23.021814>,  <38.456699, 29.792450, 23.086239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352280, 28.996326, 23.021814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032028, 29.189747, 23.163336>,  <37.839878, 29.305799, 23.248249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032028, 29.189747, 23.163336>,  <38.352280, 28.996326, 23.021814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032028, 29.189747, 23.163336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589836, -0.532288, -0.607258,
		-0.105315, -0.694872, 0.711380,
		-0.800626, 0.483551, 0.353802,
		37.791840, 29.334812, 23.269476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818256, 28.461279, 23.156818>,  <38.352280, 28.996326, 23.021814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818256, 28.461279, 23.156818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616962, 28.804543, 23.116182>,  <37.496185, 29.010500, 23.091801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616962, 28.804543, 23.116182>,  <37.818256, 28.461279, 23.156818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616962, 28.804543, 23.116182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577676, -0.421509, -0.699015,
		-0.642687, -0.293081, 0.707854,
		-0.503234, 0.858157, -0.101593,
		37.465992, 29.061989, 23.085705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165390, 28.205509, 23.079218>,  <37.818256, 28.461279, 23.156818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165390, 28.205509, 23.079218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138527, 28.578060, 22.936092>,  <37.122410, 28.801590, 22.850218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138527, 28.578060, 22.936092>,  <37.165390, 28.205509, 23.079218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138527, 28.578060, 22.936092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557968, -0.332360, -0.760401,
		-0.827141, 0.148581, 0.541998,
		-0.067157, 0.931376, -0.357812,
		37.118382, 28.857473, 22.828749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460705, 28.249628, 22.782227>,  <37.165390, 28.205509, 23.079218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460705, 28.249628, 22.782227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663544, 28.545820, 22.605801>,  <36.785248, 28.723536, 22.499945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663544, 28.545820, 22.605801>,  <36.460705, 28.249628, 22.782227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663544, 28.545820, 22.605801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435001, -0.221900, -0.872660,
		-0.744061, 0.634388, 0.209585,
		0.507098, 0.740481, -0.441066,
		36.815674, 28.767965, 22.473480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958183, 28.570936, 22.317446>,  <36.460705, 28.249628, 22.782227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958183, 28.570936, 22.317446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302559, 28.724483, 22.183924>,  <36.509186, 28.816612, 22.103809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302559, 28.724483, 22.183924>,  <35.958183, 28.570936, 22.317446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302559, 28.724483, 22.183924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269073, -0.213251, -0.939215,
		-0.431717, 0.898427, -0.080309,
		0.860942, 0.383866, -0.333806,
		36.560841, 28.839643, 22.083782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824028, 29.127420, 21.747711>,  <35.958183, 28.570936, 22.317446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824028, 29.127420, 21.747711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199135, 29.042898, 21.637480>,  <36.424198, 28.992186, 21.571341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199135, 29.042898, 21.637480>,  <35.824028, 29.127420, 21.747711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199135, 29.042898, 21.637480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312195, -0.165446, -0.935501,
		0.152082, 0.963316, -0.221118,
		0.937766, -0.211304, -0.275581,
		36.480465, 28.979507, 21.554806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996807, 29.448637, 21.140676>,  <35.824028, 29.127420, 21.747711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996807, 29.448637, 21.140676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261040, 29.149086, 21.119450>,  <36.419579, 28.969357, 21.106714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261040, 29.149086, 21.119450>,  <35.996807, 29.448637, 21.140676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261040, 29.149086, 21.119450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268183, -0.169359, -0.948365,
		0.701220, 0.640704, -0.312712,
		0.660582, -0.748876, -0.053068,
		36.459213, 28.924423, 21.103529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282085, 29.529980, 20.435261>,  <35.996807, 29.448637, 21.140676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282085, 29.529980, 20.435261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354465, 29.159637, 20.567955>,  <36.397896, 28.937431, 20.647572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354465, 29.159637, 20.567955>,  <36.282085, 29.529980, 20.435261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354465, 29.159637, 20.567955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213270, -0.366218, -0.905760,
		0.960090, 0.093150, -0.263725,
		0.180952, -0.925855, 0.331736,
		36.408752, 28.881882, 20.667477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695377, 29.292448, 19.975212>,  <36.282085, 29.529980, 20.435261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695377, 29.292448, 19.975212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571754, 28.963371, 20.166069>,  <36.497581, 28.765926, 20.280582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571754, 28.963371, 20.166069>,  <36.695377, 29.292448, 19.975212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571754, 28.963371, 20.166069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162409, -0.448679, -0.878812,
		0.937074, -0.349095, 0.005054,
		-0.309056, -0.822690, 0.477142,
		36.479038, 28.716564, 20.309212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837837, 28.852844, 19.446957>,  <36.695377, 29.292448, 19.975212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837837, 28.852844, 19.446957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599010, 28.662373, 19.705185>,  <36.455715, 28.548090, 19.860123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599010, 28.662373, 19.705185>,  <36.837837, 28.852844, 19.446957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599010, 28.662373, 19.705185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404160, -0.516596, -0.754840,
		0.692941, -0.711604, 0.115988,
		-0.597066, -0.476181, 0.645572,
		36.419891, 28.519518, 19.898857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968407, 28.181906, 19.314114>,  <36.837837, 28.852844, 19.446957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968407, 28.181906, 19.314114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603931, 28.163845, 19.477919>,  <36.385246, 28.153009, 19.576202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603931, 28.163845, 19.477919>,  <36.968407, 28.181906, 19.314114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603931, 28.163845, 19.477919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372331, -0.335284, -0.865422,
		0.176377, -0.941035, 0.288695,
		-0.911187, -0.045150, 0.409513,
		36.330574, 28.150301, 19.600773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635956, 27.537964, 19.268240>,  <36.968407, 28.181906, 19.314114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635956, 27.537964, 19.268240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320305, 27.775476, 19.331102>,  <36.130913, 27.917984, 19.368820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320305, 27.775476, 19.331102>,  <36.635956, 27.537964, 19.268240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320305, 27.775476, 19.331102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466774, -0.413417, -0.781799,
		-0.399248, -0.690296, 0.603401,
		-0.789128, 0.593783, 0.157156,
		36.083565, 27.953611, 19.378248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.153944, 31.309921, 22.041492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.451155, 31.190372, 21.801964>,  <31.629480, 31.118643, 21.658247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.451155, 31.190372, 21.801964>,  <31.153944, 31.309921, 22.041492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451155, 31.190372, 21.801964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521902, -0.301364, 0.797996,
		-0.418963, -0.905458, -0.067939,
		0.743027, -0.298873, -0.598820,
		31.674063, 31.100710, 21.622318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373091, 30.749449, 22.349365>,  <31.153944, 31.309921, 22.041492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373091, 30.749449, 22.349365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.675941, 30.851992, 22.109018>,  <31.857653, 30.913517, 21.964809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.675941, 30.851992, 22.109018>,  <31.373091, 30.749449, 22.349365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675941, 30.851992, 22.109018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649076, -0.191179, 0.736309,
		0.073884, -0.947487, -0.311141,
		0.757127, 0.256356, -0.600867,
		31.903080, 30.928898, 21.928759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791914, 30.271137, 22.406517>,  <31.373091, 30.749449, 22.349365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791914, 30.271137, 22.406517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.043530, 30.557207, 22.284643>,  <32.194500, 30.728849, 22.211519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.043530, 30.557207, 22.284643>,  <31.791914, 30.271137, 22.406517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043530, 30.557207, 22.284643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592952, -0.187959, 0.782994,
		0.502708, -0.673200, -0.542298,
		0.629041, 0.715174, -0.304687,
		32.232243, 30.771759, 22.193237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419044, 29.946283, 22.443375>,  <31.791914, 30.271137, 22.406517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419044, 29.946283, 22.443375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.461430, 30.343807, 22.456699>,  <32.486862, 30.582321, 22.464693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.461430, 30.343807, 22.456699>,  <32.419044, 29.946283, 22.443375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461430, 30.343807, 22.456699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658051, -0.095199, 0.746931,
		0.745480, -0.057228, -0.664066,
		0.105964, 0.993812, 0.033310,
		32.493217, 30.641951, 22.466692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067661, 29.938889, 22.666529>,  <32.419044, 29.946283, 22.443375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067661, 29.938889, 22.666529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.942253, 30.315243, 22.717819>,  <32.867008, 30.541056, 22.748592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.942253, 30.315243, 22.717819>,  <33.067661, 29.938889, 22.666529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942253, 30.315243, 22.717819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623386, 0.102074, 0.775223,
		0.716308, 0.322979, -0.618537,
		-0.313517, 0.940886, 0.128224,
		32.848198, 30.597509, 22.756287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713947, 30.337412, 22.788776>,  <33.067661, 29.938889, 22.666529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713947, 30.337412, 22.788776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.409874, 30.547075, 22.942337>,  <33.227428, 30.672873, 23.034473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.409874, 30.547075, 22.942337>,  <33.713947, 30.337412, 22.788776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409874, 30.547075, 22.942337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544428, 0.191438, 0.816670,
		0.354571, 0.829825, -0.430894,
		-0.760182, 0.524159, 0.383902,
		33.181820, 30.704323, 23.057508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019753, 30.920910, 23.102690>,  <33.713947, 30.337412, 22.788776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019753, 30.920910, 23.102690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.661018, 30.916790, 23.279589>,  <33.445778, 30.914318, 23.385729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.661018, 30.916790, 23.279589>,  <34.019753, 30.920910, 23.102690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661018, 30.916790, 23.279589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416470, 0.317384, 0.851951,
		-0.149136, 0.948241, -0.280352,
		-0.896834, -0.010298, 0.442247,
		33.391968, 30.913700, 23.412262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005466, 31.556614, 23.459389>,  <34.019753, 30.920910, 23.102690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005466, 31.556614, 23.459389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.728355, 31.315153, 23.617207>,  <33.562088, 31.170277, 23.711897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.728355, 31.315153, 23.617207>,  <34.005466, 31.556614, 23.459389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728355, 31.315153, 23.617207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334554, 0.215646, 0.917372,
		-0.638857, 0.767528, 0.052561,
		-0.692774, -0.603654, 0.394546,
		33.520523, 31.134056, 23.735571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658813, 31.894648, 23.999294>,  <34.005466, 31.556614, 23.459389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658813, 31.894648, 23.999294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.591595, 31.517698, 24.115013>,  <33.551262, 31.291529, 24.184444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.591595, 31.517698, 24.115013>,  <33.658813, 31.894648, 23.999294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591595, 31.517698, 24.115013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253987, 0.242171, 0.936399,
		-0.952497, 0.230839, 0.198654,
		-0.168049, -0.942373, 0.289297,
		33.541180, 31.234987, 24.201803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327965, 31.911621, 24.707668>,  <33.658813, 31.894648, 23.999294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327965, 31.911621, 24.707668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.480328, 31.543715, 24.669840>,  <33.571743, 31.322971, 24.647142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.480328, 31.543715, 24.669840>,  <33.327965, 31.911621, 24.707668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480328, 31.543715, 24.669840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235059, -0.002595, 0.971977,
		-0.894237, -0.392459, 0.215211,
		0.380903, -0.919766, -0.094571,
		33.594597, 31.267784, 24.641468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049759, 31.488369, 25.329084>,  <33.327965, 31.911621, 24.707668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049759, 31.488369, 25.329084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.377663, 31.291265, 25.212343>,  <33.574406, 31.173004, 25.142298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.377663, 31.291265, 25.212343>,  <33.049759, 31.488369, 25.329084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377663, 31.291265, 25.212343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264681, -0.125940, 0.956077,
		-0.507871, -0.861004, 0.027182,
		0.819763, -0.492758, -0.291853,
		33.623592, 31.143438, 25.124788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089878, 30.808691, 25.767044>,  <33.049759, 31.488369, 25.329084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089878, 30.808691, 25.767044> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.451046, 30.894970, 25.618341>,  <33.667747, 30.946737, 25.529119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.451046, 30.894970, 25.618341>,  <33.089878, 30.808691, 25.767044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451046, 30.894970, 25.618341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397369, -0.089329, 0.913301,
		0.163789, -0.972365, -0.166369,
		0.902924, 0.215699, -0.371757,
		33.721924, 30.959679, 25.506815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510899, 30.295950, 26.094965>,  <33.089878, 30.808691, 25.767044>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510899, 30.295950, 26.094965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752159, 30.594793, 25.983223>,  <33.896915, 30.774099, 25.916178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.752159, 30.594793, 25.983223>,  <33.510899, 30.295950, 26.094965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752159, 30.594793, 25.983223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488230, -0.068852, 0.869995,
		0.630746, -0.661127, -0.406289,
		0.603150, 0.747108, -0.279354,
		33.933105, 30.818926, 25.899416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106689, 30.121855, 26.280306>,  <33.510899, 30.295950, 26.094965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106689, 30.121855, 26.280306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.161106, 30.514986, 26.230446>,  <34.193756, 30.750866, 26.200529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.161106, 30.514986, 26.230446>,  <34.106689, 30.121855, 26.280306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161106, 30.514986, 26.230446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409477, 0.058789, 0.910425,
		0.902120, -0.174898, -0.394448,
		0.136042, 0.982830, -0.124651,
		34.201920, 30.809835, 26.193050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573067, 29.611534, 25.930861>,  <34.106689, 30.121855, 26.280306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573067, 29.611534, 25.930861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.633381, 29.238821, 26.062950>,  <34.669567, 29.015194, 26.142204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.633381, 29.238821, 26.062950>,  <34.573067, 29.611534, 25.930861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633381, 29.238821, 26.062950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582892, -0.353598, -0.731577,
		0.798437, -0.082176, -0.596444,
		0.150783, -0.931781, 0.330226,
		34.678616, 28.959288, 26.162018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723534, 29.333548, 25.362574>,  <34.573067, 29.611534, 25.930861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723534, 29.333548, 25.362574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.651375, 29.013458, 25.591345>,  <34.608078, 28.821405, 25.728607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.651375, 29.013458, 25.591345>,  <34.723534, 29.333548, 25.362574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651375, 29.013458, 25.591345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449751, -0.450010, -0.771501,
		0.874746, -0.396403, -0.278720,
		-0.180398, -0.800222, 0.571927,
		34.597256, 28.773392, 25.762922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808193, 28.866243, 24.900566>,  <34.723534, 29.333548, 25.362574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808193, 28.866243, 24.900566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.609074, 28.682959, 25.195114>,  <34.489601, 28.572989, 25.371843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.609074, 28.682959, 25.195114>,  <34.808193, 28.866243, 24.900566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609074, 28.682959, 25.195114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638741, -0.380655, -0.668664,
		0.586693, -0.803208, -0.103190,
		-0.497796, -0.458213, 0.736369,
		34.459736, 28.545494, 25.416025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889015, 28.118284, 24.797300>,  <34.808193, 28.866243, 24.900566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889015, 28.118284, 24.797300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565075, 28.213127, 25.011934>,  <34.370712, 28.270033, 25.140715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565075, 28.213127, 25.011934>,  <34.889015, 28.118284, 24.797300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565075, 28.213127, 25.011934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585511, -0.383306, -0.714320,
		0.036306, -0.892668, 0.449249,
		-0.809851, 0.237107, 0.536583,
		34.322121, 28.284260, 25.172909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547176, 27.394384, 24.760170>,  <34.889015, 28.118284, 24.797300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547176, 27.394384, 24.760170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.291500, 27.684528, 24.862379>,  <34.138096, 27.858614, 24.923704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.291500, 27.684528, 24.862379>,  <34.547176, 27.394384, 24.760170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291500, 27.684528, 24.862379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626402, -0.298293, -0.720168,
		-0.446160, -0.620383, 0.645032,
		-0.639188, 0.725359, 0.255522,
		34.099743, 27.902136, 24.939035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897621, 26.991789, 24.837284>,  <34.547176, 27.394384, 24.760170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897621, 26.991789, 24.837284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.799282, 27.378119, 24.804430>,  <33.740280, 27.609917, 24.784718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.799282, 27.378119, 24.804430>,  <33.897621, 26.991789, 24.837284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799282, 27.378119, 24.804430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649217, -0.226991, -0.725942,
		-0.719775, -0.125149, 0.682834,
		-0.245848, 0.965823, -0.082134,
		33.725529, 27.667866, 24.779791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164764, 27.073008, 24.660734>,  <33.897621, 26.991789, 24.837284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164764, 27.073008, 24.660734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.275051, 27.441675, 24.551552>,  <33.341225, 27.662876, 24.486042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.275051, 27.441675, 24.551552>,  <33.164764, 27.073008, 24.660734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275051, 27.441675, 24.551552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632584, -0.039826, -0.773467,
		-0.723752, 0.385925, 0.572053,
		0.275718, 0.921670, -0.272954,
		33.357765, 27.718176, 24.469666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534695, 27.400650, 24.415226>,  <33.164764, 27.073008, 24.660734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534695, 27.400650, 24.415226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.833649, 27.616533, 24.260241>,  <33.013023, 27.746063, 24.167250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.833649, 27.616533, 24.260241>,  <32.534695, 27.400650, 24.415226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833649, 27.616533, 24.260241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546855, 0.168532, -0.820090,
		-0.377307, 0.824812, 0.421100,
		0.747388, 0.539706, -0.387464,
		33.057865, 27.778444, 24.144001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259029, 28.052786, 24.214483>,  <32.534695, 27.400650, 24.415226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259029, 28.052786, 24.214483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.589680, 27.970104, 24.005117>,  <32.788071, 27.920494, 23.879498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.589680, 27.970104, 24.005117>,  <32.259029, 28.052786, 24.214483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589680, 27.970104, 24.005117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473913, 0.245872, -0.845549,
		0.303472, 0.947006, 0.105283,
		0.826626, -0.206705, -0.523414,
		32.837669, 27.908092, 23.848093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151821, 28.509369, 23.574465>,  <32.259029, 28.052786, 24.214483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151821, 28.509369, 23.574465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.459339, 28.276997, 23.467525>,  <32.643848, 28.137573, 23.403362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.459339, 28.276997, 23.467525>,  <32.151821, 28.509369, 23.574465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459339, 28.276997, 23.467525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216865, 0.156454, -0.963583,
		0.601602, 0.798776, -0.005702,
		0.768794, -0.580930, -0.267349,
		32.689976, 28.102718, 23.387321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476597, 28.845228, 22.912867>,  <32.151821, 28.509369, 23.574465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476597, 28.845228, 22.912867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.560226, 28.454180, 22.922171>,  <32.610405, 28.219551, 22.927753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.560226, 28.454180, 22.922171>,  <32.476597, 28.845228, 22.912867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560226, 28.454180, 22.922171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372589, -0.101631, -0.922415,
		0.904137, 0.184190, -0.385500,
		0.209078, -0.977622, 0.023261,
		32.622952, 28.160892, 22.929150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949673, 28.775303, 22.303741>,  <32.476597, 28.845228, 22.912867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949673, 28.775303, 22.303741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.838776, 28.399199, 22.382784>,  <32.772236, 28.173536, 22.430210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.838776, 28.399199, 22.382784>,  <32.949673, 28.775303, 22.303741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838776, 28.399199, 22.382784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220767, -0.137825, -0.965539,
		0.935093, -0.311315, -0.169367,
		-0.277244, -0.940259, 0.197607,
		32.755604, 28.117121, 22.442066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172176, 28.390356, 21.786552>,  <32.949673, 28.775303, 22.303741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172176, 28.390356, 21.786552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.867958, 28.196188, 21.959034>,  <32.685429, 28.079687, 22.062523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.867958, 28.196188, 21.959034>,  <33.172176, 28.390356, 21.786552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867958, 28.196188, 21.959034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498147, 0.010294, -0.867031,
		0.416437, -0.874219, -0.249641,
		-0.760545, -0.485422, 0.431203,
		32.639793, 28.050562, 22.088394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043961, 27.914225, 21.326273>,  <33.172176, 28.390356, 21.786552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043961, 27.914225, 21.326273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.714352, 27.954136, 21.549355>,  <32.516586, 27.978083, 21.683205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.714352, 27.954136, 21.549355>,  <33.043961, 27.914225, 21.326273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714352, 27.954136, 21.549355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564278, -0.232819, -0.792077,
		0.050813, -0.967388, 0.248150,
		-0.824020, 0.099778, 0.557706,
		32.467144, 27.984070, 21.716667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103027, 27.169085, 21.459579>,  <33.043961, 27.914225, 21.326273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103027, 27.169085, 21.459579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.307781, 26.846928, 21.340036>,  <33.430634, 26.653633, 21.268311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.307781, 26.846928, 21.340036>,  <33.103027, 27.169085, 21.459579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307781, 26.846928, 21.340036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223286, -0.211197, 0.951598,
		-0.829530, -0.553837, 0.071725,
		0.511882, -0.805395, -0.298858,
		33.461346, 26.605309, 21.250380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991463, 26.721554, 22.006512>,  <33.103027, 27.169085, 21.459579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991463, 26.721554, 22.006512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.316265, 26.580349, 21.820595>,  <33.511147, 26.495626, 21.709045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.316265, 26.580349, 21.820595>,  <32.991463, 26.721554, 22.006512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316265, 26.580349, 21.820595> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340040, -0.361100, 0.868320,
		-0.474364, -0.863127, -0.173176,
		0.812005, -0.353013, -0.464790,
		33.559868, 26.474445, 21.681158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221668, 26.171295, 22.390490>,  <32.991463, 26.721554, 22.006512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221668, 26.171295, 22.390490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.553192, 26.221500, 22.172380>,  <33.752106, 26.251623, 22.041515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.553192, 26.221500, 22.172380>,  <33.221668, 26.171295, 22.390490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553192, 26.221500, 22.172380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559015, -0.143826, 0.816589,
		0.024068, -0.981611, -0.189367,
		0.828809, 0.125513, -0.545274,
		33.801834, 26.259153, 22.008799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636478, 25.593687, 22.637962>,  <33.221668, 26.171295, 22.390490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636478, 25.593687, 22.637962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.875317, 25.875067, 22.483749>,  <34.018620, 26.043896, 22.391222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.875317, 25.875067, 22.483749>,  <33.636478, 25.593687, 22.637962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875317, 25.875067, 22.483749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583277, -0.050785, 0.810684,
		0.550697, -0.708927, -0.440630,
		0.597093, 0.703451, -0.385534,
		34.054443, 26.086102, 22.368090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410500, 25.322931, 22.616972>,  <33.636478, 25.593687, 22.637962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410500, 25.322931, 22.616972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.384892, 25.721453, 22.639872>,  <34.369526, 25.960566, 22.653612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.384892, 25.721453, 22.639872>,  <34.410500, 25.322931, 22.616972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384892, 25.721453, 22.639872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644529, -0.002516, 0.764576,
		0.761895, 0.085848, -0.641986,
		-0.064022, 0.996305, 0.057249,
		34.365685, 26.020344, 22.657045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114292, 25.420063, 22.763731>,  <34.410500, 25.322931, 22.616972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114292, 25.420063, 22.763731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960392, 25.784521, 22.822767>,  <34.868053, 26.003197, 22.858189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960392, 25.784521, 22.822767>,  <35.114292, 25.420063, 22.763731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960392, 25.784521, 22.822767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802176, 0.250973, 0.541781,
		0.456600, 0.326842, -0.827461,
		-0.384747, 0.911146, 0.147590,
		34.844967, 26.057865, 22.867044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713383, 25.952953, 22.733961>,  <35.114292, 25.420063, 22.763731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713383, 25.952953, 22.733961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.415977, 26.107843, 22.952040>,  <35.237534, 26.200777, 23.082888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.415977, 26.107843, 22.952040>,  <35.713383, 25.952953, 22.733961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415977, 26.107843, 22.952040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652830, 0.243651, 0.717249,
		0.144900, 0.889208, -0.433951,
		-0.743516, 0.387226, 0.545197,
		35.192924, 26.224010, 23.115599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869549, 26.644627, 22.869644>,  <35.713383, 25.952953, 22.733961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869549, 26.644627, 22.869644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.623466, 26.541086, 23.167509>,  <35.475819, 26.478962, 23.346228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.623466, 26.541086, 23.167509>,  <35.869549, 26.644627, 22.869644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623466, 26.541086, 23.167509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604050, 0.452205, 0.656227,
		-0.506606, 0.853526, -0.121838,
		-0.615202, -0.258852, 0.744662,
		35.438908, 26.463430, 23.390907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741299, 27.240940, 23.295004>,  <35.869549, 26.644627, 22.869644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741299, 27.240940, 23.295004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.694973, 26.924381, 23.535097>,  <35.667175, 26.734446, 23.679153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.694973, 26.924381, 23.535097>,  <35.741299, 27.240940, 23.295004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694973, 26.924381, 23.535097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616094, 0.416768, 0.668381,
		-0.779111, 0.447210, 0.439305,
		-0.115819, -0.791396, 0.600232,
		35.660229, 26.686962, 23.715166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581539, 27.511381, 24.016211>,  <35.741299, 27.240940, 23.295004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581539, 27.511381, 24.016211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.694256, 27.133997, 24.086044>,  <35.761887, 26.907566, 24.127945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.694256, 27.133997, 24.086044>,  <35.581539, 27.511381, 24.016211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694256, 27.133997, 24.086044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487803, 0.297557, 0.820676,
		-0.826223, -0.146094, 0.544070,
		0.281787, -0.943460, 0.174583,
		35.778793, 26.850960, 24.138420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689659, 27.427368, 24.718084>,  <35.581539, 27.511381, 24.016211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689659, 27.427368, 24.718084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.895103, 27.110155, 24.587055>,  <36.018372, 26.919828, 24.508438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.895103, 27.110155, 24.587055>,  <35.689659, 27.427368, 24.718084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895103, 27.110155, 24.587055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620128, 0.079242, 0.780488,
		-0.592994, -0.604006, 0.532480,
		0.513615, -0.793031, -0.327571,
		36.049187, 26.872246, 24.488785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741901, 27.098989, 25.269382>,  <35.689659, 27.427368, 24.718084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741901, 27.098989, 25.269382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.022633, 26.953552, 25.024357>,  <36.191071, 26.866291, 24.877340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.022633, 26.953552, 25.024357>,  <35.741901, 27.098989, 25.269382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022633, 26.953552, 25.024357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691205, 0.139654, 0.709037,
		-0.172253, -0.921031, 0.349330,
		0.701830, -0.363591, -0.612565,
		36.233181, 26.844475, 24.840588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115658, 26.671043, 25.644371>,  <35.741901, 27.098989, 25.269382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115658, 26.671043, 25.644371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.373859, 26.725922, 25.343838>,  <36.528782, 26.758848, 25.163517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.373859, 26.725922, 25.343838>,  <36.115658, 26.671043, 25.644371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373859, 26.725922, 25.343838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759082, -0.006560, 0.650961,
		0.084381, -0.990522, -0.108378,
		0.645503, 0.137197, -0.751335,
		36.567509, 26.767080, 25.118437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597034, 26.235592, 25.723337>,  <36.115658, 26.671043, 25.644371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597034, 26.235592, 25.723337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.787449, 26.500826, 25.492268>,  <36.901699, 26.659966, 25.353626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.787449, 26.500826, 25.492268>,  <36.597034, 26.235592, 25.723337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787449, 26.500826, 25.492268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838408, -0.143926, 0.525697,
		0.265439, -0.734579, -0.624449,
		0.476040, 0.663083, -0.577673,
		36.930260, 26.699751, 25.318966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.030468, 27.137665, 19.179609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.894028, 27.507610, 19.112347>,  <35.812164, 27.729578, 19.071989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.894028, 27.507610, 19.112347>,  <36.030468, 27.137665, 19.179609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894028, 27.507610, 19.112347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583966, -0.348662, -0.733089,
		-0.736636, -0.151862, 0.659018,
		-0.341103, 0.924864, -0.168155,
		35.791698, 27.785069, 19.061901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328835, 27.073935, 19.159197>,  <36.030468, 27.137665, 19.179609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328835, 27.073935, 19.159197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.422436, 27.415855, 18.973915>,  <35.478596, 27.621008, 18.862745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.422436, 27.415855, 18.973915>,  <35.328835, 27.073935, 19.159197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422436, 27.415855, 18.973915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456148, -0.324216, -0.828742,
		-0.858588, 0.405215, 0.314050,
		0.233999, 0.854801, -0.463206,
		35.492634, 27.672297, 18.834953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694996, 27.178768, 18.909012>,  <35.328835, 27.073935, 19.159197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694996, 27.178768, 18.909012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.927494, 27.433336, 18.706181>,  <35.066994, 27.586077, 18.584482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.927494, 27.433336, 18.706181>,  <34.694996, 27.178768, 18.909012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927494, 27.433336, 18.706181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504427, -0.207177, -0.838231,
		-0.638520, 0.743000, 0.200607,
		0.581245, 0.636419, -0.507076,
		35.101868, 27.624262, 18.554058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262798, 27.811684, 18.570549>,  <34.694996, 27.178768, 18.909012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262798, 27.811684, 18.570549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.599155, 27.755215, 18.361563>,  <34.800968, 27.721333, 18.236170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.599155, 27.755215, 18.361563>,  <34.262798, 27.811684, 18.570549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599155, 27.755215, 18.361563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537060, -0.098433, -0.837781,
		0.066843, 0.985079, -0.158590,
		0.840892, -0.141172, -0.522467,
		34.851421, 27.712864, 18.204823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012547, 28.037924, 17.885029>,  <34.262798, 27.811684, 18.570549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012547, 28.037924, 17.885029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.352589, 27.837130, 17.821363>,  <34.556614, 27.716654, 17.783165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.352589, 27.837130, 17.821363>,  <34.012547, 28.037924, 17.885029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352589, 27.837130, 17.821363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315249, -0.242998, -0.917371,
		0.421831, 0.830037, -0.364825,
		0.850104, -0.501986, -0.159164,
		34.607620, 27.686533, 17.773615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197338, 28.129391, 17.225716>,  <34.012547, 28.037924, 17.885029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197338, 28.129391, 17.225716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.407333, 27.796700, 17.297956>,  <34.533329, 27.597084, 17.341301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.407333, 27.796700, 17.297956>,  <34.197338, 28.129391, 17.225716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407333, 27.796700, 17.297956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247627, -0.352278, -0.902542,
		0.814291, 0.429100, -0.390899,
		0.524986, -0.831729, 0.180600,
		34.564831, 27.547180, 17.352137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634888, 28.044369, 16.645552>,  <34.197338, 28.129391, 17.225716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634888, 28.044369, 16.645552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585232, 27.677914, 16.798016>,  <34.555439, 27.458040, 16.889494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.585232, 27.677914, 16.798016>,  <34.634888, 28.044369, 16.645552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585232, 27.677914, 16.798016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276873, -0.336895, -0.899913,
		0.952855, -0.217244, -0.211833,
		-0.124135, -0.916137, 0.381161,
		34.547993, 27.403072, 16.912363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816208, 27.677269, 16.107372>,  <34.634888, 28.044369, 16.645552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816208, 27.677269, 16.107372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.616699, 27.423754, 16.343857>,  <34.496994, 27.271645, 16.485748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.616699, 27.423754, 16.343857>,  <34.816208, 27.677269, 16.107372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616699, 27.423754, 16.343857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364627, -0.465383, -0.806515,
		0.786301, -0.617843, 0.001025,
		-0.498776, -0.633790, 0.591213,
		34.467068, 27.233618, 16.521221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688351, 27.151787, 15.724218>,  <34.816208, 27.677269, 16.107372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688351, 27.151787, 15.724218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440044, 27.046232, 16.019520>,  <34.291061, 26.982899, 16.196701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.440044, 27.046232, 16.019520>,  <34.688351, 27.151787, 15.724218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440044, 27.046232, 16.019520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627528, -0.397223, -0.669644,
		0.469961, -0.878964, 0.080984,
		-0.620762, -0.263887, 0.738254,
		34.253815, 26.967066, 16.240995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435169, 26.463482, 15.504224>,  <34.688351, 27.151787, 15.724218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435169, 26.463482, 15.504224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.166397, 26.633270, 15.746986>,  <34.005135, 26.735144, 15.892644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.166397, 26.633270, 15.746986>,  <34.435169, 26.463482, 15.504224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166397, 26.633270, 15.746986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736967, -0.301954, -0.604734,
		-0.073434, -0.853609, 0.515713,
		-0.671927, 0.424471, 0.606908,
		33.964817, 26.760612, 15.929059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964138, 25.919573, 15.580362>,  <34.435169, 26.463482, 15.504224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964138, 25.919573, 15.580362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.782143, 26.258501, 15.689934>,  <33.672947, 26.461857, 15.755677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.782143, 26.258501, 15.689934>,  <33.964138, 25.919573, 15.580362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782143, 26.258501, 15.689934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820837, -0.279788, -0.497941,
		-0.345272, -0.451408, 0.822811,
		-0.454987, 0.847319, 0.273929,
		33.645645, 26.512697, 15.772113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332561, 25.730869, 15.864814>,  <33.964138, 25.919573, 15.580362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332561, 25.730869, 15.864814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.302132, 26.109600, 15.739766>,  <33.283875, 26.336838, 15.664738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.302132, 26.109600, 15.739766>,  <33.332561, 25.730869, 15.864814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302132, 26.109600, 15.739766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878839, -0.211777, -0.427543,
		-0.471015, 0.242217, 0.848219,
		-0.076075, 0.946827, -0.312620,
		33.279308, 26.393648, 15.645980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744820, 26.131136, 16.144625>,  <33.332561, 25.730869, 15.864814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744820, 26.131136, 16.144625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.856712, 26.244188, 15.777612>,  <32.923847, 26.312019, 15.557404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.856712, 26.244188, 15.777612>,  <32.744820, 26.131136, 16.144625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856712, 26.244188, 15.777612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847989, -0.375388, -0.374163,
		-0.450181, 0.882725, 0.134660,
		0.279733, 0.282631, -0.917534,
		32.940632, 26.328978, 15.502352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285831, 26.678740, 15.815924>,  <32.744820, 26.131136, 16.144625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285831, 26.678740, 15.815924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.453094, 26.413626, 15.567451>,  <32.553452, 26.254559, 15.418368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.453094, 26.413626, 15.567451>,  <32.285831, 26.678740, 15.815924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453094, 26.413626, 15.567451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900071, -0.394568, -0.184899,
		-0.122550, 0.636423, -0.761543,
		0.418154, -0.662783, -0.621180,
		32.578541, 26.214790, 15.381098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531425, 26.578831, 15.597376>,  <32.285831, 26.678740, 15.815924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531425, 26.578831, 15.597376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.227230, 26.490864, 15.841765>,  <31.044712, 26.438084, 15.988400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.227230, 26.490864, 15.841765>,  <31.531425, 26.578831, 15.597376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227230, 26.490864, 15.841765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649082, -0.230446, 0.724974,
		-0.018639, 0.947908, 0.317998,
		-0.760490, -0.219920, 0.610975,
		30.999083, 26.424889, 16.025057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686892, 26.916641, 16.235037>,  <31.531425, 26.578831, 15.597376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686892, 26.916641, 16.235037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.375206, 26.714802, 16.383739>,  <31.188194, 26.593699, 16.472961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.375206, 26.714802, 16.383739>,  <31.686892, 26.916641, 16.235037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375206, 26.714802, 16.383739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442980, -0.023784, 0.896216,
		-0.443387, 0.863027, 0.242060,
		-0.779216, -0.504598, 0.371758,
		31.141441, 26.563423, 16.495266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602545, 27.258978, 16.807049>,  <31.686892, 26.916641, 16.235037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602545, 27.258978, 16.807049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422459, 26.904055, 16.847042>,  <31.314407, 26.691101, 16.871038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422459, 26.904055, 16.847042>,  <31.602545, 27.258978, 16.807049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422459, 26.904055, 16.847042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254399, -0.020131, 0.966890,
		-0.855914, 0.460742, 0.234793,
		-0.450214, -0.887306, 0.099982,
		31.287395, 26.637863, 16.877037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260254, 27.319761, 17.514769>,  <31.602545, 27.258978, 16.807049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260254, 27.319761, 17.514769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.284681, 26.937510, 17.399502>,  <31.299337, 26.708158, 17.330341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.284681, 26.937510, 17.399502>,  <31.260254, 27.319761, 17.514769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284681, 26.937510, 17.399502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419083, -0.237475, 0.876342,
		-0.905892, -0.174282, 0.385986,
		0.061068, -0.955631, -0.288166,
		31.303001, 26.650820, 17.313051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944742, 26.981659, 18.076683>,  <31.260254, 27.319761, 17.514769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944742, 26.981659, 18.076683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.212374, 26.765165, 17.872959>,  <31.372953, 26.635269, 17.750725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.212374, 26.765165, 17.872959>,  <30.944742, 26.981659, 18.076683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212374, 26.765165, 17.872959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405030, -0.309036, 0.860492,
		-0.623124, -0.782024, 0.012447,
		0.669079, -0.541235, -0.509311,
		31.413097, 26.602795, 17.720165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983881, 26.320576, 18.376068>,  <30.944742, 26.981659, 18.076683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983881, 26.320576, 18.376068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.341286, 26.308859, 18.196836>,  <31.555729, 26.301828, 18.089296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.341286, 26.308859, 18.196836>,  <30.983881, 26.320576, 18.376068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341286, 26.308859, 18.196836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422802, -0.281205, 0.861489,
		-0.151239, -0.959200, -0.238874,
		0.893513, -0.029295, -0.448081,
		31.609339, 26.300070, 18.062412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367748, 25.835230, 18.775040>,  <30.983881, 26.320576, 18.376068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367748, 25.835230, 18.775040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.639175, 26.017170, 18.544336>,  <31.802032, 26.126335, 18.405914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.639175, 26.017170, 18.544336>,  <31.367748, 25.835230, 18.775040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639175, 26.017170, 18.544336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700342, -0.163853, 0.694747,
		0.221504, -0.875364, -0.429738,
		0.678570, 0.454852, -0.576760,
		31.842747, 26.153625, 18.371307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982754, 25.433317, 18.820570>,  <31.367748, 25.835230, 18.775040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982754, 25.433317, 18.820570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.104347, 25.792074, 18.692087>,  <32.177303, 26.007328, 18.614998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.104347, 25.792074, 18.692087>,  <31.982754, 25.433317, 18.820570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104347, 25.792074, 18.692087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631220, 0.062912, 0.773048,
		0.713551, -0.437746, -0.547014,
		0.303985, 0.896895, -0.321205,
		32.195541, 26.061142, 18.595726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712109, 25.317419, 18.633202>,  <31.982754, 25.433317, 18.820570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712109, 25.317419, 18.633202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.612503, 25.685015, 18.755482>,  <32.552742, 25.905573, 18.828850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.612503, 25.685015, 18.755482>,  <32.712109, 25.317419, 18.633202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612503, 25.685015, 18.755482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685706, -0.055619, 0.725750,
		0.683960, 0.390339, -0.616307,
		-0.249010, 0.918990, 0.305699,
		32.537800, 25.960712, 18.847191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358204, 25.535110, 18.879555>,  <32.712109, 25.317419, 18.633202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358204, 25.535110, 18.879555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.096745, 25.801014, 19.024240>,  <32.939869, 25.960556, 19.111052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.096745, 25.801014, 19.024240>,  <33.358204, 25.535110, 18.879555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096745, 25.801014, 19.024240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531313, 0.062725, 0.844850,
		0.538934, 0.744419, -0.394196,
		-0.653648, 0.664760, 0.361715,
		32.900650, 26.000443, 19.132755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830292, 26.085773, 19.211130>,  <33.358204, 25.535110, 18.879555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830292, 26.085773, 19.211130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.466328, 26.125214, 19.372297>,  <33.247948, 26.148878, 19.468998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.466328, 26.125214, 19.372297>,  <33.830292, 26.085773, 19.211130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466328, 26.125214, 19.372297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414575, 0.183735, 0.891274,
		0.013850, 0.978018, -0.208060,
		-0.909910, 0.098600, 0.402917,
		33.193356, 26.154793, 19.493172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922256, 26.628019, 19.667507>,  <33.830292, 26.085773, 19.211130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922256, 26.628019, 19.667507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582706, 26.461090, 19.797279>,  <33.378975, 26.360931, 19.875143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.582706, 26.461090, 19.797279>,  <33.922256, 26.628019, 19.667507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582706, 26.461090, 19.797279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312893, 0.097977, 0.944721,
		-0.426042, 0.903461, 0.047408,
		-0.848873, -0.417325, 0.324429,
		33.328045, 26.335894, 19.894608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667469, 27.124142, 20.097139>,  <33.922256, 26.628019, 19.667507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667469, 27.124142, 20.097139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.553772, 26.753359, 20.195080>,  <33.485554, 26.530890, 20.253843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.553772, 26.753359, 20.195080>,  <33.667469, 27.124142, 20.097139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553772, 26.753359, 20.195080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360546, 0.133292, 0.923168,
		-0.888376, 0.350686, 0.296324,
		-0.284244, -0.926959, 0.244851,
		33.468498, 26.475271, 20.268536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232418, 27.264080, 20.676043>,  <33.667469, 27.124142, 20.097139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232418, 27.264080, 20.676043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343601, 26.879946, 20.684959>,  <33.410313, 26.649466, 20.690310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.343601, 26.879946, 20.684959>,  <33.232418, 27.264080, 20.676043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343601, 26.879946, 20.684959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295115, 0.107459, 0.949400,
		-0.914136, -0.257317, 0.313278,
		0.277962, -0.960333, 0.022294,
		33.426991, 26.591846, 20.691648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496140, 27.448231, 21.072041>,  <33.232418, 27.264080, 20.676043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496140, 27.448231, 21.072041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.298676, 27.739929, 21.261568>,  <32.180199, 27.914948, 21.375284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.298676, 27.739929, 21.261568>,  <32.496140, 27.448231, 21.072041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298676, 27.739929, 21.261568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613610, 0.094009, -0.783993,
		-0.616267, -0.677763, 0.401064,
		-0.493659, 0.729246, 0.473817,
		32.150578, 27.958702, 21.403713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803606, 27.243219, 21.009655>,  <32.496140, 27.448231, 21.072041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803606, 27.243219, 21.009655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.836445, 27.636377, 21.075602>,  <31.856148, 27.872272, 21.115170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.836445, 27.636377, 21.075602>,  <31.803606, 27.243219, 21.009655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836445, 27.636377, 21.075602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672524, 0.176721, -0.718666,
		-0.735508, -0.051875, 0.675528,
		0.082099, 0.982893, 0.164867,
		31.861074, 27.931246, 21.125061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171135, 27.383081, 20.772310>,  <31.803606, 27.243219, 21.009655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171135, 27.383081, 20.772310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.376688, 27.725515, 20.794374>,  <31.500019, 27.930975, 20.807613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.376688, 27.725515, 20.794374>,  <31.171135, 27.383081, 20.772310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376688, 27.725515, 20.794374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468187, 0.333758, -0.818172,
		-0.718837, 0.394618, 0.572320,
		0.513882, 0.856085, 0.055163,
		31.530853, 27.982342, 20.810923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672028, 27.794840, 20.567284>,  <31.171135, 27.383081, 20.772310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672028, 27.794840, 20.567284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.991602, 28.027544, 20.506287>,  <31.183348, 28.167166, 20.469688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.991602, 28.027544, 20.506287>,  <30.672028, 27.794840, 20.567284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991602, 28.027544, 20.506287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506117, 0.513402, -0.693011,
		-0.324876, 0.630851, 0.704615,
		0.798937, 0.581760, -0.152492,
		31.231283, 28.202072, 20.460539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418013, 28.446175, 20.509609>,  <30.672028, 27.794840, 20.567284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418013, 28.446175, 20.509609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.776932, 28.481823, 20.336678>,  <30.992283, 28.503212, 20.232918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.776932, 28.481823, 20.336678>,  <30.418013, 28.446175, 20.509609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776932, 28.481823, 20.336678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433672, 0.360698, -0.825727,
		0.082352, 0.928415, 0.362303,
		0.897300, 0.089120, -0.432332,
		31.046122, 28.508558, 20.206978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533398, 29.129364, 20.349161>,  <30.418013, 28.446175, 20.509609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533398, 29.129364, 20.349161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.741308, 28.912436, 20.085125>,  <30.866055, 28.782278, 19.926702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.741308, 28.912436, 20.085125>,  <30.533398, 29.129364, 20.349161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741308, 28.912436, 20.085125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586105, 0.335774, -0.737385,
		0.621540, 0.770159, -0.143328,
		0.519778, -0.542319, -0.660091,
		30.897242, 28.749741, 19.887098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437271, 29.479605, 19.777367>,  <30.533398, 29.129364, 20.349161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437271, 29.479605, 19.777367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.576853, 29.131302, 19.638792>,  <30.660601, 28.922321, 19.555647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.576853, 29.131302, 19.638792>,  <30.437271, 29.479605, 19.777367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576853, 29.131302, 19.638792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673194, 0.024263, -0.739068,
		0.651953, 0.491118, -0.577720,
		0.348952, -0.870755, -0.346436,
		30.681538, 28.870075, 19.534861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495012, 30.115839, 19.285023>,  <30.437271, 29.479605, 19.777367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495012, 30.115839, 19.285023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.337292, 30.481617, 19.321495>,  <30.242659, 30.701084, 19.343378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.337292, 30.481617, 19.321495>,  <30.495012, 30.115839, 19.285023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337292, 30.481617, 19.321495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782011, 0.281762, 0.555940,
		0.482685, 0.290514, -0.826206,
		-0.394302, 0.914446, 0.091183,
		30.219002, 30.755951, 19.348850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012777, 30.560724, 19.065090>,  <30.495012, 30.115839, 19.285023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012777, 30.560724, 19.065090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.757936, 30.770287, 19.291231>,  <30.605032, 30.896025, 19.426916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.757936, 30.770287, 19.291231>,  <31.012777, 30.560724, 19.065090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757936, 30.770287, 19.291231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769172, 0.384780, 0.510215,
		0.049768, 0.759913, -0.648117,
		-0.637101, 0.523906, 0.565354,
		30.566807, 30.927458, 19.460836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347456, 31.243177, 19.278545>,  <31.012777, 30.560724, 19.065090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347456, 31.243177, 19.278545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.042044, 31.211895, 19.534954>,  <30.858797, 31.193125, 19.688799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.042044, 31.211895, 19.534954>,  <31.347456, 31.243177, 19.278545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042044, 31.211895, 19.534954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605138, 0.259908, 0.752500,
		-0.225456, 0.962461, -0.151122,
		-0.763530, -0.078206, 0.641019,
		30.812984, 31.188433, 19.727261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473812, 31.768759, 19.629332>,  <31.347456, 31.243177, 19.278545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473812, 31.768759, 19.629332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241436, 31.543070, 19.863995>,  <31.102011, 31.407658, 20.004791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.241436, 31.543070, 19.863995>,  <31.473812, 31.768759, 19.629332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241436, 31.543070, 19.863995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676032, 0.066942, 0.733826,
		-0.453312, 0.822905, 0.342542,
		-0.580939, -0.564221, 0.586655,
		31.067154, 31.373804, 20.039991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586325, 32.030418, 20.180138>,  <31.473812, 31.768759, 19.629332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586325, 32.030418, 20.180138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422888, 31.687592, 20.305668>,  <31.324825, 31.481895, 20.380987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422888, 31.687592, 20.305668>,  <31.586325, 32.030418, 20.180138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422888, 31.687592, 20.305668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563829, 0.033368, 0.825217,
		-0.717738, 0.514123, 0.469606,
		-0.408594, -0.857067, 0.313827,
		31.300310, 31.430471, 20.399817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418486, 32.144505, 20.963907>,  <31.586325, 32.030418, 20.180138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418486, 32.144505, 20.963907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.444084, 31.748785, 20.911463>,  <31.459444, 31.511353, 20.879995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.444084, 31.748785, 20.911463>,  <31.418486, 32.144505, 20.963907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444084, 31.748785, 20.911463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499662, -0.081963, 0.862334,
		-0.863853, -0.120700, 0.489069,
		0.063998, -0.989300, -0.131113,
		31.463284, 31.451996, 20.872129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272137, 31.916046, 21.604778>,  <31.418486, 32.144505, 20.963907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272137, 31.916046, 21.604778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422607, 31.588160, 21.432009>,  <31.512890, 31.391428, 21.328348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422607, 31.588160, 21.432009>,  <31.272137, 31.916046, 21.604778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422607, 31.588160, 21.432009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452926, -0.243986, 0.857513,
		-0.808300, -0.518207, 0.279488,
		0.376178, -0.819715, -0.431923,
		31.535461, 31.342245, 21.302431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.740833, 30.017248, 15.321817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.791180, 29.620472, 15.316026>,  <32.821388, 29.382406, 15.312551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.791180, 29.620472, 15.316026>,  <32.740833, 30.017248, 15.321817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791180, 29.620472, 15.316026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365855, 0.032845, 0.930092,
		-0.922122, -0.122360, 0.367041,
		0.125862, -0.991942, -0.014479,
		32.828938, 29.322889, 15.311682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321541, 29.753428, 15.922297>,  <32.740833, 30.017248, 15.321817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321541, 29.753428, 15.922297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.664375, 29.574081, 15.820807>,  <32.870075, 29.466473, 15.759912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.664375, 29.574081, 15.820807>,  <32.321541, 29.753428, 15.922297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664375, 29.574081, 15.820807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402344, 0.274966, 0.873220,
		-0.321757, -0.850507, 0.416066,
		0.857083, -0.448366, -0.253724,
		32.921501, 29.439571, 15.744689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421227, 29.347826, 16.443604>,  <32.321541, 29.753428, 15.922297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421227, 29.347826, 16.443604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.774467, 29.405199, 16.264919>,  <32.986412, 29.439623, 16.157709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.774467, 29.405199, 16.264919>,  <32.421227, 29.347826, 16.443604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774467, 29.405199, 16.264919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369040, 0.375567, 0.850152,
		0.289707, -0.915630, 0.278734,
		0.883108, 0.143431, -0.446708,
		33.039398, 29.448229, 16.130907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946243, 28.791227, 16.679506>,  <32.421227, 29.347826, 16.443604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946243, 28.791227, 16.679506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.121555, 29.135401, 16.575527>,  <33.226742, 29.341904, 16.513140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.121555, 29.135401, 16.575527>,  <32.946243, 28.791227, 16.679506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121555, 29.135401, 16.575527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334923, 0.112045, 0.935560,
		0.834111, -0.497095, -0.239071,
		0.438276, 0.860431, -0.259947,
		33.253036, 29.393530, 16.497543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432541, 28.837362, 17.203140>,  <32.946243, 28.791227, 16.679506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432541, 28.837362, 17.203140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.479618, 29.195383, 17.031078>,  <33.507862, 29.410194, 16.927841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.479618, 29.195383, 17.031078>,  <33.432541, 28.837362, 17.203140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479618, 29.195383, 17.031078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435436, 0.342790, 0.832401,
		0.892493, -0.285271, -0.349394,
		0.117691, 0.895051, -0.430155,
		33.514927, 29.463898, 16.902031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187508, 29.099518, 17.375778>,  <33.432541, 28.837362, 17.203140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187508, 29.099518, 17.375778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.954693, 29.406971, 17.269619>,  <33.815002, 29.591442, 17.205923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.954693, 29.406971, 17.269619>,  <34.187508, 29.099518, 17.375778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954693, 29.406971, 17.269619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405653, 0.557322, 0.724457,
		0.704753, 0.314003, -0.636181,
		-0.582039, 0.768631, -0.265398,
		33.780083, 29.637560, 17.190001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639336, 29.689648, 17.189087>,  <34.187508, 29.099518, 17.375778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639336, 29.689648, 17.189087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.290691, 29.857763, 17.290010>,  <34.081505, 29.958632, 17.350565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.290691, 29.857763, 17.290010>,  <34.639336, 29.689648, 17.189087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290691, 29.857763, 17.290010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490167, 0.753729, 0.437754,
		-0.006192, 0.505224, -0.862966,
		-0.871607, 0.420287, 0.252311,
		34.029209, 29.983849, 17.365704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789215, 30.348646, 17.059122>,  <34.639336, 29.689648, 17.189087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789215, 30.348646, 17.059122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.456951, 30.363535, 17.281338>,  <34.257595, 30.372469, 17.414667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.456951, 30.363535, 17.281338>,  <34.789215, 30.348646, 17.059122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456951, 30.363535, 17.281338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449901, 0.632686, 0.630316,
		-0.328019, 0.773514, -0.542291,
		-0.830658, 0.037221, 0.555537,
		34.207752, 30.374701, 17.447998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844463, 31.058765, 17.118778>,  <34.789215, 30.348646, 17.059122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844463, 31.058765, 17.118778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.608559, 30.920046, 17.410509>,  <34.467018, 30.836813, 17.585546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.608559, 30.920046, 17.410509>,  <34.844463, 31.058765, 17.118778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608559, 30.920046, 17.410509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610478, 0.399764, 0.683744,
		-0.528681, 0.848480, -0.024050,
		-0.589757, -0.346800, 0.729326,
		34.431633, 30.816006, 17.629307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589039, 31.634501, 17.522383>,  <34.844463, 31.058765, 17.118778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589039, 31.634501, 17.522383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.562668, 31.310898, 17.756020>,  <34.546844, 31.116737, 17.896202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.562668, 31.310898, 17.756020>,  <34.589039, 31.634501, 17.522383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562668, 31.310898, 17.756020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548010, 0.459830, 0.698743,
		-0.833870, 0.366153, 0.413029,
		-0.065924, -0.809004, 0.584094,
		34.542892, 31.068197, 17.931248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325718, 31.901020, 18.184475>,  <34.589039, 31.634501, 17.522383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325718, 31.901020, 18.184475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.516750, 31.555565, 18.249037>,  <34.631371, 31.348291, 18.287773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.516750, 31.555565, 18.249037>,  <34.325718, 31.901020, 18.184475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516750, 31.555565, 18.249037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535165, 0.431644, 0.726142,
		-0.696792, -0.260412, 0.668331,
		0.477577, -0.863637, 0.161403,
		34.660023, 31.296474, 18.297457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408062, 31.934769, 18.824387>,  <34.325718, 31.901020, 18.184475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408062, 31.934769, 18.824387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.674313, 31.646299, 18.747595>,  <34.834061, 31.473217, 18.701521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.674313, 31.646299, 18.747595>,  <34.408062, 31.934769, 18.824387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674313, 31.646299, 18.747595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615946, 0.385635, 0.686947,
		-0.421374, -0.575495, 0.700891,
		0.665623, -0.721173, -0.191978,
		34.874001, 31.429947, 18.690002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804104, 31.874109, 19.259230>,  <34.408062, 31.934769, 18.824387>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804104, 31.874109, 19.259230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.594227, 32.189213, 19.388308>,  <33.468300, 32.378277, 19.465754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.594227, 32.189213, 19.388308>,  <33.804104, 31.874109, 19.259230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594227, 32.189213, 19.388308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460289, 0.056350, -0.885979,
		-0.716122, -0.613400, 0.333031,
		-0.524693, 0.787760, 0.322695,
		33.436817, 32.425541, 19.485115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070522, 31.757139, 19.123722>,  <33.804104, 31.874109, 19.259230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070522, 31.757139, 19.123722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.105316, 32.153900, 19.160740>,  <33.126190, 32.391956, 19.182951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.105316, 32.153900, 19.160740>,  <33.070522, 31.757139, 19.123722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105316, 32.153900, 19.160740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612877, 0.126515, -0.779984,
		-0.785376, 0.011127, 0.618919,
		0.086981, 0.991902, 0.092543,
		33.131409, 32.451469, 19.188503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321354, 32.096176, 19.225922>,  <33.070522, 31.757139, 19.123722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321354, 32.096176, 19.225922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.595432, 32.329987, 19.052099>,  <32.759880, 32.470272, 18.947805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.595432, 32.329987, 19.052099>,  <32.321354, 32.096176, 19.225922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595432, 32.329987, 19.052099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591307, 0.098057, -0.800463,
		-0.425280, 0.805428, 0.412822,
		0.685196, 0.584526, -0.434554,
		32.800991, 32.505344, 18.921734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895657, 32.512051, 18.701111>,  <32.321354, 32.096176, 19.225922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895657, 32.512051, 18.701111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.274632, 32.596371, 18.604843>,  <32.502018, 32.646965, 18.547083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.274632, 32.596371, 18.604843>,  <31.895657, 32.512051, 18.701111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274632, 32.596371, 18.604843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305103, 0.368903, -0.877965,
		-0.096295, 0.905247, 0.413829,
		0.947438, 0.210804, -0.240670,
		32.558865, 32.659611, 18.532642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972317, 33.215794, 18.496290>,  <31.895657, 32.512051, 18.701111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972317, 33.215794, 18.496290> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.243225, 32.980541, 18.319471>,  <32.405769, 32.839390, 18.213381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.243225, 32.980541, 18.319471>,  <31.972317, 33.215794, 18.496290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243225, 32.980541, 18.319471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409555, 0.197751, -0.890595,
		0.611202, 0.784217, -0.106941,
		0.677272, -0.588132, -0.442046,
		32.446407, 32.804100, 18.186857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042862, 33.456367, 17.864819>,  <31.972317, 33.215794, 18.496290>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042862, 33.456367, 17.864819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200542, 33.092030, 17.815868>,  <32.295151, 32.873428, 17.786499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200542, 33.092030, 17.815868>,  <32.042862, 33.456367, 17.864819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200542, 33.092030, 17.815868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438434, -0.069357, -0.896083,
		0.807702, 0.406888, -0.426684,
		0.394199, -0.910841, -0.122374,
		32.318802, 32.818779, 17.779156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374023, 33.477871, 17.238462>,  <32.042862, 33.456367, 17.864819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374023, 33.477871, 17.238462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.282345, 33.100254, 17.333334>,  <32.227337, 32.873684, 17.390257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.282345, 33.100254, 17.333334>,  <32.374023, 33.477871, 17.238462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282345, 33.100254, 17.333334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472871, -0.104990, -0.874854,
		0.850800, -0.312670, -0.422346,
		-0.229199, -0.944042, 0.237178,
		32.213585, 32.817043, 17.404488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245419, 33.231110, 16.607340>,  <32.374023, 33.477871, 17.238462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245419, 33.231110, 16.607340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.137688, 32.908348, 16.817623>,  <32.073048, 32.714691, 16.943792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.137688, 32.908348, 16.817623>,  <32.245419, 33.231110, 16.607340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137688, 32.908348, 16.817623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483197, -0.358973, -0.798536,
		0.833056, -0.469090, -0.293211,
		-0.269330, -0.806903, 0.525707,
		32.056889, 32.666279, 16.975336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385098, 32.564423, 16.208378>,  <32.245419, 33.231110, 16.607340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385098, 32.564423, 16.208378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.082336, 32.496777, 16.460884>,  <31.900679, 32.456188, 16.612389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.082336, 32.496777, 16.460884>,  <32.385098, 32.564423, 16.208378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082336, 32.496777, 16.460884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454273, -0.558267, -0.694244,
		0.469822, -0.812243, 0.345730,
		-0.756904, -0.169115, 0.631266,
		31.855265, 32.446041, 16.650265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330643, 31.777063, 16.281662>,  <32.385098, 32.564423, 16.208378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330643, 31.777063, 16.281662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.996904, 31.972792, 16.383190>,  <31.796659, 32.090229, 16.444107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.996904, 31.972792, 16.383190>,  <32.330643, 31.777063, 16.281662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996904, 31.972792, 16.383190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544332, -0.658722, -0.519411,
		-0.086962, -0.571533, 0.815958,
		-0.834350, 0.489322, 0.253820,
		31.746599, 32.119587, 16.459335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929022, 31.375273, 15.972329>,  <32.330643, 31.777063, 16.281662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929022, 31.375273, 15.972329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.649157, 31.624157, 16.112801>,  <31.481237, 31.773487, 16.197083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.649157, 31.624157, 16.112801>,  <31.929022, 31.375273, 15.972329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649157, 31.624157, 16.112801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714363, -0.600596, -0.359123,
		-0.012533, -0.502135, 0.864699,
		-0.699663, 0.622210, 0.351179,
		31.439259, 31.810820, 16.218155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448849, 30.959644, 16.471952>,  <31.929022, 31.375273, 15.972329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448849, 30.959644, 16.471952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.258472, 31.272221, 16.310541>,  <31.144247, 31.459766, 16.213694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.258472, 31.272221, 16.310541>,  <31.448849, 30.959644, 16.471952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258472, 31.272221, 16.310541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696112, -0.615133, -0.370189,
		-0.537503, 0.104712, 0.836735,
		-0.475940, 0.781439, -0.403528,
		31.115690, 31.506653, 16.189484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733101, 30.820887, 16.620285>,  <31.448849, 30.959644, 16.471952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733101, 30.820887, 16.620285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.708881, 31.084738, 16.320625>,  <30.694349, 31.243048, 16.140829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.708881, 31.084738, 16.320625>,  <30.733101, 30.820887, 16.620285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708881, 31.084738, 16.320625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730427, -0.540804, -0.417142,
		-0.680302, 0.521940, 0.514556,
		-0.060551, 0.659628, -0.749149,
		30.690716, 31.282627, 16.095881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018103, 30.925756, 16.510708>,  <30.733101, 30.820887, 16.620285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018103, 30.925756, 16.510708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.201830, 31.050381, 16.177973>,  <30.312067, 31.125154, 15.978332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.201830, 31.050381, 16.177973>,  <30.018103, 30.925756, 16.510708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201830, 31.050381, 16.177973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713285, -0.428743, -0.554441,
		-0.529386, 0.848004, 0.025301,
		0.459320, 0.311560, -0.831839,
		30.339626, 31.143848, 15.928421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.261671, 30.733507, 16.631336>,  <30.018103, 30.925756, 16.510708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.261671, 30.733507, 16.631336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980303, 30.584913, 16.873724>,  <28.811481, 30.495756, 17.019157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980303, 30.584913, 16.873724>,  <29.261671, 30.733507, 16.631336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980303, 30.584913, 16.873724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521397, 0.309723, 0.795121,
		-0.483060, 0.875254, -0.024173,
		-0.703420, -0.371487, 0.605969,
		28.769278, 30.473467, 17.055515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204115, 31.260725, 17.130964>,  <29.261671, 30.733507, 16.631336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204115, 31.260725, 17.130964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.012768, 30.941133, 17.276726>,  <28.897959, 30.749378, 17.364183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.012768, 30.941133, 17.276726>,  <29.204115, 31.260725, 17.130964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012768, 30.941133, 17.276726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284721, 0.251434, 0.925049,
		-0.830720, 0.546270, 0.107208,
		-0.478370, -0.798981, 0.364406,
		28.869257, 30.701439, 17.386047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.812450, 31.552238, 17.672369>,  <29.204115, 31.260725, 17.130964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.812450, 31.552238, 17.672369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.870199, 31.160032, 17.725653>,  <28.904848, 30.924707, 17.757622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.870199, 31.160032, 17.725653>,  <28.812450, 31.552238, 17.672369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870199, 31.160032, 17.725653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346592, 0.176198, 0.921319,
		-0.926839, -0.086844, 0.365277,
		0.144372, -0.980516, 0.133208,
		28.913511, 30.865877, 17.765615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533903, 31.257975, 18.343307>,  <28.812450, 31.552238, 17.672369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533903, 31.257975, 18.343307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.812752, 30.992407, 18.235064>,  <28.980061, 30.833065, 18.170116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.812752, 30.992407, 18.235064>,  <28.533903, 31.257975, 18.343307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812752, 30.992407, 18.235064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506665, 0.189159, 0.841135,
		-0.507259, -0.723483, 0.468253,
		0.697122, -0.663921, -0.270611,
		29.021889, 30.793230, 18.153881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598108, 30.834917, 18.992407>,  <28.533903, 31.257975, 18.343307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598108, 30.834917, 18.992407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923481, 30.767729, 18.769655>,  <29.118704, 30.727415, 18.636003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923481, 30.767729, 18.769655>,  <28.598108, 30.834917, 18.992407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923481, 30.767729, 18.769655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568973, 0.030882, 0.821777,
		-0.120839, -0.985308, 0.120693,
		0.813430, -0.167974, -0.556881,
		29.167509, 30.717337, 18.602591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076017, 30.221985, 19.267700>,  <28.598108, 30.834917, 18.992407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076017, 30.221985, 19.267700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.307091, 30.462503, 19.046892>,  <29.445734, 30.606815, 18.914408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.307091, 30.462503, 19.046892>,  <29.076017, 30.221985, 19.267700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307091, 30.462503, 19.046892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605113, 0.138414, 0.784015,
		0.547834, -0.786945, -0.283893,
		0.577682, 0.601297, -0.552019,
		29.480396, 30.642893, 18.881287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734341, 29.950081, 19.353844>,  <29.076017, 30.221985, 19.267700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734341, 29.950081, 19.353844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794491, 30.327675, 19.236351>,  <29.830582, 30.554232, 19.165855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794491, 30.327675, 19.236351>,  <29.734341, 29.950081, 19.353844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794491, 30.327675, 19.236351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578434, 0.156938, 0.800490,
		0.801749, -0.290280, -0.522433,
		0.150377, 0.943985, -0.293733,
		29.839603, 30.610870, 19.148232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218153, 29.411125, 19.038324>,  <29.734341, 29.950081, 19.353844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218153, 29.411125, 19.038324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.359047, 29.037928, 19.067865>,  <30.443583, 28.814009, 19.085590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.359047, 29.037928, 19.067865>,  <30.218153, 29.411125, 19.038324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359047, 29.037928, 19.067865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605462, -0.287330, -0.742198,
		0.713686, 0.216712, -0.666099,
		0.352233, -0.932994, 0.073852,
		30.464718, 28.758030, 19.090021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439255, 29.259579, 18.408350>,  <30.218153, 29.411125, 19.038324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439255, 29.259579, 18.408350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.344152, 28.928223, 18.611225>,  <30.287090, 28.729408, 18.732950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.344152, 28.928223, 18.611225>,  <30.439255, 29.259579, 18.408350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344152, 28.928223, 18.611225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648309, -0.253490, -0.717940,
		0.723303, -0.499509, -0.476785,
		-0.237758, -0.828392, 0.507186,
		30.272825, 28.679705, 18.763380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304203, 28.822948, 17.843212>,  <30.439255, 29.259579, 18.408350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304203, 28.822948, 17.843212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.154329, 28.644222, 18.168165>,  <30.064405, 28.536987, 18.363138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.154329, 28.644222, 18.168165>,  <30.304203, 28.822948, 17.843212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154329, 28.644222, 18.168165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591682, -0.559360, -0.580542,
		0.713811, -0.698192, -0.054791,
		-0.374682, -0.446816, 0.812385,
		30.041925, 28.510178, 18.411880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332701, 28.096935, 17.638033>,  <30.304203, 28.822948, 17.843212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332701, 28.096935, 17.638033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.072075, 28.154137, 17.936029>,  <29.915699, 28.188457, 18.114828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.072075, 28.154137, 17.936029>,  <30.332701, 28.096935, 17.638033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072075, 28.154137, 17.936029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705897, -0.473928, -0.526404,
		0.277795, -0.868874, 0.409740,
		-0.651566, 0.143002, 0.744991,
		29.876604, 28.197037, 18.159527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124346, 27.428446, 17.874439>,  <30.332701, 28.096935, 17.638033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124346, 27.428446, 17.874439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832706, 27.687189, 17.963875>,  <29.657722, 27.842434, 18.017536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832706, 27.687189, 17.963875>,  <30.124346, 27.428446, 17.874439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832706, 27.687189, 17.963875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669092, -0.604945, -0.431692,
		-0.143985, -0.464346, 0.873871,
		-0.729098, 0.646857, 0.223587,
		29.613977, 27.881247, 18.030951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590023, 26.983871, 17.981468>,  <30.124346, 27.428446, 17.874439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590023, 26.983871, 17.981468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.408730, 27.337997, 17.939896>,  <29.299953, 27.550472, 17.914951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.408730, 27.337997, 17.939896>,  <29.590023, 26.983871, 17.981468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408730, 27.337997, 17.939896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767916, -0.446988, -0.458809,
		-0.452652, -0.128125, 0.882434,
		-0.453223, 0.885316, -0.103941,
		29.272760, 27.603592, 17.908716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980555, 26.852892, 18.110434>,  <29.590023, 26.983871, 17.981468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980555, 26.852892, 18.110434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930901, 27.197475, 17.913465>,  <28.901108, 27.404226, 17.795284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.930901, 27.197475, 17.913465>,  <28.980555, 26.852892, 18.110434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930901, 27.197475, 17.913465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801929, -0.379361, -0.461513,
		-0.584380, 0.337597, 0.737921,
		-0.124133, 0.861460, -0.492420,
		28.893660, 27.455914, 17.765739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338356, 27.064966, 18.250816>,  <28.980555, 26.852892, 18.110434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338356, 27.064966, 18.250816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.462706, 27.238844, 17.912727>,  <28.537315, 27.343170, 17.709875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.462706, 27.238844, 17.912727>,  <28.338356, 27.064966, 18.250816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462706, 27.238844, 17.912727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776622, -0.396480, -0.489552,
		-0.547919, 0.808607, 0.214338,
		0.310875, 0.434694, -0.845221,
		28.555967, 27.369253, 17.659161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737352, 27.343710, 17.926668>,  <28.338356, 27.064966, 18.250816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737352, 27.343710, 17.926668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030767, 27.312937, 17.656555>,  <28.206816, 27.294474, 17.494488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030767, 27.312937, 17.656555>,  <27.737352, 27.343710, 17.926668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030767, 27.312937, 17.656555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664907, -0.287048, -0.689566,
		-0.140788, 0.954822, -0.261714,
		0.733538, -0.076933, -0.675281,
		28.250828, 27.289856, 17.453972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.503437, 30.607433, 30.086306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.755524, 30.466105, 29.809759>,  <37.906776, 30.381308, 29.643831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.755524, 30.466105, 29.809759>,  <37.503437, 30.607433, 30.086306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755524, 30.466105, 29.809759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750099, -0.047196, -0.659640,
		0.200437, 0.934310, -0.294772,
		0.630219, -0.353324, -0.691365,
		37.944588, 30.360107, 29.602350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163120, 30.760635, 29.442722>,  <37.503437, 30.607433, 30.086306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163120, 30.760635, 29.442722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.459812, 30.504595, 29.362616>,  <37.637829, 30.350969, 29.314552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.459812, 30.504595, 29.362616>,  <37.163120, 30.760635, 29.442722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459812, 30.504595, 29.362616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508595, -0.342144, -0.790106,
		0.437229, 0.687900, -0.579331,
		0.741729, -0.640102, -0.200268,
		37.682331, 30.312565, 29.302536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551048, 30.916483, 28.859243>,  <37.163120, 30.760635, 29.442722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551048, 30.916483, 28.859243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.539219, 30.519037, 28.902802>,  <37.532120, 30.280571, 28.928936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.539219, 30.519037, 28.902802>,  <37.551048, 30.916483, 28.859243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539219, 30.519037, 28.902802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566736, -0.073073, -0.820653,
		0.823369, -0.085984, -0.560955,
		-0.029573, -0.993613, 0.108896,
		37.530346, 30.220953, 28.935471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663246, 30.640837, 28.169992>,  <37.551048, 30.916483, 28.859243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663246, 30.640837, 28.169992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.489529, 30.354862, 28.389174>,  <37.385300, 30.183277, 28.520681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.489529, 30.354862, 28.389174>,  <37.663246, 30.640837, 28.169992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489529, 30.354862, 28.389174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582151, -0.241435, -0.776408,
		0.687379, -0.656180, -0.311348,
		-0.434293, -0.714938, 0.547953,
		37.359241, 30.140381, 28.553560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709515, 30.038887, 27.802885>,  <37.663246, 30.640837, 28.169992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709515, 30.038887, 27.802885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400578, 29.970222, 28.047514>,  <37.215214, 29.929024, 28.194292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400578, 29.970222, 28.047514>,  <37.709515, 30.038887, 27.802885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400578, 29.970222, 28.047514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480279, -0.472295, -0.739100,
		0.415716, -0.864564, 0.282329,
		-0.772342, -0.171659, 0.611572,
		37.168877, 29.918724, 28.230986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329887, 29.579275, 27.430716>,  <37.709515, 30.038887, 27.802885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329887, 29.579275, 27.430716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.071022, 29.656662, 27.725672>,  <36.915703, 29.703094, 27.902645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.071022, 29.656662, 27.725672>,  <37.329887, 29.579275, 27.430716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071022, 29.656662, 27.725672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755642, -0.290817, -0.586882,
		0.100903, -0.937014, 0.334400,
		-0.647166, 0.193468, 0.737391,
		36.876873, 29.714703, 27.946890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039307, 28.886911, 27.681932>,  <37.329887, 29.579275, 27.430716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039307, 28.886911, 27.681932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792213, 29.188684, 27.770685>,  <36.643955, 29.369749, 27.823936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792213, 29.188684, 27.770685>,  <37.039307, 28.886911, 27.681932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792213, 29.188684, 27.770685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695268, -0.392133, -0.602358,
		-0.367432, -0.526366, 0.766768,
		-0.617735, 0.754434, 0.221883,
		36.606892, 29.415014, 27.837250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464050, 28.537800, 27.786257>,  <37.039307, 28.886911, 27.681932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464050, 28.537800, 27.786257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.326355, 28.906361, 27.714123>,  <36.243740, 29.127497, 27.670843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.326355, 28.906361, 27.714123>,  <36.464050, 28.537800, 27.786257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326355, 28.906361, 27.714123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778675, -0.387495, -0.493471,
		-0.524564, -0.029448, 0.850862,
		-0.344236, 0.921401, -0.180335,
		36.223083, 29.182781, 27.660023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681065, 28.534653, 27.924055>,  <36.464050, 28.537800, 27.786257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681065, 28.534653, 27.924055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759815, 28.846262, 27.685944>,  <35.807068, 29.033228, 27.543077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759815, 28.846262, 27.685944>,  <35.681065, 28.534653, 27.924055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759815, 28.846262, 27.685944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764293, -0.258339, -0.590862,
		-0.614080, 0.571297, 0.544541,
		0.196881, 0.779025, -0.595279,
		35.818878, 29.079969, 27.507360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089497, 28.803471, 27.843361>,  <35.681065, 28.534653, 27.924055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089497, 28.803471, 27.843361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313076, 28.930784, 27.537088>,  <35.447224, 29.007174, 27.353325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.313076, 28.930784, 27.537088>,  <35.089497, 28.803471, 27.843361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313076, 28.930784, 27.537088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681927, -0.348897, -0.642842,
		-0.471751, 0.881457, 0.022031,
		0.558951, 0.318285, -0.765682,
		35.480762, 29.026270, 27.307384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782063, 29.414097, 27.528822>,  <35.089497, 28.803471, 27.843361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782063, 29.414097, 27.528822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021164, 29.212696, 27.279285>,  <35.164623, 29.091856, 27.129562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021164, 29.212696, 27.279285>,  <34.782063, 29.414097, 27.528822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021164, 29.212696, 27.279285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757565, -0.100180, -0.645027,
		0.262275, 0.858167, -0.441317,
		0.597752, -0.503501, -0.623843,
		35.200489, 29.061646, 27.092133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525902, 29.674068, 26.784594>,  <34.782063, 29.414097, 27.528822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525902, 29.674068, 26.784594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722095, 29.330919, 26.723305>,  <34.839813, 29.125031, 26.686531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722095, 29.330919, 26.723305>,  <34.525902, 29.674068, 26.784594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722095, 29.330919, 26.723305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695403, -0.279340, -0.662106,
		0.525201, 0.431306, -0.733579,
		0.490488, -0.857872, -0.153222,
		34.869244, 29.073557, 26.677338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811752, 30.268673, 26.656239>,  <34.525902, 29.674068, 26.784594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811752, 30.268673, 26.656239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637905, 30.623951, 26.596621>,  <34.533596, 30.837118, 26.560850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637905, 30.623951, 26.596621>,  <34.811752, 30.268673, 26.656239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637905, 30.623951, 26.596621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276525, 0.289106, 0.916489,
		0.857110, 0.357110, -0.371260,
		-0.434621, 0.888195, -0.149046,
		34.507519, 30.890409, 26.551907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277092, 30.787367, 26.744158>,  <34.811752, 30.268673, 26.656239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277092, 30.787367, 26.744158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.916763, 30.949976, 26.805164>,  <34.700565, 31.047541, 26.841768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.916763, 30.949976, 26.805164>,  <35.277092, 30.787367, 26.744158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916763, 30.949976, 26.805164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327603, 0.405835, 0.853214,
		0.284953, 0.818559, -0.498762,
		-0.900821, 0.406522, 0.152518,
		34.646519, 31.071932, 26.850920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396751, 31.472237, 26.991014>,  <35.277092, 30.787367, 26.744158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396751, 31.472237, 26.991014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015396, 31.439651, 27.107225>,  <34.786583, 31.420101, 27.176952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015396, 31.439651, 27.107225>,  <35.396751, 31.472237, 26.991014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015396, 31.439651, 27.107225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218858, 0.476135, 0.851702,
		-0.207713, 0.875591, -0.436114,
		-0.953392, -0.081463, 0.290529,
		34.729378, 31.415213, 27.194384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264332, 32.078438, 27.202553>,  <35.396751, 31.472237, 26.991014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264332, 32.078438, 27.202553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.981804, 31.856874, 27.378874>,  <34.812286, 31.723936, 27.484667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.981804, 31.856874, 27.378874>,  <35.264332, 32.078438, 27.202553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981804, 31.856874, 27.378874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079209, 0.556941, 0.826766,
		-0.703452, 0.618873, -0.349502,
		-0.706315, -0.553906, 0.440802,
		34.769909, 31.690702, 27.511114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739037, 32.485027, 27.587887>,  <35.264332, 32.078438, 27.202553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739037, 32.485027, 27.587887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746059, 32.121254, 27.754076>,  <34.750275, 31.902988, 27.853790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746059, 32.121254, 27.754076>,  <34.739037, 32.485027, 27.587887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746059, 32.121254, 27.754076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312310, 0.399733, 0.861786,
		-0.949818, 0.114626, 0.291044,
		0.017557, -0.909436, 0.415473,
		34.751328, 31.848423, 27.878717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567551, 32.748299, 28.252453>,  <34.739037, 32.485027, 27.587887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567551, 32.748299, 28.252453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.696770, 32.371532, 28.289183>,  <34.774300, 32.145473, 28.311220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.696770, 32.371532, 28.289183>,  <34.567551, 32.748299, 28.252453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696770, 32.371532, 28.289183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472754, 0.244665, 0.846548,
		-0.819845, -0.230064, 0.524333,
		0.323046, -0.941918, 0.091824,
		34.793682, 32.088959, 28.316730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537991, 32.663200, 28.918074>,  <34.567551, 32.748299, 28.252453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537991, 32.663200, 28.918074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772110, 32.358696, 28.806427>,  <34.912582, 32.175991, 28.739439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.772110, 32.358696, 28.806427>,  <34.537991, 32.663200, 28.918074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772110, 32.358696, 28.806427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519614, 0.087905, 0.849867,
		-0.622437, -0.642457, 0.447014,
		0.585298, -0.761263, -0.279114,
		34.947701, 32.130318, 28.722692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546104, 32.289215, 29.465549>,  <34.537991, 32.663200, 28.918074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546104, 32.289215, 29.465549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.882263, 32.190498, 29.272541>,  <35.083958, 32.131268, 29.156736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.882263, 32.190498, 29.272541>,  <34.546104, 32.289215, 29.465549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882263, 32.190498, 29.272541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538836, 0.284840, 0.792794,
		-0.058213, -0.926261, 0.372358,
		0.840397, -0.246791, -0.482522,
		35.134384, 32.116463, 29.127785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905437, 31.954525, 30.034407>,  <34.546104, 32.289215, 29.465549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905437, 31.954525, 30.034407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160744, 32.060143, 29.745159>,  <35.313927, 32.123512, 29.571611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160744, 32.060143, 29.745159>,  <34.905437, 31.954525, 30.034407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160744, 32.060143, 29.745159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618842, 0.382724, 0.685972,
		0.457881, -0.885327, 0.080877,
		0.638263, 0.264044, -0.723119,
		35.352222, 32.139355, 29.528223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602917, 31.686956, 30.282021>,  <34.905437, 31.954525, 30.034407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602917, 31.686956, 30.282021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644478, 31.970404, 30.002859>,  <35.669415, 32.140472, 29.835363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.644478, 31.970404, 30.002859>,  <35.602917, 31.686956, 30.282021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644478, 31.970404, 30.002859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548318, 0.544622, 0.634613,
		0.829790, -0.448608, -0.331962,
		0.103898, 0.708616, -0.697903,
		35.675648, 32.182987, 29.793488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249798, 31.889719, 30.446054>,  <35.602917, 31.686956, 30.282021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249798, 31.889719, 30.446054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.115288, 32.188457, 30.216572>,  <36.034580, 32.367702, 30.078882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.115288, 32.188457, 30.216572>,  <36.249798, 31.889719, 30.446054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115288, 32.188457, 30.216572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680763, 0.613711, 0.399900,
		0.650753, -0.256080, -0.714803,
		-0.336276, 0.746848, -0.573704,
		36.014404, 32.412514, 30.044460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805119, 32.166973, 30.251953>,  <36.249798, 31.889719, 30.446054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805119, 32.166973, 30.251953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.518505, 32.435493, 30.176121>,  <36.346539, 32.596603, 30.130621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.518505, 32.435493, 30.176121>,  <36.805119, 32.166973, 30.251953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518505, 32.435493, 30.176121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619700, 0.737373, 0.268801,
		0.320237, 0.075121, -0.944354,
		-0.716534, 0.671296, -0.189581,
		36.303547, 32.636883, 30.119246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122913, 32.791157, 29.834211>,  <36.805119, 32.166973, 30.251953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122913, 32.791157, 29.834211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788055, 32.913754, 30.015429>,  <36.587139, 32.987312, 30.124159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788055, 32.913754, 30.015429>,  <37.122913, 32.791157, 29.834211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788055, 32.913754, 30.015429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510639, 0.734785, 0.446474,
		-0.196047, 0.605105, -0.771631,
		-0.837146, 0.306495, 0.453042,
		36.536911, 33.005703, 30.151340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041882, 33.544022, 29.696249>,  <37.122913, 32.791157, 29.834211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041882, 33.544022, 29.696249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835171, 33.455204, 30.026979>,  <36.711143, 33.401913, 30.225418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.835171, 33.455204, 30.026979>,  <37.041882, 33.544022, 29.696249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835171, 33.455204, 30.026979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474690, 0.729412, 0.492572,
		-0.712469, 0.647035, -0.271540,
		-0.516776, -0.222045, 0.826824,
		36.680138, 33.388592, 30.275026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542641, 33.983223, 29.363901>,  <37.041882, 33.544022, 29.696249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542641, 33.983223, 29.363901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.803520, 34.123161, 29.094904>,  <37.960049, 34.207123, 28.933506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.803520, 34.123161, 29.094904>,  <37.542641, 33.983223, 29.363901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803520, 34.123161, 29.094904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756338, 0.359836, -0.546324,
		0.050859, 0.864944, 0.499285,
		0.652201, 0.349842, -0.672491,
		37.999180, 34.228115, 28.893156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337879, 34.669071, 29.355099>,  <37.542641, 33.983223, 29.363901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337879, 34.669071, 29.355099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521053, 34.498508, 29.043079>,  <37.630959, 34.396172, 28.855867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521053, 34.498508, 29.043079>,  <37.337879, 34.669071, 29.355099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521053, 34.498508, 29.043079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778860, 0.230573, -0.583278,
		0.428570, 0.874652, -0.226521,
		0.457935, -0.426404, -0.780048,
		37.658432, 34.370586, 28.809065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323578, 35.186890, 28.811178>,  <37.337879, 34.669071, 29.355099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323578, 35.186890, 28.811178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363609, 34.831879, 28.631279>,  <37.387627, 34.618870, 28.523338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.363609, 34.831879, 28.631279>,  <37.323578, 35.186890, 28.811178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363609, 34.831879, 28.631279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797086, 0.199028, -0.570125,
		0.595516, 0.415547, -0.687519,
		0.100078, -0.887530, -0.449750,
		37.393631, 34.565620, 28.496353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323055, 35.316849, 28.113348>,  <37.323578, 35.186890, 28.811178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323055, 35.316849, 28.113348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214405, 34.932159, 28.127829>,  <37.149216, 34.701347, 28.136517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.214405, 34.932159, 28.127829>,  <37.323055, 35.316849, 28.113348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214405, 34.932159, 28.127829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779867, 0.197912, -0.593834,
		0.563938, -0.189532, -0.803773,
		-0.271627, -0.961722, 0.036200,
		37.132915, 34.643642, 28.138689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281437, 35.071175, 27.411133>,  <37.323055, 35.316849, 28.113348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281437, 35.071175, 27.411133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063557, 34.806072, 27.616678>,  <36.932827, 34.647011, 27.740005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063557, 34.806072, 27.616678>,  <37.281437, 35.071175, 27.411133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063557, 34.806072, 27.616678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723025, 0.060685, -0.688151,
		0.424891, -0.746374, -0.512243,
		-0.544704, -0.662753, 0.513863,
		36.900146, 34.607246, 27.770838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146416, 34.403755, 27.026201>,  <37.281437, 35.071175, 27.411133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146416, 34.403755, 27.026201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850090, 34.397129, 27.294804>,  <36.672295, 34.393154, 27.455965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850090, 34.397129, 27.294804>,  <37.146416, 34.403755, 27.026201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850090, 34.397129, 27.294804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670520, -0.041289, -0.740742,
		0.040002, -0.999010, 0.019475,
		-0.740813, -0.016572, 0.671507,
		36.627846, 34.392159, 27.496256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787998, 33.879772, 26.756620>,  <37.146416, 34.403755, 27.026201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787998, 33.879772, 26.756620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525169, 34.085693, 26.976889>,  <36.367474, 34.209248, 27.109049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525169, 34.085693, 26.976889>,  <36.787998, 33.879772, 26.756620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525169, 34.085693, 26.976889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673541, -0.072880, -0.735549,
		-0.338531, -0.854204, 0.394629,
		-0.657069, 0.514805, 0.550669,
		36.328049, 34.240135, 27.142090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199718, 33.503502, 26.764910>,  <36.787998, 33.879772, 26.756620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199718, 33.503502, 26.764910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.073315, 33.870266, 26.862415>,  <35.997475, 34.090324, 26.920919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.073315, 33.870266, 26.862415>,  <36.199718, 33.503502, 26.764910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073315, 33.870266, 26.862415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637769, -0.015072, -0.770080,
		-0.702418, -0.398815, 0.589538,
		-0.316005, 0.916907, 0.243766,
		35.978512, 34.145340, 26.935545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405510, 33.557045, 26.814903>,  <36.199718, 33.503502, 26.764910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405510, 33.557045, 26.814903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.529644, 33.930248, 26.742031>,  <35.604126, 34.154171, 26.698309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.529644, 33.930248, 26.742031>,  <35.405510, 33.557045, 26.814903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529644, 33.930248, 26.742031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664749, 0.075993, -0.743192,
		-0.679559, 0.351743, 0.643799,
		0.310337, 0.933007, -0.182179,
		35.622746, 34.210152, 26.687378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766392, 33.876732, 26.749344>,  <35.405510, 33.557045, 26.814903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766392, 33.876732, 26.749344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035416, 34.120808, 26.581856>,  <35.196831, 34.267254, 26.481363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.035416, 34.120808, 26.581856>,  <34.766392, 33.876732, 26.749344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035416, 34.120808, 26.581856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602890, 0.123651, -0.788184,
		-0.429170, 0.782544, 0.451042,
		0.672560, 0.610193, -0.418720,
		35.237183, 34.303867, 26.456240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331398, 34.475117, 26.525486>,  <34.766392, 33.876732, 26.749344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331398, 34.475117, 26.525486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679291, 34.477036, 26.328085>,  <34.888027, 34.478188, 26.209644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679291, 34.477036, 26.328085>,  <34.331398, 34.475117, 26.525486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679291, 34.477036, 26.328085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493124, -0.031859, -0.869376,
		-0.019895, 0.999481, -0.025342,
		0.869732, 0.004799, -0.493501,
		34.940208, 34.478474, 26.180035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182499, 34.941887, 25.915754>,  <34.331398, 34.475117, 26.525486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182499, 34.941887, 25.915754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.508877, 34.737701, 25.807194>,  <34.704704, 34.615192, 25.742058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.508877, 34.737701, 25.807194>,  <34.182499, 34.941887, 25.915754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508877, 34.737701, 25.807194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339103, -0.042370, -0.939795,
		0.468229, 0.858857, -0.207671,
		0.815948, -0.510461, -0.271402,
		34.753662, 34.584564, 25.725773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370834, 35.175327, 25.217627>,  <34.182499, 34.941887, 25.915754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370834, 35.175327, 25.217627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560146, 34.826500, 25.267435>,  <34.673733, 34.617203, 25.297321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.560146, 34.826500, 25.267435>,  <34.370834, 35.175327, 25.217627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560146, 34.826500, 25.267435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237699, -0.262535, -0.935187,
		0.848239, 0.413002, -0.331541,
		0.473276, -0.872069, 0.124522,
		34.702129, 34.564880, 25.304792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684887, 34.999214, 24.597523>,  <34.370834, 35.175327, 25.217627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684887, 34.999214, 24.597523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671398, 34.649441, 24.791115>,  <34.663307, 34.439579, 24.907270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.671398, 34.649441, 24.791115>,  <34.684887, 34.999214, 24.597523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671398, 34.649441, 24.791115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231244, -0.464290, -0.854963,
		0.972311, -0.140745, -0.186552,
		-0.033718, -0.874429, 0.483981,
		34.661282, 34.387112, 24.936310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835491, 34.640480, 24.069885>,  <34.684887, 34.999214, 24.597523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835491, 34.640480, 24.069885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.723125, 34.369545, 24.341856>,  <34.655708, 34.206985, 24.505039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.723125, 34.369545, 24.341856>,  <34.835491, 34.640480, 24.069885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723125, 34.369545, 24.341856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133890, -0.673868, -0.726619,
		0.950349, -0.295151, 0.098608,
		-0.280911, -0.677338, 0.679928,
		34.638851, 34.166344, 24.545834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287830, 34.057495, 23.952957>,  <34.835491, 34.640480, 24.069885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287830, 34.057495, 23.952957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.967068, 33.911785, 24.142376>,  <34.774609, 33.824360, 24.256027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.967068, 33.911785, 24.142376>,  <35.287830, 34.057495, 23.952957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967068, 33.911785, 24.142376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083145, -0.716858, -0.692244,
		0.591635, -0.594488, 0.544566,
		-0.801907, -0.364278, 0.473547,
		34.726494, 33.802502, 24.284441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358879, 33.355297, 23.978794>,  <35.287830, 34.057495, 23.952957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358879, 33.355297, 23.978794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974529, 33.462513, 24.006712>,  <34.743919, 33.526840, 24.023462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974529, 33.462513, 24.006712>,  <35.358879, 33.355297, 23.978794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974529, 33.462513, 24.006712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235900, -0.659925, -0.713338,
		-0.145142, -0.701895, 0.697336,
		-0.960878, 0.268037, 0.069795,
		34.686268, 33.542923, 24.027651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871178, 32.729252, 24.034698>,  <35.358879, 33.355297, 23.978794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871178, 32.729252, 24.034698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.651516, 33.034897, 23.899315>,  <34.519718, 33.218285, 23.818085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.651516, 33.034897, 23.899315>,  <34.871178, 32.729252, 24.034698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651516, 33.034897, 23.899315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334982, -0.572294, -0.748510,
		-0.765646, -0.297672, 0.570244,
		-0.549158, 0.764115, -0.338459,
		34.486767, 33.264130, 23.797777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263710, 32.466137, 23.922268>,  <34.871178, 32.729252, 24.034698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263710, 32.466137, 23.922268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.242374, 32.808197, 23.716017>,  <34.229572, 33.013432, 23.592266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.242374, 32.808197, 23.716017>,  <34.263710, 32.466137, 23.922268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242374, 32.808197, 23.716017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186930, -0.515786, -0.836075,
		-0.980924, 0.051790, 0.187366,
		-0.053341, 0.855151, -0.515628,
		34.226372, 33.064743, 23.561329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627296, 32.416256, 23.430033>,  <34.263710, 32.466137, 23.922268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627296, 32.416256, 23.430033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827038, 32.725533, 23.273663>,  <33.946884, 32.911098, 23.179840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827038, 32.725533, 23.273663>,  <33.627296, 32.416256, 23.430033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827038, 32.725533, 23.273663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293926, -0.273267, -0.915932,
		-0.815018, 0.572276, 0.090805,
		0.499352, 0.773191, -0.390925,
		33.976845, 32.957489, 23.156385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223492, 32.661182, 22.962116>,  <33.627296, 32.416256, 23.430033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223492, 32.661182, 22.962116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562653, 32.817944, 22.819307>,  <33.766151, 32.912003, 22.733622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.562653, 32.817944, 22.819307>,  <33.223492, 32.661182, 22.962116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562653, 32.817944, 22.819307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264596, -0.270729, -0.925578,
		-0.459395, 0.879270, -0.125857,
		0.847906, 0.391905, -0.357023,
		33.817024, 32.935516, 22.712200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019951, 32.915897, 22.260332>,  <33.223492, 32.661182, 22.962116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019951, 32.915897, 22.260332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.415752, 32.965275, 22.230305>,  <33.653233, 32.994900, 22.212288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.415752, 32.965275, 22.230305>,  <33.019951, 32.915897, 22.260332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415752, 32.965275, 22.230305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064056, -0.090875, -0.993800,
		-0.129499, 0.988182, -0.082015,
		0.989508, 0.123442, -0.075067,
		33.712605, 33.002308, 22.207785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204075, 33.625965, 21.906248>,  <33.019951, 32.915897, 22.260332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204075, 33.625965, 21.906248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488712, 33.351257, 21.846945>,  <33.659496, 33.186432, 21.811363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.488712, 33.351257, 21.846945>,  <33.204075, 33.625965, 21.906248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488712, 33.351257, 21.846945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140503, 0.067653, -0.987766,
		0.688398, 0.723720, -0.048351,
		0.711595, -0.686769, -0.148257,
		33.702190, 33.145226, 21.802467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535545, 33.767166, 21.375107>,  <33.204075, 33.625965, 21.906248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535545, 33.767166, 21.375107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.636082, 33.380077, 21.367659>,  <33.696404, 33.147823, 21.363190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.636082, 33.380077, 21.367659>,  <33.535545, 33.767166, 21.375107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636082, 33.380077, 21.367659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042396, 0.008215, -0.999067,
		0.966970, 0.251893, -0.038962,
		0.251338, -0.967720, -0.018622,
		33.711483, 33.089760, 21.362072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912800, 33.780323, 20.890917>,  <33.535545, 33.767166, 21.375107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912800, 33.780323, 20.890917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849594, 33.389053, 20.944889>,  <33.811672, 33.154293, 20.977272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849594, 33.389053, 20.944889>,  <33.912800, 33.780323, 20.890917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849594, 33.389053, 20.944889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073519, -0.124612, -0.989478,
		0.984696, -0.166273, -0.052224,
		-0.158015, -0.978174, 0.134930,
		33.802189, 33.095600, 20.985369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380169, 33.394081, 20.412561>,  <33.912800, 33.780323, 20.890917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380169, 33.394081, 20.412561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101448, 33.116570, 20.485382>,  <33.934216, 32.950062, 20.529074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101448, 33.116570, 20.485382>,  <34.380169, 33.394081, 20.412561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101448, 33.116570, 20.485382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090530, -0.166716, -0.981840,
		0.711528, -0.700629, 0.053360,
		-0.696801, -0.693776, 0.182051,
		33.892406, 32.908436, 20.539997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488113, 32.814697, 19.988720>,  <34.380169, 33.394081, 20.412561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488113, 32.814697, 19.988720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104191, 32.775230, 20.093824>,  <33.873837, 32.751549, 20.156887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104191, 32.775230, 20.093824>,  <34.488113, 32.814697, 19.988720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104191, 32.775230, 20.093824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246491, -0.151437, -0.957241,
		0.134243, -0.983530, 0.121028,
		-0.959803, -0.098670, 0.262760,
		33.816250, 32.745628, 20.172653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300114, 32.313622, 19.554647>,  <34.488113, 32.814697, 19.988720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300114, 32.313622, 19.554647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947521, 32.448925, 19.686447>,  <33.735966, 32.530106, 19.765528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.947521, 32.448925, 19.686447>,  <34.300114, 32.313622, 19.554647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947521, 32.448925, 19.686447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432286, -0.297218, -0.851346,
		-0.190040, -0.892886, 0.408216,
		-0.881484, 0.338255, 0.329499,
		33.683075, 32.550400, 19.785297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627533, 31.621489, 19.475227>,  <34.300114, 32.313622, 19.554647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627533, 31.621489, 19.475227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.911003, 31.484846, 19.228298>,  <35.081085, 31.402861, 19.080141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.911003, 31.484846, 19.228298>,  <34.627533, 31.621489, 19.475227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911003, 31.484846, 19.228298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705236, 0.368455, 0.605709,
		0.020542, -0.864608, 0.502028,
		0.708675, -0.341605, -0.617321,
		35.123608, 31.382364, 19.043102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982342, 31.289503, 19.933983>,  <34.627533, 31.621489, 19.475227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982342, 31.289503, 19.933983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230270, 31.338808, 19.623981>,  <35.379028, 31.368391, 19.437981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.230270, 31.338808, 19.623981>,  <34.982342, 31.289503, 19.933983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230270, 31.338808, 19.623981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727585, 0.279741, 0.626391,
		0.294014, -0.952129, 0.083700,
		0.619820, 0.123269, -0.775002,
		35.416218, 31.375786, 19.391481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575851, 30.852242, 20.113192>,  <34.982342, 31.289503, 19.933983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575851, 30.852242, 20.113192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684395, 31.134575, 19.851454>,  <35.749523, 31.303974, 19.694412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684395, 31.134575, 19.851454>,  <35.575851, 30.852242, 20.113192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684395, 31.134575, 19.851454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843787, 0.152593, 0.514527,
		0.463017, -0.691749, -0.554164,
		0.271362, 0.705831, -0.654343,
		35.765804, 31.346325, 19.655151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304581, 30.650221, 19.822561>,  <35.575851, 30.852242, 20.113192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304581, 30.650221, 19.822561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244190, 31.043406, 19.780624>,  <36.207954, 31.279316, 19.755463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244190, 31.043406, 19.780624>,  <36.304581, 30.650221, 19.822561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244190, 31.043406, 19.780624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763568, 0.183321, 0.619159,
		0.627829, 0.013425, -0.778235,
		-0.150979, 0.982961, -0.104843,
		36.198898, 31.338293, 19.749172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932751, 30.907373, 19.837286>,  <36.304581, 30.650221, 19.822561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932751, 30.907373, 19.837286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735256, 31.251329, 19.889143>,  <36.616760, 31.457703, 19.920258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.735256, 31.251329, 19.889143>,  <36.932751, 30.907373, 19.837286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735256, 31.251329, 19.889143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748681, 0.344492, 0.566393,
		0.442376, 0.376713, -0.813874,
		-0.493741, 0.859891, 0.129643,
		36.587135, 31.509296, 19.928036>
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
