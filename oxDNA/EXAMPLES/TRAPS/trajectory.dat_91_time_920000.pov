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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.350616, 53.111111, 50.155518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220860, 52.837994, 49.893658>,  <36.143005, 52.674122, 49.736542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220860, 52.837994, 49.893658>,  <36.350616, 53.111111, 50.155518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220860, 52.837994, 49.893658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758418, -0.601339, 0.251385,
		-0.565309, -0.414950, 0.712911,
		-0.324389, -0.682795, -0.654648,
		36.123543, 52.633156, 49.697262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608753, 52.479481, 50.339558>,  <36.350616, 53.111111, 50.155518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608753, 52.479481, 50.339558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475746, 52.396587, 49.971539>,  <36.395943, 52.346851, 49.750729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475746, 52.396587, 49.971539>,  <36.608753, 52.479481, 50.339558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475746, 52.396587, 49.971539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572513, -0.819592, -0.022307,
		-0.749439, -0.534156, 0.391176,
		-0.332520, -0.207236, -0.920045,
		36.375992, 52.334415, 49.695526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960678, 51.846703, 50.377357>,  <36.608753, 52.479481, 50.339558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960678, 51.846703, 50.377357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257820, 51.790714, 50.115494>,  <37.436104, 51.757122, 49.958374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257820, 51.790714, 50.115494>,  <36.960678, 51.846703, 50.377357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257820, 51.790714, 50.115494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494539, 0.773850, 0.395710,
		0.451221, -0.617709, 0.644077,
		0.742853, -0.139969, -0.654659,
		37.480675, 51.748722, 49.919098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590630, 51.617264, 50.793728>,  <36.960678, 51.846703, 50.377357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590630, 51.617264, 50.793728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643742, 51.825485, 50.456352>,  <37.675610, 51.950420, 50.253925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643742, 51.825485, 50.456352>,  <37.590630, 51.617264, 50.793728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643742, 51.825485, 50.456352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576608, 0.651580, 0.492915,
		0.806159, -0.551783, -0.213641,
		0.132778, 0.520555, -0.843441,
		37.683575, 51.981651, 50.203320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153732, 51.384533, 51.293468>,  <37.590630, 51.617264, 50.793728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153732, 51.384533, 51.293468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181587, 51.461243, 51.685055>,  <38.198299, 51.507271, 51.920006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181587, 51.461243, 51.685055>,  <38.153732, 51.384533, 51.293468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181587, 51.461243, 51.685055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996153, -0.065701, -0.057985,
		0.053199, 0.979237, -0.195615,
		0.069634, 0.191778, 0.978965,
		38.202477, 51.518776, 51.978745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667286, 51.943909, 51.395084>,  <38.153732, 51.384533, 51.293468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667286, 51.943909, 51.395084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638687, 51.659317, 51.674709>,  <38.621529, 51.488564, 51.842484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638687, 51.659317, 51.674709>,  <38.667286, 51.943909, 51.395084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638687, 51.659317, 51.674709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990400, -0.133764, -0.034850,
		0.118304, 0.689857, 0.714214,
		-0.071495, -0.711480, 0.699060,
		38.617237, 51.445873, 51.884426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982327, 52.240929, 52.023247>,  <38.667286, 51.943909, 51.395084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982327, 52.240929, 52.023247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955853, 51.855240, 51.920570>,  <38.939968, 51.623825, 51.858963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955853, 51.855240, 51.920570>,  <38.982327, 52.240929, 52.023247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955853, 51.855240, 51.920570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969242, -0.001016, -0.246107,
		0.237041, -0.265088, 0.934634,
		-0.066190, -0.964224, -0.256693,
		38.935997, 51.565971, 51.843563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052746, 52.912399, 51.817825>,  <38.982327, 52.240929, 52.023247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052746, 52.912399, 51.817825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012753, 53.309349, 51.846642>,  <38.988758, 53.547520, 51.863930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012753, 53.309349, 51.846642>,  <39.052746, 52.912399, 51.817825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012753, 53.309349, 51.846642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969565, -0.113432, 0.216973,
		0.223491, -0.048152, 0.973516,
		-0.099980, 0.992378, 0.072037,
		38.982758, 53.607063, 51.868252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675854, 53.201855, 52.447979>,  <39.052746, 52.912399, 51.817825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675854, 53.201855, 52.447979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598244, 53.433125, 52.130978>,  <38.551678, 53.571888, 51.940777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.598244, 53.433125, 52.130978>,  <38.675854, 53.201855, 52.447979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598244, 53.433125, 52.130978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975475, -0.028124, 0.218304,
		0.103930, 0.815425, 0.569456,
		-0.194026, 0.578179, -0.792504,
		38.540035, 53.606579, 51.893227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254387, 53.810413, 52.603188>,  <38.675854, 53.201855, 52.447979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254387, 53.810413, 52.603188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178875, 53.689037, 52.229603>,  <38.133568, 53.616211, 52.005451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178875, 53.689037, 52.229603>,  <38.254387, 53.810413, 52.603188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178875, 53.689037, 52.229603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981911, 0.072493, 0.174915,
		0.014630, 0.950089, -0.311637,
		-0.188776, -0.303441, -0.933963,
		38.122242, 53.598003, 51.949413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251472, 53.680191, 53.368099>,  <38.254387, 53.810413, 52.603188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251472, 53.680191, 53.368099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607018, 53.715137, 53.188190>,  <38.820343, 53.736103, 53.080246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.607018, 53.715137, 53.188190>,  <38.251472, 53.680191, 53.368099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607018, 53.715137, 53.188190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284428, 0.664382, 0.691156,
		0.359200, -0.742269, 0.565696,
		0.888862, 0.087363, -0.449768,
		38.873676, 53.741348, 53.053261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814251, 53.546715, 53.874107>,  <38.251472, 53.680191, 53.368099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814251, 53.546715, 53.874107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946606, 53.754341, 53.558872>,  <39.026020, 53.878918, 53.369732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946606, 53.754341, 53.558872>,  <38.814251, 53.546715, 53.874107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946606, 53.754341, 53.558872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598701, 0.530062, 0.600492,
		0.729431, -0.670526, -0.135372,
		0.330890, 0.519065, -0.788088,
		39.045872, 53.910061, 53.322445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445335, 53.345249, 53.683254>,  <38.814251, 53.546715, 53.874107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445335, 53.345249, 53.683254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422180, 53.739830, 53.621857>,  <39.408287, 53.976578, 53.585018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422180, 53.739830, 53.621857>,  <39.445335, 53.345249, 53.683254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422180, 53.739830, 53.621857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710099, 0.148757, 0.688208,
		0.701718, -0.069154, -0.709091,
		-0.057890, 0.986453, -0.153492,
		39.404812, 54.035767, 53.575809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991730, 53.831512, 53.369534>,  <39.445335, 53.345249, 53.683254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991730, 53.831512, 53.369534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778885, 54.030415, 53.643642>,  <39.651176, 54.149757, 53.808105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.778885, 54.030415, 53.643642>,  <39.991730, 53.831512, 53.369534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778885, 54.030415, 53.643642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845613, 0.271599, 0.459536,
		0.042390, 0.823996, -0.565008,
		-0.532111, 0.497258, 0.685269,
		39.619251, 54.179592, 53.849224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293610, 54.469841, 53.629391>,  <39.991730, 53.831512, 53.369534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293610, 54.469841, 53.629391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048752, 54.449043, 53.945004>,  <39.901836, 54.436565, 54.134373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048752, 54.449043, 53.945004>,  <40.293610, 54.469841, 53.629391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048752, 54.449043, 53.945004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780805, 0.117976, 0.613535,
		-0.124986, 0.991654, -0.031623,
		-0.612145, -0.051992, 0.789034,
		39.865108, 54.433445, 54.181713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563728, 55.041225, 53.943260>,  <40.293610, 54.469841, 53.629391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563728, 55.041225, 53.943260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362656, 54.789856, 54.180710>,  <40.242012, 54.639034, 54.323181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362656, 54.789856, 54.180710>,  <40.563728, 55.041225, 53.943260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362656, 54.789856, 54.180710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799906, -0.077735, 0.595070,
		-0.327813, 0.773974, 0.541759,
		-0.502683, -0.628428, 0.593624,
		40.211849, 54.601326, 54.358795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710323, 55.203575, 54.588078>,  <40.563728, 55.041225, 53.943260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710323, 55.203575, 54.588078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585598, 54.825294, 54.624779>,  <40.510765, 54.598324, 54.646801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585598, 54.825294, 54.624779>,  <40.710323, 55.203575, 54.588078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585598, 54.825294, 54.624779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681866, -0.155470, 0.714764,
		-0.661689, 0.285437, 0.693320,
		-0.311811, -0.945703, 0.091757,
		40.492054, 54.541584, 54.652306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597374, 55.065727, 55.308228>,  <40.710323, 55.203575, 54.588078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597374, 55.065727, 55.308228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686577, 54.731586, 55.107246>,  <40.740097, 54.531101, 54.986656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686577, 54.731586, 55.107246>,  <40.597374, 55.065727, 55.308228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686577, 54.731586, 55.107246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621293, -0.275385, 0.733592,
		-0.751175, -0.475765, 0.457585,
		0.223005, -0.835351, -0.502452,
		40.753479, 54.480980, 54.956512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751804, 54.543465, 55.826912>,  <40.597374, 55.065727, 55.308228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751804, 54.543465, 55.826912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966160, 54.462902, 55.498947>,  <41.094772, 54.414562, 55.302170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966160, 54.462902, 55.498947>,  <40.751804, 54.543465, 55.826912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966160, 54.462902, 55.498947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752042, -0.327518, 0.571983,
		-0.383739, -0.923129, -0.024043,
		0.535888, -0.201411, -0.819913,
		41.126926, 54.402481, 55.252972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990143, 53.823524, 55.870216>,  <40.751804, 54.543465, 55.826912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990143, 53.823524, 55.870216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244907, 54.063747, 55.676857>,  <41.397766, 54.207882, 55.560841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244907, 54.063747, 55.676857>,  <40.990143, 53.823524, 55.870216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244907, 54.063747, 55.676857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755839, -0.362956, 0.544951,
		0.151821, -0.712458, -0.685094,
		0.636913, 0.600556, -0.483399,
		41.435982, 54.243916, 55.531837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647297, 53.479988, 55.617897>,  <40.990143, 53.823524, 55.870216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647297, 53.479988, 55.617897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701214, 53.862358, 55.722237>,  <41.733562, 54.091778, 55.784840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.701214, 53.862358, 55.722237>,  <41.647297, 53.479988, 55.617897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701214, 53.862358, 55.722237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767903, -0.267150, 0.582199,
		0.626223, 0.121830, -0.770066,
		0.134793, 0.955923, 0.260849,
		41.741653, 54.149136, 55.800491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.385109, 53.775158, 55.439831>,  <41.647297, 53.479988, 55.617897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.385109, 53.775158, 55.439831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164799, 53.857403, 55.763405>,  <42.032612, 53.906750, 55.957550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.164799, 53.857403, 55.763405>,  <42.385109, 53.775158, 55.439831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164799, 53.857403, 55.763405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703190, -0.407799, 0.582429,
		0.449639, 0.889619, 0.080018,
		-0.550771, 0.205615, 0.808933,
		41.999569, 53.919086, 56.006084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599060, 54.326702, 55.925652>,  <42.385109, 53.775158, 55.439831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599060, 54.326702, 55.925652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427174, 54.008259, 56.096085>,  <42.324043, 53.817192, 56.198345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427174, 54.008259, 56.096085>,  <42.599060, 54.326702, 55.925652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427174, 54.008259, 56.096085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879770, -0.262864, 0.396116,
		-0.203350, 0.545075, 0.813352,
		-0.429714, -0.796113, 0.426087,
		42.298260, 53.769424, 56.223911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566753, 54.910667, 56.509785>,  <42.599060, 54.326702, 55.925652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566753, 54.910667, 56.509785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795460, 55.233635, 56.451607>,  <42.932682, 55.427418, 56.416698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.795460, 55.233635, 56.451607>,  <42.566753, 54.910667, 56.509785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.795460, 55.233635, 56.451607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546232, -0.242374, 0.801801,
		0.612139, -0.537890, -0.579621,
		0.571766, 0.807421, -0.145446,
		42.966988, 55.475861, 56.407974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275738, 54.702446, 56.381889>,  <42.566753, 54.910667, 56.509785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275738, 54.702446, 56.381889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254009, 55.055840, 56.568008>,  <43.240974, 55.267876, 56.679680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.254009, 55.055840, 56.568008>,  <43.275738, 54.702446, 56.381889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.254009, 55.055840, 56.568008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422413, -0.401901, 0.812430,
		0.904774, 0.240676, -0.351367,
		-0.054318, 0.883488, 0.465294,
		43.237713, 55.320885, 56.707596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914795, 55.088001, 56.597023>,  <43.275738, 54.702446, 56.381889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914795, 55.088001, 56.597023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606903, 55.141869, 56.846626>,  <43.422169, 55.174187, 56.996387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.606903, 55.141869, 56.846626>,  <43.914795, 55.088001, 56.597023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606903, 55.141869, 56.846626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471034, -0.539950, 0.697553,
		0.430870, 0.830854, 0.352182,
		-0.769726, 0.134665, 0.624009,
		43.375984, 55.182266, 57.033829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115913, 55.357418, 57.314739>,  <43.914795, 55.088001, 56.597023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115913, 55.357418, 57.314739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831661, 55.078415, 57.351593>,  <43.661110, 54.911011, 57.373707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.831661, 55.078415, 57.351593>,  <44.115913, 55.357418, 57.314739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831661, 55.078415, 57.351593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601692, -0.534619, 0.593422,
		-0.364659, 0.477141, 0.799600,
		-0.710627, -0.697510, 0.092138,
		43.618473, 54.869164, 57.379234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.889591, 55.134892, 57.967525>,  <44.115913, 55.357418, 57.314739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.889591, 55.134892, 57.967525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865681, 54.813145, 57.731079>,  <43.851334, 54.620094, 57.589211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865681, 54.813145, 57.731079>,  <43.889591, 55.134892, 57.967525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865681, 54.813145, 57.731079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725835, -0.441548, 0.527447,
		-0.685268, -0.397522, 0.610233,
		-0.059775, -0.804371, -0.591113,
		43.847748, 54.571835, 57.553745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905926, 54.511303, 58.440056>,  <43.889591, 55.134892, 57.967525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905926, 54.511303, 58.440056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049839, 54.421661, 58.077766>,  <44.136185, 54.367874, 57.860394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.049839, 54.421661, 58.077766>,  <43.905926, 54.511303, 58.440056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.049839, 54.421661, 58.077766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718079, -0.553310, 0.422150,
		-0.595753, -0.802261, -0.038143,
		0.359780, -0.224108, -0.905723,
		44.157772, 54.354431, 57.806049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.209122, 54.714062, 59.121422>,  <43.905926, 54.511303, 58.440056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.209122, 54.714062, 59.121422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353848, 54.604385, 58.765015>,  <44.440681, 54.538578, 58.551170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.353848, 54.604385, 58.765015>,  <44.209122, 54.714062, 59.121422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353848, 54.604385, 58.765015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906090, 0.328261, 0.266917,
		0.219300, -0.903915, 0.367212,
		0.361812, -0.274192, -0.891017,
		44.462391, 54.522129, 58.497711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.880283, 54.323257, 59.153645>,  <44.209122, 54.714062, 59.121422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.880283, 54.323257, 59.153645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872383, 54.535755, 58.814850>,  <44.867645, 54.663254, 58.611572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.872383, 54.535755, 58.814850>,  <44.880283, 54.323257, 59.153645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.872383, 54.535755, 58.814850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948021, 0.279051, 0.152923,
		0.317593, -0.799941, -0.509145,
		-0.019748, 0.531248, -0.846986,
		44.866459, 54.695129, 58.560753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.449036, 54.043804, 58.672138>,  <44.880283, 54.323257, 59.153645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.449036, 54.043804, 58.672138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355423, 54.430923, 58.635040>,  <45.299255, 54.663193, 58.612782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.355423, 54.430923, 58.635040>,  <45.449036, 54.043804, 58.672138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.355423, 54.430923, 58.635040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960210, 0.245034, 0.133994,
		0.152403, -0.057693, -0.986633,
		-0.234028, 0.967796, -0.092741,
		45.285213, 54.721264, 58.607220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.832821, 54.431107, 58.144737>,  <45.449036, 54.043804, 58.672138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.832821, 54.431107, 58.144737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720123, 54.691368, 58.426804>,  <45.652504, 54.847527, 58.596043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720123, 54.691368, 58.426804>,  <45.832821, 54.431107, 58.144737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720123, 54.691368, 58.426804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939942, 0.334760, 0.066669,
		-0.192684, 0.681603, -0.705897,
		-0.281748, 0.650656, 0.705170,
		45.635597, 54.886566, 58.638355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.969345, 55.105656, 57.990662>,  <45.832821, 54.431107, 58.144737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.969345, 55.105656, 57.990662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.957779, 55.102333, 58.390480>,  <45.950840, 55.100342, 58.630371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.957779, 55.102333, 58.390480>,  <45.969345, 55.105656, 57.990662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.957779, 55.102333, 58.390480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938805, 0.343140, 0.030009,
		-0.343233, 0.939248, -0.002127,
		-0.028915, -0.008303, 0.999547,
		45.949104, 55.099842, 58.690346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.185562, 55.849167, 58.178116>,  <45.969345, 55.105656, 57.990662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.185562, 55.849167, 58.178116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.263027, 55.567745, 58.451614>,  <46.309505, 55.398891, 58.615715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.263027, 55.567745, 58.451614>,  <46.185562, 55.849167, 58.178116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.263027, 55.567745, 58.451614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937557, 0.337976, 0.082217,
		-0.288935, 0.625131, 0.725071,
		0.193660, -0.703551, 0.683749,
		46.321125, 55.356682, 58.656738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.572910, 56.120640, 58.751545>,  <46.185562, 55.849167, 58.178116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.572910, 56.120640, 58.751545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.694042, 55.740452, 58.723541>,  <46.766720, 55.512341, 58.706738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.694042, 55.740452, 58.723541>,  <46.572910, 56.120640, 58.751545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.694042, 55.740452, 58.723541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951511, 0.305691, -0.034350,
		0.054051, -0.056216, 0.996955,
		0.302829, -0.950470, -0.070013,
		46.784889, 55.455311, 58.702538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.258938, 56.158051, 59.050522>,  <46.572910, 56.120640, 58.751545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.258938, 56.158051, 59.050522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.199863, 55.854015, 58.797394>,  <47.164417, 55.671597, 58.645515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.199863, 55.854015, 58.797394>,  <47.258938, 56.158051, 59.050522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.199863, 55.854015, 58.797394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940659, 0.089705, -0.327281,
		0.305528, -0.643603, 0.701732,
		-0.147690, -0.760084, -0.632819,
		47.155556, 55.625992, 58.607548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.734070, 55.648407, 59.260914>,  <47.258938, 56.158051, 59.050522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.734070, 55.648407, 59.260914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640663, 55.685143, 58.873711>,  <47.584621, 55.707184, 58.641388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640663, 55.685143, 58.873711>,  <47.734070, 55.648407, 59.260914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.640663, 55.685143, 58.873711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932146, 0.304462, -0.195975,
		0.276723, -0.948086, -0.156706,
		-0.233512, 0.091843, -0.968006,
		47.570610, 55.712696, 58.583309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.227779, 55.886360, 58.976997>,  <47.734070, 55.648407, 59.260914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.227779, 55.886360, 58.976997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.012157, 55.947617, 58.645706>,  <47.882782, 55.984371, 58.446930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.012157, 55.947617, 58.645706>,  <48.227779, 55.886360, 58.976997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.012157, 55.947617, 58.645706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763940, 0.502999, -0.404212,
		0.354698, -0.850612, -0.388135,
		-0.539059, 0.153139, -0.828229,
		47.850441, 55.993557, 58.397236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.637390, 55.728432, 58.414963>,  <48.227779, 55.886360, 58.976997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.637390, 55.728432, 58.414963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.395283, 56.002865, 58.253502>,  <48.250019, 56.167526, 58.156624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.395283, 56.002865, 58.253502>,  <48.637390, 55.728432, 58.414963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.395283, 56.002865, 58.253502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744254, 0.307874, -0.592706,
		-0.282371, -0.659168, -0.696967,
		-0.605271, 0.686084, -0.403654,
		48.213703, 56.208691, 58.132404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.392338, 55.626770, 57.693008>,  <48.637390, 55.728432, 58.414963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.392338, 55.626770, 57.693008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.453163, 56.005520, 57.806366>,  <48.489658, 56.232769, 57.874378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.453163, 56.005520, 57.806366>,  <48.392338, 55.626770, 57.693008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.453163, 56.005520, 57.806366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705300, 0.096913, -0.702253,
		-0.692408, 0.306662, -0.653092,
		0.152061, 0.946872, 0.283392,
		48.498783, 56.289581, 57.891384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.596039, 56.074226, 57.034042>,  <48.392338, 55.626770, 57.693008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.596039, 56.074226, 57.034042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.718548, 56.222481, 57.384773>,  <48.792053, 56.311432, 57.595211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.718548, 56.222481, 57.384773>,  <48.596039, 56.074226, 57.034042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.718548, 56.222481, 57.384773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878734, 0.244154, -0.410141,
		-0.366092, 0.896115, -0.250909,
		0.306273, 0.370631, 0.876829,
		48.810429, 56.333672, 57.647823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.713905, 56.753849, 56.926922>,  <48.596039, 56.074226, 57.034042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.713905, 56.753849, 56.926922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.931427, 56.564304, 57.203972>,  <49.061939, 56.450577, 57.370201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.931427, 56.564304, 57.203972>,  <48.713905, 56.753849, 56.926922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.931427, 56.564304, 57.203972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839058, 0.291272, -0.459502,
		0.015998, 0.831033, 0.555992,
		0.543807, -0.473861, 0.692625,
		49.094570, 56.422146, 57.411758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.303726, 57.194527, 56.928997>,  <48.713905, 56.753849, 56.926922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.303726, 57.194527, 56.928997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.420475, 56.853584, 57.102570>,  <49.490524, 56.649017, 57.206711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.420475, 56.853584, 57.102570>,  <49.303726, 57.194527, 56.928997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.420475, 56.853584, 57.102570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945797, 0.189664, -0.263620,
		0.142398, 0.487352, 0.861517,
		0.291875, -0.852359, 0.433928,
		49.508038, 56.597878, 57.232746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.025024, 57.005890, 56.778770>,  <49.303726, 57.194527, 56.928997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.025024, 57.005890, 56.778770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.260086, 57.329376, 56.788841>,  <50.401123, 57.523468, 56.794884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.260086, 57.329376, 56.788841>,  <50.025024, 57.005890, 56.778770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.260086, 57.329376, 56.788841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675684, -0.507623, 0.534575,
		0.445100, -0.297137, -0.844746,
		0.587654, 0.808720, 0.025172,
		50.436382, 57.571991, 56.796394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.706917, 56.902939, 56.598194>,  <50.025024, 57.005890, 56.778770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.706917, 56.902939, 56.598194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.737728, 57.214912, 56.846634>,  <50.756214, 57.402096, 56.995697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.737728, 57.214912, 56.846634>,  <50.706917, 56.902939, 56.598194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.737728, 57.214912, 56.846634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686662, -0.493164, 0.534121,
		0.722885, 0.385347, -0.573537,
		0.077026, 0.779934, 0.621104,
		50.760838, 57.448891, 57.032967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.379032, 57.202576, 56.612507>,  <50.706917, 56.902939, 56.598194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.379032, 57.202576, 56.612507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.186047, 57.265335, 56.957207>,  <51.070255, 57.302990, 57.164028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.186047, 57.265335, 56.957207>,  <51.379032, 57.202576, 56.612507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.186047, 57.265335, 56.957207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586453, -0.672908, 0.450851,
		0.650617, 0.722895, 0.232638,
		-0.482462, 0.156900, 0.861750,
		51.041309, 57.312405, 57.215733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.750397, 57.111069, 55.873646>,  <51.379032, 57.202576, 56.612507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.750397, 57.111069, 55.873646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.920712, 57.325844, 56.164963>,  <52.022900, 57.454708, 56.339752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.920712, 57.325844, 56.164963>,  <51.750397, 57.111069, 55.873646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.920712, 57.325844, 56.164963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853513, -0.505538, -0.126283,
		0.300371, 0.675372, -0.673535,
		0.425785, 0.536939, 0.728288,
		52.048447, 57.486927, 56.383450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.377190, 57.426037, 55.585918>,  <51.750397, 57.111069, 55.873646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.377190, 57.426037, 55.585918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.387093, 57.358139, 55.979988>,  <52.393036, 57.317402, 56.216431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.387093, 57.358139, 55.979988>,  <52.377190, 57.426037, 55.585918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.387093, 57.358139, 55.979988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828124, -0.548554, -0.115326,
		0.559999, 0.818704, 0.126988,
		0.024758, -0.169744, 0.985177,
		52.394520, 57.307217, 56.275539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.887413, 57.738194, 55.850727>,  <52.377190, 57.426037, 55.585918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.887413, 57.738194, 55.850727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.809849, 57.394421, 56.039948>,  <52.763309, 57.188156, 56.153481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.809849, 57.394421, 56.039948>,  <52.887413, 57.738194, 55.850727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.809849, 57.394421, 56.039948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889361, -0.357524, -0.284982,
		0.414050, 0.365455, 0.833670,
		-0.193909, -0.859430, 0.473054,
		52.751675, 57.136593, 56.181862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.458096, 57.769978, 56.476223>,  <52.887413, 57.738194, 55.850727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.458096, 57.769978, 56.476223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.331596, 57.423504, 56.321449>,  <53.255695, 57.215622, 56.228584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.331596, 57.423504, 56.321449>,  <53.458096, 57.769978, 56.476223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.331596, 57.423504, 56.321449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900891, -0.146386, -0.408616,
		0.297293, -0.477810, 0.826629,
		-0.316247, -0.866181, -0.386935,
		53.236721, 57.163651, 56.205368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.927917, 57.262966, 56.594063>,  <53.458096, 57.769978, 56.476223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.927917, 57.262966, 56.594063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.761974, 57.143036, 56.250435>,  <53.662411, 57.071079, 56.044258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.761974, 57.143036, 56.250435>,  <53.927917, 57.262966, 56.594063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.761974, 57.143036, 56.250435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901859, -0.260646, -0.344551,
		-0.120608, -0.917698, 0.378530,
		-0.414856, -0.299825, -0.859069,
		53.637516, 57.053089, 55.992714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.727905, 57.541733, 56.355518>,  <53.927917, 57.262966, 56.594063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.727905, 57.541733, 56.355518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.848557, 57.243439, 56.593140>,  <54.920948, 57.064461, 56.735710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.848557, 57.243439, 56.593140>,  <54.727905, 57.541733, 56.355518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.848557, 57.243439, 56.593140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948588, 0.172026, -0.265684,
		0.095939, 0.643646, 0.759286,
		0.301624, -0.745739, 0.594050,
		54.939045, 57.019718, 56.771355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.252708, 57.801594, 56.849003>,  <54.727905, 57.541733, 56.355518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.252708, 57.801594, 56.849003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.320068, 57.411926, 56.788811>,  <55.360485, 57.178127, 56.752693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.320068, 57.411926, 56.788811>,  <55.252708, 57.801594, 56.849003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.320068, 57.411926, 56.788811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984460, 0.173925, -0.024257,
		0.049803, -0.144059, 0.988315,
		0.168398, -0.974165, -0.150482,
		55.370586, 57.119678, 56.743668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.719788, 57.557571, 57.316582>,  <55.252708, 57.801594, 56.849003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.719788, 57.557571, 57.316582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.723106, 57.399918, 56.948975>,  <55.725098, 57.305325, 56.728413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.723106, 57.399918, 56.948975>,  <55.719788, 57.557571, 57.316582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.723106, 57.399918, 56.948975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975493, 0.205271, -0.079231,
		0.219874, -0.895834, 0.386183,
		0.008294, -0.394139, -0.919013,
		55.725594, 57.281677, 56.673271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.074112, 57.761074, 56.663422>,  <55.719788, 57.557571, 57.316582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.074112, 57.761074, 56.663422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.446304, 57.624771, 56.717224>,  <56.669621, 57.542988, 56.749508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.446304, 57.624771, 56.717224>,  <56.074112, 57.761074, 56.663422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.446304, 57.624771, 56.717224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337190, 0.940150, 0.049205,
		-0.143225, -0.000429, 0.989690,
		0.930478, -0.340761, 0.134508,
		56.725449, 57.522541, 56.757576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.410965, 58.045044, 57.260223>,  <56.074112, 57.761074, 56.663422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.410965, 58.045044, 57.260223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.715805, 57.948425, 57.019936>,  <56.898708, 57.890453, 56.875763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.715805, 57.948425, 57.019936>,  <56.410965, 58.045044, 57.260223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.715805, 57.948425, 57.019936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357607, 0.930479, 0.079539,
		0.539741, -0.275436, 0.795497,
		0.762101, -0.241545, -0.600715,
		56.944435, 57.875961, 56.839722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.930031, 57.690834, 57.740189>,  <56.410965, 58.045044, 57.260223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.930031, 57.690834, 57.740189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.536873, 57.717621, 57.671562>,  <56.300980, 57.733692, 57.630386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.536873, 57.717621, 57.671562>,  <56.930031, 57.690834, 57.740189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.536873, 57.717621, 57.671562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094487, -0.982968, 0.157627,
		-0.158090, 0.171141, 0.972481,
		-0.982894, 0.066967, -0.171568,
		56.242004, 57.737713, 57.620090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.357010, 57.419621, 57.186737>,  <56.930031, 57.690834, 57.740189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.357010, 57.419621, 57.186737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.147797, 57.267033, 57.491608>,  <57.022270, 57.175480, 57.674530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.147797, 57.267033, 57.491608>,  <57.357010, 57.419621, 57.186737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.147797, 57.267033, 57.491608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334946, -0.914296, -0.227759,
		0.783742, 0.136165, 0.605977,
		-0.523029, -0.381474, 0.762180,
		56.990887, 57.152592, 57.720261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.852058, 57.050262, 57.578396>,  <57.357010, 57.419621, 57.186737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.852058, 57.050262, 57.578396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.484070, 56.896652, 57.609833>,  <57.263279, 56.804485, 57.628696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.484070, 56.896652, 57.609833>,  <57.852058, 57.050262, 57.578396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.484070, 56.896652, 57.609833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388803, -0.919475, 0.058284,
		0.049884, 0.084178, 0.995201,
		-0.919969, -0.384030, 0.078596,
		57.208080, 56.781445, 57.633411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.785694, 56.551022, 58.110237>,  <57.852058, 57.050262, 57.578396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.785694, 56.551022, 58.110237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.529358, 56.471893, 57.813538>,  <57.375557, 56.424416, 57.635517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.529358, 56.471893, 57.813538>,  <57.785694, 56.551022, 58.110237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.529358, 56.471893, 57.813538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351817, -0.934467, -0.054736,
		-0.682309, -0.296036, 0.668444,
		-0.640842, -0.197823, -0.741746,
		57.337105, 56.412548, 57.591015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.535320, 56.675270, 58.218288>,  <57.785694, 56.551022, 58.110237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.535320, 56.675270, 58.218288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.674248, 56.376171, 58.444649>,  <58.757607, 56.196712, 58.580463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.674248, 56.376171, 58.444649>,  <58.535320, 56.675270, 58.218288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.674248, 56.376171, 58.444649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451300, -0.395699, -0.799844,
		0.822007, 0.533193, 0.200024,
		0.347322, -0.747748, 0.565897,
		58.778446, 56.151848, 58.614418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.932259, 56.299252, 57.720444>,  <58.535320, 56.675270, 58.218288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.932259, 56.299252, 57.720444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.947609, 56.037300, 58.022346>,  <58.956818, 55.880131, 58.203487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.947609, 56.037300, 58.022346>,  <58.932259, 56.299252, 57.720444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.947609, 56.037300, 58.022346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163851, -0.740968, -0.651245,
		0.985739, 0.148657, 0.078871,
		0.038371, -0.654880, 0.754758,
		58.959122, 55.840836, 58.248775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.515320, 55.810364, 57.716396>,  <58.932259, 56.299252, 57.720444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.515320, 55.810364, 57.716396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.187050, 55.665421, 57.893112>,  <58.990086, 55.578453, 57.999142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.187050, 55.665421, 57.893112>,  <59.515320, 55.810364, 57.716396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.187050, 55.665421, 57.893112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089217, -0.682443, -0.725474,
		0.564382, -0.634796, 0.527738,
		-0.820678, -0.362362, 0.441793,
		58.940845, 55.556713, 58.025650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.444008, 55.217403, 57.281227>,  <59.515320, 55.810364, 57.716396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.444008, 55.217403, 57.281227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.111969, 55.212475, 57.504219>,  <58.912746, 55.209518, 57.638016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.111969, 55.212475, 57.504219>,  <59.444008, 55.217403, 57.281227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.111969, 55.212475, 57.504219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391108, -0.699738, -0.597830,
		0.397457, -0.714293, 0.576033,
		-0.830098, -0.012320, 0.557482,
		58.862938, 55.208778, 57.671463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.092670, 55.378136, 57.193497>,  <59.444008, 55.217403, 57.281227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.092670, 55.378136, 57.193497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.352043, 55.153175, 56.988266>,  <60.507668, 55.018200, 56.865128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.352043, 55.153175, 56.988266>,  <60.092670, 55.378136, 57.193497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.352043, 55.153175, 56.988266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496359, -0.823345, 0.275193,
		-0.577207, 0.076227, -0.813032,
		0.648429, -0.562399, -0.513077,
		60.546570, 54.984455, 56.834343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.740231, 55.604183, 56.850475>,  <60.092670, 55.378136, 57.193497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.740231, 55.604183, 56.850475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.890984, 55.882160, 56.605522>,  <60.981438, 56.048946, 56.458549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.890984, 55.882160, 56.605522>,  <60.740231, 55.604183, 56.850475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.890984, 55.882160, 56.605522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926030, -0.297418, 0.232403,
		-0.020625, -0.654671, -0.755633,
		0.376886, 0.694945, -0.612379,
		61.004051, 56.090645, 56.421810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.155907, 55.223061, 56.314240>,  <60.740231, 55.604183, 56.850475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.155907, 55.223061, 56.314240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.263718, 55.606243, 56.353600>,  <61.328403, 55.836151, 56.377216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.263718, 55.606243, 56.353600>,  <61.155907, 55.223061, 56.314240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.263718, 55.606243, 56.353600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954949, -0.279055, 0.100998,
		0.124211, 0.066749, -0.990008,
		0.269525, 0.957953, 0.098404,
		61.344574, 55.893627, 56.383121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.777317, 55.325199, 55.852631>,  <61.155907, 55.223061, 56.314240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.777317, 55.325199, 55.852631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.744125, 55.597027, 56.144196>,  <61.724213, 55.760124, 56.319134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.744125, 55.597027, 56.144196>,  <61.777317, 55.325199, 55.852631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.744125, 55.597027, 56.144196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947269, -0.173382, 0.269480,
		0.309509, 0.712833, -0.629344,
		-0.082977, 0.679565, 0.728908,
		61.719231, 55.800896, 56.362869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.358204, 55.900406, 55.904381>,  <61.777317, 55.325199, 55.852631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.358204, 55.900406, 55.904381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.209167, 55.805244, 56.263176>,  <62.119747, 55.748146, 56.478451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.209167, 55.805244, 56.263176>,  <62.358204, 55.900406, 55.904381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.209167, 55.805244, 56.263176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926262, -0.154418, 0.343794,
		0.056721, 0.958936, 0.277894,
		-0.372588, -0.237902, 0.896984,
		62.097389, 55.733875, 56.532272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.582256, 56.409550, 56.502949>,  <62.358204, 55.900406, 55.904381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.582256, 56.409550, 56.502949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.500740, 56.024216, 56.572762>,  <62.451832, 55.793015, 56.614651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.500740, 56.024216, 56.572762>,  <62.582256, 56.409550, 56.502949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.500740, 56.024216, 56.572762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973617, -0.180728, 0.139311,
		-0.102659, 0.198321, 0.974746,
		-0.203792, -0.963331, 0.174535,
		62.439602, 55.735218, 56.625122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.757839, 56.188931, 57.166611>,  <62.582256, 56.409550, 56.502949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.757839, 56.188931, 57.166611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.791389, 55.889767, 56.903221>,  <62.811520, 55.710266, 56.745186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.791389, 55.889767, 56.903221>,  <62.757839, 56.188931, 57.166611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.791389, 55.889767, 56.903221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951738, -0.135654, 0.275305,
		-0.295229, -0.649787, 0.700441,
		0.083872, -0.747914, -0.658476,
		62.816551, 55.665394, 56.705677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.039494, 55.527996, 57.508041>,  <62.757839, 56.188931, 57.166611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.039494, 55.527996, 57.508041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.157272, 55.632015, 57.140198>,  <63.227940, 55.694427, 56.919491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.157272, 55.632015, 57.140198>,  <63.039494, 55.527996, 57.508041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.157272, 55.632015, 57.140198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947079, 0.049310, 0.317192,
		0.127830, -0.964336, -0.231765,
		0.294451, 0.260047, -0.919606,
		63.245609, 55.710030, 56.864315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.722649, 55.361675, 57.608238>,  <63.039494, 55.527996, 57.508041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.722649, 55.361675, 57.608238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.711723, 55.568268, 57.265892>,  <63.705166, 55.692223, 57.060486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.711723, 55.568268, 57.265892>,  <63.722649, 55.361675, 57.608238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.711723, 55.568268, 57.265892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970204, 0.219897, 0.101732,
		0.240744, -0.827583, -0.507097,
		-0.027318, 0.516479, -0.855864,
		63.703529, 55.723213, 57.009132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.268631, 55.124825, 57.021221>,  <63.722649, 55.361675, 57.608238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.268631, 55.124825, 57.021221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.175896, 55.510315, 57.074120>,  <64.120255, 55.741608, 57.105858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.175896, 55.510315, 57.074120>,  <64.268631, 55.124825, 57.021221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.175896, 55.510315, 57.074120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970118, 0.239062, -0.041486,
		-0.071597, 0.118678, -0.990348,
		-0.231831, 0.963724, 0.132248,
		64.106346, 55.799431, 57.113792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.615433, 55.486572, 56.474579>,  <64.268631, 55.124825, 57.021221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.615433, 55.486572, 56.474579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.557404, 55.736229, 56.781670>,  <64.522591, 55.886021, 56.965923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.557404, 55.736229, 56.781670>,  <64.615433, 55.486572, 56.474579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.557404, 55.736229, 56.781670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975125, 0.221619, 0.004083,
		-0.167595, 0.749222, -0.640763,
		-0.145065, 0.624140, 0.767727,
		64.513885, 55.923470, 57.011990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.866013, 56.220665, 56.342785>,  <64.615433, 55.486572, 56.474579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.866013, 56.220665, 56.342785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.879547, 56.140728, 56.734482>,  <64.887665, 56.092766, 56.969501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.879547, 56.140728, 56.734482>,  <64.866013, 56.220665, 56.342785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.879547, 56.140728, 56.734482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981139, 0.193222, 0.005537,
		-0.190318, 0.960588, 0.202609,
		0.033830, -0.199841, 0.979244,
		64.889694, 56.080776, 57.028255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.026566, 56.827629, 56.874203>,  <64.866013, 56.220665, 56.342785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.026566, 56.827629, 56.874203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.147736, 56.456818, 56.962616>,  <65.220436, 56.234329, 57.015663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.147736, 56.456818, 56.962616>,  <65.026566, 56.827629, 56.874203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.147736, 56.456818, 56.962616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952381, 0.285990, -0.105734,
		0.034807, 0.242533, 0.969518,
		0.302916, -0.927032, 0.221030,
		65.238609, 56.178707, 57.028923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.556564, 56.768608, 57.448776>,  <65.026566, 56.827629, 56.874203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.556564, 56.768608, 57.448776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.625038, 56.460941, 57.202499>,  <65.666122, 56.276340, 57.054733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.625038, 56.460941, 57.202499>,  <65.556564, 56.768608, 57.448776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.625038, 56.460941, 57.202499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957252, 0.277736, -0.080811,
		0.233156, -0.575536, 0.783835,
		0.171190, -0.769169, -0.615689,
		65.676392, 56.230190, 57.017792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.145439, 56.169964, 57.584686>,  <65.556564, 56.768608, 57.448776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.145439, 56.169964, 57.584686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.099037, 56.235153, 57.192772>,  <66.071198, 56.274265, 56.957623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.099037, 56.235153, 57.192772>,  <66.145439, 56.169964, 57.584686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.099037, 56.235153, 57.192772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966125, 0.247472, -0.073219,
		0.230538, -0.955091, -0.186155,
		-0.115999, 0.162969, -0.979788,
		66.064240, 56.284042, 56.898834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.478096, 55.677792, 57.199936>,  <66.145439, 56.169964, 57.584686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.478096, 55.677792, 57.199936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.449310, 56.009537, 56.978317>,  <66.432037, 56.208584, 56.845345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.449310, 56.009537, 56.978317>,  <66.478096, 55.677792, 57.199936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.449310, 56.009537, 56.978317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992038, 0.001964, -0.125925,
		-0.103350, -0.558702, -0.822904,
		-0.071971, 0.829366, -0.554051,
		66.427719, 56.258347, 56.812103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.834038, 55.698246, 56.538334>,  <66.478096, 55.677792, 57.199936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.834038, 55.698246, 56.538334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.821693, 56.057526, 56.713737>,  <66.814285, 56.273094, 56.818981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.821693, 56.057526, 56.713737>,  <66.834038, 55.698246, 56.538334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.821693, 56.057526, 56.713737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998775, 0.044686, -0.021260,
		-0.038691, 0.437320, -0.898473,
		-0.030852, 0.898195, 0.438513,
		66.812439, 56.326984, 56.845291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.460632, 55.980202, 56.381157>,  <66.834038, 55.698246, 56.538334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.460632, 55.980202, 56.381157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.349312, 56.268486, 56.635124>,  <67.282516, 56.441456, 56.787502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.349312, 56.268486, 56.635124>,  <67.460632, 55.980202, 56.381157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.349312, 56.268486, 56.635124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952624, 0.122686, 0.278310,
		0.122686, 0.682292, -0.720712,
		-0.278310, 0.720712, 0.634916,
		67.265816, 56.484699, 56.825600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.889107, 56.648594, 56.337856>,  <67.460632, 55.980202, 56.381157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.889107, 56.648594, 56.337856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.798233, 56.644234, 56.727371>,  <67.743706, 56.641617, 56.961082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.798233, 56.644234, 56.727371>,  <67.889107, 56.648594, 56.337856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.798233, 56.644234, 56.727371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935925, 0.273898, 0.221414,
		-0.269132, 0.961697, -0.052024,
		-0.227182, -0.010899, 0.973791,
		67.730080, 56.640965, 57.019508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.215744, 57.149994, 56.596081>,  <67.889107, 56.648594, 56.337856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.215744, 57.149994, 56.596081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.205025, 56.947617, 56.940941>,  <68.198593, 56.826191, 57.147858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.205025, 56.947617, 56.940941>,  <68.215744, 57.149994, 56.596081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.205025, 56.947617, 56.940941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893989, 0.373774, 0.247136,
		-0.447286, 0.777379, 0.442286,
		-0.026803, -0.505940, 0.862152,
		68.196983, 56.795834, 57.199585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.695900, 57.401161, 56.957031>,  <68.215744, 57.149994, 56.596081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.695900, 57.401161, 56.957031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.588943, 57.126793, 57.227737>,  <68.524765, 56.962173, 57.390160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.588943, 57.126793, 57.227737>,  <68.695900, 57.401161, 56.957031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.588943, 57.126793, 57.227737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871239, 0.127927, 0.473896,
		-0.411631, 0.716344, 0.563392,
		-0.267399, -0.685919, 0.676766,
		68.508720, 56.921017, 57.430767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.796280, 57.753685, 57.633247>,  <68.695900, 57.401161, 56.957031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.796280, 57.753685, 57.633247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.805298, 57.354202, 57.614983>,  <68.810707, 57.114513, 57.604023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.805298, 57.354202, 57.614983>,  <68.796280, 57.753685, 57.633247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.805298, 57.354202, 57.614983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952979, 0.007661, 0.302940,
		-0.302197, -0.050344, 0.951915,
		0.022544, -0.998703, -0.045661,
		68.812057, 57.054592, 57.601284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.331657, 57.507793, 58.143883>,  <68.796280, 57.753685, 57.633247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.331657, 57.507793, 58.143883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.262016, 57.140797, 58.000839>,  <69.220230, 56.920597, 57.915012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.262016, 57.140797, 58.000839>,  <69.331657, 57.507793, 58.143883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.262016, 57.140797, 58.000839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854091, -0.321451, 0.408898,
		-0.490117, -0.234242, 0.839592,
		-0.174107, -0.917496, -0.357613,
		69.209785, 56.865547, 57.893555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.519058, 57.014034, 58.786259>,  <69.331657, 57.507793, 58.143883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.519058, 57.014034, 58.786259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.536720, 56.909836, 58.400475>,  <69.547318, 56.847317, 58.169003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.536720, 56.909836, 58.400475>,  <69.519058, 57.014034, 58.786259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.536720, 56.909836, 58.400475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904624, -0.399223, 0.149252,
		-0.423916, -0.879069, 0.218022,
		0.044164, -0.260498, -0.964464,
		69.549973, 56.831688, 58.111134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.699646, 56.234440, 58.695530>,  <69.519058, 57.014034, 58.786259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.699646, 56.234440, 58.695530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.821060, 56.519997, 58.443108>,  <69.893913, 56.691330, 58.291656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.821060, 56.519997, 58.443108>,  <69.699646, 56.234440, 58.695530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.821060, 56.519997, 58.443108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951669, -0.194630, 0.237580,
		0.046783, -0.672669, -0.738463,
		0.303540, 0.713888, -0.631053,
		69.912125, 56.734161, 58.253792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.173294, 56.106255, 58.083855>,  <69.699646, 56.234440, 58.695530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.173294, 56.106255, 58.083855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.219429, 56.489040, 58.190376>,  <70.247108, 56.718712, 58.254292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.219429, 56.489040, 58.190376>,  <70.173294, 56.106255, 58.083855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.219429, 56.489040, 58.190376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958798, -0.177330, 0.221949,
		0.259621, 0.229735, -0.937987,
		0.115343, 0.956962, 0.266308,
		70.254028, 56.776131, 58.270267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.857117, 56.282299, 57.925644>,  <70.173294, 56.106255, 58.083855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.857117, 56.282299, 57.925644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.731422, 56.540253, 58.204323>,  <70.656006, 56.695023, 58.371529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.731422, 56.540253, 58.204323>,  <70.857117, 56.282299, 57.925644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.731422, 56.540253, 58.204323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867770, -0.102505, 0.486279,
		0.385007, 0.757378, -0.527398,
		-0.314236, 0.644881, 0.696695,
		70.637154, 56.733719, 58.413330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.102661, 56.976418, 57.880939>,  <70.857117, 56.282299, 57.925644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.102661, 56.976418, 57.880939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.042557, 56.837421, 58.251167>,  <71.006493, 56.754025, 58.473305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.042557, 56.837421, 58.251167>,  <71.102661, 56.976418, 57.880939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.042557, 56.837421, 58.251167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987231, -0.002643, 0.159273,
		-0.052899, 0.937681, 0.343448,
		-0.150255, -0.347488, 0.925568,
		70.997482, 56.733173, 58.528839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.292419, 57.397884, 58.408619>,  <71.102661, 56.976418, 57.880939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.292419, 57.397884, 58.408619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.353546, 57.005455, 58.456192>,  <71.390221, 56.769997, 58.484737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.353546, 57.005455, 58.456192>,  <71.292419, 57.397884, 58.408619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.353546, 57.005455, 58.456192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984463, 0.140581, -0.105211,
		0.086499, 0.133167, 0.987312,
		0.152808, -0.981073, 0.118937,
		71.399391, 56.711132, 58.491875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.997292, 57.412148, 58.664558>,  <71.292419, 57.397884, 58.408619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.997292, 57.412148, 58.664558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.915527, 57.060921, 58.491486>,  <71.866470, 56.850185, 58.387642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.915527, 57.060921, 58.491486>,  <71.997292, 57.412148, 58.664558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.915527, 57.060921, 58.491486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932459, -0.040145, -0.359038,
		0.297890, -0.476850, 0.826968,
		-0.204405, -0.878068, -0.432684,
		71.854202, 56.797501, 58.361679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.072502, 56.921921, 59.280117>,  <71.997292, 57.412148, 58.664558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.072502, 56.921921, 59.280117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.816071, 57.205795, 59.396980>,  <71.662209, 57.376122, 59.467098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.816071, 57.205795, 59.396980>,  <72.072502, 56.921921, 59.280117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.816071, 57.205795, 59.396980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517551, 0.118677, 0.847382,
		0.566703, 0.694450, -0.443381,
		-0.641084, 0.709686, 0.292158,
		71.623749, 57.418701, 59.484627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.396927, 57.682774, 59.433064>,  <72.072502, 56.921921, 59.280117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.396927, 57.682774, 59.433064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.069984, 57.572845, 59.635605>,  <71.873817, 57.506889, 59.757130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.069984, 57.572845, 59.635605>,  <72.396927, 57.682774, 59.433064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.069984, 57.572845, 59.635605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541760, -0.067618, 0.837809,
		-0.196008, 0.959115, 0.204155,
		-0.817359, -0.274820, 0.506357,
		71.824776, 57.490398, 59.787514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.186440, 58.097740, 60.055393>,  <72.396927, 57.682774, 59.433064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.186440, 58.097740, 60.055393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.075417, 57.715137, 60.091293>,  <72.008804, 57.485577, 60.112835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.075417, 57.715137, 60.091293>,  <72.186440, 58.097740, 60.055393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.075417, 57.715137, 60.091293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316820, -0.002934, 0.948481,
		-0.906965, 0.291697, 0.303854,
		-0.277560, -0.956506, 0.089754,
		71.992149, 57.428185, 60.118221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.723709, 58.315125, 59.516445>,  <72.186440, 58.097740, 60.055393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.723709, 58.315125, 59.516445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.872269, 57.946918, 59.564980>,  <72.961403, 57.725994, 59.594101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.872269, 57.946918, 59.564980>,  <72.723709, 58.315125, 59.516445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.872269, 57.946918, 59.564980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926091, 0.357913, -0.119392,
		0.066472, 0.156714, 0.985405,
		0.371399, -0.920510, 0.121340,
		72.983688, 57.670765, 59.601383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.124748, 58.234859, 60.155102>,  <72.723709, 58.315125, 59.516445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.124748, 58.234859, 60.155102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.243950, 58.056870, 59.817299>,  <73.315468, 57.950077, 59.614616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.243950, 58.056870, 59.817299>,  <73.124748, 58.234859, 60.155102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.243950, 58.056870, 59.817299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869635, 0.491361, 0.047961,
		0.393617, -0.748707, 0.533389,
		0.297995, -0.444975, -0.844510,
		73.333351, 57.923378, 59.563946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
