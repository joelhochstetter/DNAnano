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
	<3.214972, 3.921472, 5.039013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.369579, 4.044296, 4.691147>,  <3.462343, 4.117990, 4.482427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.369579, 4.044296, 4.691147>,  <3.214972, 3.921472, 5.039013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.369579, 4.044296, 4.691147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892039, -0.115029, -0.437075,
		-0.234245, 0.944713, 0.229449,
		0.386518, 0.307060, -0.869666,
		3.485535, 4.136414, 4.430247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.808644, 4.514894, 4.748644>,  <3.214972, 3.921472, 5.039013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.808644, 4.514894, 4.748644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.996998, 4.291046, 4.475853>,  <3.110010, 4.156737, 4.312179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.996998, 4.291046, 4.475853>,  <2.808644, 4.514894, 4.748644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.996998, 4.291046, 4.475853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854279, -0.096327, -0.510811,
		0.220167, 0.823133, -0.523430,
		0.470886, -0.559619, -0.681977,
		3.138264, 4.123160, 4.271260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.783612, 4.735012, 3.968087>,  <2.808644, 4.514894, 4.748644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.783612, 4.735012, 3.968087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.829792, 4.338058, 3.985283>,  <2.857500, 4.099886, 3.995600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.829792, 4.338058, 3.985283>,  <2.783612, 4.735012, 3.968087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.829792, 4.338058, 3.985283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814308, -0.119340, -0.568032,
		0.568835, 0.030573, -0.821883,
		0.115450, -0.992382, 0.042989,
		2.864427, 4.040344, 3.998180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.848250, 4.436511, 3.342646>,  <2.783612, 4.735012, 3.968087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.848250, 4.436511, 3.342646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.685040, 4.170883, 3.593254>,  <2.587113, 4.011507, 3.743619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.685040, 4.170883, 3.593254>,  <2.848250, 4.436511, 3.342646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.685040, 4.170883, 3.593254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806389, -0.059632, -0.588371,
		0.428079, -0.745290, -0.511166,
		-0.408025, -0.664068, 0.626521,
		2.562632, 3.971663, 3.781210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.607452, 3.678307, 3.089766>,  <2.848250, 4.436511, 3.342646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.607452, 3.678307, 3.089766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.370815, 3.803894, 3.386803>,  <2.228833, 3.879246, 3.565025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.370815, 3.803894, 3.386803>,  <2.607452, 3.678307, 3.089766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.370815, 3.803894, 3.386803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806236, -0.228659, -0.545617,
		-0.001505, -0.921488, 0.388403,
		-0.591592, 0.313966, 0.742593,
		2.193338, 3.898084, 3.609580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.069727, 3.106446, 3.329296>,  <2.607452, 3.678307, 3.089766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.069727, 3.106446, 3.329296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.944935, 3.475235, 3.421066>,  <1.870060, 3.696508, 3.476129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.944935, 3.475235, 3.421066>,  <2.069727, 3.106446, 3.329296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.944935, 3.475235, 3.421066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940964, -0.266453, -0.208779,
		-0.131358, -0.281017, 0.950671,
		-0.311980, 0.921972, 0.229426,
		1.851341, 3.751827, 3.489894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.558570, 3.079333, 3.740990>,  <2.069727, 3.106446, 3.329296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.558570, 3.079333, 3.740990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.464825, 3.442963, 3.603203>,  <1.408578, 3.661140, 3.520530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.464825, 3.442963, 3.603203>,  <1.558570, 3.079333, 3.740990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.464825, 3.442963, 3.603203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957810, -0.276558, -0.078198,
		-0.166353, 0.311609, 0.935536,
		-0.234363, 0.909074, -0.344468,
		1.394516, 3.715685, 3.499862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.933578, 3.452205, 4.125844>,  <1.558570, 3.079333, 3.740990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.933578, 3.452205, 4.125844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.957973, 3.631760, 3.769241>,  <0.972611, 3.739492, 3.555280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.957973, 3.631760, 3.769241>,  <0.933578, 3.452205, 4.125844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.957973, 3.631760, 3.769241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965760, -0.199110, -0.166322,
		-0.252167, 0.871123, 0.421373,
		0.060988, 0.448887, -0.891505,
		0.976270, 3.766426, 3.501790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.415224, 2.850878, 3.651266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.373877, 3.044174, 3.303520>,  <-0.349068, 3.160152, 3.094873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.373877, 3.044174, 3.303520>,  <-0.415224, 2.850878, 3.651266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.373877, 3.044174, 3.303520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948191, 0.216114, 0.232870,
		0.300414, -0.848395, -0.435865,
		0.103369, 0.483241, -0.869364,
		-0.342866, 3.189146, 3.042711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.264163, 2.846597, 3.181942>,  <-0.415224, 2.850878, 3.651266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.264163, 2.846597, 3.181942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.070868, 3.184509, 3.090004>,  <-0.045110, 3.387256, 3.034841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.070868, 3.184509, 3.090004>,  <0.264163, 2.846597, 3.181942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.070868, 3.184509, 3.090004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835343, 0.523494, 0.167799,
		0.262075, -0.110912, -0.958653,
		-0.483238, 0.844779, -0.229844,
		-0.074104, 3.437943, 3.021051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.513266, 3.188009, 2.532908>,  <0.264163, 2.846597, 3.181942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.513266, 3.188009, 2.532908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.362946, 3.462814, 2.781677>,  <0.272753, 3.627697, 2.930938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.362946, 3.462814, 2.781677>,  <0.513266, 3.188009, 2.532908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.362946, 3.462814, 2.781677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909278, 0.402885, 0.104387,
		-0.178848, 0.604729, -0.776090,
		-0.375801, 0.687013, 0.621922,
		0.250205, 3.668918, 2.968254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.852502, 3.756268, 2.234124>,  <0.513266, 3.188009, 2.532908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.852502, 3.756268, 2.234124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.742414, 3.814499, 2.614243>,  <0.676362, 3.849437, 2.842314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.742414, 3.814499, 2.614243>,  <0.852502, 3.756268, 2.234124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.742414, 3.814499, 2.614243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877521, 0.441803, 0.186460,
		-0.392699, 0.885222, -0.249339,
		-0.275218, 0.145578, 0.950296,
		0.659849, 3.858172, 2.899331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.057756, 4.459125, 2.441437>,  <0.852502, 3.756268, 2.234124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.057756, 4.459125, 2.441437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.020248, 4.253571, 2.782524>,  <0.997744, 4.130238, 2.987177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.020248, 4.253571, 2.782524>,  <1.057756, 4.459125, 2.441437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.020248, 4.253571, 2.782524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893771, 0.333881, 0.299494,
		-0.438612, 0.790219, 0.427988,
		-0.093769, -0.513885, 0.852719,
		0.992118, 4.099405, 3.038340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.179217, 4.935849, 3.116571>,  <1.057756, 4.459125, 2.441437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.179217, 4.935849, 3.116571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.257326, 4.561249, 3.233078>,  <1.304192, 4.336489, 3.302982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.257326, 4.561249, 3.233078>,  <1.179217, 4.935849, 3.116571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.257326, 4.561249, 3.233078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849495, 0.309926, 0.426971,
		-0.490130, 0.164054, 0.856072,
		0.195273, -0.936500, 0.291267,
		1.315908, 4.280299, 3.320458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.405623, 4.950600, 3.852524>,  <1.179217, 4.935849, 3.116571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.405623, 4.950600, 3.852524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.541607, 4.590897, 3.742424>,  <1.623197, 4.375075, 3.676364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.541607, 4.590897, 3.742424>,  <1.405623, 4.950600, 3.852524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.541607, 4.590897, 3.742424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806073, 0.127863, 0.577838,
		-0.484431, -0.418314, 0.768336,
		0.339959, -0.899258, -0.275251,
		1.643595, 4.321119, 3.659849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.635624, 4.682621, 4.517140>,  <1.405623, 4.950600, 3.852524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.635624, 4.682621, 4.517140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.791239, 4.464401, 4.220215>,  <1.884608, 4.333470, 4.042060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.791239, 4.464401, 4.220215>,  <1.635624, 4.682621, 4.517140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.791239, 4.464401, 4.220215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816220, -0.169476, 0.552324,
		-0.427124, -0.820765, 0.379355,
		0.389037, -0.545548, -0.742312,
		1.907950, 4.300737, 3.997521>
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
