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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<43.206066, 32.432724, 22.463850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865185, 32.527924, 22.650227>,  <42.660656, 32.585041, 22.762053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865185, 32.527924, 22.650227>,  <43.206066, 32.432724, 22.463850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865185, 32.527924, 22.650227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396099, 0.288356, -0.871755,
		-0.341832, -0.927474, -0.151469,
		-0.852207, 0.237997, 0.465941,
		42.609524, 32.599323, 22.790009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.853569, 32.709263, 21.871643>,  <43.206066, 32.432724, 22.463850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.853569, 32.709263, 21.871643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627594, 32.794708, 22.190445>,  <42.492008, 32.845974, 22.381725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.627594, 32.794708, 22.190445>,  <42.853569, 32.709263, 21.871643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.627594, 32.794708, 22.190445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697053, 0.393324, -0.599510,
		-0.441543, -0.894240, -0.073306,
		-0.564939, 0.213611, 0.797003,
		42.458111, 32.858791, 22.429546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147865, 32.690155, 21.686483>,  <42.853569, 32.709263, 21.871643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147865, 32.690155, 21.686483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077221, 32.897762, 22.021011>,  <42.034836, 33.022327, 22.221727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077221, 32.897762, 22.021011>,  <42.147865, 32.690155, 21.686483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077221, 32.897762, 22.021011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801105, 0.417869, -0.428504,
		-0.571873, -0.745658, 0.341988,
		-0.176611, 0.519019, 0.836318,
		42.024239, 33.053467, 22.271908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499737, 32.756969, 21.678352>,  <42.147865, 32.690155, 21.686483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499737, 32.756969, 21.678352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604782, 33.013985, 21.966290>,  <41.667809, 33.168194, 22.139051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.604782, 33.013985, 21.966290>,  <41.499737, 32.756969, 21.678352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.604782, 33.013985, 21.966290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797822, 0.564188, -0.212537,
		-0.542691, -0.518493, 0.660796,
		0.262614, 0.642540, 0.719845,
		41.683567, 33.206745, 22.182243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878582, 32.919041, 22.007610>,  <41.499737, 32.756969, 21.678352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878582, 32.919041, 22.007610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131012, 33.222095, 22.074219>,  <41.282471, 33.403931, 22.114183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131012, 33.222095, 22.074219>,  <40.878582, 32.919041, 22.007610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131012, 33.222095, 22.074219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730040, 0.652641, -0.202734,
		-0.262279, 0.006371, 0.964971,
		0.631072, 0.757640, 0.166523,
		41.320332, 33.449387, 22.124176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900814, 33.534763, 22.414862>,  <40.878582, 32.919041, 22.007610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900814, 33.534763, 22.414862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636353, 33.778973, 22.240444>,  <40.477676, 33.925499, 22.135794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636353, 33.778973, 22.240444>,  <40.900814, 33.534763, 22.414862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636353, 33.778973, 22.240444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374784, 0.772255, 0.512990,
		0.649930, 0.175744, -0.739395,
		-0.661157, 0.610521, -0.436045,
		40.438007, 33.962128, 22.109631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219200, 33.977497, 21.932980>,  <40.900814, 33.534763, 22.414862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219200, 33.977497, 21.932980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900135, 34.166615, 22.082752>,  <40.708694, 34.280087, 22.172615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900135, 34.166615, 22.082752>,  <41.219200, 33.977497, 21.932980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900135, 34.166615, 22.082752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600471, 0.564624, 0.566246,
		0.056305, 0.676508, -0.734279,
		-0.797662, 0.472796, 0.374432,
		40.660835, 34.308453, 22.195082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471996, 34.776711, 22.076332>,  <41.219200, 33.977497, 21.932980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471996, 34.776711, 22.076332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127598, 34.709270, 22.268272>,  <40.920959, 34.668808, 22.383436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127598, 34.709270, 22.268272>,  <41.471996, 34.776711, 22.076332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127598, 34.709270, 22.268272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326239, 0.540728, 0.775359,
		-0.390194, 0.824128, -0.410562,
		-0.860998, -0.168599, 0.479851,
		40.869297, 34.658691, 22.412228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128708, 35.350250, 22.209105>,  <41.471996, 34.776711, 22.076332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128708, 35.350250, 22.209105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964344, 35.126297, 22.496906>,  <40.865726, 34.991924, 22.669588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.964344, 35.126297, 22.496906>,  <41.128708, 35.350250, 22.209105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.964344, 35.126297, 22.496906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222114, 0.703951, 0.674625,
		-0.884206, 0.437021, -0.164902,
		-0.410908, -0.559880, 0.719506,
		40.841072, 34.958332, 22.712757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624130, 35.877552, 22.603922>,  <41.128708, 35.350250, 22.209105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624130, 35.877552, 22.603922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692081, 35.563503, 22.842155>,  <40.732853, 35.375072, 22.985096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692081, 35.563503, 22.842155>,  <40.624130, 35.877552, 22.603922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692081, 35.563503, 22.842155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301853, 0.616776, 0.726961,
		-0.938097, 0.056286, 0.341767,
		0.169876, -0.785124, 0.595586,
		40.743046, 35.327965, 23.020832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202995, 36.016632, 23.242025>,  <40.624130, 35.877552, 22.603922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202995, 36.016632, 23.242025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511623, 35.772251, 23.312923>,  <40.696800, 35.625622, 23.355461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511623, 35.772251, 23.312923>,  <40.202995, 36.016632, 23.242025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511623, 35.772251, 23.312923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270566, 0.567336, 0.777768,
		-0.575737, -0.552146, 0.603043,
		0.771570, -0.610953, 0.177244,
		40.743095, 35.588966, 23.366096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149155, 36.145290, 23.921837>,  <40.202995, 36.016632, 23.242025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149155, 36.145290, 23.921837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489281, 35.947063, 23.850983>,  <40.693356, 35.828125, 23.808470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489281, 35.947063, 23.850983>,  <40.149155, 36.145290, 23.921837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489281, 35.947063, 23.850983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431092, 0.462814, 0.774573,
		-0.301875, -0.734991, 0.607174,
		0.850313, -0.495572, -0.177137,
		40.744373, 35.798393, 23.797842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387878, 35.959644, 24.505062>,  <40.149155, 36.145290, 23.921837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387878, 35.959644, 24.505062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716190, 35.961079, 24.276569>,  <40.913177, 35.961941, 24.139475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716190, 35.961079, 24.276569>,  <40.387878, 35.959644, 24.505062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716190, 35.961079, 24.276569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486015, 0.521086, 0.701612,
		0.300178, -0.853497, 0.425954,
		0.820782, 0.003588, -0.571230,
		40.962425, 35.962154, 24.105200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869186, 35.753849, 24.900583>,  <40.387878, 35.959644, 24.505062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869186, 35.753849, 24.900583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057148, 35.956989, 24.611786>,  <41.169926, 36.078873, 24.438507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057148, 35.956989, 24.611786>,  <40.869186, 35.753849, 24.900583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057148, 35.956989, 24.611786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466537, 0.551462, 0.691543,
		0.749355, -0.661796, 0.022202,
		0.469905, 0.507853, -0.721994,
		41.198120, 36.109344, 24.395187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585457, 35.714268, 25.063784>,  <40.869186, 35.753849, 24.900583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585457, 35.714268, 25.063784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553768, 36.025658, 24.814720>,  <41.534756, 36.212490, 24.665281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553768, 36.025658, 24.814720>,  <41.585457, 35.714268, 25.063784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553768, 36.025658, 24.814720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487481, 0.575095, 0.656984,
		0.869533, -0.251491, -0.425048,
		-0.079217, 0.778472, -0.622661,
		41.530003, 36.259201, 24.627922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166561, 36.086357, 25.146944>,  <41.585457, 35.714268, 25.063784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166561, 36.086357, 25.146944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946407, 36.375801, 24.980350>,  <41.814316, 36.549469, 24.880394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946407, 36.375801, 24.980350>,  <42.166561, 36.086357, 25.146944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946407, 36.375801, 24.980350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281119, 0.630323, 0.723647,
		0.786160, 0.281203, -0.550343,
		-0.550385, 0.723614, -0.416484,
		41.781292, 36.592884, 24.855406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595184, 36.802391, 25.075033>,  <42.166561, 36.086357, 25.146944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595184, 36.802391, 25.075033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210518, 36.911488, 25.063606>,  <41.979717, 36.976944, 25.056751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.210518, 36.911488, 25.063606>,  <42.595184, 36.802391, 25.075033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.210518, 36.911488, 25.063606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196447, 0.757820, 0.622187,
		0.191344, 0.592723, -0.782347,
		-0.961663, 0.272742, -0.028566,
		41.922020, 36.993309, 25.055037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613255, 37.524616, 25.068802>,  <42.595184, 36.802391, 25.075033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613255, 37.524616, 25.068802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237980, 37.445564, 25.182465>,  <42.012814, 37.398132, 25.250662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237980, 37.445564, 25.182465>,  <42.613255, 37.524616, 25.068802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237980, 37.445564, 25.182465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036639, 0.759648, 0.649301,
		-0.344182, 0.619578, -0.705452,
		-0.938188, -0.197631, 0.284157,
		41.956524, 37.386276, 25.267712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198067, 38.156750, 25.100967>,  <42.613255, 37.524616, 25.068802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198067, 38.156750, 25.100967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999928, 37.910358, 25.345982>,  <41.881042, 37.762524, 25.492990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.999928, 37.910358, 25.345982>,  <42.198067, 38.156750, 25.100967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.999928, 37.910358, 25.345982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031203, 0.692049, 0.721176,
		-0.868133, 0.376348, -0.323586,
		-0.495350, -0.615980, 0.612533,
		41.851322, 37.725563, 25.529741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844067, 38.614895, 25.410334>,  <42.198067, 38.156750, 25.100967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844067, 38.614895, 25.410334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829098, 38.302776, 25.660049>,  <41.820118, 38.115505, 25.809879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829098, 38.302776, 25.660049>,  <41.844067, 38.614895, 25.410334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829098, 38.302776, 25.660049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220955, 0.602804, 0.766685,
		-0.974566, 0.166630, 0.149853,
		-0.037421, -0.780296, 0.624290,
		41.817871, 38.068687, 25.847336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430477, 38.916096, 26.043783>,  <41.844067, 38.614895, 25.410334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430477, 38.916096, 26.043783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601177, 38.575588, 26.165916>,  <41.703598, 38.371284, 26.239197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601177, 38.575588, 26.165916>,  <41.430477, 38.916096, 26.043783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601177, 38.575588, 26.165916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160972, 0.403730, 0.900606,
		-0.889926, -0.335187, 0.309323,
		0.426754, -0.851265, 0.305334,
		41.729202, 38.320210, 26.257517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195728, 38.805092, 26.652452>,  <41.430477, 38.916096, 26.043783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195728, 38.805092, 26.652452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537861, 38.597897, 26.648575>,  <41.743141, 38.473579, 26.646248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537861, 38.597897, 26.648575>,  <41.195728, 38.805092, 26.652452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537861, 38.597897, 26.648575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298710, 0.477781, 0.826134,
		-0.423299, -0.709514, 0.563390,
		0.855331, -0.517992, -0.009695,
		41.794460, 38.442497, 26.645666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274940, 38.513111, 27.369953>,  <41.195728, 38.805092, 26.652452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274940, 38.513111, 27.369953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634197, 38.530029, 27.194889>,  <41.849751, 38.540180, 27.089851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634197, 38.530029, 27.194889>,  <41.274940, 38.513111, 27.369953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634197, 38.530029, 27.194889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391386, 0.376704, 0.839590,
		0.200376, -0.925368, 0.321782,
		0.898146, 0.042292, -0.437658,
		41.903641, 38.542717, 27.063591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647987, 38.455910, 27.962093>,  <41.274940, 38.513111, 27.369953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647987, 38.455910, 27.962093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906265, 38.595596, 27.690468>,  <42.061230, 38.679409, 27.527493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906265, 38.595596, 27.690468>,  <41.647987, 38.455910, 27.962093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906265, 38.595596, 27.690468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521103, 0.448512, 0.726146,
		0.558154, -0.822729, 0.107621,
		0.645691, 0.349220, -0.679065,
		42.099972, 38.700363, 27.486748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224651, 38.371002, 28.333374>,  <41.647987, 38.455910, 27.962093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224651, 38.371002, 28.333374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334919, 38.623543, 28.043434>,  <42.401081, 38.775066, 27.869471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334919, 38.623543, 28.043434>,  <42.224651, 38.371002, 28.333374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334919, 38.623543, 28.043434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621444, 0.458238, 0.635472,
		0.733358, -0.625633, -0.266025,
		0.275669, 0.631348, -0.724849,
		42.417622, 38.812946, 27.825979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.997749, 38.489658, 28.402811>,  <42.224651, 38.371002, 28.333374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.997749, 38.489658, 28.402811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824413, 38.806396, 28.230675>,  <42.720413, 38.996441, 28.127392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824413, 38.806396, 28.230675>,  <42.997749, 38.489658, 28.402811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824413, 38.806396, 28.230675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454641, 0.604367, 0.654250,
		0.778150, 0.087862, -0.621903,
		-0.433341, 0.791847, -0.430343,
		42.694412, 39.043949, 28.101572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442150, 38.949432, 28.151169>,  <42.997749, 38.489658, 28.402811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442150, 38.949432, 28.151169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128799, 39.196041, 28.182709>,  <42.940788, 39.344006, 28.201632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.128799, 39.196041, 28.182709>,  <43.442150, 38.949432, 28.151169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128799, 39.196041, 28.182709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613195, 0.745883, 0.260096,
		0.101543, 0.252103, -0.962358,
		-0.783378, 0.616524, 0.078849,
		42.893787, 39.380997, 28.206364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778210, 39.525734, 28.223812>,  <43.442150, 38.949432, 28.151169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778210, 39.525734, 28.223812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398781, 39.639282, 28.279854>,  <43.171124, 39.707409, 28.313478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.398781, 39.639282, 28.279854>,  <43.778210, 39.525734, 28.223812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398781, 39.639282, 28.279854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316495, 0.859332, 0.401720,
		-0.006361, 0.425403, -0.904982,
		-0.948573, 0.283867, 0.140105,
		43.114208, 39.724442, 28.321886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.618412, 40.241787, 27.810404>,  <43.778210, 39.525734, 28.223812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.618412, 40.241787, 27.810404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396904, 40.172092, 28.136097>,  <43.264000, 40.130276, 28.331512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396904, 40.172092, 28.136097>,  <43.618412, 40.241787, 27.810404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396904, 40.172092, 28.136097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264096, 0.890621, 0.370200,
		-0.789676, 0.420042, -0.447187,
		-0.553773, -0.174238, 0.814233,
		43.230770, 40.119820, 28.380367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182289, 40.684502, 27.683199>,  <43.618412, 40.241787, 27.810404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182289, 40.684502, 27.683199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214577, 40.584221, 28.069077>,  <43.233952, 40.524052, 28.300602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214577, 40.584221, 28.069077>,  <43.182289, 40.684502, 27.683199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214577, 40.584221, 28.069077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075650, 0.966600, 0.244870,
		-0.993862, 0.053212, 0.096991,
		0.080722, -0.250704, 0.964692,
		43.238792, 40.509010, 28.358484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562675, 40.999077, 28.239824>,  <43.182289, 40.684502, 27.683199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562675, 40.999077, 28.239824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930733, 40.966801, 28.393097>,  <43.151566, 40.947437, 28.485060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930733, 40.966801, 28.393097>,  <42.562675, 40.999077, 28.239824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930733, 40.966801, 28.393097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062735, 0.935527, 0.347641,
		-0.386527, -0.343918, 0.855756,
		0.920142, -0.080687, 0.383182,
		43.206776, 40.942596, 28.508051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168831, 40.798042, 27.732246>,  <42.562675, 40.999077, 28.239824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168831, 40.798042, 27.732246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363220, 40.988720, 27.439236>,  <42.479855, 41.103127, 27.263430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363220, 40.988720, 27.439236>,  <42.168831, 40.798042, 27.732246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363220, 40.988720, 27.439236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239465, 0.733454, 0.636162,
		0.840528, -0.484571, 0.242288,
		0.485973, 0.476692, -0.732526,
		42.509010, 41.131729, 27.219479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502220, 41.313080, 27.805803>,  <42.168831, 40.798042, 27.732246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502220, 41.313080, 27.805803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228149, 41.604378, 27.800362>,  <41.063705, 41.779156, 27.797096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228149, 41.604378, 27.800362>,  <41.502220, 41.313080, 27.805803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228149, 41.604378, 27.800362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566783, -0.544805, -0.618017,
		-0.457479, -0.415743, 0.786047,
		-0.685179, 0.728248, -0.013601,
		41.022594, 41.822853, 27.796280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885902, 41.008137, 27.903511>,  <41.502220, 41.313080, 27.805803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885902, 41.008137, 27.903511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855003, 41.324432, 27.660606>,  <40.836464, 41.514210, 27.514864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.855003, 41.324432, 27.660606>,  <40.885902, 41.008137, 27.903511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.855003, 41.324432, 27.660606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396389, -0.583232, -0.709024,
		-0.914827, 0.185943, 0.358492,
		-0.077246, 0.790737, -0.607263,
		40.831829, 41.561653, 27.478428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177948, 41.050438, 27.614632>,  <40.885902, 41.008137, 27.903511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177948, 41.050438, 27.614632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457993, 41.199894, 27.371243>,  <40.626019, 41.289566, 27.225210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.457993, 41.199894, 27.371243>,  <40.177948, 41.050438, 27.614632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457993, 41.199894, 27.371243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341051, -0.573684, -0.744695,
		-0.627319, 0.728889, -0.274212,
		0.700111, 0.373641, -0.608471,
		40.668026, 41.311985, 27.188702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954582, 41.406994, 26.982697>,  <40.177948, 41.050438, 27.614632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954582, 41.406994, 26.982697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298897, 41.205482, 26.953701>,  <40.505486, 41.084576, 26.936304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.298897, 41.205482, 26.953701>,  <39.954582, 41.406994, 26.982697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298897, 41.205482, 26.953701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362113, -0.506087, -0.782784,
		0.357667, 0.700056, -0.618057,
		0.860783, -0.503783, -0.072489,
		40.557133, 41.054348, 26.931953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028477, 41.361038, 26.305573>,  <39.954582, 41.406994, 26.982697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028477, 41.361038, 26.305573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241795, 41.066708, 26.472500>,  <40.369785, 40.890110, 26.572657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241795, 41.066708, 26.472500>,  <40.028477, 41.361038, 26.305573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241795, 41.066708, 26.472500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182314, -0.581706, -0.792704,
		0.826050, 0.346663, -0.444373,
		0.533295, -0.735828, 0.417317,
		40.401783, 40.845959, 26.597694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409943, 41.045216, 25.768867>,  <40.028477, 41.361038, 26.305573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409943, 41.045216, 25.768867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348866, 40.733807, 26.012371>,  <40.312218, 40.546963, 26.158474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348866, 40.733807, 26.012371>,  <40.409943, 41.045216, 25.768867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348866, 40.733807, 26.012371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228649, -0.571441, -0.788146,
		0.961459, -0.259538, -0.090752,
		-0.152694, -0.778521, 0.608761,
		40.303059, 40.500252, 26.195000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740257, 40.451054, 25.439238>,  <40.409943, 41.045216, 25.768867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740257, 40.451054, 25.439238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485184, 40.282509, 25.697174>,  <40.332142, 40.181381, 25.851936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.485184, 40.282509, 25.697174>,  <40.740257, 40.451054, 25.439238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485184, 40.282509, 25.697174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276611, -0.656033, -0.702216,
		0.718924, -0.626158, 0.301785,
		-0.637679, -0.421363, 0.644840,
		40.293880, 40.156101, 25.890627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838341, 39.771774, 25.460844>,  <40.740257, 40.451054, 25.439238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838341, 39.771774, 25.460844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456551, 39.815483, 25.571861>,  <40.227474, 39.841709, 25.638472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456551, 39.815483, 25.571861>,  <40.838341, 39.771774, 25.460844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456551, 39.815483, 25.571861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264031, -0.742401, -0.615735,
		0.138768, -0.660986, 0.737456,
		-0.954480, 0.109267, 0.277542,
		40.170208, 39.848263, 25.655125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580448, 39.120937, 25.644440>,  <40.838341, 39.771774, 25.460844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580448, 39.120937, 25.644440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252312, 39.333755, 25.560566>,  <40.055431, 39.461445, 25.510241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252312, 39.333755, 25.560566>,  <40.580448, 39.120937, 25.644440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252312, 39.333755, 25.560566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320231, -0.731158, -0.602379,
		-0.473807, -0.427009, 0.770176,
		-0.820341, 0.532045, -0.209686,
		40.006210, 39.493370, 25.497660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025665, 38.640347, 25.763279>,  <40.580448, 39.120937, 25.644440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025665, 38.640347, 25.763279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871151, 38.922588, 25.525658>,  <39.778442, 39.091934, 25.383085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.871151, 38.922588, 25.525658>,  <40.025665, 38.640347, 25.763279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871151, 38.922588, 25.525658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375485, -0.708559, -0.597457,
		-0.842494, -0.007729, 0.538651,
		-0.386283, 0.705609, -0.594055,
		39.755264, 39.134270, 25.347441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393330, 38.316978, 25.558931>,  <40.025665, 38.640347, 25.763279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393330, 38.316978, 25.558931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429039, 38.619549, 25.299747>,  <39.450466, 38.801090, 25.144238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429039, 38.619549, 25.299747>,  <39.393330, 38.316978, 25.558931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429039, 38.619549, 25.299747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168992, -0.629623, -0.758299,
		-0.981566, 0.177198, 0.071619,
		0.089276, 0.756423, -0.647961,
		39.455822, 38.846478, 25.105360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876358, 38.250286, 25.168493>,  <39.393330, 38.316978, 25.558931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876358, 38.250286, 25.168493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109982, 38.475906, 24.935005>,  <39.250156, 38.611279, 24.794912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109982, 38.475906, 24.935005>,  <38.876358, 38.250286, 25.168493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109982, 38.475906, 24.935005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337618, -0.485156, -0.806621,
		-0.738170, 0.668185, -0.092924,
		0.584054, 0.564051, -0.583718,
		39.285198, 38.645123, 24.759890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396702, 38.610470, 24.627558>,  <38.876358, 38.250286, 25.168493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396702, 38.610470, 24.627558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773136, 38.570282, 24.498394>,  <38.998997, 38.546169, 24.420897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773136, 38.570282, 24.498394>,  <38.396702, 38.610470, 24.627558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773136, 38.570282, 24.498394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329430, -0.488164, -0.808191,
		-0.076431, 0.866949, -0.492501,
		0.941081, -0.100474, -0.322910,
		39.055462, 38.540138, 24.401522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332100, 38.769806, 23.926331>,  <38.396702, 38.610470, 24.627558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332100, 38.769806, 23.926331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693722, 38.601448, 23.956104>,  <38.910694, 38.500435, 23.973969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693722, 38.601448, 23.956104>,  <38.332100, 38.769806, 23.926331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693722, 38.601448, 23.956104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120776, -0.418600, -0.900104,
		0.410008, 0.804749, -0.429269,
		0.904050, -0.420895, 0.074434,
		38.964935, 38.475178, 23.978436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655933, 38.894611, 23.256372>,  <38.332100, 38.769806, 23.926331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655933, 38.894611, 23.256372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868027, 38.596096, 23.417316>,  <38.995285, 38.416985, 23.513884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868027, 38.596096, 23.417316>,  <38.655933, 38.894611, 23.256372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868027, 38.596096, 23.417316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247198, -0.590027, -0.768610,
		0.811012, 0.308083, -0.497337,
		0.530238, -0.746293, 0.402362,
		39.027100, 38.372208, 23.538025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096684, 38.581997, 22.703197>,  <38.655933, 38.894611, 23.256372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096684, 38.581997, 22.703197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073540, 38.291885, 22.977604>,  <39.059654, 38.117817, 23.142248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073540, 38.291885, 22.977604>,  <39.096684, 38.581997, 22.703197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073540, 38.291885, 22.977604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079634, -0.681627, -0.727354,
		0.995144, -0.096713, -0.018321,
		-0.057857, -0.725280, 0.686018,
		39.056183, 38.074303, 23.183409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573280, 38.127071, 22.512102>,  <39.096684, 38.581997, 22.703197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573280, 38.127071, 22.512102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312229, 37.929386, 22.741825>,  <39.155598, 37.810776, 22.879660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312229, 37.929386, 22.741825>,  <39.573280, 38.127071, 22.512102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312229, 37.929386, 22.741825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058909, -0.788787, -0.611837,
		0.755384, -0.365471, 0.543899,
		-0.652629, -0.494213, 0.574307,
		39.116440, 37.781124, 22.914118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942234, 37.521275, 22.639254>,  <39.573280, 38.127071, 22.512102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942234, 37.521275, 22.639254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553802, 37.448399, 22.700981>,  <39.320744, 37.404675, 22.738018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553802, 37.448399, 22.700981>,  <39.942234, 37.521275, 22.639254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553802, 37.448399, 22.700981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053932, -0.797009, -0.601555,
		0.232591, -0.575834, 0.783784,
		-0.971078, -0.182187, 0.154321,
		39.262478, 37.393742, 22.747278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844482, 36.756721, 22.746607>,  <39.942234, 37.521275, 22.639254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844482, 36.756721, 22.746607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468273, 36.869644, 22.671001>,  <39.242550, 36.937397, 22.625639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468273, 36.869644, 22.671001>,  <39.844482, 36.756721, 22.746607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468273, 36.869644, 22.671001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127460, -0.808917, -0.573941,
		-0.314920, -0.515712, 0.796785,
		-0.940521, 0.282304, -0.189012,
		39.186115, 36.954334, 22.614298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410667, 36.178150, 22.795826>,  <39.844482, 36.756721, 22.746607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410667, 36.178150, 22.795826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173134, 36.423416, 22.587444>,  <39.030613, 36.570576, 22.462416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173134, 36.423416, 22.587444>,  <39.410667, 36.178150, 22.795826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173134, 36.423416, 22.587444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241497, -0.753456, -0.611542,
		-0.767499, -0.237337, 0.595497,
		-0.593822, 0.613169, -0.520960,
		38.994984, 36.607365, 22.431158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815262, 35.732700, 22.618917>,  <39.410667, 36.178150, 22.795826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815262, 35.732700, 22.618917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807964, 36.040127, 22.363113>,  <38.803585, 36.224583, 22.209631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807964, 36.040127, 22.363113>,  <38.815262, 35.732700, 22.618917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807964, 36.040127, 22.363113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419009, -0.586617, -0.693046,
		-0.907799, 0.255314, 0.332741,
		-0.018247, 0.768567, -0.639509,
		38.802490, 36.270699, 22.171261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121162, 35.676243, 22.304134>,  <38.815262, 35.732700, 22.618917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121162, 35.676243, 22.304134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358204, 35.886993, 22.060425>,  <38.500431, 36.013443, 21.914198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358204, 35.886993, 22.060425>,  <38.121162, 35.676243, 22.304134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358204, 35.886993, 22.060425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321365, -0.538944, -0.778629,
		-0.738609, 0.657220, -0.150062,
		0.592606, 0.526878, -0.609276,
		38.535984, 36.045055, 21.877642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771229, 35.746208, 21.706991>,  <38.121162, 35.676243, 22.304134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771229, 35.746208, 21.706991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146816, 35.827248, 21.595787>,  <38.372169, 35.875870, 21.529064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146816, 35.827248, 21.595787>,  <37.771229, 35.746208, 21.706991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146816, 35.827248, 21.595787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147426, -0.493200, -0.857333,
		-0.310809, 0.845995, -0.433232,
		0.938969, 0.202597, -0.278012,
		38.428509, 35.888027, 21.512383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716648, 36.051315, 21.071758>,  <37.771229, 35.746208, 21.706991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716648, 36.051315, 21.071758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094833, 35.921177, 21.078140>,  <38.321743, 35.843094, 21.081970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094833, 35.921177, 21.078140>,  <37.716648, 36.051315, 21.071758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094833, 35.921177, 21.078140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160884, -0.508990, -0.845604,
		0.283238, 0.796917, -0.533573,
		0.945459, -0.325350, 0.015954,
		38.378471, 35.823570, 21.082926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922798, 36.081547, 20.401188>,  <37.716648, 36.051315, 21.071758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922798, 36.081547, 20.401188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178543, 35.831169, 20.579811>,  <38.331989, 35.680943, 20.686985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178543, 35.831169, 20.579811>,  <37.922798, 36.081547, 20.401188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178543, 35.831169, 20.579811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198976, -0.695674, -0.690251,
		0.742717, 0.352464, -0.569334,
		0.639359, -0.625944, 0.446557,
		38.370350, 35.643387, 20.713778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338287, 35.764053, 19.841242>,  <37.922798, 36.081547, 20.401188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338287, 35.764053, 19.841242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326767, 35.518456, 20.156757>,  <38.319855, 35.371098, 20.346066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326767, 35.518456, 20.156757>,  <38.338287, 35.764053, 19.841242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326767, 35.518456, 20.156757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049508, -0.787270, -0.614618,
		0.998358, -0.056755, -0.007720,
		-0.028805, -0.613991, 0.788787,
		38.318127, 35.334259, 20.393394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845440, 35.237995, 19.505354>,  <38.338287, 35.764053, 19.841242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845440, 35.237995, 19.505354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615860, 35.099575, 19.802223>,  <37.478111, 35.016521, 19.980345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615860, 35.099575, 19.802223>,  <37.845440, 35.237995, 19.505354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615860, 35.099575, 19.802223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694614, 0.685736, -0.217436,
		-0.433692, -0.640323, -0.633954,
		-0.573954, -0.346053, 0.742175,
		37.443672, 34.995758, 20.024876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136681, 35.074253, 19.261953>,  <37.845440, 35.237995, 19.505354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136681, 35.074253, 19.261953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139202, 35.201256, 19.641247>,  <37.140717, 35.277458, 19.868824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139202, 35.201256, 19.641247>,  <37.136681, 35.074253, 19.261953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139202, 35.201256, 19.641247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653439, 0.719106, -0.236439,
		-0.756953, -0.618123, 0.212006,
		0.006307, 0.317506, 0.948235,
		37.141094, 35.296509, 19.925718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503078, 35.319569, 19.409781>,  <37.136681, 35.074253, 19.261953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503078, 35.319569, 19.409781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722626, 35.508804, 19.685440>,  <36.854355, 35.622345, 19.850836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.722626, 35.508804, 19.685440>,  <36.503078, 35.319569, 19.409781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722626, 35.508804, 19.685440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580281, 0.809060, -0.093248,
		-0.601678, -0.348720, 0.718595,
		0.548869, 0.473092, 0.689149,
		36.887287, 35.650730, 19.892185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745464, 35.617565, 19.691210>,  <36.503078, 35.319569, 19.409781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745464, 35.617565, 19.691210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086163, 35.798458, 19.585373>,  <36.290581, 35.906994, 19.521870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086163, 35.798458, 19.585373>,  <35.745464, 35.617565, 19.691210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086163, 35.798458, 19.585373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506149, -0.840706, 0.192421,
		-0.135425, -0.297818, -0.944968,
		0.851747, 0.452236, -0.264593,
		36.341686, 35.934128, 19.505995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498283, 35.265087, 19.113949>,  <35.745464, 35.617565, 19.691210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498283, 35.265087, 19.113949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256805, 35.351093, 19.421017>,  <35.111919, 35.402699, 19.605257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256805, 35.351093, 19.421017>,  <35.498283, 35.265087, 19.113949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256805, 35.351093, 19.421017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532375, -0.608032, 0.588960,
		0.593405, 0.764242, 0.252598,
		-0.603696, 0.215015, 0.767672,
		35.075695, 35.415596, 19.651318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803307, 35.520088, 18.971317>,  <35.498283, 35.265087, 19.113949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803307, 35.520088, 18.971317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077534, 35.328880, 18.751682>,  <35.242069, 35.214153, 18.619902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077534, 35.328880, 18.751682>,  <34.803307, 35.520088, 18.971317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077534, 35.328880, 18.751682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727930, -0.438760, -0.526885,
		0.010947, 0.760909, -0.648766,
		0.685564, -0.478024, -0.549086,
		35.283203, 35.185474, 18.586956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432339, 35.657829, 19.703133>,  <34.803307, 35.520088, 18.971317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432339, 35.657829, 19.703133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293293, 35.560303, 20.065285>,  <34.209866, 35.501785, 20.282576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293293, 35.560303, 20.065285>,  <34.432339, 35.657829, 19.703133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293293, 35.560303, 20.065285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120104, -0.969223, -0.214899,
		0.929913, 0.034037, 0.366201,
		-0.347616, -0.243819, 0.905381,
		34.189007, 35.487156, 20.336899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762447, 34.984940, 19.835148>,  <34.432339, 35.657829, 19.703133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762447, 34.984940, 19.835148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470070, 35.015564, 20.106400>,  <34.294643, 35.033939, 20.269150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470070, 35.015564, 20.106400>,  <34.762447, 34.984940, 19.835148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470070, 35.015564, 20.106400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106484, -0.994311, -0.002525,
		0.674077, -0.074055, 0.734939,
		-0.730945, 0.076557, 0.678128,
		34.250786, 35.038532, 20.309837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963345, 34.624920, 20.436636>,  <34.762447, 34.984940, 19.835148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963345, 34.624920, 20.436636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565704, 34.633991, 20.394199>,  <34.327122, 34.639435, 20.368738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565704, 34.633991, 20.394199>,  <34.963345, 34.624920, 20.436636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565704, 34.633991, 20.394199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004304, -0.968886, -0.247470,
		-0.108403, -0.246466, 0.963070,
		-0.994098, 0.022682, -0.106090,
		34.267475, 34.640797, 20.362371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727707, 33.945377, 20.735220>,  <34.963345, 34.624920, 20.436636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727707, 33.945377, 20.735220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403072, 34.082363, 20.545887>,  <34.208290, 34.164555, 20.432287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403072, 34.082363, 20.545887>,  <34.727707, 33.945377, 20.735220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403072, 34.082363, 20.545887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259078, -0.937132, -0.233801,
		-0.523640, -0.067122, 0.849291,
		-0.811591, 0.342460, -0.473330,
		34.159595, 34.185101, 20.403889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169937, 33.647427, 21.060780>,  <34.727707, 33.945377, 20.735220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169937, 33.647427, 21.060780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059818, 33.748569, 20.689777>,  <33.993748, 33.809258, 20.467176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059818, 33.748569, 20.689777>,  <34.169937, 33.647427, 21.060780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059818, 33.748569, 20.689777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300134, -0.939173, -0.166957,
		-0.913307, 0.232413, 0.334447,
		-0.275301, 0.252862, -0.927508,
		33.977226, 33.824429, 20.411526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597733, 33.310287, 20.918293>,  <34.169937, 33.647427, 21.060780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597733, 33.310287, 20.918293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675922, 33.408409, 20.538479>,  <33.722836, 33.467281, 20.310591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.675922, 33.408409, 20.538479>,  <33.597733, 33.310287, 20.918293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675922, 33.408409, 20.538479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295180, -0.908598, -0.295498,
		-0.935231, 0.338046, -0.105200,
		0.195477, 0.245306, -0.949534,
		33.734566, 33.482002, 20.253618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935219, 33.220375, 20.501673>,  <33.597733, 33.310287, 20.918293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935219, 33.220375, 20.501673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260754, 33.191082, 20.271088>,  <33.456074, 33.173508, 20.132736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260754, 33.191082, 20.271088>,  <32.935219, 33.220375, 20.501673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260754, 33.191082, 20.271088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280855, -0.918033, -0.279886,
		-0.508715, 0.389684, -0.767695,
		0.813836, -0.073229, -0.576462,
		33.504906, 33.169113, 20.098148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710117, 33.076859, 19.851852>,  <32.935219, 33.220375, 20.501673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710117, 33.076859, 19.851852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081821, 32.931816, 19.880131>,  <33.304844, 32.844791, 19.897099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081821, 32.931816, 19.880131>,  <32.710117, 33.076859, 19.851852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081821, 32.931816, 19.880131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311834, -0.872490, -0.376192,
		0.198093, 0.327533, -0.923841,
		0.929257, -0.362606, 0.070698,
		33.360600, 32.823036, 19.901340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798977, 32.739597, 19.203264>,  <32.710117, 33.076859, 19.851852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798977, 32.739597, 19.203264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117748, 32.615002, 19.410294>,  <33.309010, 32.540245, 19.534512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117748, 32.615002, 19.410294>,  <32.798977, 32.739597, 19.203264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117748, 32.615002, 19.410294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018498, -0.843816, -0.536314,
		0.603796, 0.436975, -0.666695,
		0.796924, -0.311492, 0.517575,
		33.356827, 32.521553, 19.565567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216434, 32.401363, 18.712666>,  <32.798977, 32.739597, 19.203264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216434, 32.401363, 18.712666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363747, 32.262627, 19.057705>,  <33.452133, 32.179386, 19.264729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363747, 32.262627, 19.057705>,  <33.216434, 32.401363, 18.712666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363747, 32.262627, 19.057705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088867, -0.910427, -0.404010,
		0.925458, 0.225445, -0.304469,
		0.368279, -0.346837, 0.862597,
		33.474232, 32.158577, 19.316484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565941, 31.877949, 18.493189>,  <33.216434, 32.401363, 18.712666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565941, 31.877949, 18.493189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548065, 31.785412, 18.881927>,  <33.537342, 31.729891, 19.115171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548065, 31.785412, 18.881927>,  <33.565941, 31.877949, 18.493189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548065, 31.785412, 18.881927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086658, -0.970049, -0.226928,
		0.995235, 0.074078, 0.063395,
		-0.044686, -0.231340, 0.971846,
		33.534660, 31.716009, 19.173481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202126, 31.440300, 18.676725>,  <33.565941, 31.877949, 18.493189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202126, 31.440300, 18.676725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920853, 31.378971, 18.954437>,  <33.752087, 31.342173, 19.121063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920853, 31.378971, 18.954437>,  <34.202126, 31.440300, 18.676725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920853, 31.378971, 18.954437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117365, -0.988108, -0.099341,
		0.701252, 0.011629, 0.712818,
		-0.703186, -0.153323, 0.694278,
		33.709896, 31.332973, 19.162720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499748, 31.085739, 19.205879>,  <34.202126, 31.440300, 18.676725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499748, 31.085739, 19.205879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111103, 30.994228, 19.229954>,  <33.877914, 30.939322, 19.244398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111103, 30.994228, 19.229954>,  <34.499748, 31.085739, 19.205879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111103, 30.994228, 19.229954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234334, -0.965625, 0.112496,
		0.032380, 0.123406, 0.991828,
		-0.971617, -0.228776, 0.060185,
		33.819618, 30.925596, 19.248009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474792, 30.516666, 19.696852>,  <34.499748, 31.085739, 19.205879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474792, 30.516666, 19.696852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122410, 30.487236, 19.509872>,  <33.910980, 30.469578, 19.397686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122410, 30.487236, 19.509872>,  <34.474792, 30.516666, 19.696852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122410, 30.487236, 19.509872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180986, -0.965119, -0.189178,
		-0.437222, -0.251259, 0.863542,
		-0.880954, -0.073576, -0.467446,
		33.858124, 30.465162, 19.369638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130138, 29.924219, 19.986113>,  <34.474792, 30.516666, 19.696852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130138, 29.924219, 19.986113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953484, 29.984882, 19.632401>,  <33.847492, 30.021280, 19.420174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953484, 29.984882, 19.632401>,  <34.130138, 29.924219, 19.986113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953484, 29.984882, 19.632401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179455, -0.980625, -0.078557,
		-0.879063, 0.123995, 0.460298,
		-0.441639, 0.151659, -0.884282,
		33.820992, 30.030380, 19.367115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527233, 29.557915, 20.015081>,  <34.130138, 29.924219, 19.986113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527233, 29.557915, 20.015081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615871, 29.599583, 19.627258>,  <33.669052, 29.624584, 19.394564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615871, 29.599583, 19.627258>,  <33.527233, 29.557915, 20.015081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615871, 29.599583, 19.627258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359079, -0.915696, -0.180451,
		-0.906619, 0.388135, -0.165507,
		0.221594, 0.104170, -0.969559,
		33.682350, 29.630835, 19.336391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041645, 29.141380, 19.646236>,  <33.527233, 29.557915, 20.015081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041645, 29.141380, 19.646236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325008, 29.192455, 19.368572>,  <33.495026, 29.223101, 19.201973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325008, 29.192455, 19.368572>,  <33.041645, 29.141380, 19.646236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325008, 29.192455, 19.368572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183871, -0.916152, -0.356169,
		-0.681435, 0.379948, -0.625529,
		0.708405, 0.127689, -0.694160,
		33.537529, 29.230762, 19.160324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801247, 28.823772, 19.128111>,  <33.041645, 29.141380, 19.646236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801247, 28.823772, 19.128111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183331, 28.846252, 19.011898>,  <33.412582, 28.859741, 18.942169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.183331, 28.846252, 19.011898>,  <32.801247, 28.823772, 19.128111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183331, 28.846252, 19.011898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078162, -0.899013, -0.430890,
		-0.285410, 0.434300, -0.854356,
		0.955213, 0.056202, -0.290533,
		33.469894, 28.863113, 18.924738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816029, 28.639280, 18.423103>,  <32.801247, 28.823772, 19.128111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816029, 28.639280, 18.423103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176586, 28.583202, 18.586975>,  <33.392921, 28.549557, 18.685299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176586, 28.583202, 18.586975>,  <32.816029, 28.639280, 18.423103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176586, 28.583202, 18.586975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021900, -0.959685, -0.280222,
		0.432448, 0.243618, -0.868124,
		0.901393, -0.140194, 0.409679,
		33.447002, 28.541143, 18.709879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253189, 28.139774, 17.925924>,  <32.816029, 28.639280, 18.423103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253189, 28.139774, 17.925924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439907, 28.120331, 18.279137>,  <33.551937, 28.108665, 18.491064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439907, 28.120331, 18.279137>,  <33.253189, 28.139774, 17.925924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439907, 28.120331, 18.279137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153662, -0.978842, -0.135113,
		0.870914, 0.198758, -0.449449,
		0.466794, -0.048608, 0.883029,
		33.579945, 28.105749, 18.544044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749397, 27.546520, 17.876348>,  <33.253189, 28.139774, 17.925924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749397, 27.546520, 17.876348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763821, 27.624241, 18.268459>,  <33.772472, 27.670874, 18.503727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763821, 27.624241, 18.268459>,  <33.749397, 27.546520, 17.876348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763821, 27.624241, 18.268459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065062, -0.978380, 0.196316,
		0.997230, -0.070857, -0.022634,
		0.036055, 0.194300, 0.980279,
		33.774635, 27.682531, 18.562544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322594, 27.173532, 18.118086>,  <33.749397, 27.546520, 17.876348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322594, 27.173532, 18.118086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083733, 27.240993, 18.431763>,  <33.940414, 27.281471, 18.619968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083733, 27.240993, 18.431763>,  <34.322594, 27.173532, 18.118086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083733, 27.240993, 18.431763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144819, -0.984249, 0.101401,
		0.788944, -0.053015, 0.612174,
		-0.597156, 0.168654, 0.784194,
		33.904587, 27.291590, 18.667021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582783, 26.778038, 18.688879>,  <34.322594, 27.173532, 18.118086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582783, 26.778038, 18.688879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200832, 26.859257, 18.775589>,  <33.971664, 26.907988, 18.827616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.200832, 26.859257, 18.775589>,  <34.582783, 26.778038, 18.688879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200832, 26.859257, 18.775589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119516, -0.930810, 0.345410,
		0.271912, 0.303914, 0.913072,
		-0.954872, 0.203048, 0.216776,
		33.914371, 26.920172, 18.840622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462788, 26.350517, 19.360735>,  <34.582783, 26.778038, 18.688879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462788, 26.350517, 19.360735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110657, 26.422047, 19.184990>,  <33.899376, 26.464964, 19.079542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110657, 26.422047, 19.184990>,  <34.462788, 26.350517, 19.360735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110657, 26.422047, 19.184990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242651, -0.965629, 0.093177,
		-0.407600, 0.188639, 0.893464,
		-0.880331, 0.178821, -0.439364,
		33.846558, 26.475693, 19.053181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911381, 26.021105, 19.720938>,  <34.462788, 26.350517, 19.360735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911381, 26.021105, 19.720938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735489, 26.085960, 19.367588>,  <33.629955, 26.124874, 19.155579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735489, 26.085960, 19.367588>,  <33.911381, 26.021105, 19.720938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735489, 26.085960, 19.367588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344578, -0.938758, -0.000780,
		-0.829402, 0.304049, 0.468665,
		-0.439726, 0.162139, -0.883376,
		33.603573, 26.134602, 19.102575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221439, 25.872564, 19.866276>,  <33.911381, 26.021105, 19.720938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221439, 25.872564, 19.866276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264530, 25.842754, 19.469723>,  <33.290386, 25.824869, 19.231791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264530, 25.842754, 19.469723>,  <33.221439, 25.872564, 19.866276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264530, 25.842754, 19.469723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365633, -0.930269, 0.030197,
		-0.924503, 0.359229, -0.127467,
		0.107731, -0.074523, -0.991383,
		33.296848, 25.820396, 19.172308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920727, 25.295092, 19.728392>,  <33.221439, 25.872564, 19.866276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920727, 25.295092, 19.728392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110008, 25.318554, 19.376793>,  <33.223579, 25.332632, 19.165834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110008, 25.318554, 19.376793>,  <32.920727, 25.295092, 19.728392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110008, 25.318554, 19.376793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136956, -0.980751, -0.139177,
		-0.870241, 0.186243, -0.456063,
		0.473205, 0.058657, -0.878997,
		33.251968, 25.336151, 19.113094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542919, 24.910784, 19.156027>,  <32.920727, 25.295092, 19.728392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542919, 24.910784, 19.156027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922676, 24.935642, 19.032875>,  <33.150532, 24.950558, 18.958984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922676, 24.935642, 19.032875>,  <32.542919, 24.910784, 19.156027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922676, 24.935642, 19.032875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023318, -0.963578, -0.266409,
		-0.313220, 0.260106, -0.913366,
		0.949394, 0.062147, -0.307877,
		33.207493, 24.954287, 18.940512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481030, 24.645008, 18.534969>,  <32.542919, 24.910784, 19.156027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481030, 24.645008, 18.534969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855450, 24.607964, 18.670757>,  <33.080101, 24.585737, 18.752230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855450, 24.607964, 18.670757>,  <32.481030, 24.645008, 18.534969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855450, 24.607964, 18.670757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011377, -0.972203, -0.233862,
		0.351692, 0.215044, -0.911081,
		0.936046, -0.092613, 0.339470,
		33.136265, 24.580179, 18.772598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939152, 24.256054, 18.026758>,  <32.481030, 24.645008, 18.534969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939152, 24.256054, 18.026758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125137, 24.222496, 18.379295>,  <33.236729, 24.202360, 18.590818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125137, 24.222496, 18.379295>,  <32.939152, 24.256054, 18.026758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125137, 24.222496, 18.379295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086613, -0.986414, -0.139592,
		0.881081, 0.141242, -0.451383,
		0.464967, -0.083896, 0.881344,
		33.264626, 24.197327, 18.643698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436325, 23.722755, 17.825930>,  <32.939152, 24.256054, 18.026758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436325, 23.722755, 17.825930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431873, 23.743397, 18.225372>,  <33.429203, 23.755781, 18.465038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431873, 23.743397, 18.225372>,  <33.436325, 23.722755, 17.825930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431873, 23.743397, 18.225372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097327, -0.993870, 0.052445,
		0.995190, 0.097776, 0.006041,
		-0.011131, 0.051605, 0.998606,
		33.428535, 23.758879, 18.524954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996464, 23.432365, 17.986324>,  <33.436325, 23.722755, 17.825930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996464, 23.432365, 17.986324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760551, 23.388748, 18.306393>,  <33.619003, 23.362577, 18.498434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760551, 23.388748, 18.306393>,  <33.996464, 23.432365, 17.986324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760551, 23.388748, 18.306393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167452, -0.985820, -0.010919,
		0.790013, 0.127550, 0.599675,
		-0.589779, -0.109043, 0.800169,
		33.583618, 23.356035, 18.546444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267277, 22.884558, 18.398933>,  <33.996464, 23.432365, 17.986324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267277, 22.884558, 18.398933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896290, 22.902519, 18.547409>,  <33.673698, 22.913296, 18.636496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896290, 22.902519, 18.547409>,  <34.267277, 22.884558, 18.398933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896290, 22.902519, 18.547409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039340, -0.998971, 0.022551,
		0.371821, 0.006313, 0.928283,
		-0.927471, 0.044903, 0.371190,
		33.618050, 22.915991, 18.658766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319992, 22.389423, 18.875826>,  <34.267277, 22.884558, 18.398933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319992, 22.389423, 18.875826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929817, 22.434834, 18.800308>,  <33.695713, 22.462080, 18.754997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929817, 22.434834, 18.800308>,  <34.319992, 22.389423, 18.875826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929817, 22.434834, 18.800308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120053, -0.992490, 0.023463,
		-0.184713, 0.045552, 0.981736,
		-0.975432, 0.113527, -0.188794,
		33.637188, 22.468891, 18.743670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944534, 22.032486, 19.427038>,  <34.319992, 22.389423, 18.875826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944534, 22.032486, 19.427038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698074, 22.047615, 19.112350>,  <33.550198, 22.056692, 18.923538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698074, 22.047615, 19.112350>,  <33.944534, 22.032486, 19.427038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698074, 22.047615, 19.112350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058115, -0.998307, -0.002482,
		-0.785479, 0.044190, 0.617309,
		-0.616154, 0.037825, -0.786718,
		33.513229, 22.058962, 18.876335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503387, 21.520344, 19.461815>,  <33.944534, 22.032486, 19.427038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503387, 21.520344, 19.461815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426453, 21.584175, 19.074509>,  <33.380291, 21.622475, 18.842125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426453, 21.584175, 19.074509>,  <33.503387, 21.520344, 19.461815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426453, 21.584175, 19.074509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163129, -0.978160, -0.128807,
		-0.967676, 0.133179, 0.214167,
		-0.192335, 0.159580, -0.968267,
		33.368752, 21.632050, 18.784029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885300, 21.251915, 19.328024>,  <33.503387, 21.520344, 19.461815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885300, 21.251915, 19.328024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066830, 21.243622, 18.971684>,  <33.175747, 21.238646, 18.757879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066830, 21.243622, 18.971684>,  <32.885300, 21.251915, 19.328024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066830, 21.243622, 18.971684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199703, -0.976666, -0.079001,
		-0.868427, 0.213759, -0.447372,
		0.453821, -0.020735, -0.890852,
		33.202976, 21.237402, 18.704428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567352, 20.693951, 19.022308>,  <32.885300, 21.251915, 19.328024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567352, 20.693951, 19.022308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888073, 20.760986, 18.792866>,  <33.080505, 20.801207, 18.655199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888073, 20.760986, 18.792866>,  <32.567352, 20.693951, 19.022308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888073, 20.760986, 18.792866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203664, -0.979040, -0.001354,
		-0.561813, -0.115738, -0.819128,
		0.801802, 0.167588, -0.573609,
		33.128613, 20.811262, 18.620783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516586, 20.189144, 18.491451>,  <32.567352, 20.693951, 19.022308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516586, 20.189144, 18.491451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893589, 20.317364, 18.529243>,  <33.119793, 20.394295, 18.551918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893589, 20.317364, 18.529243>,  <32.516586, 20.189144, 18.491451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893589, 20.317364, 18.529243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314118, -0.946265, 0.076888,
		0.114049, -0.042790, -0.992553,
		0.942509, 0.320548, 0.094480,
		33.176342, 20.413528, 18.557587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835564, 19.728506, 18.152628>,  <32.516586, 20.189144, 18.491451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835564, 19.728506, 18.152628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140923, 19.909290, 18.337219>,  <33.324139, 20.017761, 18.447973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.140923, 19.909290, 18.337219>,  <32.835564, 19.728506, 18.152628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140923, 19.909290, 18.337219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477710, -0.875913, 0.067597,
		0.434765, 0.168849, -0.884573,
		0.763395, 0.451958, 0.461477,
		33.369942, 20.044878, 18.475662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431915, 19.501272, 17.759022>,  <32.835564, 19.728506, 18.152628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431915, 19.501272, 17.759022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538048, 19.611202, 18.128685>,  <33.601727, 19.677160, 18.350483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538048, 19.611202, 18.128685>,  <33.431915, 19.501272, 17.759022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538048, 19.611202, 18.128685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616837, -0.785070, 0.056369,
		0.741022, 0.555099, -0.377825,
		0.265329, 0.274827, 0.924160,
		33.617645, 19.693651, 18.405933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141888, 19.476456, 17.863192>,  <33.431915, 19.501272, 17.759022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141888, 19.476456, 17.863192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959496, 19.417835, 18.214329>,  <33.850060, 19.382664, 18.425011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959496, 19.417835, 18.214329>,  <34.141888, 19.476456, 17.863192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959496, 19.417835, 18.214329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498367, -0.859249, 0.115422,
		0.737370, 0.490117, 0.464834,
		-0.455979, -0.146549, 0.877842,
		33.822701, 19.373871, 18.477682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669621, 19.199741, 18.322124>,  <34.141888, 19.476456, 17.863192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669621, 19.199741, 18.322124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303135, 19.107403, 18.453125>,  <34.083244, 19.052000, 18.531725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303135, 19.107403, 18.453125>,  <34.669621, 19.199741, 18.322124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303135, 19.107403, 18.453125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278285, -0.954676, 0.105603,
		0.288278, 0.187894, 0.938931,
		-0.916217, -0.230847, 0.327500,
		34.028271, 19.038149, 18.551374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682060, 18.709854, 18.930386>,  <34.669621, 19.199741, 18.322124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682060, 18.709854, 18.930386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328808, 18.666794, 18.747746>,  <34.116856, 18.640957, 18.638161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328808, 18.666794, 18.747746>,  <34.682060, 18.709854, 18.930386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328808, 18.666794, 18.747746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079292, -0.993564, 0.080888,
		-0.462371, 0.035230, 0.885986,
		-0.883134, -0.107652, -0.456602,
		34.063869, 18.634499, 18.610765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368439, 18.118383, 19.290815>,  <34.682060, 18.709854, 18.930386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368439, 18.118383, 19.290815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222347, 18.197773, 18.927010>,  <34.134693, 18.245407, 18.708727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.222347, 18.197773, 18.927010>,  <34.368439, 18.118383, 19.290815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222347, 18.197773, 18.927010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224259, -0.966993, -0.120965,
		-0.903503, 0.159788, 0.397681,
		-0.365226, 0.198476, -0.909515,
		34.112782, 18.257317, 18.654156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598171, 18.121059, 19.220329>,  <34.368439, 18.118383, 19.290815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598171, 18.121059, 19.220329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819996, 18.006641, 18.907757>,  <33.953091, 17.937990, 18.720213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819996, 18.006641, 18.907757>,  <33.598171, 18.121059, 19.220329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819996, 18.006641, 18.907757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370055, -0.925872, 0.076296,
		-0.745330, 0.246862, -0.619308,
		0.554565, -0.286044, -0.781433,
		33.986366, 17.920828, 18.673326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226505, 17.732718, 18.779762>,  <33.598171, 18.121059, 19.220329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226505, 17.732718, 18.779762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605827, 17.645775, 18.687260>,  <33.833420, 17.593609, 18.631758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605827, 17.645775, 18.687260>,  <33.226505, 17.732718, 18.779762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605827, 17.645775, 18.687260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195987, -0.974193, 0.111967,
		-0.249626, -0.060856, -0.966428,
		0.948302, -0.217357, -0.231257,
		33.890316, 17.580568, 18.617882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843342, 17.453627, 19.305653>,  <33.226505, 17.732718, 18.779762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843342, 17.453627, 19.305653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656982, 17.418774, 19.657867>,  <32.545166, 17.397861, 19.869196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656982, 17.418774, 19.657867>,  <32.843342, 17.453627, 19.305653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656982, 17.418774, 19.657867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039902, 0.996196, 0.077464,
		-0.883936, 0.000956, -0.467606,
		-0.465902, -0.087132, 0.880536,
		32.517212, 17.392633, 19.922028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238613, 17.847527, 19.292711>,  <32.843342, 17.453627, 19.305653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238613, 17.847527, 19.292711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425102, 17.838486, 19.646461>,  <32.536995, 17.833061, 19.858711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425102, 17.838486, 19.646461>,  <32.238613, 17.847527, 19.292711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425102, 17.838486, 19.646461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217239, 0.971990, -0.089682,
		-0.857579, 0.233934, 0.458077,
		0.466225, -0.022603, 0.884377,
		32.564968, 17.831705, 19.911776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373112, 18.593082, 19.431992>,  <32.238613, 17.847527, 19.292711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373112, 18.593082, 19.431992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547108, 18.438011, 19.757072>,  <32.651505, 18.344969, 19.952122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547108, 18.438011, 19.757072>,  <32.373112, 18.593082, 19.431992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547108, 18.438011, 19.757072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382859, 0.896550, 0.222751,
		-0.814985, 0.214256, 0.538418,
		0.434993, -0.387677, 0.812704,
		32.677605, 18.321709, 20.000883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169827, 19.029409, 20.092939>,  <32.373112, 18.593082, 19.431992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169827, 19.029409, 20.092939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537682, 18.872540, 20.101631>,  <32.758392, 18.778418, 20.106846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537682, 18.872540, 20.101631>,  <32.169827, 19.029409, 20.092939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537682, 18.872540, 20.101631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382563, 0.906887, 0.176637,
		-0.088979, -0.154129, 0.984036,
		0.919635, -0.392173, 0.021730,
		32.813572, 18.754889, 20.108150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428650, 19.029793, 20.731125>,  <32.169827, 19.029409, 20.092939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428650, 19.029793, 20.731125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706398, 19.068565, 20.445900>,  <32.873047, 19.091829, 20.274765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706398, 19.068565, 20.445900>,  <32.428650, 19.029793, 20.731125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706398, 19.068565, 20.445900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154836, 0.947553, 0.279586,
		0.702767, -0.304543, 0.642940,
		0.694366, 0.096934, -0.713063,
		32.914707, 19.097645, 20.231981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113575, 19.337471, 20.985113>,  <32.428650, 19.029793, 20.731125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113575, 19.337471, 20.985113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069599, 19.429340, 20.598297>,  <33.043213, 19.484463, 20.366207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069599, 19.429340, 20.598297>,  <33.113575, 19.337471, 20.985113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069599, 19.429340, 20.598297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260827, 0.945505, 0.194908,
		0.959105, -0.230802, -0.163851,
		-0.109937, 0.229675, -0.967039,
		33.036617, 19.498243, 20.308186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663391, 19.584064, 20.838255>,  <33.113575, 19.337471, 20.985113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663391, 19.584064, 20.838255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343079, 19.724712, 20.644299>,  <33.150890, 19.809101, 20.527925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343079, 19.724712, 20.644299>,  <33.663391, 19.584064, 20.838255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343079, 19.724712, 20.644299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111825, 0.883082, 0.455700,
		0.588431, 0.310691, -0.746472,
		-0.800777, 0.351622, -0.484890,
		33.102844, 19.830198, 20.498831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803879, 20.225986, 20.734056>,  <33.663391, 19.584064, 20.838255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803879, 20.225986, 20.734056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417084, 20.212364, 20.633038>,  <33.185009, 20.204191, 20.572426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417084, 20.212364, 20.633038>,  <33.803879, 20.225986, 20.734056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417084, 20.212364, 20.633038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051029, 0.996835, 0.060954,
		0.249670, 0.071829, -0.965663,
		-0.966985, -0.034058, -0.252546,
		33.126987, 20.202147, 20.557274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719048, 20.754114, 20.203491>,  <33.803879, 20.225986, 20.734056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719048, 20.754114, 20.203491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353054, 20.705933, 20.357533>,  <33.133457, 20.677025, 20.449957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353054, 20.705933, 20.357533>,  <33.719048, 20.754114, 20.203491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353054, 20.705933, 20.357533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038918, 0.976299, 0.212899,
		-0.401619, 0.179810, -0.897981,
		-0.914980, -0.120452, 0.385102,
		33.078560, 20.669798, 20.473063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407703, 21.417440, 20.161581>,  <33.719048, 20.754114, 20.203491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407703, 21.417440, 20.161581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138264, 21.252487, 20.406925>,  <32.976601, 21.153515, 20.554131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138264, 21.252487, 20.406925>,  <33.407703, 21.417440, 20.161581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138264, 21.252487, 20.406925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328272, 0.910453, 0.251619,
		-0.662198, -0.031858, -0.748652,
		-0.673596, -0.412383, 0.613358,
		32.936184, 21.128773, 20.590933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843124, 21.864441, 20.091591>,  <33.407703, 21.417440, 20.161581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843124, 21.864441, 20.091591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770870, 21.692158, 20.445282>,  <32.727516, 21.588787, 20.657497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770870, 21.692158, 20.445282>,  <32.843124, 21.864441, 20.091591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770870, 21.692158, 20.445282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160873, 0.899848, 0.405454,
		-0.970305, -0.069009, -0.231833,
		-0.180634, -0.430710, 0.884229,
		32.716679, 21.562944, 20.710550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365749, 22.216688, 20.349203>,  <32.843124, 21.864441, 20.091591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365749, 22.216688, 20.349203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522331, 22.043262, 20.673866>,  <32.616280, 21.939207, 20.868664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522331, 22.043262, 20.673866>,  <32.365749, 22.216688, 20.349203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522331, 22.043262, 20.673866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071450, 0.865062, 0.496550,
		-0.917421, -0.252368, 0.307651,
		0.391450, -0.433564, 0.811658,
		32.639767, 21.913193, 20.917364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962826, 22.507322, 20.903599>,  <32.365749, 22.216688, 20.349203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962826, 22.507322, 20.903599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308487, 22.384907, 21.063389>,  <32.515884, 22.311457, 21.159262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308487, 22.384907, 21.063389>,  <31.962826, 22.507322, 20.903599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308487, 22.384907, 21.063389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058282, 0.849345, 0.524611,
		-0.499842, -0.430062, 0.751801,
		0.864153, -0.306039, 0.399473,
		32.567734, 22.293095, 21.183231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877954, 22.620615, 21.633268>,  <31.962826, 22.507322, 20.903599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877954, 22.620615, 21.633268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272823, 22.598724, 21.573277>,  <32.509747, 22.585590, 21.537281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272823, 22.598724, 21.573277>,  <31.877954, 22.620615, 21.633268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272823, 22.598724, 21.573277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133186, 0.800294, 0.584629,
		0.088033, -0.597105, 0.797318,
		0.987174, -0.054725, -0.149978,
		32.568974, 22.582308, 21.528282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145073, 22.756023, 22.231661>,  <31.877954, 22.620615, 21.633268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145073, 22.756023, 22.231661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459461, 22.847027, 22.001709>,  <32.648094, 22.901628, 21.863737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459461, 22.847027, 22.001709>,  <32.145073, 22.756023, 22.231661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459461, 22.847027, 22.001709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176176, 0.808869, 0.560975,
		0.592630, -0.542191, 0.595667,
		0.785972, 0.227509, -0.574881,
		32.695251, 22.915279, 21.829245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724270, 22.869247, 22.697758>,  <32.145073, 22.756023, 22.231661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724270, 22.869247, 22.697758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827339, 23.065708, 22.364922>,  <32.889183, 23.183584, 22.165220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827339, 23.065708, 22.364922>,  <32.724270, 22.869247, 22.697758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827339, 23.065708, 22.364922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361519, 0.749614, 0.554420,
		0.896050, -0.443678, 0.015599,
		0.257678, 0.491150, -0.832090,
		32.904644, 23.213053, 22.115294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389301, 22.999020, 22.777147>,  <32.724270, 22.869247, 22.697758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389301, 22.999020, 22.777147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237545, 23.276859, 22.532658>,  <33.146492, 23.443563, 22.385963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237545, 23.276859, 22.532658>,  <33.389301, 22.999020, 22.777147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237545, 23.276859, 22.532658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459096, 0.714877, 0.527429,
		0.803304, -0.080512, -0.590103,
		-0.379387, 0.694600, -0.611226,
		33.123730, 23.485239, 22.349289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848110, 23.561008, 22.864784>,  <33.389301, 22.999020, 22.777147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848110, 23.561008, 22.864784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554783, 23.732109, 22.653400>,  <33.378788, 23.834770, 22.526569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554783, 23.732109, 22.653400>,  <33.848110, 23.561008, 22.864784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554783, 23.732109, 22.653400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289036, 0.899685, 0.327148,
		0.615386, 0.087159, -0.783392,
		-0.733319, 0.427751, -0.528462,
		33.334785, 23.860434, 22.494862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154308, 24.119019, 22.508606>,  <33.848110, 23.561008, 22.864784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154308, 24.119019, 22.508606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768982, 24.192879, 22.586514>,  <33.537788, 24.237194, 22.633259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768982, 24.192879, 22.586514>,  <34.154308, 24.119019, 22.508606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768982, 24.192879, 22.586514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230783, 0.940360, 0.249925,
		-0.137005, 0.285705, -0.948474,
		-0.963311, 0.184651, 0.194770,
		33.479988, 24.248274, 22.644945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998989, 24.756731, 22.166437>,  <34.154308, 24.119019, 22.508606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998989, 24.756731, 22.166437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692505, 24.710846, 22.419346>,  <33.508614, 24.683315, 22.571091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692505, 24.710846, 22.419346>,  <33.998989, 24.756731, 22.166437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692505, 24.710846, 22.419346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047683, 0.971075, 0.233967,
		-0.640823, 0.209415, -0.738574,
		-0.766207, -0.114714, 0.632272,
		33.462643, 24.676432, 22.609028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430752, 25.219645, 21.925888>,  <33.998989, 24.756731, 22.166437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430752, 25.219645, 21.925888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393021, 25.139629, 22.315983>,  <33.370384, 25.091621, 22.550039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393021, 25.139629, 22.315983>,  <33.430752, 25.219645, 21.925888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393021, 25.139629, 22.315983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193844, 0.964546, 0.179095,
		-0.976487, -0.172151, -0.129755,
		-0.094324, -0.200037, 0.975238,
		33.364723, 25.079618, 22.608555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052063, 25.756758, 22.042830>,  <33.430752, 25.219645, 21.925888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052063, 25.756758, 22.042830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166073, 25.632568, 22.405567>,  <33.234478, 25.558056, 22.623209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166073, 25.632568, 22.405567>,  <33.052063, 25.756758, 22.042830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166073, 25.632568, 22.405567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047495, 0.949501, 0.310148,
		-0.957342, -0.045330, 0.285381,
		0.285029, -0.310472, 0.906844,
		33.251583, 25.539427, 22.677620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555267, 26.032745, 22.507330>,  <33.052063, 25.756758, 22.042830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555267, 26.032745, 22.507330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869286, 25.971447, 22.747402>,  <33.057697, 25.934668, 22.891445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869286, 25.971447, 22.747402>,  <32.555267, 26.032745, 22.507330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869286, 25.971447, 22.747402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064918, 0.943225, 0.325749,
		-0.616027, -0.294691, 0.730526,
		0.785046, -0.153246, 0.600182,
		33.104801, 25.925472, 22.927456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408592, 26.422052, 23.051224>,  <32.555267, 26.032745, 22.507330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408592, 26.422052, 23.051224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801800, 26.363022, 23.094856>,  <33.037724, 26.327604, 23.121037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801800, 26.363022, 23.094856>,  <32.408592, 26.422052, 23.051224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801800, 26.363022, 23.094856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096775, 0.921908, 0.375128,
		-0.155923, -0.358201, 0.920533,
		0.983017, -0.147575, 0.109081,
		33.096706, 26.318748, 23.127581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586796, 26.700804, 23.818533>,  <32.408592, 26.422052, 23.051224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586796, 26.700804, 23.818533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900776, 26.693203, 23.570824>,  <33.089165, 26.688643, 23.422199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900776, 26.693203, 23.570824>,  <32.586796, 26.700804, 23.818533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900776, 26.693203, 23.570824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293363, 0.891779, 0.344483,
		0.545707, -0.452072, 0.705574,
		0.784947, -0.019002, -0.619271,
		33.136261, 26.687502, 23.385042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220272, 27.004856, 24.188484>,  <32.586796, 26.700804, 23.818533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220272, 27.004856, 24.188484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316818, 27.023964, 23.800781>,  <33.374744, 27.035429, 23.568159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316818, 27.023964, 23.800781>,  <33.220272, 27.004856, 24.188484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316818, 27.023964, 23.800781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407723, 0.901365, 0.145955,
		0.880628, -0.430418, 0.198079,
		0.241363, 0.047771, -0.969259,
		33.389229, 27.038296, 23.510004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902252, 27.374477, 24.283377>,  <33.220272, 27.004856, 24.188484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902252, 27.374477, 24.283377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753723, 27.408691, 23.913555>,  <33.664604, 27.429220, 23.691662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753723, 27.408691, 23.913555>,  <33.902252, 27.374477, 24.283377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753723, 27.408691, 23.913555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239169, 0.970958, -0.006229,
		0.897171, -0.223438, -0.380999,
		-0.371326, 0.085534, -0.924554,
		33.642326, 27.434351, 23.636189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409634, 27.703135, 23.928030>,  <33.902252, 27.374477, 24.283377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409634, 27.703135, 23.928030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070232, 27.758972, 23.723850>,  <33.866592, 27.792475, 23.601343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070232, 27.758972, 23.723850>,  <34.409634, 27.703135, 23.928030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070232, 27.758972, 23.723850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239843, 0.961266, -0.135805,
		0.471720, -0.237659, -0.849116,
		-0.848502, 0.139593, -0.510449,
		33.815681, 27.800850, 23.570715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665802, 28.135061, 23.438929>,  <34.409634, 27.703135, 23.928030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665802, 28.135061, 23.438929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270756, 28.188469, 23.405968>,  <34.033730, 28.220512, 23.386190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270756, 28.188469, 23.405968>,  <34.665802, 28.135061, 23.438929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270756, 28.188469, 23.405968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153815, 0.927546, -0.340587,
		0.030959, -0.349044, -0.936595,
		-0.987615, 0.133518, -0.082404,
		33.974472, 28.228525, 23.381247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585682, 28.502890, 22.829889>,  <34.665802, 28.135061, 23.438929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585682, 28.502890, 22.829889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223442, 28.546955, 22.993717>,  <34.006096, 28.573395, 23.092014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223442, 28.546955, 22.993717>,  <34.585682, 28.502890, 22.829889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223442, 28.546955, 22.993717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074316, 0.909522, -0.408958,
		-0.417566, -0.400791, -0.815479,
		-0.905603, 0.110164, 0.409571,
		33.951763, 28.580004, 23.116589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328846, 28.899408, 22.396517>,  <34.585682, 28.502890, 22.829889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328846, 28.899408, 22.396517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051521, 28.920212, 22.684021>,  <33.885128, 28.932693, 22.856524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051521, 28.920212, 22.684021>,  <34.328846, 28.899408, 22.396517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051521, 28.920212, 22.684021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234487, 0.926834, -0.293247,
		-0.681421, -0.371851, -0.630390,
		-0.693311, 0.052007, 0.718759,
		33.843529, 28.935814, 22.899649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558743, 29.199963, 22.110319>,  <34.328846, 28.899408, 22.396517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558743, 29.199963, 22.110319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628239, 29.261635, 22.499378>,  <33.669937, 29.298637, 22.732813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628239, 29.261635, 22.499378>,  <33.558743, 29.199963, 22.110319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628239, 29.261635, 22.499378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221377, 0.968504, -0.113980,
		-0.959587, -0.195519, 0.202401,
		0.173741, 0.154181, 0.972647,
		33.680363, 29.307890, 22.791172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034969, 29.650995, 22.234524>,  <33.558743, 29.199963, 22.110319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034969, 29.650995, 22.234524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291611, 29.690758, 22.538750>,  <33.445595, 29.714615, 22.721285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291611, 29.690758, 22.538750>,  <33.034969, 29.650995, 22.234524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291611, 29.690758, 22.538750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012230, 0.992766, -0.119441,
		-0.766936, 0.067333, 0.638182,
		0.641608, 0.099408, 0.760564,
		33.484093, 29.720581, 22.766918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710766, 29.950418, 22.799648>,  <33.034969, 29.650995, 22.234524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710766, 29.950418, 22.799648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102917, 30.026382, 22.820763>,  <33.338207, 30.071960, 22.833431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102917, 30.026382, 22.820763>,  <32.710766, 29.950418, 22.799648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102917, 30.026382, 22.820763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189024, 0.981741, -0.021311,
		-0.055868, 0.010915, 0.998378,
		0.980382, 0.189909, 0.052785,
		33.397030, 30.083355, 22.836597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774124, 30.531294, 23.118923>,  <32.710766, 29.950418, 22.799648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774124, 30.531294, 23.118923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129478, 30.511044, 22.936401>,  <33.342690, 30.498894, 22.826887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.129478, 30.511044, 22.936401>,  <32.774124, 30.531294, 23.118923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129478, 30.511044, 22.936401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020561, 0.997291, -0.070622,
		0.458645, 0.053357, 0.887016,
		0.888382, -0.050628, -0.456306,
		33.395992, 30.495855, 22.799509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334099, 30.655577, 23.627037>,  <32.774124, 30.531294, 23.118923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334099, 30.655577, 23.627037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418983, 30.743076, 23.246067>,  <33.469913, 30.795576, 23.017485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418983, 30.743076, 23.246067>,  <33.334099, 30.655577, 23.627037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418983, 30.743076, 23.246067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040443, 0.975755, 0.215095,
		0.976385, -0.007128, 0.215918,
		0.212217, 0.218748, -0.952425,
		33.482647, 30.808701, 22.960339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638046, 31.323792, 23.720438>,  <33.334099, 30.655577, 23.627037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638046, 31.323792, 23.720438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617706, 31.340302, 23.321297>,  <33.605503, 31.350206, 23.081812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617706, 31.340302, 23.321297>,  <33.638046, 31.323792, 23.720438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617706, 31.340302, 23.321297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062709, 0.997306, 0.038055,
		0.996736, -0.060640, -0.053298,
		-0.050846, 0.041273, -0.997853,
		33.602451, 31.352684, 23.021940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097015, 31.792015, 23.554811>,  <33.638046, 31.323792, 23.720438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097015, 31.792015, 23.554811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875084, 31.771305, 23.222672>,  <33.741924, 31.758879, 23.023388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.875084, 31.771305, 23.222672>,  <34.097015, 31.792015, 23.554811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875084, 31.771305, 23.222672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132793, 0.990777, 0.026953,
		0.821296, 0.125219, -0.556591,
		-0.554833, -0.051775, -0.830349,
		33.708633, 31.755774, 22.973566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297668, 32.292000, 23.183533>,  <34.097015, 31.792015, 23.554811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297668, 32.292000, 23.183533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943371, 32.213970, 23.015053>,  <33.730793, 32.167152, 22.913965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943371, 32.213970, 23.015053>,  <34.297668, 32.292000, 23.183533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943371, 32.213970, 23.015053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248733, 0.965598, 0.075847,
		0.391915, 0.171947, -0.903791,
		-0.885740, -0.195077, -0.421201,
		33.677650, 32.155445, 22.888693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165237, 32.935627, 22.719477>,  <34.297668, 32.292000, 23.183533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165237, 32.935627, 22.719477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797653, 32.779900, 22.744610>,  <33.577103, 32.686462, 22.759689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797653, 32.779900, 22.744610>,  <34.165237, 32.935627, 22.719477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797653, 32.779900, 22.744610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390322, 0.920669, -0.004142,
		-0.056236, -0.028331, -0.998015,
		-0.918959, -0.389314, 0.062833,
		33.521965, 32.663105, 22.763460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784378, 33.436672, 22.249605>,  <34.165237, 32.935627, 22.719477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784378, 33.436672, 22.249605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540504, 33.241375, 22.499371>,  <33.394180, 33.124195, 22.649231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540504, 33.241375, 22.499371>,  <33.784378, 33.436672, 22.249605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540504, 33.241375, 22.499371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559452, 0.823124, 0.097365,
		-0.561510, -0.289969, -0.775000,
		-0.609688, -0.488247, 0.624416,
		33.357597, 33.094902, 22.686695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122227, 33.505909, 22.043983>,  <33.784378, 33.436672, 22.249605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122227, 33.505909, 22.043983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047482, 33.420040, 22.427441>,  <33.002636, 33.368519, 22.657515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047482, 33.420040, 22.427441>,  <33.122227, 33.505909, 22.043983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047482, 33.420040, 22.427441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511728, 0.854255, 0.091552,
		-0.838581, -0.473458, -0.269480,
		-0.186858, -0.214674, 0.958644,
		32.991425, 33.355637, 22.715034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364281, 33.446476, 22.157618>,  <33.122227, 33.505909, 22.043983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364281, 33.446476, 22.157618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515503, 33.527603, 22.518936>,  <32.606236, 33.576279, 22.735727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515503, 33.527603, 22.518936>,  <32.364281, 33.446476, 22.157618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515503, 33.527603, 22.518936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640458, 0.761843, 0.096995,
		-0.668496, -0.615192, 0.417913,
		0.378055, 0.202815, 0.903294,
		32.628918, 33.588448, 22.789925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761244, 33.654484, 22.474689>,  <32.364281, 33.446476, 22.157618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761244, 33.654484, 22.474689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050632, 33.774822, 22.723232>,  <32.224266, 33.847023, 22.872358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.050632, 33.774822, 22.723232>,  <31.761244, 33.654484, 22.474689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050632, 33.774822, 22.723232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477703, 0.867934, 0.135980,
		-0.498389, -0.395201, 0.771637,
		0.723469, 0.300842, 0.621357,
		32.267673, 33.865074, 22.909639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462194, 33.943836, 23.037010>,  <31.761244, 33.654484, 22.474689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462194, 33.943836, 23.037010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827463, 34.106827, 23.033318>,  <32.046623, 34.204620, 23.031103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827463, 34.106827, 23.033318>,  <31.462194, 33.943836, 23.037010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827463, 34.106827, 23.033318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397338, 0.895040, 0.202550,
		0.090796, -0.181295, 0.979228,
		0.913170, 0.407475, -0.009230,
		32.101414, 34.229069, 23.030548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672863, 33.961094, 23.733463>,  <31.462194, 33.943836, 23.037010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672863, 33.961094, 23.733463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273647, 33.978413, 23.715385>,  <31.034119, 33.988804, 23.704538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273647, 33.978413, 23.715385>,  <31.672863, 33.961094, 23.733463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273647, 33.978413, 23.715385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041224, -0.998096, -0.045872,
		-0.047097, -0.043919, 0.997924,
		-0.998039, 0.043298, -0.045197,
		30.974236, 33.991402, 23.701826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406519, 33.434902, 24.185787>,  <31.672863, 33.961094, 23.733463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406519, 33.434902, 24.185787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088621, 33.519451, 23.958206>,  <30.897882, 33.570179, 23.821657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088621, 33.519451, 23.958206>,  <31.406519, 33.434902, 24.185787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088621, 33.519451, 23.958206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234121, -0.971615, -0.033928,
		-0.559973, 0.106239, 0.821671,
		-0.794744, 0.211370, -0.568951,
		30.850199, 33.582863, 23.787521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851080, 33.250820, 24.513062>,  <31.406519, 33.434902, 24.185787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851080, 33.250820, 24.513062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716644, 33.227901, 24.137028>,  <30.635983, 33.214149, 23.911407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716644, 33.227901, 24.137028>,  <30.851080, 33.250820, 24.513062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716644, 33.227901, 24.137028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323243, -0.930504, 0.172271,
		-0.884623, 0.361774, 0.294213,
		-0.336089, -0.057293, -0.940086,
		30.615818, 33.210712, 23.855001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131815, 33.030293, 24.578653>,  <30.851080, 33.250820, 24.513062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131815, 33.030293, 24.578653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208490, 32.957642, 24.192852>,  <30.254496, 32.914051, 23.961370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208490, 32.957642, 24.192852>,  <30.131815, 33.030293, 24.578653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208490, 32.957642, 24.192852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430654, -0.898633, 0.083636,
		-0.881926, 0.399336, -0.250476,
		0.191687, -0.181629, -0.964504,
		30.265997, 32.903152, 23.903502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531630, 32.612022, 24.303308>,  <30.131815, 33.030293, 24.578653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531630, 32.612022, 24.303308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816494, 32.535252, 24.033199>,  <29.987411, 32.489189, 23.871134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816494, 32.535252, 24.033199>,  <29.531630, 32.612022, 24.303308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816494, 32.535252, 24.033199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071948, -0.976791, 0.201747,
		-0.698321, -0.095091, -0.709440,
		0.712159, -0.191927, -0.675273,
		30.030142, 32.477673, 23.830618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228840, 32.113449, 23.884277>,  <29.531630, 32.612022, 24.303308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228840, 32.113449, 23.884277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610477, 32.060455, 23.776833>,  <29.839460, 32.028660, 23.712366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610477, 32.060455, 23.776833>,  <29.228840, 32.113449, 23.884277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610477, 32.060455, 23.776833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190343, -0.960653, -0.202275,
		-0.231243, 0.244118, -0.941771,
		0.954094, -0.132484, -0.268611,
		29.896706, 32.020710, 23.696249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255938, 31.580523, 23.338915>,  <29.228840, 32.113449, 23.884277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255938, 31.580523, 23.338915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625731, 31.575371, 23.491318>,  <29.847607, 31.572281, 23.582760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625731, 31.575371, 23.491318>,  <29.255938, 31.580523, 23.338915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625731, 31.575371, 23.491318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092847, -0.961730, -0.257789,
		0.369747, 0.273697, -0.887906,
		0.924482, -0.012877, 0.381008,
		29.903074, 31.571508, 23.605619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716053, 31.382917, 22.791145>,  <29.255938, 31.580523, 23.338915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716053, 31.382917, 22.791145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884941, 31.289959, 23.141624>,  <29.986275, 31.234184, 23.351912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.884941, 31.289959, 23.141624>,  <29.716053, 31.382917, 22.791145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884941, 31.289959, 23.141624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128300, -0.941530, -0.311547,
		0.897368, 0.243957, -0.367717,
		0.422221, -0.232394, 0.876198,
		30.011608, 31.220242, 23.404484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333237, 30.887423, 22.702873>,  <29.716053, 31.382917, 22.791145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333237, 30.887423, 22.702873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240463, 30.848518, 23.090015>,  <30.184799, 30.825176, 23.322302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240463, 30.848518, 23.090015>,  <30.333237, 30.887423, 22.702873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240463, 30.848518, 23.090015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047694, -0.994929, -0.088554,
		0.971562, 0.025622, 0.235394,
		-0.231931, -0.097262, 0.967858,
		30.170883, 30.819340, 23.380373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725010, 30.269817, 22.880083>,  <30.333237, 30.887423, 22.702873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725010, 30.269817, 22.880083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506275, 30.320454, 23.211128>,  <30.375034, 30.350836, 23.409756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506275, 30.320454, 23.211128>,  <30.725010, 30.269817, 22.880083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506275, 30.320454, 23.211128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057211, -0.980542, 0.187785,
		0.835282, 0.150037, 0.528955,
		-0.546837, 0.126591, 0.827613,
		30.342224, 30.358431, 23.459412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097467, 29.887304, 23.409462>,  <30.725010, 30.269817, 22.880083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097467, 29.887304, 23.409462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712038, 29.944401, 23.499924>,  <30.480780, 29.978659, 23.554201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712038, 29.944401, 23.499924>,  <31.097467, 29.887304, 23.409462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712038, 29.944401, 23.499924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083164, -0.963651, 0.253891,
		0.254177, 0.225835, 0.940421,
		-0.963575, 0.142743, 0.226157,
		30.422966, 29.987225, 23.567770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.935585, 29.500891, 24.032263>,  <31.097467, 29.887304, 23.409462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.935585, 29.500891, 24.032263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583981, 29.558502, 23.850452>,  <30.373018, 29.593069, 23.741367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583981, 29.558502, 23.850452>,  <30.935585, 29.500891, 24.032263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583981, 29.558502, 23.850452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256824, -0.946199, 0.196846,
		-0.401720, 0.289763, 0.868711,
		-0.879012, 0.144029, -0.454525,
		30.320276, 29.601711, 23.714094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426235, 29.138376, 24.501350>,  <30.935585, 29.500891, 24.032263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426235, 29.138376, 24.501350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238241, 29.214226, 24.156525>,  <30.125444, 29.259735, 23.949629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238241, 29.214226, 24.156525>,  <30.426235, 29.138376, 24.501350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238241, 29.214226, 24.156525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289695, -0.955690, -0.052280,
		-0.833781, 0.225166, 0.504093,
		-0.469985, 0.189623, -0.862066,
		30.097246, 29.271112, 23.897905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742115, 28.866186, 24.625114>,  <30.426235, 29.138376, 24.501350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742115, 28.866186, 24.625114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837763, 28.896645, 24.237915>,  <29.895151, 28.914919, 24.005594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837763, 28.896645, 24.237915>,  <29.742115, 28.866186, 24.625114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837763, 28.896645, 24.237915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329671, -0.931336, -0.154697,
		-0.913312, 0.356113, -0.197600,
		0.239121, 0.076144, -0.968000,
		29.909500, 28.919487, 23.947515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.143299, 28.650658, 24.235577>,  <29.742115, 28.866186, 24.625114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.143299, 28.650658, 24.235577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454596, 28.566486, 23.998913>,  <29.641373, 28.515984, 23.856915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454596, 28.566486, 23.998913>,  <29.143299, 28.650658, 24.235577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454596, 28.566486, 23.998913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371087, -0.914186, -0.162970,
		-0.506593, 0.346387, -0.789544,
		0.778240, -0.210430, -0.591660,
		29.688068, 28.503357, 23.821415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979141, 28.046480, 24.042242>,  <29.143299, 28.650658, 24.235577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979141, 28.046480, 24.042242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327154, 28.051182, 23.845100>,  <29.535961, 28.054003, 23.726816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327154, 28.051182, 23.845100>,  <28.979141, 28.046480, 24.042242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327154, 28.051182, 23.845100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026882, -0.997097, -0.071237,
		-0.492260, 0.075227, -0.867191,
		0.870033, 0.011755, -0.492854,
		29.588163, 28.054708, 23.697245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916491, 27.587948, 23.417158>,  <28.979141, 28.046480, 24.042242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916491, 27.587948, 23.417158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301395, 27.624371, 23.519737>,  <29.532337, 27.646225, 23.581284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301395, 27.624371, 23.519737>,  <28.916491, 27.587948, 23.417158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301395, 27.624371, 23.519737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120770, -0.987367, -0.102572,
		0.243866, 0.129672, -0.961101,
		0.962260, 0.091058, 0.256446,
		29.590073, 27.651688, 23.596670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215982, 27.116106, 23.032354>,  <28.916491, 27.587948, 23.417158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215982, 27.116106, 23.032354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522718, 27.201054, 23.274628>,  <29.706760, 27.252022, 23.419992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522718, 27.201054, 23.274628>,  <29.215982, 27.116106, 23.032354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522718, 27.201054, 23.274628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269046, -0.963123, -0.002934,
		0.582725, 0.165207, -0.795699,
		0.766841, 0.212370, 0.605685,
		29.752771, 27.264765, 23.456333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885862, 26.751892, 22.683350>,  <29.215982, 27.116106, 23.032354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885862, 26.751892, 22.683350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929651, 26.821552, 23.074795>,  <29.955925, 26.863348, 23.309662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929651, 26.821552, 23.074795>,  <29.885862, 26.751892, 22.683350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929651, 26.821552, 23.074795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430382, -0.895764, 0.111262,
		0.895984, 0.408998, -0.173013,
		0.109473, 0.174151, 0.978615,
		29.962494, 26.873798, 23.368380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555286, 26.597580, 22.755707>,  <29.885862, 26.751892, 22.683350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555286, 26.597580, 22.755707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455173, 26.593327, 23.142952>,  <30.395105, 26.590775, 23.375299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.455173, 26.593327, 23.142952>,  <30.555286, 26.597580, 22.755707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455173, 26.593327, 23.142952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554333, -0.821390, 0.134289,
		0.793771, 0.570268, 0.211475,
		-0.250284, -0.010633, 0.968114,
		30.380089, 26.590137, 23.433386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167122, 26.583786, 23.141548>,  <30.555286, 26.597580, 22.755707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167122, 26.583786, 23.141548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860363, 26.415413, 23.335327>,  <30.676308, 26.314390, 23.451595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.860363, 26.415413, 23.335327>,  <31.167122, 26.583786, 23.141548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860363, 26.415413, 23.335327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562927, -0.803705, 0.192801,
		0.308197, 0.420567, 0.853310,
		-0.766895, -0.420931, 0.484447,
		30.630295, 26.289133, 23.480661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456308, 26.192089, 23.750135>,  <31.167122, 26.583786, 23.141548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456308, 26.192089, 23.750135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089209, 26.055447, 23.669098>,  <30.868950, 25.973461, 23.620476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089209, 26.055447, 23.669098>,  <31.456308, 26.192089, 23.750135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089209, 26.055447, 23.669098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332405, -0.939829, 0.078921,
		-0.217363, 0.005086, 0.976078,
		-0.917747, -0.341607, -0.202594,
		30.813885, 25.952965, 23.608320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294903, 25.736681, 24.270554>,  <31.456308, 26.192089, 23.750135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294903, 25.736681, 24.270554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048300, 25.630447, 23.974072>,  <30.900339, 25.566708, 23.796183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.048300, 25.630447, 23.974072>,  <31.294903, 25.736681, 24.270554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048300, 25.630447, 23.974072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287918, -0.952237, 0.101722,
		-0.732819, -0.150694, 0.663526,
		-0.616505, -0.265585, -0.741206,
		30.863348, 25.550772, 23.751709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822701, 25.314339, 24.636110>,  <31.294903, 25.736681, 24.270554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822701, 25.314339, 24.636110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832699, 25.252125, 24.241104>,  <30.838697, 25.214796, 24.004101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832699, 25.252125, 24.241104>,  <30.822701, 25.314339, 24.636110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832699, 25.252125, 24.241104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180104, -0.970959, 0.157484,
		-0.983330, -0.181791, 0.003742,
		0.024996, -0.155533, -0.987514,
		30.840199, 25.205465, 23.944849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607468, 24.623842, 24.622084>,  <30.822701, 25.314339, 24.636110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607468, 24.623842, 24.622084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739799, 24.667740, 24.247169>,  <30.819199, 24.694078, 24.022221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739799, 24.667740, 24.247169>,  <30.607468, 24.623842, 24.622084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739799, 24.667740, 24.247169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090251, -0.992342, -0.084337,
		-0.939365, -0.056690, -0.338201,
		0.330830, 0.109746, -0.937287,
		30.839048, 24.700665, 23.965982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275574, 24.108833, 24.162321>,  <30.607468, 24.623842, 24.622084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275574, 24.108833, 24.162321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578882, 24.219166, 23.926037>,  <30.760868, 24.285366, 23.784267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578882, 24.219166, 23.926037>,  <30.275574, 24.108833, 24.162321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578882, 24.219166, 23.926037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014201, -0.898881, -0.437963,
		-0.651782, 0.340484, -0.677681,
		0.758274, 0.275832, -0.590709,
		30.806364, 24.301916, 23.748823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084776, 24.051481, 23.523872>,  <30.275574, 24.108833, 24.162321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084776, 24.051481, 23.523872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480736, 24.005688, 23.557320>,  <30.718311, 23.978212, 23.577387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480736, 24.005688, 23.557320>,  <30.084776, 24.051481, 23.523872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480736, 24.005688, 23.557320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095992, -0.975303, -0.198921,
		0.104325, 0.188885, -0.976442,
		0.989900, -0.114483, 0.083617,
		30.777706, 23.971342, 23.582405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169493, 23.463638, 23.098362>,  <30.084776, 24.051481, 23.523872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169493, 23.463638, 23.098362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526489, 23.497036, 23.275669>,  <30.740686, 23.517075, 23.382053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526489, 23.497036, 23.275669>,  <30.169493, 23.463638, 23.098362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526489, 23.497036, 23.275669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248940, -0.910677, -0.329691,
		0.376149, 0.404594, -0.833556,
		0.892491, 0.083492, 0.443270,
		30.794237, 23.522083, 23.408649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649117, 23.180199, 22.626013>,  <30.169493, 23.463638, 23.098362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649117, 23.180199, 22.626013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854248, 23.174953, 22.969368>,  <30.977327, 23.171806, 23.175381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.854248, 23.174953, 22.969368>,  <30.649117, 23.180199, 22.626013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854248, 23.174953, 22.969368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283999, -0.940995, -0.184047,
		0.810154, 0.338167, -0.478846,
		0.512830, -0.013114, 0.858390,
		31.008097, 23.171019, 23.226885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351206, 22.718063, 22.452995>,  <30.649117, 23.180199, 22.626013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351206, 22.718063, 22.452995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297987, 22.733135, 22.849152>,  <31.266056, 22.742178, 23.086845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297987, 22.733135, 22.849152>,  <31.351206, 22.718063, 22.452995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297987, 22.733135, 22.849152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262455, -0.962264, 0.071868,
		0.955728, 0.269496, 0.118137,
		-0.133047, 0.037681, 0.990393,
		31.258072, 22.744440, 23.146269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952024, 22.297119, 22.746365>,  <31.351206, 22.718063, 22.452995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952024, 22.297119, 22.746365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673809, 22.300491, 23.033741>,  <31.506880, 22.302515, 23.206167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673809, 22.300491, 23.033741>,  <31.952024, 22.297119, 22.746365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673809, 22.300491, 23.033741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167432, -0.970501, 0.173481,
		0.698708, 0.240952, 0.673609,
		-0.695539, 0.008429, 0.718439,
		31.465147, 22.303020, 23.249273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298656, 22.010746, 23.456274>,  <31.952024, 22.297119, 22.746365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298656, 22.010746, 23.456274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906675, 21.940823, 23.418045>,  <31.671486, 21.898869, 23.395107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906675, 21.940823, 23.418045>,  <32.298656, 22.010746, 23.456274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906675, 21.940823, 23.418045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156715, -0.972555, 0.171980,
		-0.123012, 0.153555, 0.980453,
		-0.979954, -0.174807, -0.095571,
		31.612690, 21.888380, 23.389374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158112, 21.493990, 23.937359>,  <32.298656, 22.010746, 23.456274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158112, 21.493990, 23.937359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833891, 21.474545, 23.703903>,  <31.639357, 21.462877, 23.563829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833891, 21.474545, 23.703903>,  <32.158112, 21.493990, 23.937359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833891, 21.474545, 23.703903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003998, -0.996067, 0.088518,
		-0.585647, 0.074082, 0.807174,
		-0.810556, -0.048614, -0.583640,
		31.590725, 21.459961, 23.528811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729736, 20.930975, 24.185095>,  <32.158112, 21.493990, 23.937359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729736, 20.930975, 24.185095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608059, 20.995724, 23.809593>,  <31.535051, 21.034573, 23.584291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.608059, 20.995724, 23.809593>,  <31.729736, 20.930975, 24.185095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608059, 20.995724, 23.809593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004504, -0.985202, -0.171339,
		-0.952599, -0.056348, 0.298964,
		-0.304195, 0.161871, -0.938756,
		31.516800, 21.044285, 23.527966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226007, 20.473362, 24.055531>,  <31.729736, 20.930975, 24.185095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226007, 20.473362, 24.055531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347994, 20.573463, 23.687973>,  <31.421185, 20.633524, 23.467438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347994, 20.573463, 23.687973>,  <31.226007, 20.473362, 24.055531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347994, 20.573463, 23.687973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246750, -0.911147, -0.330038,
		-0.919843, 0.327387, -0.216117,
		0.304965, 0.250256, -0.918895,
		31.439484, 20.648540, 23.412304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645807, 20.296789, 23.690710>,  <31.226007, 20.473362, 24.055531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645807, 20.296789, 23.690710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954910, 20.316280, 23.437580>,  <31.140373, 20.327976, 23.285702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954910, 20.316280, 23.437580>,  <30.645807, 20.296789, 23.690710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954910, 20.316280, 23.437580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208912, -0.921962, -0.326102,
		-0.599332, 0.384203, -0.702274,
		0.772759, 0.048730, -0.632826,
		31.186737, 20.330900, 23.247732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384418, 20.035982, 23.130152>,  <30.645807, 20.296789, 23.690710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384418, 20.035982, 23.130152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781199, 20.028091, 23.080116>,  <31.019266, 20.023357, 23.050095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781199, 20.028091, 23.080116>,  <30.384418, 20.035982, 23.130152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781199, 20.028091, 23.080116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067008, -0.919938, -0.386294,
		-0.107452, 0.391566, -0.913855,
		0.991949, -0.019728, -0.125088,
		31.078783, 20.022173, 23.042589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376583, 19.781010, 22.414129>,  <30.384418, 20.035982, 23.130152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376583, 19.781010, 22.414129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732891, 19.730106, 22.588638>,  <30.946676, 19.699564, 22.693344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732891, 19.730106, 22.588638>,  <30.376583, 19.781010, 22.414129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732891, 19.730106, 22.588638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110926, -0.870071, -0.480284,
		0.440711, 0.476216, -0.760915,
		0.890769, -0.127261, 0.436275,
		31.000122, 19.691929, 22.719521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951916, 19.229706, 22.100050>,  <30.376583, 19.781010, 22.414129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951916, 19.229706, 22.100050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653070, 19.239025, 21.834335>,  <29.473763, 19.244617, 21.674906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653070, 19.239025, 21.834335>,  <29.951916, 19.229706, 22.100050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653070, 19.239025, 21.834335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056786, 0.993494, 0.098714,
		0.662266, 0.111473, -0.740930,
		-0.747114, 0.023300, -0.664288,
		29.428936, 19.246016, 21.635050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194435, 19.665012, 21.521210>,  <29.951916, 19.229706, 22.100050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194435, 19.665012, 21.521210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799500, 19.636963, 21.464298>,  <29.562538, 19.620134, 21.430151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799500, 19.636963, 21.464298>,  <30.194435, 19.665012, 21.521210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799500, 19.636963, 21.464298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029096, 0.961823, -0.272120,
		0.155930, -0.264535, -0.951687,
		-0.987339, -0.070122, -0.142280,
		29.503298, 19.615927, 21.421614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082685, 20.026503, 20.841057>,  <30.194435, 19.665012, 21.521210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082685, 20.026503, 20.841057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711060, 20.018623, 20.988815>,  <29.488085, 20.013897, 21.077471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711060, 20.018623, 20.988815>,  <30.082685, 20.026503, 20.841057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711060, 20.018623, 20.988815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168973, 0.910913, -0.376412,
		-0.329073, -0.412129, -0.849624,
		-0.929064, -0.019697, 0.369395,
		29.432341, 20.012714, 21.099634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569567, 20.252802, 20.331470>,  <30.082685, 20.026503, 20.841057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569567, 20.252802, 20.331470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421091, 20.313900, 20.697834>,  <29.332006, 20.350559, 20.917652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.421091, 20.313900, 20.697834>,  <29.569567, 20.252802, 20.331470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421091, 20.313900, 20.697834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048420, 0.981851, -0.183368,
		-0.927294, -0.112412, -0.357056,
		-0.371188, 0.152747, 0.915908,
		29.309734, 20.359724, 20.972607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126709, 20.775127, 20.206640>,  <29.569567, 20.252802, 20.331470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126709, 20.775127, 20.206640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177143, 20.792473, 20.603069>,  <29.207403, 20.802879, 20.840927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.177143, 20.792473, 20.603069>,  <29.126709, 20.775127, 20.206640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177143, 20.792473, 20.603069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120599, 0.990964, -0.058700,
		-0.984661, 0.126924, 0.119718,
		0.126086, 0.043361, 0.991071,
		29.214970, 20.805481, 20.900391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704922, 21.337101, 20.438194>,  <29.126709, 20.775127, 20.206640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704922, 21.337101, 20.438194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964947, 21.265465, 20.733585>,  <29.120962, 21.222483, 20.910820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964947, 21.265465, 20.733585>,  <28.704922, 21.337101, 20.438194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964947, 21.265465, 20.733585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074787, 0.982191, 0.172360,
		-0.756193, -0.056816, 0.651877,
		0.650060, -0.179089, 0.738477,
		29.159966, 21.211739, 20.955128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360956, 21.473753, 21.034771>,  <28.704922, 21.337101, 20.438194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360956, 21.473753, 21.034771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757204, 21.525204, 21.053219>,  <28.994953, 21.556074, 21.064287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757204, 21.525204, 21.053219>,  <28.360956, 21.473753, 21.034771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757204, 21.525204, 21.053219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133696, 0.982107, 0.132634,
		-0.028233, -0.137556, 0.990092,
		0.990620, 0.128626, 0.046119,
		29.054390, 21.563791, 21.067055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439264, 22.081676, 21.470390>,  <28.360956, 21.473753, 21.034771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439264, 22.081676, 21.470390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807774, 22.035778, 21.321751>,  <29.028879, 22.008240, 21.232567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.807774, 22.035778, 21.321751>,  <28.439264, 22.081676, 21.470390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807774, 22.035778, 21.321751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157907, 0.983545, 0.087778,
		0.355414, -0.139546, 0.924234,
		0.921275, -0.114745, -0.371601,
		29.084156, 22.001354, 21.210270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895796, 22.251030, 22.021851>,  <28.439264, 22.081676, 21.470390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895796, 22.251030, 22.021851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045511, 22.307854, 21.655304>,  <29.135340, 22.341948, 21.435375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045511, 22.307854, 21.655304>,  <28.895796, 22.251030, 22.021851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045511, 22.307854, 21.655304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054343, 0.983137, 0.174609,
		0.925719, -0.115152, 0.360257,
		0.374288, 0.142061, -0.916366,
		29.157797, 22.350471, 21.380394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190363, 22.894598, 22.105309>,  <28.895796, 22.251030, 22.021851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190363, 22.894598, 22.105309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205025, 22.858410, 21.707218>,  <29.213821, 22.836697, 21.468365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205025, 22.858410, 21.707218>,  <29.190363, 22.894598, 22.105309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205025, 22.858410, 21.707218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034558, 0.995183, -0.091739,
		0.998730, 0.037756, 0.033350,
		0.036653, -0.090470, -0.995224,
		29.216021, 22.831268, 21.408651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800640, 23.255320, 21.812407>,  <29.190363, 22.894598, 22.105309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800640, 23.255320, 21.812407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604425, 23.212112, 21.466526>,  <29.486696, 23.186188, 21.258997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.604425, 23.212112, 21.466526>,  <29.800640, 23.255320, 21.812407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604425, 23.212112, 21.466526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006852, 0.991779, -0.127778,
		0.871394, -0.068605, -0.485762,
		-0.490535, -0.108017, -0.864701,
		29.457266, 23.179707, 21.207115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094997, 23.742151, 21.395084>,  <29.800640, 23.255320, 21.812407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094997, 23.742151, 21.395084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720161, 23.692913, 21.264420>,  <29.495260, 23.663370, 21.186022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720161, 23.692913, 21.264420>,  <30.094997, 23.742151, 21.395084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720161, 23.692913, 21.264420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088667, 0.989008, -0.118325,
		0.337635, -0.081917, -0.937706,
		-0.937092, -0.123094, -0.326660,
		29.439034, 23.655985, 21.166422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031923, 24.221310, 20.767958>,  <30.094997, 23.742151, 21.395084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031923, 24.221310, 20.767958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660084, 24.153156, 20.898689>,  <29.436981, 24.112265, 20.977129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.660084, 24.153156, 20.898689>,  <30.031923, 24.221310, 20.767958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.660084, 24.153156, 20.898689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250754, 0.942253, -0.221993,
		-0.270131, -0.288318, -0.918641,
		-0.929597, -0.170386, 0.326829,
		29.381205, 24.102041, 20.996738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522978, 24.519796, 20.235390>,  <30.031923, 24.221310, 20.767958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522978, 24.519796, 20.235390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383665, 24.501785, 20.609913>,  <29.300077, 24.490978, 20.834627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.383665, 24.501785, 20.609913>,  <29.522978, 24.519796, 20.235390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.383665, 24.501785, 20.609913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187873, 0.981932, -0.022662,
		-0.918371, -0.183800, -0.350447,
		-0.348280, -0.045028, 0.936309,
		29.279181, 24.488277, 20.890806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883812, 24.852369, 20.132893>,  <29.522978, 24.519796, 20.235390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883812, 24.852369, 20.132893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970690, 24.849751, 20.523335>,  <29.022816, 24.848179, 20.757601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970690, 24.849751, 20.523335>,  <28.883812, 24.852369, 20.132893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970690, 24.849751, 20.523335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315358, 0.945883, 0.076516,
		-0.923783, -0.324442, 0.203376,
		0.217195, -0.006548, 0.976106,
		29.035849, 24.847786, 20.816166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334280, 25.073679, 20.466002>,  <28.883812, 24.852369, 20.132893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334280, 25.073679, 20.466002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643616, 25.154503, 20.706375>,  <28.829216, 25.202997, 20.850599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.643616, 25.154503, 20.706375>,  <28.334280, 25.073679, 20.466002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643616, 25.154503, 20.706375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306628, 0.948825, 0.075562,
		-0.554912, -0.242698, 0.795720,
		0.773338, 0.202060, 0.600932,
		28.875618, 25.215120, 20.886654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082403, 25.515959, 20.887259>,  <28.334280, 25.073679, 20.466002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082403, 25.515959, 20.887259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459528, 25.582603, 21.002739>,  <28.685802, 25.622589, 21.072027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.459528, 25.582603, 21.002739>,  <28.082403, 25.515959, 20.887259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459528, 25.582603, 21.002739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194585, 0.978322, 0.070864,
		-0.270637, -0.122989, 0.954793,
		0.942811, 0.166610, 0.288702,
		28.742371, 25.632587, 21.089350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066744, 26.064739, 21.482080>,  <28.082403, 25.515959, 20.887259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066744, 26.064739, 21.482080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438322, 26.046211, 21.335159>,  <28.661270, 26.035095, 21.247007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.438322, 26.046211, 21.335159>,  <28.066744, 26.064739, 21.482080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.438322, 26.046211, 21.335159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115460, 0.978905, 0.168565,
		0.351747, -0.198997, 0.914699,
		0.928947, -0.046318, -0.367303,
		28.717007, 26.032316, 21.224968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461193, 26.456982, 21.975660>,  <28.066744, 26.064739, 21.482080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461193, 26.456982, 21.975660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682978, 26.491558, 21.644577>,  <28.816048, 26.512304, 21.445927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682978, 26.491558, 21.644577>,  <28.461193, 26.456982, 21.975660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682978, 26.491558, 21.644577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051442, 0.996249, 0.069585,
		0.830618, 0.003997, 0.556829,
		0.554462, 0.086443, -0.827707,
		28.849316, 26.517490, 21.396265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112556, 26.710835, 22.188498>,  <28.461193, 26.456982, 21.975660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112556, 26.710835, 22.188498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089087, 26.819698, 21.804314>,  <29.075005, 26.885017, 21.573803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089087, 26.819698, 21.804314>,  <29.112556, 26.710835, 22.188498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089087, 26.819698, 21.804314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106923, 0.954871, 0.277107,
		0.992534, 0.118955, -0.026928,
		-0.058676, 0.272159, -0.960462,
		29.071484, 26.901346, 21.516174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664255, 27.326662, 22.003168>,  <29.112556, 26.710835, 22.188498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664255, 27.326662, 22.003168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377684, 27.335712, 21.724251>,  <29.205740, 27.341143, 21.556900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377684, 27.335712, 21.724251>,  <29.664255, 27.326662, 22.003168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377684, 27.335712, 21.724251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181395, 0.959059, 0.217492,
		0.673664, 0.282303, -0.682995,
		-0.716431, 0.022625, -0.697291,
		29.162754, 27.342501, 21.515064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740643, 27.981062, 21.678244>,  <29.664255, 27.326662, 22.003168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740643, 27.981062, 21.678244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360039, 27.888687, 21.596958>,  <29.131676, 27.833261, 21.548187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360039, 27.888687, 21.596958>,  <29.740643, 27.981062, 21.678244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360039, 27.888687, 21.596958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264561, 0.951413, 0.157546,
		0.156957, 0.203669, -0.966376,
		-0.951510, -0.230938, -0.203214,
		29.074585, 27.819407, 21.535994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576048, 28.488037, 21.257956>,  <29.740643, 27.981062, 21.678244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576048, 28.488037, 21.257956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225311, 28.342651, 21.383839>,  <29.014870, 28.255421, 21.459368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225311, 28.342651, 21.383839>,  <29.576048, 28.488037, 21.257956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225311, 28.342651, 21.383839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353724, 0.931036, 0.089727,
		-0.325615, -0.032642, -0.944939,
		-0.876843, -0.363464, 0.314706,
		28.962257, 28.233612, 21.478251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098806, 28.887186, 21.017803>,  <29.576048, 28.488037, 21.257956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098806, 28.887186, 21.017803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860611, 28.698338, 21.277802>,  <28.717693, 28.585028, 21.433800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.860611, 28.698338, 21.277802>,  <29.098806, 28.887186, 21.017803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860611, 28.698338, 21.277802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410769, 0.874268, 0.258698,
		-0.690407, -0.112946, -0.714550,
		-0.595489, -0.472122, 0.649995,
		28.681965, 28.556702, 21.472799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435038, 29.223099, 20.856407>,  <29.098806, 28.887186, 21.017803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435038, 29.223099, 20.856407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402676, 29.040035, 21.210583>,  <28.383259, 28.930197, 21.423088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402676, 29.040035, 21.210583>,  <28.435038, 29.223099, 20.856407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402676, 29.040035, 21.210583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505199, 0.784613, 0.359383,
		-0.859202, -0.418248, -0.294686,
		-0.080903, -0.457657, 0.885440,
		28.378405, 28.902739, 21.476215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674706, 29.147249, 20.982271>,  <28.435038, 29.223099, 20.856407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674706, 29.147249, 20.982271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880726, 29.132404, 21.324814>,  <28.004339, 29.123497, 21.530338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880726, 29.132404, 21.324814>,  <27.674706, 29.147249, 20.982271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880726, 29.132404, 21.324814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623014, 0.669960, 0.403743,
		-0.588706, -0.741469, 0.321944,
		0.515053, -0.037110, 0.856355,
		28.035242, 29.121271, 21.581720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.182215, 29.046669, 21.516592>,  <27.674706, 29.147249, 20.982271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.182215, 29.046669, 21.516592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505127, 29.226528, 21.669491>,  <27.698874, 29.334444, 21.761230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505127, 29.226528, 21.669491>,  <27.182215, 29.046669, 21.516592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505127, 29.226528, 21.669491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576080, 0.741058, 0.344914,
		-0.128179, -0.498648, 0.857275,
		0.807281, 0.449648, 0.382249,
		27.747311, 29.361423, 21.784166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960688, 29.282928, 22.155014>,  <27.182215, 29.046669, 21.516592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.960688, 29.282928, 22.155014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299675, 29.491409, 22.114716>,  <27.503067, 29.616497, 22.090536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299675, 29.491409, 22.114716>,  <26.960688, 29.282928, 22.155014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299675, 29.491409, 22.114716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416691, 0.770711, 0.482050,
		0.328891, -0.366542, 0.870332,
		0.847466, 0.521201, -0.100745,
		27.553915, 29.647770, 22.084492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082088, 29.625410, 22.847292>,  <26.960688, 29.282928, 22.155014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082088, 29.625410, 22.847292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250383, 29.803600, 22.531181>,  <27.351360, 29.910515, 22.341515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250383, 29.803600, 22.531181>,  <27.082088, 29.625410, 22.847292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250383, 29.803600, 22.531181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406276, 0.871414, 0.274914,
		0.811123, 0.205404, 0.547621,
		0.420736, 0.445474, -0.790275,
		27.376604, 29.937243, 22.294100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021397, 30.222519, 23.097221>,  <27.082088, 29.625410, 22.847292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021397, 30.222519, 23.097221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157307, 30.305637, 22.730316>,  <27.238853, 30.355509, 22.510172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157307, 30.305637, 22.730316>,  <27.021397, 30.222519, 23.097221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157307, 30.305637, 22.730316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559480, 0.828614, -0.019532,
		0.755998, 0.519828, 0.397801,
		0.339777, 0.207795, -0.917264,
		27.259239, 30.367975, 22.455137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212900, 30.905119, 23.145163>,  <27.021397, 30.222519, 23.097221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212900, 30.905119, 23.145163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139915, 30.840733, 22.757183>,  <27.096125, 30.802101, 22.524395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139915, 30.840733, 22.757183>,  <27.212900, 30.905119, 23.145163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139915, 30.840733, 22.757183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602003, 0.798263, -0.019229,
		0.777368, 0.580402, -0.242552,
		-0.182460, -0.160965, -0.969948,
		27.085178, 30.792442, 22.466198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396614, 31.494076, 22.825592>,  <27.212900, 30.905119, 23.145163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396614, 31.494076, 22.825592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135952, 31.324169, 22.574223>,  <26.979555, 31.222225, 22.423401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135952, 31.324169, 22.574223>,  <27.396614, 31.494076, 22.825592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135952, 31.324169, 22.574223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503959, 0.861653, -0.059821,
		0.566893, 0.277717, -0.775568,
		-0.651657, -0.424767, -0.628424,
		26.940454, 31.196739, 22.385696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112627, 32.063869, 22.602667>,  <27.396614, 31.494076, 22.825592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112627, 32.063869, 22.602667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892517, 31.794552, 22.405132>,  <26.760450, 31.632961, 22.286612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892517, 31.794552, 22.405132>,  <27.112627, 32.063869, 22.602667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892517, 31.794552, 22.405132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562642, 0.735989, -0.376503,
		0.616954, 0.070672, -0.783820,
		-0.550275, -0.673295, -0.493834,
		26.727434, 31.592564, 22.256983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989487, 32.301674, 21.907370>,  <27.112627, 32.063869, 22.602667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989487, 32.301674, 21.907370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696253, 32.035343, 21.962883>,  <26.520313, 31.875544, 21.996191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696253, 32.035343, 21.962883>,  <26.989487, 32.301674, 21.907370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696253, 32.035343, 21.962883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655777, 0.637830, -0.403893,
		0.180404, -0.387097, -0.904218,
		-0.733083, -0.665830, 0.138782,
		26.476328, 31.835594, 22.004519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608767, 32.352509, 21.246023>,  <26.989487, 32.301674, 21.907370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608767, 32.352509, 21.246023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359097, 32.174675, 21.503006>,  <26.209295, 32.067974, 21.657196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359097, 32.174675, 21.503006>,  <26.608767, 32.352509, 21.246023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359097, 32.174675, 21.503006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780904, 0.380724, -0.495216,
		-0.024434, -0.810798, -0.584815,
		-0.624173, -0.444585, 0.642458,
		26.171844, 32.041298, 21.695744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891647, 32.061291, 20.869490>,  <26.608767, 32.352509, 21.246023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891647, 32.061291, 20.869490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821449, 32.132374, 21.256813>,  <25.779331, 32.175026, 21.489206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.821449, 32.132374, 21.256813>,  <25.891647, 32.061291, 20.869490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.821449, 32.132374, 21.256813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883566, 0.405350, -0.234528,
		-0.434181, -0.896722, 0.085882,
		-0.175494, 0.177710, 0.968308,
		25.768801, 32.185688, 21.547306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185932, 31.841057, 21.029037>,  <25.891647, 32.061291, 20.869490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.185932, 31.841057, 21.029037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251110, 32.100193, 21.326694>,  <25.290216, 32.255676, 21.505289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251110, 32.100193, 21.326694>,  <25.185932, 31.841057, 21.029037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251110, 32.100193, 21.326694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909823, 0.390427, -0.140675,
		-0.381669, -0.654116, 0.653040,
		0.162947, 0.647842, 0.744143,
		25.299994, 32.294544, 21.549938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.660776, 31.733852, 21.417912>,  <25.185932, 31.841057, 21.029037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.660776, 31.733852, 21.417912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.784834, 32.107857, 21.486687>,  <24.859268, 32.332260, 21.527952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.784834, 32.107857, 21.486687>,  <24.660776, 31.733852, 21.417912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.784834, 32.107857, 21.486687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889794, 0.349177, -0.293839,
		-0.334780, -0.061859, 0.940264,
		0.310142, 0.935013, 0.171939,
		24.877876, 32.388359, 21.538269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.167101, 32.074543, 21.762136>,  <24.660776, 31.733852, 21.417912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.167101, 32.074543, 21.762136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383530, 32.361595, 21.586750>,  <24.513386, 32.533825, 21.481518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383530, 32.361595, 21.586750>,  <24.167101, 32.074543, 21.762136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.383530, 32.361595, 21.586750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829919, 0.371365, -0.416321,
		-0.135933, 0.589150, 0.796508,
		0.541070, 0.717629, -0.438466,
		24.545851, 32.576885, 21.455210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.741659, 32.622856, 21.774549>,  <24.167101, 32.074543, 21.762136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.741659, 32.622856, 21.774549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.999529, 32.721222, 21.485020>,  <24.154251, 32.780243, 21.311302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.999529, 32.721222, 21.485020>,  <23.741659, 32.622856, 21.774549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.999529, 32.721222, 21.485020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734636, 0.461179, -0.497617,
		0.211441, 0.852548, 0.477969,
		0.644672, 0.245916, -0.723825,
		24.192930, 32.794998, 21.267872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.684757, 33.319023, 21.609608>,  <23.741659, 32.622856, 21.774549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.684757, 33.319023, 21.609608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.827011, 33.140831, 21.280956>,  <23.912363, 33.033916, 21.083765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.827011, 33.140831, 21.280956>,  <23.684757, 33.319023, 21.609608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.827011, 33.140831, 21.280956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794100, 0.319577, -0.516987,
		0.492879, 0.836314, -0.240101,
		0.355633, -0.445477, -0.821630,
		23.933701, 33.007187, 21.034468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.882027, 33.771313, 21.074997>,  <23.684757, 33.319023, 21.609608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.882027, 33.771313, 21.074997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.768227, 33.418243, 20.925362>,  <23.699945, 33.206402, 20.835581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.768227, 33.418243, 20.925362>,  <23.882027, 33.771313, 21.074997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.768227, 33.418243, 20.925362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883617, 0.392799, -0.254816,
		0.371862, 0.258058, -0.891698,
		-0.284500, -0.882675, -0.374091,
		23.682877, 33.153442, 20.813135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.816566, 34.093689, 21.737389>,  <23.882027, 33.771313, 21.074997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.816566, 34.093689, 21.737389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.011448, 33.761562, 21.845619>,  <24.128376, 33.562286, 21.910557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.011448, 33.761562, 21.845619>,  <23.816566, 34.093689, 21.737389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.011448, 33.761562, 21.845619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435301, 0.499502, 0.749007,
		-0.757064, -0.247136, 0.604795,
		0.487203, -0.830314, 0.270577,
		24.157608, 33.512466, 21.926792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.047171, 34.131874, 21.612799>,  <23.816566, 34.093689, 21.737389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.047171, 34.131874, 21.612799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.713596, 33.995682, 21.439075>,  <22.513453, 33.913967, 21.334841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.713596, 33.995682, 21.439075>,  <23.047171, 34.131874, 21.612799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.713596, 33.995682, 21.439075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545232, 0.629948, 0.553070,
		0.085282, 0.698025, -0.710977,
		-0.833935, -0.340481, -0.434309,
		22.463415, 33.893539, 21.308783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.633879, 34.707985, 21.373034>,  <23.047171, 34.131874, 21.612799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.633879, 34.707985, 21.373034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.415377, 34.389732, 21.477776>,  <22.284275, 34.198780, 21.540621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.415377, 34.389732, 21.477776>,  <22.633879, 34.707985, 21.373034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.415377, 34.389732, 21.477776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442327, 0.539483, 0.716453,
		-0.711303, 0.275541, -0.646627,
		-0.546256, -0.795635, 0.261856,
		22.251499, 34.151043, 21.556332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.185219, 34.936981, 21.858688>,  <22.633879, 34.707985, 21.373034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.185219, 34.936981, 21.858688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.993196, 34.885147, 22.205734>,  <21.877983, 34.854046, 22.413961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.993196, 34.885147, 22.205734>,  <22.185219, 34.936981, 21.858688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.993196, 34.885147, 22.205734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023416, -0.990570, -0.134994,
		0.876924, -0.044489, 0.478565,
		-0.480058, -0.129586, 0.867613,
		21.849178, 34.846272, 22.466019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.551231, 35.137398, 21.969284>,  <22.185219, 34.936981, 21.858688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.551231, 35.137398, 21.969284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.213392, 35.251236, 21.787888>,  <21.010689, 35.319538, 21.679049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.213392, 35.251236, 21.787888>,  <21.551231, 35.137398, 21.969284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.213392, 35.251236, 21.787888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534928, 0.484068, -0.692481,
		0.022443, -0.827455, -0.561083,
		-0.844599, 0.284598, -0.453493,
		20.960012, 35.336617, 21.651840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.641033, 35.157585, 21.268324>,  <21.551231, 35.137398, 21.969284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.641033, 35.157585, 21.268324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.372814, 35.452202, 21.303818>,  <21.211884, 35.628971, 21.325113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.372814, 35.452202, 21.303818>,  <21.641033, 35.157585, 21.268324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.372814, 35.452202, 21.303818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586307, 0.599423, -0.544918,
		-0.454544, -0.313368, -0.833781,
		-0.670548, 0.736541, 0.088734,
		21.171650, 35.673164, 21.330439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.486862, 35.480610, 20.582077>,  <21.641033, 35.157585, 21.268324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.486862, 35.480610, 20.582077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.430700, 35.758537, 20.864216>,  <21.397003, 35.925293, 21.033499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.430700, 35.758537, 20.864216>,  <21.486862, 35.480610, 20.582077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.430700, 35.758537, 20.864216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819878, 0.480971, -0.310590,
		-0.555055, 0.534689, -0.637198,
		-0.140405, 0.694820, 0.705345,
		21.388578, 35.966984, 21.075819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.659845, 36.181217, 20.274950>,  <21.486862, 35.480610, 20.582077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.659845, 36.181217, 20.274950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.638746, 36.270931, 20.664188>,  <21.626087, 36.324760, 20.897732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.638746, 36.270931, 20.664188>,  <21.659845, 36.181217, 20.274950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.638746, 36.270931, 20.664188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812016, 0.576820, -0.088932,
		-0.581247, 0.785479, -0.212545,
		-0.052746, 0.224282, 0.973096,
		21.622923, 36.338215, 20.956118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.764448, 36.922977, 20.306696>,  <21.659845, 36.181217, 20.274950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.764448, 36.922977, 20.306696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.880093, 36.749069, 20.647846>,  <21.949480, 36.644726, 20.852535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.880093, 36.749069, 20.647846>,  <21.764448, 36.922977, 20.306696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.880093, 36.749069, 20.647846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800190, 0.598783, 0.033987,
		-0.525463, 0.672635, 0.521010,
		0.289111, -0.434766, 0.852874,
		21.966825, 36.618641, 20.903708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.036524, 37.552502, 20.704811>,  <21.764448, 36.922977, 20.306696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.036524, 37.552502, 20.704811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.151152, 37.214111, 20.884678>,  <22.219929, 37.011078, 20.992598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.151152, 37.214111, 20.884678>,  <22.036524, 37.552502, 20.704811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.151152, 37.214111, 20.884678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828081, 0.454764, 0.327830,
		-0.481829, 0.278416, 0.830858,
		0.286571, -0.845976, 0.449669,
		22.237123, 36.960320, 21.019579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.196560, 37.691563, 21.410877>,  <22.036524, 37.552502, 20.704811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.196560, 37.691563, 21.410877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.405876, 37.362766, 21.320988>,  <22.531466, 37.165489, 21.267054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.405876, 37.362766, 21.320988>,  <22.196560, 37.691563, 21.410877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.405876, 37.362766, 21.320988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845892, 0.469150, 0.253703,
		-0.103111, -0.322854, 0.940815,
		0.523292, -0.821988, -0.224725,
		22.562864, 37.116169, 21.253571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.691977, 37.708801, 21.854311>,  <22.196560, 37.691563, 21.410877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.691977, 37.708801, 21.854311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.823524, 37.480118, 21.553646>,  <22.902454, 37.342907, 21.373247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.823524, 37.480118, 21.553646>,  <22.691977, 37.708801, 21.854311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.823524, 37.480118, 21.553646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896873, 0.438333, 0.059012,
		0.295740, -0.693551, 0.656905,
		0.328871, -0.571708, -0.751660,
		22.922186, 37.308605, 21.328148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.373055, 37.503998, 22.097256>,  <22.691977, 37.708801, 21.854311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.373055, 37.503998, 22.097256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.374817, 37.452732, 21.700558>,  <23.375874, 37.421970, 21.462540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.374817, 37.452732, 21.700558>,  <23.373055, 37.503998, 22.097256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.374817, 37.452732, 21.700558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872602, 0.484880, -0.058788,
		0.488411, -0.865138, 0.113975,
		0.004405, -0.128168, -0.991743,
		23.376139, 37.414280, 21.403034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.028992, 37.294823, 21.948618>,  <23.373055, 37.503998, 22.097256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.028992, 37.294823, 21.948618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.878845, 37.470432, 21.622097>,  <23.788757, 37.575798, 21.426184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.878845, 37.470432, 21.622097>,  <24.028992, 37.294823, 21.948618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.878845, 37.470432, 21.622097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744294, 0.667641, 0.016819,
		0.552382, -0.601256, -0.577377,
		-0.375368, 0.439029, -0.816304,
		23.766235, 37.602142, 21.377205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.605721, 37.512035, 21.526403>,  <24.028992, 37.294823, 21.948618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.605721, 37.512035, 21.526403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334660, 37.724239, 21.322697>,  <24.172024, 37.851562, 21.200474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334660, 37.724239, 21.322697>,  <24.605721, 37.512035, 21.526403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.334660, 37.724239, 21.322697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673536, 0.725730, -0.140236,
		0.295192, -0.438039, -0.849107,
		-0.677651, 0.530508, -0.509265,
		24.131365, 37.883392, 21.169918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906309, 37.661263, 20.932661>,  <24.605721, 37.512035, 21.526403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.906309, 37.661263, 20.932661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604284, 37.920834, 20.970123>,  <24.423069, 38.076576, 20.992599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604284, 37.920834, 20.970123>,  <24.906309, 37.661263, 20.932661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.604284, 37.920834, 20.970123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600862, 0.742029, -0.297251,
		-0.262390, -0.168169, -0.950195,
		-0.755061, 0.648932, 0.093654,
		24.377766, 38.115513, 20.998220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.991491, 37.980984, 20.402864>,  <24.906309, 37.661263, 20.932661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.991491, 37.980984, 20.402864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.768988, 38.238434, 20.613129>,  <24.635485, 38.392902, 20.739286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.768988, 38.238434, 20.613129>,  <24.991491, 37.980984, 20.402864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.768988, 38.238434, 20.613129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472843, 0.765319, -0.436700,
		-0.683369, 0.005636, -0.730051,
		-0.556260, 0.643627, 0.525660,
		24.602110, 38.431522, 20.770826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.743664, 38.500889, 19.908201>,  <24.991491, 37.980984, 20.402864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.743664, 38.500889, 19.908201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723450, 38.665318, 20.272282>,  <24.711321, 38.763977, 20.490730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.723450, 38.665318, 20.272282>,  <24.743664, 38.500889, 19.908201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.723450, 38.665318, 20.272282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455059, 0.820740, -0.345407,
		-0.889026, 0.396740, -0.228539,
		-0.050534, 0.411075, 0.910200,
		24.708290, 38.788639, 20.545341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.541271, 39.154034, 19.814859>,  <24.743664, 38.500889, 19.908201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.541271, 39.154034, 19.814859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716858, 39.162998, 20.174149>,  <24.822210, 39.168377, 20.389723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716858, 39.162998, 20.174149>,  <24.541271, 39.154034, 19.814859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.716858, 39.162998, 20.174149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634297, 0.700312, -0.327460,
		-0.636377, 0.713485, 0.293197,
		0.438967, 0.022414, 0.898223,
		24.848549, 39.169724, 20.443615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.783003, 39.853527, 19.828274>,  <24.541271, 39.154034, 19.814859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.783003, 39.853527, 19.828274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.984411, 39.663845, 20.117161>,  <25.105255, 39.550037, 20.290493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.984411, 39.663845, 20.117161>,  <24.783003, 39.853527, 19.828274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.984411, 39.663845, 20.117161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807373, 0.555859, -0.197914,
		-0.307599, 0.682752, 0.662747,
		0.503520, -0.474206, 0.722216,
		25.135468, 39.521584, 20.333826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076307, 40.341942, 20.351414>,  <24.783003, 39.853527, 19.828274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076307, 40.341942, 20.351414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297432, 40.009888, 20.322361>,  <25.430107, 39.810654, 20.304930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297432, 40.009888, 20.322361>,  <25.076307, 40.341942, 20.351414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.297432, 40.009888, 20.322361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799239, 0.552858, -0.235720,
		0.235834, 0.072259, 0.969103,
		0.552810, -0.830136, -0.072630,
		25.463274, 39.760845, 20.300571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740110, 40.579918, 20.476248>,  <25.076307, 40.341942, 20.351414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740110, 40.579918, 20.476248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835960, 40.208813, 20.361820>,  <25.893471, 39.986149, 20.293163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835960, 40.208813, 20.361820>,  <25.740110, 40.579918, 20.476248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835960, 40.208813, 20.361820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884803, 0.329973, -0.329001,
		0.399631, -0.174280, 0.899957,
		0.239623, -0.927763, -0.286071,
		25.907848, 39.930485, 20.275999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408871, 40.508469, 20.713955>,  <25.740110, 40.579918, 20.476248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408871, 40.508469, 20.713955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343931, 40.231915, 20.432350>,  <26.304968, 40.065983, 20.263388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343931, 40.231915, 20.432350>,  <26.408871, 40.508469, 20.713955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343931, 40.231915, 20.432350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849958, 0.264427, -0.455687,
		0.501213, -0.672362, 0.544715,
		-0.162349, -0.691381, -0.704013,
		26.295227, 40.024502, 20.221146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033428, 40.156944, 20.728765>,  <26.408871, 40.508469, 20.713955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033428, 40.156944, 20.728765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.846819, 40.121105, 20.376781>,  <26.734854, 40.099602, 20.165590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.846819, 40.121105, 20.376781>,  <27.033428, 40.156944, 20.728765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846819, 40.121105, 20.376781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740918, 0.503798, -0.444104,
		0.483115, -0.859162, -0.168645,
		-0.466521, -0.089601, -0.879961,
		26.706863, 40.094227, 20.112793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618782, 40.022396, 20.220205>,  <27.033428, 40.156944, 20.728765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618782, 40.022396, 20.220205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290434, 40.116447, 20.012020>,  <27.093424, 40.172878, 19.887108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.290434, 40.116447, 20.012020>,  <27.618782, 40.022396, 20.220205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290434, 40.116447, 20.012020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548573, 0.578104, -0.604039,
		0.158857, -0.781353, -0.603533,
		-0.820873, 0.235126, -0.520465,
		27.044172, 40.186985, 19.855881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728191, 39.753330, 19.494038>,  <27.618782, 40.022396, 20.220205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728191, 39.753330, 19.494038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457945, 40.048141, 19.501328>,  <27.295797, 40.225029, 19.505701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457945, 40.048141, 19.501328>,  <27.728191, 39.753330, 19.494038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457945, 40.048141, 19.501328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611626, 0.574125, -0.544329,
		-0.411648, -0.356613, -0.838673,
		-0.675618, 0.737027, 0.018224,
		27.255259, 40.269249, 19.506794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307585, 39.917831, 18.833191>,  <27.728191, 39.753330, 19.494038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307585, 39.917831, 18.833191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398300, 40.214378, 19.085838>,  <27.452730, 40.392307, 19.237427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398300, 40.214378, 19.085838>,  <27.307585, 39.917831, 18.833191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398300, 40.214378, 19.085838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712695, 0.315678, -0.626429,
		-0.663801, 0.592220, -0.456774,
		0.226791, 0.741365, 0.631620,
		27.466337, 40.436787, 19.275324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373215, 40.533340, 18.447622>,  <27.307585, 39.917831, 18.833191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373215, 40.533340, 18.447622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594957, 40.571148, 18.778381>,  <27.728003, 40.593834, 18.976837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594957, 40.571148, 18.778381>,  <27.373215, 40.533340, 18.447622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594957, 40.571148, 18.778381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696208, 0.491746, -0.522953,
		-0.456054, 0.865593, 0.206794,
		0.554354, 0.094523, 0.826896,
		27.761263, 40.599506, 19.026449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129198, 40.800980, 18.308718>,  <27.373215, 40.533340, 18.447622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129198, 40.800980, 18.308718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311193, 40.761505, 17.954712>,  <28.420391, 40.737820, 17.742310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.311193, 40.761505, 17.954712>,  <28.129198, 40.800980, 18.308718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.311193, 40.761505, 17.954712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334125, 0.940148, 0.066941,
		0.825437, -0.326162, 0.460729,
		0.454987, -0.098686, -0.885013,
		28.447689, 40.731899, 17.689209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735804, 40.529629, 17.793436>,  <28.129198, 40.800980, 18.308718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735804, 40.529629, 17.793436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714437, 40.322578, 17.451862>,  <27.701618, 40.198349, 17.246918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.714437, 40.322578, 17.451862>,  <27.735804, 40.529629, 17.793436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.714437, 40.322578, 17.451862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884658, -0.372120, 0.280903,
		-0.463170, 0.770446, -0.438048,
		-0.053414, -0.517629, -0.853936,
		27.698414, 40.167290, 17.195681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124138, 40.822689, 17.402897>,  <27.735804, 40.529629, 17.793436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124138, 40.822689, 17.402897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201946, 40.447693, 17.287464>,  <27.248631, 40.222694, 17.218204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201946, 40.447693, 17.287464>,  <27.124138, 40.822689, 17.402897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201946, 40.447693, 17.287464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975487, -0.215747, 0.043343,
		-0.102894, 0.273075, -0.956474,
		0.194520, -0.937488, -0.288580,
		27.260302, 40.166447, 17.200890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681601, 40.598770, 16.873543>,  <27.124138, 40.822689, 17.402897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681601, 40.598770, 16.873543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780531, 40.257729, 17.057674>,  <26.839890, 40.053104, 17.168154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780531, 40.257729, 17.057674>,  <26.681601, 40.598770, 16.873543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780531, 40.257729, 17.057674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968017, -0.196781, 0.155632,
		-0.042108, -0.484099, -0.873999,
		0.247328, -0.852599, 0.460330,
		26.854729, 40.001949, 17.195774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.523005, 40.455109, 16.102764>,  <26.681601, 40.598770, 16.873543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.523005, 40.455109, 16.102764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447315, 40.799129, 15.913236>,  <26.401901, 41.005543, 15.799519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.447315, 40.799129, 15.913236>,  <26.523005, 40.455109, 16.102764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447315, 40.799129, 15.913236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977368, -0.211444, 0.006517,
		-0.094581, 0.464330, 0.880597,
		-0.189223, 0.860051, -0.473820,
		26.390549, 41.057144, 15.771090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051739, 40.956310, 16.486956>,  <26.523005, 40.455109, 16.102764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051739, 40.956310, 16.486956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999865, 41.023163, 16.096008>,  <25.968740, 41.063274, 15.861440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.999865, 41.023163, 16.096008>,  <26.051739, 40.956310, 16.486956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999865, 41.023163, 16.096008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988071, -0.104348, 0.113260,
		-0.083057, 0.980398, 0.178668,
		-0.129683, 0.167130, -0.977369,
		25.960960, 41.073303, 15.802797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706097, 41.663418, 16.385487>,  <26.051739, 40.956310, 16.486956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706097, 41.663418, 16.385487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630775, 41.373665, 16.120213>,  <25.585583, 41.199814, 15.961048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630775, 41.373665, 16.120213>,  <25.706097, 41.663418, 16.385487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630775, 41.373665, 16.120213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945258, -0.049569, 0.322537,
		-0.266513, 0.687616, -0.675392,
		-0.188304, -0.724380, -0.663185,
		25.574284, 41.156349, 15.921257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.053200, 41.802814, 16.042173>,  <25.706097, 41.663418, 16.385487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.053200, 41.802814, 16.042173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143089, 41.413239, 16.054474>,  <25.197023, 41.179493, 16.061855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143089, 41.413239, 16.054474>,  <25.053200, 41.802814, 16.042173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143089, 41.413239, 16.054474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855749, -0.182164, 0.484263,
		-0.466039, -0.135143, -0.874382,
		0.224725, -0.973936, 0.030753,
		25.210506, 41.121056, 16.063700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.423794, 41.440243, 15.789511>,  <25.053200, 41.802814, 16.042173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.423794, 41.440243, 15.789511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641161, 41.253925, 16.068863>,  <24.771582, 41.142136, 16.236475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641161, 41.253925, 16.068863>,  <24.423794, 41.440243, 15.789511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.641161, 41.253925, 16.068863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838474, -0.341506, 0.424658,
		0.040699, -0.816342, -0.576133,
		0.543419, -0.465790, 0.698380,
		24.804186, 41.114189, 16.278378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.152351, 40.832005, 15.832359>,  <24.423794, 41.440243, 15.789511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.152351, 40.832005, 15.832359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.366043, 40.825497, 16.170433>,  <24.494259, 40.821594, 16.373278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.366043, 40.825497, 16.170433>,  <24.152351, 40.832005, 15.832359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.366043, 40.825497, 16.170433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779076, -0.397514, 0.484792,
		0.328086, -0.917452, -0.225036,
		0.534228, -0.016266, 0.845184,
		24.526312, 40.820618, 16.423988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.997580, 40.164341, 16.087416>,  <24.152351, 40.832005, 15.832359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.997580, 40.164341, 16.087416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.139479, 40.344688, 16.415043>,  <24.224617, 40.452896, 16.611620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.139479, 40.344688, 16.415043>,  <23.997580, 40.164341, 16.087416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.139479, 40.344688, 16.415043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772578, -0.352032, 0.528391,
		0.526573, -0.820239, 0.223449,
		0.354746, 0.450868, 0.819069,
		24.245903, 40.479950, 16.660763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.129538, 39.616100, 16.484911>,  <23.997580, 40.164341, 16.087416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.129538, 39.616100, 16.484911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.112881, 39.936035, 16.724419>,  <24.102886, 40.127998, 16.868122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.112881, 39.936035, 16.724419>,  <24.129538, 39.616100, 16.484911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.112881, 39.936035, 16.724419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579885, -0.507371, 0.637423,
		0.813633, -0.320674, 0.484943,
		-0.041641, 0.799839, 0.598768,
		24.100388, 40.175987, 16.904049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.322216, 39.446671, 17.222963>,  <24.129538, 39.616100, 16.484911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.322216, 39.446671, 17.222963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.069189, 39.756474, 17.223736>,  <23.917374, 39.942356, 17.224199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.069189, 39.756474, 17.223736>,  <24.322216, 39.446671, 17.222963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.069189, 39.756474, 17.223736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527348, -0.432530, 0.731315,
		0.567242, 0.461586, 0.682037,
		-0.632567, 0.774504, 0.001933,
		23.879419, 39.988823, 17.224316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.080275, 39.559910, 17.960669>,  <24.322216, 39.446671, 17.222963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.080275, 39.559910, 17.960669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.796057, 39.751328, 17.754322>,  <23.625526, 39.866180, 17.630514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.796057, 39.751328, 17.754322>,  <24.080275, 39.559910, 17.960669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.796057, 39.751328, 17.754322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702892, -0.516795, 0.488739,
		-0.032712, 0.709869, 0.703573,
		-0.710544, 0.478549, -0.515867,
		23.582893, 39.894894, 17.599562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.647087, 39.980827, 18.459185>,  <24.080275, 39.559910, 17.960669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.647087, 39.980827, 18.459185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.437248, 39.911613, 18.125751>,  <23.311346, 39.870083, 17.925692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.437248, 39.911613, 18.125751>,  <23.647087, 39.980827, 18.459185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.437248, 39.911613, 18.125751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782091, -0.288884, 0.552159,
		-0.336353, 0.941596, 0.016215,
		-0.524595, -0.173039, -0.833581,
		23.279869, 39.859703, 17.875677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.008711, 40.141872, 18.782692>,  <23.647087, 39.980827, 18.459185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.008711, 40.141872, 18.782692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.918900, 39.983208, 18.426659>,  <22.865013, 39.888008, 18.213039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.918900, 39.983208, 18.426659>,  <23.008711, 40.141872, 18.782692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.918900, 39.983208, 18.426659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696111, -0.573903, 0.431352,
		-0.681922, 0.716447, -0.147262,
		-0.224527, -0.396659, -0.890084,
		22.851542, 39.864208, 18.159634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.321110, 40.208012, 18.684822>,  <23.008711, 40.141872, 18.782692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.321110, 40.208012, 18.684822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.433550, 39.903725, 18.450798>,  <22.501015, 39.721153, 18.310383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.433550, 39.903725, 18.450798>,  <22.321110, 40.208012, 18.684822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.433550, 39.903725, 18.450798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681554, -0.587442, 0.436344,
		-0.675622, 0.276094, -0.683598,
		0.281102, -0.760713, -0.585062,
		22.517881, 39.675510, 18.275280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.694571, 39.948669, 18.453562>,  <22.321110, 40.208012, 18.684822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.694571, 39.948669, 18.453562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.956665, 39.653954, 18.386856>,  <22.113922, 39.477123, 18.346832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.956665, 39.653954, 18.386856>,  <21.694571, 39.948669, 18.453562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.956665, 39.653954, 18.386856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677638, -0.670833, 0.301312,
		-0.333872, -0.084426, -0.938830,
		0.655237, -0.736787, -0.166763,
		22.153236, 39.432919, 18.336826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.339781, 39.481647, 18.034702>,  <21.694571, 39.948669, 18.453562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.339781, 39.481647, 18.034702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.642191, 39.305229, 18.228157>,  <21.823637, 39.199379, 18.344231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.642191, 39.305229, 18.228157>,  <21.339781, 39.481647, 18.034702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.642191, 39.305229, 18.228157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639099, -0.656967, 0.399934,
		0.141344, -0.611452, -0.778555,
		0.756025, -0.441045, 0.483637,
		21.868999, 39.172916, 18.373249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.211445, 38.783920, 17.875519>,  <21.339781, 39.481647, 18.034702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.211445, 38.783920, 17.875519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.462965, 38.795845, 18.186317>,  <21.613876, 38.802998, 18.372797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.462965, 38.795845, 18.186317>,  <21.211445, 38.783920, 17.875519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.462965, 38.795845, 18.186317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582811, -0.643416, 0.496334,
		0.514726, -0.764936, -0.387207,
		0.628799, 0.029808, 0.776997,
		21.651604, 38.804787, 18.419416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.114574, 38.169460, 18.243397>,  <21.211445, 38.783920, 17.875519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.114574, 38.169460, 18.243397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.328028, 38.369732, 18.516029>,  <21.456100, 38.489895, 18.679609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.328028, 38.369732, 18.516029>,  <21.114574, 38.169460, 18.243397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.328028, 38.369732, 18.516029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397505, -0.562860, 0.724692,
		0.746476, -0.657651, -0.101336,
		0.533633, 0.500684, 0.681581,
		21.488117, 38.519936, 18.720503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.534248, 37.719952, 18.645893>,  <21.114574, 38.169460, 18.243397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.534248, 37.719952, 18.645893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.467415, 38.039120, 18.877552>,  <21.427315, 38.230621, 19.016548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.467415, 38.039120, 18.877552>,  <21.534248, 37.719952, 18.645893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.467415, 38.039120, 18.877552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390463, -0.592929, 0.704254,
		0.905329, -0.108466, 0.410626,
		-0.167085, 0.797916, 0.579148,
		21.417290, 38.278496, 19.051296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.624548, 37.463768, 19.262835>,  <21.534248, 37.719952, 18.645893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.624548, 37.463768, 19.262835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.431501, 37.807438, 19.330837>,  <21.315674, 38.013641, 19.371639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.431501, 37.807438, 19.330837>,  <21.624548, 37.463768, 19.262835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.431501, 37.807438, 19.330837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389535, -0.384421, 0.836949,
		0.784439, 0.337699, 0.520206,
		-0.482615, 0.859174, 0.170009,
		21.286716, 38.065189, 19.381840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.578850, 37.597965, 19.952930>,  <21.624548, 37.463768, 19.262835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.578850, 37.597965, 19.952930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.276648, 37.831970, 19.834961>,  <21.095327, 37.972374, 19.764179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.276648, 37.831970, 19.834961>,  <21.578850, 37.597965, 19.952930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.276648, 37.831970, 19.834961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445093, -0.128005, 0.886288,
		0.480735, 0.800862, 0.357091,
		-0.755504, 0.585008, -0.294921,
		21.049995, 38.007473, 19.746485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313988, 38.205364, 20.476612>,  <21.578850, 37.597965, 19.952930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313988, 38.205364, 20.476612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.008810, 38.072266, 20.254910>,  <20.825703, 37.992409, 20.121889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.008810, 38.072266, 20.254910>,  <21.313988, 38.205364, 20.476612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.008810, 38.072266, 20.254910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597221, 0.034578, 0.801331,
		-0.247474, 0.942383, -0.225103,
		-0.762944, -0.332744, -0.554254,
		20.779926, 37.972443, 20.088633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.849718, 38.259060, 20.962843>,  <21.313988, 38.205364, 20.476612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.849718, 38.259060, 20.962843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.603037, 38.159462, 20.664131>,  <20.455029, 38.099705, 20.484905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.603037, 38.159462, 20.664131>,  <20.849718, 38.259060, 20.962843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.603037, 38.159462, 20.664131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769774, -0.007719, 0.638269,
		-0.164689, 0.968475, -0.186908,
		-0.616705, -0.248992, -0.746778,
		20.418026, 38.084763, 20.440098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.347517, 38.747185, 21.038757>,  <20.849718, 38.259060, 20.962843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.347517, 38.747185, 21.038757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.197832, 38.422264, 20.859814>,  <20.108021, 38.227310, 20.752447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.197832, 38.422264, 20.859814>,  <20.347517, 38.747185, 21.038757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.197832, 38.422264, 20.859814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777894, 0.012351, 0.628274,
		-0.504823, 0.583106, -0.636507,
		-0.374212, -0.812302, -0.447360,
		20.085569, 38.178574, 20.725605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.696644, 38.901749, 20.890572>,  <20.347517, 38.747185, 21.038757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.696644, 38.901749, 20.890572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.708517, 38.501938, 20.887325>,  <19.715641, 38.262051, 20.885378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.708517, 38.501938, 20.887325>,  <19.696644, 38.901749, 20.890572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.708517, 38.501938, 20.887325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738305, -0.027398, 0.673910,
		-0.673813, -0.014014, -0.738769,
		0.029685, -0.999527, -0.008115,
		19.717422, 38.202080, 20.884892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979309, 38.544117, 20.784918>,  <19.696644, 38.901749, 20.890572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979309, 38.544117, 20.784918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.227465, 38.317280, 21.001629>,  <19.376358, 38.181179, 21.131657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.227465, 38.317280, 21.001629>,  <18.979309, 38.544117, 20.784918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.227465, 38.317280, 21.001629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614347, 0.078037, 0.785168,
		-0.487543, -0.819948, -0.299979,
		0.620387, -0.567094, 0.541779,
		19.413582, 38.147152, 21.164162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.557102, 38.062355, 21.007462>,  <18.979309, 38.544117, 20.784918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.557102, 38.062355, 21.007462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.852713, 38.078205, 21.276466>,  <19.030079, 38.087715, 21.437868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.852713, 38.078205, 21.276466>,  <18.557102, 38.062355, 21.007462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.852713, 38.078205, 21.276466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648989, -0.225887, 0.726490,
		0.180702, -0.973347, -0.141217,
		0.739026, 0.039630, 0.672510,
		19.074421, 38.090096, 21.478220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.501839, 37.523697, 21.415815>,  <18.557102, 38.062355, 21.007462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.501839, 37.523697, 21.415815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.675999, 37.813995, 21.628876>,  <18.780495, 37.988174, 21.756712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.675999, 37.813995, 21.628876>,  <18.501839, 37.523697, 21.415815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.675999, 37.813995, 21.628876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658917, -0.146236, 0.737864,
		0.613398, -0.672237, 0.414538,
		0.435399, 0.725750, 0.532649,
		18.806618, 38.031719, 21.788670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.744556, 37.278507, 22.056704>,  <18.501839, 37.523697, 21.415815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.744556, 37.278507, 22.056704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.611723, 37.655457, 22.072926>,  <18.532022, 37.881626, 22.082659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.611723, 37.655457, 22.072926>,  <18.744556, 37.278507, 22.056704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.611723, 37.655457, 22.072926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772563, -0.296407, 0.561506,
		0.541172, 0.155134, 0.826478,
		-0.332083, 0.942378, 0.040557,
		18.512098, 37.938171, 22.085093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.457245, 37.349117, 22.774141>,  <18.744556, 37.278507, 22.056704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.457245, 37.349117, 22.774141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.281107, 37.604507, 22.521652>,  <18.175425, 37.757744, 22.370159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.281107, 37.604507, 22.521652>,  <18.457245, 37.349117, 22.774141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.281107, 37.604507, 22.521652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896992, -0.282493, 0.340005,
		0.038770, 0.715920, 0.697105,
		-0.440343, 0.638480, -0.631222,
		18.149004, 37.796051, 22.332285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.060404, 37.869297, 23.140526>,  <18.457245, 37.349117, 22.774141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.060404, 37.869297, 23.140526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.905642, 37.781376, 22.782310>,  <17.812784, 37.728622, 22.567381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.905642, 37.781376, 22.782310>,  <18.060404, 37.869297, 23.140526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.905642, 37.781376, 22.782310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861929, -0.258916, 0.435936,
		-0.327691, 0.940557, -0.089282,
		-0.386906, -0.219808, -0.895538,
		17.789570, 37.715435, 22.513649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.094725, 26.553547, 16.849483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.491936, 26.507412, 16.839748>,  <30.730263, 26.479731, 16.833908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.491936, 26.507412, 16.839748>,  <30.094725, 26.553547, 16.849483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491936, 26.507412, 16.839748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117133, 0.942336, 0.313500,
		-0.013223, -0.314165, 0.949276,
		0.993028, -0.115337, -0.024338,
		30.789845, 26.472811, 16.832447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377417, 26.957314, 17.466448>,  <30.094725, 26.553547, 16.849483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377417, 26.957314, 17.466448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.679874, 26.921391, 17.207161>,  <30.861349, 26.899836, 17.051590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.679874, 26.921391, 17.207161>,  <30.377417, 26.957314, 17.466448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679874, 26.921391, 17.207161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348661, 0.893529, 0.282917,
		0.553790, -0.439933, 0.706948,
		0.756143, -0.089809, -0.648215,
		30.906717, 26.894447, 17.012697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034941, 27.295166, 17.855280>,  <30.377417, 26.957314, 17.466448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034941, 27.295166, 17.855280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.119160, 27.258415, 17.465977>,  <31.169691, 27.236364, 17.232395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.119160, 27.258415, 17.465977>,  <31.034941, 27.295166, 17.855280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119160, 27.258415, 17.465977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624185, 0.778852, 0.061506,
		0.752371, -0.620441, 0.221336,
		0.210549, -0.091879, -0.973256,
		31.182323, 27.230852, 17.174000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765553, 27.343771, 17.831715>,  <31.034941, 27.295166, 17.855280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765553, 27.343771, 17.831715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.584448, 27.466057, 17.496681>,  <31.475784, 27.539429, 17.295662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.584448, 27.466057, 17.496681>,  <31.765553, 27.343771, 17.831715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584448, 27.466057, 17.496681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540592, 0.841155, 0.014794,
		0.709060, -0.446092, -0.546110,
		-0.452763, 0.305713, -0.837583,
		31.448620, 27.557770, 17.245407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321022, 27.751343, 17.526514>,  <31.765553, 27.343771, 17.831715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321022, 27.751343, 17.526514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.006443, 27.847214, 17.298809>,  <31.817696, 27.904736, 17.162186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.006443, 27.847214, 17.298809>,  <32.321022, 27.751343, 17.526514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006443, 27.847214, 17.298809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314764, 0.948506, -0.035502,
		0.531440, -0.207104, -0.821389,
		-0.786445, 0.239677, -0.569262,
		31.770510, 27.919117, 17.128031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595215, 28.110809, 16.945070>,  <32.321022, 27.751343, 17.526514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595215, 28.110809, 16.945070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.221279, 28.244476, 16.993088>,  <31.996918, 28.324677, 17.021898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.221279, 28.244476, 16.993088>,  <32.595215, 28.110809, 16.945070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221279, 28.244476, 16.993088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347703, 0.930061, 0.118697,
		-0.071984, 0.152702, -0.985647,
		-0.934837, 0.334168, 0.120045,
		31.940828, 28.344727, 17.029100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586357, 28.817322, 16.697876>,  <32.595215, 28.110809, 16.945070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586357, 28.817322, 16.697876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.241104, 28.792885, 16.898384>,  <32.033951, 28.778223, 17.018688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.241104, 28.792885, 16.898384>,  <32.586357, 28.817322, 16.697876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241104, 28.792885, 16.898384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032348, 0.983927, 0.175618,
		-0.503942, 0.167796, -0.847282,
		-0.863131, -0.061094, 0.501270,
		31.982164, 28.774557, 17.048765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240509, 29.344482, 16.433250>,  <32.586357, 28.817322, 16.697876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240509, 29.344482, 16.433250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.037106, 29.268585, 16.769207>,  <31.915064, 29.223047, 16.970781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.037106, 29.268585, 16.769207>,  <32.240509, 29.344482, 16.433250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037106, 29.268585, 16.769207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146990, 0.980230, 0.132452,
		-0.848419, -0.056103, -0.526344,
		-0.508507, -0.189742, 0.839892,
		31.884554, 29.211662, 17.021175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689371, 29.939047, 16.575464>,  <32.240509, 29.344482, 16.433250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689371, 29.939047, 16.575464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.684731, 29.774006, 16.939800>,  <31.681946, 29.674982, 17.158401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.684731, 29.774006, 16.939800>,  <31.689371, 29.939047, 16.575464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684731, 29.774006, 16.939800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277740, 0.876386, 0.393457,
		-0.960586, -0.248411, -0.124763,
		-0.011602, -0.412601, 0.910838,
		31.681250, 29.650225, 17.213051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996727, 30.055676, 16.905346>,  <31.689371, 29.939047, 16.575464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996727, 30.055676, 16.905346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.267756, 29.992359, 17.192635>,  <31.430372, 29.954369, 17.365007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.267756, 29.992359, 17.192635>,  <30.996727, 30.055676, 16.905346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267756, 29.992359, 17.192635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300422, 0.831805, 0.466742,
		-0.671303, -0.532020, 0.516050,
		0.677569, -0.158292, 0.718223,
		31.471025, 29.944872, 17.408102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717840, 30.011356, 17.742985>,  <30.996727, 30.055676, 16.905346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717840, 30.011356, 17.742985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.109547, 30.086426, 17.773483>,  <31.344570, 30.131468, 17.791782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.109547, 30.086426, 17.773483>,  <30.717840, 30.011356, 17.742985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109547, 30.086426, 17.773483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199541, 0.828805, 0.522748,
		0.034914, -0.527124, 0.849071,
		0.979267, 0.187675, 0.076246,
		31.403326, 30.142729, 17.796356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.832664, 30.290556, 18.403658>,  <30.717840, 30.011356, 17.742985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.832664, 30.290556, 18.403658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.128162, 30.421299, 18.167889>,  <31.305462, 30.499744, 18.026428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.128162, 30.421299, 18.167889>,  <30.832664, 30.290556, 18.403658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128162, 30.421299, 18.167889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043143, 0.849809, 0.525322,
		0.672600, -0.413510, 0.613693,
		0.738747, 0.326855, -0.589422,
		31.349787, 30.519356, 17.991062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101105, 30.662413, 18.852478>,  <30.832664, 30.290556, 18.403658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101105, 30.662413, 18.852478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.279415, 30.792721, 18.518974>,  <31.386402, 30.870905, 18.318872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.279415, 30.792721, 18.518974>,  <31.101105, 30.662413, 18.852478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279415, 30.792721, 18.518974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044044, 0.922315, 0.383920,
		0.894059, -0.207865, 0.396800,
		0.445778, 0.325770, -0.833760,
		31.413147, 30.890451, 18.268847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554356, 31.274960, 18.993496>,  <31.101105, 30.662413, 18.852478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554356, 31.274960, 18.993496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.471786, 31.306480, 18.603382>,  <31.422245, 31.325394, 18.369314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.471786, 31.306480, 18.603382>,  <31.554356, 31.274960, 18.993496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471786, 31.306480, 18.603382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242565, 0.961516, 0.129029,
		0.947920, 0.263205, -0.179366,
		-0.206424, 0.078802, -0.975284,
		31.409859, 31.330120, 18.310797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517822, 31.974323, 18.818089>,  <31.554356, 31.274960, 18.993496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517822, 31.974323, 18.818089> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.327118, 31.835941, 18.494850>,  <31.212696, 31.752913, 18.300907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.327118, 31.835941, 18.494850>,  <31.517822, 31.974323, 18.818089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327118, 31.835941, 18.494850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551224, 0.833754, -0.031727,
		0.684728, 0.430315, -0.588198,
		-0.476760, -0.345954, -0.808094,
		31.184090, 31.732155, 18.252422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589630, 32.561508, 18.307837>,  <31.517822, 31.974323, 18.818089>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589630, 32.561508, 18.307837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.282242, 32.330578, 18.197456>,  <31.097809, 32.192020, 18.131229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.282242, 32.330578, 18.197456>,  <31.589630, 32.561508, 18.307837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282242, 32.330578, 18.197456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568709, 0.813883, -0.119016,
		0.293302, 0.065475, -0.953775,
		-0.768468, -0.577328, -0.275950,
		31.051701, 32.157379, 18.114672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188902, 33.101501, 17.969219>,  <31.589630, 32.561508, 18.307837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188902, 33.101501, 17.969219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.931292, 32.796505, 17.993984>,  <30.776726, 32.613506, 18.008842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.931292, 32.796505, 17.993984>,  <31.188902, 33.101501, 17.969219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931292, 32.796505, 17.993984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762168, 0.632567, -0.137692,
		0.065827, -0.135864, -0.988538,
		-0.644024, -0.762495, 0.061912,
		30.738085, 32.567757, 18.012558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696594, 33.065990, 17.396479>,  <31.188902, 33.101501, 17.969219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696594, 33.065990, 17.396479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.500107, 32.870338, 17.684772>,  <30.382214, 32.752949, 17.857748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.500107, 32.870338, 17.684772>,  <30.696594, 33.065990, 17.396479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500107, 32.870338, 17.684772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836097, 0.496781, -0.232704,
		-0.244224, -0.716912, -0.652987,
		-0.491220, -0.489128, 0.720733,
		30.352741, 32.723598, 17.900993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034027, 33.115902, 17.092606>,  <30.696594, 33.065990, 17.396479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034027, 33.115902, 17.092606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.010063, 33.054417, 17.487125>,  <29.995686, 33.017525, 17.723837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.010063, 33.054417, 17.487125>,  <30.034027, 33.115902, 17.092606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010063, 33.054417, 17.487125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780875, 0.622713, 0.049619,
		-0.621808, -0.767202, -0.157339,
		-0.059909, -0.153716, 0.986297,
		29.992090, 33.008301, 17.783014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425243, 32.902725, 17.233385>,  <30.034027, 33.115902, 17.092606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425243, 32.902725, 17.233385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.551430, 33.069607, 17.574306>,  <29.627142, 33.169735, 17.778860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.551430, 33.069607, 17.574306>,  <29.425243, 32.902725, 17.233385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551430, 33.069607, 17.574306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824961, 0.564443, 0.029046,
		-0.468959, -0.712281, 0.522239,
		0.315464, 0.417205, 0.852304,
		29.646069, 33.194767, 17.829998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911514, 32.908363, 17.692411>,  <29.425243, 32.902725, 17.233385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911514, 32.908363, 17.692411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.157122, 33.192364, 17.830334>,  <29.304485, 33.362762, 17.913086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.157122, 33.192364, 17.830334>,  <28.911514, 32.908363, 17.692411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157122, 33.192364, 17.830334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740853, 0.669114, -0.058506,
		-0.272252, -0.219525, 0.936850,
		0.614016, 0.709996, 0.344804,
		29.341326, 33.405361, 17.933775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498840, 33.243938, 18.184521>,  <28.911514, 32.908363, 17.692411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498840, 33.243938, 18.184521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.803885, 33.490135, 18.104931>,  <28.986912, 33.637856, 18.057177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.803885, 33.490135, 18.104931>,  <28.498840, 33.243938, 18.184521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803885, 33.490135, 18.104931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626534, 0.779337, 0.009428,
		0.160871, 0.117474, 0.979960,
		0.762612, 0.615494, -0.198974,
		29.032667, 33.674782, 18.045238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377665, 33.875591, 18.582323>,  <28.498840, 33.243938, 18.184521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377665, 33.875591, 18.582323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.606098, 34.018745, 18.286816>,  <28.743158, 34.104637, 18.109510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.606098, 34.018745, 18.286816>,  <28.377665, 33.875591, 18.582323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606098, 34.018745, 18.286816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606802, 0.790156, -0.086288,
		0.552862, 0.497564, 0.668411,
		0.571083, 0.357887, -0.738770,
		28.777424, 34.126110, 18.065186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564922, 33.985249, 18.386635>,  <28.377665, 33.875591, 18.582323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564922, 33.985249, 18.386635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.180281, 33.897137, 18.452114>,  <26.949495, 33.844269, 18.491402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.180281, 33.897137, 18.452114>,  <27.564922, 33.985249, 18.386635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180281, 33.897137, 18.452114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226338, -0.973861, 0.019115,
		0.155209, 0.055432, 0.986325,
		-0.961603, -0.220276, 0.163699,
		26.891800, 33.831055, 18.501225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.646456, 33.553299, 18.894112>,  <27.564922, 33.985249, 18.386635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.646456, 33.553299, 18.894112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.284397, 33.488430, 18.736931>,  <27.067162, 33.449509, 18.642622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.284397, 33.488430, 18.736931>,  <27.646456, 33.553299, 18.894112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284397, 33.488430, 18.736931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150246, -0.986755, 0.061157,
		-0.397663, -0.003683, 0.917524,
		-0.905146, -0.162174, -0.392950,
		27.012854, 33.439777, 18.619045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283716, 33.152737, 19.411972>,  <27.646456, 33.553299, 18.894112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283716, 33.152737, 19.411972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.131971, 33.072521, 19.050671>,  <27.040924, 33.024391, 18.833889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.131971, 33.072521, 19.050671>,  <27.283716, 33.152737, 19.411972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131971, 33.072521, 19.050671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224597, -0.966990, 0.120362,
		-0.897575, -0.157207, 0.411881,
		-0.379363, -0.200541, -0.903254,
		27.018162, 33.012360, 18.779694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815516, 32.513157, 19.488770>,  <27.283716, 33.152737, 19.411972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815516, 32.513157, 19.488770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.874979, 32.558300, 19.095798>,  <26.910656, 32.585384, 18.860016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.874979, 32.558300, 19.095798>,  <26.815516, 32.513157, 19.488770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874979, 32.558300, 19.095798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019325, -0.992945, -0.116991,
		-0.988700, 0.036377, -0.145427,
		0.148657, 0.112858, -0.982428,
		26.919577, 32.592159, 18.801069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263691, 32.199146, 19.076731>,  <26.815516, 32.513157, 19.488770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263691, 32.199146, 19.076731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.592196, 32.208576, 18.848705>,  <26.789299, 32.214233, 18.711891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.592196, 32.208576, 18.848705>,  <26.263691, 32.199146, 19.076731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592196, 32.208576, 18.848705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017448, -0.997641, -0.066399,
		-0.570282, 0.064477, -0.818915,
		0.821264, 0.023578, -0.570061,
		26.838575, 32.215649, 18.677687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164289, 31.724943, 18.536718>,  <26.263691, 32.199146, 19.076731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164289, 31.724943, 18.536718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.560358, 31.760628, 18.493633>,  <26.797998, 31.782038, 18.467781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.560358, 31.760628, 18.493633>,  <26.164289, 31.724943, 18.536718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560358, 31.760628, 18.493633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065336, -0.976000, -0.207737,
		-0.123661, 0.198657, -0.972236,
		0.990171, 0.089211, -0.107714,
		26.857409, 31.787392, 18.461319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.381586, 31.420958, 17.845663>,  <26.164289, 31.724943, 18.536718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.381586, 31.420958, 17.845663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.696571, 31.427174, 18.092129>,  <26.885563, 31.430902, 18.240009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.696571, 31.427174, 18.092129>,  <26.381586, 31.420958, 17.845663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696571, 31.427174, 18.092129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228861, -0.935585, -0.268893,
		0.572297, 0.352760, -0.740295,
		0.787464, 0.015538, 0.616165,
		26.932810, 31.431835, 18.276978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958061, 30.993816, 17.468147>,  <26.381586, 31.420958, 17.845663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958061, 30.993816, 17.468147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.077297, 31.006561, 17.849751>,  <27.148838, 31.014208, 18.078712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.077297, 31.006561, 17.849751>,  <26.958061, 30.993816, 17.468147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.077297, 31.006561, 17.849751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322023, -0.944208, -0.069085,
		0.898579, 0.327805, -0.291720,
		0.298090, 0.031862, 0.954006,
		27.166725, 31.016121, 18.135952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640018, 30.754288, 17.437559>,  <26.958061, 30.993816, 17.468147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640018, 30.754288, 17.437559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.533562, 30.736938, 17.822742>,  <27.469688, 30.726530, 18.053852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.533562, 30.736938, 17.822742>,  <27.640018, 30.754288, 17.437559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533562, 30.736938, 17.822742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392854, -0.917137, 0.067269,
		0.880247, 0.396205, 0.261127,
		-0.266141, -0.043371, 0.962958,
		27.453720, 30.723927, 18.111629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234018, 30.678942, 17.705769>,  <27.640018, 30.754288, 17.437559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234018, 30.678942, 17.705769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.957703, 30.527775, 17.952343>,  <27.791914, 30.437075, 18.100286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.957703, 30.527775, 17.952343>,  <28.234018, 30.678942, 17.705769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.957703, 30.527775, 17.952343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602737, -0.771891, 0.202217,
		0.399399, 0.511237, 0.760997,
		-0.690788, -0.377916, 0.616434,
		27.750465, 30.414400, 18.137274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561043, 30.343239, 18.125483>,  <28.234018, 30.678942, 17.705769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561043, 30.343239, 18.125483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.199768, 30.210709, 18.234642>,  <27.983004, 30.131191, 18.300138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.199768, 30.210709, 18.234642>,  <28.561043, 30.343239, 18.125483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199768, 30.210709, 18.234642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369259, -0.923886, 0.100415,
		0.218858, 0.191464, 0.956788,
		-0.903188, -0.331326, 0.272899,
		27.928812, 30.111311, 18.316511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577806, 30.044413, 18.798840>,  <28.561043, 30.343239, 18.125483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577806, 30.044413, 18.798840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.272896, 29.887463, 18.592937>,  <28.089949, 29.793293, 18.469397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.272896, 29.887463, 18.592937>,  <28.577806, 30.044413, 18.798840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272896, 29.887463, 18.592937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457695, -0.889109, -0.000049,
		-0.457656, -0.235639, 0.857337,
		-0.762277, -0.392376, -0.514757,
		28.044212, 29.769751, 18.438511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435658, 29.461559, 19.096935>,  <28.577806, 30.044413, 18.798840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435658, 29.461559, 19.096935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.261517, 29.423672, 18.738831>,  <28.157032, 29.400940, 18.523968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.261517, 29.423672, 18.738831>,  <28.435658, 29.461559, 19.096935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261517, 29.423672, 18.738831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203622, -0.979039, 0.004564,
		-0.876930, -0.180308, 0.445513,
		-0.435352, -0.094719, -0.895264,
		28.130911, 29.395256, 18.470251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036150, 28.912430, 19.201582>,  <28.435658, 29.461559, 19.096935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036150, 28.912430, 19.201582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.058855, 28.935970, 18.802921>,  <28.072477, 28.950094, 18.563725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.058855, 28.935970, 18.802921>,  <28.036150, 28.912430, 19.201582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058855, 28.935970, 18.802921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109127, -0.992646, -0.052399,
		-0.992406, -0.105788, -0.062766,
		0.056761, 0.058851, -0.996652,
		28.075884, 28.953625, 18.503925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539804, 28.413013, 18.934690>,  <28.036150, 28.912430, 19.201582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539804, 28.413013, 18.934690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.808805, 28.477367, 18.645733>,  <27.970205, 28.515980, 18.472359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.808805, 28.477367, 18.645733>,  <27.539804, 28.413013, 18.934690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808805, 28.477367, 18.645733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102203, -0.986923, -0.124651,
		-0.733004, 0.009997, -0.680151,
		0.672503, 0.160883, -0.722396,
		28.010557, 28.525633, 18.429014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252914, 28.121641, 18.447311>,  <27.539804, 28.413013, 18.934690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252914, 28.121641, 18.447311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.641903, 28.128281, 18.354336>,  <27.875296, 28.132263, 18.298552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.641903, 28.128281, 18.354336>,  <27.252914, 28.121641, 18.447311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641903, 28.128281, 18.354336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053501, -0.954913, -0.292025,
		-0.226804, 0.296421, -0.927736,
		0.972470, 0.016597, -0.232437,
		27.933643, 28.133261, 18.284605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.248884, 27.841234, 17.817007>,  <27.252914, 28.121641, 18.447311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.248884, 27.841234, 17.817007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.623285, 27.822548, 17.956558>,  <27.847925, 27.811337, 18.040289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.623285, 27.822548, 17.956558>,  <27.248884, 27.841234, 17.817007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.623285, 27.822548, 17.956558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086305, -0.930442, -0.356130,
		0.341248, 0.363448, -0.866865,
		0.936003, -0.046714, 0.348879,
		27.904087, 27.808535, 18.061222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.826708, 27.515234, 17.126135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.933025, 27.466175, 17.508614>,  <27.996815, 27.436739, 17.738100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.933025, 27.466175, 17.508614>,  <27.826708, 27.515234, 17.126135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933025, 27.466175, 17.508614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295101, -0.933908, -0.201819,
		0.917753, 0.335817, -0.212031,
		0.265792, -0.122649, 0.956197,
		28.012762, 27.429380, 17.795473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429640, 27.197430, 17.047897>,  <27.826708, 27.515234, 17.126135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429640, 27.197430, 17.047897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.352480, 27.119358, 17.432541>,  <28.306185, 27.072515, 17.663328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.352480, 27.119358, 17.432541>,  <28.429640, 27.197430, 17.047897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352480, 27.119358, 17.432541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333371, -0.934757, -0.122854,
		0.922850, 0.296875, 0.245382,
		-0.192900, -0.195179, 0.961610,
		28.294609, 27.060804, 17.721024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928450, 26.745895, 17.159681>,  <28.429640, 27.197430, 17.047897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928450, 26.745895, 17.159681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.674664, 26.693947, 17.464466>,  <28.522392, 26.662777, 17.647337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.674664, 26.693947, 17.464466>,  <28.928450, 26.745895, 17.159681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674664, 26.693947, 17.464466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306560, -0.947217, 0.093817,
		0.709559, 0.293111, 0.640790,
		-0.634465, -0.129872, 0.761963,
		28.484324, 26.654985, 17.693054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232347, 26.564703, 17.758144>,  <28.928450, 26.745895, 17.159681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232347, 26.564703, 17.758144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.862806, 26.421867, 17.813255>,  <28.641081, 26.336166, 17.846323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.862806, 26.421867, 17.813255>,  <29.232347, 26.564703, 17.758144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.862806, 26.421867, 17.813255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382032, -0.882302, 0.274945,
		0.023383, 0.306645, 0.951537,
		-0.923853, -0.357088, 0.137779,
		28.585649, 26.314741, 17.854589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302656, 26.158190, 18.351126>,  <29.232347, 26.564703, 17.758144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302656, 26.158190, 18.351126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.974686, 26.017841, 18.170189>,  <28.777903, 25.933632, 18.061626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.974686, 26.017841, 18.170189>,  <29.302656, 26.158190, 18.351126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974686, 26.017841, 18.170189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239498, -0.927925, 0.285651,
		-0.519964, 0.125878, 0.844862,
		-0.819926, -0.350871, -0.452340,
		28.728708, 25.912580, 18.034487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045361, 25.596645, 18.767670>,  <29.302656, 26.158190, 18.351126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045361, 25.596645, 18.767670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.853374, 25.531197, 18.422913>,  <28.738182, 25.491928, 18.216059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.853374, 25.531197, 18.422913>,  <29.045361, 25.596645, 18.767670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853374, 25.531197, 18.422913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107776, -0.986009, 0.127165,
		-0.870641, -0.031856, 0.490884,
		-0.479966, -0.163621, -0.861894,
		28.709385, 25.482111, 18.164345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577621, 24.941694, 18.931561>,  <29.045361, 25.596645, 18.767670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577621, 24.941694, 18.931561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.599903, 24.988670, 18.534954>,  <28.613272, 25.016857, 18.296989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.599903, 24.988670, 18.534954>,  <28.577621, 24.941694, 18.931561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599903, 24.988670, 18.534954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177310, -0.978437, -0.105931,
		-0.982577, -0.169905, -0.075325,
		0.055702, 0.117441, -0.991516,
		28.616613, 25.023903, 18.237499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.108215, 24.429249, 18.568535>,  <28.577621, 24.941694, 18.931561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.108215, 24.429249, 18.568535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.379683, 24.537750, 18.295528>,  <28.542562, 24.602852, 18.131725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.379683, 24.537750, 18.295528>,  <28.108215, 24.429249, 18.568535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379683, 24.537750, 18.295528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166210, -0.961912, -0.217022,
		-0.715388, 0.033846, -0.697907,
		0.678670, 0.271254, -0.682515,
		28.583284, 24.619127, 18.090775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944895, 24.029745, 17.981621>,  <28.108215, 24.429249, 18.568535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944895, 24.029745, 17.981621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.329048, 24.137890, 17.954586>,  <28.559540, 24.202778, 17.938364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.329048, 24.137890, 17.954586>,  <27.944895, 24.029745, 17.981621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329048, 24.137890, 17.954586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239264, -0.924269, -0.297454,
		-0.142890, 0.269499, -0.952341,
		0.960383, 0.270364, -0.067588,
		28.617163, 24.219000, 17.934309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189875, 23.817778, 17.368214>,  <27.944895, 24.029745, 17.981621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189875, 23.817778, 17.368214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.520010, 23.864273, 17.589230>,  <28.718092, 23.892170, 17.721840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.520010, 23.864273, 17.589230>,  <28.189875, 23.817778, 17.368214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520010, 23.864273, 17.589230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345134, -0.878341, -0.330758,
		0.446874, 0.463688, -0.765047,
		0.825340, 0.116236, 0.552542,
		28.767612, 23.899143, 17.754992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.779272, 23.578005, 17.005104>,  <28.189875, 23.817778, 17.368214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.779272, 23.578005, 17.005104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.902298, 23.547703, 17.384506>,  <28.976114, 23.529522, 17.612148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.902298, 23.547703, 17.384506>,  <28.779272, 23.578005, 17.005104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902298, 23.547703, 17.384506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278394, -0.946043, -0.165831,
		0.909890, 0.315062, -0.269880,
		0.307565, -0.075755, 0.948507,
		28.994568, 23.524977, 17.669058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183729, 23.038797, 16.975290>,  <28.779272, 23.578005, 17.005104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183729, 23.038797, 16.975290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.145996, 23.041492, 17.373497>,  <29.123356, 23.043110, 17.612421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.145996, 23.041492, 17.373497>,  <29.183729, 23.038797, 16.975290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145996, 23.041492, 17.373497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050059, -0.998680, 0.011501,
		0.994281, 0.050919, 0.093869,
		-0.094330, 0.006737, 0.995518,
		29.117697, 23.043514, 17.672152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613605, 22.555094, 17.292870>,  <29.183729, 23.038797, 16.975290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613605, 22.555094, 17.292870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.326254, 22.614094, 17.564804>,  <29.153843, 22.649494, 17.727964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.326254, 22.614094, 17.564804>,  <29.613605, 22.555094, 17.292870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326254, 22.614094, 17.564804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015834, -0.980476, 0.195999,
		0.695473, 0.130037, 0.706688,
		-0.718378, 0.147501, 0.679836,
		29.110741, 22.658344, 17.768755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845776, 22.160767, 17.821014>,  <29.613605, 22.555094, 17.292870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845776, 22.160767, 17.821014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.460676, 22.207886, 17.918369>,  <29.229616, 22.236156, 17.976782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.460676, 22.207886, 17.918369>,  <29.845776, 22.160767, 17.821014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460676, 22.207886, 17.918369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027673, -0.938317, 0.344668,
		0.268975, 0.325094, 0.906623,
		-0.962749, 0.117796, 0.243388,
		29.171852, 22.243225, 17.991386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.776403, 21.923893, 18.492861>,  <29.845776, 22.160767, 17.821014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.776403, 21.923893, 18.492861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.416765, 21.890606, 18.320953>,  <29.200981, 21.870634, 18.217810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.416765, 21.890606, 18.320953>,  <29.776403, 21.923893, 18.492861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416765, 21.890606, 18.320953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149596, -0.864245, 0.480314,
		-0.411395, 0.496140, 0.764591,
		-0.899097, -0.083219, -0.429767,
		29.147036, 21.865641, 18.192024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464949, 21.712627, 19.072021>,  <29.776403, 21.923893, 18.492861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464949, 21.712627, 19.072021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.218472, 21.629150, 18.768246>,  <29.070585, 21.579063, 18.585979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.218472, 21.629150, 18.768246>,  <29.464949, 21.712627, 19.072021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218472, 21.629150, 18.768246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195332, -0.893634, 0.404059,
		-0.762988, 0.397322, 0.509887,
		-0.616194, -0.208695, -0.759442,
		29.033613, 21.566542, 18.540413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959040, 21.289511, 19.344593>,  <29.464949, 21.712627, 19.072021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959040, 21.289511, 19.344593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.912189, 21.184784, 18.961399>,  <28.884079, 21.121948, 18.731483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.912189, 21.184784, 18.961399>,  <28.959040, 21.289511, 19.344593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912189, 21.184784, 18.961399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137411, -0.951073, 0.276728,
		-0.983564, 0.164050, 0.075419,
		-0.117127, -0.261817, -0.957984,
		28.877052, 21.106239, 18.674004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567642, 20.734354, 19.376068>,  <28.959040, 21.289511, 19.344593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567642, 20.734354, 19.376068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.695580, 20.716988, 18.997478>,  <28.772343, 20.706568, 18.770325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.695580, 20.716988, 18.997478>,  <28.567642, 20.734354, 19.376068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.695580, 20.716988, 18.997478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059125, -0.997917, 0.025794,
		-0.945624, 0.047710, -0.321745,
		0.319844, -0.043414, -0.946475,
		28.791533, 20.703964, 18.713535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133957, 20.260611, 19.096855>,  <28.567642, 20.734354, 19.376068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133957, 20.260611, 19.096855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.447159, 20.278381, 18.848686>,  <28.635080, 20.289043, 18.699785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.447159, 20.278381, 18.848686>,  <28.133957, 20.260611, 19.096855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447159, 20.278381, 18.848686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025846, -0.998908, -0.038913,
		-0.621476, 0.014434, -0.783301,
		0.783007, 0.044428, -0.620424,
		28.682060, 20.291710, 18.662560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034731, 19.693466, 18.592588>,  <28.133957, 20.260611, 19.096855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034731, 19.693466, 18.592588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.428535, 19.763580, 18.594173>,  <28.664818, 19.805649, 18.595125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.428535, 19.763580, 18.594173>,  <28.034731, 19.693466, 18.592588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428535, 19.763580, 18.594173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175216, -0.984428, 0.014167,
		0.006384, -0.013253, -0.999892,
		0.984509, 0.175287, 0.003963,
		28.723888, 19.816166, 18.595362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210623, 19.204660, 18.049261>,  <28.034731, 19.693466, 18.592588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210623, 19.204660, 18.049261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.524759, 19.301193, 18.277294>,  <28.713242, 19.359114, 18.414114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.524759, 19.301193, 18.277294>,  <28.210623, 19.204660, 18.049261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524759, 19.301193, 18.277294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281975, -0.959260, 0.017636,
		0.551113, 0.146899, -0.821398,
		0.785343, 0.241334, 0.570082,
		28.760363, 19.373592, 18.448318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730450, 18.782343, 17.809086>,  <28.210623, 19.204660, 18.049261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730450, 18.782343, 17.809086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.843206, 18.879875, 18.180264>,  <28.910860, 18.938395, 18.402971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.843206, 18.879875, 18.180264>,  <28.730450, 18.782343, 17.809086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843206, 18.879875, 18.180264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179053, -0.963546, 0.198795,
		0.942591, 0.110113, -0.315273,
		0.281890, 0.243833, 0.927946,
		28.927773, 18.953026, 18.458647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463846, 18.730295, 18.112211>,  <28.730450, 18.782343, 17.809086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463846, 18.730295, 18.112211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.197842, 18.674168, 18.405624>,  <29.038239, 18.640491, 18.581673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.197842, 18.674168, 18.405624>,  <29.463846, 18.730295, 18.112211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197842, 18.674168, 18.405624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302932, -0.948443, 0.093205,
		0.682638, 0.284194, 0.673231,
		-0.665010, -0.140318, 0.733535,
		28.998339, 18.632072, 18.625685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494652, 19.340397, 17.647619>,  <29.463846, 18.730295, 18.112211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494652, 19.340397, 17.647619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.124123, 19.482162, 17.596523>,  <28.901806, 19.567221, 17.565866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.124123, 19.482162, 17.596523>,  <29.494652, 19.340397, 17.647619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124123, 19.482162, 17.596523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293202, 0.465323, -0.835169,
		-0.236555, -0.811089, -0.534954,
		-0.926323, 0.354413, -0.127738,
		28.846226, 19.588486, 17.558201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846357, 18.865610, 17.021801>,  <29.494652, 19.340397, 17.647619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846357, 18.865610, 17.021801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.134052, 18.816437, 16.748280>,  <30.306669, 18.786932, 16.584167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.134052, 18.816437, 16.748280>,  <29.846357, 18.865610, 17.021801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134052, 18.816437, 16.748280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251054, 0.963704, 0.090809,
		0.647820, -0.236985, 0.723994,
		0.719236, -0.122933, -0.683803,
		30.349823, 18.779556, 16.543139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446985, 19.114912, 17.247644>,  <29.846357, 18.865610, 17.021801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446985, 19.114912, 17.247644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.561722, 19.127800, 16.864670>,  <30.630564, 19.135532, 16.634886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.561722, 19.127800, 16.864670>,  <30.446985, 19.114912, 17.247644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561722, 19.127800, 16.864670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458301, 0.873027, 0.166686,
		0.841238, -0.486607, 0.235655,
		0.286843, 0.032222, -0.957435,
		30.647774, 19.137466, 16.577438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137648, 19.240295, 17.218985>,  <30.446985, 19.114912, 17.247644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137648, 19.240295, 17.218985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.053080, 19.354393, 16.845047>,  <31.002338, 19.422852, 16.620684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.053080, 19.354393, 16.845047>,  <31.137648, 19.240295, 17.218985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053080, 19.354393, 16.845047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732924, 0.679048, 0.041438,
		0.646624, -0.676409, -0.352629,
		-0.211422, 0.285245, -0.934845,
		30.989653, 19.439966, 16.564594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793146, 19.525112, 16.882368>,  <31.137648, 19.240295, 17.218985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793146, 19.525112, 16.882368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.491005, 19.676678, 16.668503>,  <31.309721, 19.767618, 16.540184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.491005, 19.676678, 16.668503>,  <31.793146, 19.525112, 16.882368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491005, 19.676678, 16.668503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484100, 0.872555, -0.065537,
		0.441692, -0.308335, -0.842519,
		-0.755351, 0.378916, -0.534665,
		31.264400, 19.790352, 16.508102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157967, 19.903337, 16.369577>,  <31.793146, 19.525112, 16.882368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157967, 19.903337, 16.369577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.782324, 20.039776, 16.386265>,  <31.556940, 20.121639, 16.396276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.782324, 20.039776, 16.386265>,  <32.157967, 19.903337, 16.369577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782324, 20.039776, 16.386265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342900, 0.922208, 0.178748,
		0.022499, 0.182167, -0.983010,
		-0.939102, 0.341096, 0.041716,
		31.500593, 20.142105, 16.398779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166885, 20.507013, 16.016766>,  <32.157967, 19.903337, 16.369577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166885, 20.507013, 16.016766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819075, 20.539288, 16.211662>,  <31.610388, 20.558653, 16.328600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819075, 20.539288, 16.211662>,  <32.166885, 20.507013, 16.016766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819075, 20.539288, 16.211662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245148, 0.926959, 0.283987,
		-0.428740, 0.366382, -0.825800,
		-0.869531, 0.080686, 0.487243,
		31.558216, 20.563494, 16.357836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874598, 21.130718, 15.795327>,  <32.166885, 20.507013, 16.016766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874598, 21.130718, 15.795327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.723318, 21.063381, 16.159443>,  <31.632551, 21.022980, 16.377913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.723318, 21.063381, 16.159443>,  <31.874598, 21.130718, 15.795327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723318, 21.063381, 16.159443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069865, 0.985713, 0.153262,
		-0.923085, -0.005634, -0.384555,
		-0.378197, -0.168341, 0.910290,
		31.609859, 21.012878, 16.432529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286890, 21.636879, 15.850432>,  <31.874598, 21.130718, 15.795327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286890, 21.636879, 15.850432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.377567, 21.519974, 16.222065>,  <31.431974, 21.449831, 16.445044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.377567, 21.519974, 16.222065>,  <31.286890, 21.636879, 15.850432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377567, 21.519974, 16.222065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265807, 0.899138, 0.347702,
		-0.936993, -0.325778, 0.126143,
		0.226694, -0.292264, 0.929081,
		31.445576, 21.432295, 16.500790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818830, 21.988268, 16.233753>,  <31.286890, 21.636879, 15.850432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818830, 21.988268, 16.233753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.084509, 21.895592, 16.518051>,  <31.243916, 21.839987, 16.688631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.084509, 21.895592, 16.518051>,  <30.818830, 21.988268, 16.233753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084509, 21.895592, 16.518051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044682, 0.936755, 0.347122,
		-0.746220, -0.262315, 0.611839,
		0.664198, -0.231691, 0.710746,
		31.283768, 21.826084, 16.731276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453400, 22.250072, 16.842760>,  <30.818830, 21.988268, 16.233753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453400, 22.250072, 16.842760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.851957, 22.221836, 16.861572>,  <31.091093, 22.204895, 16.872860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.851957, 22.221836, 16.861572>,  <30.453400, 22.250072, 16.842760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851957, 22.221836, 16.861572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044323, 0.906032, 0.420882,
		-0.072323, -0.417281, 0.905895,
		0.996396, -0.070591, 0.047032,
		31.150877, 22.200659, 16.875681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612783, 22.346008, 17.555330>,  <30.453400, 22.250072, 16.842760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612783, 22.346008, 17.555330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936966, 22.425182, 17.334793>,  <31.131475, 22.472687, 17.202471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.936966, 22.425182, 17.334793>,  <30.612783, 22.346008, 17.555330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936966, 22.425182, 17.334793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013893, 0.934425, 0.355888,
		0.585632, -0.296092, 0.754563,
		0.810458, 0.197936, -0.551343,
		31.180103, 22.484564, 17.169390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797024, 22.932478, 17.856110>,  <30.612783, 22.346008, 17.555330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797024, 22.932478, 17.856110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079508, 22.902523, 17.574497>,  <31.248999, 22.884550, 17.405529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.079508, 22.902523, 17.574497>,  <30.797024, 22.932478, 17.856110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079508, 22.902523, 17.574497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160921, 0.985343, 0.056607,
		0.689473, -0.153270, 0.707909,
		0.706209, -0.074888, -0.704032,
		31.291370, 22.880056, 17.363287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510458, 23.215174, 18.082495>,  <30.797024, 22.932478, 17.856110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510458, 23.215174, 18.082495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.497568, 23.250450, 17.684261>,  <31.489834, 23.271616, 17.445322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.497568, 23.250450, 17.684261>,  <31.510458, 23.215174, 18.082495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497568, 23.250450, 17.684261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135115, 0.986571, 0.091768,
		0.990306, 0.137475, -0.019878,
		-0.032227, 0.088192, -0.995582,
		31.487900, 23.276907, 17.385586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074917, 23.646389, 17.772369>,  <31.510458, 23.215174, 18.082495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074917, 23.646389, 17.772369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.778646, 23.651569, 17.503674>,  <31.600885, 23.654678, 17.342457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.778646, 23.651569, 17.503674>,  <32.074917, 23.646389, 17.772369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778646, 23.651569, 17.503674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025068, 0.998585, 0.046895,
		0.671396, 0.051573, -0.739302,
		-0.740675, 0.012952, -0.671739,
		31.556444, 23.655455, 17.302153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204967, 24.229374, 17.436558>,  <32.074917, 23.646389, 17.772369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204967, 24.229374, 17.436558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.835901, 24.142750, 17.308945>,  <31.614460, 24.090775, 17.232376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.835901, 24.142750, 17.308945>,  <32.204967, 24.229374, 17.436558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835901, 24.142750, 17.308945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135599, 0.956771, -0.257298,
		0.360961, -0.194140, -0.912149,
		-0.922670, -0.216561, -0.319032,
		31.559101, 24.077782, 17.213236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094162, 24.546776, 16.768063>,  <32.204967, 24.229374, 17.436558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094162, 24.546776, 16.768063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.718243, 24.452866, 16.867393>,  <31.492691, 24.396521, 16.926992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.718243, 24.452866, 16.867393>,  <32.094162, 24.546776, 16.768063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718243, 24.452866, 16.867393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327036, 0.828704, -0.454199,
		-0.099156, -0.508066, -0.855592,
		-0.939796, -0.234773, 0.248327,
		31.436304, 24.382433, 16.941891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825001, 24.686907, 16.111959>,  <32.094162, 24.546776, 16.768063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825001, 24.686907, 16.111959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.546038, 24.728657, 16.395573>,  <31.378660, 24.753708, 16.565741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.546038, 24.728657, 16.395573>,  <31.825001, 24.686907, 16.111959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546038, 24.728657, 16.395573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226465, 0.906549, -0.356204,
		-0.679953, -0.408991, -0.608597,
		-0.697408, 0.104376, 0.709033,
		31.336815, 24.759970, 16.608282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452374, 25.181149, 15.882441>,  <31.825001, 24.686907, 16.111959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452374, 25.181149, 15.882441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.292812, 25.196762, 16.248905>,  <31.197075, 25.206131, 16.468784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.292812, 25.196762, 16.248905>,  <31.452374, 25.181149, 15.882441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292812, 25.196762, 16.248905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080370, 0.993761, -0.077333,
		-0.913465, -0.104480, -0.393276,
		-0.398902, 0.039033, 0.916162,
		31.173141, 25.208471, 16.523754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865643, 25.646666, 15.859110>,  <31.452374, 25.181149, 15.882441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865643, 25.646666, 15.859110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957298, 25.628742, 16.248055>,  <31.012291, 25.617989, 16.481421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.957298, 25.628742, 16.248055>,  <30.865643, 25.646666, 15.859110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957298, 25.628742, 16.248055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056033, 0.996676, 0.059131,
		-0.971780, -0.068034, 0.225866,
		0.229139, -0.044807, 0.972362,
		31.026039, 25.615301, 16.539762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325428, 26.114985, 16.148611>,  <30.865643, 25.646666, 15.859110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325428, 26.114985, 16.148611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.629927, 26.063713, 16.402878>,  <30.812626, 26.032949, 16.555439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.629927, 26.063713, 16.402878>,  <30.325428, 26.114985, 16.148611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629927, 26.063713, 16.402878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120552, 0.935207, 0.332948,
		-0.637159, -0.330086, 0.696470,
		0.761246, -0.128180, 0.635669,
		30.858301, 26.025259, 16.593578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.259970, 41.071754, 19.236933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.562569, 40.817944, 19.300289>,  <26.744127, 40.665657, 19.338303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.562569, 40.817944, 19.300289>,  <26.259970, 41.071754, 19.236933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562569, 40.817944, 19.300289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641735, -0.673535, 0.366779,
		-0.126050, -0.379112, -0.916725,
		0.756497, -0.634527, 0.158390,
		26.789518, 40.627586, 19.347807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029203, 40.441864, 19.003574>,  <26.259970, 41.071754, 19.236933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029203, 40.441864, 19.003574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.330935, 40.359337, 19.252869>,  <26.511974, 40.309822, 19.402445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.330935, 40.359337, 19.252869>,  <26.029203, 40.441864, 19.003574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.330935, 40.359337, 19.252869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472270, -0.829962, 0.296858,
		0.456013, -0.518263, -0.723502,
		0.754330, -0.206317, 0.623233,
		26.557234, 40.297443, 19.439838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217392, 39.768612, 18.913280>,  <26.029203, 40.441864, 19.003574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217392, 39.768612, 18.913280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.358442, 39.854805, 19.277527>,  <26.443073, 39.906521, 19.496075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.358442, 39.854805, 19.277527>,  <26.217392, 39.768612, 18.913280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358442, 39.854805, 19.277527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567016, -0.724931, 0.391112,
		0.744412, -0.654250, -0.133447,
		0.352625, 0.215482, 0.910617,
		26.464230, 39.919449, 19.550713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286943, 39.133289, 19.263643>,  <26.217392, 39.768612, 18.913280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286943, 39.133289, 19.263643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.275955, 39.394711, 19.566196>,  <26.269363, 39.551563, 19.747728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.275955, 39.394711, 19.566196>,  <26.286943, 39.133289, 19.263643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275955, 39.394711, 19.566196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608015, -0.611528, 0.506311,
		0.793450, -0.445984, 0.414168,
		-0.027468, 0.653553, 0.756382,
		26.267715, 39.590778, 19.793112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248587, 38.723537, 19.940973>,  <26.286943, 39.133289, 19.263643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.248587, 38.723537, 19.940973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.130068, 39.090992, 20.045525>,  <26.058956, 39.311466, 20.108255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.130068, 39.090992, 20.045525>,  <26.248587, 38.723537, 19.940973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130068, 39.090992, 20.045525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649598, -0.394450, 0.649948,
		0.700165, 0.022788, 0.713617,
		-0.296297, 0.918635, 0.261377,
		26.041178, 39.366581, 20.123938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220434, 38.728210, 20.705133>,  <26.248587, 38.723537, 19.940973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220434, 38.728210, 20.705133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.995096, 39.033043, 20.577457>,  <25.859894, 39.215942, 20.500851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.995096, 39.033043, 20.577457>,  <26.220434, 38.728210, 20.705133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.995096, 39.033043, 20.577457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786430, -0.376131, 0.489953,
		0.253324, 0.527034, 0.811211,
		-0.563343, 0.762077, -0.319192,
		25.826094, 39.261665, 20.481699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866739, 38.939754, 21.272865>,  <26.220434, 38.728210, 20.705133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866739, 38.939754, 21.272865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.661371, 39.097088, 20.967793>,  <25.538151, 39.191486, 20.784748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.661371, 39.097088, 20.967793>,  <25.866739, 38.939754, 21.272865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.661371, 39.097088, 20.967793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852313, -0.337101, 0.399907,
		-0.099804, 0.855366, 0.508319,
		-0.513422, 0.393335, -0.762683,
		25.507345, 39.215088, 20.738987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.297638, 39.248306, 21.610945>,  <25.866739, 38.939754, 21.272865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.297638, 39.248306, 21.610945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.153954, 39.237789, 21.237789>,  <25.067743, 39.231480, 21.013897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.153954, 39.237789, 21.237789>,  <25.297638, 39.248306, 21.610945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.153954, 39.237789, 21.237789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760034, -0.571850, 0.308767,
		-0.541588, 0.819937, 0.185433,
		-0.359209, -0.026289, -0.932887,
		25.046190, 39.229904, 20.957924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.599812, 39.332294, 21.684399>,  <25.297638, 39.248306, 21.610945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.599812, 39.332294, 21.684399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.645992, 39.154915, 21.328865>,  <24.673700, 39.048489, 21.115545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.645992, 39.154915, 21.328865>,  <24.599812, 39.332294, 21.684399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.645992, 39.154915, 21.328865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769639, -0.605623, 0.202181,
		-0.627955, 0.660738, -0.411215,
		0.115453, -0.443447, -0.888833,
		24.680628, 39.021881, 21.062216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.911345, 39.296925, 21.537020>,  <24.599812, 39.332294, 21.684399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.911345, 39.296925, 21.537020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.089056, 39.042854, 21.284302>,  <24.195683, 38.890411, 21.132671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.089056, 39.042854, 21.284302>,  <23.911345, 39.296925, 21.537020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.089056, 39.042854, 21.284302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814962, -0.579438, 0.009457,
		-0.372092, 0.510686, -0.775079,
		0.444281, -0.635178, -0.631794,
		24.222340, 38.852303, 21.094763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.403486, 38.946198, 21.157679>,  <23.911345, 39.296925, 21.537020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.403486, 38.946198, 21.157679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.709415, 38.702938, 21.072632>,  <23.892973, 38.556984, 21.021605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.709415, 38.702938, 21.072632>,  <23.403486, 38.946198, 21.157679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.709415, 38.702938, 21.072632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620817, -0.783904, 0.008995,
		-0.172141, 0.125117, -0.977094,
		0.764822, -0.608145, -0.212617,
		23.938862, 38.520493, 21.008846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.098816, 38.481903, 20.640171>,  <23.403486, 38.946198, 21.157679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.098816, 38.481903, 20.640171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.410469, 38.305225, 20.818096>,  <23.597462, 38.199219, 20.924850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.410469, 38.305225, 20.818096>,  <23.098816, 38.481903, 20.640171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.410469, 38.305225, 20.818096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500297, -0.865693, 0.016699,
		0.377696, -0.235549, -0.895468,
		0.779133, -0.441693, 0.444813,
		23.644209, 38.172718, 20.951540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.265085, 37.950363, 20.192585>,  <23.098816, 38.481903, 20.640171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.265085, 37.950363, 20.192585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.426960, 37.843399, 20.542377>,  <23.524086, 37.779221, 20.752253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.426960, 37.843399, 20.542377>,  <23.265085, 37.950363, 20.192585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.426960, 37.843399, 20.542377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487803, -0.871995, -0.040906,
		0.773483, -0.410021, -0.483329,
		0.404688, -0.267409, 0.874482,
		23.548367, 37.763176, 20.804722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.328556, 37.257843, 20.117350>,  <23.265085, 37.950363, 20.192585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.328556, 37.257843, 20.117350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.356319, 37.297672, 20.514393>,  <23.372978, 37.321568, 20.752619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.356319, 37.297672, 20.514393>,  <23.328556, 37.257843, 20.117350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.356319, 37.297672, 20.514393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652033, -0.748525, 0.120679,
		0.755007, -0.655589, 0.012968,
		0.069409, 0.099569, 0.992607,
		23.377142, 37.327541, 20.812176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.382668, 36.516724, 20.331608>,  <23.328556, 37.257843, 20.117350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.382668, 36.516724, 20.331608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.247007, 36.744225, 20.631340>,  <23.165611, 36.880726, 20.811178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.247007, 36.744225, 20.631340>,  <23.382668, 36.516724, 20.331608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.247007, 36.744225, 20.631340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745861, -0.647994, 0.154259,
		0.573296, -0.506578, 0.643980,
		-0.339152, 0.568756, 0.749329,
		23.145262, 36.914852, 20.856138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.187637, 36.063889, 20.885729>,  <23.382668, 36.516724, 20.331608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.187637, 36.063889, 20.885729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.005537, 36.398281, 21.008293>,  <22.896276, 36.598915, 21.081833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.005537, 36.398281, 21.008293>,  <23.187637, 36.063889, 20.885729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.005537, 36.398281, 21.008293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814748, -0.529930, 0.235288,
		0.359072, -0.142533, 0.922362,
		-0.455250, 0.835978, 0.306412,
		22.868961, 36.649075, 21.100216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.767696, 35.834038, 21.487154>,  <23.187637, 36.063889, 20.885729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.767696, 35.834038, 21.487154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.609638, 36.188366, 21.389847>,  <22.514803, 36.400963, 21.331463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.609638, 36.188366, 21.389847>,  <22.767696, 35.834038, 21.487154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.609638, 36.188366, 21.389847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895477, -0.312375, 0.317087,
		0.204891, 0.343138, 0.916666,
		-0.395147, 0.885821, -0.243269,
		22.491095, 36.454113, 21.316866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.249779, 35.988693, 21.916271>,  <22.767696, 35.834038, 21.487154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.249779, 35.988693, 21.916271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.142355, 36.231724, 21.617279>,  <22.077900, 36.377541, 21.437883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.142355, 36.231724, 21.617279>,  <22.249779, 35.988693, 21.916271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.142355, 36.231724, 21.617279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956085, -0.262687, 0.129989,
		-0.117376, 0.749567, 0.651439,
		-0.268560, 0.607574, -0.747483,
		22.061787, 36.413998, 21.393034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.820410, 36.519424, 22.202751>,  <22.249779, 35.988693, 21.916271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.820410, 36.519424, 22.202751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.746855, 36.476112, 21.811966>,  <21.702723, 36.450123, 21.577494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.746855, 36.476112, 21.811966>,  <21.820410, 36.519424, 22.202751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.746855, 36.476112, 21.811966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962327, -0.182684, 0.201380,
		-0.200282, 0.977191, -0.070609,
		-0.183888, -0.108282, -0.976965,
		21.691689, 36.443626, 21.518877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.121382, 36.801109, 22.056625>,  <21.820410, 36.519424, 22.202751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.121382, 36.801109, 22.056625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.215641, 36.524128, 21.783867>,  <21.272196, 36.357941, 21.620213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.215641, 36.524128, 21.783867>,  <21.121382, 36.801109, 22.056625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.215641, 36.524128, 21.783867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872529, -0.459738, 0.165329,
		-0.427975, 0.556013, -0.712521,
		0.235648, -0.692452, -0.681894,
		21.286335, 36.316391, 21.579298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.619911, 36.739494, 21.527580>,  <21.121382, 36.801109, 22.056625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.619911, 36.739494, 21.527580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.785345, 36.375347, 21.522221>,  <20.884605, 36.156860, 21.519005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.785345, 36.375347, 21.522221>,  <20.619911, 36.739494, 21.527580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.785345, 36.375347, 21.522221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910099, -0.413792, 0.022279,
		-0.025826, 0.002979, -0.999662,
		0.413585, -0.910366, -0.013398,
		20.909420, 36.102238, 21.518202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.995886, 37.137230, 21.360376>,  <20.619911, 36.739494, 21.527580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.995886, 37.137230, 21.360376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.712151, 37.390926, 21.237362>,  <19.541910, 37.543144, 21.163553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.712151, 37.390926, 21.237362>,  <19.995886, 37.137230, 21.360376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.712151, 37.390926, 21.237362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417255, 0.026183, -0.908412,
		-0.568102, -0.772690, -0.283214,
		-0.709336, 0.634244, -0.307534,
		19.499350, 37.581200, 21.145102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.804651, 36.881386, 20.743364>,  <19.995886, 37.137230, 21.360376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.804651, 36.881386, 20.743364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.738520, 37.274834, 20.772087>,  <19.698841, 37.510902, 20.789322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.738520, 37.274834, 20.772087>,  <19.804651, 36.881386, 20.743364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.738520, 37.274834, 20.772087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410773, 0.134873, -0.901707,
		-0.896622, -0.119581, -0.426343,
		-0.165329, 0.983621, 0.071809,
		19.688921, 37.569920, 20.793631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.508520, 37.200958, 20.097750>,  <19.804651, 36.881386, 20.743364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.508520, 37.200958, 20.097750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.709127, 37.483524, 20.297535>,  <19.829491, 37.653065, 20.417406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.709127, 37.483524, 20.297535>,  <19.508520, 37.200958, 20.097750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.709127, 37.483524, 20.297535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553493, 0.181722, -0.812787,
		-0.664926, 0.684075, -0.299858,
		0.501516, 0.706413, 0.499462,
		19.859583, 37.695450, 20.447374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.584818, 37.722660, 19.540291>,  <19.508520, 37.200958, 20.097750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.584818, 37.722660, 19.540291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.857883, 37.809830, 19.819283>,  <20.021723, 37.862133, 19.986677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.857883, 37.809830, 19.819283>,  <19.584818, 37.722660, 19.540291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.857883, 37.809830, 19.819283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671472, 0.189457, -0.716402,
		-0.288265, 0.957400, -0.016996,
		0.682663, 0.217926, 0.697481,
		20.062683, 37.875206, 20.028526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.950602, 38.116859, 19.142271>,  <19.584818, 37.722660, 19.540291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.950602, 38.116859, 19.142271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.186270, 38.122608, 19.465424>,  <20.327671, 38.126057, 19.659315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.186270, 38.122608, 19.465424>,  <19.950602, 38.116859, 19.142271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.186270, 38.122608, 19.465424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720720, 0.442675, -0.533481,
		-0.365298, 0.896567, 0.250450,
		0.589169, 0.014375, 0.807882,
		20.363020, 38.126919, 19.707788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.127728, 38.767326, 19.275806>,  <19.950602, 38.116859, 19.142271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.127728, 38.767326, 19.275806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.417336, 38.548573, 19.443954>,  <20.591101, 38.417320, 19.544844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.417336, 38.548573, 19.443954>,  <20.127728, 38.767326, 19.275806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.417336, 38.548573, 19.443954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689631, 0.561224, -0.457642,
		0.014359, 0.621241, 0.783488,
		0.724018, -0.546889, 0.420369,
		20.634541, 38.384506, 19.570065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.629480, 39.235023, 19.521786>,  <20.127728, 38.767326, 19.275806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.629480, 39.235023, 19.521786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.827406, 38.887432, 19.519341>,  <20.946161, 38.678879, 19.517874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.827406, 38.887432, 19.519341>,  <20.629480, 39.235023, 19.521786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827406, 38.887432, 19.519341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758422, 0.435275, -0.485109,
		0.424209, 0.235403, 0.874432,
		0.494815, -0.868977, -0.006113,
		20.975851, 38.626740, 19.517508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.324350, 39.425335, 19.637459>,  <20.629480, 39.235023, 19.521786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.324350, 39.425335, 19.637459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.319185, 39.069260, 19.455296>,  <21.316086, 38.855614, 19.345997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.319185, 39.069260, 19.455296>,  <21.324350, 39.425335, 19.637459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.319185, 39.069260, 19.455296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768805, 0.282376, -0.573761,
		0.639352, -0.357531, 0.680735,
		-0.012915, -0.890188, -0.455410,
		21.315311, 38.802204, 19.318672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.028767, 39.269539, 19.620728>,  <21.324350, 39.425335, 19.637459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.028767, 39.269539, 19.620728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.855843, 39.042179, 19.340717>,  <21.752089, 38.905766, 19.172712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.855843, 39.042179, 19.340717>,  <22.028767, 39.269539, 19.620728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.855843, 39.042179, 19.340717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637136, 0.356808, -0.683188,
		0.638096, -0.741360, 0.207894,
		-0.432310, -0.568396, -0.700024,
		21.726151, 38.871662, 19.130711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.454603, 38.728058, 19.454609>,  <22.028767, 39.269539, 19.620728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.454603, 38.728058, 19.454609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.221878, 38.772564, 19.132339>,  <22.082243, 38.799267, 18.938976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.221878, 38.772564, 19.132339>,  <22.454603, 38.728058, 19.454609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.221878, 38.772564, 19.132339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749198, 0.458853, -0.477656,
		0.316538, -0.881517, -0.350329,
		-0.581812, 0.111269, -0.805676,
		22.047335, 38.805946, 18.890636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.966558, 38.628639, 18.870346>,  <22.454603, 38.728058, 19.454609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.966558, 38.628639, 18.870346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.624243, 38.780163, 18.729420>,  <22.418854, 38.871075, 18.644863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.624243, 38.780163, 18.729420>,  <22.966558, 38.628639, 18.870346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.624243, 38.780163, 18.729420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517320, 0.625282, -0.584297,
		-0.001039, -0.682296, -0.731075,
		-0.855791, 0.378807, -0.352316,
		22.367506, 38.893806, 18.623724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.117168, 38.513790, 18.221466>,  <22.966558, 38.628639, 18.870346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.117168, 38.513790, 18.221466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.825279, 38.785130, 18.255768>,  <22.650146, 38.947933, 18.276350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.825279, 38.785130, 18.255768>,  <23.117168, 38.513790, 18.221466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.825279, 38.785130, 18.255768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458193, 0.578235, -0.675058,
		-0.507510, -0.453312, -0.732764,
		-0.729722, 0.678346, 0.085755,
		22.606363, 38.988632, 18.281494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.886715, 38.707733, 17.478712>,  <23.117168, 38.513790, 18.221466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.886715, 38.707733, 17.478712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.776022, 38.999329, 17.729153>,  <22.709606, 39.174286, 17.879417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.776022, 38.999329, 17.729153>,  <22.886715, 38.707733, 17.478712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.776022, 38.999329, 17.729153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350082, 0.683248, -0.640792,
		-0.894909, 0.041860, -0.444281,
		-0.276731, 0.728985, 0.626099,
		22.693003, 39.218025, 17.916983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.449978, 39.108486, 17.128763>,  <22.886715, 38.707733, 17.478712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.449978, 39.108486, 17.128763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.602665, 39.347019, 17.411232>,  <22.694277, 39.490139, 17.580713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.602665, 39.347019, 17.411232>,  <22.449978, 39.108486, 17.128763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.602665, 39.347019, 17.411232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414572, 0.572395, -0.707457,
		-0.826088, 0.562808, -0.028728,
		0.381719, 0.596331, 0.706173,
		22.717180, 39.525917, 17.623083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.482357, 39.880501, 16.833441>,  <22.449978, 39.108486, 17.128763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.482357, 39.880501, 16.833441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.736399, 39.882114, 17.142406>,  <22.888824, 39.883083, 17.327785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.736399, 39.882114, 17.142406>,  <22.482357, 39.880501, 16.833441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.736399, 39.882114, 17.142406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649890, 0.537670, -0.537172,
		-0.417473, 0.843145, 0.338853,
		0.635105, 0.004037, 0.772415,
		22.926929, 39.883327, 17.374130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.663528, 40.545292, 16.950554>,  <22.482357, 39.880501, 16.833441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.663528, 40.545292, 16.950554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.947353, 40.334782, 17.137981>,  <23.117649, 40.208477, 17.250439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.947353, 40.334782, 17.137981>,  <22.663528, 40.545292, 16.950554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.947353, 40.334782, 17.137981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697697, 0.617860, -0.362585,
		-0.098691, 0.584195, 0.805590,
		0.709563, -0.526274, 0.468568,
		23.160223, 40.176899, 17.278551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.137321, 41.027691, 17.185471>,  <22.663528, 40.545292, 16.950554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.137321, 41.027691, 17.185471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.367804, 40.700958, 17.196564>,  <23.506092, 40.504917, 17.203220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.367804, 40.700958, 17.196564>,  <23.137321, 41.027691, 17.185471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.367804, 40.700958, 17.196564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760686, 0.523570, -0.383706,
		0.298904, 0.242190, 0.923039,
		0.576205, -0.816834, 0.027734,
		23.540665, 40.455910, 17.204884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.790554, 41.284904, 17.563061>,  <23.137321, 41.027691, 17.185471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.790554, 41.284904, 17.563061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.889105, 40.958164, 17.354427>,  <23.948236, 40.762119, 17.229248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.889105, 40.958164, 17.354427>,  <23.790554, 41.284904, 17.563061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.889105, 40.958164, 17.354427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717401, 0.515561, -0.468545,
		0.651640, -0.258744, 0.713034,
		0.246379, -0.816853, -0.521583,
		23.963018, 40.713108, 17.197952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.530668, 41.317657, 17.549740>,  <23.790554, 41.284904, 17.563061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.530668, 41.317657, 17.549740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.436630, 41.044426, 17.273151>,  <24.380207, 40.880486, 17.107199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.436630, 41.044426, 17.273151>,  <24.530668, 41.317657, 17.549740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.436630, 41.044426, 17.273151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778250, 0.293902, -0.554932,
		0.582287, -0.668599, 0.462511,
		-0.235093, -0.683079, -0.691473,
		24.366102, 40.839500, 17.065710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185911, 40.963470, 17.547306>,  <24.530668, 41.317657, 17.549740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.185911, 40.963470, 17.547306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.985662, 40.918583, 17.203960>,  <24.865513, 40.891651, 16.997953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.985662, 40.918583, 17.203960>,  <25.185911, 40.963470, 17.547306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985662, 40.918583, 17.203960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840773, 0.173049, -0.512986,
		0.206108, -0.978499, 0.007723,
		-0.500620, -0.112224, -0.858362,
		24.835476, 40.884914, 16.946451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577261, 40.472618, 17.121531>,  <25.185911, 40.963470, 17.547306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577261, 40.472618, 17.121531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.352177, 40.686504, 16.869362>,  <25.217127, 40.814838, 16.718061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.352177, 40.686504, 16.869362>,  <25.577261, 40.472618, 17.121531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352177, 40.686504, 16.869362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793218, 0.134564, -0.593884,
		-0.232730, -0.834246, -0.499870,
		-0.562710, 0.534720, -0.630422,
		25.183363, 40.846920, 16.680235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.745358, 29.517673, 18.487621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104479, 29.688465, 18.444462>,  <27.319952, 29.790939, 18.418566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104479, 29.688465, 18.444462>,  <26.745358, 29.517673, 18.487621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104479, 29.688465, 18.444462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406019, 0.897387, 0.172756,
		0.170590, -0.111291, 0.979037,
		0.897802, 0.426978, -0.107899,
		27.373819, 29.816559, 18.412092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.817106, 30.118757, 18.964336>,  <26.745358, 29.517673, 18.487621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.817106, 30.118757, 18.964336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096739, 30.190659, 18.687504>,  <27.264519, 30.233799, 18.521404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096739, 30.190659, 18.687504>,  <26.817106, 30.118757, 18.964336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096739, 30.190659, 18.687504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099709, 0.982937, 0.154576,
		0.708056, -0.039054, 0.705075,
		0.699081, 0.179751, -0.692080,
		27.306463, 30.244583, 18.479879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098030, 30.565544, 19.340427>,  <26.817106, 30.118757, 18.964336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098030, 30.565544, 19.340427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202921, 30.610168, 18.957012>,  <27.265856, 30.636944, 18.726963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202921, 30.610168, 18.957012>,  <27.098030, 30.565544, 19.340427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202921, 30.610168, 18.957012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087131, 0.991975, 0.091617,
		0.961065, 0.059493, 0.269842,
		0.262226, 0.111561, -0.958536,
		27.281588, 30.643637, 18.669451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548149, 31.007156, 19.399935>,  <27.098030, 30.565544, 19.340427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548149, 31.007156, 19.399935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439108, 31.033051, 19.015957>,  <27.373684, 31.048588, 18.785570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439108, 31.033051, 19.015957>,  <27.548149, 31.007156, 19.399935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439108, 31.033051, 19.015957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059374, 0.996964, 0.050370,
		0.960293, -0.043265, -0.275618,
		-0.272602, 0.064735, -0.959947,
		27.357327, 31.052471, 18.727972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016861, 31.485306, 19.012650>,  <27.548149, 31.007156, 19.399935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016861, 31.485306, 19.012650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683790, 31.462326, 18.792339>,  <27.483948, 31.448538, 18.660154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683790, 31.462326, 18.792339>,  <28.016861, 31.485306, 19.012650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683790, 31.462326, 18.792339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010522, 0.996066, -0.087987,
		0.553662, -0.067469, -0.830004,
		-0.832675, -0.057449, -0.550774,
		27.433989, 31.445091, 18.627108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.149860, 31.892134, 18.406124>,  <28.016861, 31.485306, 19.012650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.149860, 31.892134, 18.406124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753191, 31.888115, 18.457474>,  <27.515188, 31.885704, 18.488283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753191, 31.888115, 18.457474>,  <28.149860, 31.892134, 18.406124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753191, 31.888115, 18.457474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033200, 0.983192, -0.179531,
		-0.124413, -0.182298, -0.975340,
		-0.991675, -0.010046, 0.128374,
		27.455688, 31.885101, 18.495987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852711, 32.254723, 17.857748>,  <28.149860, 31.892134, 18.406124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852711, 32.254723, 17.857748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551620, 32.249477, 18.121029>,  <27.370966, 32.246330, 18.278997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551620, 32.249477, 18.121029>,  <27.852711, 32.254723, 17.857748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.551620, 32.249477, 18.121029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246970, 0.932409, -0.263856,
		-0.610252, -0.361168, -0.705088,
		-0.752727, -0.013117, 0.658202,
		27.325802, 32.245541, 18.318489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279942, 32.584087, 17.533033>,  <27.852711, 32.254723, 17.857748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279942, 32.584087, 17.533033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158751, 32.586163, 17.914227>,  <27.086037, 32.587406, 18.142942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158751, 32.586163, 17.914227>,  <27.279942, 32.584087, 17.533033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158751, 32.586163, 17.914227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258811, 0.961955, -0.087519,
		-0.917182, -0.273159, -0.290106,
		-0.302975, 0.005188, 0.952984,
		27.067858, 32.587719, 18.200121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471588, 32.763767, 17.605038>,  <27.279942, 32.584087, 17.533033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471588, 32.763767, 17.605038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655972, 32.858311, 17.947186>,  <26.766602, 32.915035, 18.152473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655972, 32.858311, 17.947186>,  <26.471588, 32.763767, 17.605038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655972, 32.858311, 17.947186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453636, 0.891185, -0.001787,
		-0.762714, -0.387202, 0.518017,
		0.460957, 0.236355, 0.855368,
		26.794258, 32.929218, 18.203796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938789, 33.186062, 17.932878>,  <26.471588, 32.763767, 17.605038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938789, 33.186062, 17.932878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248905, 33.260910, 18.174179>,  <26.434975, 33.305817, 18.318960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.248905, 33.260910, 18.174179>,  <25.938789, 33.186062, 17.932878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248905, 33.260910, 18.174179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239953, 0.970757, 0.007275,
		-0.584250, -0.150392, 0.797517,
		0.775290, 0.187117, 0.603252,
		26.481493, 33.317043, 18.355154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.689619, 33.420128, 18.556820>,  <25.938789, 33.186062, 17.932878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.689619, 33.420128, 18.556820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059130, 33.571304, 18.581478>,  <26.280836, 33.662010, 18.596273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.059130, 33.571304, 18.581478>,  <25.689619, 33.420128, 18.556820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.059130, 33.571304, 18.581478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382671, 0.905121, 0.185254,
		0.014219, -0.194722, 0.980755,
		0.923775, 0.377941, 0.061645,
		26.336262, 33.684689, 18.599972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762201, 33.881847, 19.231218>,  <25.689619, 33.420128, 18.556820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762201, 33.881847, 19.231218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013472, 33.965744, 18.931511>,  <26.164234, 34.016083, 18.751686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013472, 33.965744, 18.931511>,  <25.762201, 33.881847, 19.231218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.013472, 33.965744, 18.931511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355526, 0.933949, -0.036628,
		0.692097, 0.289393, 0.661252,
		0.628175, 0.209742, -0.749269,
		26.201923, 34.028667, 18.706730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.370176, 33.189785, 19.179724>,  <25.762201, 33.881847, 19.231218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.370176, 33.189785, 19.179724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207848, 33.373562, 19.495754>,  <25.110451, 33.483829, 19.685371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207848, 33.373562, 19.495754>,  <25.370176, 33.189785, 19.179724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207848, 33.373562, 19.495754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517273, -0.828143, 0.215887,
		0.753484, -0.321074, 0.573737,
		-0.405821, 0.459446, 0.790075,
		25.086102, 33.511395, 19.732777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330145, 32.656944, 19.681818>,  <25.370176, 33.189785, 19.179724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330145, 32.656944, 19.681818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042377, 32.926456, 19.749294>,  <24.869717, 33.088165, 19.789780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042377, 32.926456, 19.749294>,  <25.330145, 32.656944, 19.681818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.042377, 32.926456, 19.749294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651206, -0.738776, 0.173612,
		0.241601, 0.015048, 0.970259,
		-0.719417, 0.673783, 0.168689,
		24.826553, 33.128590, 19.799902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121666, 33.053829, 20.357803>,  <25.330145, 32.656944, 19.681818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121666, 33.053829, 20.357803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854679, 33.015808, 20.653221>,  <24.694487, 32.992996, 20.830473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854679, 33.015808, 20.653221>,  <25.121666, 33.053829, 20.357803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.854679, 33.015808, 20.653221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744578, -0.097870, 0.660322,
		0.009514, 0.990649, 0.136100,
		-0.667468, -0.095055, 0.738547,
		24.654438, 32.987293, 20.874784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.226734, 33.539040, 20.916218>,  <25.121666, 33.053829, 20.357803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.226734, 33.539040, 20.916218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.028952, 33.232727, 21.080700>,  <24.910282, 33.048939, 21.179390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.028952, 33.232727, 21.080700>,  <25.226734, 33.539040, 20.916218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028952, 33.232727, 21.080700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821750, -0.257671, 0.508264,
		-0.283263, 0.589223, 0.756689,
		-0.494458, -0.765782, 0.411206,
		24.880615, 33.002991, 21.204062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416634, 33.586243, 21.652935>,  <25.226734, 33.539040, 20.916218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416634, 33.586243, 21.652935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268484, 33.219589, 21.592796>,  <25.179594, 32.999596, 21.556713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268484, 33.219589, 21.592796>,  <25.416634, 33.586243, 21.652935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268484, 33.219589, 21.592796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737914, -0.388657, 0.551751,
		-0.564187, 0.093412, 0.820346,
		-0.370373, -0.916635, -0.150345,
		25.157372, 32.944599, 21.547693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525862, 33.222221, 22.377277>,  <25.416634, 33.586243, 21.652935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.525862, 33.222221, 22.377277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457170, 32.941437, 22.100796>,  <25.415956, 32.772964, 21.934906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457170, 32.941437, 22.100796>,  <25.525862, 33.222221, 22.377277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.457170, 32.941437, 22.100796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691817, -0.585439, 0.422670,
		-0.701355, -0.405602, 0.586164,
		-0.171727, -0.701960, -0.691203,
		25.405653, 32.730850, 21.893435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442593, 32.517174, 22.728891>,  <25.525862, 33.222221, 22.377277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442593, 32.517174, 22.728891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568649, 32.421272, 22.361588>,  <25.644283, 32.363731, 22.141205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568649, 32.421272, 22.361588>,  <25.442593, 32.517174, 22.728891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568649, 32.421272, 22.361588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710474, -0.581893, 0.395763,
		-0.629215, -0.777122, -0.013040,
		0.315143, -0.239756, -0.918260,
		25.663193, 32.349346, 22.086109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492544, 31.802418, 22.722908>,  <25.442593, 32.517174, 22.728891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492544, 31.802418, 22.722908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703867, 31.858261, 22.387909>,  <25.830660, 31.891768, 22.186909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.703867, 31.858261, 22.387909>,  <25.492544, 31.802418, 22.722908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703867, 31.858261, 22.387909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618548, -0.738992, 0.267001,
		-0.581629, -0.659091, -0.476768,
		0.528305, 0.139608, -0.837498,
		25.862358, 31.900143, 22.136660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525980, 31.114677, 22.397068>,  <25.492544, 31.802418, 22.722908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.525980, 31.114677, 22.397068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822462, 31.354488, 22.276279>,  <26.000351, 31.498375, 22.203806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822462, 31.354488, 22.276279>,  <25.525980, 31.114677, 22.397068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822462, 31.354488, 22.276279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639271, -0.767662, 0.045026,
		-0.204817, -0.226415, -0.952253,
		0.741204, 0.599525, -0.301971,
		26.044823, 31.534346, 22.185688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840145, 30.702578, 21.923845>,  <25.525980, 31.114677, 22.397068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840145, 30.702578, 21.923845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125278, 30.964302, 22.024834>,  <26.296358, 31.121338, 22.085426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125278, 30.964302, 22.024834>,  <25.840145, 30.702578, 21.923845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125278, 30.964302, 22.024834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660002, -0.747605, 0.074055,
		0.237205, 0.113844, -0.964766,
		0.712833, 0.654313, 0.252473,
		26.339128, 31.160597, 22.100576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377737, 30.370501, 21.583315>,  <25.840145, 30.702578, 21.923845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377737, 30.370501, 21.583315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542484, 30.648117, 21.819508>,  <26.641333, 30.814688, 21.961224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542484, 30.648117, 21.819508>,  <26.377737, 30.370501, 21.583315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542484, 30.648117, 21.819508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828973, -0.554443, 0.073463,
		0.378375, 0.459235, -0.803701,
		0.411869, 0.694043, 0.590481,
		26.666044, 30.856331, 21.996653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935173, 30.500124, 21.195286>,  <26.377737, 30.370501, 21.583315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935173, 30.500124, 21.195286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958063, 30.582436, 21.586056>,  <26.971798, 30.631823, 21.820517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958063, 30.582436, 21.586056>,  <26.935173, 30.500124, 21.195286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958063, 30.582436, 21.586056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793353, -0.603398, 0.080629,
		0.606066, 0.770432, -0.197786,
		0.057224, 0.205780, 0.976924,
		26.975231, 30.644169, 21.879133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708208, 30.530163, 21.271326>,  <26.935173, 30.500124, 21.195286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708208, 30.530163, 21.271326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542509, 30.485680, 21.632664>,  <27.443089, 30.458990, 21.849466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542509, 30.485680, 21.632664>,  <27.708208, 30.530163, 21.271326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.542509, 30.485680, 21.632664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684016, -0.692794, 0.228383,
		0.600432, 0.712509, 0.363059,
		-0.414250, -0.111210, 0.903344,
		27.418234, 30.452316, 21.903667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237076, 30.737215, 21.592386>,  <27.708208, 30.530163, 21.271326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237076, 30.737215, 21.592386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979759, 30.499969, 21.786041>,  <27.825369, 30.357622, 21.902235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979759, 30.499969, 21.786041>,  <28.237076, 30.737215, 21.592386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979759, 30.499969, 21.786041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722456, -0.679576, 0.127411,
		0.253440, 0.431731, 0.865665,
		-0.643292, -0.593114, 0.484138,
		27.786772, 30.322035, 21.931282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633492, 30.404669, 22.093912>,  <28.237076, 30.737215, 21.592386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633492, 30.404669, 22.093912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321541, 30.154373, 22.087692>,  <28.134371, 30.004196, 22.083960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321541, 30.154373, 22.087692>,  <28.633492, 30.404669, 22.093912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321541, 30.154373, 22.087692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614242, -0.760292, -0.211337,
		0.120419, -0.174368, 0.977290,
		-0.779876, -0.625741, -0.015551,
		28.087578, 29.966650, 22.083027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861483, 29.756067, 22.472046>,  <28.633492, 30.404669, 22.093912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861483, 29.756067, 22.472046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559935, 29.641750, 22.235401>,  <28.379005, 29.573160, 22.093414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559935, 29.641750, 22.235401>,  <28.861483, 29.756067, 22.472046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559935, 29.641750, 22.235401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443461, -0.885727, -0.137220,
		-0.484789, -0.365802, 0.794461,
		-0.753871, -0.285790, -0.591609,
		28.333773, 29.556013, 22.057919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141104, 29.877432, 23.163805>,  <28.861483, 29.756067, 22.472046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141104, 29.877432, 23.163805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489855, 29.787872, 23.338020>,  <29.699106, 29.734137, 23.442551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489855, 29.787872, 23.338020>,  <29.141104, 29.877432, 23.163805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489855, 29.787872, 23.338020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153622, 0.969519, 0.190877,
		-0.465001, -0.099513, 0.879699,
		0.871880, -0.223899, 0.435540,
		29.751419, 29.720703, 23.468683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133789, 30.158266, 23.854181>,  <29.141104, 29.877432, 23.163805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133789, 30.158266, 23.854181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509092, 30.098843, 23.729218>,  <29.734274, 30.063189, 23.654240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509092, 30.098843, 23.729218>,  <29.133789, 30.158266, 23.854181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509092, 30.098843, 23.729218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268986, 0.881166, 0.388835,
		0.217519, -0.448861, 0.866723,
		0.938260, -0.148558, -0.312408,
		29.790571, 30.054276, 23.635496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465416, 30.426884, 24.380598>,  <29.133789, 30.158266, 23.854181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465416, 30.426884, 24.380598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757019, 30.418945, 24.106911>,  <29.931980, 30.414183, 23.942698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757019, 30.418945, 24.106911>,  <29.465416, 30.426884, 24.380598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757019, 30.418945, 24.106911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239023, 0.944039, 0.227284,
		0.641418, -0.329235, 0.692955,
		0.729006, -0.019848, -0.684219,
		29.975721, 30.412991, 23.901646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029373, 30.609442, 24.619034>,  <29.465416, 30.426884, 24.380598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029373, 30.609442, 24.619034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110773, 30.697109, 24.237343>,  <30.159613, 30.749710, 24.008327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110773, 30.697109, 24.237343>,  <30.029373, 30.609442, 24.619034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110773, 30.697109, 24.237343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151697, 0.955795, 0.251881,
		0.967252, -0.196011, 0.161255,
		0.203498, 0.219170, -0.954229,
		30.171824, 30.762859, 23.951075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644529, 31.034231, 24.593071>,  <30.029373, 30.609442, 24.619034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644529, 31.034231, 24.593071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445364, 31.087498, 24.250294>,  <30.325865, 31.119457, 24.044628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445364, 31.087498, 24.250294>,  <30.644529, 31.034231, 24.593071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445364, 31.087498, 24.250294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304650, 0.952021, -0.029069,
		0.811954, -0.275541, -0.514594,
		-0.497914, 0.133168, -0.856941,
		30.295990, 31.127449, 23.993212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065935, 31.476446, 24.127893>,  <30.644529, 31.034231, 24.593071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065935, 31.476446, 24.127893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699450, 31.513008, 23.971844>,  <30.479559, 31.534945, 23.878214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699450, 31.513008, 23.971844>,  <31.065935, 31.476446, 24.127893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699450, 31.513008, 23.971844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159481, 0.976377, -0.145784,
		0.367583, -0.195787, -0.909148,
		-0.916214, 0.091404, -0.390124,
		30.424585, 31.540430, 23.854807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151428, 31.835745, 23.566551>,  <31.065935, 31.476446, 24.127893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151428, 31.835745, 23.566551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760326, 31.885227, 23.634308>,  <30.525665, 31.914917, 23.674963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760326, 31.885227, 23.634308>,  <31.151428, 31.835745, 23.566551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760326, 31.885227, 23.634308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084218, 0.971151, -0.223101,
		-0.192106, -0.203872, -0.959964,
		-0.977754, 0.123705, 0.169394,
		30.467001, 31.922338, 23.685125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922518, 32.237576, 22.911110>,  <31.151428, 31.835745, 23.566551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922518, 32.237576, 22.911110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659779, 32.306564, 23.204723>,  <30.502136, 32.347958, 23.380892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659779, 32.306564, 23.204723>,  <30.922518, 32.237576, 22.911110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659779, 32.306564, 23.204723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004002, 0.974273, -0.225336,
		-0.754014, -0.145074, -0.640637,
		-0.656846, 0.172470, 0.734035,
		30.462725, 32.358307, 23.424934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474094, 32.779072, 22.645216>,  <30.922518, 32.237576, 22.911110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474094, 32.779072, 22.645216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441656, 32.796989, 23.043495>,  <30.422194, 32.807739, 23.282463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441656, 32.796989, 23.043495>,  <30.474094, 32.779072, 22.645216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441656, 32.796989, 23.043495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006417, 0.998992, -0.044424,
		-0.996686, 0.002787, -0.081302,
		-0.081096, 0.044799, 0.995699,
		30.417328, 32.810429, 23.342205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.934748, 33.263817, 22.737591>,  <30.474094, 32.779072, 22.645216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.934748, 33.263817, 22.737591> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154806, 33.251415, 23.071388>,  <30.286842, 33.243977, 23.271666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154806, 33.251415, 23.071388>,  <29.934748, 33.263817, 22.737591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154806, 33.251415, 23.071388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138988, 0.988771, -0.054896,
		-0.823420, 0.146186, 0.548278,
		0.550147, -0.031001, 0.834492,
		30.319851, 33.242115, 23.321735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794132, 33.884483, 23.067354>,  <29.934748, 33.263817, 22.737591>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794132, 33.884483, 23.067354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114733, 33.786140, 23.285400>,  <30.307093, 33.727135, 23.416229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114733, 33.786140, 23.285400>,  <29.794132, 33.884483, 23.067354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114733, 33.786140, 23.285400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106971, 0.955818, 0.273804,
		-0.588348, -0.161143, 0.792388,
		0.801501, -0.245854, 0.545116,
		30.355183, 33.712383, 23.448935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724003, 34.026577, 23.759714>,  <29.794132, 33.884483, 23.067354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724003, 34.026577, 23.759714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118971, 34.038254, 23.697552>,  <30.355951, 34.045258, 23.660254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118971, 34.038254, 23.697552>,  <29.724003, 34.026577, 23.759714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118971, 34.038254, 23.697552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029267, 0.932100, 0.361016,
		0.155393, -0.361023, 0.919519,
		0.987419, 0.029188, -0.155408,
		30.415197, 34.047009, 23.650928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.603701, 25.956385, 24.214045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.921200, 26.061028, 23.994400>,  <30.111700, 26.123814, 23.862614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.921200, 26.061028, 23.994400>,  <29.603701, 25.956385, 24.214045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921200, 26.061028, 23.994400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221044, 0.965122, 0.140283,
		0.566658, 0.010028, 0.823892,
		0.793749, 0.261608, -0.549111,
		30.159325, 26.139509, 23.829666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885950, 26.511864, 24.623243>,  <29.603701, 25.956385, 24.214045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885950, 26.511864, 24.623243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.020645, 26.538280, 24.247532>,  <30.101463, 26.554131, 24.022104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.020645, 26.538280, 24.247532>,  <29.885950, 26.511864, 24.623243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020645, 26.538280, 24.247532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103416, 0.994096, 0.032822,
		0.935901, 0.086084, 0.341582,
		0.336740, 0.066044, -0.939279,
		30.121668, 26.558094, 23.965748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208288, 27.118689, 24.697309>,  <29.885950, 26.511864, 24.623243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208288, 27.118689, 24.697309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.156710, 27.050552, 24.306545>,  <30.125763, 27.009670, 24.072086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.156710, 27.050552, 24.306545>,  <30.208288, 27.118689, 24.697309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156710, 27.050552, 24.306545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010795, 0.985319, -0.170381,
		0.991593, -0.011424, -0.128889,
		-0.128944, -0.170340, -0.976913,
		30.118027, 26.999451, 24.013472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626339, 27.508272, 24.370878>,  <30.208288, 27.118689, 24.697309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626339, 27.508272, 24.370878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.354650, 27.427700, 24.088577>,  <30.191637, 27.379356, 23.919197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.354650, 27.427700, 24.088577>,  <30.626339, 27.508272, 24.370878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354650, 27.427700, 24.088577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069295, 0.974905, -0.211560,
		0.730654, -0.094791, -0.676135,
		-0.679222, -0.201430, -0.705750,
		30.150885, 27.367271, 23.876852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857386, 27.818989, 23.815792>,  <30.626339, 27.508272, 24.370878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857386, 27.818989, 23.815792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.472506, 27.760258, 23.724045>,  <30.241577, 27.725019, 23.668997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.472506, 27.760258, 23.724045>,  <30.857386, 27.818989, 23.815792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472506, 27.760258, 23.724045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100945, 0.974511, -0.200348,
		0.252939, -0.169622, -0.952497,
		-0.962202, -0.146826, -0.229369,
		30.183846, 27.716209, 23.655233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785620, 28.015902, 23.123398>,  <30.857386, 27.818989, 23.815792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785620, 28.015902, 23.123398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.421995, 28.044888, 23.287521>,  <30.203819, 28.062279, 23.385996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.421995, 28.044888, 23.287521>,  <30.785620, 28.015902, 23.123398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421995, 28.044888, 23.287521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002501, 0.985691, -0.168541,
		-0.416650, -0.152189, -0.896237,
		-0.909064, 0.072464, 0.410308,
		30.149277, 28.066628, 23.410614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414843, 28.410839, 22.749575>,  <30.785620, 28.015902, 23.123398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414843, 28.410839, 22.749575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.223269, 28.445618, 23.098988>,  <30.108324, 28.466486, 23.308636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.223269, 28.445618, 23.098988>,  <30.414843, 28.410839, 22.749575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.223269, 28.445618, 23.098988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102030, 0.982825, -0.153768,
		-0.871900, -0.162772, -0.461840,
		-0.478937, 0.086948, 0.873533,
		30.079588, 28.471703, 23.361048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927067, 28.900957, 22.635897>,  <30.414843, 28.410839, 22.749575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927067, 28.900957, 22.635897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.925125, 28.884968, 23.035572>,  <29.923960, 28.875374, 23.275377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.925125, 28.884968, 23.035572>,  <29.927067, 28.900957, 22.635897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925125, 28.884968, 23.035572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033725, 0.998639, 0.039789,
		-0.999419, -0.033505, -0.006196,
		-0.004855, -0.039975, 0.999189,
		29.923668, 28.872974, 23.335329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417572, 29.293440, 22.815918>,  <29.927067, 28.900957, 22.635897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417572, 29.293440, 22.815918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.618385, 29.309448, 23.161488>,  <29.738873, 29.319054, 23.368830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.618385, 29.309448, 23.161488>,  <29.417572, 29.293440, 22.815918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618385, 29.309448, 23.161488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133578, 0.990530, 0.031735,
		-0.854471, -0.131334, 0.502623,
		0.502031, 0.040023, 0.863923,
		29.768995, 29.321455, 23.420664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630663, 29.085386, 22.743120>,  <29.417572, 29.293440, 22.815918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630663, 29.085386, 22.743120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.449646, 29.088947, 22.386440>,  <28.341036, 29.091084, 22.172432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.449646, 29.088947, 22.386440>,  <28.630663, 29.085386, 22.743120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449646, 29.088947, 22.386440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265350, -0.953310, -0.144182,
		-0.851350, -0.301861, 0.429050,
		-0.452540, 0.008901, -0.891699,
		28.313885, 29.091618, 22.118931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280289, 28.462605, 22.716249>,  <28.630663, 29.085386, 22.743120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280289, 28.462605, 22.716249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.318626, 28.604301, 22.344158>,  <28.341629, 28.689320, 22.120903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.318626, 28.604301, 22.344158>,  <28.280289, 28.462605, 22.716249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318626, 28.604301, 22.344158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283993, -0.905421, -0.315532,
		-0.954024, -0.233937, -0.187380,
		0.095844, 0.354240, -0.930230,
		28.347380, 28.710573, 22.065088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930422, 27.995974, 22.304403>,  <28.280289, 28.462605, 22.716249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.930422, 27.995974, 22.304403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.154327, 28.181831, 22.029953>,  <28.288671, 28.293346, 21.865282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.154327, 28.181831, 22.029953>,  <27.930422, 27.995974, 22.304403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154327, 28.181831, 22.029953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253154, -0.884306, -0.392321,
		-0.789035, 0.045912, -0.612631,
		0.559765, 0.464645, -0.686126,
		28.322256, 28.321224, 21.824116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786182, 27.738976, 21.701128>,  <27.930422, 27.995974, 22.304403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786182, 27.738976, 21.701128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.155340, 27.884212, 21.649857>,  <28.376835, 27.971355, 21.619093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.155340, 27.884212, 21.649857>,  <27.786182, 27.738976, 21.701128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155340, 27.884212, 21.649857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275512, -0.855237, -0.438933,
		-0.268999, 0.369773, -0.889330,
		0.922894, 0.363093, -0.128181,
		28.432209, 27.993141, 21.611403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887457, 27.246666, 21.216312>,  <27.786182, 27.738976, 21.701128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887457, 27.246666, 21.216312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.235693, 27.434322, 21.275616>,  <28.444635, 27.546915, 21.311197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.235693, 27.434322, 21.275616>,  <27.887457, 27.246666, 21.216312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235693, 27.434322, 21.275616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478710, -0.738100, -0.475442,
		-0.113620, 0.484888, -0.867164,
		0.870590, 0.469140, 0.148258,
		28.496870, 27.575064, 21.320093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303692, 27.396336, 20.526360>,  <27.887457, 27.246666, 21.216312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303692, 27.396336, 20.526360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.557497, 27.392670, 20.835503>,  <28.709780, 27.390471, 21.020988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.557497, 27.392670, 20.835503>,  <28.303692, 27.396336, 20.526360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.557497, 27.392670, 20.835503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385919, -0.862608, -0.327068,
		0.669672, 0.505789, -0.543798,
		0.634512, -0.009167, 0.772859,
		28.747850, 27.389919, 21.067360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976389, 27.157269, 20.260792>,  <28.303692, 27.396336, 20.526360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976389, 27.157269, 20.260792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.926973, 27.084518, 20.651005>,  <28.897324, 27.040869, 20.885132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.926973, 27.084518, 20.651005>,  <28.976389, 27.157269, 20.260792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926973, 27.084518, 20.651005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386423, -0.914281, -0.121522,
		0.914011, 0.361954, 0.183230,
		-0.123538, -0.181877, 0.975530,
		28.889912, 27.029955, 20.943665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478889, 26.543724, 20.298800>,  <28.976389, 27.157269, 20.260792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478889, 26.543724, 20.298800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.281912, 26.522240, 20.646275>,  <29.163725, 26.509350, 20.854759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.281912, 26.522240, 20.646275>,  <29.478889, 26.543724, 20.298800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281912, 26.522240, 20.646275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264422, -0.960149, 0.090530,
		0.829206, 0.274280, 0.487019,
		-0.492442, -0.053710, 0.868686,
		29.134180, 26.506126, 20.906881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895002, 26.024805, 20.741705>,  <29.478889, 26.543724, 20.298800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895002, 26.024805, 20.741705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.532066, 26.035610, 20.909515>,  <29.314304, 26.042093, 21.010202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.532066, 26.035610, 20.909515>,  <29.895002, 26.024805, 20.741705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532066, 26.035610, 20.909515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042523, -0.986918, 0.155514,
		0.418240, 0.158944, 0.894322,
		-0.907341, 0.027013, 0.419528,
		29.259865, 26.043715, 21.035374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908567, 25.918116, 21.457302>,  <29.895002, 26.024805, 20.741705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908567, 25.918116, 21.457302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.539778, 25.815205, 21.341526>,  <29.318504, 25.753458, 21.272060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.539778, 25.815205, 21.341526>,  <29.908567, 25.918116, 21.457302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539778, 25.815205, 21.341526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173041, -0.942343, 0.286438,
		-0.346445, 0.214004, 0.913334,
		-0.921972, -0.257279, -0.289439,
		29.263186, 25.738020, 21.254694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743483, 25.291887, 21.854313>,  <29.908567, 25.918116, 21.457302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743483, 25.291887, 21.854313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.454321, 25.276173, 21.578381>,  <29.280825, 25.266743, 21.412821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.454321, 25.276173, 21.578381>,  <29.743483, 25.291887, 21.854313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454321, 25.276173, 21.578381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004493, -0.998094, 0.061553,
		-0.690935, 0.047596, 0.721348,
		-0.722903, -0.039288, -0.689831,
		29.237450, 25.264385, 21.371431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139187, 24.893589, 22.133333>,  <29.743483, 25.291887, 21.854313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139187, 24.893589, 22.133333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.110676, 24.873066, 21.734879>,  <29.093569, 24.860752, 21.495806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.110676, 24.873066, 21.734879>,  <29.139187, 24.893589, 22.133333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110676, 24.873066, 21.734879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122696, -0.990641, 0.059804,
		-0.989881, 0.126485, 0.064315,
		-0.071277, -0.051308, -0.996136,
		29.089293, 24.857674, 21.436037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599230, 24.394815, 22.025908>,  <29.139187, 24.893589, 22.133333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599230, 24.394815, 22.025908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.828188, 24.429447, 21.699749>,  <28.965563, 24.450226, 21.504055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.828188, 24.429447, 21.699749>,  <28.599230, 24.394815, 22.025908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828188, 24.429447, 21.699749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109723, -0.993554, -0.028469,
		-0.812604, -0.073172, -0.578205,
		0.572395, 0.086577, -0.815395,
		28.999907, 24.455420, 21.455132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231617, 24.017412, 21.583784>,  <28.599230, 24.394815, 22.025908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231617, 24.017412, 21.583784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.599081, 24.041298, 21.427582>,  <28.819559, 24.055630, 21.333860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.599081, 24.041298, 21.427582>,  <28.231617, 24.017412, 21.583784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599081, 24.041298, 21.427582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037165, -0.971060, -0.235926,
		-0.393292, 0.231249, -0.889857,
		0.918662, 0.059716, -0.390504,
		28.874680, 24.059214, 21.310431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.436672, 24.985792, 18.735783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.039398, 24.983006, 18.782330>,  <33.801033, 24.981333, 18.810257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.039398, 24.983006, 18.782330>,  <34.436672, 24.985792, 18.735783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039398, 24.983006, 18.782330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028952, 0.981679, -0.188331,
		-0.112922, -0.190416, -0.975187,
		-0.993182, -0.006967, 0.116366,
		33.741444, 24.980915, 18.817240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131344, 25.388147, 18.192837>,  <34.436672, 24.985792, 18.735783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131344, 25.388147, 18.192837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.826771, 25.380314, 18.452015>,  <33.644028, 25.375614, 18.607521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.826771, 25.380314, 18.452015>,  <34.131344, 25.388147, 18.192837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826771, 25.380314, 18.452015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179229, 0.966939, -0.181400,
		-0.622971, -0.254255, -0.739771,
		-0.761436, -0.019582, 0.647945,
		33.598339, 25.374439, 18.646399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561222, 25.720947, 17.919628>,  <34.131344, 25.388147, 18.192837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561222, 25.720947, 17.919628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.523060, 25.739098, 18.317390>,  <33.500160, 25.749989, 18.556047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.523060, 25.739098, 18.317390>,  <33.561222, 25.720947, 17.919628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523060, 25.739098, 18.317390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137508, 0.988783, -0.058313,
		-0.985895, -0.142302, -0.088098,
		-0.095408, 0.045376, 0.994403,
		33.494438, 25.752710, 18.615711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148529, 26.252327, 17.920000>,  <33.561222, 25.720947, 17.919628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148529, 26.252327, 17.920000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281406, 26.223492, 18.296181>,  <33.361134, 26.206190, 18.521889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.281406, 26.223492, 18.296181>,  <33.148529, 26.252327, 17.920000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281406, 26.223492, 18.296181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054000, 0.996893, 0.057341,
		-0.941665, 0.031736, 0.335053,
		0.332192, -0.072089, 0.940453,
		33.381065, 26.201864, 18.578316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864342, 26.749783, 18.314625>,  <33.148529, 26.252327, 17.920000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864342, 26.749783, 18.314625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.165668, 26.669952, 18.565281>,  <33.346466, 26.622055, 18.715675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.165668, 26.669952, 18.565281>,  <32.864342, 26.749783, 18.314625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165668, 26.669952, 18.565281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079566, 0.973501, 0.214395,
		-0.652824, -0.111649, 0.749237,
		0.753320, -0.199576, 0.626641,
		33.391663, 26.610079, 18.753273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655342, 27.043936, 19.010349>,  <32.864342, 26.749783, 18.314625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655342, 27.043936, 19.010349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.049095, 27.012901, 18.947144>,  <33.285347, 26.994280, 18.909220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.049095, 27.012901, 18.947144>,  <32.655342, 27.043936, 19.010349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049095, 27.012901, 18.947144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107142, 0.976292, 0.188082,
		0.139675, -0.202075, 0.969359,
		0.984384, -0.077588, -0.158015,
		33.344410, 26.989624, 18.899738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010887, 27.400862, 19.563580>,  <32.655342, 27.043936, 19.010349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010887, 27.400862, 19.563580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.294529, 27.370293, 19.283199>,  <33.464714, 27.351952, 19.114971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.294529, 27.370293, 19.283199>,  <33.010887, 27.400862, 19.563580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294529, 27.370293, 19.283199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246348, 0.958314, 0.144730,
		0.660672, -0.275306, 0.698369,
		0.709102, -0.076423, -0.700952,
		33.507259, 27.347366, 19.072914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593372, 27.752405, 19.844465>,  <33.010887, 27.400862, 19.563580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593372, 27.752405, 19.844465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.611446, 27.746147, 19.444923>,  <33.622292, 27.742392, 19.205198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.611446, 27.746147, 19.444923>,  <33.593372, 27.752405, 19.844465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611446, 27.746147, 19.444923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311608, 0.950210, -0.000787,
		0.949136, -0.311216, 0.047809,
		0.045184, -0.015645, -0.998856,
		33.625000, 27.741453, 19.145267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141644, 28.188536, 19.662409>,  <33.593372, 27.752405, 19.844465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141644, 28.188536, 19.662409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.959518, 28.140007, 19.309597>,  <33.850243, 28.110889, 19.097910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.959518, 28.140007, 19.309597>,  <34.141644, 28.188536, 19.662409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959518, 28.140007, 19.309597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209694, 0.948192, -0.238665,
		0.865288, -0.293622, -0.406280,
		-0.455309, -0.121319, -0.882029,
		33.822926, 28.103611, 19.044989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607616, 28.482079, 19.256058>,  <34.141644, 28.188536, 19.662409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607616, 28.482079, 19.256058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.254051, 28.498581, 19.069725>,  <34.041912, 28.508482, 18.957926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.254051, 28.498581, 19.069725>,  <34.607616, 28.482079, 19.256058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254051, 28.498581, 19.069725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060605, 0.997806, -0.026630,
		0.463711, -0.051770, -0.884472,
		-0.883911, 0.041255, -0.465832,
		33.988876, 28.510958, 18.929976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680061, 28.885340, 18.613241>,  <34.607616, 28.482079, 19.256058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680061, 28.885340, 18.613241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.295521, 28.878757, 18.723179>,  <34.064796, 28.874807, 18.789141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.295521, 28.878757, 18.723179>,  <34.680061, 28.885340, 18.613241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295521, 28.878757, 18.723179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013712, 0.994113, 0.107479,
		-0.274995, 0.107093, -0.955463,
		-0.961348, -0.016455, 0.274845,
		34.007118, 28.873821, 18.805632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513889, 29.474657, 18.336691>,  <34.680061, 28.885340, 18.613241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513889, 29.474657, 18.336691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.196667, 29.383427, 18.562626>,  <34.006332, 29.328690, 18.698187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.196667, 29.383427, 18.562626>,  <34.513889, 29.474657, 18.336691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196667, 29.383427, 18.562626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135477, 0.970076, 0.201490,
		-0.593890, 0.083270, -0.800225,
		-0.793058, -0.228075, 0.564838,
		33.958748, 29.315004, 18.732077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856514, 29.785740, 18.059734>,  <34.513889, 29.474657, 18.336691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856514, 29.785740, 18.059734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.816517, 29.725872, 18.453201>,  <33.792519, 29.689951, 18.689281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.816517, 29.725872, 18.453201>,  <33.856514, 29.785740, 18.059734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816517, 29.725872, 18.453201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307367, 0.944914, 0.112530,
		-0.946323, -0.291095, -0.140488,
		-0.099992, -0.149671, 0.983667,
		33.786518, 29.680971, 18.748301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147282, 30.002651, 18.269405>,  <33.856514, 29.785740, 18.059734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147282, 30.002651, 18.269405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.373562, 30.043888, 18.596661>,  <33.509331, 30.068630, 18.793015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.373562, 30.043888, 18.596661>,  <33.147282, 30.002651, 18.269405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373562, 30.043888, 18.596661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256451, 0.964949, 0.055730,
		-0.783717, -0.241339, 0.572314,
		0.565704, 0.103094, 0.818139,
		33.543274, 30.074816, 18.842102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510956, 29.752853, 18.216248>,  <33.147282, 30.002651, 18.269405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510956, 29.752853, 18.216248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.193066, 29.814777, 17.981487>,  <32.002331, 29.851931, 17.840631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.193066, 29.814777, 17.981487>,  <32.510956, 29.752853, 18.216248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193066, 29.814777, 17.981487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043086, -0.978877, -0.199858,
		-0.605444, -0.133545, 0.784604,
		-0.794721, 0.154808, -0.586901,
		31.954649, 29.861219, 17.805416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957495, 29.347939, 18.438934>,  <32.510956, 29.752853, 18.216248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957495, 29.347939, 18.438934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.884295, 29.447388, 18.058472>,  <31.840374, 29.507057, 17.830194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.884295, 29.447388, 18.058472>,  <31.957495, 29.347939, 18.438934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884295, 29.447388, 18.058472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033163, -0.968505, -0.246777,
		-0.982554, -0.013617, 0.185480,
		-0.182999, 0.248623, -0.951156,
		31.829395, 29.521975, 17.773125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355051, 28.873907, 18.126574>,  <31.957495, 29.347939, 18.438934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355051, 28.873907, 18.126574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.508665, 28.993999, 17.777317>,  <31.600834, 29.066055, 17.567762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.508665, 28.993999, 17.777317>,  <31.355051, 28.873907, 18.126574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508665, 28.993999, 17.777317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162601, -0.908887, -0.384037,
		-0.908887, 0.289458, -0.300229,
		0.384037, 0.300229, -0.873142,
		31.623877, 29.084068, 17.515375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860376, 28.790945, 17.647444>,  <31.355051, 28.873907, 18.126574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860376, 28.790945, 17.647444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.221394, 28.777927, 17.475697>,  <31.438004, 28.770117, 17.372648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.221394, 28.777927, 17.475697>,  <30.860376, 28.790945, 17.647444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221394, 28.777927, 17.475697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259387, -0.837012, -0.481798,
		-0.343708, 0.546215, -0.763880,
		0.902543, -0.032543, -0.429369,
		31.492157, 28.768164, 17.346886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651842, 28.630178, 17.033787>,  <30.860376, 28.790945, 17.647444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651842, 28.630178, 17.033787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.040485, 28.536991, 17.050289>,  <31.273672, 28.481079, 17.060190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.040485, 28.536991, 17.050289>,  <30.651842, 28.630178, 17.033787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040485, 28.536991, 17.050289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214400, -0.940712, -0.262856,
		0.100048, 0.246548, -0.963953,
		0.971608, -0.232969, 0.041257,
		31.331968, 28.467100, 17.062666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809088, 28.397797, 16.362219>,  <30.651842, 28.630178, 17.033787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809088, 28.397797, 16.362219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.098312, 28.238483, 16.587982>,  <31.271847, 28.142897, 16.723440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.098312, 28.238483, 16.587982>,  <30.809088, 28.397797, 16.362219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098312, 28.238483, 16.587982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274377, -0.915424, -0.294477,
		0.633956, 0.058064, -0.771187,
		0.723061, -0.398281, 0.564407,
		31.315231, 28.118999, 16.757303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924620, 27.814631, 16.051781>,  <30.809088, 28.397797, 16.362219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924620, 27.814631, 16.051781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.111021, 27.749733, 16.399693>,  <31.222862, 27.710794, 16.608440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.111021, 27.749733, 16.399693>,  <30.924620, 27.814631, 16.051781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111021, 27.749733, 16.399693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181160, -0.979713, -0.085689,
		0.866038, -0.117638, -0.485941,
		0.466003, -0.162243, 0.869781,
		31.250822, 27.701059, 16.660627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546629, 27.294146, 15.957131>,  <30.924620, 27.814631, 16.051781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546629, 27.294146, 15.957131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.429806, 27.279152, 16.339397>,  <31.359713, 27.270155, 16.568758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.429806, 27.279152, 16.339397>,  <31.546629, 27.294146, 15.957131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429806, 27.279152, 16.339397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168471, -0.981590, -0.089989,
		0.941445, -0.187284, 0.280366,
		-0.292058, -0.037486, 0.955665,
		31.342188, 27.267906, 16.626097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018917, 26.941849, 16.374035>,  <31.546629, 27.294146, 15.957131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018917, 26.941849, 16.374035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.675312, 26.898994, 16.574284>,  <31.469151, 26.873281, 16.694433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.675312, 26.898994, 16.574284>,  <32.018917, 26.941849, 16.374035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675312, 26.898994, 16.574284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111908, -0.993505, -0.020597,
		0.499579, 0.038330, 0.865420,
		-0.859010, -0.107137, 0.500623,
		31.417608, 26.866854, 16.724470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078487, 26.334568, 16.716501>,  <32.018917, 26.941849, 16.374035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078487, 26.334568, 16.716501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.688154, 26.375229, 16.793869>,  <31.453953, 26.399626, 16.840290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.688154, 26.375229, 16.793869>,  <32.078487, 26.334568, 16.716501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688154, 26.375229, 16.793869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101450, -0.994780, 0.010969,
		0.193525, -0.008919, 0.981055,
		-0.975836, 0.101651, 0.193419,
		31.395403, 26.405724, 16.851894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894915, 25.882978, 17.287148>,  <32.078487, 26.334568, 16.716501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894915, 25.882978, 17.287148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.544670, 25.951180, 17.106377>,  <31.334524, 25.992100, 16.997915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.544670, 25.951180, 17.106377>,  <31.894915, 25.882978, 17.287148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544670, 25.951180, 17.106377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153324, -0.985349, -0.074690,
		-0.458039, 0.003892, 0.888923,
		-0.875609, 0.170505, -0.451925,
		31.281988, 26.002331, 16.970798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361935, 25.659815, 17.770967>,  <31.894915, 25.882978, 17.287148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361935, 25.659815, 17.770967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.245083, 25.651962, 17.388496>,  <31.174973, 25.647251, 17.159014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.245083, 25.651962, 17.388496>,  <31.361935, 25.659815, 17.770967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245083, 25.651962, 17.388496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209968, -0.974080, 0.084147,
		-0.933045, 0.225349, 0.280436,
		-0.292129, -0.019631, -0.956177,
		31.157444, 25.646072, 17.101643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813877, 25.213621, 17.777573>,  <31.361935, 25.659815, 17.770967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813877, 25.213621, 17.777573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.911095, 25.216412, 17.389576>,  <30.969425, 25.218086, 17.156778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.911095, 25.216412, 17.389576>,  <30.813877, 25.213621, 17.777573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911095, 25.216412, 17.389576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249039, -0.966007, -0.069348,
		-0.937502, 0.258420, -0.233044,
		0.243043, 0.006977, -0.969990,
		30.984007, 25.218504, 17.098579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256306, 25.014874, 17.321533>,  <30.813877, 25.213621, 17.777573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256306, 25.014874, 17.321533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.617054, 24.933403, 17.169140>,  <30.833502, 24.884521, 17.077703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.617054, 24.933403, 17.169140>,  <30.256306, 25.014874, 17.321533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617054, 24.933403, 17.169140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160720, -0.976771, 0.141729,
		-0.401002, -0.066589, -0.913654,
		0.901868, -0.203676, -0.380985,
		30.887615, 24.872301, 17.054844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469496, 24.973101, 17.201675>,  <30.256306, 25.014874, 17.321533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469496, 24.973101, 17.201675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.184160, 24.876846, 17.464958>,  <29.012959, 24.819094, 17.622929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.184160, 24.876846, 17.464958>,  <29.469496, 24.973101, 17.201675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184160, 24.876846, 17.464958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408736, 0.905776, -0.111824,
		-0.569281, -0.348802, -0.744484,
		-0.713340, -0.240638, 0.658209,
		28.970158, 24.804655, 17.662420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722029, 25.121552, 16.946688>,  <29.469496, 24.973101, 17.201675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722029, 25.121552, 16.946688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.679684, 25.098389, 17.343765>,  <28.654276, 25.084492, 17.582012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.679684, 25.098389, 17.343765>,  <28.722029, 25.121552, 16.946688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679684, 25.098389, 17.343765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470924, 0.882173, 0.001238,
		-0.875799, -0.467352, -0.120658,
		-0.105863, -0.057906, 0.992693,
		28.647924, 25.081017, 17.641573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100578, 25.326591, 17.008070>,  <28.722029, 25.121552, 16.946688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100578, 25.326591, 17.008070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.258629, 25.355343, 17.374393>,  <28.353460, 25.372595, 17.594187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.258629, 25.355343, 17.374393>,  <28.100578, 25.326591, 17.008070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.258629, 25.355343, 17.374393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505270, 0.849592, 0.151317,
		-0.767187, -0.522520, 0.372017,
		0.395129, 0.071880, 0.915809,
		28.377167, 25.376907, 17.649136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.600807, 25.561365, 17.476837>,  <28.100578, 25.326591, 17.008070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.600807, 25.561365, 17.476837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.936846, 25.662632, 17.668732>,  <28.138468, 25.723392, 17.783869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.936846, 25.662632, 17.668732>,  <27.600807, 25.561365, 17.476837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936846, 25.662632, 17.668732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385434, 0.900905, 0.199525,
		-0.381684, -0.352527, 0.854425,
		0.840094, 0.253169, 0.479737,
		28.188873, 25.738583, 17.812653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382635, 25.922844, 18.035233>,  <27.600807, 25.561365, 17.476837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382635, 25.922844, 18.035233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.760550, 26.047466, 17.994610>,  <27.987299, 26.122240, 17.970236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.760550, 26.047466, 17.994610>,  <27.382635, 25.922844, 18.035233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760550, 26.047466, 17.994610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256600, 0.896149, 0.362040,
		0.203804, -0.315992, 0.926614,
		0.944786, 0.311554, -0.101555,
		28.043985, 26.140932, 17.964144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564613, 26.364464, 18.595058>,  <27.382635, 25.922844, 18.035233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564613, 26.364464, 18.595058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.839458, 26.474476, 18.326065>,  <28.004366, 26.540483, 18.164669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.839458, 26.474476, 18.326065>,  <27.564613, 26.364464, 18.595058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839458, 26.474476, 18.326065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112909, 0.954761, 0.275106,
		0.717723, -0.113100, 0.687083,
		0.687114, 0.275028, -0.672483,
		28.045593, 26.556984, 18.124321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884279, 26.912830, 18.925541>,  <27.564613, 26.364464, 18.595058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884279, 26.912830, 18.925541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.023561, 26.948490, 18.552273>,  <28.107132, 26.969887, 18.328312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.023561, 26.948490, 18.552273>,  <27.884279, 26.912830, 18.925541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023561, 26.948490, 18.552273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162840, 0.974580, 0.153870,
		0.923166, -0.205536, 0.324839,
		0.348208, 0.089151, -0.933169,
		28.128023, 26.975235, 18.272322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479589, 27.376123, 18.996990>,  <27.884279, 26.912830, 18.925541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479589, 27.376123, 18.996990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.357416, 27.381435, 18.616142>,  <28.284111, 27.384623, 18.387634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.357416, 27.381435, 18.616142>,  <28.479589, 27.376123, 18.996990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357416, 27.381435, 18.616142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169348, 0.984720, -0.040589,
		0.937033, -0.173637, -0.303017,
		-0.305434, 0.013282, -0.952121,
		28.265785, 27.385420, 18.330505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069077, 27.682512, 18.589836>,  <28.479589, 27.376123, 18.996990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069077, 27.682512, 18.589836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.706312, 27.705620, 18.422897>,  <28.488653, 27.719484, 18.322735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.706312, 27.705620, 18.422897>,  <29.069077, 27.682512, 18.589836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706312, 27.705620, 18.422897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120375, 0.984794, -0.125262,
		0.403764, -0.163839, -0.900073,
		-0.906909, 0.057770, -0.417346,
		28.434238, 27.722950, 18.297693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181011, 28.115700, 18.016012>,  <29.069077, 27.682512, 18.589836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181011, 28.115700, 18.016012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.796663, 28.126385, 18.126297>,  <28.566055, 28.132795, 18.192469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.796663, 28.126385, 18.126297>,  <29.181011, 28.115700, 18.016012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796663, 28.126385, 18.126297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024213, 0.983429, -0.179667,
		-0.275943, -0.179312, -0.944300,
		-0.960869, 0.026713, 0.275712,
		28.508402, 28.134399, 18.209011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884182, 28.622013, 17.503744>,  <29.181011, 28.115700, 18.016012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884182, 28.622013, 17.503744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.606829, 28.591652, 17.790367>,  <28.440416, 28.573435, 17.962341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.606829, 28.591652, 17.790367>,  <28.884182, 28.622013, 17.503744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606829, 28.591652, 17.790367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288218, 0.940637, -0.179256,
		-0.660416, -0.330819, -0.674100,
		-0.693384, -0.075904, 0.716559,
		28.398813, 28.568880, 18.005335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310837, 29.150528, 17.254438>,  <28.884182, 28.622013, 17.503744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310837, 29.150528, 17.254438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.238796, 29.082520, 17.641975>,  <28.195572, 29.041714, 17.874498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.238796, 29.082520, 17.641975>,  <28.310837, 29.150528, 17.254438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238796, 29.082520, 17.641975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409265, 0.908599, 0.083369,
		-0.894463, -0.381498, -0.233225,
		-0.180103, -0.170022, 0.968842,
		28.184765, 29.031513, 17.932629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614542, 29.214184, 17.352476>,  <28.310837, 29.150528, 17.254438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614542, 29.214184, 17.352476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.766987, 29.266346, 17.718590>,  <27.858454, 29.297644, 17.938257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.766987, 29.266346, 17.718590>,  <27.614542, 29.214184, 17.352476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766987, 29.266346, 17.718590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637341, 0.754226, 0.157923,
		-0.669738, -0.643535, 0.370559,
		0.381114, 0.130405, 0.915285,
		27.881321, 29.305468, 17.993176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070951, 29.188791, 17.793644>,  <27.614542, 29.214184, 17.352476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070951, 29.188791, 17.793644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.374250, 29.356842, 17.993065>,  <27.556231, 29.457672, 18.112717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.374250, 29.356842, 17.993065>,  <27.070951, 29.188791, 17.793644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374250, 29.356842, 17.993065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550797, 0.821936, 0.145066,
		-0.348832, -0.384597, 0.854635,
		0.758247, 0.420126, 0.498553,
		27.601725, 29.482880, 18.142632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.217117, 40.000015, 27.357283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.371510, 39.697094, 27.568001>,  <42.464146, 39.515343, 27.694431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.371510, 39.697094, 27.568001>,  <42.217117, 40.000015, 27.357283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.371510, 39.697094, 27.568001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326599, -0.646243, -0.689712,
		0.862758, 0.094165, -0.496771,
		0.385982, -0.757300, 0.526797,
		42.487305, 39.469906, 27.726040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753796, 39.698223, 26.977400>,  <42.217117, 40.000015, 27.357283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753796, 39.698223, 26.977400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.647434, 39.408718, 27.232105>,  <42.583618, 39.235016, 27.384928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.647434, 39.408718, 27.232105>,  <42.753796, 39.698223, 26.977400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.647434, 39.408718, 27.232105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216602, -0.598797, -0.771055,
		0.939351, -0.342949, 0.002453,
		-0.265902, -0.723760, 0.636764,
		42.567665, 39.191589, 27.423134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049706, 39.151997, 26.715845>,  <42.753796, 39.698223, 26.977400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049706, 39.151997, 26.715845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.761196, 38.999870, 26.947403>,  <42.588089, 38.908592, 27.086338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.761196, 38.999870, 26.947403>,  <43.049706, 39.151997, 26.715845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761196, 38.999870, 26.947403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323594, -0.553932, -0.767102,
		0.612411, -0.740619, 0.276469,
		-0.721276, -0.380318, 0.578894,
		42.544815, 38.885777, 27.121071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.077549, 38.507008, 26.537302>,  <43.049706, 39.151997, 26.715845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.077549, 38.507008, 26.537302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.713699, 38.511932, 26.703403>,  <42.495388, 38.514885, 26.803064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.713699, 38.511932, 26.703403>,  <43.077549, 38.507008, 26.537302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713699, 38.511932, 26.703403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324634, -0.644775, -0.692010,
		0.259227, -0.764273, 0.590498,
		-0.909623, 0.012308, 0.415252,
		42.440811, 38.515625, 26.827978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856968, 37.743450, 26.723717>,  <43.077549, 38.507008, 26.537302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856968, 37.743450, 26.723717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.525063, 37.963451, 26.685791>,  <42.325920, 38.095451, 26.663034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.525063, 37.963451, 26.685791>,  <42.856968, 37.743450, 26.723717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525063, 37.963451, 26.685791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404912, -0.710164, -0.575946,
		-0.384105, -0.439507, 0.811971,
		-0.829765, 0.550001, -0.094816,
		42.276134, 38.128452, 26.657347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332615, 37.312138, 26.787956>,  <42.856968, 37.743450, 26.723717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332615, 37.312138, 26.787956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.123280, 37.611500, 26.624981>,  <41.997677, 37.791119, 26.527197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.123280, 37.611500, 26.624981>,  <42.332615, 37.312138, 26.787956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123280, 37.611500, 26.624981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475263, -0.653225, -0.589425,
		-0.707278, -0.114828, 0.697547,
		-0.523338, 0.748406, -0.407439,
		41.966278, 37.836021, 26.502750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729042, 37.070202, 26.728699>,  <42.332615, 37.312138, 26.787956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729042, 37.070202, 26.728699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.731556, 37.367737, 26.461365>,  <41.733063, 37.546257, 26.300964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.731556, 37.367737, 26.461365>,  <41.729042, 37.070202, 26.728699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731556, 37.367737, 26.461365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402411, -0.609959, -0.682653,
		-0.915437, 0.273236, 0.295494,
		0.006285, 0.743836, -0.668333,
		41.733440, 37.590889, 26.260864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258244, 36.807037, 26.172710>,  <41.729042, 37.070202, 26.728699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258244, 36.807037, 26.172710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.407841, 37.121365, 25.975681>,  <41.497597, 37.309959, 25.857464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.407841, 37.121365, 25.975681>,  <41.258244, 36.807037, 26.172710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407841, 37.121365, 25.975681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212448, -0.444401, -0.870272,
		-0.902772, 0.430118, 0.000743,
		0.373990, 0.785816, -0.492570,
		41.520039, 37.357109, 25.827909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724171, 37.085632, 25.621819>,  <41.258244, 36.807037, 26.172710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724171, 37.085632, 25.621819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.098194, 37.174068, 25.510983>,  <41.322609, 37.227131, 25.444481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.098194, 37.174068, 25.510983>,  <40.724171, 37.085632, 25.621819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098194, 37.174068, 25.510983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109631, -0.562990, -0.819160,
		-0.337107, 0.796343, -0.502192,
		0.935062, 0.221088, -0.277092,
		41.378712, 37.240395, 25.427855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701073, 37.407516, 24.924421>,  <40.724171, 37.085632, 25.621819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701073, 37.407516, 24.924421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.079292, 37.281219, 24.956017>,  <41.306225, 37.205441, 24.974974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.079292, 37.281219, 24.956017>,  <40.701073, 37.407516, 24.924421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079292, 37.281219, 24.956017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103694, -0.522283, -0.846444,
		0.308511, 0.792166, -0.526586,
		0.945552, -0.315741, 0.078987,
		41.362957, 37.186497, 24.979713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018860, 37.494133, 24.257534>,  <40.701073, 37.407516, 24.924421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018860, 37.494133, 24.257534> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.251343, 37.226448, 24.442730>,  <41.390831, 37.065838, 24.553846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.251343, 37.226448, 24.442730>,  <41.018860, 37.494133, 24.257534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251343, 37.226448, 24.442730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007051, -0.573071, -0.819475,
		0.813727, 0.473018, -0.337790,
		0.581204, -0.669211, 0.462989,
		41.425705, 37.025684, 24.581627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482403, 37.268505, 23.770176>,  <41.018860, 37.494133, 24.257534>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482403, 37.268505, 23.770176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.509338, 36.961979, 24.025745>,  <41.525501, 36.778061, 24.179087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.509338, 36.961979, 24.025745>,  <41.482403, 37.268505, 23.770176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.509338, 36.961979, 24.025745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062211, -0.642355, -0.763878,
		0.995789, 0.011693, -0.090930,
		0.067342, -0.766318, 0.638922,
		41.529541, 36.732082, 24.217422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932621, 36.745975, 23.546953>,  <41.482403, 37.268505, 23.770176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932621, 36.745975, 23.546953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.689278, 36.558807, 23.803375>,  <41.543270, 36.446507, 23.957228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.689278, 36.558807, 23.803375>,  <41.932621, 36.745975, 23.546953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689278, 36.558807, 23.803375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035935, -0.790650, -0.611213,
		0.792848, -0.394873, 0.464185,
		-0.608359, -0.467918, 0.641055,
		41.506771, 36.418430, 23.995691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133045, 36.018448, 23.508284>,  <41.932621, 36.745975, 23.546953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133045, 36.018448, 23.508284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.769539, 36.003002, 23.674492>,  <41.551437, 35.993732, 23.774218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.769539, 36.003002, 23.674492>,  <42.133045, 36.018448, 23.508284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769539, 36.003002, 23.674492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257010, -0.732673, -0.630187,
		0.328776, -0.679484, 0.655902,
		-0.908764, -0.038617, 0.415520,
		41.496910, 35.991417, 23.799149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963268, 35.270939, 23.685007>,  <42.133045, 36.018448, 23.508284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963268, 35.270939, 23.685007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.589855, 35.411602, 23.712864>,  <41.365807, 35.495998, 23.729578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.589855, 35.411602, 23.712864>,  <41.963268, 35.270939, 23.685007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589855, 35.411602, 23.712864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310656, -0.696625, -0.646688,
		-0.178894, -0.625343, 0.759568,
		-0.933536, 0.351653, 0.069644,
		41.309795, 35.517097, 23.733757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600742, 34.644672, 23.594637>,  <41.963268, 35.270939, 23.685007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600742, 34.644672, 23.594637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.312988, 34.922516, 23.594818>,  <41.140335, 35.089222, 23.594927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.312988, 34.922516, 23.594818>,  <41.600742, 34.644672, 23.594637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312988, 34.922516, 23.594818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479476, -0.496113, -0.723861,
		-0.502611, -0.520919, 0.689946,
		-0.719364, 0.694633, 0.000417,
		41.097172, 35.130898, 23.594954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045559, 34.349266, 23.806671>,  <41.600742, 34.644672, 23.594637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045559, 34.349266, 23.806671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.944519, 34.644932, 23.556927>,  <40.883896, 34.822330, 23.407080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.944519, 34.644932, 23.556927>,  <41.045559, 34.349266, 23.806671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944519, 34.644932, 23.556927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434318, -0.663246, -0.609485,
		-0.864616, 0.117215, 0.488570,
		-0.252601, 0.739165, -0.624362,
		40.868740, 34.866680, 23.369617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440613, 34.190567, 23.710955>,  <41.045559, 34.349266, 23.806671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440613, 34.190567, 23.710955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.545864, 34.412907, 23.395538>,  <40.609013, 34.546310, 23.206289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.545864, 34.412907, 23.395538>,  <40.440613, 34.190567, 23.710955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545864, 34.412907, 23.395538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466046, -0.642417, -0.608359,
		-0.844729, 0.527571, 0.090016,
		0.263124, 0.555850, -0.788541,
		40.624802, 34.579662, 23.158976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862541, 34.440937, 23.183556>,  <40.440613, 34.190567, 23.710955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862541, 34.440937, 23.183556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.173935, 34.504692, 22.940720>,  <40.360771, 34.542946, 22.795017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.173935, 34.504692, 22.940720>,  <39.862541, 34.440937, 23.183556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173935, 34.504692, 22.940720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524284, -0.366656, -0.768563,
		-0.345093, 0.916602, -0.201872,
		0.778484, 0.159387, -0.607090,
		40.407478, 34.552509, 22.758593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494957, 34.845463, 22.652937>,  <39.862541, 34.440937, 23.183556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494957, 34.845463, 22.652937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.824421, 34.656342, 22.527695>,  <40.022099, 34.542870, 22.452549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.824421, 34.656342, 22.527695>,  <39.494957, 34.845463, 22.652937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824421, 34.656342, 22.527695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520310, -0.410528, -0.748828,
		0.225511, 0.779694, -0.584141,
		0.823664, -0.472804, -0.313105,
		40.071522, 34.514500, 22.433764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525249, 34.933849, 21.963545>,  <39.494957, 34.845463, 22.652937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525249, 34.933849, 21.963545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.767399, 34.618580, 22.007923>,  <39.912689, 34.429417, 22.034550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.767399, 34.618580, 22.007923>,  <39.525249, 34.933849, 21.963545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767399, 34.618580, 22.007923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359707, -0.395256, -0.845212,
		0.710025, 0.471759, -0.522788,
		0.605372, -0.788173, 0.110947,
		39.949009, 34.382130, 22.041206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319820, 34.892418, 21.272470>,  <39.525249, 34.933849, 21.963545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319820, 34.892418, 21.272470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.034496, 35.108517, 21.093887>,  <38.863304, 35.238178, 20.986738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.034496, 35.108517, 21.093887>,  <39.319820, 34.892418, 21.272470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034496, 35.108517, 21.093887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122879, 0.723557, 0.679239,
		0.689995, 0.429646, -0.582504,
		-0.713307, 0.540249, -0.446456,
		38.820503, 35.270592, 20.959949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622414, 35.471237, 21.136999>,  <39.319820, 34.892418, 21.272470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622414, 35.471237, 21.136999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.236282, 35.573822, 21.117512>,  <39.004604, 35.635372, 21.105820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.236282, 35.573822, 21.117512>,  <39.622414, 35.471237, 21.136999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236282, 35.573822, 21.117512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181574, 0.793740, 0.580524,
		0.187550, 0.551549, -0.812785,
		-0.965327, 0.256458, -0.048719,
		38.946686, 35.650761, 21.102896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627647, 36.137829, 21.149082>,  <39.622414, 35.471237, 21.136999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627647, 36.137829, 21.149082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.249405, 36.062172, 21.254959>,  <39.022461, 36.016777, 21.318485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.249405, 36.062172, 21.254959>,  <39.627647, 36.137829, 21.149082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249405, 36.062172, 21.254959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032940, 0.753775, 0.656306,
		-0.323654, 0.629323, -0.706541,
		-0.945602, -0.189142, 0.264692,
		38.965725, 36.005428, 21.334366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246574, 36.710709, 21.053127>,  <39.627647, 36.137829, 21.149082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246574, 36.710709, 21.053127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.046116, 36.507767, 21.333538>,  <38.925838, 36.386002, 21.501783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.046116, 36.507767, 21.333538>,  <39.246574, 36.710709, 21.053127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046116, 36.507767, 21.333538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032556, 0.820578, 0.570607,
		-0.864747, 0.263138, -0.427751,
		-0.501151, -0.507357, 0.701026,
		38.895771, 36.355560, 21.543846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764748, 37.185120, 21.273691>,  <39.246574, 36.710709, 21.053127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764748, 37.185120, 21.273691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.787838, 36.912971, 21.565929>,  <38.801693, 36.749683, 21.741272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.787838, 36.912971, 21.565929>,  <38.764748, 37.185120, 21.273691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787838, 36.912971, 21.565929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041995, 0.729511, 0.682678,
		-0.997449, -0.070087, 0.013536,
		0.057721, -0.680368, 0.730594,
		38.805153, 36.708862, 21.785107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235474, 37.380787, 21.698675>,  <38.764748, 37.185120, 21.273691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235474, 37.380787, 21.698675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.485447, 37.149509, 21.908493>,  <38.635433, 37.010742, 22.034384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.485447, 37.149509, 21.908493>,  <38.235474, 37.380787, 21.698675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485447, 37.149509, 21.908493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094152, 0.722831, 0.684581,
		-0.774977, -0.378432, 0.506162,
		0.624937, -0.578190, 0.524547,
		38.672928, 36.976051, 22.065857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947102, 37.362179, 22.410822>,  <38.235474, 37.380787, 21.698675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947102, 37.362179, 22.410822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.333363, 37.263462, 22.443348>,  <38.565121, 37.204231, 22.462864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.333363, 37.263462, 22.443348>,  <37.947102, 37.362179, 22.410822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333363, 37.263462, 22.443348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095490, 0.628088, 0.772261,
		-0.241657, -0.737971, 0.630081,
		0.965652, -0.246789, 0.081313,
		38.623058, 37.189426, 22.467741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989140, 37.377686, 23.058996>,  <37.947102, 37.362179, 22.410822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989140, 37.377686, 23.058996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.371677, 37.354046, 22.944515>,  <38.601200, 37.339863, 22.875828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.371677, 37.354046, 22.944515>,  <37.989140, 37.377686, 23.058996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371677, 37.354046, 22.944515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265404, 0.585591, 0.765927,
		0.122330, -0.808449, 0.575713,
		0.956345, -0.059100, -0.286201,
		38.658581, 37.336315, 22.858654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338970, 37.123684, 23.696636>,  <37.989140, 37.377686, 23.058996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338970, 37.123684, 23.696636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.592716, 37.321285, 23.458797>,  <38.744965, 37.439846, 23.316093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.592716, 37.321285, 23.458797>,  <38.338970, 37.123684, 23.696636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592716, 37.321285, 23.458797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321853, 0.530552, 0.784172,
		0.702847, -0.688822, 0.177566,
		0.634363, 0.494003, -0.594597,
		38.783024, 37.469486, 23.280418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934395, 37.163288, 24.080254>,  <38.338970, 37.123684, 23.696636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934395, 37.163288, 24.080254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.016506, 37.426281, 23.790268>,  <39.065773, 37.584076, 23.616276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.016506, 37.426281, 23.790268>,  <38.934395, 37.163288, 24.080254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016506, 37.426281, 23.790268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416047, 0.611854, 0.672710,
		0.885870, -0.439711, -0.147945,
		0.205277, 0.657486, -0.724964,
		39.078091, 37.623528, 23.572779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679523, 37.390800, 24.052338>,  <38.934395, 37.163288, 24.080254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679523, 37.390800, 24.052338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.487106, 37.692574, 23.873707>,  <39.371655, 37.873638, 23.766529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.487106, 37.692574, 23.873707>,  <39.679523, 37.390800, 24.052338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487106, 37.692574, 23.873707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468149, 0.651730, 0.596729,
		0.741238, 0.077988, -0.666696,
		-0.481043, 0.754431, -0.446577,
		39.342793, 37.918903, 23.739735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079926, 37.866432, 24.143517>,  <39.679523, 37.390800, 24.052338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079926, 37.866432, 24.143517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.733662, 38.053162, 24.071182>,  <39.525902, 38.165199, 24.027782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.733662, 38.053162, 24.071182>,  <40.079926, 37.866432, 24.143517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733662, 38.053162, 24.071182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361203, 0.832517, 0.420057,
		0.346642, 0.298309, -0.889298,
		-0.865662, 0.466827, -0.180835,
		39.473965, 38.193211, 24.016932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307083, 38.550423, 23.966190>,  <40.079926, 37.866432, 24.143517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307083, 38.550423, 23.966190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.928699, 38.542576, 24.095661>,  <39.701668, 38.537868, 24.173344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.928699, 38.542576, 24.095661>,  <40.307083, 38.550423, 23.966190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928699, 38.542576, 24.095661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224114, 0.681852, 0.696312,
		-0.234362, 0.731227, -0.640610,
		-0.945964, -0.019619, 0.323678,
		39.644909, 38.536690, 24.192764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038822, 39.252419, 23.946198>,  <40.307083, 38.550423, 23.966190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038822, 39.252419, 23.946198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.801121, 39.054367, 24.199718>,  <39.658501, 38.935535, 24.351831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.801121, 39.054367, 24.199718>,  <40.038822, 39.252419, 23.946198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801121, 39.054367, 24.199718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033846, 0.771951, 0.634781,
		-0.803562, 0.398675, -0.441980,
		-0.594258, -0.495127, 0.633804,
		39.622845, 38.905830, 24.389860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482224, 39.685337, 24.141741>,  <40.038822, 39.252419, 23.946198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482224, 39.685337, 24.141741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.493122, 39.447994, 24.463531>,  <39.499660, 39.305588, 24.656605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.493122, 39.447994, 24.463531>,  <39.482224, 39.685337, 24.141741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493122, 39.447994, 24.463531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025427, 0.804103, 0.593946,
		-0.999305, -0.036639, 0.006822,
		0.027247, -0.593360, 0.804476,
		39.501297, 39.269985, 24.704874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339577, 40.151970, 24.593840>,  <39.482224, 39.685337, 24.141741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339577, 40.151970, 24.593840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.445358, 39.852863, 24.837448>,  <39.508827, 39.673401, 24.983614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.445358, 39.852863, 24.837448>,  <39.339577, 40.151970, 24.593840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445358, 39.852863, 24.837448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012180, 0.634043, 0.773202,
		-0.964321, -0.197060, 0.176785,
		0.264457, -0.747768, 0.609020,
		39.524696, 39.628532, 25.020155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988846, 40.277325, 25.287586>,  <39.339577, 40.151970, 24.593840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988846, 40.277325, 25.287586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.297142, 40.033421, 25.361504>,  <39.482121, 39.887077, 25.405853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.297142, 40.033421, 25.361504>,  <38.988846, 40.277325, 25.287586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297142, 40.033421, 25.361504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330752, 0.630795, 0.701926,
		-0.544576, -0.479882, 0.687859,
		0.770740, -0.609763, 0.184793,
		39.528362, 39.850491, 25.416941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923431, 40.065853, 25.976046>,  <38.988846, 40.277325, 25.287586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923431, 40.065853, 25.976046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.307594, 39.977173, 25.908546>,  <39.538090, 39.923965, 25.868048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.307594, 39.977173, 25.908546>,  <38.923431, 40.065853, 25.976046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307594, 39.977173, 25.908546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252823, 0.438956, 0.862205,
		-0.117077, -0.870728, 0.477625,
		0.960403, -0.221699, -0.168748,
		39.595715, 39.910664, 25.857922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300232, 39.760857, 26.619932>,  <38.923431, 40.065853, 25.976046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300232, 39.760857, 26.619932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.610207, 39.882683, 26.398403>,  <39.796192, 39.955780, 26.265486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.610207, 39.882683, 26.398403>,  <39.300232, 39.760857, 26.619932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610207, 39.882683, 26.398403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305532, 0.586545, 0.750077,
		0.553288, -0.750470, 0.361479,
		0.774935, 0.304565, -0.553820,
		39.842686, 39.974052, 26.232256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828430, 39.615204, 26.966488>,  <39.300232, 39.760857, 26.619932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828430, 39.615204, 26.966488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.984921, 39.891834, 26.723618>,  <40.078815, 40.057812, 26.577896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.984921, 39.891834, 26.723618>,  <39.828430, 39.615204, 26.966488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984921, 39.891834, 26.723618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435030, 0.442418, 0.784229,
		0.810980, -0.570951, -0.127770,
		0.391228, 0.691578, -0.607173,
		40.102287, 40.099308, 26.541466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628063, 39.681641, 27.144888>,  <39.828430, 39.615204, 26.966488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628063, 39.681641, 27.144888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.415554, 39.981308, 26.986652>,  <40.288048, 40.161110, 26.891710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.415554, 39.981308, 26.986652>,  <40.628063, 39.681641, 27.144888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415554, 39.981308, 26.986652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230488, 0.577140, 0.783444,
		0.815242, 0.325047, -0.479296,
		-0.531277, 0.749169, -0.395590,
		40.256172, 40.206059, 26.867975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.280867, 23.394627, 20.721579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.656563, 23.482113, 20.827404>,  <28.881981, 23.534605, 20.890900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.656563, 23.482113, 20.827404>,  <28.280867, 23.394627, 20.721579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656563, 23.482113, 20.827404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222421, -0.974815, 0.016256,
		0.261456, 0.043577, -0.964231,
		0.939239, 0.218716, 0.264564,
		28.938335, 23.547728, 20.906773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656145, 23.200369, 20.220379>,  <28.280867, 23.394627, 20.721579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656145, 23.200369, 20.220379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.896103, 23.198673, 20.540405>,  <29.040077, 23.197657, 20.732422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.896103, 23.198673, 20.540405>,  <28.656145, 23.200369, 20.220379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896103, 23.198673, 20.540405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090758, -0.993171, -0.073314,
		0.794914, 0.116593, -0.595413,
		0.599895, -0.004239, 0.800068,
		29.076071, 23.197401, 20.780426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251049, 22.767841, 20.060740>,  <28.656145, 23.200369, 20.220379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251049, 22.767841, 20.060740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.238802, 22.770176, 20.460545>,  <29.231453, 22.771576, 20.700428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.238802, 22.770176, 20.460545>,  <29.251049, 22.767841, 20.060740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238802, 22.770176, 20.460545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181576, -0.983312, 0.011304,
		0.982900, 0.181834, 0.029046,
		-0.030617, 0.005836, 0.999514,
		29.229616, 22.771927, 20.760399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796415, 22.295752, 20.214912>,  <29.251049, 22.767841, 20.060740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796415, 22.295752, 20.214912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.581480, 22.344006, 20.548790>,  <29.452518, 22.372957, 20.749117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.581480, 22.344006, 20.548790>,  <29.796415, 22.295752, 20.214912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581480, 22.344006, 20.548790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210359, -0.939265, 0.271166,
		0.816711, 0.321293, 0.479327,
		-0.537339, 0.120633, 0.834694,
		29.420279, 22.380196, 20.799198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252943, 21.928089, 20.702112>,  <29.796415, 22.295752, 20.214912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252943, 21.928089, 20.702112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.877094, 21.922295, 20.838875>,  <29.651585, 21.918818, 20.920933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.877094, 21.922295, 20.838875>,  <30.252943, 21.928089, 20.702112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877094, 21.922295, 20.838875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074903, -0.983584, 0.164169,
		0.333913, 0.179866, 0.925284,
		-0.939623, -0.014488, 0.341904,
		29.595207, 21.917948, 20.941446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.326183, 21.600821, 21.289972>,  <30.252943, 21.928089, 20.702112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.326183, 21.600821, 21.289972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.932230, 21.582554, 21.223137>,  <29.695858, 21.571594, 21.183035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.932230, 21.582554, 21.223137>,  <30.326183, 21.600821, 21.289972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932230, 21.582554, 21.223137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009872, -0.977850, 0.209075,
		-0.172937, 0.204265, 0.963519,
		-0.984883, -0.045669, -0.167090,
		29.636765, 21.568853, 21.173010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131353, 21.118608, 21.778566>,  <30.326183, 21.600821, 21.289972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131353, 21.118608, 21.778566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.816832, 21.148216, 21.533211>,  <29.628119, 21.165981, 21.385998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.816832, 21.148216, 21.533211>,  <30.131353, 21.118608, 21.778566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816832, 21.148216, 21.533211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246516, -0.947935, 0.201616,
		-0.566530, 0.309742, 0.763613,
		-0.786304, 0.074021, -0.613389,
		29.580940, 21.170422, 21.349194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549343, 20.886845, 22.147373>,  <30.131353, 21.118608, 21.778566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549343, 20.886845, 22.147373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.425320, 20.866909, 21.767609>,  <29.350904, 20.854948, 21.539751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.425320, 20.866909, 21.767609>,  <29.549343, 20.886845, 22.147373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425320, 20.866909, 21.767609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383319, -0.907305, 0.172812,
		-0.870017, 0.417509, 0.262216,
		-0.310061, -0.049837, -0.949410,
		29.332302, 20.851957, 21.482786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866890, 20.561071, 22.165447>,  <29.549343, 20.886845, 22.147373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866890, 20.561071, 22.165447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.017752, 20.491676, 21.801544>,  <29.108269, 20.450039, 21.583202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.017752, 20.491676, 21.801544>,  <28.866890, 20.561071, 22.165447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017752, 20.491676, 21.801544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453466, -0.891090, -0.018064,
		-0.807541, 0.419356, -0.414750,
		0.377155, -0.173488, -0.909756,
		29.130898, 20.439631, 21.528618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333838, 20.143780, 21.778635>,  <28.866890, 20.561071, 22.165447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333838, 20.143780, 21.778635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.674313, 20.084366, 21.577274>,  <28.878597, 20.048717, 21.456457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.674313, 20.084366, 21.577274>,  <28.333838, 20.143780, 21.778635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674313, 20.084366, 21.577274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157581, -0.987194, 0.024835,
		-0.500643, 0.058187, -0.863696,
		0.851190, -0.148536, -0.503401,
		28.929670, 20.039804, 21.426254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234488, 19.643452, 21.276415>,  <28.333838, 20.143780, 21.778635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234488, 19.643452, 21.276415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.628942, 19.628155, 21.341003>,  <28.865616, 19.618977, 21.379757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.628942, 19.628155, 21.341003>,  <28.234488, 19.643452, 21.276415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628942, 19.628155, 21.341003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032681, -0.998782, -0.036952,
		0.162687, 0.031163, -0.986185,
		0.986136, -0.038241, 0.161471,
		28.924784, 19.616682, 21.389444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440413, 19.220583, 20.747761>,  <28.234488, 19.643452, 21.276415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440413, 19.220583, 20.747761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.743635, 19.206631, 21.008263>,  <28.925570, 19.198259, 21.164564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.743635, 19.206631, 21.008263>,  <28.440413, 19.220583, 20.747761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743635, 19.206631, 21.008263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081396, -0.985701, -0.147540,
		0.647088, 0.164853, -0.744380,
		0.758058, -0.034882, 0.651254,
		28.971052, 19.196167, 21.203638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017506, 18.834936, 20.457577>,  <28.440413, 19.220583, 20.747761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017506, 18.834936, 20.457577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.057772, 18.824226, 20.855400>,  <29.081930, 18.817801, 21.094095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.057772, 18.824226, 20.855400>,  <29.017506, 18.834936, 20.457577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057772, 18.824226, 20.855400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070378, -0.996942, -0.033961,
		0.992428, 0.073414, -0.098472,
		0.100664, -0.026774, 0.994560,
		29.087971, 18.816195, 21.153769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011921, 18.649376, 19.740980>,  <29.017506, 18.834936, 20.457577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011921, 18.649376, 19.740980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.142664, 18.653744, 19.362976>,  <29.221109, 18.656364, 19.136173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.142664, 18.653744, 19.362976>,  <29.011921, 18.649376, 19.740980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142664, 18.653744, 19.362976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020025, 0.999629, 0.018475,
		0.944861, -0.024963, 0.326519,
		0.326859, 0.010918, -0.945010,
		29.240721, 18.657019, 19.079473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429773, 19.228838, 19.633718>,  <29.011921, 18.649376, 19.740980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429773, 19.228838, 19.633718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.305346, 19.159275, 19.259983>,  <29.230688, 19.117538, 19.035742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.305346, 19.159275, 19.259983>,  <29.429773, 19.228838, 19.633718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305346, 19.159275, 19.259983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014243, 0.983858, -0.178380,
		0.950280, -0.042181, -0.308527,
		-0.311071, -0.173906, -0.934340,
		29.212025, 19.107103, 18.979681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775513, 19.661665, 19.202175>,  <29.429773, 19.228838, 19.633718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775513, 19.661665, 19.202175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.469818, 19.586472, 18.955402>,  <29.286402, 19.541355, 18.807339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.469818, 19.586472, 18.955402>,  <29.775513, 19.661665, 19.202175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469818, 19.586472, 18.955402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055666, 0.972234, -0.227293,
		0.642530, -0.139363, -0.753480,
		-0.764236, -0.187986, -0.616932,
		29.240547, 19.530075, 18.770323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967083, 19.954502, 18.457029>,  <29.775513, 19.661665, 19.202175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967083, 19.954502, 18.457029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.573370, 19.929165, 18.522964>,  <29.337141, 19.913963, 18.562525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.573370, 19.929165, 18.522964>,  <29.967083, 19.954502, 18.457029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573370, 19.929165, 18.522964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115760, 0.936356, -0.331416,
		-0.133354, -0.345289, -0.928974,
		-0.984285, -0.063343, 0.164838,
		29.278084, 19.910162, 18.572416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767464, 20.321520, 17.949980>,  <29.967083, 19.954502, 18.457029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767464, 20.321520, 17.949980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.423544, 20.318405, 18.154209>,  <29.217192, 20.316536, 18.276747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.423544, 20.318405, 18.154209>,  <29.767464, 20.321520, 17.949980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423544, 20.318405, 18.154209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284332, 0.837837, -0.466030,
		-0.424150, -0.545865, -0.722584,
		-0.859798, -0.007787, 0.510575,
		29.165606, 20.316069, 18.307383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215588, 20.521399, 17.505434>,  <29.767464, 20.321520, 17.949980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215588, 20.521399, 17.505434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.091423, 20.596195, 17.878246>,  <29.016924, 20.641073, 18.101934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.091423, 20.596195, 17.878246>,  <29.215588, 20.521399, 17.505434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091423, 20.596195, 17.878246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124620, 0.963996, -0.234909,
		-0.942399, -0.189068, -0.275930,
		-0.310409, 0.186992, 0.932030,
		28.998301, 20.652292, 18.157856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794853, 20.990175, 17.389694>,  <29.215588, 20.521399, 17.505434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794853, 20.990175, 17.389694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.836895, 21.013603, 17.786789>,  <28.862120, 21.027660, 18.025045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.836895, 21.013603, 17.786789>,  <28.794853, 20.990175, 17.389694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836895, 21.013603, 17.786789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080200, 0.995512, -0.050243,
		-0.991222, -0.074336, 0.109328,
		0.105103, 0.058570, 0.992735,
		28.868425, 21.031174, 18.084610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174913, 21.332897, 17.592031>,  <28.794853, 20.990175, 17.389694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174913, 21.332897, 17.592031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.424337, 21.399460, 17.897575>,  <28.573992, 21.439398, 18.080902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.424337, 21.399460, 17.897575>,  <28.174913, 21.332897, 17.592031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424337, 21.399460, 17.897575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163861, 0.983200, -0.080423,
		-0.764410, -0.075018, 0.640351,
		0.623560, 0.166405, 0.763860,
		28.611406, 21.449381, 18.126734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.877718, 21.741676, 18.051960>,  <28.174913, 21.332897, 17.592031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.877718, 21.741676, 18.051960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.264559, 21.820446, 18.116379>,  <28.496662, 21.867708, 18.155031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.264559, 21.820446, 18.116379>,  <27.877718, 21.741676, 18.051960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264559, 21.820446, 18.116379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169644, 0.970982, -0.168565,
		-0.189570, 0.135698, 0.972445,
		0.967101, 0.196924, 0.161049,
		28.554689, 21.879522, 18.164694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931599, 22.386202, 18.286121>,  <27.877718, 21.741676, 18.051960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931599, 22.386202, 18.286121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.325403, 22.345554, 18.228977>,  <28.561686, 22.321167, 18.194691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.325403, 22.345554, 18.228977>,  <27.931599, 22.386202, 18.286121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325403, 22.345554, 18.228977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092152, 0.993182, -0.071397,
		0.149143, 0.057127, 0.987164,
		0.984512, -0.101618, -0.142862,
		28.620756, 22.315069, 18.186119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243664, 22.862242, 18.680393>,  <27.931599, 22.386202, 18.286121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243664, 22.862242, 18.680393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.524712, 22.798435, 18.403011>,  <28.693340, 22.760151, 18.236582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.524712, 22.798435, 18.403011>,  <28.243664, 22.862242, 18.680393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524712, 22.798435, 18.403011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137042, 0.986639, -0.088106,
		0.698245, -0.033128, 0.715092,
		0.702619, -0.159517, -0.693456,
		28.735497, 22.750580, 18.194975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774965, 23.186680, 18.941027>,  <28.243664, 22.862242, 18.680393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774965, 23.186680, 18.941027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.856441, 23.147858, 18.551342>,  <28.905327, 23.124565, 18.317532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.856441, 23.147858, 18.551342>,  <28.774965, 23.186680, 18.941027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856441, 23.147858, 18.551342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393603, 0.919233, -0.009282,
		0.896430, -0.381563, 0.225439,
		0.203689, -0.097054, -0.974213,
		28.917549, 23.118742, 18.259079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460794, 23.504723, 18.811920>,  <28.774965, 23.186680, 18.941027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460794, 23.504723, 18.811920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.272005, 23.516506, 18.459473>,  <29.158731, 23.523577, 18.248005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.272005, 23.516506, 18.459473>,  <29.460794, 23.504723, 18.811920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272005, 23.516506, 18.459473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111825, 0.993369, -0.026690,
		0.874491, -0.111128, -0.472140,
		-0.471975, 0.029457, -0.881119,
		29.130413, 23.525343, 18.195137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826931, 24.021763, 18.437508>,  <29.460794, 23.504723, 18.811920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826931, 24.021763, 18.437508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.479877, 23.983532, 18.242336>,  <29.271645, 23.960592, 18.125233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.479877, 23.983532, 18.242336>,  <29.826931, 24.021763, 18.437508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479877, 23.983532, 18.242336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001678, 0.981906, -0.189359,
		0.497198, -0.163476, -0.852097,
		-0.867635, -0.095578, -0.487928,
		29.219587, 23.954859, 18.095959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872866, 24.429361, 17.839430>,  <29.826931, 24.021763, 18.437508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872866, 24.429361, 17.839430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.477217, 24.377182, 17.866615>,  <29.239828, 24.345875, 17.882927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.477217, 24.377182, 17.866615>,  <29.872866, 24.429361, 17.839430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477217, 24.377182, 17.866615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121109, 0.984477, 0.127031,
		-0.083481, 0.117418, -0.989567,
		-0.989122, -0.130451, 0.067965,
		29.180479, 24.338047, 17.887005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246679, 24.254175, 17.341045>,  <29.872866, 24.429361, 17.839430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246679, 24.254175, 17.341045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.621775, 24.313427, 17.215378>,  <30.846832, 24.348978, 17.139978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.621775, 24.313427, 17.215378>,  <30.246679, 24.254175, 17.341045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621775, 24.313427, 17.215378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152518, -0.988243, -0.010708,
		-0.312059, -0.037875, -0.949307,
		0.937740, 0.148128, -0.314166,
		30.903097, 24.357866, 17.121128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336058, 23.697409, 16.862724>,  <30.246679, 24.254175, 17.341045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336058, 23.697409, 16.862724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.698500, 23.824142, 16.974861>,  <30.915964, 23.900183, 17.042143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.698500, 23.824142, 16.974861>,  <30.336058, 23.697409, 16.862724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698500, 23.824142, 16.974861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323599, -0.945912, 0.023131,
		0.272510, 0.069760, -0.959621,
		0.906103, 0.316836, 0.280344,
		30.970331, 23.919193, 17.058964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729847, 23.605364, 16.247562>,  <30.336058, 23.697409, 16.862724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729847, 23.605364, 16.247562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.962456, 23.629074, 16.572109>,  <31.102022, 23.643301, 16.766838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.962456, 23.629074, 16.572109>,  <30.729847, 23.605364, 16.247562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962456, 23.629074, 16.572109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264516, -0.956927, -0.119672,
		0.769326, 0.284212, -0.572155,
		0.581523, 0.059277, 0.811368,
		31.136913, 23.646858, 16.815519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230177, 23.188980, 16.126244>,  <30.729847, 23.605364, 16.247562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230177, 23.188980, 16.126244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.311460, 23.238045, 16.514812>,  <31.360229, 23.267485, 16.747953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.311460, 23.238045, 16.514812>,  <31.230177, 23.188980, 16.126244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311460, 23.238045, 16.514812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365133, -0.930050, 0.041058,
		0.908507, 0.346355, -0.233781,
		0.203208, 0.122663, 0.971422,
		31.372423, 23.274843, 16.806238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941610, 23.032928, 16.181078>,  <31.230177, 23.188980, 16.126244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941610, 23.032928, 16.181078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.779596, 22.976898, 16.542480>,  <31.682388, 22.943279, 16.759323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.779596, 22.976898, 16.542480>,  <31.941610, 23.032928, 16.181078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779596, 22.976898, 16.542480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229062, -0.972226, -0.048043,
		0.885143, 0.187500, 0.425870,
		-0.405034, -0.140075, 0.903508,
		31.658087, 22.934875, 16.813534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408302, 22.640907, 16.593060>,  <31.941610, 23.032928, 16.181078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408302, 22.640907, 16.593060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.043373, 22.591690, 16.749275>,  <31.824415, 22.562159, 16.843004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.043373, 22.591690, 16.749275>,  <32.408302, 22.640907, 16.593060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043373, 22.591690, 16.749275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157706, -0.985792, 0.057823,
		0.377875, 0.114344, 0.918769,
		-0.912327, -0.123045, 0.390539,
		31.769674, 22.554777, 16.866436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425507, 22.170357, 17.143948>,  <32.408302, 22.640907, 16.593060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425507, 22.170357, 17.143948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033611, 22.174149, 17.063919>,  <31.798475, 22.176424, 17.015902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033611, 22.174149, 17.063919>,  <32.425507, 22.170357, 17.143948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033611, 22.174149, 17.063919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000977, -0.998642, -0.052088,
		-0.200294, -0.051227, 0.978396,
		-0.979736, 0.009477, -0.200072,
		31.739691, 22.176992, 17.003897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703369, 22.359127, 17.884695>,  <32.425507, 22.170357, 17.143948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703369, 22.359127, 17.884695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.940956, 22.227707, 18.178432>,  <33.083508, 22.148855, 18.354675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.940956, 22.227707, 18.178432>,  <32.703369, 22.359127, 17.884695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940956, 22.227707, 18.178432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082816, 0.932927, 0.350411,
		-0.800215, -0.147317, 0.581338,
		0.593968, -0.328548, 0.734342,
		33.119148, 22.129143, 18.398735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377529, 22.423212, 18.586374>,  <32.703369, 22.359127, 17.884695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377529, 22.423212, 18.586374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.774109, 22.475151, 18.591476>,  <33.012058, 22.506313, 18.594538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.774109, 22.475151, 18.591476>,  <32.377529, 22.423212, 18.586374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774109, 22.475151, 18.591476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122752, 0.895190, 0.428447,
		0.044212, -0.426350, 0.903477,
		0.991452, 0.129846, 0.012757,
		33.071545, 22.514105, 18.595304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441063, 23.017624, 19.152231>,  <32.377529, 22.423212, 18.586374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441063, 23.017624, 19.152231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.808167, 22.985821, 18.996593>,  <33.028427, 22.966740, 18.903212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.808167, 22.985821, 18.996593>,  <32.441063, 23.017624, 19.152231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808167, 22.985821, 18.996593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243799, 0.886202, 0.393965,
		0.313493, -0.456426, 0.832705,
		0.917760, -0.079507, -0.389095,
		33.083496, 22.961969, 18.879866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813900, 23.402264, 19.584047>,  <32.441063, 23.017624, 19.152231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813900, 23.402264, 19.584047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.056145, 23.375484, 19.266872>,  <33.201492, 23.359417, 19.076567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.056145, 23.375484, 19.266872>,  <32.813900, 23.402264, 19.584047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056145, 23.375484, 19.266872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221465, 0.971267, 0.087140,
		0.764321, -0.228381, 0.603038,
		0.605612, -0.066949, -0.792939,
		33.237827, 23.355400, 19.028992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380783, 23.763060, 19.843142>,  <32.813900, 23.402264, 19.584047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380783, 23.763060, 19.843142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.397278, 23.762894, 19.443481>,  <33.407173, 23.762794, 19.203686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.397278, 23.762894, 19.443481>,  <33.380783, 23.763060, 19.843142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397278, 23.762894, 19.443481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164633, 0.986334, 0.006384,
		0.985492, -0.164756, 0.040743,
		0.041238, -0.000416, -0.999149,
		33.409649, 23.762770, 19.143736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030117, 24.082743, 19.676105>,  <33.380783, 23.763060, 19.843142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030117, 24.082743, 19.676105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.790356, 24.113941, 19.357452>,  <33.646500, 24.132660, 19.166260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.790356, 24.113941, 19.357452>,  <34.030117, 24.082743, 19.676105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790356, 24.113941, 19.357452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078658, 0.996164, 0.038347,
		0.796570, -0.039676, -0.603243,
		-0.599408, 0.077996, -0.796635,
		33.610535, 24.137341, 19.118462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315117, 24.555824, 19.288536>,  <34.030117, 24.082743, 19.676105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315117, 24.555824, 19.288536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944889, 24.556831, 19.137112>,  <33.722752, 24.557436, 19.046257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.944889, 24.556831, 19.137112>,  <34.315117, 24.555824, 19.288536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944889, 24.556831, 19.137112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026892, 0.997889, -0.059117,
		0.377615, -0.064897, -0.923686,
		-0.925572, 0.002516, -0.378563,
		33.667217, 24.557587, 19.023542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.004704, 19.511671, 23.421051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.706318, 19.570522, 23.161240>,  <31.527287, 19.605833, 23.005352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.706318, 19.570522, 23.161240>,  <32.004704, 19.511671, 23.421051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706318, 19.570522, 23.161240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019192, 0.979636, 0.199863,
		0.665706, 0.136625, -0.733600,
		-0.745967, 0.147129, -0.649528,
		31.482529, 19.614660, 22.966381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306438, 19.892128, 22.752293>,  <32.004704, 19.511671, 23.421051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306438, 19.892128, 22.752293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.924631, 19.949947, 22.856606>,  <31.695547, 19.984640, 22.919193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.924631, 19.949947, 22.856606>,  <32.306438, 19.892128, 22.752293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924631, 19.949947, 22.856606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173664, 0.980483, 0.092167,
		-0.242368, 0.133263, -0.960988,
		-0.954515, 0.144550, 0.260781,
		31.638277, 19.993313, 22.934839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117519, 20.499382, 22.402922>,  <32.306438, 19.892128, 22.752293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117519, 20.499382, 22.402922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.830889, 20.445740, 22.676720>,  <31.658911, 20.413553, 22.841000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.830889, 20.445740, 22.676720>,  <32.117519, 20.499382, 22.402922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830889, 20.445740, 22.676720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031215, 0.986525, 0.160603,
		-0.696811, 0.093718, -0.711106,
		-0.716575, -0.134108, 0.684496,
		31.615915, 20.405508, 22.882069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572750, 21.037889, 22.233570>,  <32.117519, 20.499382, 22.402922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572750, 21.037889, 22.233570> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.525982, 20.914257, 22.611099>,  <31.497921, 20.840078, 22.837616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.525982, 20.914257, 22.611099>,  <31.572750, 21.037889, 22.233570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525982, 20.914257, 22.611099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188125, 0.940026, 0.284534,
		-0.975161, -0.144289, -0.168053,
		-0.116919, -0.309081, 0.943821,
		31.490906, 20.821533, 22.894245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872902, 21.106153, 22.426394>,  <31.572750, 21.037889, 22.233570>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872902, 21.106153, 22.426394> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.073271, 21.102962, 22.772575>,  <31.193493, 21.101048, 22.980286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.073271, 21.102962, 22.772575>,  <30.872902, 21.106153, 22.426394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073271, 21.102962, 22.772575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320278, 0.927263, 0.193924,
		-0.804052, -0.374327, 0.461931,
		0.500922, -0.007978, 0.865456,
		31.223547, 21.100569, 23.032211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439013, 21.456821, 22.945074>,  <30.872902, 21.106153, 22.426394>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439013, 21.456821, 22.945074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.798269, 21.447510, 23.120712>,  <31.013823, 21.441923, 23.226095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.798269, 21.447510, 23.120712>,  <30.439013, 21.456821, 22.945074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798269, 21.447510, 23.120712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028575, 0.993397, 0.111115,
		-0.438781, -0.112343, 0.891544,
		0.898140, -0.023279, 0.439093,
		31.067711, 21.440525, 23.252439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377827, 21.760725, 23.623959>,  <30.439013, 21.456821, 22.945074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377827, 21.760725, 23.623959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.769337, 21.806839, 23.556179>,  <31.004242, 21.834507, 23.515511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.769337, 21.806839, 23.556179>,  <30.377827, 21.760725, 23.623959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769337, 21.806839, 23.556179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055330, 0.944729, 0.323151,
		0.197337, -0.306916, 0.931053,
		0.978773, 0.115285, -0.169448,
		31.062969, 21.841425, 23.505344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591763, 22.249432, 24.197466>,  <30.377827, 21.760725, 23.623959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591763, 22.249432, 24.197466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.850277, 22.260704, 23.892437>,  <31.005386, 22.267467, 23.709419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.850277, 22.260704, 23.892437>,  <30.591763, 22.249432, 24.197466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850277, 22.260704, 23.892437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043845, 0.996295, 0.073979,
		0.761833, -0.081247, 0.642658,
		0.646288, 0.028182, -0.762573,
		31.044163, 22.269159, 23.663666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113611, 22.589834, 24.423996>,  <30.591763, 22.249432, 24.197466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113611, 22.589834, 24.423996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.144825, 22.631554, 24.027405>,  <31.163553, 22.656586, 23.789450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.144825, 22.631554, 24.027405>,  <31.113611, 22.589834, 24.423996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144825, 22.631554, 24.027405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026646, 0.993939, 0.106656,
		0.996594, -0.034742, 0.074785,
		0.078037, 0.104300, -0.991479,
		31.168236, 22.662844, 23.729961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554480, 23.230330, 24.341125>,  <31.113611, 22.589834, 24.423996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554480, 23.230330, 24.341125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.400352, 23.206722, 23.972767>,  <31.307877, 23.192558, 23.751753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.400352, 23.206722, 23.972767>,  <31.554480, 23.230330, 24.341125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400352, 23.206722, 23.972767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010107, 0.997623, -0.068164,
		0.922728, -0.035572, -0.383805,
		-0.385318, -0.059018, -0.920895,
		31.284758, 23.189016, 23.696499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997656, 23.548477, 23.933477>,  <31.554480, 23.230330, 24.341125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997656, 23.548477, 23.933477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.628813, 23.553059, 23.778770>,  <31.407507, 23.555807, 23.685946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.628813, 23.553059, 23.778770>,  <31.997656, 23.548477, 23.933477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628813, 23.553059, 23.778770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046434, 0.995614, -0.081217,
		0.384141, -0.092850, -0.918594,
		-0.922106, 0.011455, -0.386767,
		31.352180, 23.556496, 23.662741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013641, 23.989904, 23.237520>,  <31.997656, 23.548477, 23.933477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013641, 23.989904, 23.237520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.643349, 23.970524, 23.387550>,  <31.421175, 23.958895, 23.477568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.643349, 23.970524, 23.387550>,  <32.013641, 23.989904, 23.237520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643349, 23.970524, 23.387550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121580, 0.977241, -0.173836,
		-0.358117, -0.206527, -0.910549,
		-0.925727, -0.048451, 0.375076,
		31.365631, 23.955988, 23.500072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177551, 24.441486, 22.674778>,  <32.013641, 23.989904, 23.237520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177551, 24.441486, 22.674778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.574860, 24.396732, 22.662750>,  <32.813244, 24.369881, 22.655533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.574860, 24.396732, 22.662750>,  <32.177551, 24.441486, 22.674778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574860, 24.396732, 22.662750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094893, -0.636782, -0.765182,
		0.066463, 0.762883, -0.643111,
		0.993266, -0.111883, -0.030070,
		32.872841, 24.363167, 22.653728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296528, 24.424763, 21.996586>,  <32.177551, 24.441486, 22.674778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296528, 24.424763, 21.996586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.635258, 24.268932, 22.141430>,  <32.838493, 24.175434, 22.228336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.635258, 24.268932, 22.141430>,  <32.296528, 24.424763, 21.996586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635258, 24.268932, 22.141430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053848, -0.740117, -0.670318,
		0.529144, 0.548141, -0.647725,
		0.846822, -0.389574, 0.362112,
		32.889305, 24.152060, 22.250063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723564, 24.274923, 21.378628>,  <32.296528, 24.424763, 21.996586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723564, 24.274923, 21.378628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.829071, 24.041504, 21.685848>,  <32.892376, 23.901453, 21.870180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.829071, 24.041504, 21.685848>,  <32.723564, 24.274923, 21.378628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829071, 24.041504, 21.685848> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024165, -0.792000, -0.610043,
		0.964283, 0.179470, -0.194803,
		0.263769, -0.583547, 0.768049,
		32.908203, 23.866440, 21.916264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311096, 23.811644, 21.071333>,  <32.723564, 24.274923, 21.378628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311096, 23.811644, 21.071333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.164749, 23.632317, 21.397560>,  <33.076939, 23.524721, 21.593296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.164749, 23.632317, 21.397560>,  <33.311096, 23.811644, 21.071333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164749, 23.632317, 21.397560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108248, -0.890879, -0.441153,
		0.924349, -0.073121, 0.374475,
		-0.365869, -0.448316, 0.815569,
		33.054989, 23.497822, 21.642231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672897, 23.184984, 21.006886>,  <33.311096, 23.811644, 21.071333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672897, 23.184984, 21.006886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.378628, 23.093544, 21.261925>,  <33.202068, 23.038681, 21.414948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.378628, 23.093544, 21.261925>,  <33.672897, 23.184984, 21.006886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378628, 23.093544, 21.261925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001942, -0.942035, -0.335510,
		0.677335, -0.245587, 0.693472,
		-0.735672, -0.228599, 0.637596,
		33.157925, 23.024963, 21.453203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865028, 22.603487, 21.491812>,  <33.672897, 23.184984, 21.006886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865028, 22.603487, 21.491812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.465763, 22.606308, 21.467743>,  <33.226204, 22.608000, 21.453300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.465763, 22.606308, 21.467743>,  <33.865028, 22.603487, 21.491812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465763, 22.606308, 21.467743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011562, -0.952788, -0.303418,
		-0.059472, -0.303556, 0.950956,
		-0.998163, 0.007050, -0.060174,
		33.166313, 22.608423, 21.449690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650394, 21.881817, 21.729555>,  <33.865028, 22.603487, 21.491812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650394, 21.881817, 21.729555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.321625, 22.008522, 21.540199>,  <33.124363, 22.084545, 21.426586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.321625, 22.008522, 21.540199>,  <33.650394, 21.881817, 21.729555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321625, 22.008522, 21.540199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222236, -0.943573, -0.245521,
		-0.524450, -0.096596, 0.845944,
		-0.821926, 0.316763, -0.473390,
		33.075047, 22.103550, 21.398182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248711, 21.445913, 21.959795>,  <33.650394, 21.881817, 21.729555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248711, 21.445913, 21.959795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.048546, 21.576614, 21.639091>,  <32.928448, 21.655035, 21.446669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.048546, 21.576614, 21.639091>,  <33.248711, 21.445913, 21.959795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048546, 21.576614, 21.639091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073249, -0.938705, -0.336848,
		-0.862683, -0.109834, 0.493673,
		-0.500411, 0.326754, -0.801761,
		32.898422, 21.674641, 21.398563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617931, 21.041525, 21.883120>,  <33.248711, 21.445913, 21.959795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617931, 21.041525, 21.883120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.659943, 21.205738, 21.520809>,  <32.685150, 21.304266, 21.303423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.659943, 21.205738, 21.520809>,  <32.617931, 21.041525, 21.883120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659943, 21.205738, 21.520809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172849, -0.889415, -0.423161,
		-0.979333, 0.201006, -0.022453,
		0.105028, 0.410534, -0.905776,
		32.691452, 21.328897, 21.249077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132439, 20.751913, 21.551016>,  <32.617931, 21.041525, 21.883120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132439, 20.751913, 21.551016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.405449, 20.843548, 21.273403>,  <32.569256, 20.898529, 21.106834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.405449, 20.843548, 21.273403>,  <32.132439, 20.751913, 21.551016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405449, 20.843548, 21.273403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083879, -0.918779, -0.385759,
		-0.726035, 0.321504, -0.607871,
		0.682522, 0.229087, -0.694033,
		32.610207, 20.912273, 21.065193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864321, 20.527117, 20.906366>,  <32.132439, 20.751913, 21.551016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864321, 20.527117, 20.906366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.243389, 20.569012, 20.785736>,  <32.470829, 20.594149, 20.713358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.243389, 20.569012, 20.785736>,  <31.864321, 20.527117, 20.906366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243389, 20.569012, 20.785736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104443, -0.790950, -0.602901,
		-0.301676, 0.602849, -0.738623,
		0.947673, 0.104737, -0.301574,
		32.527691, 20.600433, 20.695263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921131, 20.265833, 20.185574>,  <31.864321, 20.527117, 20.906366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921131, 20.265833, 20.185574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.305737, 20.256588, 20.295090>,  <32.536499, 20.251041, 20.360800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.305737, 20.256588, 20.295090>,  <31.921131, 20.265833, 20.185574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305737, 20.256588, 20.295090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151617, -0.786386, -0.598840,
		0.229145, 0.617303, -0.752615,
		0.961512, -0.023112, 0.273791,
		32.594189, 20.249655, 20.377228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332829, 20.187889, 19.516613>,  <31.921131, 20.265833, 20.185574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332829, 20.187889, 19.516613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.548203, 20.084671, 19.837486>,  <32.677425, 20.022739, 20.030010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.548203, 20.084671, 19.837486>,  <32.332829, 20.187889, 19.516613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548203, 20.084671, 19.837486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217588, -0.877101, -0.428193,
		0.814090, 0.405100, -0.416115,
		0.538436, -0.258046, 0.802184,
		32.709732, 20.007257, 20.078142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007004, 19.929634, 19.106934>,  <32.332829, 20.187889, 19.516613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007004, 19.929634, 19.106934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.993176, 19.787117, 19.480427>,  <32.984879, 19.701607, 19.704523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.993176, 19.787117, 19.480427>,  <33.007004, 19.929634, 19.106934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993176, 19.787117, 19.480427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121559, -0.928854, -0.349933,
		0.991982, 0.101407, 0.075419,
		-0.034568, -0.356295, 0.933734,
		32.982803, 19.680229, 19.760548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454212, 19.614849, 19.560225>,  <33.007004, 19.929634, 19.106934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454212, 19.614849, 19.560225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.696545, 19.531281, 19.253155>,  <33.841942, 19.481140, 19.068913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.696545, 19.531281, 19.253155>,  <33.454212, 19.614849, 19.560225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696545, 19.531281, 19.253155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137597, 0.922851, -0.359740,
		0.783607, 0.323571, 0.530342,
		0.605828, -0.208921, -0.767675,
		33.878292, 19.468605, 19.022852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945950, 20.152952, 19.578062>,  <33.454212, 19.614849, 19.560225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945950, 20.152952, 19.578062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.895054, 19.995430, 19.213924>,  <33.864517, 19.900917, 18.995441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.895054, 19.995430, 19.213924>,  <33.945950, 20.152952, 19.578062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895054, 19.995430, 19.213924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141468, 0.915626, -0.376319,
		0.981731, 0.080900, -0.172218,
		-0.127243, -0.393808, -0.910343,
		33.856880, 19.877287, 18.940821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345974, 20.531713, 19.143162>,  <33.945950, 20.152952, 19.578062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345974, 20.531713, 19.143162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.039448, 20.384964, 18.932198>,  <33.855530, 20.296915, 18.805620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.039448, 20.384964, 18.932198>,  <34.345974, 20.531713, 19.143162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039448, 20.384964, 18.932198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185864, 0.912414, -0.364631,
		0.614989, -0.181397, -0.767388,
		-0.766318, -0.366874, -0.527409,
		33.809551, 20.274902, 18.773975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382809, 20.856733, 18.490145>,  <34.345974, 20.531713, 19.143162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382809, 20.856733, 18.490145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.007465, 20.721859, 18.520565>,  <33.782257, 20.640934, 18.538816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.007465, 20.721859, 18.520565>,  <34.382809, 20.856733, 18.490145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007465, 20.721859, 18.520565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340485, 0.863762, -0.371464,
		0.059562, -0.374462, -0.925327,
		-0.938361, -0.337186, 0.076051,
		33.725956, 20.620703, 18.543381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182011, 21.034838, 17.852262>,  <34.382809, 20.856733, 18.490145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182011, 21.034838, 17.852262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.860428, 20.975674, 18.082661>,  <33.667477, 20.940176, 18.220900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.860428, 20.975674, 18.082661>,  <34.182011, 21.034838, 17.852262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860428, 20.975674, 18.082661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356415, 0.895186, -0.267600,
		-0.476041, -0.420433, -0.772412,
		-0.803961, -0.147911, 0.575994,
		33.619240, 20.931301, 18.255459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604221, 21.280355, 17.482647>,  <34.182011, 21.034838, 17.852262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604221, 21.280355, 17.482647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.516953, 21.285931, 17.872971>,  <33.464592, 21.289276, 18.107164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.516953, 21.285931, 17.872971>,  <33.604221, 21.280355, 17.482647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516953, 21.285931, 17.872971> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345470, 0.934048, -0.090583,
		-0.912717, -0.356876, -0.198967,
		-0.218171, 0.013939, 0.975811,
		33.451500, 21.290112, 18.165714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012531, 21.734594, 17.532368>,  <33.604221, 21.280355, 17.482647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012531, 21.734594, 17.532368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.149200, 21.703617, 17.907017>,  <33.231201, 21.685030, 18.131807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.149200, 21.703617, 17.907017>,  <33.012531, 21.734594, 17.532368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149200, 21.703617, 17.907017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176821, 0.973504, 0.144997,
		-0.923036, -0.215156, 0.318923,
		0.341669, -0.077445, 0.936624,
		33.251701, 21.680384, 18.188004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250916, 21.514582, 17.555317>,  <33.012531, 21.734594, 17.532368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250916, 21.514582, 17.555317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.926699, 21.589890, 17.333481>,  <31.732168, 21.635075, 17.200380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.926699, 21.589890, 17.333481>,  <32.250916, 21.514582, 17.555317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926699, 21.589890, 17.333481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125052, -0.980720, -0.150167,
		-0.572168, -0.052366, 0.818463,
		-0.810547, 0.188271, -0.554588,
		31.683535, 21.646370, 17.167105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739834, 21.015015, 17.676369>,  <32.250916, 21.514582, 17.555317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739834, 21.015015, 17.676369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.628643, 21.162632, 17.321621>,  <31.561928, 21.251204, 17.108772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.628643, 21.162632, 17.321621>,  <31.739834, 21.015015, 17.676369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628643, 21.162632, 17.321621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260694, -0.917589, -0.300117,
		-0.924538, 0.147778, 0.351270,
		-0.277970, 0.369043, -0.886871,
		31.545250, 21.273346, 17.055561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064472, 20.709461, 17.580280>,  <31.739834, 21.015015, 17.676369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064472, 20.709461, 17.580280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.215439, 20.799763, 17.221039>,  <31.306019, 20.853943, 17.005493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.215439, 20.799763, 17.221039>,  <31.064472, 20.709461, 17.580280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215439, 20.799763, 17.221039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344300, -0.866099, -0.362394,
		-0.859660, 0.445991, -0.249152,
		0.377415, 0.225753, -0.898106,
		31.328663, 20.867489, 16.951607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521534, 20.622940, 17.099686>,  <31.064472, 20.709461, 17.580280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521534, 20.622940, 17.099686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.845053, 20.586140, 16.867348>,  <31.039165, 20.564060, 16.727945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.845053, 20.586140, 16.867348>,  <30.521534, 20.622940, 17.099686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845053, 20.586140, 16.867348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398513, -0.812077, -0.426284,
		-0.432471, 0.576252, -0.693471,
		0.808799, -0.092001, -0.580844,
		31.087692, 20.558538, 16.693094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267666, 20.621292, 16.489164>,  <30.521534, 20.622940, 17.099686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267666, 20.621292, 16.489164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.637814, 20.471046, 16.468754>,  <30.859903, 20.380899, 16.456507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.637814, 20.471046, 16.468754>,  <30.267666, 20.621292, 16.489164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637814, 20.471046, 16.468754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347995, -0.788427, -0.507229,
		0.150291, 0.487132, -0.860299,
		0.925371, -0.375612, -0.051026,
		30.915424, 20.358362, 16.453445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309570, 20.336977, 15.765802>,  <30.267666, 20.621292, 16.489164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309570, 20.336977, 15.765802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.582895, 20.166203, 16.002720>,  <30.746889, 20.063738, 16.144871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.582895, 20.166203, 16.002720>,  <30.309570, 20.336977, 15.765802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582895, 20.166203, 16.002720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235377, -0.896720, -0.374822,
		0.691147, 0.116708, -0.713229,
		0.683311, -0.426935, 0.592294,
		30.787889, 20.038122, 16.180408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627743, 19.864269, 15.347336>,  <30.309570, 20.336977, 15.765802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627743, 19.864269, 15.347336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.727411, 19.740101, 15.714280>,  <30.787212, 19.665600, 15.934447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.727411, 19.740101, 15.714280>,  <30.627743, 19.864269, 15.347336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727411, 19.740101, 15.714280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289758, -0.927743, -0.235231,
		0.924096, -0.207200, -0.321114,
		0.249172, -0.310422, 0.917361,
		30.802162, 19.646975, 15.989489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957935, 19.200365, 15.197165>,  <30.627743, 19.864269, 15.347336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957935, 19.200365, 15.197165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.887365, 19.179520, 15.590339>,  <30.845024, 19.167013, 15.826242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.887365, 19.179520, 15.590339>,  <30.957935, 19.200365, 15.197165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887365, 19.179520, 15.590339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148184, -0.985810, -0.078864,
		0.973096, -0.159569, 0.166198,
		-0.176424, -0.052114, 0.982933,
		30.834438, 19.163885, 15.885219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436249, 18.695591, 15.538106>,  <30.957935, 19.200365, 15.197165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436249, 18.695591, 15.538106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.118921, 18.739391, 15.777656>,  <30.928524, 18.765671, 15.921386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.118921, 18.739391, 15.777656>,  <31.436249, 18.695591, 15.538106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118921, 18.739391, 15.777656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205597, -0.974088, -0.094244,
		0.573037, -0.197892, 0.795278,
		-0.793321, 0.109501, 0.598875,
		30.880924, 18.772242, 15.957318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.891743, 34.596649, 17.881670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635897, 34.300999, 17.966133>,  <29.482389, 34.123608, 18.016811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635897, 34.300999, 17.966133>,  <29.891743, 34.596649, 17.881670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635897, 34.300999, 17.966133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768525, -0.620668, 0.155372,
		0.016218, 0.261656, 0.965025,
		-0.639614, -0.739126, 0.211156,
		29.444012, 34.079262, 18.029480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153679, 34.229767, 18.524719>,  <29.891743, 34.596649, 17.881670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153679, 34.229767, 18.524719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921631, 33.964512, 18.335529>,  <29.782402, 33.805359, 18.222015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921631, 33.964512, 18.335529>,  <30.153679, 34.229767, 18.524719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921631, 33.964512, 18.335529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719963, -0.689031, 0.083001,
		-0.380937, -0.292375, 0.877156,
		-0.580121, -0.663138, -0.472977,
		29.747595, 33.765572, 18.193636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083099, 33.577461, 18.972149>,  <30.153679, 34.229767, 18.524719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083099, 33.577461, 18.972149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937248, 33.466892, 18.616478>,  <29.849737, 33.400551, 18.403074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937248, 33.466892, 18.616478>,  <30.083099, 33.577461, 18.972149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937248, 33.466892, 18.616478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438504, -0.893380, 0.097912,
		-0.821439, -0.354208, 0.446962,
		-0.364626, -0.276423, -0.889178,
		29.827860, 33.383965, 18.349724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761448, 32.883209, 19.030712>,  <30.083099, 33.577461, 18.972149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761448, 32.883209, 19.030712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860788, 32.898994, 18.643566>,  <29.920393, 32.908466, 18.411278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860788, 32.898994, 18.643566>,  <29.761448, 32.883209, 19.030712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860788, 32.898994, 18.643566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501150, -0.860292, 0.093519,
		-0.828958, -0.508272, -0.233428,
		0.248349, 0.039459, -0.967866,
		29.935293, 32.910831, 18.353207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726664, 32.108219, 18.807301>,  <29.761448, 32.883209, 19.030712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726664, 32.108219, 18.807301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949987, 32.302395, 18.538189>,  <30.083982, 32.418900, 18.376722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949987, 32.302395, 18.538189>,  <29.726664, 32.108219, 18.807301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949987, 32.302395, 18.538189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669756, -0.742307, 0.020192,
		-0.489607, -0.461872, -0.739567,
		0.558311, 0.485443, -0.672780,
		30.117481, 32.448029, 18.336355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963121, 31.602283, 18.384884>,  <29.726664, 32.108219, 18.807301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963121, 31.602283, 18.384884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194271, 31.899399, 18.249634>,  <30.332960, 32.077667, 18.168484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194271, 31.899399, 18.249634>,  <29.963121, 31.602283, 18.384884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194271, 31.899399, 18.249634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726356, -0.656996, -0.201899,
		-0.372116, -0.128928, -0.919188,
		0.577873, 0.742787, -0.338126,
		30.367634, 32.122234, 18.148195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070620, 31.451059, 17.666382>,  <29.963121, 31.602283, 18.384884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070620, 31.451059, 17.666382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368845, 31.678562, 17.805325>,  <30.547779, 31.815063, 17.888689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.368845, 31.678562, 17.805325>,  <30.070620, 31.451059, 17.666382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368845, 31.678562, 17.805325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651147, -0.732690, -0.197921,
		0.141936, 0.373742, -0.916608,
		0.745561, 0.568755, 0.347356,
		30.592514, 31.849188, 17.909531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642159, 31.231884, 17.228905>,  <30.070620, 31.451059, 17.666382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642159, 31.231884, 17.228905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807693, 31.408047, 17.547596>,  <30.907015, 31.513744, 17.738811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807693, 31.408047, 17.547596>,  <30.642159, 31.231884, 17.228905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807693, 31.408047, 17.547596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811828, -0.574543, -0.104094,
		0.411912, 0.689886, -0.595303,
		0.413840, 0.440406, 0.796730,
		30.931845, 31.540169, 17.786615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285425, 31.415941, 16.998058>,  <30.642159, 31.231884, 17.228905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285425, 31.415941, 16.998058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278988, 31.390045, 17.397167>,  <31.275126, 31.374508, 17.636633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278988, 31.390045, 17.397167>,  <31.285425, 31.415941, 16.998058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278988, 31.390045, 17.397167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793414, -0.608098, -0.026661,
		0.608470, 0.791217, 0.061152,
		-0.016092, -0.064741, 0.997772,
		31.274160, 31.370623, 17.696499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026909, 31.407379, 17.193876>,  <31.285425, 31.415941, 16.998058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026909, 31.407379, 17.193876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829546, 31.245857, 17.502029>,  <31.711128, 31.148945, 17.686922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829546, 31.245857, 17.502029>,  <32.026909, 31.407379, 17.193876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829546, 31.245857, 17.502029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504065, -0.854559, -0.125088,
		0.708848, 0.326604, 0.625191,
		-0.493409, -0.403805, 0.770382,
		31.681522, 31.124716, 17.733145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425800, 30.964083, 17.425724>,  <32.026909, 31.407379, 17.193876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425800, 30.964083, 17.425724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099663, 30.813496, 17.601669>,  <31.903980, 30.723143, 17.707237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099663, 30.813496, 17.601669>,  <32.425800, 30.964083, 17.425724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099663, 30.813496, 17.601669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317346, -0.926036, -0.204327,
		0.484254, -0.027008, 0.874510,
		-0.815346, -0.376469, 0.439866,
		31.855059, 30.700556, 17.733629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696804, 30.435478, 17.923931>,  <32.425800, 30.964083, 17.425724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696804, 30.435478, 17.923931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307720, 30.356243, 17.875614>,  <32.074268, 30.308702, 17.846624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307720, 30.356243, 17.875614>,  <32.696804, 30.435478, 17.923931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307720, 30.356243, 17.875614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213306, -0.968330, -0.129759,
		-0.091262, -0.151984, 0.984161,
		-0.972714, -0.198086, -0.120791,
		32.015907, 30.296818, 17.839376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697296, 30.432354, 18.694326>,  <32.696804, 30.435478, 17.923931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697296, 30.432354, 18.694326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042355, 30.446594, 18.896149>,  <33.249390, 30.455137, 19.017242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042355, 30.446594, 18.896149>,  <32.697296, 30.432354, 18.694326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042355, 30.446594, 18.896149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237908, 0.908848, 0.342629,
		-0.446367, -0.415605, 0.792483,
		0.862645, 0.035599, 0.504555,
		33.301147, 30.457273, 19.047516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514984, 30.819996, 19.291004>,  <32.697296, 30.432354, 18.694326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514984, 30.819996, 19.291004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913643, 30.845612, 19.270596>,  <33.152836, 30.860981, 19.258350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.913643, 30.845612, 19.270596>,  <32.514984, 30.819996, 19.291004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913643, 30.845612, 19.270596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049896, 0.969075, 0.241669,
		0.064919, -0.238312, 0.969017,
		0.996642, 0.064040, -0.051021,
		33.212635, 30.864824, 19.255289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713436, 31.041817, 19.943901>,  <32.514984, 30.819996, 19.291004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713436, 31.041817, 19.943901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026344, 31.140903, 19.715275>,  <33.214088, 31.200356, 19.578098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026344, 31.140903, 19.715275>,  <32.713436, 31.041817, 19.943901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026344, 31.140903, 19.715275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101094, 0.854885, 0.508873,
		0.614680, -0.455858, 0.643709,
		0.782271, 0.247719, -0.571566,
		33.261024, 31.215219, 19.543806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232918, 31.335363, 20.426485>,  <32.713436, 31.041817, 19.943901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232918, 31.335363, 20.426485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345802, 31.458736, 20.063118>,  <33.413532, 31.532761, 19.845097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345802, 31.458736, 20.063118>,  <33.232918, 31.335363, 20.426485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345802, 31.458736, 20.063118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138279, 0.923944, 0.356661,
		0.949334, -0.226269, 0.218097,
		0.282211, 0.308432, -0.908420,
		33.430466, 31.551266, 19.790592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812988, 31.828058, 20.586002>,  <33.232918, 31.335363, 20.426485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812988, 31.828058, 20.586002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737938, 31.899471, 20.199650>,  <33.692909, 31.942320, 19.967838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737938, 31.899471, 20.199650>,  <33.812988, 31.828058, 20.586002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737938, 31.899471, 20.199650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239021, 0.962082, 0.131402,
		0.952715, -0.206212, -0.223181,
		-0.187621, 0.178534, -0.965880,
		33.681652, 31.953032, 19.909885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390469, 32.091953, 20.324066>,  <33.812988, 31.828058, 20.586002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390469, 32.091953, 20.324066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090046, 32.216702, 20.091293>,  <33.909790, 32.291550, 19.951630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090046, 32.216702, 20.091293>,  <34.390469, 32.091953, 20.324066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090046, 32.216702, 20.091293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212854, 0.948718, 0.233725,
		0.624982, 0.051674, -0.778927,
		-0.751059, 0.311871, -0.581933,
		33.864727, 32.310265, 19.916714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625599, 32.555981, 19.755760>,  <34.390469, 32.091953, 20.324066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625599, 32.555981, 19.755760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235935, 32.637867, 19.793919>,  <34.002136, 32.687000, 19.816814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235935, 32.637867, 19.793919>,  <34.625599, 32.555981, 19.755760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235935, 32.637867, 19.793919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204971, 0.978741, -0.007227,
		-0.094848, 0.012513, -0.995413,
		-0.974162, 0.204716, 0.095396,
		33.943687, 32.699284, 19.822538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520969, 33.104816, 19.272978>,  <34.625599, 32.555981, 19.755760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520969, 33.104816, 19.272978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225323, 33.126865, 19.541504>,  <34.047935, 33.140095, 19.702620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225323, 33.126865, 19.541504>,  <34.520969, 33.104816, 19.272978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225323, 33.126865, 19.541504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039462, 0.998478, -0.038531,
		-0.672416, -0.001988, -0.740171,
		-0.739121, 0.055118, 0.671314,
		34.003586, 33.143402, 19.742899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176411, 33.711071, 19.075687>,  <34.520969, 33.104816, 19.272978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176411, 33.711071, 19.075687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034172, 33.635239, 19.441772>,  <33.948830, 33.589737, 19.661423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.034172, 33.635239, 19.441772>,  <34.176411, 33.711071, 19.075687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034172, 33.635239, 19.441772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013027, 0.980122, 0.197969,
		-0.934550, 0.058474, -0.350994,
		-0.355593, -0.189584, 0.915211,
		33.927494, 33.578365, 19.716335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664177, 34.187473, 19.191257>,  <34.176411, 33.711071, 19.075687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664177, 34.187473, 19.191257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734318, 34.073654, 19.568253>,  <33.776402, 34.005363, 19.794451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734318, 34.073654, 19.568253>,  <33.664177, 34.187473, 19.191257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734318, 34.073654, 19.568253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055011, 0.952994, 0.297953,
		-0.982967, -0.104095, 0.151457,
		0.175353, -0.284546, 0.942489,
		33.786922, 33.988289, 19.851000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311474, 34.696033, 19.596056>,  <33.664177, 34.187473, 19.191257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311474, 34.696033, 19.596056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559334, 34.530144, 19.862602>,  <33.708050, 34.430611, 20.022530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559334, 34.530144, 19.862602>,  <33.311474, 34.696033, 19.596056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559334, 34.530144, 19.862602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077983, 0.812271, 0.578043,
		-0.780995, -0.410149, 0.470982,
		0.619649, -0.414720, 0.666365,
		33.745228, 34.405727, 20.062511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939030, 34.778637, 20.291695>,  <33.311474, 34.696033, 19.596056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939030, 34.778637, 20.291695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329948, 34.714272, 20.346840>,  <33.564499, 34.675652, 20.379927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329948, 34.714272, 20.346840>,  <32.939030, 34.778637, 20.291695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329948, 34.714272, 20.346840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075704, 0.872828, 0.482121,
		-0.197909, -0.460736, 0.865190,
		0.977293, -0.160915, 0.137861,
		33.623135, 34.665997, 20.388199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183781, 34.960487, 21.083464>,  <32.939030, 34.778637, 20.291695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183781, 34.960487, 21.083464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508919, 34.987141, 20.852001>,  <33.704002, 35.003132, 20.713123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508919, 34.987141, 20.852001>,  <33.183781, 34.960487, 21.083464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508919, 34.987141, 20.852001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140222, 0.941835, 0.305426,
		0.565349, -0.329404, 0.756223,
		0.812846, 0.066633, -0.578655,
		33.752773, 35.007130, 20.678404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836952, 35.188457, 21.507341>,  <33.183781, 34.960487, 21.083464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836952, 35.188457, 21.507341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921768, 35.298260, 21.132175>,  <33.972656, 35.364143, 20.907076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.921768, 35.298260, 21.132175>,  <33.836952, 35.188457, 21.507341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921768, 35.298260, 21.132175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171489, 0.934395, 0.312246,
		0.962098, -0.227050, 0.151050,
		0.212036, 0.274508, -0.937916,
		33.985378, 35.380611, 20.850801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383938, 35.530499, 21.971769>,  <33.836952, 35.188457, 21.507341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383938, 35.530499, 21.971769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232361, 35.184452, 21.840332>,  <33.141415, 34.976826, 21.761469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232361, 35.184452, 21.840332>,  <33.383938, 35.530499, 21.971769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232361, 35.184452, 21.840332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544580, 0.495551, -0.676655,
		0.748221, -0.077466, -0.658911,
		-0.378942, -0.865118, -0.328596,
		33.118679, 34.924915, 21.741753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984962, 35.172123, 22.585127>,  <33.383938, 35.530499, 21.971769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984962, 35.172123, 22.585127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729416, 34.995792, 22.837322>,  <32.576088, 34.889996, 22.988640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729416, 34.995792, 22.837322>,  <32.984962, 35.172123, 22.585127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729416, 34.995792, 22.837322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476256, -0.870251, -0.125874,
		0.604173, 0.219858, 0.765923,
		-0.638870, -0.440824, 0.630490,
		32.537754, 34.863544, 23.026470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311008, 34.713810, 23.075594>,  <32.984962, 35.172123, 22.585127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311008, 34.713810, 23.075594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940353, 34.563755, 23.065739>,  <32.717960, 34.473721, 23.059826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940353, 34.563755, 23.065739>,  <33.311008, 34.713810, 23.075594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940353, 34.563755, 23.065739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373629, -0.926212, 0.050329,
		-0.041702, 0.037430, 0.998429,
		-0.926640, -0.375141, -0.024640,
		32.662361, 34.451214, 23.058346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188877, 34.387524, 23.675694>,  <33.311008, 34.713810, 23.075594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188877, 34.387524, 23.675694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911953, 34.222466, 23.438904>,  <32.745800, 34.123432, 23.296831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911953, 34.222466, 23.438904>,  <33.188877, 34.387524, 23.675694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911953, 34.222466, 23.438904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416202, -0.898498, 0.139562,
		-0.589475, -0.149760, 0.793782,
		-0.692311, -0.412642, -0.591973,
		32.704258, 34.098671, 23.261312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103733, 33.704109, 24.003609>,  <33.188877, 34.387524, 23.675694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103733, 33.704109, 24.003609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940178, 33.667488, 23.640415>,  <32.842045, 33.645515, 23.422499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940178, 33.667488, 23.640415>,  <33.103733, 33.704109, 24.003609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940178, 33.667488, 23.640415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439312, -0.891829, -0.107912,
		-0.799886, -0.443011, 0.404875,
		-0.408886, -0.091549, -0.907982,
		32.817513, 33.640022, 23.368021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158363, 33.044159, 23.949976>,  <33.103733, 33.704109, 24.003609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158363, 33.044159, 23.949976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077553, 33.156803, 23.574768>,  <33.029064, 33.224392, 23.349644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077553, 33.156803, 23.574768>,  <33.158363, 33.044159, 23.949976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077553, 33.156803, 23.574768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303438, -0.892640, -0.333346,
		-0.931187, -0.351976, 0.094887,
		-0.202029, 0.281615, -0.938018,
		33.016945, 33.241287, 23.293364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635727, 32.581699, 23.667536>,  <33.158363, 33.044159, 23.949976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635727, 32.581699, 23.667536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855843, 32.740826, 23.373890>,  <32.987911, 32.836300, 23.197702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855843, 32.740826, 23.373890>,  <32.635727, 32.581699, 23.667536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855843, 32.740826, 23.373890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263611, -0.917014, -0.299323,
		-0.792269, -0.028806, -0.609492,
		0.550290, 0.397813, -0.734116,
		33.020931, 32.860168, 23.153656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351456, 32.203094, 23.090553>,  <32.635727, 32.581699, 23.667536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351456, 32.203094, 23.090553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709106, 32.336536, 22.971054>,  <32.923698, 32.416599, 22.899355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709106, 32.336536, 22.971054>,  <32.351456, 32.203094, 23.090553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709106, 32.336536, 22.971054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195318, -0.890837, -0.410196,
		-0.402976, 0.308417, -0.861678,
		0.894126, 0.333601, -0.298747,
		32.977345, 32.436615, 22.881430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429661, 32.181282, 22.404797>,  <32.351456, 32.203094, 23.090553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429661, 32.181282, 22.404797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807560, 32.161671, 22.534439>,  <33.034302, 32.149906, 22.612225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807560, 32.161671, 22.534439>,  <32.429661, 32.181282, 22.404797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807560, 32.161671, 22.534439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048241, -0.957191, -0.285409,
		0.324224, 0.285275, -0.901941,
		0.944749, -0.049026, 0.324106,
		33.090984, 32.146961, 22.631672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814686, 31.695898, 22.031439>,  <32.429661, 32.181282, 22.404797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814686, 31.695898, 22.031439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086624, 31.716698, 22.324043>,  <33.249786, 31.729177, 22.499605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086624, 31.716698, 22.324043>,  <32.814686, 31.695898, 22.031439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086624, 31.716698, 22.324043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176804, -0.979682, -0.094678,
		0.711724, 0.193701, -0.675225,
		0.679845, 0.051998, 0.731510,
		33.290577, 31.732298, 22.543497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347736, 31.232368, 21.776232>,  <32.814686, 31.695898, 22.031439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347736, 31.232368, 21.776232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426704, 31.279194, 22.165554>,  <33.474083, 31.307289, 22.399147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.426704, 31.279194, 22.165554>,  <33.347736, 31.232368, 21.776232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426704, 31.279194, 22.165554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255130, -0.964767, 0.064288,
		0.946539, 0.235628, -0.220327,
		0.197417, 0.117063, 0.973305,
		33.485928, 31.314312, 22.457546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114212, 31.063662, 21.810066>,  <33.347736, 31.232368, 21.776232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114212, 31.063662, 21.810066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905579, 30.994762, 22.144318>,  <33.780399, 30.953423, 22.344868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905579, 30.994762, 22.144318>,  <34.114212, 31.063662, 21.810066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905579, 30.994762, 22.144318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372088, -0.927287, 0.041108,
		0.767787, 0.332369, 0.547754,
		-0.521588, -0.172250, 0.835629,
		33.749104, 30.943087, 22.395006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568005, 30.463057, 22.216156>,  <34.114212, 31.063662, 21.810066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568005, 30.463057, 22.216156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208870, 30.467922, 22.392223>,  <33.993389, 30.470840, 22.497864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208870, 30.467922, 22.392223>,  <34.568005, 30.463057, 22.216156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208870, 30.467922, 22.392223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182261, -0.899705, 0.396625,
		0.400846, 0.436329, 0.805568,
		-0.897833, 0.012162, 0.440169,
		33.939522, 30.471571, 22.524275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672260, 30.268101, 22.987383>,  <34.568005, 30.463057, 22.216156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672260, 30.268101, 22.987383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279140, 30.224022, 22.928112>,  <34.043266, 30.197575, 22.892550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279140, 30.224022, 22.928112>,  <34.672260, 30.268101, 22.987383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279140, 30.224022, 22.928112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008686, -0.829124, 0.558997,
		-0.184455, 0.548097, 0.815823,
		-0.982803, -0.110196, -0.148175,
		33.984299, 30.190964, 22.883659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397263, 29.925041, 23.709631>,  <34.672260, 30.268101, 22.987383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397263, 29.925041, 23.709631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132961, 29.843151, 23.420773>,  <33.974380, 29.794018, 23.247458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132961, 29.843151, 23.420773>,  <34.397263, 29.925041, 23.709631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132961, 29.843151, 23.420773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112568, -0.924178, 0.364999,
		-0.742115, 0.322464, 0.587607,
		-0.660753, -0.204726, -0.722145,
		33.934734, 29.781733, 23.204128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745461, 29.693571, 24.057632>,  <34.397263, 29.925041, 23.709631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745461, 29.693571, 24.057632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751774, 29.567909, 23.677937>,  <33.755562, 29.492512, 23.450119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751774, 29.567909, 23.677937>,  <33.745461, 29.693571, 24.057632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751774, 29.567909, 23.677937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190783, -0.932863, 0.305564,
		-0.981505, 0.176277, -0.074657,
		0.015781, -0.314156, -0.949240,
		33.756508, 29.473663, 23.393164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215473, 29.255165, 24.040684>,  <33.745461, 29.693571, 24.057632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215473, 29.255165, 24.040684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402020, 29.142757, 23.705177>,  <33.513947, 29.075314, 23.503874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402020, 29.142757, 23.705177>,  <33.215473, 29.255165, 24.040684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402020, 29.142757, 23.705177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132514, -0.959693, 0.247851,
		-0.874609, -0.004442, -0.484809,
		0.466368, -0.281017, -0.838767,
		33.541931, 29.058453, 23.453547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799263, 28.720387, 23.762806>,  <33.215473, 29.255165, 24.040684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799263, 28.720387, 23.762806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153461, 28.689243, 23.579578>,  <33.365982, 28.670557, 23.469643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153461, 28.689243, 23.579578>,  <32.799263, 28.720387, 23.762806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153461, 28.689243, 23.579578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075817, -0.996859, 0.022877,
		-0.458410, 0.014471, -0.888623,
		0.885501, -0.077860, -0.458068,
		33.419113, 28.665886, 23.442158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702137, 28.409061, 23.162975>,  <32.799263, 28.720387, 23.762806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702137, 28.409061, 23.162975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088657, 28.351395, 23.248280>,  <33.320568, 28.316795, 23.299461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088657, 28.351395, 23.248280>,  <32.702137, 28.409061, 23.162975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088657, 28.351395, 23.248280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138175, -0.989482, -0.042814,
		0.217190, 0.011904, -0.976057,
		0.966300, -0.144166, 0.213261,
		33.378548, 28.308146, 23.312258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825958, 27.859510, 22.698759>,  <32.702137, 28.409061, 23.162975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825958, 27.859510, 22.698759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125607, 27.860985, 22.963726>,  <33.305397, 27.861870, 23.122707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125607, 27.860985, 22.963726>,  <32.825958, 27.859510, 22.698759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125607, 27.860985, 22.963726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038892, -0.998504, -0.038423,
		0.661287, 0.054546, -0.748147,
		0.749124, 0.003688, 0.662419,
		33.350346, 27.862091, 23.162453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278358, 27.447239, 22.346601>,  <32.825958, 27.859510, 22.698759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278358, 27.447239, 22.346601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383213, 27.448460, 22.732613>,  <33.446125, 27.449192, 22.964220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.383213, 27.448460, 22.732613>,  <33.278358, 27.447239, 22.346601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383213, 27.448460, 22.732613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125555, -0.991603, -0.030967,
		0.956829, 0.129282, -0.260314,
		0.262132, 0.003053, 0.965027,
		33.461853, 27.449375, 23.022121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881390, 27.061152, 22.332935>,  <33.278358, 27.447239, 22.346601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881390, 27.061152, 22.332935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727791, 27.047562, 22.702019>,  <33.635632, 27.039408, 22.923470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727791, 27.047562, 22.702019>,  <33.881390, 27.061152, 22.332935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727791, 27.047562, 22.702019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149639, -0.988402, 0.025880,
		0.911128, 0.148011, 0.384627,
		-0.383996, -0.033975, 0.922709,
		33.612591, 27.037369, 22.978832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344254, 26.648621, 22.714861>,  <33.881390, 27.061152, 22.332935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344254, 26.648621, 22.714861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995777, 26.630135, 22.910366>,  <33.786690, 26.619043, 23.027668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995777, 26.630135, 22.910366>,  <34.344254, 26.648621, 22.714861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995777, 26.630135, 22.910366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031768, -0.998779, -0.037820,
		0.489913, -0.017422, 0.871597,
		-0.871192, -0.046217, 0.488762,
		33.734421, 26.616270, 23.056995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406891, 26.183863, 23.242100>,  <34.344254, 26.648621, 22.714861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406891, 26.183863, 23.242100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008423, 26.207226, 23.216072>,  <33.769341, 26.221245, 23.200455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008423, 26.207226, 23.216072>,  <34.406891, 26.183863, 23.242100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008423, 26.207226, 23.216072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065064, -0.992306, 0.105339,
		-0.058417, 0.109169, 0.992305,
		-0.996170, 0.058410, -0.065070,
		33.709572, 26.224749, 23.196550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192688, 25.627623, 23.591413>,  <34.406891, 26.183863, 23.242100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192688, 25.627623, 23.591413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859745, 25.727505, 23.393497>,  <33.659977, 25.787434, 23.274748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859745, 25.727505, 23.393497>,  <34.192688, 25.627623, 23.591413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859745, 25.727505, 23.393497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170972, -0.964900, -0.199341,
		-0.527202, -0.081328, 0.845839,
		-0.832362, 0.249708, -0.494793,
		33.610035, 25.802418, 23.245060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752026, 25.148407, 23.850973>,  <34.192688, 25.627623, 23.591413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752026, 25.148407, 23.850973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604168, 25.271065, 23.500126>,  <33.515453, 25.344660, 23.289618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604168, 25.271065, 23.500126>,  <33.752026, 25.148407, 23.850973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604168, 25.271065, 23.500126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149233, -0.951313, -0.269691,
		-0.917112, 0.031206, 0.397407,
		-0.369642, 0.306643, -0.877117,
		33.493275, 25.363058, 23.236990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205246, 24.691826, 23.862398>,  <33.752026, 25.148407, 23.850973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205246, 24.691826, 23.862398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267399, 24.831768, 23.492867>,  <33.304691, 24.915733, 23.271149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267399, 24.831768, 23.492867>,  <33.205246, 24.691826, 23.862398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267399, 24.831768, 23.492867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140030, -0.917943, -0.371178,
		-0.977879, 0.187038, -0.093640,
		0.155381, 0.349854, -0.923828,
		33.314014, 24.936724, 23.215717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546444, 24.440369, 23.521797>,  <33.205246, 24.691826, 23.862398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546444, 24.440369, 23.521797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845654, 24.526131, 23.270561>,  <33.025177, 24.577587, 23.119820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845654, 24.526131, 23.270561>,  <32.546444, 24.440369, 23.521797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845654, 24.526131, 23.270561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127809, -0.882129, -0.453337,
		-0.651253, 0.419381, -0.632447,
		0.748020, 0.214404, -0.628089,
		33.070061, 24.590452, 23.082134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860373, 24.669971, 23.281996>,  <32.546444, 24.440369, 23.521797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860373, 24.669971, 23.281996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504642, 24.519196, 23.385548>,  <31.291204, 24.428730, 23.447678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504642, 24.519196, 23.385548>,  <31.860373, 24.669971, 23.281996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504642, 24.519196, 23.385548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409289, 0.908619, -0.083026,
		-0.203926, -0.179793, -0.962335,
		-0.889324, -0.376942, 0.258878,
		31.237844, 24.406113, 23.463211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385759, 24.913149, 22.793610>,  <31.860373, 24.669971, 23.281996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385759, 24.913149, 22.793610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187634, 24.828270, 23.130569>,  <31.068758, 24.777342, 23.332745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187634, 24.828270, 23.130569>,  <31.385759, 24.913149, 22.793610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187634, 24.828270, 23.130569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487930, 0.870255, -0.067677,
		-0.718742, -0.444554, -0.534586,
		-0.495312, -0.212198, 0.842400,
		31.039040, 24.764610, 23.383289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607639, 24.978668, 22.670542>,  <31.385759, 24.913149, 22.793610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607639, 24.978668, 22.670542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681677, 25.042580, 23.058399>,  <30.726099, 25.080927, 23.291115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.681677, 25.042580, 23.058399>,  <30.607639, 24.978668, 22.670542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681677, 25.042580, 23.058399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698749, 0.715199, 0.015531,
		-0.691007, -0.680412, 0.244026,
		0.185094, 0.159781, 0.969644,
		30.737206, 25.090513, 23.349293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941978, 25.118435, 22.965412>,  <30.607639, 24.978668, 22.670542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941978, 25.118435, 22.965412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235596, 25.269928, 23.190887>,  <30.411766, 25.360825, 23.326172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235596, 25.269928, 23.190887>,  <29.941978, 25.118435, 22.965412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235596, 25.269928, 23.190887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461275, 0.887246, 0.004550,
		-0.498406, -0.263355, 0.825975,
		0.734041, 0.378734, 0.563688,
		30.455809, 25.383549, 23.359993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656925, 25.471945, 23.509760>,  <29.941978, 25.118435, 22.965412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656925, 25.471945, 23.509760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030457, 25.615028, 23.510834>,  <30.254576, 25.700878, 23.511478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030457, 25.615028, 23.510834>,  <29.656925, 25.471945, 23.509760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030457, 25.615028, 23.510834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356500, 0.929996, 0.089532,
		0.029529, -0.084566, 0.995981,
		0.933829, 0.357711, 0.002686,
		30.310606, 25.722342, 23.511639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
