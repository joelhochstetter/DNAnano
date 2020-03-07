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
	<5.033803, 3.805883, 5.361269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.223301, 3.510592, 5.169191>,  <5.337000, 3.333417, 5.053945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.223301, 3.510592, 5.169191>,  <5.033803, 3.805883, 5.361269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.223301, 3.510592, 5.169191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872763, -0.320696, -0.368021,
		0.117687, 0.593442, -0.796226,
		0.473745, -0.738228, -0.480192,
		5.365425, 3.289123, 5.025134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.928009, 3.835247, 4.649916>,  <5.033803, 3.805883, 5.361269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.928009, 3.835247, 4.649916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.993069, 3.461935, 4.778000>,  <5.032104, 3.237948, 4.854850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.993069, 3.461935, 4.778000>,  <4.928009, 3.835247, 4.649916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.993069, 3.461935, 4.778000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851119, -0.296882, -0.432963,
		0.499140, -0.202116, -0.842620,
		0.162650, -0.933279, 0.320210,
		5.041864, 3.181951, 4.874063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.952554, 3.398569, 4.024063>,  <4.928009, 3.835247, 4.649916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.952554, 3.398569, 4.024063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.864841, 3.176817, 4.345205>,  <4.812214, 3.043766, 4.537891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.864841, 3.176817, 4.345205>,  <4.952554, 3.398569, 4.024063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.864841, 3.176817, 4.345205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745753, -0.435353, -0.504302,
		0.629101, -0.709316, -0.317966,
		-0.219282, -0.554381, 0.802855,
		4.799057, 3.010503, 4.586062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.068059, 2.664881, 3.926073>,  <4.952554, 3.398569, 4.024063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.068059, 2.664881, 3.926073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.754795, 2.718504, 4.168951>,  <4.566836, 2.750678, 4.314678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.754795, 2.718504, 4.168951>,  <5.068059, 2.664881, 3.926073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.754795, 2.718504, 4.168951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592983, -0.454922, -0.664392,
		0.187161, -0.880383, 0.435771,
		-0.783161, 0.134057, 0.607196,
		4.519847, 2.758721, 4.351110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.791724, 2.034611, 4.124385>,  <5.068059, 2.664881, 3.926073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.791724, 2.034611, 4.124385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.492504, 2.299734, 4.137707>,  <4.312972, 2.458808, 4.145700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.492504, 2.299734, 4.137707>,  <4.791724, 2.034611, 4.124385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.492504, 2.299734, 4.137707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556258, -0.598848, -0.576157,
		-0.361937, -0.449520, 0.816660,
		-0.748050, 0.662807, 0.033304,
		4.268089, 2.498576, 4.147698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.247197, 1.649652, 4.418442>,  <4.791724, 2.034611, 4.124385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.247197, 1.649652, 4.418442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.110405, 1.967272, 4.217430>,  <4.028330, 2.157843, 4.096823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.110405, 1.967272, 4.217430>,  <4.247197, 1.649652, 4.418442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.110405, 1.967272, 4.217430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646914, -0.586811, -0.486985,
		-0.681581, 0.158556, 0.714358,
		-0.341979, 0.794048, -0.502532,
		4.007811, 2.205486, 4.066671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.472280, 1.688228, 4.501016>,  <4.247197, 1.649652, 4.418442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.472280, 1.688228, 4.501016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.538651, 1.907299, 4.172987>,  <3.578473, 2.038741, 3.976170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.538651, 1.907299, 4.172987>,  <3.472280, 1.688228, 4.501016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.538651, 1.907299, 4.172987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686457, -0.532891, -0.494776,
		-0.707987, 0.645041, 0.287536,
		0.165925, 0.547676, -0.820073,
		3.588428, 2.071602, 3.926965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.768186, 1.965490, 4.239589>,  <3.472280, 1.688228, 4.501016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.768186, 1.965490, 4.239589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.033916, 1.955725, 3.940771>,  <3.193355, 1.949866, 3.761480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.033916, 1.955725, 3.940771>,  <2.768186, 1.965490, 4.239589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.033916, 1.955725, 3.940771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648102, -0.516696, -0.559454,
		-0.372337, 0.855821, -0.359076,
		0.664326, -0.024413, -0.747045,
		3.233214, 1.948401, 3.716658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.851921, 0.837705, 2.889249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.962898, 1.148767, 2.663585>,  <3.029485, 1.335404, 2.528186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.962898, 1.148767, 2.663585>,  <2.851921, 0.837705, 2.889249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.962898, 1.148767, 2.663585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484823, 0.393635, 0.781023,
		0.829440, -0.490209, -0.267813,
		0.277444, 0.777655, -0.564161,
		3.046131, 1.382063, 2.494336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.515149, 0.947831, 3.120138>,  <2.851921, 0.837705, 2.889249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.515149, 0.947831, 3.120138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.331993, 1.266870, 2.963079>,  <3.222099, 1.458294, 2.868844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.331993, 1.266870, 2.963079>,  <3.515149, 0.947831, 3.120138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.331993, 1.266870, 2.963079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364099, 0.571177, 0.735655,
		0.811029, 0.193888, -0.551942,
		-0.457891, 0.797599, -0.392647,
		3.194626, 1.506150, 2.845285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.018562, 1.430466, 2.945541>,  <3.515149, 0.947831, 3.120138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.018562, 1.430466, 2.945541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.675629, 1.628589, 3.001614>,  <3.469868, 1.747462, 3.035257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.675629, 1.628589, 3.001614>,  <4.018562, 1.430466, 2.945541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.675629, 1.628589, 3.001614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463907, 0.625415, 0.627413,
		0.223090, 0.602933, -0.765965,
		-0.857334, 0.495306, 0.140181,
		3.418428, 1.777180, 3.043668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.117694, 2.095188, 2.660816>,  <4.018562, 1.430466, 2.945541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.117694, 2.095188, 2.660816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.853523, 2.068078, 2.959946>,  <3.695021, 2.051812, 3.139424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.853523, 2.068078, 2.959946>,  <4.117694, 2.095188, 2.660816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.853523, 2.068078, 2.959946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473829, 0.734982, 0.485064,
		-0.582513, 0.674691, -0.453289,
		-0.660428, -0.067774, 0.747825,
		3.655395, 2.047746, 3.184293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.983437, 2.710543, 2.908705>,  <4.117694, 2.095188, 2.660816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.983437, 2.710543, 2.908705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.841072, 2.514056, 3.226707>,  <3.755653, 2.396164, 3.417508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.841072, 2.514056, 3.226707>,  <3.983437, 2.710543, 2.908705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.841072, 2.514056, 3.226707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321469, 0.734438, 0.597711,
		-0.877488, 0.468302, -0.103485,
		-0.355912, -0.491217, 0.795005,
		3.734298, 2.366691, 3.465208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.476179, 3.240147, 3.350496>,  <3.983437, 2.710543, 2.908705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.476179, 3.240147, 3.350496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.629425, 2.942344, 3.569194>,  <3.721373, 2.763662, 3.700413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.629425, 2.942344, 3.569194>,  <3.476179, 3.240147, 3.350496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.629425, 2.942344, 3.569194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509645, 0.664034, 0.547101,
		-0.770379, 0.069043, 0.633837,
		0.383116, -0.744507, 0.546746,
		3.744360, 2.718992, 3.733217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.394510, 3.311868, 4.158131>,  <3.476179, 3.240147, 3.350496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.394510, 3.311868, 4.158131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.717346, 3.093043, 4.069292>,  <3.911048, 2.961749, 4.015989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.717346, 3.093043, 4.069292>,  <3.394510, 3.311868, 4.158131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.717346, 3.093043, 4.069292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588197, 0.712339, 0.382880,
		-0.051252, -0.439656, 0.896703,
		0.807092, -0.547062, -0.222096,
		3.959474, 2.928925, 4.002663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.847627, 3.334246, 4.741609>,  <3.394510, 3.311868, 4.158131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.847627, 3.334246, 4.741609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.999985, 3.318962, 4.372077>,  <4.091399, 3.309792, 4.150358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.999985, 3.318962, 4.372077>,  <3.847627, 3.334246, 4.741609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.999985, 3.318962, 4.372077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547603, 0.814390, 0.192093,
		0.745018, -0.579058, 0.331120,
		0.380894, -0.038209, -0.923829,
		4.114253, 3.307499, 4.094928>
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
