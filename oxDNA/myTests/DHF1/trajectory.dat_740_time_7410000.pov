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
	<0.879778, 4.358716, 1.211871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.912018, 3.970501, 1.302698>,  <0.931362, 3.737572, 1.357195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.912018, 3.970501, 1.302698>,  <0.879778, 4.358716, 1.211871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.912018, 3.970501, 1.302698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931841, -0.007492, -0.362790,
		0.353802, 0.240833, 0.903783,
		0.080600, -0.970538, 0.227068,
		0.936198, 3.679340, 1.370819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.531597, 4.222316, 1.408304>,  <0.879778, 4.358716, 1.211871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.531597, 4.222316, 1.408304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.387909, 3.883425, 1.251759>,  <1.301696, 3.680090, 1.157831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.387909, 3.883425, 1.251759>,  <1.531597, 4.222316, 1.408304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.387909, 3.883425, 1.251759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842782, -0.114374, -0.525964,
		0.400849, -0.518772, 0.755113,
		-0.359220, -0.847228, -0.391364,
		1.280143, 3.629256, 1.134349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.867694, 3.521049, 1.551589>,  <1.531597, 4.222316, 1.408304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.867694, 3.521049, 1.551589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.721142, 3.621170, 1.193123>,  <1.633210, 3.681242, 0.978043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.721142, 3.621170, 1.193123>,  <1.867694, 3.521049, 1.551589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.721142, 3.621170, 1.193123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929942, 0.066223, -0.361694,
		-0.031186, -0.965900, -0.257029,
		-0.366382, 0.250302, -0.896166,
		1.611227, 3.696260, 0.924273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.149457, 3.043117, 0.981311>,  <1.867694, 3.521049, 1.551589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.149457, 3.043117, 0.981311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.049324, 3.380226, 0.790705>,  <1.989245, 3.582492, 0.676341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.049324, 3.380226, 0.790705>,  <2.149457, 3.043117, 0.981311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.049324, 3.380226, 0.790705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744681, -0.146918, -0.651049,
		-0.618696, -0.517830, -0.590819,
		-0.250331, 0.842773, -0.476516,
		1.974225, 3.633058, 0.647750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.251922, 2.869691, 0.373917>,  <2.149457, 3.043117, 0.981311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.251922, 2.869691, 0.373917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.215534, 3.265522, 0.329262>,  <2.193702, 3.503020, 0.302469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.215534, 3.265522, 0.329262>,  <2.251922, 2.869691, 0.373917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.215534, 3.265522, 0.329262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732903, -0.009369, -0.680269,
		-0.674224, -0.143703, -0.724411,
		-0.090970, 0.989576, -0.111637,
		2.188243, 3.562395, 0.295771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.268436, 3.004995, -0.399502>,  <2.251922, 2.869691, 0.373917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.268436, 3.004995, -0.399502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.390049, 3.334833, -0.208670>,  <2.463017, 3.532736, -0.094170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.390049, 3.334833, -0.208670>,  <2.268436, 3.004995, -0.399502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.390049, 3.334833, -0.208670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809157, 0.040798, -0.586174,
		-0.502821, 0.564250, -0.654823,
		0.304033, 0.824595, 0.477081,
		2.481259, 3.582212, -0.065545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.491213, 3.445392, -0.974439>,  <2.268436, 3.004995, -0.399502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.491213, 3.445392, -0.974439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.646133, 3.640778, -0.661671>,  <2.739086, 3.758009, -0.474010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.646133, 3.640778, -0.661671>,  <2.491213, 3.445392, -0.974439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.646133, 3.640778, -0.661671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866955, 0.095586, -0.489134,
		-0.313665, 0.867333, -0.386456,
		0.387302, 0.488464, 0.781921,
		2.762324, 3.787317, -0.427094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.716004, 4.080948, -1.216620>,  <2.491213, 3.445392, -0.974439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.716004, 4.080948, -1.216620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.916153, 3.966278, -0.889832>,  <3.036242, 3.897476, -0.693758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.916153, 3.966278, -0.889832>,  <2.716004, 4.080948, -1.216620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.916153, 3.966278, -0.889832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855610, 0.019314, -0.517261,
		0.132507, 0.957833, 0.254946,
		0.500373, -0.286675, 0.816972,
		3.066265, 3.880275, -0.644740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.160205, 3.510242, 3.634725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.294449, 3.716713, 3.949921>,  <4.374995, 3.840596, 4.139038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.294449, 3.716713, 3.949921>,  <4.160205, 3.510242, 3.634725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.294449, 3.716713, 3.949921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861033, -0.171201, 0.478866,
		0.382085, -0.839196, 0.386990,
		0.335610, 0.516179, 0.787988,
		4.395132, 3.871567, 4.186317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.111875, 3.250399, 4.388666>,  <4.160205, 3.510242, 3.634725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.111875, 3.250399, 4.388666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.060211, 3.646751, 4.404022>,  <4.029213, 3.884563, 4.413236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.060211, 3.646751, 4.404022>,  <4.111875, 3.250399, 4.388666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.060211, 3.646751, 4.404022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883414, -0.132566, 0.449451,
		0.450442, 0.024136, 0.892480,
		-0.129160, 0.990881, 0.038391,
		4.021463, 3.944016, 4.415540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.772166, 3.259951, 4.948842>,  <4.111875, 3.250399, 4.388666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.772166, 3.259951, 4.948842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.712807, 3.614525, 4.773474>,  <3.677191, 3.827269, 4.668252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.712807, 3.614525, 4.773474>,  <3.772166, 3.259951, 4.948842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.712807, 3.614525, 4.773474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935208, 0.018334, 0.353625,
		0.321503, 0.462493, 0.826279,
		-0.148400, 0.886434, -0.438421,
		3.668287, 3.880455, 4.641947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.585288, 3.713309, 5.510735>,  <3.772166, 3.259951, 4.948842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.585288, 3.713309, 5.510735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.458672, 3.823071, 5.147526>,  <3.382702, 3.888927, 4.929600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.458672, 3.823071, 5.147526>,  <3.585288, 3.713309, 5.510735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.458672, 3.823071, 5.147526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922370, 0.134425, 0.362165,
		0.221440, 0.952172, 0.210550,
		-0.316540, 0.274403, -0.908023,
		3.363709, 3.905391, 4.875119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.290476, 4.415798, 5.584230>,  <3.585288, 3.713309, 5.510735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.290476, 4.415798, 5.584230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.134087, 4.241627, 5.259874>,  <3.040253, 4.137124, 5.065261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.134087, 4.241627, 5.259874>,  <3.290476, 4.415798, 5.584230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.134087, 4.241627, 5.259874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905849, 0.025987, 0.422803,
		-0.163028, 0.899848, -0.404593,
		-0.390973, -0.435428, -0.810890,
		3.016795, 4.110998, 5.016607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.749694, 4.753424, 5.466173>,  <3.290476, 4.415798, 5.584230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.749694, 4.753424, 5.466173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.672737, 4.405834, 5.283802>,  <2.626563, 4.197280, 5.174379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.672737, 4.405834, 5.283802>,  <2.749694, 4.753424, 5.466173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.672737, 4.405834, 5.283802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886317, -0.045556, 0.460834,
		-0.421223, 0.492756, -0.761421,
		-0.192392, -0.868974, -0.455927,
		2.615020, 4.145142, 5.147024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.140671, 4.869573, 5.060123>,  <2.749694, 4.753424, 5.466173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.140671, 4.869573, 5.060123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.153732, 4.473797, 5.116610>,  <2.161569, 4.236331, 5.150502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.153732, 4.473797, 5.116610>,  <2.140671, 4.869573, 5.060123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.153732, 4.473797, 5.116610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934801, 0.019764, 0.354621,
		-0.353667, -0.143589, -0.924284,
		0.032652, -0.989440, 0.141217,
		2.163528, 4.176965, 5.158975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.549848, 4.593223, 4.869105>,  <2.140671, 4.869573, 5.060123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.549848, 4.593223, 4.869105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.676834, 4.312588, 5.124289>,  <1.753026, 4.144207, 5.277399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.676834, 4.312588, 5.124289>,  <1.549848, 4.593223, 4.869105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.676834, 4.312588, 5.124289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902853, -0.017920, 0.429576,
		-0.289953, -0.712358, -0.639119,
		0.317465, -0.701587, 0.637959,
		1.772074, 4.102112, 5.315676>
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
