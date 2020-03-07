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
	<1.092347, 4.516319, 2.947673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.761162, 4.569115, 2.729662>,  <0.562450, 4.600792, 2.598855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.761162, 4.569115, 2.729662>,  <1.092347, 4.516319, 2.947673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.761162, 4.569115, 2.729662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538245, -0.085715, -0.838418,
		-0.157382, -0.987538, -0.000075,
		-0.827963, 0.131992, -0.545027,
		0.512773, 4.608711, 2.566154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.800862, 3.838400, 2.614815>,  <1.092347, 4.516319, 2.947673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.800862, 3.838400, 2.614815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.757462, 4.155994, 2.375546>,  <0.731421, 4.346551, 2.231984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.757462, 4.155994, 2.375546>,  <0.800862, 3.838400, 2.614815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.757462, 4.155994, 2.375546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723701, -0.349443, -0.595102,
		-0.681531, -0.497468, -0.536694,
		-0.108500, 0.793987, -0.598175,
		0.724912, 4.394190, 2.196093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.691687, 3.692190, 1.904894>,  <0.800862, 3.838400, 2.614815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.691687, 3.692190, 1.904894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.877457, 4.046385, 1.898904>,  <0.988919, 4.258902, 1.895310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.877457, 4.046385, 1.898904>,  <0.691687, 3.692190, 1.904894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.877457, 4.046385, 1.898904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730232, -0.392454, -0.559233,
		-0.501070, 0.248787, -0.828875,
		0.464425, 0.885486, -0.014974,
		1.016784, 4.312031, 1.894412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.773611, 3.951866, 1.278334>,  <0.691687, 3.692190, 1.904894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.773611, 3.951866, 1.278334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.092865, 4.080042, 1.482411>,  <1.284418, 4.156947, 1.604858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.092865, 4.080042, 1.482411>,  <0.773611, 3.951866, 1.278334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.092865, 4.080042, 1.482411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599029, -0.512554, -0.615185,
		0.064373, 0.796622, -0.601040,
		0.798136, 0.320439, 0.510195,
		1.332306, 4.176174, 1.635470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.315500, 4.222658, 0.804119>,  <0.773611, 3.951866, 1.278334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.315500, 4.222658, 0.804119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.474846, 4.086178, 1.144680>,  <1.570454, 4.004290, 1.349017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.474846, 4.086178, 1.144680>,  <1.315500, 4.222658, 0.804119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.474846, 4.086178, 1.144680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708785, -0.474651, -0.521852,
		0.582175, 0.811350, 0.052752,
		0.398366, -0.341200, 0.851403,
		1.594356, 3.983818, 1.400101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.990896, 4.353869, 0.728594>,  <1.315500, 4.222658, 0.804119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.990896, 4.353869, 0.728594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.963593, 4.055725, 0.993857>,  <1.947210, 3.876839, 1.153016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.963593, 4.055725, 0.993857>,  <1.990896, 4.353869, 0.728594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.963593, 4.055725, 0.993857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755219, -0.472946, -0.453835,
		0.651909, 0.469852, 0.595193,
		-0.068259, -0.745359, 0.663159,
		1.943115, 3.832117, 1.192805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.726606, 4.216320, 0.971777>,  <1.990896, 4.353869, 0.728594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.726606, 4.216320, 0.971777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.488472, 3.898764, 1.021275>,  <2.345592, 3.708230, 1.050973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.488472, 3.898764, 1.021275>,  <2.726606, 4.216320, 0.971777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.488472, 3.898764, 1.021275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708057, -0.591170, -0.386231,
		0.379780, -0.142318, 0.914064,
		-0.595335, -0.793892, 0.123745,
		2.309872, 3.660596, 1.058398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.200153, 3.645841, 1.158812>,  <2.726606, 4.216320, 0.971777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.200153, 3.645841, 1.158812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.874660, 3.441467, 1.047968>,  <2.679365, 3.318843, 0.981461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.874660, 3.441467, 1.047968>,  <3.200153, 3.645841, 1.158812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.874660, 3.441467, 1.047968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580806, -0.733239, -0.353589,
		-0.022528, -0.448673, 0.893412,
		-0.813730, -0.510933, -0.277110,
		2.630541, 3.288187, 0.964835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.182687, 2.998957, -0.187441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.866615, 2.756605, -0.150511>,  <2.676972, 2.611194, -0.128353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.866615, 2.756605, -0.150511>,  <3.182687, 2.998957, -0.187441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.866615, 2.756605, -0.150511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162805, 0.352740, 0.921450,
		-0.590855, 0.713080, -0.377369,
		-0.790180, -0.605881, 0.092326,
		2.629561, 2.574841, -0.122813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.532460, 3.397668, 0.036035>,  <3.182687, 2.998957, -0.187441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.532460, 3.397668, 0.036035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.514267, 3.014617, 0.149792>,  <2.503351, 2.784786, 0.218046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.514267, 3.014617, 0.149792>,  <2.532460, 3.397668, 0.036035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.514267, 3.014617, 0.149792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148782, 0.288006, 0.946000,
		-0.987823, 0.000715, -0.155578,
		-0.045484, -0.957628, 0.284392,
		2.500622, 2.727328, 0.235109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.837935, 3.147569, 0.164569>,  <2.532460, 3.397668, 0.036035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.837935, 3.147569, 0.164569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.115631, 2.980588, 0.399095>,  <2.282249, 2.880399, 0.539810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.115631, 2.980588, 0.399095>,  <1.837935, 3.147569, 0.164569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.115631, 2.980588, 0.399095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365764, 0.496957, 0.786925,
		-0.619877, -0.760767, 0.192318,
		0.694240, -0.417454, 0.586313,
		2.323903, 2.855352, 0.574989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.612185, 2.584268, 0.650812>,  <1.837935, 3.147569, 0.164569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.612185, 2.584268, 0.650812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.920197, 2.806785, 0.775773>,  <2.105003, 2.940295, 0.850750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.920197, 2.806785, 0.775773>,  <1.612185, 2.584268, 0.650812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.920197, 2.806785, 0.775773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586124, 0.423381, 0.690802,
		0.252021, -0.715045, 0.652071,
		0.770028, 0.556291, 0.312404,
		2.151205, 2.973672, 0.869494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.552271, 2.586320, 1.416731>,  <1.612185, 2.584268, 0.650812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.552271, 2.586320, 1.416731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.764435, 2.908386, 1.310619>,  <1.891733, 3.101626, 1.246952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.764435, 2.908386, 1.310619>,  <1.552271, 2.586320, 1.416731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.764435, 2.908386, 1.310619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445216, 0.530867, 0.721085,
		0.721421, -0.264364, 0.640049,
		0.530410, 0.805166, -0.265280,
		1.923558, 3.149936, 1.231035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.839540, 2.874423, 2.115638>,  <1.552271, 2.586320, 1.416731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.839540, 2.874423, 2.115638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.852737, 3.162873, 1.838831>,  <1.860656, 3.335944, 1.672747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.852737, 3.162873, 1.838831>,  <1.839540, 2.874423, 2.115638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.852737, 3.162873, 1.838831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337734, 0.659709, 0.671357,
		0.940663, 0.211567, 0.265315,
		0.032994, 0.721126, -0.692017,
		1.862636, 3.379211, 1.631226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.043280, 3.436812, 2.503537>,  <1.839540, 2.874423, 2.115638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.043280, 3.436812, 2.503537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.908577, 3.583272, 2.156543>,  <1.827755, 3.671148, 1.948346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.908577, 3.583272, 2.156543>,  <2.043280, 3.436812, 2.503537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.908577, 3.583272, 2.156543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321918, 0.821009, 0.471500,
		0.884853, 0.438039, -0.158611,
		-0.336757, 0.366149, -0.867485,
		1.807550, 3.693117, 1.896297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.369540, 4.061182, 2.388160>,  <2.043280, 3.436812, 2.503537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.369540, 4.061182, 2.388160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.005798, 4.043615, 2.222681>,  <1.787553, 4.033075, 2.123393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.005798, 4.043615, 2.222681>,  <2.369540, 4.061182, 2.388160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.005798, 4.043615, 2.222681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306698, 0.742653, 0.595317,
		0.281090, 0.668234, -0.688804,
		-0.909354, -0.043917, -0.413699,
		1.732992, 4.030440, 2.098571>
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
