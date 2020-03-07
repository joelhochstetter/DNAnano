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
	<2.479228, 5.573226, 4.537302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.485252, 5.804680, 4.211122>,  <2.488867, 5.943552, 4.015414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.485252, 5.804680, 4.211122>,  <2.479228, 5.573226, 4.537302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.485252, 5.804680, 4.211122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278944, -0.780732, -0.559150,
		-0.960189, 0.235885, 0.149649,
		0.015060, 0.578633, -0.815449,
		2.489770, 5.978270, 3.966487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.896331, 5.548615, 4.174123>,  <2.479228, 5.573226, 4.537302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.896331, 5.548615, 4.174123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.171513, 5.633770, 3.896591>,  <2.336621, 5.684863, 3.730072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.171513, 5.633770, 3.896591>,  <1.896331, 5.548615, 4.174123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.171513, 5.633770, 3.896591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274090, -0.809001, -0.519992,
		-0.672008, 0.547902, -0.498205,
		0.687953, 0.212886, -0.693830,
		2.377898, 5.697636, 3.688442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.538723, 5.648900, 3.375380>,  <1.896331, 5.548615, 4.174123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.538723, 5.648900, 3.375380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.904158, 5.507687, 3.456103>,  <2.123419, 5.422959, 3.504537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.904158, 5.507687, 3.456103>,  <1.538723, 5.648900, 3.375380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.904158, 5.507687, 3.456103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235121, -0.863506, -0.446179,
		0.331778, 0.360174, -0.871893,
		0.913587, -0.353033, 0.201807,
		2.178234, 5.401777, 3.516645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.681291, 5.266688, 2.777033>,  <1.538723, 5.648900, 3.375380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.681291, 5.266688, 2.777033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.931927, 5.145748, 3.064358>,  <2.082308, 5.073184, 3.236752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.931927, 5.145748, 3.064358>,  <1.681291, 5.266688, 2.777033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.931927, 5.145748, 3.064358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011326, -0.925115, -0.379519,
		0.779268, 0.229667, -0.583091,
		0.626589, -0.302351, 0.718311,
		2.119903, 5.055043, 3.279851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.327194, 4.896820, 2.413725>,  <1.681291, 5.266688, 2.777033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.327194, 4.896820, 2.413725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.162519, 4.537815, 2.476955>,  <2.063715, 4.322412, 2.514893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.162519, 4.537815, 2.476955>,  <2.327194, 4.896820, 2.413725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.162519, 4.537815, 2.476955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852727, -0.440571, -0.280632,
		0.321514, 0.019262, 0.946709,
		-0.411687, -0.897511, 0.158075,
		2.039013, 4.268562, 2.524378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.720600, 4.328524, 2.908361>,  <2.327194, 4.896820, 2.413725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.720600, 4.328524, 2.908361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.505650, 4.170765, 2.610186>,  <2.376679, 4.076110, 2.431281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.505650, 4.170765, 2.610186>,  <2.720600, 4.328524, 2.908361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.505650, 4.170765, 2.610186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827551, -0.416854, -0.376020,
		-0.162438, -0.818953, 0.550391,
		-0.537376, -0.394397, -0.745438,
		2.344437, 4.052446, 2.386554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.609608, 3.557416, 2.849573>,  <2.720600, 4.328524, 2.908361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.609608, 3.557416, 2.849573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.630993, 3.747253, 2.498141>,  <2.643824, 3.861156, 2.287282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.630993, 3.747253, 2.498141>,  <2.609608, 3.557416, 2.849573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.630993, 3.747253, 2.498141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909902, -0.385603, -0.152928,
		-0.411362, -0.791246, -0.452450,
		0.053462, 0.474594, -0.878579,
		2.647032, 3.889632, 2.234567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.524186, 3.151848, 2.214408>,  <2.609608, 3.557416, 2.849573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.524186, 3.151848, 2.214408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.795589, 3.443726, 2.180530>,  <2.958431, 3.618852, 2.160203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.795589, 3.443726, 2.180530>,  <2.524186, 3.151848, 2.214408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.795589, 3.443726, 2.180530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734396, -0.671139, 0.101170,
		0.016980, -0.130845, -0.991257,
		0.678509, 0.729693, -0.084696,
		2.999142, 3.662634, 2.155121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.986423, 4.204685, 1.972428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.352043, 4.064854, 1.890155>,  <4.571415, 3.980955, 1.840791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.352043, 4.064854, 1.890155>,  <3.986423, 4.204685, 1.972428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.352043, 4.064854, 1.890155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190115, -0.817216, 0.544072,
		-0.358282, -0.458206, -0.813438,
		0.914052, -0.349578, -0.205682,
		4.626258, 3.959980, 1.828451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.933726, 3.534468, 1.676669>,  <3.986423, 4.204685, 1.972428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.933726, 3.534468, 1.676669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.277344, 3.560440, 1.879775>,  <4.483515, 3.576023, 2.001639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.277344, 3.560440, 1.879775>,  <3.933726, 3.534468, 1.676669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.277344, 3.560440, 1.879775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228217, -0.839313, 0.493428,
		0.458212, -0.539758, -0.706190,
		0.859045, 0.064930, 0.507765,
		4.535058, 3.579919, 2.032104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.506260, 3.024094, 1.564852>,  <3.933726, 3.534468, 1.676669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.506260, 3.024094, 1.564852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.496956, 3.161137, 1.940528>,  <4.491373, 3.243362, 2.165934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.496956, 3.161137, 1.940528>,  <4.506260, 3.024094, 1.564852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.496956, 3.161137, 1.940528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190135, -0.923814, 0.332288,
		0.981482, -0.170844, 0.086631,
		-0.023261, 0.342606, 0.939191,
		4.489977, 3.263919, 2.222286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.987548, 2.632660, 2.142034>,  <4.506260, 3.024094, 1.564852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.987548, 2.632660, 2.142034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.644911, 2.760754, 2.303873>,  <4.439329, 2.837610, 2.400976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.644911, 2.760754, 2.303873>,  <4.987548, 2.632660, 2.142034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.644911, 2.760754, 2.303873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256155, -0.944582, 0.205305,
		0.447921, 0.072223, 0.891151,
		-0.856593, 0.320233, 0.404597,
		4.387933, 2.856824, 2.425252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.921578, 2.382357, 2.827085>,  <4.987548, 2.632660, 2.142034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.921578, 2.382357, 2.827085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.568426, 2.453617, 2.653288>,  <4.356534, 2.496373, 2.549010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.568426, 2.453617, 2.653288>,  <4.921578, 2.382357, 2.827085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.568426, 2.453617, 2.653288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230907, -0.970357, 0.071335,
		-0.408904, 0.163307, 0.897846,
		-0.882881, 0.178150, -0.434492,
		4.303562, 2.507062, 2.522940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.321077, 2.008233, 3.144760>,  <4.921578, 2.382357, 2.827085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.321077, 2.008233, 3.144760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.265356, 2.089447, 2.757075>,  <4.231923, 2.138175, 2.524465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.265356, 2.089447, 2.757075>,  <4.321077, 2.008233, 3.144760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.265356, 2.089447, 2.757075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043312, -0.979067, -0.198875,
		-0.989302, 0.014275, 0.145179,
		-0.139302, 0.203036, -0.969212,
		4.223565, 2.150358, 2.466312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.722371, 1.530774, 2.833969>,  <4.321077, 2.008233, 3.144760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.722371, 1.530774, 2.833969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.967960, 1.657806, 2.544921>,  <4.115314, 1.734026, 2.371492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.967960, 1.657806, 2.544921>,  <3.722371, 1.530774, 2.833969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.967960, 1.657806, 2.544921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097567, -0.939002, -0.329780,
		-0.783274, 0.131973, -0.607508,
		0.613973, 0.317581, -0.722620,
		4.152152, 1.753081, 2.328135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.609369, 1.131252, 2.193931>,  <3.722371, 1.530774, 2.833969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.609369, 1.131252, 2.193931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.992887, 1.244850, 2.190958>,  <4.222999, 1.313009, 2.189174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.992887, 1.244850, 2.190958>,  <3.609369, 1.131252, 2.193931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.992887, 1.244850, 2.190958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236496, -0.812386, -0.533009,
		-0.157411, 0.509290, -0.846077,
		0.958797, 0.283995, -0.007433,
		4.280527, 1.330049, 2.188728>
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
