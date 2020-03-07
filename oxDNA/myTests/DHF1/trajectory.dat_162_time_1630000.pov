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
	<3.761641, -0.048707, 0.883812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.808754, 0.220184, 1.176178>,  <3.837022, 0.381519, 1.351597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.808754, 0.220184, 1.176178>,  <3.761641, -0.048707, 0.883812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.808754, 0.220184, 1.176178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966642, 0.246193, -0.070658,
		-0.227444, -0.698210, 0.678801,
		0.117782, 0.672229, 0.730915,
		3.844089, 0.421853, 1.395452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.218623, -0.158330, 1.362166>,  <3.761641, -0.048707, 0.883812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.218623, -0.158330, 1.362166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.358795, 0.216034, 1.347900>,  <3.442899, 0.440652, 1.339341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.358795, 0.216034, 1.347900>,  <3.218623, -0.158330, 1.362166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.358795, 0.216034, 1.347900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924220, 0.339385, -0.175031,
		-0.151709, 0.094297, 0.983917,
		0.350431, 0.935909, -0.035663,
		3.463924, 0.496807, 1.337201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.629348, 0.135209, 1.223723>,  <3.218623, -0.158330, 1.362166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.629348, 0.135209, 1.223723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.862083, 0.460518, 1.226585>,  <3.001725, 0.655703, 1.228303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.862083, 0.460518, 1.226585>,  <2.629348, 0.135209, 1.223723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.862083, 0.460518, 1.226585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758025, 0.545459, -0.357593,
		-0.294724, 0.202638, 0.933850,
		0.581839, 0.813273, 0.007155,
		3.036635, 0.704500, 1.228732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.366758, 0.798702, 1.655709>,  <2.629348, 0.135209, 1.223723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.366758, 0.798702, 1.655709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.577339, 0.889198, 1.327888>,  <2.703688, 0.943496, 1.131196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.577339, 0.889198, 1.327888>,  <2.366758, 0.798702, 1.655709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.577339, 0.889198, 1.327888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748162, 0.581164, -0.320161,
		0.403859, 0.781705, 0.475221,
		0.526453, 0.226242, -0.819550,
		2.735275, 0.957071, 1.082024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.392406, 1.585247, 1.571010>,  <2.366758, 0.798702, 1.655709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.392406, 1.585247, 1.571010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.402733, 1.377647, 1.229256>,  <2.408929, 1.253088, 1.024203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.402733, 1.377647, 1.229256>,  <2.392406, 1.585247, 1.571010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.402733, 1.377647, 1.229256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667265, 0.627459, -0.401314,
		0.744373, 0.580461, -0.330111,
		0.025816, -0.518999, -0.854385,
		2.410478, 1.221948, 0.972940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.426634, 2.082737, 1.141512>,  <2.392406, 1.585247, 1.571010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.426634, 2.082737, 1.141512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.305038, 1.759796, 0.939217>,  <2.232081, 1.566031, 0.817839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.305038, 1.759796, 0.939217>,  <2.426634, 2.082737, 1.141512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.305038, 1.759796, 0.939217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605114, 0.573653, -0.552050,
		0.735818, 0.138212, -0.662925,
		-0.303989, -0.807353, -0.505738,
		2.213842, 1.517590, 0.787495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.518530, 2.248303, 0.458693>,  <2.426634, 2.082737, 1.141512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.518530, 2.248303, 0.458693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.264862, 1.939514, 0.441315>,  <2.112662, 1.754241, 0.430888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.264862, 1.939514, 0.441315>,  <2.518530, 2.248303, 0.458693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.264862, 1.939514, 0.441315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565674, 0.501536, -0.654580,
		0.527110, -0.390534, -0.754744,
		-0.634167, -0.771975, -0.043450,
		2.074611, 1.707922, 0.428281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.260551, 2.134909, -0.263395>,  <2.518530, 2.248303, 0.458693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.260551, 2.134909, -0.263395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.973137, 1.958153, -0.048569>,  <1.800688, 1.852099, 0.080327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.973137, 1.958153, -0.048569>,  <2.260551, 2.134909, -0.263395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.973137, 1.958153, -0.048569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691119, 0.367227, -0.622494,
		0.077849, -0.818460, -0.569265,
		-0.718536, -0.441891, 0.537066,
		1.757576, 1.825586, 0.112551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.411061, 2.511109, -1.080884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.059853, 2.489525, -0.890656>,  <0.849128, 2.476574, -0.776518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.059853, 2.489525, -0.890656>,  <1.411061, 2.511109, -1.080884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.059853, 2.489525, -0.890656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437800, -0.492089, 0.752449,
		0.193421, 0.868871, 0.455688,
		-0.878020, -0.053960, 0.475572,
		0.796447, 2.473337, -0.747984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.469219, 2.690412, -0.347912>,  <1.411061, 2.511109, -1.080884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.469219, 2.690412, -0.347912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.133373, 2.476501, -0.385994>,  <0.931866, 2.348155, -0.408843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.133373, 2.476501, -0.385994>,  <1.469219, 2.690412, -0.347912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.133373, 2.476501, -0.385994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327000, -0.637582, 0.697538,
		-0.433727, 0.554531, 0.710194,
		-0.839614, -0.534775, -0.095205,
		0.881489, 2.316069, -0.414555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.091270, 2.636891, 0.296843>,  <1.469219, 2.690412, -0.347912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.091270, 2.636891, 0.296843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.002167, 2.322128, 0.066658>,  <0.948705, 2.133271, -0.071453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.002167, 2.322128, 0.066658>,  <1.091270, 2.636891, 0.296843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.002167, 2.322128, 0.066658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383840, -0.613409, 0.690215,
		-0.896128, -0.067135, 0.438688,
		-0.222758, -0.786907, -0.575462,
		0.935340, 2.086056, -0.105981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.726754, 2.111435, 0.632995>,  <1.091270, 2.636891, 0.296843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.726754, 2.111435, 0.632995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.950634, 1.930908, 0.354988>,  <1.084962, 1.822592, 0.188184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.950634, 1.930908, 0.354988>,  <0.726754, 2.111435, 0.632995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.950634, 1.930908, 0.354988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436586, -0.552269, 0.710205,
		-0.704365, -0.700936, -0.112066,
		0.559699, -0.451317, -0.695018,
		1.118544, 1.795513, 0.146483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.792231, 1.422054, 0.797664>,  <0.726754, 2.111435, 0.632995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.792231, 1.422054, 0.797664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.107960, 1.514297, 0.570053>,  <1.297397, 1.569644, 0.433487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.107960, 1.514297, 0.570053>,  <0.792231, 1.422054, 0.797664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.107960, 1.514297, 0.570053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552064, -0.672156, 0.493388,
		-0.268694, -0.703580, -0.657858,
		0.789322, 0.230609, -0.569026,
		1.344756, 1.583480, 0.399345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.115585, 0.833809, 0.539355>,  <0.792231, 1.422054, 0.797664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.115585, 0.833809, 0.539355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.405571, 1.107574, 0.508354>,  <1.579562, 1.271834, 0.489754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.405571, 1.107574, 0.508354>,  <1.115585, 0.833809, 0.539355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.405571, 1.107574, 0.508354> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671540, -0.677300, 0.300498,
		0.153173, -0.269896, -0.950629,
		0.724964, 0.684413, -0.077502,
		1.623060, 1.312898, 0.485104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.646667, 0.454341, 0.264666>,  <1.115585, 0.833809, 0.539355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.646667, 0.454341, 0.264666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.831459, 0.783707, 0.396461>,  <1.942335, 0.981326, 0.475539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.831459, 0.783707, 0.396461>,  <1.646667, 0.454341, 0.264666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.831459, 0.783707, 0.396461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810692, -0.542722, 0.219615,
		0.359655, 0.165656, -0.918263,
		0.461981, 0.823414, 0.329489,
		1.970053, 1.030731, 0.495308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.328840, 0.480109, -0.110715>,  <1.646667, 0.454341, 0.264666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.328840, 0.480109, -0.110715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.360519, 0.708694, 0.216003>,  <2.379527, 0.845846, 0.412035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.360519, 0.708694, 0.216003>,  <2.328840, 0.480109, -0.110715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.360519, 0.708694, 0.216003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936968, -0.322402, 0.134714,
		0.340321, 0.754643, -0.560978,
		0.079199, 0.571464, 0.816796,
		2.384279, 0.880134, 0.461042>
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
