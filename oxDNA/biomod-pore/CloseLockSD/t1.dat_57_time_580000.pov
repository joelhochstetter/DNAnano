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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.463448, 15.095971, 15.276474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.187264, 14.993315, 15.005948>,  <4.021554, 14.931721, 14.843633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.187264, 14.993315, 15.005948>,  <4.463448, 15.095971, 15.276474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.187264, 14.993315, 15.005948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378836, 0.668190, -0.640316,
		0.616238, -0.698325, -0.364133,
		-0.690459, -0.256640, -0.676315,
		3.980127, 14.916322, 14.803053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.814531, 14.880180, 14.654679>,  <4.463448, 15.095971, 15.276474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.814531, 14.880180, 14.654679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.451556, 15.030848, 14.580194>,  <4.233770, 15.121247, 14.535502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.451556, 15.030848, 14.580194>,  <4.814531, 14.880180, 14.654679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.451556, 15.030848, 14.580194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406681, 0.675879, -0.614653,
		-0.105661, -0.633489, -0.766503,
		-0.907439, 0.376667, -0.186214,
		4.179324, 15.143847, 14.524329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.576101, 14.855477, 13.867238>,  <4.814531, 14.880180, 14.654679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.576101, 14.855477, 13.867238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.422574, 15.164887, 14.068968>,  <4.330457, 15.350533, 14.190005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.422574, 15.164887, 14.068968>,  <4.576101, 14.855477, 13.867238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.422574, 15.164887, 14.068968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226287, 0.608291, -0.760773,
		-0.895253, -0.177876, -0.408512,
		-0.383818, 0.773526, 0.504324,
		4.307428, 15.396945, 14.220264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.141473, 15.307581, 13.539074>,  <4.576101, 14.855477, 13.867238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.141473, 15.307581, 13.539074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.308067, 15.552714, 13.807693>,  <4.408023, 15.699794, 13.968865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.308067, 15.552714, 13.807693>,  <4.141473, 15.307581, 13.539074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.308067, 15.552714, 13.807693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390049, 0.546779, -0.740874,
		-0.821220, 0.570499, -0.011310,
		0.416484, 0.612833, 0.671548,
		4.433012, 15.736565, 14.009158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.859179, 16.080395, 13.699606>,  <4.141473, 15.307581, 13.539074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.859179, 16.080395, 13.699606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.249616, 15.995640, 13.718979>,  <4.483879, 15.944786, 13.730602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.249616, 15.995640, 13.718979>,  <3.859179, 16.080395, 13.699606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.249616, 15.995640, 13.718979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179923, 0.662673, -0.726975,
		0.121943, 0.718309, 0.684954,
		0.976093, -0.211889, 0.048432,
		4.542444, 15.932074, 13.733508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.263689, 16.786514, 13.675073>,  <3.859179, 16.080395, 13.699606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.263689, 16.786514, 13.675073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.491666, 16.480389, 13.555430>,  <4.628452, 16.296715, 13.483645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.491666, 16.480389, 13.555430>,  <4.263689, 16.786514, 13.675073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.491666, 16.480389, 13.555430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299850, 0.532626, -0.791454,
		0.765020, 0.361397, 0.533045,
		0.569943, -0.765312, -0.299105,
		4.662649, 16.250795, 13.465699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.849401, 17.114452, 13.488656>,  <4.263689, 16.786514, 13.675073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.849401, 17.114452, 13.488656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.810269, 16.765430, 13.297210>,  <4.786790, 16.556017, 13.182342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.810269, 16.765430, 13.297210>,  <4.849401, 17.114452, 13.488656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.810269, 16.765430, 13.297210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182437, 0.457050, -0.870530,
		0.978338, -0.172480, 0.114474,
		-0.097829, -0.872557, -0.478616,
		4.780921, 16.503664, 13.153625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.132672, 17.312891, 12.822133>,  <4.849401, 17.114452, 13.488656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.132672, 17.312891, 12.822133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.976343, 16.954603, 12.737332>,  <4.882545, 16.739630, 12.686452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.976343, 16.954603, 12.737332>,  <5.132672, 17.312891, 12.822133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.976343, 16.954603, 12.737332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012245, 0.225240, -0.974226,
		0.920384, -0.383346, -0.077061,
		-0.390823, -0.895719, -0.212001,
		4.859096, 16.685888, 12.673732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.658370, 16.994375, 12.454623>,  <5.132672, 17.312891, 12.822133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.658370, 16.994375, 12.454623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.305330, 16.825911, 12.371060>,  <5.093506, 16.724833, 12.320923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.305330, 16.825911, 12.371060>,  <5.658370, 16.994375, 12.454623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.305330, 16.825911, 12.371060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135273, 0.198065, -0.970810,
		0.450245, -0.885095, -0.117839,
		-0.882599, -0.421162, -0.208907,
		5.040550, 16.699562, 12.308389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.733661, 16.491175, 11.896301>,  <5.658370, 16.994375, 12.454623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.733661, 16.491175, 11.896301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.354907, 16.619570, 11.888567>,  <5.127654, 16.696608, 11.883926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.354907, 16.619570, 11.888567>,  <5.733661, 16.491175, 11.896301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.354907, 16.619570, 11.888567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139131, 0.354734, -0.924557,
		-0.289914, -0.878140, -0.380552,
		-0.946886, 0.320989, -0.019335,
		5.070841, 16.715866, 11.882767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.576812, 16.393885, 11.227135>,  <5.733661, 16.491175, 11.896301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.576812, 16.393885, 11.227135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.276186, 16.634480, 11.335474>,  <5.095809, 16.778837, 11.400477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.276186, 16.634480, 11.335474>,  <5.576812, 16.393885, 11.227135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.276186, 16.634480, 11.335474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074107, 0.484978, -0.871381,
		-0.655482, -0.634829, -0.409067,
		-0.751566, 0.601489, 0.270849,
		5.050715, 16.814926, 11.416729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.109675, 16.368290, 10.710355>,  <5.576812, 16.393885, 11.227135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.109675, 16.368290, 10.710355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.006701, 16.705162, 10.899864>,  <4.944918, 16.907286, 11.013570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.006701, 16.705162, 10.899864>,  <5.109675, 16.368290, 10.710355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.006701, 16.705162, 10.899864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081415, 0.507459, -0.857821,
		-0.962860, -0.182260, -0.199203,
		-0.257433, 0.842180, 0.473773,
		4.929471, 16.957815, 11.041996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.519230, 16.697392, 10.291285>,  <5.109675, 16.368290, 10.710355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.519230, 16.697392, 10.291285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.643612, 17.018137, 10.495370>,  <4.718242, 17.210585, 10.617821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.643612, 17.018137, 10.495370>,  <4.519230, 16.697392, 10.291285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.643612, 17.018137, 10.495370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052647, 0.550535, -0.833150,
		-0.948965, 0.232211, 0.213407,
		0.310955, 0.801866, 0.510213,
		4.736899, 17.258698, 10.648434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.057847, 17.322577, 10.073073>,  <4.519230, 16.697392, 10.291285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.057847, 17.322577, 10.073073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.409183, 17.453522, 10.212417>,  <4.619985, 17.532089, 10.296022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.409183, 17.453522, 10.212417>,  <4.057847, 17.322577, 10.073073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.409183, 17.453522, 10.212417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134675, 0.529755, -0.837390,
		-0.458674, 0.782428, 0.421217,
		0.878340, 0.327362, 0.348358,
		4.672685, 17.551731, 10.316924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.980883, 18.060020, 10.114495>,  <4.057847, 17.322577, 10.073073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.980883, 18.060020, 10.114495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.355628, 17.931324, 10.059695>,  <4.580476, 17.854107, 10.026815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.355628, 17.931324, 10.059695>,  <3.980883, 18.060020, 10.114495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.355628, 17.931324, 10.059695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073965, 0.565228, -0.821612,
		0.341782, 0.759605, 0.553339,
		0.936864, -0.321741, -0.137001,
		4.636688, 17.834803, 10.018595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.392982, 18.567396, 9.791841>,  <3.980883, 18.060020, 10.114495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.392982, 18.567396, 9.791841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.681772, 18.291368, 9.771617>,  <4.855046, 18.125751, 9.759482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.681772, 18.291368, 9.771617>,  <4.392982, 18.567396, 9.791841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.681772, 18.291368, 9.771617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336415, 0.413944, -0.845858,
		0.604629, 0.593679, 0.531007,
		0.721975, -0.690069, -0.050560,
		4.898365, 18.084349, 9.756449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.932431, 18.940035, 9.590288>,  <4.392982, 18.567396, 9.791841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.932431, 18.940035, 9.590288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.034306, 18.570417, 9.476252>,  <5.095431, 18.348646, 9.407829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.034306, 18.570417, 9.476252>,  <4.932431, 18.940035, 9.590288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.034306, 18.570417, 9.476252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441093, 0.373366, -0.816109,
		0.860564, 0.082102, 0.502682,
		0.254688, -0.924044, -0.285091,
		5.110713, 18.293203, 9.390724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.452853, 19.095243, 9.225326>,  <4.932431, 18.940035, 9.590288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.452853, 19.095243, 9.225326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.369499, 18.719803, 9.115341>,  <5.319487, 18.494539, 9.049351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.369499, 18.719803, 9.115341>,  <5.452853, 19.095243, 9.225326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.369499, 18.719803, 9.115341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281892, 0.211565, -0.935830,
		0.936543, -0.272522, 0.220498,
		-0.208384, -0.938601, -0.274962,
		5.306983, 18.438223, 9.032852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.066331, 18.931005, 8.904593>,  <5.452853, 19.095243, 9.225326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.066331, 18.931005, 8.904593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.766290, 18.690666, 8.794081>,  <5.586266, 18.546463, 8.727774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.766290, 18.690666, 8.794081>,  <6.066331, 18.931005, 8.904593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.766290, 18.690666, 8.794081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281800, 0.087541, -0.955471,
		0.598278, -0.794556, 0.103654,
		-0.750102, -0.600847, -0.276280,
		5.541260, 18.510412, 8.711197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.363065, 18.351160, 8.529528>,  <6.066331, 18.931005, 8.904593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.363065, 18.351160, 8.529528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.984149, 18.426510, 8.425869>,  <5.756799, 18.471720, 8.363674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.984149, 18.426510, 8.425869>,  <6.363065, 18.351160, 8.529528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.984149, 18.426510, 8.425869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308339, 0.316399, -0.897117,
		-0.087001, -0.929735, -0.357805,
		-0.947290, 0.188376, -0.259146,
		5.699962, 18.483023, 8.348125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.291607, 18.006962, 7.891904>,  <6.363065, 18.351160, 8.529528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.291607, 18.006962, 7.891904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.006833, 18.287683, 7.901851>,  <5.835968, 18.456116, 7.907818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.006833, 18.287683, 7.901851>,  <6.291607, 18.006962, 7.891904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.006833, 18.287683, 7.901851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210301, 0.246853, -0.945958,
		-0.670016, -0.668232, -0.323334,
		-0.711936, 0.701804, 0.024866,
		5.793252, 18.498224, 7.909310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.041201, 18.002447, 7.219005>,  <6.291607, 18.006962, 7.891904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.041201, 18.002447, 7.219005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.843656, 18.330261, 7.335255>,  <5.725129, 18.526949, 7.405005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.843656, 18.330261, 7.335255>,  <6.041201, 18.002447, 7.219005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.843656, 18.330261, 7.335255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108069, 0.389485, -0.914671,
		-0.862798, -0.420314, -0.280918,
		-0.493863, 0.819535, 0.290624,
		5.695497, 18.576122, 7.422442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.637542, 18.165112, 6.745014>,  <6.041201, 18.002447, 7.219005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.637542, 18.165112, 6.745014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.714194, 18.504370, 6.942571>,  <5.760185, 18.707924, 7.061104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.714194, 18.504370, 6.942571>,  <5.637542, 18.165112, 6.745014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.714194, 18.504370, 6.942571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293563, 0.430648, -0.853442,
		-0.936536, 0.308532, -0.166460,
		0.191629, 0.848145, 0.493891,
		5.771683, 18.758814, 7.090738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.350659, 18.651098, 6.320328>,  <5.637542, 18.165112, 6.745014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.350659, 18.651098, 6.320328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.622528, 18.824383, 6.557098>,  <5.785649, 18.928354, 6.699160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.622528, 18.824383, 6.557098>,  <5.350659, 18.651098, 6.320328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.622528, 18.824383, 6.557098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390798, 0.469044, -0.792007,
		-0.620745, 0.769627, 0.149498,
		0.679672, 0.433211, 0.591925,
		5.826429, 18.954346, 6.734675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.383286, 19.351624, 6.050334>,  <5.350659, 18.651098, 6.320328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.383286, 19.351624, 6.050334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.726992, 19.311409, 6.250956>,  <5.933215, 19.287279, 6.371329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.726992, 19.311409, 6.250956>,  <5.383286, 19.351624, 6.050334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.726992, 19.311409, 6.250956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465166, 0.561478, -0.684371,
		-0.212807, 0.821361, 0.529225,
		0.859264, -0.100538, 0.501556,
		5.984771, 19.281248, 6.401423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.805814, 20.018215, 6.160697>,  <5.383286, 19.351624, 6.050334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.805814, 20.018215, 6.160697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.064332, 19.713005, 6.164622>,  <6.219442, 19.529879, 6.166977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.064332, 19.713005, 6.164622>,  <5.805814, 20.018215, 6.160697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.064332, 19.713005, 6.164622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540736, 0.448860, -0.711428,
		0.538434, 0.465097, 0.702691,
		0.646293, -0.763026, 0.009813,
		6.258219, 19.484097, 6.167566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.469099, 20.248055, 6.362240>,  <5.805814, 20.018215, 6.160697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.469099, 20.248055, 6.362240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.432803, 19.942905, 6.106180>,  <6.411026, 19.759815, 5.952544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.432803, 19.942905, 6.106180>,  <6.469099, 20.248055, 6.362240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.432803, 19.942905, 6.106180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264767, 0.601188, -0.753971,
		0.960034, -0.237905, 0.147433,
		-0.090738, -0.762873, -0.640150,
		6.405581, 19.714045, 5.914135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.143281, 19.969246, 5.998277>,  <6.469099, 20.248055, 6.362240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.143281, 19.969246, 5.998277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.812566, 19.915083, 5.779888>,  <6.614137, 19.882586, 5.648854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.812566, 19.915083, 5.779888>,  <7.143281, 19.969246, 5.998277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.812566, 19.915083, 5.779888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396181, 0.548852, -0.736072,
		0.399329, -0.824880, -0.400138,
		-0.826787, -0.135408, -0.545974,
		6.564530, 19.874460, 5.616096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.410088, 20.630154, 6.480336>,  <7.143281, 19.969246, 5.998277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.410088, 20.630154, 6.480336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.244672, 20.975370, 6.364303>,  <7.145422, 21.182501, 6.294683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.244672, 20.975370, 6.364303>,  <7.410088, 20.630154, 6.480336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.244672, 20.975370, 6.364303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053111, 0.340925, 0.938589,
		0.908936, 0.372737, -0.186823,
		-0.413539, 0.863040, -0.290083,
		7.120610, 21.234282, 6.277278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.874928, 21.041847, 6.772239>,  <7.410088, 20.630154, 6.480336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.874928, 21.041847, 6.772239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.538544, 21.248976, 6.709442>,  <7.336713, 21.373253, 6.671763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.538544, 21.248976, 6.709442>,  <7.874928, 21.041847, 6.772239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.538544, 21.248976, 6.709442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156297, 0.510237, 0.845712,
		0.518031, 0.686673, -0.510024,
		-0.840961, 0.517821, -0.156994,
		7.286255, 21.404322, 6.662344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.018349, 21.747826, 7.019363>,  <7.874928, 21.041847, 6.772239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.018349, 21.747826, 7.019363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.625736, 21.680918, 7.056489>,  <7.390168, 21.640774, 7.078765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.625736, 21.680918, 7.056489>,  <8.018349, 21.747826, 7.019363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.625736, 21.680918, 7.056489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051531, 0.236071, 0.970369,
		-0.184223, 0.957231, -0.223092,
		-0.981533, -0.167268, 0.092817,
		7.331276, 21.630737, 7.084334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.213607, 21.348545, 7.701248>,  <8.018349, 21.747826, 7.019363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.213607, 21.348545, 7.701248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.950606, 21.506409, 7.957977>,  <7.792806, 21.601128, 8.112014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.950606, 21.506409, 7.957977>,  <8.213607, 21.348545, 7.701248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.950606, 21.506409, 7.957977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541311, 0.345100, -0.766739,
		-0.524094, -0.851557, -0.013270,
		-0.657502, 0.394660, 0.641822,
		7.753356, 21.624807, 8.150523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.596061, 21.129324, 7.453987>,  <8.213607, 21.348545, 7.701248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.596061, 21.129324, 7.453987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.518370, 21.456953, 7.669911>,  <7.471756, 21.653530, 7.799466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.518370, 21.456953, 7.669911>,  <7.596061, 21.129324, 7.453987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.518370, 21.456953, 7.669911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593171, 0.340222, -0.729656,
		-0.781296, -0.461918, 0.419770,
		-0.194226, 0.819073, 0.539810,
		7.460102, 21.702675, 7.831854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.423012, 20.471880, 7.419600>,  <7.596061, 21.129324, 7.453987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.423012, 20.471880, 7.419600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.082658, 20.655685, 7.521457>,  <6.878446, 20.765968, 7.582572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.082658, 20.655685, 7.521457>,  <7.423012, 20.471880, 7.419600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.082658, 20.655685, 7.521457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439137, 0.356054, 0.824854,
		0.288365, 0.813678, -0.504750,
		-0.850884, 0.459514, 0.254643,
		6.827393, 20.793539, 7.597850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.576709, 19.999950, 7.950214>,  <7.423012, 20.471880, 7.419600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.576709, 19.999950, 7.950214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.395601, 20.331556, 8.081506>,  <7.286936, 20.530519, 8.160281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.395601, 20.331556, 8.081506>,  <7.576709, 19.999950, 7.950214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.395601, 20.331556, 8.081506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095403, -0.320967, 0.942273,
		0.886509, 0.457947, 0.066234,
		-0.452770, 0.829014, 0.328229,
		7.259770, 20.580261, 8.179975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.001852, 20.255518, 8.437347>,  <7.576709, 19.999950, 7.950214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.001852, 20.255518, 8.437347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.609772, 20.330307, 8.463427>,  <7.374525, 20.375181, 8.479074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.609772, 20.330307, 8.463427>,  <8.001852, 20.255518, 8.437347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.609772, 20.330307, 8.463427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033925, -0.482958, 0.874986,
		0.195086, 0.855449, 0.479738,
		-0.980199, 0.186973, 0.065197,
		7.315712, 20.386398, 8.482985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.900927, 20.644144, 9.069352>,  <8.001852, 20.255518, 8.437347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.900927, 20.644144, 9.069352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.587715, 20.432283, 8.938917>,  <7.399787, 20.305166, 8.860656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.587715, 20.432283, 8.938917>,  <7.900927, 20.644144, 9.069352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.587715, 20.432283, 8.938917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143950, -0.355717, 0.923442,
		-0.605098, 0.770023, 0.202293,
		-0.783030, -0.529652, -0.326088,
		7.352806, 20.273388, 8.841091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.314845, 20.763952, 9.485006>,  <7.900927, 20.644144, 9.069352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.314845, 20.763952, 9.485006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.269376, 20.401739, 9.321499>,  <7.242095, 20.184412, 9.223394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.269376, 20.401739, 9.321499>,  <7.314845, 20.763952, 9.485006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.269376, 20.401739, 9.321499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122349, -0.395544, 0.910261,
		-0.985956, 0.153485, -0.065828,
		-0.113673, -0.905532, -0.408768,
		7.235274, 20.130079, 9.198869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.906484, 20.508583, 10.069462>,  <7.314845, 20.763952, 9.485006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.906484, 20.508583, 10.069462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.018799, 20.195438, 9.847367>,  <7.086189, 20.007551, 9.714110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.018799, 20.195438, 9.847367>,  <6.906484, 20.508583, 10.069462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.018799, 20.195438, 9.847367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051814, -0.565301, 0.823255,
		-0.958370, -0.259930, -0.118168,
		0.280789, -0.782860, -0.555236,
		7.103036, 19.960581, 9.680797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.456980, 20.057085, 10.267659>,  <6.906484, 20.508583, 10.069462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.456980, 20.057085, 10.267659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.740072, 19.833752, 10.094509>,  <6.909927, 19.699751, 9.990619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.740072, 19.833752, 10.094509>,  <6.456980, 20.057085, 10.267659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.740072, 19.833752, 10.094509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116806, -0.696761, 0.707729,
		-0.696761, -0.450318, -0.558335,
		-0.707729, 0.558335, 0.432875,
		6.952391, 19.666250, 9.964646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.194622, 19.346981, 10.193128>,  <6.456980, 20.057085, 10.267659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.194622, 19.346981, 10.193128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.593061, 19.314617, 10.207212>,  <6.832125, 19.295198, 10.215664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.593061, 19.314617, 10.207212>,  <6.194622, 19.346981, 10.193128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.593061, 19.314617, 10.207212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081207, -0.684452, 0.724521,
		-0.034517, -0.724554, -0.688353,
		0.996099, -0.080907, 0.035213,
		6.891891, 19.290344, 10.217776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.234392, 18.674500, 10.417606>,  <6.194622, 19.346981, 10.193128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.234392, 18.674500, 10.417606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.618997, 18.772709, 10.466947>,  <6.849759, 18.831635, 10.496551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.618997, 18.772709, 10.466947>,  <6.234392, 18.674500, 10.417606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.618997, 18.772709, 10.466947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129038, -0.799834, 0.586186,
		0.242582, -0.547707, -0.800731,
		0.961511, 0.245523, 0.123350,
		6.907450, 18.846365, 10.503952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.673148, 18.019884, 10.257947>,  <6.234392, 18.674500, 10.417606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.673148, 18.019884, 10.257947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.892757, 18.269819, 10.479993>,  <7.024522, 18.419781, 10.613220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.892757, 18.269819, 10.479993>,  <6.673148, 18.019884, 10.257947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.892757, 18.269819, 10.479993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025719, -0.651220, 0.758453,
		0.835412, -0.430684, -0.341464,
		0.549022, 0.624839, 0.555114,
		7.057464, 18.457272, 10.646527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.191800, 17.633869, 10.586978>,  <6.673148, 18.019884, 10.257947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.191800, 17.633869, 10.586978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.195749, 17.971258, 10.801810>,  <7.198119, 18.173691, 10.930710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.195749, 17.971258, 10.801810>,  <7.191800, 17.633869, 10.586978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.195749, 17.971258, 10.801810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027260, -0.537134, 0.843056,
		0.999580, 0.006318, -0.028296,
		0.009872, 0.843473, 0.537081,
		7.198711, 18.224300, 10.962934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.804579, 17.503880, 11.009874>,  <7.191800, 17.633869, 10.586978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.804579, 17.503880, 11.009874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.577028, 17.783701, 11.182851>,  <7.440498, 17.951593, 11.286637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.577028, 17.783701, 11.182851>,  <7.804579, 17.503880, 11.009874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.577028, 17.783701, 11.182851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013987, -0.517509, 0.855564,
		0.822304, 0.492758, 0.284613,
		-0.568876, 0.699553, 0.432442,
		7.406365, 17.993567, 11.312584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.179012, 17.640501, 11.596935>,  <7.804579, 17.503880, 11.009874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.179012, 17.640501, 11.596935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.793127, 17.734022, 11.645368>,  <7.561595, 17.790134, 11.674427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.793127, 17.734022, 11.645368>,  <8.179012, 17.640501, 11.596935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.793127, 17.734022, 11.645368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020126, -0.524001, 0.851480,
		0.262526, 0.818999, 0.510217,
		-0.964715, 0.233804, 0.121081,
		7.503712, 17.804163, 11.681692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.185181, 17.840141, 12.300157>,  <8.179012, 17.640501, 11.596935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.185181, 17.840141, 12.300157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.811292, 17.752630, 12.188131>,  <7.586959, 17.700125, 12.120916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.811292, 17.752630, 12.188131>,  <8.185181, 17.840141, 12.300157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.811292, 17.752630, 12.188131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079896, -0.638520, 0.765446,
		-0.346287, 0.737854, 0.579359,
		-0.934720, -0.218776, -0.280063,
		7.530876, 17.686998, 12.104113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.670658, 17.901470, 12.889091>,  <8.185181, 17.840141, 12.300157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.670658, 17.901470, 12.889091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.512538, 17.646160, 12.624866>,  <7.417667, 17.492975, 12.466330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.512538, 17.646160, 12.624866>,  <7.670658, 17.901470, 12.889091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.512538, 17.646160, 12.624866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093900, -0.687289, 0.720289,
		-0.913741, 0.346756, 0.211750,
		-0.395298, -0.638274, -0.660565,
		7.393949, 17.454678, 12.426696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.102439, 17.573341, 13.226694>,  <7.670658, 17.901470, 12.889091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.102439, 17.573341, 13.226694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.187286, 17.335560, 12.916434>,  <7.238195, 17.192890, 12.730279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.187286, 17.335560, 12.916434>,  <7.102439, 17.573341, 13.226694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.187286, 17.335560, 12.916434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005446, -0.792979, 0.609225,
		-0.977229, -0.133452, -0.164968,
		0.212118, -0.594454, -0.775649,
		7.250922, 17.157223, 12.683740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.597319, 16.975748, 13.247675>,  <7.102439, 17.573341, 13.226694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.597319, 16.975748, 13.247675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.888160, 16.821774, 13.020291>,  <7.062665, 16.729389, 12.883862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.888160, 16.821774, 13.020291>,  <6.597319, 16.975748, 13.247675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.888160, 16.821774, 13.020291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066767, -0.863742, 0.499492,
		-0.683274, -0.325228, -0.653731,
		0.727104, -0.384938, -0.568457,
		7.106291, 16.706291, 12.849754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.502343, 16.253452, 13.190896>,  <6.597319, 16.975748, 13.247675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.502343, 16.253452, 13.190896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.885503, 16.275118, 13.078118>,  <7.115399, 16.288116, 13.010452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.885503, 16.275118, 13.078118>,  <6.502343, 16.253452, 13.190896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.885503, 16.275118, 13.078118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184315, -0.868964, 0.459270,
		-0.220123, -0.491902, -0.842365,
		0.957901, 0.054164, -0.281944,
		7.172873, 16.291367, 12.993535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.730661, 15.590611, 12.950618>,  <6.502343, 16.253452, 13.190896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.730661, 15.590611, 12.950618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.074089, 15.766250, 13.056490>,  <7.280145, 15.871633, 13.120013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.074089, 15.766250, 13.056490>,  <6.730661, 15.590611, 12.950618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.074089, 15.766250, 13.056490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257896, -0.816056, 0.517245,
		0.443113, -0.375830, -0.813881,
		0.858569, 0.439095, 0.264680,
		7.331659, 15.897978, 13.135894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.135630, 15.041851, 13.006031>,  <6.730661, 15.590611, 12.950618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.135630, 15.041851, 13.006031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.346697, 15.326863, 13.191014>,  <7.473337, 15.497870, 13.302004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.346697, 15.326863, 13.191014>,  <7.135630, 15.041851, 13.006031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.346697, 15.326863, 13.191014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293388, -0.663789, 0.687973,
		0.797176, -0.227342, -0.559308,
		0.527668, 0.712530, 0.462458,
		7.504997, 15.540623, 13.329752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.839913, 14.823777, 13.060350>,  <7.135630, 15.041851, 13.006031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.839913, 14.823777, 13.060350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.723773, 15.070924, 13.352634>,  <7.654090, 15.219212, 13.528005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.723773, 15.070924, 13.352634>,  <7.839913, 14.823777, 13.060350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.723773, 15.070924, 13.352634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197186, -0.708587, 0.677511,
		0.936384, 0.340801, 0.083902,
		-0.290348, 0.617867, 0.730711,
		7.636669, 15.256284, 13.571848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.284486, 14.822674, 13.664672>,  <7.839913, 14.823777, 13.060350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.284486, 14.822674, 13.664672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.948630, 14.985743, 13.808232>,  <7.747117, 15.083584, 13.894369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.948630, 14.985743, 13.808232>,  <8.284486, 14.822674, 13.664672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.948630, 14.985743, 13.808232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011387, -0.647427, 0.762043,
		0.543025, 0.643928, 0.538963,
		-0.839639, 0.407671, 0.358902,
		7.696738, 15.108044, 13.915903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.348804, 14.914660, 14.420485>,  <8.284486, 14.822674, 13.664672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.348804, 14.914660, 14.420485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.961810, 14.894432, 14.321361>,  <7.729613, 14.882295, 14.261886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.961810, 14.894432, 14.321361>,  <8.348804, 14.914660, 14.420485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.961810, 14.894432, 14.321361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157688, -0.645452, 0.747346,
		-0.197746, 0.762125, 0.616491,
		-0.967487, -0.050572, -0.247813,
		7.671564, 14.879261, 14.247017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.842487, 14.359678, 14.487937>,  <8.348804, 14.914660, 14.420485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.842487, 14.359678, 14.487937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.533029, 14.345581, 14.234882>,  <8.347353, 14.337123, 14.083050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.533029, 14.345581, 14.234882>,  <8.842487, 14.359678, 14.487937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.533029, 14.345581, 14.234882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516782, -0.612807, -0.597833,
		-0.366614, -0.789446, 0.492309,
		-0.773647, -0.035242, -0.632635,
		8.300935, 14.335009, 14.045092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.793805, 13.596751, 14.371086>,  <8.842487, 14.359678, 14.487937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.793805, 13.596751, 14.371086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.666688, 13.826219, 14.069116>,  <8.590418, 13.963899, 13.887934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.666688, 13.826219, 14.069116>,  <8.793805, 13.596751, 14.371086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.666688, 13.826219, 14.069116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540697, -0.544404, -0.641304,
		-0.778880, -0.611988, -0.137172,
		-0.317793, 0.573668, -0.754926,
		8.571350, 13.998319, 13.842638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.402025, 13.111952, 13.807495>,  <8.793805, 13.596751, 14.371086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.402025, 13.111952, 13.807495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.615180, 13.434772, 13.705751>,  <8.743073, 13.628465, 13.644705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.615180, 13.434772, 13.705751>,  <8.402025, 13.111952, 13.807495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.615180, 13.434772, 13.705751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537394, -0.554967, -0.634995,
		-0.653636, 0.201689, -0.729439,
		0.532886, 0.807052, -0.254360,
		8.775046, 13.676888, 13.629443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.432133, 13.311884, 13.032325>,  <8.402025, 13.111952, 13.807495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.432133, 13.311884, 13.032325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.766174, 13.431548, 13.216978>,  <8.966599, 13.503346, 13.327770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.766174, 13.431548, 13.216978>,  <8.432133, 13.311884, 13.032325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.766174, 13.431548, 13.216978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549695, -0.421920, -0.720985,
		-0.020918, 0.855855, -0.516793,
		0.835104, 0.299160, 0.461633,
		9.016706, 13.521297, 13.355468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.979985, 13.796414, 12.624002>,  <8.432133, 13.311884, 13.032325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.979985, 13.796414, 12.624002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.132691, 13.527034, 12.877212>,  <9.224316, 13.365405, 13.029137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.132691, 13.527034, 12.877212>,  <8.979985, 13.796414, 12.624002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.132691, 13.527034, 12.877212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562090, -0.374516, -0.737423,
		0.733696, 0.637339, 0.235563,
		0.381766, -0.673452, 0.633022,
		9.247221, 13.324998, 13.067119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.766208, 13.831552, 12.673741>,  <8.979985, 13.796414, 12.624002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.766208, 13.831552, 12.673741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.663097, 13.462113, 12.787249>,  <9.601231, 13.240451, 12.855352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.663097, 13.462113, 12.787249>,  <9.766208, 13.831552, 12.673741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.663097, 13.462113, 12.787249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655156, -0.382946, -0.651248,
		0.710157, 0.018036, 0.703813,
		-0.257776, -0.923595, 0.283768,
		9.585765, 13.185035, 12.872379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.293818, 13.486943, 12.894528>,  <9.766208, 13.831552, 12.673741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.293818, 13.486943, 12.894528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.045807, 13.193296, 12.783794>,  <9.897000, 13.017108, 12.717354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.045807, 13.193296, 12.783794>,  <10.293818, 13.486943, 12.894528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.045807, 13.193296, 12.783794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770914, -0.504475, -0.388840,
		0.145797, -0.454508, 0.878730,
		-0.620028, -0.734117, -0.276836,
		9.859798, 12.973062, 12.700744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.639813, 12.883458, 13.066724>,  <10.293818, 13.486943, 12.894528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.639813, 12.883458, 13.066724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395264, 12.780904, 12.767261>,  <10.248534, 12.719371, 12.587583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395264, 12.780904, 12.767261>,  <10.639813, 12.883458, 13.066724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.395264, 12.780904, 12.767261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705113, -0.605945, -0.368302,
		-0.359218, -0.753059, 0.551240,
		-0.611374, -0.256385, -0.748658,
		10.211851, 12.703988, 12.542664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.719274, 12.920107, 13.769714>,  <10.639813, 12.883458, 13.066724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.719274, 12.920107, 13.769714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.089416, 12.776926, 13.719773>,  <11.311501, 12.691017, 13.689809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.089416, 12.776926, 13.719773>,  <10.719274, 12.920107, 13.769714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.089416, 12.776926, 13.719773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303533, 0.502254, 0.809696,
		-0.227126, -0.787153, 0.573414,
		0.925354, -0.357953, -0.124853,
		11.367022, 12.669540, 13.682318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.938013, 12.387291, 14.366388>,  <10.719274, 12.920107, 13.769714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.938013, 12.387291, 14.366388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.273681, 12.546450, 14.218079>,  <11.475081, 12.641945, 14.129093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.273681, 12.546450, 14.218079>,  <10.938013, 12.387291, 14.366388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.273681, 12.546450, 14.218079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210948, 0.390239, 0.896223,
		0.501294, -0.830296, 0.243541,
		0.839169, 0.397897, -0.370774,
		11.525432, 12.665818, 14.106847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.420205, 12.202832, 14.784589>,  <10.938013, 12.387291, 14.366388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.420205, 12.202832, 14.784589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.604649, 12.504115, 14.596948>,  <11.715315, 12.684885, 14.484363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.604649, 12.504115, 14.596948>,  <11.420205, 12.202832, 14.784589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.604649, 12.504115, 14.596948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215336, 0.417873, 0.882617,
		0.860819, -0.507997, 0.030493,
		0.461109, 0.753207, -0.469103,
		11.742982, 12.730077, 14.456217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.997389, 12.222184, 15.162789>,  <11.420205, 12.202832, 14.784589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.997389, 12.222184, 15.162789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.930007, 12.568111, 14.973596>,  <11.889578, 12.775668, 14.860080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.930007, 12.568111, 14.973596>,  <11.997389, 12.222184, 15.162789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.930007, 12.568111, 14.973596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194150, 0.499551, 0.844248,
		0.966400, 0.050387, -0.252055,
		-0.168454, 0.864818, -0.472983,
		11.879471, 12.827557, 14.831700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.544234, 12.608269, 15.371220>,  <11.997389, 12.222184, 15.162789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.544234, 12.608269, 15.371220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.286936, 12.880436, 15.230783>,  <12.132557, 13.043736, 15.146521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.286936, 12.880436, 15.230783>,  <12.544234, 12.608269, 15.371220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.286936, 12.880436, 15.230783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075490, 0.512674, 0.855258,
		0.761929, 0.523638, -0.381141,
		-0.643246, 0.680418, -0.351092,
		12.093962, 13.084561, 15.125455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.747257, 13.235241, 15.602225>,  <12.544234, 12.608269, 15.371220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.747257, 13.235241, 15.602225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.364236, 13.307130, 15.512076>,  <12.134423, 13.350264, 15.457987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.364236, 13.307130, 15.512076>,  <12.747257, 13.235241, 15.602225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.364236, 13.307130, 15.512076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086265, 0.567348, 0.818947,
		0.275048, 0.803627, -0.527762,
		-0.957552, 0.179723, -0.225373,
		12.076970, 13.361047, 15.444465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.732681, 13.909374, 15.767928>,  <12.747257, 13.235241, 15.602225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.732681, 13.909374, 15.767928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.351007, 13.791599, 15.746614>,  <12.122004, 13.720934, 15.733826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.351007, 13.791599, 15.746614>,  <12.732681, 13.909374, 15.767928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.351007, 13.791599, 15.746614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169171, 0.383960, 0.907720,
		-0.246808, 0.875146, -0.416179,
		-0.954184, -0.294437, -0.053285,
		12.064753, 13.703268, 15.730629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.383673, 14.540325, 15.909323>,  <12.732681, 13.909374, 15.767928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.383673, 14.540325, 15.909323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.140476, 14.227731, 15.965363>,  <11.994558, 14.040174, 15.998986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.140476, 14.227731, 15.965363>,  <12.383673, 14.540325, 15.909323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.140476, 14.227731, 15.965363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427679, 0.471040, 0.771500,
		-0.668908, 0.409148, -0.620613,
		-0.607991, -0.781485, 0.140099,
		11.958079, 13.993285, 16.007393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.718137, 14.817039, 15.890132>,  <12.383673, 14.540325, 15.909323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.718137, 14.817039, 15.890132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.714821, 14.466404, 16.082600>,  <11.712831, 14.256022, 16.198080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.714821, 14.466404, 16.082600>,  <11.718137, 14.817039, 15.890132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.714821, 14.466404, 16.082600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140669, 0.477422, 0.867341,
		-0.990022, -0.060494, -0.127267,
		-0.008291, -0.876589, 0.481168,
		11.712334, 14.203427, 16.226950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.086173, 14.806453, 16.191532>,  <11.718137, 14.817039, 15.890132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.086173, 14.806453, 16.191532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.318016, 14.554921, 16.398849>,  <11.457122, 14.404002, 16.523239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.318016, 14.554921, 16.398849>,  <11.086173, 14.806453, 16.191532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.318016, 14.554921, 16.398849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419867, 0.314654, 0.851296,
		-0.698403, -0.711033, -0.081648,
		0.579608, -0.628829, 0.518294,
		11.491899, 14.366273, 16.554338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.615614, 14.650757, 16.674341>,  <11.086173, 14.806453, 16.191532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.615614, 14.650757, 16.674341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.961182, 14.512564, 16.820921>,  <11.168523, 14.429648, 16.908869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.961182, 14.512564, 16.820921>,  <10.615614, 14.650757, 16.674341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.961182, 14.512564, 16.820921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325225, 0.172859, 0.929703,
		-0.384540, -0.922367, 0.036977,
		0.863920, -0.345482, 0.366448,
		11.220358, 14.408919, 16.930855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.380523, 14.275765, 17.195627>,  <10.615614, 14.650757, 16.674341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.380523, 14.275765, 17.195627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.762207, 14.336530, 17.298706>,  <10.991218, 14.372988, 17.360554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.762207, 14.336530, 17.298706>,  <10.380523, 14.275765, 17.195627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.762207, 14.336530, 17.298706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285900, 0.209688, 0.935036,
		0.088004, -0.965896, 0.243517,
		0.954210, 0.151909, 0.257696,
		11.048470, 14.382103, 17.376015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.319476, 14.007414, 17.810398>,  <10.380523, 14.275765, 17.195627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.319476, 14.007414, 17.810398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.666805, 14.203127, 17.777853>,  <10.875202, 14.320555, 17.758326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.666805, 14.203127, 17.777853>,  <10.319476, 14.007414, 17.810398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.666805, 14.203127, 17.777853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047891, 0.245973, 0.968093,
		0.493685, -0.836719, 0.237016,
		0.868321, 0.489283, -0.081362,
		10.927301, 14.349912, 17.753445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.851645, 13.792387, 18.325354>,  <10.319476, 14.007414, 17.810398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.851645, 13.792387, 18.325354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.894650, 14.177887, 18.227676>,  <10.920452, 14.409186, 18.169071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.894650, 14.177887, 18.227676>,  <10.851645, 13.792387, 18.325354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.894650, 14.177887, 18.227676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281619, 0.265076, 0.922185,
		0.953484, -0.030375, 0.299909,
		0.107510, 0.963749, -0.244191,
		10.926903, 14.467011, 18.154419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.075924, 14.092738, 18.959993>,  <10.851645, 13.792387, 18.325354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.075924, 14.092738, 18.959993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.948555, 14.399393, 18.736969>,  <10.872134, 14.583386, 18.603153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.948555, 14.399393, 18.736969>,  <11.075924, 14.092738, 18.959993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.948555, 14.399393, 18.736969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251280, 0.498874, 0.829447,
		0.914038, 0.404218, 0.033788,
		-0.318421, 0.766637, -0.557562,
		10.853028, 14.629384, 18.569700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.163543, 14.564435, 19.373608>,  <11.075924, 14.092738, 18.959993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.163543, 14.564435, 19.373608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.974906, 14.781238, 19.095375>,  <10.861724, 14.911319, 18.928436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.974906, 14.781238, 19.095375>,  <11.163543, 14.564435, 19.373608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.974906, 14.781238, 19.095375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299086, 0.643733, 0.704383,
		0.829548, 0.540219, -0.141472,
		-0.471591, 0.542007, -0.695579,
		10.833428, 14.943840, 18.886702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.302094, 15.304585, 19.609200>,  <11.163543, 14.564435, 19.373608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.302094, 15.304585, 19.609200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.983265, 15.303099, 19.367649>,  <10.791967, 15.302207, 19.222719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.983265, 15.303099, 19.367649>,  <11.302094, 15.304585, 19.609200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.983265, 15.303099, 19.367649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509901, 0.539897, 0.669711,
		0.323541, 0.841723, -0.432230,
		-0.797071, -0.003715, -0.603874,
		10.744143, 15.301984, 19.186487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.066419, 16.018948, 19.586897>,  <11.302094, 15.304585, 19.609200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.066419, 16.018948, 19.586897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.753777, 15.790565, 19.486416>,  <10.566192, 15.653535, 19.426126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.753777, 15.790565, 19.486416>,  <11.066419, 16.018948, 19.586897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.753777, 15.790565, 19.486416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517458, 0.368606, 0.772247,
		-0.348324, 0.733580, -0.583550,
		-0.781605, -0.570955, -0.251203,
		10.519295, 15.619278, 19.411055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.442710, 16.352627, 19.717283>,  <11.066419, 16.018948, 19.586897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.442710, 16.352627, 19.717283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.301507, 15.979239, 19.691919>,  <10.216785, 15.755207, 19.676701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.301507, 15.979239, 19.691919>,  <10.442710, 16.352627, 19.717283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.301507, 15.979239, 19.691919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651956, 0.196805, 0.732271,
		-0.671074, 0.299837, -0.678055,
		-0.353006, -0.933470, -0.063409,
		10.195605, 15.699199, 19.672897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.755584, 16.403872, 19.819353>,  <10.442710, 16.352627, 19.717283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.755584, 16.403872, 19.819353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.799773, 16.017027, 19.910999>,  <9.826287, 15.784921, 19.965988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.799773, 16.017027, 19.910999>,  <9.755584, 16.403872, 19.819353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.799773, 16.017027, 19.910999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524035, 0.139200, 0.840244,
		-0.844501, -0.212890, -0.491421,
		0.110474, -0.967110, 0.229117,
		9.832915, 15.726894, 19.979734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.197565, 16.282625, 20.196119>,  <9.755584, 16.403872, 19.819353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.197565, 16.282625, 20.196119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.412199, 15.959537, 20.293823>,  <9.540979, 15.765683, 20.352446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.412199, 15.959537, 20.293823>,  <9.197565, 16.282625, 20.196119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.412199, 15.959537, 20.293823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480729, -0.054704, 0.875161,
		-0.693524, -0.587021, -0.417648,
		0.536585, -0.807721, 0.244260,
		9.573174, 15.717220, 20.367102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.716874, 15.826399, 20.339516>,  <9.197565, 16.282625, 20.196119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.716874, 15.826399, 20.339516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.054708, 15.711253, 20.520098>,  <9.257408, 15.642166, 20.628447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.054708, 15.711253, 20.520098>,  <8.716874, 15.826399, 20.339516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.054708, 15.711253, 20.520098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500356, -0.124216, 0.856863,
		-0.190586, -0.949580, -0.248948,
		0.844583, -0.287868, 0.451454,
		9.308083, 15.624894, 20.655535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.591019, 15.155498, 20.752895>,  <8.716874, 15.826399, 20.339516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.591019, 15.155498, 20.752895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.910149, 15.351845, 20.892908>,  <9.101626, 15.469653, 20.976915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.910149, 15.351845, 20.892908>,  <8.591019, 15.155498, 20.752895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.910149, 15.351845, 20.892908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431954, 0.060378, 0.899872,
		0.420586, -0.869138, 0.260204,
		0.797824, 0.490870, 0.350033,
		9.149496, 15.499105, 20.997919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.791508, 14.821850, 21.296989>,  <8.591019, 15.155498, 20.752895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.791508, 14.821850, 21.296989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.972940, 15.173919, 21.352934>,  <9.081800, 15.385160, 21.386499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.972940, 15.173919, 21.352934>,  <8.791508, 14.821850, 21.296989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.972940, 15.173919, 21.352934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275580, -0.010721, 0.961218,
		0.847537, -0.474534, 0.237695,
		0.453582, 0.880172, 0.139859,
		9.109015, 15.437970, 21.394892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.153629, 14.836292, 21.974266>,  <8.791508, 14.821850, 21.296989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.153629, 14.836292, 21.974266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.105514, 15.221440, 21.877592>,  <9.076644, 15.452529, 21.819588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.105514, 15.221440, 21.877592>,  <9.153629, 14.836292, 21.974266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.105514, 15.221440, 21.877592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335798, 0.189637, 0.922647,
		0.934222, 0.192142, 0.300519,
		-0.120290, 0.962870, -0.241684,
		9.069427, 15.510302, 21.805086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.438433, 15.240111, 22.570454>,  <9.153629, 14.836292, 21.974266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.438433, 15.240111, 22.570454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.196129, 15.486770, 22.369335>,  <9.050746, 15.634765, 22.248665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.196129, 15.486770, 22.369335>,  <9.438433, 15.240111, 22.570454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.196129, 15.486770, 22.369335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297109, 0.410909, 0.861905,
		0.738092, 0.671493, -0.065702,
		-0.605761, 0.616645, -0.502795,
		9.014400, 15.671763, 22.218496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.473394, 15.936448, 22.888472>,  <9.438433, 15.240111, 22.570454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.473394, 15.936448, 22.888472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.121344, 15.965875, 22.700871>,  <8.910113, 15.983531, 22.588310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.121344, 15.965875, 22.700871>,  <9.473394, 15.936448, 22.888472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.121344, 15.965875, 22.700871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404456, 0.401097, 0.821911,
		0.248581, 0.913077, -0.323261,
		-0.880127, 0.073567, -0.469004,
		8.857306, 15.987945, 22.560169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.181847, 16.714237, 23.021231>,  <9.473394, 15.936448, 22.888472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.181847, 16.714237, 23.021231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.898526, 16.450436, 22.920540>,  <8.728534, 16.292154, 22.860125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.898526, 16.450436, 22.920540>,  <9.181847, 16.714237, 23.021231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.898526, 16.450436, 22.920540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540771, 0.277716, 0.794003,
		-0.453738, 0.698520, -0.553346,
		-0.708300, -0.659503, -0.251729,
		8.686036, 16.252584, 22.845020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.593562, 17.023891, 23.021854>,  <9.181847, 16.714237, 23.021231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.593562, 17.023891, 23.021854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.466754, 16.646782, 23.063181>,  <8.390669, 16.420517, 23.087976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.466754, 16.646782, 23.063181>,  <8.593562, 17.023891, 23.021854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.466754, 16.646782, 23.063181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592563, 0.281947, 0.754570,
		-0.740518, 0.177994, -0.648036,
		-0.317021, -0.942774, 0.103314,
		8.371648, 16.363949, 23.094175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.971656, 17.077337, 23.390808>,  <8.593562, 17.023891, 23.021854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.971656, 17.077337, 23.390808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.949177, 16.678091, 23.400692>,  <7.935690, 16.438543, 23.406622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.949177, 16.678091, 23.400692>,  <7.971656, 17.077337, 23.390808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.949177, 16.678091, 23.400692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445723, 0.047228, 0.893924,
		-0.893405, 0.039222, -0.447536,
		-0.056198, -0.998114, 0.024711,
		7.932318, 16.378656, 23.408106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.299880, 16.940857, 23.418280>,  <7.971656, 17.077337, 23.390808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.299880, 16.940857, 23.418280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.494029, 16.625797, 23.570082>,  <7.610518, 16.436762, 23.661163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.494029, 16.625797, 23.570082>,  <7.299880, 16.940857, 23.418280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.494029, 16.625797, 23.570082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346206, 0.225435, 0.910670,
		-0.802842, -0.573401, -0.163269,
		0.485373, -0.787649, 0.379503,
		7.639640, 16.389503, 23.683933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.838000, 16.642315, 23.897528>,  <7.299880, 16.940857, 23.418280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.838000, 16.642315, 23.897528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.210032, 16.535870, 23.998825>,  <7.433252, 16.472002, 24.059603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.210032, 16.535870, 23.998825>,  <6.838000, 16.642315, 23.897528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.210032, 16.535870, 23.998825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155777, 0.338607, 0.927943,
		-0.332688, -0.902512, 0.273478,
		0.930082, -0.266114, 0.253242,
		7.489057, 16.456036, 24.074797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.845822, 16.474352, 24.631908>,  <6.838000, 16.642315, 23.897528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.845822, 16.474352, 24.631908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.237574, 16.524305, 24.568390>,  <7.472626, 16.554277, 24.530279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.237574, 16.524305, 24.568390>,  <6.845822, 16.474352, 24.631908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.237574, 16.524305, 24.568390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123536, 0.251730, 0.959881,
		0.159846, -0.959706, 0.231112,
		0.979381, 0.124883, -0.158796,
		7.531388, 16.561771, 24.520750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.153262, 15.953923, 25.056459>,  <6.845822, 16.474352, 24.631908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.153262, 15.953923, 25.056459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.439791, 16.229528, 25.012381>,  <7.611709, 16.394892, 24.985933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.439791, 16.229528, 25.012381>,  <7.153262, 15.953923, 25.056459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.439791, 16.229528, 25.012381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075995, 0.079951, 0.993898,
		0.693619, -0.720325, 0.004909,
		0.716322, 0.689014, -0.110197,
		7.654688, 16.436232, 24.979322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.619625, 15.726328, 25.546156>,  <7.153262, 15.953923, 25.056459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.619625, 15.726328, 25.546156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.717405, 16.105396, 25.464022>,  <7.776073, 16.332838, 25.414742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.717405, 16.105396, 25.464022>,  <7.619625, 15.726328, 25.546156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.717405, 16.105396, 25.464022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179125, 0.163985, 0.970063,
		0.952973, -0.273913, -0.129666,
		0.244450, 0.947671, -0.205338,
		7.790740, 16.389698, 25.402420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.192959, 15.740456, 25.913082>,  <7.619625, 15.726328, 25.546156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.192959, 15.740456, 25.913082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.084208, 16.121014, 25.855215>,  <8.018957, 16.349348, 25.820494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.084208, 16.121014, 25.855215>,  <8.192959, 15.740456, 25.913082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.084208, 16.121014, 25.855215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318217, 0.230756, 0.919505,
		0.908196, 0.203957, -0.365487,
		-0.271877, 0.951396, -0.144669,
		8.002645, 16.406433, 25.811815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.861281, 16.120829, 25.965994>,  <8.192959, 15.740456, 25.913082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.861281, 16.120829, 25.965994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.528452, 16.332254, 26.033251>,  <8.328754, 16.459110, 26.073605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.528452, 16.332254, 26.033251>,  <8.861281, 16.120829, 25.965994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.528452, 16.332254, 26.033251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303569, 0.180259, 0.935603,
		0.464220, 0.829532, -0.310445,
		-0.832073, 0.528567, 0.168140,
		8.278830, 16.490824, 26.083693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.127892, 16.498177, 26.484226>,  <8.861281, 16.120829, 25.965994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.127892, 16.498177, 26.484226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.730873, 16.544498, 26.499382>,  <8.492661, 16.572290, 26.508474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.730873, 16.544498, 26.499382>,  <9.127892, 16.498177, 26.484226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.730873, 16.544498, 26.499382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046207, 0.070016, 0.996475,
		0.112742, 0.990801, -0.074845,
		-0.992549, 0.115803, 0.037888,
		8.433108, 16.579239, 26.510748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.033593, 17.042175, 26.921494>,  <9.127892, 16.498177, 26.484226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.033593, 17.042175, 26.921494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.699515, 16.822199, 26.922928>,  <8.499068, 16.690212, 26.923788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.699515, 16.822199, 26.922928>,  <9.033593, 17.042175, 26.921494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.699515, 16.822199, 26.922928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041983, 0.070254, 0.996645,
		-0.548348, 0.832243, -0.081764,
		-0.835195, -0.549942, 0.003583,
		8.448956, 16.657217, 26.924004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.484610, 17.471132, 27.274689>,  <9.033593, 17.042175, 26.921494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.484610, 17.471132, 27.274689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.463456, 17.073820, 27.315872>,  <8.450765, 16.835434, 27.340582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.463456, 17.073820, 27.315872>,  <8.484610, 17.471132, 27.274689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.463456, 17.073820, 27.315872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023559, 0.101835, 0.994522,
		-0.998323, 0.055019, 0.018016,
		-0.052883, -0.993279, 0.102960,
		8.447592, 16.775837, 27.346760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.900823, 17.311810, 27.637966>,  <8.484610, 17.471132, 27.274689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.900823, 17.311810, 27.637966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.206232, 17.075558, 27.742418>,  <8.389478, 16.933807, 27.805090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.206232, 17.075558, 27.742418>,  <7.900823, 17.311810, 27.637966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.206232, 17.075558, 27.742418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034272, 0.366732, 0.929695,
		-0.644870, -0.718794, 0.259766,
		0.763524, -0.590630, 0.261129,
		8.435289, 16.898369, 27.820757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.912849, 16.894650, 28.301714>,  <7.900823, 17.311810, 27.637966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.912849, 16.894650, 28.301714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.307075, 16.929234, 28.243490>,  <8.543610, 16.949984, 28.208555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.307075, 16.929234, 28.243490>,  <7.912849, 16.894650, 28.301714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.307075, 16.929234, 28.243490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104652, 0.364718, 0.925218,
		0.133083, -0.927095, 0.350404,
		0.985564, 0.086461, -0.145560,
		8.602744, 16.955172, 28.199821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.119313, 16.593519, 28.890772>,  <7.912849, 16.894650, 28.301714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.119313, 16.593519, 28.890772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.381667, 16.851448, 28.733791>,  <8.539080, 17.006207, 28.639603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.381667, 16.851448, 28.733791>,  <8.119313, 16.593519, 28.890772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.381667, 16.851448, 28.733791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279132, 0.275872, 0.919772,
		0.701357, -0.712809, 0.000949,
		0.655884, 0.644824, -0.392453,
		8.578432, 17.044895, 28.616055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.397687, 16.817289, 29.455860>,  <8.119313, 16.593519, 28.890772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.397687, 16.817289, 29.455860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.588392, 17.076550, 29.218342>,  <8.702816, 17.232105, 29.075830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.588392, 17.076550, 29.218342>,  <8.397687, 16.817289, 29.455860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.588392, 17.076550, 29.218342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493250, 0.361883, 0.791041,
		0.727600, -0.670030, -0.147169,
		0.476763, 0.648152, -0.593798,
		8.731421, 17.270994, 29.040203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.169569, 16.698547, 29.329363>,  <8.397687, 16.817289, 29.455860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.169569, 16.698547, 29.329363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.038013, 17.076056, 29.342791>,  <8.959079, 17.302561, 29.350847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.038013, 17.076056, 29.342791>,  <9.169569, 16.698547, 29.329363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.038013, 17.076056, 29.342791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601170, 0.181821, 0.778162,
		0.728303, 0.276112, -0.627166,
		-0.328892, 0.943771, 0.033570,
		8.939345, 17.359186, 29.352861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.614899, 16.492340, 29.851229>,  <9.169569, 16.698547, 29.329363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.614899, 16.492340, 29.851229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.626265, 16.335436, 30.218994>,  <9.633084, 16.241293, 30.439653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.626265, 16.335436, 30.218994>,  <9.614899, 16.492340, 29.851229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.626265, 16.335436, 30.218994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951384, 0.271595, 0.145277,
		-0.306695, -0.878844, -0.365473,
		0.028415, -0.392261, 0.919415,
		9.634789, 16.217758, 30.494820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.998900, 16.604040, 30.037636>,  <9.614899, 16.492340, 29.851229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.998900, 16.604040, 30.037636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.043489, 16.379414, 30.365591>,  <9.070243, 16.244638, 30.562365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.043489, 16.379414, 30.365591>,  <8.998900, 16.604040, 30.037636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.043489, 16.379414, 30.365591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988150, 0.024964, 0.151447,
		-0.105516, -0.827054, -0.552130,
		0.111472, -0.561567, 0.819888,
		9.076931, 16.210943, 30.611557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.598561, 15.983454, 30.097263>,  <8.998900, 16.604040, 30.037636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.598561, 15.983454, 30.097263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.659011, 16.143110, 30.459003>,  <8.695281, 16.238905, 30.676046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.659011, 16.143110, 30.459003>,  <8.598561, 15.983454, 30.097263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.659011, 16.143110, 30.459003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985452, 0.132797, 0.106066,
		-0.077760, -0.907222, 0.413402,
		0.151124, 0.399140, 0.904350,
		8.704348, 16.262854, 30.730309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.079297, 15.694446, 30.603439>,  <8.598561, 15.983454, 30.097263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.079297, 15.694446, 30.603439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.200308, 16.048912, 30.743832>,  <8.272914, 16.261593, 30.828066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.200308, 16.048912, 30.743832>,  <8.079297, 15.694446, 30.603439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.200308, 16.048912, 30.743832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951261, 0.257594, 0.169555,
		0.059844, -0.385168, 0.920904,
		0.302526, 0.886167, 0.350979,
		8.291066, 16.314762, 30.849125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.575788, 15.198754, 30.490067>,  <8.079297, 15.694446, 30.603439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.575788, 15.198754, 30.490067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.399991, 15.026322, 30.174849>,  <8.294513, 14.922863, 29.985718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.399991, 15.026322, 30.174849>,  <8.575788, 15.198754, 30.490067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.399991, 15.026322, 30.174849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799318, -0.587942, -0.124160,
		-0.409803, -0.684467, 0.602965,
		-0.439491, -0.431080, -0.788047,
		8.268144, 14.896998, 29.938435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.145368, 14.829997, 30.247246>,  <8.575788, 15.198754, 30.490067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.145368, 14.829997, 30.247246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.895736, 14.711462, 29.958052>,  <8.745956, 14.640341, 29.784534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.895736, 14.711462, 29.958052>,  <9.145368, 14.829997, 30.247246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.895736, 14.711462, 29.958052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717749, -0.583108, -0.380555,
		-0.308807, -0.756419, 0.576601,
		-0.624080, -0.296337, -0.722986,
		8.708511, 14.622561, 29.741156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.233991, 14.086372, 30.099487>,  <9.145368, 14.829997, 30.247246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.233991, 14.086372, 30.099487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.053837, 14.256570, 29.785517>,  <8.945745, 14.358688, 29.597134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.053837, 14.256570, 29.785517>,  <9.233991, 14.086372, 30.099487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.053837, 14.256570, 29.785517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677304, -0.409987, -0.610876,
		-0.581733, -0.806763, -0.103537,
		-0.450383, 0.425493, -0.784927,
		8.918722, 14.384218, 29.550039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.117602, 13.548002, 29.696482>,  <9.233991, 14.086372, 30.099487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.117602, 13.548002, 29.696482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.077374, 13.873490, 29.467485>,  <9.053238, 14.068784, 29.330088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.077374, 13.873490, 29.467485>,  <9.117602, 13.548002, 29.696482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.077374, 13.873490, 29.467485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520498, -0.447353, -0.727295,
		-0.847920, -0.371123, -0.378549,
		-0.100571, 0.813721, -0.572488,
		9.047203, 14.117607, 29.295738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.779419, 13.321837, 28.998196>,  <9.117602, 13.548002, 29.696482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.779419, 13.321837, 28.998196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.952227, 13.667806, 28.896002>,  <9.055911, 13.875386, 28.834686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.952227, 13.667806, 28.896002>,  <8.779419, 13.321837, 28.998196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.952227, 13.667806, 28.896002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542212, -0.475465, -0.692776,
		-0.720670, 0.160766, -0.674380,
		0.432019, 0.864921, -0.255484,
		9.081832, 13.927282, 28.819357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.765948, 13.367156, 28.253218>,  <8.779419, 13.321837, 28.998196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.765948, 13.367156, 28.253218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.046726, 13.641541, 28.329874>,  <9.215193, 13.806173, 28.375868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.046726, 13.641541, 28.329874>,  <8.765948, 13.367156, 28.253218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.046726, 13.641541, 28.329874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543704, -0.342287, -0.766306,
		-0.460063, 0.642100, -0.613229,
		0.701946, 0.685964, 0.191639,
		9.257310, 13.847331, 28.387365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.890206, 13.702162, 27.607248>,  <8.765948, 13.367156, 28.253218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.890206, 13.702162, 27.607248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.211099, 13.775493, 27.834517>,  <9.403634, 13.819491, 27.970877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.211099, 13.775493, 27.834517>,  <8.890206, 13.702162, 27.607248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.211099, 13.775493, 27.834517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589603, -0.093785, -0.802230,
		-0.093785, 0.978568, -0.183327,
		0.802230, 0.183327, 0.568171,
		9.451768, 13.830491, 28.004969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.205911, 14.243822, 27.261801>,  <8.890206, 13.702162, 27.607248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.205911, 14.243822, 27.261801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.484960, 14.077576, 27.495241>,  <9.652389, 13.977828, 27.635305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.484960, 14.077576, 27.495241>,  <9.205911, 14.243822, 27.261801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.484960, 14.077576, 27.495241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536164, -0.237458, -0.810026,
		0.475239, 0.877996, 0.057183,
		0.697621, -0.415615, 0.583600,
		9.694246, 13.952891, 27.670321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.900970, 14.498529, 27.056456>,  <9.205911, 14.243822, 27.261801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.900970, 14.498529, 27.056456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.924590, 14.142237, 27.236727>,  <9.938762, 13.928461, 27.344889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.924590, 14.142237, 27.236727>,  <9.900970, 14.498529, 27.056456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.924590, 14.142237, 27.236727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686687, -0.291436, -0.665978,
		0.724551, 0.348799, 0.594445,
		0.059050, -0.890732, 0.450676,
		9.942306, 13.875017, 27.371929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.634422, 14.409206, 27.069639>,  <9.900970, 14.498529, 27.056456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.634422, 14.409206, 27.069639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.512757, 14.034915, 27.141081>,  <10.439758, 13.810340, 27.183947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.512757, 14.034915, 27.141081>,  <10.634422, 14.409206, 27.069639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.512757, 14.034915, 27.141081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565210, -0.328186, -0.756857,
		0.766827, -0.129259, 0.628704,
		-0.304162, -0.935728, 0.178603,
		10.421509, 13.754196, 27.194662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.252877, 13.974205, 27.039745>,  <10.634422, 14.409206, 27.069639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.252877, 13.974205, 27.039745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.931201, 13.744170, 26.979675>,  <10.738195, 13.606150, 26.943634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.931201, 13.744170, 26.979675>,  <11.252877, 13.974205, 27.039745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.931201, 13.744170, 26.979675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430022, -0.388527, -0.814941,
		0.410316, -0.719945, 0.559750,
		-0.804191, -0.575087, -0.150173,
		10.689943, 13.571644, 26.934624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.531168, 13.289823, 26.901375>,  <11.252877, 13.974205, 27.039745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.531168, 13.289823, 26.901375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.169815, 13.344513, 26.738792>,  <10.953003, 13.377327, 26.641243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.169815, 13.344513, 26.738792>,  <11.531168, 13.289823, 26.901375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.169815, 13.344513, 26.738792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307054, -0.455417, -0.835651,
		-0.299361, -0.879717, 0.369434,
		-0.903383, 0.136725, -0.406455,
		10.898800, 13.385530, 26.616856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.322032, 12.577066, 26.842388>,  <11.531168, 13.289823, 26.901375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.322032, 12.577066, 26.842388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.114534, 12.812647, 26.594503>,  <10.990036, 12.953996, 26.445772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.114534, 12.812647, 26.594503>,  <11.322032, 12.577066, 26.842388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.114534, 12.812647, 26.594503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293404, -0.558202, -0.776096,
		-0.803007, -0.584420, 0.116762,
		-0.518743, 0.588952, -0.619711,
		10.958912, 12.989332, 26.408590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.202029, 12.207371, 26.200539>,  <11.322032, 12.577066, 26.842388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.202029, 12.207371, 26.200539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.141794, 12.578603, 26.064310>,  <11.105653, 12.801342, 25.982573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.141794, 12.578603, 26.064310>,  <11.202029, 12.207371, 26.200539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.141794, 12.578603, 26.064310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435056, -0.247134, -0.865824,
		-0.887722, -0.278549, -0.366552,
		-0.150587, 0.928081, -0.340571,
		11.096618, 12.857027, 25.962139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.707959, 12.140823, 25.604673>,  <11.202029, 12.207371, 26.200539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.707959, 12.140823, 25.604673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.917221, 12.481071, 25.583656>,  <11.042778, 12.685219, 25.571047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.917221, 12.481071, 25.583656>,  <10.707959, 12.140823, 25.604673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.917221, 12.481071, 25.583656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290486, -0.235938, -0.927335,
		-0.801204, 0.469876, -0.370525,
		0.523154, 0.850617, -0.052542,
		11.074167, 12.736256, 25.567894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.431553, 12.487062, 25.012245>,  <10.707959, 12.140823, 25.604673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.431553, 12.487062, 25.012245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.786124, 12.651664, 25.097012>,  <10.998867, 12.750424, 25.147871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.786124, 12.651664, 25.097012>,  <10.431553, 12.487062, 25.012245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.786124, 12.651664, 25.097012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281660, -0.116244, -0.952447,
		-0.367302, 0.903964, -0.218946,
		0.886429, 0.411504, 0.211914,
		11.052053, 12.775115, 25.160585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.575525, 13.198412, 24.635098>,  <10.431553, 12.487062, 25.012245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.575525, 13.198412, 24.635098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.905211, 12.980766, 24.697845>,  <11.103024, 12.850179, 24.735495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.905211, 12.980766, 24.697845>,  <10.575525, 13.198412, 24.635098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.905211, 12.980766, 24.697845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212346, 0.040164, -0.976369,
		0.524955, 0.838049, 0.148644,
		0.824216, -0.544114, 0.156872,
		11.152476, 12.817533, 24.744907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.068836, 13.532972, 24.371536>,  <10.575525, 13.198412, 24.635098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.068836, 13.532972, 24.371536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.237106, 13.170388, 24.386293>,  <11.338068, 12.952838, 24.395147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.237106, 13.170388, 24.386293>,  <11.068836, 13.532972, 24.371536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.237106, 13.170388, 24.386293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077983, -0.004384, -0.996945,
		0.903853, 0.422267, 0.068844,
		0.420675, -0.906461, 0.036892,
		11.363309, 12.898450, 24.397362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.501892, 13.624113, 23.816063>,  <11.068836, 13.532972, 24.371536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.501892, 13.624113, 23.816063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.503249, 13.226546, 23.860090>,  <11.504064, 12.988006, 23.886507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.503249, 13.226546, 23.860090>,  <11.501892, 13.624113, 23.816063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.503249, 13.226546, 23.860090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012751, -0.110103, -0.993838,
		0.999913, 0.001968, -0.013047,
		0.003392, -0.993918, 0.110069,
		11.504267, 12.928370, 23.893110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.088352, 13.386965, 23.399309>,  <11.501892, 13.624113, 23.816063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.088352, 13.386965, 23.399309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.849661, 13.070458, 23.452694>,  <11.706446, 12.880554, 23.484724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.849661, 13.070458, 23.452694>,  <12.088352, 13.386965, 23.399309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.849661, 13.070458, 23.452694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169904, -0.287136, -0.942701,
		0.784249, -0.539861, 0.305782,
		-0.596729, -0.791266, 0.133462,
		11.670642, 12.833078, 23.492733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.425924, 12.648624, 23.200212>,  <12.088352, 13.386965, 23.399309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.425924, 12.648624, 23.200212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.032119, 12.590837, 23.160486>,  <11.795835, 12.556164, 23.136650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.032119, 12.590837, 23.160486>,  <12.425924, 12.648624, 23.200212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.032119, 12.590837, 23.160486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127138, -0.198305, -0.971860,
		0.120710, -0.969435, 0.213602,
		-0.984513, -0.144470, -0.099314,
		11.736765, 12.547496, 23.130692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.368959, 12.010087, 22.797375>,  <12.425924, 12.648624, 23.200212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.368959, 12.010087, 22.797375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.041577, 12.238744, 22.774200>,  <11.845148, 12.375937, 22.760296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.041577, 12.238744, 22.774200>,  <12.368959, 12.010087, 22.797375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.041577, 12.238744, 22.774200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011094, -0.085090, -0.996311,
		-0.574463, -0.816079, 0.063301,
		-0.818455, 0.571642, -0.057935,
		11.796041, 12.410236, 22.756821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.908397, 11.596005, 22.421322>,  <12.368959, 12.010087, 22.797375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.908397, 11.596005, 22.421322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.781023, 11.972634, 22.377432>,  <11.704599, 12.198612, 22.351097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.781023, 11.972634, 22.377432>,  <11.908397, 11.596005, 22.421322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.781023, 11.972634, 22.377432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031809, -0.105073, -0.993956,
		-0.947411, -0.319999, 0.003508,
		-0.318434, 0.941573, -0.109726,
		11.685493, 12.255106, 22.344515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.421014, 11.479147, 21.894537>,  <11.908397, 11.596005, 22.421322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.421014, 11.479147, 21.894537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.524753, 11.865443, 21.890902>,  <11.586996, 12.097221, 21.888720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.524753, 11.865443, 21.890902>,  <11.421014, 11.479147, 21.894537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.524753, 11.865443, 21.890902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173224, -0.055774, -0.983302,
		-0.950123, 0.253441, -0.181755,
		0.259346, 0.965742, -0.009090,
		11.602556, 12.155166, 21.888174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.931485, 11.674147, 21.332987>,  <11.421014, 11.479147, 21.894537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.931485, 11.674147, 21.332987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.200684, 11.966693, 21.377136>,  <11.362203, 12.142220, 21.403625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.200684, 11.966693, 21.377136>,  <10.931485, 11.674147, 21.332987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.200684, 11.966693, 21.377136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176169, -0.013571, -0.984267,
		-0.718360, 0.681852, -0.137977,
		0.672996, 0.731364, 0.110372,
		11.402582, 12.186102, 21.410248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.781883, 12.179942, 20.898111>,  <10.931485, 11.674147, 21.332987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.781883, 12.179942, 20.898111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.174871, 12.217594, 20.962473>,  <11.410665, 12.240186, 21.001089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.174871, 12.217594, 20.962473>,  <10.781883, 12.179942, 20.898111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.174871, 12.217594, 20.962473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163577, -0.021352, -0.986300,
		-0.089406, 0.995331, -0.036376,
		0.982471, 0.094131, 0.160904,
		11.469613, 12.245833, 21.010744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.983553, 12.795273, 20.476004>,  <10.781883, 12.179942, 20.898111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.983553, 12.795273, 20.476004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.330471, 12.603170, 20.528393>,  <11.538622, 12.487908, 20.559826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.330471, 12.603170, 20.528393>,  <10.983553, 12.795273, 20.476004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.330471, 12.603170, 20.528393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205818, 0.106397, -0.972789,
		0.453254, 0.870651, 0.191123,
		0.867295, -0.480257, 0.130971,
		11.590659, 12.459093, 20.567684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.527614, 13.131216, 20.134935>,  <10.983553, 12.795273, 20.476004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.527614, 13.131216, 20.134935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.671906, 12.759840, 20.170433>,  <11.758480, 12.537015, 20.191730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.671906, 12.759840, 20.170433>,  <11.527614, 13.131216, 20.134935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.671906, 12.759840, 20.170433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237278, -0.000663, -0.971442,
		0.901983, 0.371484, 0.220058,
		0.360729, -0.928439, 0.088743,
		11.780124, 12.481308, 20.197056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.132454, 13.143165, 19.753967>,  <11.527614, 13.131216, 20.134935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.132454, 13.143165, 19.753967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.075966, 12.747715, 19.774677>,  <12.042073, 12.510446, 19.787104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.075966, 12.747715, 19.774677>,  <12.132454, 13.143165, 19.753967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.075966, 12.747715, 19.774677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213622, -0.081500, -0.973511,
		0.966655, -0.126418, 0.222701,
		-0.141220, -0.988623, 0.051776,
		12.033600, 12.451128, 19.790211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.585023, 12.873891, 19.300629>,  <12.132454, 13.143165, 19.753967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.585023, 12.873891, 19.300629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.346830, 12.555815, 19.346363>,  <12.203915, 12.364969, 19.373804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.346830, 12.555815, 19.346363>,  <12.585023, 12.873891, 19.300629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.346830, 12.555815, 19.346363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204890, -0.287941, -0.935473,
		0.776802, -0.533630, 0.334391,
		-0.595481, -0.795191, 0.114337,
		12.168186, 12.317258, 19.380665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.941848, 12.331082, 19.124121>,  <12.585023, 12.873891, 19.300629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.941848, 12.331082, 19.124121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.565831, 12.197929, 19.094425>,  <12.340221, 12.118037, 19.076609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.565831, 12.197929, 19.094425>,  <12.941848, 12.331082, 19.124121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.565831, 12.197929, 19.094425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205262, -0.378351, -0.902617,
		0.272378, -0.863736, 0.423993,
		-0.940041, -0.332883, -0.074238,
		12.283819, 12.098064, 19.072153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.038784, 11.668659, 18.827894>,  <12.941848, 12.331082, 19.124121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.038784, 11.668659, 18.827894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.654077, 11.773382, 18.795750>,  <12.423252, 11.836216, 18.776463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.654077, 11.773382, 18.795750>,  <13.038784, 11.668659, 18.827894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.654077, 11.773382, 18.795750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026600, -0.381351, -0.924047,
		-0.272565, -0.886583, 0.373736,
		-0.961770, 0.261805, -0.080360,
		12.365546, 11.851924, 18.771641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.720331, 11.108420, 18.672443>,  <13.038784, 11.668659, 18.827894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.720331, 11.108420, 18.672443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.435335, 11.366415, 18.561918>,  <12.264338, 11.521212, 18.495604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.435335, 11.366415, 18.561918>,  <12.720331, 11.108420, 18.672443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.435335, 11.366415, 18.561918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051755, -0.441021, -0.896003,
		-0.699770, -0.624093, 0.347605,
		-0.712490, 0.644987, -0.276313,
		12.221588, 11.559911, 18.479025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.207240, 10.684495, 18.412882>,  <12.720331, 11.108420, 18.672443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.207240, 10.684495, 18.412882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.156255, 11.044273, 18.245668>,  <12.125664, 11.260140, 18.145340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.156255, 11.044273, 18.245668>,  <12.207240, 10.684495, 18.412882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.156255, 11.044273, 18.245668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038558, -0.425646, -0.904068,
		-0.991094, -0.099117, 0.088935,
		-0.127463, 0.899445, -0.418033,
		12.118015, 11.314107, 18.120258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.790448, 10.559052, 17.922071>,  <12.207240, 10.684495, 18.412882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.790448, 10.559052, 17.922071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.959439, 10.908494, 17.825470>,  <12.060834, 11.118159, 17.767509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.959439, 10.908494, 17.825470>,  <11.790448, 10.559052, 17.922071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.959439, 10.908494, 17.825470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055289, -0.290793, -0.955187,
		-0.904686, 0.390192, -0.171154,
		0.422477, 0.873607, -0.241503,
		12.086183, 11.170576, 17.753019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.482481, 10.830770, 17.315514>,  <11.790448, 10.559052, 17.922071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.482481, 10.830770, 17.315514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.836226, 11.017292, 17.306925>,  <12.048473, 11.129206, 17.301771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.836226, 11.017292, 17.306925>,  <11.482481, 10.830770, 17.315514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.836226, 11.017292, 17.306925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114320, -0.260951, -0.958559,
		-0.452586, 0.845259, -0.284083,
		0.884362, 0.466307, -0.021472,
		12.101535, 11.157184, 17.300484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.479221, 11.336313, 16.755648>,  <11.482481, 10.830770, 17.315514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.479221, 11.336313, 16.755648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.855094, 11.226166, 16.836809>,  <12.080618, 11.160077, 16.885506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.855094, 11.226166, 16.836809>,  <11.479221, 11.336313, 16.755648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.855094, 11.226166, 16.836809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129555, -0.262468, -0.956204,
		0.316563, 0.924815, -0.210962,
		0.939683, -0.275368, 0.202902,
		12.136999, 11.143556, 16.897680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.943730, 11.640954, 16.246702>,  <11.479221, 11.336313, 16.755648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.943730, 11.640954, 16.246702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.205320, 11.369839, 16.381117>,  <12.362274, 11.207170, 16.461765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.205320, 11.369839, 16.381117>,  <11.943730, 11.640954, 16.246702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.205320, 11.369839, 16.381117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247969, -0.227602, -0.941652,
		0.714723, 0.699144, 0.019225,
		0.653975, -0.677787, 0.336038,
		12.401513, 11.166502, 16.481928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.596596, 11.854961, 15.990507>,  <11.943730, 11.640954, 16.246702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.596596, 11.854961, 15.990507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.616037, 11.464109, 16.073311>,  <12.627703, 11.229598, 16.122993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.616037, 11.464109, 16.073311>,  <12.596596, 11.854961, 15.990507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.616037, 11.464109, 16.073311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359890, -0.176201, -0.916205,
		0.931728, 0.119032, 0.343095,
		0.048604, -0.977131, 0.207010,
		12.630619, 11.170970, 16.135414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.149858, 11.676911, 15.758265>,  <12.596596, 11.854961, 15.990507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.149858, 11.676911, 15.758265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.033733, 11.294672, 15.778472>,  <12.964059, 11.065329, 15.790596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.033733, 11.294672, 15.778472>,  <13.149858, 11.676911, 15.758265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.033733, 11.294672, 15.778472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578539, -0.217322, -0.786171,
		0.762242, -0.199006, 0.615941,
		-0.290310, -0.955598, 0.050519,
		12.946640, 11.007993, 15.793628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.755187, 11.324224, 15.676317>,  <13.149858, 11.676911, 15.758265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.755187, 11.324224, 15.676317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.447494, 11.079931, 15.601176>,  <13.262877, 10.933356, 15.556092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.447494, 11.079931, 15.601176>,  <13.755187, 11.324224, 15.676317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.447494, 11.079931, 15.601176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485862, -0.368127, -0.792730,
		0.414990, -0.701065, 0.579906,
		-0.769234, -0.610730, -0.187851,
		13.216723, 10.896712, 15.544821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.977079, 10.618261, 15.612691>,  <13.755187, 11.324224, 15.676317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.977079, 10.618261, 15.612691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.675028, 10.730223, 15.375564>,  <13.493797, 10.797400, 15.233287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.675028, 10.730223, 15.375564>,  <13.977079, 10.618261, 15.612691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.675028, 10.730223, 15.375564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548214, -0.226273, -0.805147,
		-0.359503, -0.932982, 0.017418,
		-0.755128, 0.279904, -0.592819,
		13.448489, 10.814194, 15.197718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.585835, 10.850340, 16.156025>,  <13.977079, 10.618261, 15.612691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.585835, 10.850340, 16.156025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.976448, 10.809180, 16.080341>,  <15.210815, 10.784485, 16.034931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.976448, 10.809180, 16.080341>,  <14.585835, 10.850340, 16.156025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.976448, 10.809180, 16.080341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210268, 0.265224, 0.940980,
		-0.046644, -0.958680, 0.280635,
		0.976531, -0.102899, -0.189209,
		15.269407, 10.778311, 16.023579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.781587, 10.494732, 16.765951>,  <14.585835, 10.850340, 16.156025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.781587, 10.494732, 16.765951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.068575, 10.681578, 16.559248>,  <15.240768, 10.793685, 16.435226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.068575, 10.681578, 16.559248>,  <14.781587, 10.494732, 16.765951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.068575, 10.681578, 16.559248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433514, 0.281256, 0.856132,
		0.545254, -0.838271, -0.000709,
		0.717470, 0.467117, -0.516757,
		15.283816, 10.821712, 16.404221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.372324, 10.478666, 17.146358>,  <14.781587, 10.494732, 16.765951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.372324, 10.478666, 17.146358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.462397, 10.794452, 16.917959>,  <15.516440, 10.983923, 16.780920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.462397, 10.794452, 16.917959>,  <15.372324, 10.478666, 17.146358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.462397, 10.794452, 16.917959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375090, 0.470638, 0.798628,
		0.899222, -0.394012, -0.190141,
		0.225182, 0.789464, -0.570998,
		15.529951, 11.031291, 16.746660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.051916, 10.739702, 17.450195>,  <15.372324, 10.478666, 17.146358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.051916, 10.739702, 17.450195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.899825, 11.036934, 17.229919>,  <15.808571, 11.215273, 17.097754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.899825, 11.036934, 17.229919>,  <16.051916, 10.739702, 17.450195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.899825, 11.036934, 17.229919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303683, 0.662703, 0.684545,
		0.873616, 0.093046, -0.477638,
		-0.380226, 0.743079, -0.550691,
		15.785757, 11.259858, 17.064713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.578558, 11.196658, 17.308390>,  <16.051916, 10.739702, 17.450195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.578558, 11.196658, 17.308390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.221315, 11.376594, 17.308996>,  <16.006969, 11.484555, 17.309361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.221315, 11.376594, 17.308996>,  <16.578558, 11.196658, 17.308390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.221315, 11.376594, 17.308996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249604, 0.492755, 0.833601,
		0.374240, 0.744874, -0.552365,
		-0.893108, 0.449839, 0.001515,
		15.953382, 11.511545, 17.309450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.781805, 11.803635, 17.486164>,  <16.578558, 11.196658, 17.308390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.781805, 11.803635, 17.486164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.385023, 11.833256, 17.527243>,  <16.146954, 11.851028, 17.551889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.385023, 11.833256, 17.527243>,  <16.781805, 11.803635, 17.486164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.385023, 11.833256, 17.527243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126605, 0.588089, 0.798826,
		-0.001238, 0.805399, -0.592732,
		-0.991952, 0.074054, 0.102696,
		16.087437, 11.855472, 17.558052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.685888, 12.515548, 17.709465>,  <16.781805, 11.803635, 17.486164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.685888, 12.515548, 17.709465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.366550, 12.300521, 17.818035>,  <16.174948, 12.171505, 17.883177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.366550, 12.300521, 17.818035>,  <16.685888, 12.515548, 17.709465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.366550, 12.300521, 17.818035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042101, 0.499439, 0.865326,
		-0.600730, 0.679399, -0.421355,
		-0.798343, -0.537567, 0.271425,
		16.127048, 12.139251, 17.899462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.062273, 13.046737, 17.910624>,  <16.685888, 12.515548, 17.709465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.062273, 13.046737, 17.910624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.975133, 12.687559, 18.063589>,  <15.922849, 12.472053, 18.155369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.975133, 12.687559, 18.063589>,  <16.062273, 13.046737, 17.910624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.975133, 12.687559, 18.063589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137068, 0.416088, 0.898934,
		-0.966309, 0.143417, -0.213724,
		-0.217851, -0.897943, 0.382412,
		15.909778, 12.418176, 18.178312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.324671, 13.073649, 18.019075>,  <16.062273, 13.046737, 17.910624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.324671, 13.073649, 18.019075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.482791, 12.800137, 18.264410>,  <15.577663, 12.636029, 18.411610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.482791, 12.800137, 18.264410>,  <15.324671, 13.073649, 18.019075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.482791, 12.800137, 18.264410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316561, 0.525401, 0.789774,
		-0.862280, -0.506356, -0.008767,
		0.395301, -0.683782, 0.613335,
		15.601381, 12.595002, 18.448410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.866446, 13.040889, 18.566948>,  <15.324671, 13.073649, 18.019075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.866446, 13.040889, 18.566948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.179657, 12.837538, 18.710293>,  <15.367583, 12.715528, 18.796299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.179657, 12.837538, 18.710293>,  <14.866446, 13.040889, 18.566948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.179657, 12.837538, 18.710293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318277, 0.167517, 0.933080,
		-0.534388, -0.844684, -0.030635,
		0.783025, -0.508377, 0.358362,
		15.414565, 12.685025, 18.817802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.590268, 12.644423, 19.084740>,  <14.866446, 13.040889, 18.566948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.590268, 12.644423, 19.084740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973421, 12.662179, 19.198223>,  <15.203313, 12.672832, 19.266314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973421, 12.662179, 19.198223>,  <14.590268, 12.644423, 19.084740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.973421, 12.662179, 19.198223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286767, 0.096099, 0.953168,
		0.015044, -0.994381, 0.104781,
		0.957883, 0.044387, 0.283710,
		15.260786, 12.675496, 19.283337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.798844, 12.173118, 19.661901>,  <14.590268, 12.644423, 19.084740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.798844, 12.173118, 19.661901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.086040, 12.448174, 19.705063>,  <15.258358, 12.613207, 19.730959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.086040, 12.448174, 19.705063>,  <14.798844, 12.173118, 19.661901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.086040, 12.448174, 19.705063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164431, 0.016928, 0.986243,
		0.676354, -0.725855, 0.125223,
		0.717989, 0.687640, 0.107904,
		15.301437, 12.654466, 19.737434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.263768, 11.901634, 20.230057>,  <14.798844, 12.173118, 19.661901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.263768, 11.901634, 20.230057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.278746, 12.300575, 20.205124>,  <15.287732, 12.539940, 20.190165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.278746, 12.300575, 20.205124>,  <15.263768, 11.901634, 20.230057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.278746, 12.300575, 20.205124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170962, 0.067852, 0.982939,
		0.984566, -0.026148, 0.173050,
		0.037444, 0.997353, -0.062334,
		15.289979, 12.599781, 20.186424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687000, 12.149068, 20.785957>,  <15.263768, 11.901634, 20.230057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.687000, 12.149068, 20.785957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.491927, 12.471347, 20.651485>,  <15.374884, 12.664714, 20.570803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.491927, 12.471347, 20.651485>,  <15.687000, 12.149068, 20.785957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.491927, 12.471347, 20.651485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246580, 0.242277, 0.938349,
		0.837475, 0.540512, 0.080515,
		-0.487682, 0.805698, -0.336181,
		15.345623, 12.713057, 20.550631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.961841, 12.750588, 21.089415>,  <15.687000, 12.149068, 20.785957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.961841, 12.750588, 21.089415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.586955, 12.847227, 20.988806>,  <15.362023, 12.905210, 20.928440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.586955, 12.847227, 20.988806>,  <15.961841, 12.750588, 21.089415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.586955, 12.847227, 20.988806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218245, 0.156245, 0.963305,
		0.272029, 0.957715, -0.093708,
		-0.937213, 0.241596, -0.251520,
		15.305791, 12.919705, 20.913349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868414, 13.323647, 21.471680>,  <15.961841, 12.750588, 21.089415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.868414, 13.323647, 21.471680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.499100, 13.207772, 21.370783>,  <15.277512, 13.138247, 21.310246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.499100, 13.207772, 21.370783>,  <15.868414, 13.323647, 21.471680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.499100, 13.207772, 21.370783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303715, 0.148529, 0.941115,
		-0.235165, 0.945526, -0.225117,
		-0.923285, -0.289689, -0.252241,
		15.222115, 13.120866, 21.295111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.408768, 13.894920, 21.630381>,  <15.868414, 13.323647, 21.471680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.408768, 13.894920, 21.630381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.153611, 13.587955, 21.604534>,  <15.000518, 13.403777, 21.589027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.153611, 13.587955, 21.604534>,  <15.408768, 13.894920, 21.630381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.153611, 13.587955, 21.604534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485189, 0.335305, 0.807566,
		-0.598070, 0.546489, -0.586227,
		-0.637890, -0.767412, -0.064615,
		14.962244, 13.357732, 21.585150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.821809, 14.235934, 21.897930>,  <15.408768, 13.894920, 21.630381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.821809, 14.235934, 21.897930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.760432, 13.848429, 21.975855>,  <14.723606, 13.615925, 22.022610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.760432, 13.848429, 21.975855>,  <14.821809, 14.235934, 21.897930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.760432, 13.848429, 21.975855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554471, 0.247594, 0.794518,
		-0.817935, 0.013896, -0.575143,
		-0.153442, -0.968765, 0.194811,
		14.714399, 13.557799, 22.034298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.125065, 14.183396, 22.021341>,  <14.821809, 14.235934, 21.897930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.125065, 14.183396, 22.021341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.318649, 13.877878, 22.192175>,  <14.434800, 13.694568, 22.294676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.318649, 13.877878, 22.192175>,  <14.125065, 14.183396, 22.021341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.318649, 13.877878, 22.192175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598576, 0.067077, 0.798253,
		-0.638349, -0.641965, -0.424726,
		0.483960, -0.763794, 0.427083,
		14.463838, 13.648740, 22.320299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.573497, 13.969853, 22.440037>,  <14.125065, 14.183396, 22.021341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.573497, 13.969853, 22.440037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.870008, 13.730702, 22.562052>,  <14.047915, 13.587212, 22.635262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.870008, 13.730702, 22.562052>,  <13.573497, 13.969853, 22.440037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.870008, 13.730702, 22.562052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459272, -0.120403, 0.880098,
		-0.489464, -0.792493, -0.363840,
		0.741279, -0.597878, 0.305037,
		14.092392, 13.551339, 22.653563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.351347, 13.449676, 22.833687>,  <13.573497, 13.969853, 22.440037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.351347, 13.449676, 22.833687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.729363, 13.480425, 22.960800>,  <13.956174, 13.498875, 23.037067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.729363, 13.480425, 22.960800>,  <13.351347, 13.449676, 22.833687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.729363, 13.480425, 22.960800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324362, 0.098430, 0.940798,
		0.041037, -0.992171, 0.117953,
		0.945042, 0.076867, 0.317783,
		14.012877, 13.503487, 23.056135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.414474, 12.941926, 23.394417>,  <13.351347, 13.449676, 22.833687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.414474, 12.941926, 23.394417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.689958, 13.230710, 23.421104>,  <13.855248, 13.403980, 23.437117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.689958, 13.230710, 23.421104>,  <13.414474, 12.941926, 23.394417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.689958, 13.230710, 23.421104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208439, 0.109016, 0.971941,
		0.694429, -0.683293, 0.225565,
		0.688710, 0.721960, 0.066721,
		13.896570, 13.447298, 23.441120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.614148, 12.912639, 24.095943>,  <13.414474, 12.941926, 23.394417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.614148, 12.912639, 24.095943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.767144, 13.261049, 23.972647>,  <13.858942, 13.470096, 23.898668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.767144, 13.261049, 23.972647>,  <13.614148, 12.912639, 24.095943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.767144, 13.261049, 23.972647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040000, 0.348909, 0.936302,
		0.923093, -0.345797, 0.168296,
		0.382490, 0.871027, -0.308244,
		13.881891, 13.522357, 23.880173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.143905, 13.093392, 24.616171>,  <13.614148, 12.912639, 24.095943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.143905, 13.093392, 24.616171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.025474, 13.430581, 24.436510>,  <13.954414, 13.632895, 24.328714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.025474, 13.430581, 24.436510>,  <14.143905, 13.093392, 24.616171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.025474, 13.430581, 24.436510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044663, 0.481938, 0.875066,
		0.954119, 0.239028, -0.180342,
		-0.296079, 0.842972, -0.449151,
		13.936650, 13.683473, 24.301765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.531743, 13.497595, 25.057243>,  <14.143905, 13.093392, 24.616171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.531743, 13.497595, 25.057243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.258649, 13.702323, 24.848661>,  <14.094792, 13.825160, 24.723513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.258649, 13.702323, 24.848661>,  <14.531743, 13.497595, 25.057243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.258649, 13.702323, 24.848661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176678, 0.576848, 0.797516,
		0.708984, 0.636621, -0.303407,
		-0.682735, 0.511820, -0.521453,
		14.053828, 13.855869, 24.692226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.630902, 14.154196, 25.376333>,  <14.531743, 13.497595, 25.057243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.630902, 14.154196, 25.376333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.278821, 14.173698, 25.187500>,  <14.067572, 14.185400, 25.074200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.278821, 14.173698, 25.187500>,  <14.630902, 14.154196, 25.376333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.278821, 14.173698, 25.187500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304381, 0.705195, 0.640353,
		0.364133, 0.707335, -0.605875,
		-0.880204, 0.048757, -0.472084,
		14.014760, 14.188326, 25.045876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.476606, 14.914025, 25.277676>,  <14.630902, 14.154196, 25.376333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.476606, 14.914025, 25.277676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.122479, 14.732294, 25.238081>,  <13.910003, 14.623255, 25.214325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.122479, 14.732294, 25.238081>,  <14.476606, 14.914025, 25.277676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.122479, 14.732294, 25.238081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406613, 0.653167, 0.638779,
		-0.225562, 0.605771, -0.762996,
		-0.885318, -0.454328, -0.098985,
		13.856884, 14.595996, 25.208385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.947130, 15.281167, 25.106781>,  <14.476606, 14.914025, 25.277676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.947130, 15.281167, 25.106781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.754936, 14.977864, 25.283045>,  <13.639620, 14.795882, 25.388803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.754936, 14.977864, 25.283045>,  <13.947130, 15.281167, 25.106781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.754936, 14.977864, 25.283045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391196, 0.635008, 0.666131,
		-0.784921, 0.147682, -0.601739,
		-0.480484, -0.758258, 0.440658,
		13.610791, 14.750387, 25.415243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.312381, 15.617874, 25.343851>,  <13.947130, 15.281167, 25.106781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.312381, 15.617874, 25.343851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.375103, 15.294117, 25.570229>,  <13.412736, 15.099862, 25.706055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.375103, 15.294117, 25.570229>,  <13.312381, 15.617874, 25.343851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.375103, 15.294117, 25.570229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399660, 0.472017, 0.785793,
		-0.903152, -0.349402, -0.249468,
		0.156805, -0.809393, 0.565945,
		13.422145, 15.051299, 25.740013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.750932, 15.581952, 25.669712>,  <13.312381, 15.617874, 25.343851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.750932, 15.581952, 25.669712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.003818, 15.364532, 25.890570>,  <13.155549, 15.234080, 26.023085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.003818, 15.364532, 25.890570>,  <12.750932, 15.581952, 25.669712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.003818, 15.364532, 25.890570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375709, 0.408169, 0.832010,
		-0.677606, -0.733453, 0.053834,
		0.632213, -0.543549, 0.552142,
		13.193481, 15.201468, 26.056211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.385676, 15.234128, 26.070541>,  <12.750932, 15.581952, 25.669712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.385676, 15.234128, 26.070541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.735826, 15.242321, 26.263748>,  <12.945915, 15.247237, 26.379671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.735826, 15.242321, 26.263748>,  <12.385676, 15.234128, 26.070541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.735826, 15.242321, 26.263748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472639, 0.246359, 0.846120,
		-0.101664, -0.968962, 0.225337,
		0.875372, 0.020483, 0.483015,
		12.998437, 15.248466, 26.408653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.243166, 14.912605, 26.710175>,  <12.385676, 15.234128, 26.070541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.243166, 14.912605, 26.710175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.607180, 15.066663, 26.771494>,  <12.825588, 15.159098, 26.808285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.607180, 15.066663, 26.771494>,  <12.243166, 14.912605, 26.710175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.607180, 15.066663, 26.771494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285819, 0.315142, 0.904982,
		0.300231, -0.867384, 0.396871,
		0.910038, 0.385137, 0.153299,
		12.880190, 15.182206, 26.817484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.229100, 14.730630, 27.343588>,  <12.243166, 14.912605, 26.710175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.229100, 14.730630, 27.343588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.509975, 15.011929, 27.299088>,  <12.678501, 15.180708, 27.272387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.509975, 15.011929, 27.299088>,  <12.229100, 14.730630, 27.343588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.509975, 15.011929, 27.299088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240962, 0.381760, 0.892299,
		0.669977, -0.599754, 0.437523,
		0.702188, 0.703246, -0.111253,
		12.720632, 15.222902, 27.265713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.632051, 14.804949, 28.042431>,  <12.229100, 14.730630, 27.343588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.632051, 14.804949, 28.042431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.648925, 15.155194, 27.849964>,  <12.659049, 15.365342, 27.734484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.648925, 15.155194, 27.849964>,  <12.632051, 14.804949, 28.042431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.648925, 15.155194, 27.849964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483298, 0.439383, 0.757209,
		0.874439, 0.200604, 0.441718,
		0.042184, 0.875614, -0.481165,
		12.661580, 15.417878, 27.705614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.907939, 15.264990, 28.496033>,  <12.632051, 14.804949, 28.042431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.907939, 15.264990, 28.496033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.674202, 15.492602, 28.264603>,  <12.533959, 15.629169, 28.125746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.674202, 15.492602, 28.264603>,  <12.907939, 15.264990, 28.496033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.674202, 15.492602, 28.264603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457225, 0.358165, 0.814041,
		0.670439, 0.740218, 0.050885,
		-0.584343, 0.569031, -0.578574,
		12.498899, 15.663312, 28.091030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.985038, 15.926992, 28.808624>,  <12.907939, 15.264990, 28.496033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.985038, 15.926992, 28.808624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.654325, 15.868633, 28.591314>,  <12.455898, 15.833617, 28.460928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.654325, 15.868633, 28.591314>,  <12.985038, 15.926992, 28.808624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.654325, 15.868633, 28.591314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561033, 0.143634, 0.815237,
		-0.040910, 0.978817, -0.200608,
		-0.826782, -0.145899, -0.543273,
		12.406291, 15.824863, 28.428333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.628553, 16.586582, 28.785048>,  <12.985038, 15.926992, 28.808624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.628553, 16.586582, 28.785048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.388524, 16.266636, 28.789574>,  <12.244507, 16.074669, 28.792290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.388524, 16.266636, 28.789574>,  <12.628553, 16.586582, 28.785048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.388524, 16.266636, 28.789574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235910, 0.190462, 0.952927,
		-0.764368, 0.569157, -0.302988,
		-0.600073, -0.799865, 0.011314,
		12.208502, 16.026676, 28.792967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.624737, 16.611143, 27.995394>,  <12.628553, 16.586582, 28.785048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.624737, 16.611143, 27.995394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.334197, 16.555548, 27.726143>,  <12.159873, 16.522190, 27.564592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.334197, 16.555548, 27.726143>,  <12.624737, 16.611143, 27.995394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.334197, 16.555548, 27.726143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659951, 0.414668, 0.626511,
		0.192045, 0.899295, -0.392920,
		-0.726350, -0.138990, -0.673125,
		12.116292, 16.513851, 27.524206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.393924, 17.269127, 28.265648>,  <12.624737, 16.611143, 27.995394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.393924, 17.269127, 28.265648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.623185, 17.551044, 28.432865>,  <12.760742, 17.720196, 28.533195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.623185, 17.551044, 28.432865>,  <12.393924, 17.269127, 28.265648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.623185, 17.551044, 28.432865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451029, 0.154593, -0.879018,
		-0.684154, 0.692362, -0.229278,
		0.573154, 0.704795, 0.418041,
		12.795132, 17.762484, 28.558277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.337612, 17.903448, 27.872927>,  <12.393924, 17.269127, 28.265648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.337612, 17.903448, 27.872927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.690069, 17.942707, 28.057947>,  <12.901544, 17.966263, 28.168961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.690069, 17.942707, 28.057947>,  <12.337612, 17.903448, 27.872927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.690069, 17.942707, 28.057947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389373, 0.404412, -0.827550,
		-0.268284, 0.909295, 0.318129,
		0.881143, 0.098148, 0.462552,
		12.954412, 17.972151, 28.196712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.647043, 18.492718, 27.607058>,  <12.337612, 17.903448, 27.872927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.647043, 18.492718, 27.607058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.941483, 18.270027, 27.761053>,  <13.118146, 18.136414, 27.853451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.941483, 18.270027, 27.761053>,  <12.647043, 18.492718, 27.607058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.941483, 18.270027, 27.761053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568710, 0.200256, -0.797788,
		0.367053, 0.806197, 0.464024,
		0.736098, -0.556726, 0.384988,
		13.162312, 18.103010, 27.876549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.288449, 18.860495, 27.418770>,  <12.647043, 18.492718, 27.607058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.288449, 18.860495, 27.418770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.382395, 18.481405, 27.505173>,  <13.438762, 18.253952, 27.557014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.382395, 18.481405, 27.505173>,  <13.288449, 18.860495, 27.418770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.382395, 18.481405, 27.505173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680401, 0.001586, -0.732839,
		0.694186, 0.319089, 0.645204,
		0.234864, -0.947724, 0.216007,
		13.452854, 18.197088, 27.569975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.013224, 18.802620, 27.312761>,  <13.288449, 18.860495, 27.418770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.013224, 18.802620, 27.312761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928051, 18.411888, 27.321388>,  <13.876947, 18.177448, 27.326565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928051, 18.411888, 27.321388>,  <14.013224, 18.802620, 27.312761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.928051, 18.411888, 27.321388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641799, -0.156478, -0.750738,
		0.736718, -0.146013, 0.660248,
		-0.212932, -0.976829, 0.021569,
		13.864171, 18.118839, 27.327860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.747630, 18.505642, 27.293140>,  <14.013224, 18.802620, 27.312761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.747630, 18.505642, 27.293140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.486544, 18.223597, 27.182308>,  <14.329892, 18.054369, 27.115808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.486544, 18.223597, 27.182308>,  <14.747630, 18.505642, 27.293140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.486544, 18.223597, 27.182308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609702, -0.271806, -0.744570,
		0.449695, -0.654930, 0.607322,
		-0.652715, -0.705115, -0.277083,
		14.290730, 18.012062, 27.099184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.107458, 17.823469, 27.244995>,  <14.747630, 18.505642, 27.293140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.107458, 17.823469, 27.244995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.771719, 17.816687, 27.027662>,  <14.570275, 17.812616, 26.897263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.771719, 17.816687, 27.027662>,  <15.107458, 17.823469, 27.244995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.771719, 17.816687, 27.027662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518797, -0.323439, -0.791351,
		-0.162315, -0.946097, 0.280275,
		-0.839347, -0.016958, -0.543331,
		14.519915, 17.811600, 26.864662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.220998, 17.321756, 26.811514>,  <15.107458, 17.823469, 27.244995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.220998, 17.321756, 26.811514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.916524, 17.523617, 26.648579>,  <14.733840, 17.644733, 26.550817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.916524, 17.523617, 26.648579>,  <15.220998, 17.321756, 26.811514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.916524, 17.523617, 26.648579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329378, -0.240234, -0.913125,
		-0.558667, -0.829225, 0.016641,
		-0.761184, 0.504652, -0.407339,
		14.688169, 17.675013, 26.526377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.840660, 16.842434, 26.375383>,  <15.220998, 17.321756, 26.811514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.840660, 16.842434, 26.375383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.766356, 17.210842, 26.238436>,  <14.721774, 17.431887, 26.156267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.766356, 17.210842, 26.238436>,  <14.840660, 16.842434, 26.375383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.766356, 17.210842, 26.238436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141109, -0.319817, -0.936913,
		-0.972410, -0.222351, -0.070556,
		-0.185758, 0.921019, -0.342369,
		14.710629, 17.487148, 26.135725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.339410, 16.716492, 25.818941>,  <14.840660, 16.842434, 26.375383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.339410, 16.716492, 25.818941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490321, 17.080257, 25.748936>,  <14.580868, 17.298517, 25.706932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.490321, 17.080257, 25.748936>,  <14.339410, 16.716492, 25.818941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490321, 17.080257, 25.748936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024049, -0.198535, -0.979799,
		-0.925788, 0.365448, -0.096773,
		0.377278, 0.909413, -0.175013,
		14.603504, 17.353081, 25.696432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.000606, 16.955603, 25.254097>,  <14.339410, 16.716492, 25.818941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.000606, 16.955603, 25.254097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.319298, 17.197252, 25.260468>,  <14.510513, 17.342241, 25.264290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.319298, 17.197252, 25.260468>,  <14.000606, 16.955603, 25.254097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.319298, 17.197252, 25.260468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113263, -0.123382, -0.985874,
		-0.593626, 0.787281, -0.166727,
		0.796731, 0.604124, 0.015927,
		14.558317, 17.378490, 25.265245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.874377, 17.469412, 24.706129>,  <14.000606, 16.955603, 25.254097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.874377, 17.469412, 24.706129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.268487, 17.432999, 24.764025>,  <14.504952, 17.411150, 24.798763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.268487, 17.432999, 24.764025>,  <13.874377, 17.469412, 24.706129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.268487, 17.432999, 24.764025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127576, -0.172236, -0.976759,
		0.113847, 0.980840, -0.158086,
		0.985273, -0.091033, 0.144740,
		14.564069, 17.405689, 24.807447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.174124, 17.729137, 24.088629>,  <13.874377, 17.469412, 24.706129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.174124, 17.729137, 24.088629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481569, 17.549843, 24.271196>,  <14.666037, 17.442266, 24.380737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.481569, 17.549843, 24.271196>,  <14.174124, 17.729137, 24.088629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.481569, 17.549843, 24.271196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334164, -0.327074, -0.883944,
		0.545498, 0.831930, -0.101609,
		0.768614, -0.448235, 0.456419,
		14.712153, 17.415373, 24.408121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.682197, 17.913691, 23.615524>,  <14.174124, 17.729137, 24.088629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.682197, 17.913691, 23.615524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.818898, 17.599493, 23.821905>,  <14.900919, 17.410975, 23.945734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.818898, 17.599493, 23.821905>,  <14.682197, 17.913691, 23.615524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.818898, 17.599493, 23.821905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231498, -0.461730, -0.856279,
		0.910831, 0.412078, 0.024042,
		0.341753, -0.785491, 0.515953,
		14.921424, 17.363846, 23.976690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.330816, 17.813221, 23.336493>,  <14.682197, 17.913691, 23.615524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.330816, 17.813221, 23.336493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.228888, 17.464964, 23.504803>,  <15.167730, 17.256010, 23.605789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.228888, 17.464964, 23.504803>,  <15.330816, 17.813221, 23.336493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.228888, 17.464964, 23.504803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230879, -0.477333, -0.847849,
		0.939021, -0.118903, 0.322648,
		-0.254823, -0.870641, 0.420774,
		15.152441, 17.203772, 23.631035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.800187, 17.420942, 23.109671>,  <15.330816, 17.813221, 23.336493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.800187, 17.420942, 23.109671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520814, 17.157368, 23.221380>,  <15.353189, 16.999224, 23.288406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.520814, 17.157368, 23.221380>,  <15.800187, 17.420942, 23.109671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520814, 17.157368, 23.221380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168641, -0.530766, -0.830570,
		0.695522, -0.533001, 0.481828,
		-0.698433, -0.658936, 0.279274,
		15.311284, 16.959686, 23.305162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.112942, 16.692986, 23.153208>,  <15.800187, 17.420942, 23.109671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.112942, 16.692986, 23.153208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.718107, 16.652344, 23.103666>,  <15.481207, 16.627958, 23.073940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.718107, 16.652344, 23.103666>,  <16.112942, 16.692986, 23.153208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.718107, 16.652344, 23.103666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158716, -0.725250, -0.669942,
		-0.021755, -0.680947, 0.732010,
		-0.987085, -0.101607, -0.123855,
		15.421982, 16.621862, 23.066509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.071239, 15.916589, 23.057116>,  <16.112942, 16.692986, 23.153208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.071239, 15.916589, 23.057116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.734118, 16.079611, 22.916500>,  <15.531845, 16.177423, 22.832130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.734118, 16.079611, 22.916500>,  <16.071239, 15.916589, 23.057116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.734118, 16.079611, 22.916500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064960, -0.571352, -0.818130,
		-0.534283, -0.712361, 0.455064,
		-0.842806, 0.407552, -0.351538,
		15.481277, 16.201878, 22.811039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544067, 15.378597, 22.818031>,  <16.071239, 15.916589, 23.057116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.544067, 15.378597, 22.818031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.417961, 15.701119, 22.617840>,  <15.342298, 15.894632, 22.497725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.417961, 15.701119, 22.617840>,  <15.544067, 15.378597, 22.818031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.417961, 15.701119, 22.617840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097239, -0.552043, -0.828126,
		-0.944009, -0.212413, 0.252444,
		-0.315265, 0.806306, -0.500479,
		15.323381, 15.943011, 22.467695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.050900, 15.101143, 22.338766>,  <15.544067, 15.378597, 22.818031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.050900, 15.101143, 22.338766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.136214, 15.463914, 22.193443>,  <15.187404, 15.681577, 22.106249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.136214, 15.463914, 22.193443>,  <15.050900, 15.101143, 22.338766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.136214, 15.463914, 22.193443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133239, -0.341388, -0.930431,
		-0.967862, 0.246856, 0.048024,
		0.213288, 0.906927, -0.363307,
		15.200201, 15.735992, 22.084452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592685, 15.098629, 21.911318>,  <15.050900, 15.101143, 22.338766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592685, 15.098629, 21.911318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889782, 15.350695, 21.820786>,  <15.068040, 15.501934, 21.766466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889782, 15.350695, 21.820786>,  <14.592685, 15.098629, 21.911318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889782, 15.350695, 21.820786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001802, -0.336135, -0.941812,
		-0.669574, 0.699932, -0.248527,
		0.742743, 0.630165, -0.226329,
		15.112605, 15.539744, 21.752888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.533729, 15.263124, 21.174221>,  <14.592685, 15.098629, 21.911318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.533729, 15.263124, 21.174221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.910813, 15.388336, 21.220362>,  <15.137064, 15.463464, 21.248047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.910813, 15.388336, 21.220362>,  <14.533729, 15.263124, 21.174221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.910813, 15.388336, 21.220362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215395, -0.307071, -0.926991,
		-0.254755, 0.898732, -0.356905,
		0.942712, 0.313031, 0.115354,
		15.193626, 15.482245, 21.254969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.747069, 15.382222, 20.496243>,  <14.533729, 15.263124, 21.174221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.747069, 15.382222, 20.496243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.108983, 15.421518, 20.661997>,  <15.326131, 15.445096, 20.761450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.108983, 15.421518, 20.661997>,  <14.747069, 15.382222, 20.496243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.108983, 15.421518, 20.661997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424587, -0.283577, -0.859831,
		0.033039, 0.953904, -0.298288,
		0.904784, 0.098241, 0.414384,
		15.380419, 15.450991, 20.786312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197130, 15.830427, 20.029263>,  <14.747069, 15.382222, 20.496243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197130, 15.830427, 20.029263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.442115, 15.623784, 20.268597>,  <15.589106, 15.499799, 20.412197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.442115, 15.623784, 20.268597>,  <15.197130, 15.830427, 20.029263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442115, 15.623784, 20.268597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581248, -0.218691, -0.783789,
		0.535762, 0.827823, 0.166337,
		0.612462, -0.516607, 0.598337,
		15.625854, 15.468801, 20.448097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.854395, 16.049532, 19.952711>,  <15.197130, 15.830427, 20.029263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.854395, 16.049532, 19.952711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.933161, 15.698409, 20.127380>,  <15.980420, 15.487736, 20.232182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.933161, 15.698409, 20.127380>,  <15.854395, 16.049532, 19.952711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.933161, 15.698409, 20.127380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638196, -0.223345, -0.736765,
		0.744264, 0.423763, 0.516232,
		0.196916, -0.877805, 0.436672,
		15.992235, 15.435067, 20.258383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.600792, 15.939825, 19.860834>,  <15.854395, 16.049532, 19.952711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.600792, 15.939825, 19.860834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.489981, 15.566169, 19.950846>,  <16.423494, 15.341975, 20.004852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.489981, 15.566169, 19.950846>,  <16.600792, 15.939825, 19.860834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.489981, 15.566169, 19.950846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678428, -0.356005, -0.642648,
		0.680435, -0.025365, 0.732369,
		-0.277027, -0.934140, 0.225030,
		16.406872, 15.285927, 20.018354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.217484, 15.600872, 20.061800>,  <16.600792, 15.939825, 19.860834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.217484, 15.600872, 20.061800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.964479, 15.308844, 19.958319>,  <16.812677, 15.133627, 19.896229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.964479, 15.308844, 19.958319>,  <17.217484, 15.600872, 20.061800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.964479, 15.308844, 19.958319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686641, -0.373967, -0.623436,
		0.358405, -0.571967, 0.737835,
		-0.632511, -0.730070, -0.258705,
		16.774727, 15.089823, 19.880707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.632679, 14.923965, 20.019810>,  <17.217484, 15.600872, 20.061800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.632679, 14.923965, 20.019810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.294046, 14.884517, 19.810593>,  <17.090866, 14.860847, 19.685062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.294046, 14.884517, 19.810593>,  <17.632679, 14.923965, 20.019810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.294046, 14.884517, 19.810593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523324, -0.333540, -0.784145,
		-0.097122, -0.937563, 0.333980,
		-0.846581, -0.098622, -0.523043,
		17.040071, 14.854930, 19.653679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.676645, 14.263641, 19.801811>,  <17.632679, 14.923965, 20.019810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.676645, 14.263641, 19.801811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.398230, 14.422824, 19.562759>,  <17.231180, 14.518333, 19.419329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.398230, 14.422824, 19.562759>,  <17.676645, 14.263641, 19.801811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.398230, 14.422824, 19.562759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548508, -0.242400, -0.800238,
		-0.463326, -0.884801, -0.049564,
		-0.696037, 0.397958, -0.597630,
		17.189419, 14.542212, 19.383471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.485180, 13.785872, 19.317463>,  <17.676645, 14.263641, 19.801811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.485180, 13.785872, 19.317463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.402283, 14.141312, 19.153786>,  <17.352545, 14.354576, 19.055580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.402283, 14.141312, 19.153786>,  <17.485180, 13.785872, 19.317463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.402283, 14.141312, 19.153786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639598, -0.193424, -0.743977,
		-0.740246, -0.415904, -0.528261,
		-0.207245, 0.888601, -0.409193,
		17.340109, 14.407892, 19.031029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.537718, 13.615834, 18.583014>,  <17.485180, 13.785872, 19.317463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.537718, 13.615834, 18.583014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.555382, 14.015089, 18.599857>,  <17.565981, 14.254642, 18.609962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.555382, 14.015089, 18.599857>,  <17.537718, 13.615834, 18.583014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.555382, 14.015089, 18.599857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768875, -0.007046, -0.639360,
		-0.637872, 0.060610, -0.767753,
		0.044161, 0.998137, 0.042107,
		17.568630, 14.314530, 18.612490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.677969, 13.782632, 17.896542>,  <17.537718, 13.615834, 18.583014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.677969, 13.782632, 17.896542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.772711, 14.116768, 18.094978>,  <17.829556, 14.317249, 18.214041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.772711, 14.116768, 18.094978>,  <17.677969, 13.782632, 17.896542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.772711, 14.116768, 18.094978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617375, 0.264858, -0.740742,
		-0.750165, 0.481723, -0.452985,
		0.236856, 0.835340, 0.496091,
		17.843767, 14.367370, 18.243805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.666372, 14.242311, 17.419590>,  <17.677969, 13.782632, 17.896542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.666372, 14.242311, 17.419590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.879951, 14.433385, 17.698648>,  <18.008099, 14.548030, 17.866083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.879951, 14.433385, 17.698648>,  <17.666372, 14.242311, 17.419590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.879951, 14.433385, 17.698648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701895, 0.209628, -0.680734,
		-0.471424, 0.853154, -0.223355,
		0.533950, 0.477686, 0.697648,
		18.040136, 14.576691, 17.907944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773136, 14.971869, 17.153374>,  <17.666372, 14.242311, 17.419590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773136, 14.971869, 17.153374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.058212, 14.866452, 17.413410>,  <18.229258, 14.803203, 17.569433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.058212, 14.866452, 17.413410>,  <17.773136, 14.971869, 17.153374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.058212, 14.866452, 17.413410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701469, 0.262601, -0.662557,
		0.003896, 0.928217, 0.372019,
		0.712689, -0.263541, 0.650092,
		18.272018, 14.787390, 17.608438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.199459, 15.607656, 17.214487>,  <17.773136, 14.971869, 17.153374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.199459, 15.607656, 17.214487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.437988, 15.302314, 17.313833>,  <18.581106, 15.119108, 17.373442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.437988, 15.302314, 17.313833>,  <18.199459, 15.607656, 17.214487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.437988, 15.302314, 17.313833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736148, 0.396631, -0.548426,
		0.320134, 0.509874, 0.798463,
		0.596323, -0.763356, 0.248368,
		18.616884, 15.073307, 17.388344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842533, 15.881339, 17.059551>,  <18.199459, 15.607656, 17.214487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842533, 15.881339, 17.059551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.942019, 15.496614, 17.105253>,  <19.001711, 15.265779, 17.132675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.942019, 15.496614, 17.105253>,  <18.842533, 15.881339, 17.059551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.942019, 15.496614, 17.105253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779736, 0.128846, -0.612707,
		0.574589, 0.241480, 0.782007,
		0.248715, -0.961814, 0.114257,
		19.016634, 15.208069, 17.139530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.580429, 15.930026, 17.103319>,  <18.842533, 15.881339, 17.059551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.580429, 15.930026, 17.103319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.502150, 15.548363, 17.012733>,  <19.455183, 15.319365, 16.958382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.502150, 15.548363, 17.012733>,  <19.580429, 15.930026, 17.103319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.502150, 15.548363, 17.012733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731602, 0.011729, -0.681631,
		0.653040, -0.299075, 0.695768,
		-0.195698, -0.954158, -0.226463,
		19.443439, 15.262115, 16.944794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187757, 15.481516, 17.182314>,  <19.580429, 15.930026, 17.103319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.187757, 15.481516, 17.182314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.957855, 15.270422, 16.932146>,  <19.819914, 15.143765, 16.782045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.957855, 15.270422, 16.932146>,  <20.187757, 15.481516, 17.182314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.957855, 15.270422, 16.932146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699665, 0.079461, -0.710038,
		0.424407, -0.845685, 0.323567,
		-0.574758, -0.527734, -0.625420,
		19.785427, 15.112102, 16.744520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.714714, 15.015180, 16.803804>,  <20.187757, 15.481516, 17.182314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.714714, 15.015180, 16.803804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.385666, 15.016459, 16.576372>,  <20.188236, 15.017225, 16.439913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.385666, 15.016459, 16.576372>,  <20.714714, 15.015180, 16.803804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.385666, 15.016459, 16.576372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568076, -0.037831, -0.822106,
		-0.024120, -0.999279, 0.029317,
		-0.822622, 0.003175, -0.568579,
		20.138880, 15.017417, 16.405798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.885923, 14.628719, 16.246820>,  <20.714714, 15.015180, 16.803804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.885923, 14.628719, 16.246820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.579922, 14.839170, 16.098246>,  <20.396320, 14.965440, 16.009102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.579922, 14.839170, 16.098246>,  <20.885923, 14.628719, 16.246820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.579922, 14.839170, 16.098246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393369, -0.074937, -0.916322,
		-0.509935, -0.847098, -0.149635,
		-0.765002, 0.526126, -0.371435,
		20.350422, 14.997007, 15.986815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.487505, 14.365642, 15.659416>,  <20.885923, 14.628719, 16.246820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.487505, 14.365642, 15.659416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.426645, 14.760610, 15.642195>,  <20.390129, 14.997590, 15.631862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.426645, 14.760610, 15.642195>,  <20.487505, 14.365642, 15.659416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.426645, 14.760610, 15.642195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127024, -0.023664, -0.991617,
		-0.980161, -0.156344, -0.121825,
		-0.152151, 0.987419, -0.043054,
		20.381001, 15.056835, 15.629278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.475842, 14.453858, 14.940335>,  <20.487505, 14.365642, 15.659416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.475842, 14.453858, 14.940335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.465467, 14.834959, 15.061391>,  <20.459242, 15.063620, 15.134024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.465467, 14.834959, 15.061391>,  <20.475842, 14.453858, 14.940335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.465467, 14.834959, 15.061391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453771, 0.280974, -0.845663,
		-0.890741, 0.115395, -0.439619,
		-0.025936, 0.952753, 0.302638,
		20.457687, 15.120785, 15.152183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.591103, 13.710832, 14.610368>,  <20.475842, 14.453858, 14.940335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.591103, 13.710832, 14.610368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.814781, 14.003194, 14.453868>,  <20.948988, 14.178612, 14.359968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.814781, 14.003194, 14.453868>,  <20.591103, 13.710832, 14.610368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.814781, 14.003194, 14.453868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826140, -0.451864, 0.336619,
		0.069245, -0.511463, -0.856511,
		0.559195, 0.730907, -0.391251,
		20.982540, 14.222466, 14.336493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.176790, 13.314417, 14.530067>,  <20.591103, 13.710832, 14.610368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.176790, 13.314417, 14.530067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.269516, 13.702399, 14.559587>,  <21.325151, 13.935189, 14.577299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.269516, 13.702399, 14.559587>,  <21.176790, 13.314417, 14.530067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.269516, 13.702399, 14.559587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850926, -0.238957, 0.467786,
		0.471367, -0.045641, -0.880755,
		0.231813, 0.969957, 0.073799,
		21.339060, 13.993386, 14.581727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.923414, 13.412666, 14.398318>,  <21.176790, 13.314417, 14.530067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.923414, 13.412666, 14.398318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.781118, 13.659004, 14.679511>,  <21.695740, 13.806808, 14.848227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.781118, 13.659004, 14.679511>,  <21.923414, 13.412666, 14.398318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.781118, 13.659004, 14.679511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879701, -0.033318, 0.474359,
		0.315554, 0.787162, -0.529907,
		-0.355742, 0.615845, 0.702981,
		21.674397, 13.843758, 14.890406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.182436, 14.151749, 14.388449>,  <21.923414, 13.412666, 14.398318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.182436, 14.151749, 14.388449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.090052, 14.017384, 14.753704>,  <22.034620, 13.936765, 14.972857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.090052, 14.017384, 14.753704>,  <22.182436, 14.151749, 14.388449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.090052, 14.017384, 14.753704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948091, 0.133146, 0.288783,
		-0.218586, 0.932435, 0.287723,
		-0.230962, -0.335912, 0.913137,
		22.020763, 13.916610, 15.027645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.680767, 14.077131, 13.843563>,  <22.182436, 14.151749, 14.388449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.680767, 14.077131, 13.843563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.930548, 14.225195, 13.568451>,  <23.080416, 14.314033, 13.403383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.930548, 14.225195, 13.568451>,  <22.680767, 14.077131, 13.843563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.930548, 14.225195, 13.568451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554211, 0.830475, -0.056226,
		0.550372, 0.416286, 0.723738,
		0.624452, 0.370158, -0.687781,
		23.117884, 14.336243, 13.362117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.790453, 14.768474, 14.053649>,  <22.680767, 14.077131, 13.843563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.790453, 14.768474, 14.053649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.869617, 14.777925, 13.661675>,  <22.917116, 14.783596, 13.426491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.869617, 14.777925, 13.661675>,  <22.790453, 14.768474, 14.053649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.869617, 14.777925, 13.661675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400300, 0.914496, -0.058796,
		0.894757, 0.403905, 0.190449,
		0.197913, 0.023629, -0.979935,
		22.928991, 14.785014, 13.367695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.010124, 15.474120, 13.954826>,  <22.790453, 14.768474, 14.053649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.010124, 15.474120, 13.954826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.896942, 15.353941, 13.590482>,  <22.829033, 15.281834, 13.371875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.896942, 15.353941, 13.590482>,  <23.010124, 15.474120, 13.954826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.896942, 15.353941, 13.590482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337088, 0.920239, -0.198826,
		0.897946, 0.250781, -0.361664,
		-0.282956, -0.300448, -0.910861,
		22.812056, 15.263806, 13.317224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.971428, 16.050072, 13.665393>,  <23.010124, 15.474120, 13.954826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.971428, 16.050072, 13.665393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.791513, 15.840380, 13.376152>,  <22.683565, 15.714564, 13.202607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.791513, 15.840380, 13.376152>,  <22.971428, 16.050072, 13.665393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.791513, 15.840380, 13.376152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381975, 0.844750, -0.374825,
		0.807335, 0.107616, -0.580198,
		-0.449785, -0.524230, -0.723102,
		22.656578, 15.683110, 13.159222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.176081, 16.312460, 13.040648>,  <22.971428, 16.050072, 13.665393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.176081, 16.312460, 13.040648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.842697, 16.111767, 12.948030>,  <22.642668, 15.991351, 12.892461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.842697, 16.111767, 12.948030>,  <23.176081, 16.312460, 13.040648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.842697, 16.111767, 12.948030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328670, 0.786954, -0.522188,
		0.444211, -0.359121, -0.820798,
		-0.833459, -0.501733, -0.231541,
		22.592659, 15.961247, 12.878568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.010015, 16.428745, 12.233548>,  <23.176081, 16.312460, 13.040648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.010015, 16.428745, 12.233548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.673105, 16.323761, 12.421882>,  <22.470959, 16.260771, 12.534882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.673105, 16.323761, 12.421882>,  <23.010015, 16.428745, 12.233548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.673105, 16.323761, 12.421882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511673, 0.664079, -0.545152,
		-0.169590, -0.700082, -0.693632,
		-0.842277, -0.262460, 0.470834,
		22.420422, 16.245024, 12.563131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.522078, 16.272524, 11.697805>,  <23.010015, 16.428745, 12.233548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.522078, 16.272524, 11.697805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.327230, 16.376980, 12.031157>,  <22.210321, 16.439653, 12.231169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.327230, 16.376980, 12.031157>,  <22.522078, 16.272524, 11.697805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.327230, 16.376980, 12.031157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615979, 0.573726, -0.539823,
		-0.619100, -0.776303, -0.118617,
		-0.487120, 0.261138, 0.833380,
		22.181095, 16.455320, 12.281172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.802189, 16.077440, 11.438923>,  <22.522078, 16.272524, 11.697805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.802189, 16.077440, 11.438923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.829762, 16.323750, 11.752885>,  <21.846304, 16.471535, 11.941262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.829762, 16.323750, 11.752885>,  <21.802189, 16.077440, 11.438923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.829762, 16.323750, 11.752885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491002, 0.705826, -0.510613,
		-0.868427, -0.350193, 0.350998,
		0.068930, 0.615771, 0.784904,
		21.850441, 16.508480, 11.988356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.145510, 16.274475, 11.603848>,  <21.802189, 16.077440, 11.438923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.145510, 16.274475, 11.603848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.383261, 16.567574, 11.736391>,  <21.525911, 16.743433, 11.815917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.383261, 16.567574, 11.736391>,  <21.145510, 16.274475, 11.603848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.383261, 16.567574, 11.736391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600602, 0.678480, -0.423016,
		-0.534783, 0.052417, 0.843362,
		0.594377, 0.732746, 0.331358,
		21.561573, 16.787397, 11.835798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.600964, 16.792643, 11.804088>,  <21.145510, 16.274475, 11.603848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.600964, 16.792643, 11.804088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.961023, 16.966776, 11.810021>,  <21.177059, 17.071257, 11.813581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.961023, 16.966776, 11.810021>,  <20.600964, 16.792643, 11.804088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.961023, 16.966776, 11.810021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395438, 0.830987, -0.391267,
		-0.182658, 0.346332, 0.920158,
		0.900147, 0.435333, 0.014834,
		21.231068, 17.097376, 11.814471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.504679, 17.541807, 12.003804>,  <20.600964, 16.792643, 11.804088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.504679, 17.541807, 12.003804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.853386, 17.534704, 11.807966>,  <21.062611, 17.530443, 11.690464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.853386, 17.534704, 11.807966>,  <20.504679, 17.541807, 12.003804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.853386, 17.534704, 11.807966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290148, 0.786519, -0.545162,
		0.394755, 0.617310, 0.680512,
		0.871769, -0.017756, -0.489594,
		21.114916, 17.529377, 11.661088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.692541, 18.294975, 11.918181>,  <20.504679, 17.541807, 12.003804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.692541, 18.294975, 11.918181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.903202, 18.099543, 11.639922>,  <21.029598, 17.982283, 11.472967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.903202, 18.099543, 11.639922>,  <20.692541, 18.294975, 11.918181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.903202, 18.099543, 11.639922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094635, 0.779547, -0.619153,
		0.844796, 0.391911, 0.364314,
		0.526653, -0.488581, -0.695647,
		21.061197, 17.952969, 11.431228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.231613, 18.745996, 11.694947>,  <20.692541, 18.294975, 11.918181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.231613, 18.745996, 11.694947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.218710, 18.480062, 11.396430>,  <21.210968, 18.320501, 11.217319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.218710, 18.480062, 11.396430>,  <21.231613, 18.745996, 11.694947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218710, 18.480062, 11.396430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014446, 0.746294, -0.665459,
		0.999375, -0.032247, -0.014470,
		-0.032258, -0.664834, -0.746294,
		21.209032, 18.280613, 11.172542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.702448, 19.055828, 11.164054>,  <21.231613, 18.745996, 11.694947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.702448, 19.055828, 11.164054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.485725, 18.775108, 10.979048>,  <21.355692, 18.606676, 10.868044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.485725, 18.775108, 10.979048>,  <21.702448, 19.055828, 11.164054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.485725, 18.775108, 10.979048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189600, 0.638151, -0.746201,
		0.818839, -0.316604, -0.478816,
		-0.541807, -0.701802, -0.462515,
		21.323183, 18.564568, 10.840294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.997875, 18.859524, 10.514474>,  <21.702448, 19.055828, 11.164054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.997875, 18.859524, 10.514474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.605774, 18.784218, 10.490276>,  <21.370514, 18.739035, 10.475758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.605774, 18.784218, 10.490276>,  <21.997875, 18.859524, 10.514474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.605774, 18.784218, 10.490276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059810, 0.573859, -0.816767,
		0.188484, -0.797020, -0.573787,
		-0.980253, -0.188266, -0.060493,
		21.311699, 18.727737, 10.472128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.806402, 18.656693, 9.771016>,  <21.997875, 18.859524, 10.514474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.806402, 18.656693, 9.771016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.469828, 18.783285, 9.946208>,  <21.267883, 18.859240, 10.051323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.469828, 18.783285, 9.946208>,  <21.806402, 18.656693, 9.771016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.469828, 18.783285, 9.946208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161926, 0.625610, -0.763146,
		-0.515526, -0.713059, -0.475164,
		-0.841435, 0.316480, 0.437981,
		21.217398, 18.878229, 10.077602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.390999, 18.649115, 9.137046>,  <21.806402, 18.656693, 9.771016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.390999, 18.649115, 9.137046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.192596, 18.860672, 9.412508>,  <21.073555, 18.987606, 9.577785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.192596, 18.860672, 9.412508>,  <21.390999, 18.649115, 9.137046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.192596, 18.860672, 9.412508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251756, 0.671429, -0.696995,
		-0.831020, -0.519088, -0.199881,
		-0.496008, 0.528896, 0.688654,
		21.043795, 19.019341, 9.619104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.806789, 18.764473, 8.815072>,  <21.390999, 18.649115, 9.137046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.806789, 18.764473, 8.815072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.828568, 19.039656, 9.104555>,  <20.841635, 19.204765, 9.278245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.828568, 19.039656, 9.104555>,  <20.806789, 18.764473, 8.815072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.828568, 19.039656, 9.104555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409484, 0.676417, -0.612195,
		-0.910691, -0.263014, 0.318536,
		0.054447, 0.687956, 0.723707,
		20.844902, 19.246042, 9.321668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.056080, 18.839502, 9.003574>,  <20.806789, 18.764473, 8.815072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.056080, 18.839502, 9.003574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.293577, 19.145046, 9.104754>,  <20.436075, 19.328373, 9.165462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.293577, 19.145046, 9.104754>,  <20.056080, 18.839502, 9.003574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.293577, 19.145046, 9.104754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528228, 0.607151, -0.593584,
		-0.606994, 0.218823, 0.763986,
		0.593745, 0.763861, 0.252949,
		20.471701, 19.374205, 9.180639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.591610, 19.482136, 9.088835>,  <20.056080, 18.839502, 9.003574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.591610, 19.482136, 9.088835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.957027, 19.637846, 9.041675>,  <20.176279, 19.731272, 9.013379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.957027, 19.637846, 9.041675>,  <19.591610, 19.482136, 9.088835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.957027, 19.637846, 9.041675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392529, 0.767829, -0.506320,
		-0.106571, 0.508824, 0.854248,
		0.913545, 0.389276, -0.117900,
		20.231091, 19.754629, 9.006305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468615, 20.231339, 9.022248>,  <19.591610, 19.482136, 9.088835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.468615, 20.231339, 9.022248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.836325, 20.171522, 8.876607>,  <20.056952, 20.135633, 8.789222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.836325, 20.171522, 8.876607>,  <19.468615, 20.231339, 9.022248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.836325, 20.171522, 8.876607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209186, 0.597974, -0.773737,
		0.333429, 0.787442, 0.518421,
		0.919275, -0.149539, -0.364104,
		20.112106, 20.126659, 8.767376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.646282, 20.793455, 8.918738>,  <19.468615, 20.231339, 9.022248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.646282, 20.793455, 8.918738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.892830, 20.590773, 8.677629>,  <20.040758, 20.469162, 8.532963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.892830, 20.590773, 8.677629>,  <19.646282, 20.793455, 8.918738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.892830, 20.590773, 8.677629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121809, 0.694904, -0.708711,
		0.777980, 0.510250, 0.366595,
		0.616368, -0.506708, -0.602775,
		20.077740, 20.438761, 8.496796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.236113, 21.131536, 8.804445>,  <19.646282, 20.793455, 8.918738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.236113, 21.131536, 8.804445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.186222, 20.889202, 8.490144>,  <20.156288, 20.743801, 8.301563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.186222, 20.889202, 8.490144>,  <20.236113, 21.131536, 8.804445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.186222, 20.889202, 8.490144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082265, 0.795525, -0.600310,
		0.988775, -0.010233, -0.149060,
		-0.124724, -0.605834, -0.785754,
		20.148806, 20.707453, 8.254417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.558788, 21.595253, 8.354444>,  <20.236113, 21.131536, 8.804445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.558788, 21.595253, 8.354444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.353983, 21.322258, 8.145808>,  <20.231100, 21.158461, 8.020627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.353983, 21.322258, 8.145808>,  <20.558788, 21.595253, 8.354444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.353983, 21.322258, 8.145808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005162, 0.604764, -0.796388,
		0.858961, -0.410455, -0.306125,
		-0.512015, -0.682487, -0.521588,
		20.200378, 21.117512, 7.989332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.791666, 21.614004, 7.640421>,  <20.558788, 21.595253, 8.354444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.791666, 21.614004, 7.640421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.428879, 21.445862, 7.651105>,  <20.211206, 21.344976, 7.657516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.428879, 21.445862, 7.651105>,  <20.791666, 21.614004, 7.640421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.428879, 21.445862, 7.651105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259528, 0.507762, -0.821476,
		0.331748, -0.751984, -0.569617,
		-0.906966, -0.420355, 0.026711,
		20.156790, 21.319756, 7.659119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.561392, 21.165094, 7.579057>,  <20.791666, 21.614004, 7.640421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.561392, 21.165094, 7.579057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.838516, 21.050030, 7.314553>,  <22.004791, 20.980991, 7.155851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.838516, 21.050030, 7.314553>,  <21.561392, 21.165094, 7.579057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.838516, 21.050030, 7.314553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289948, -0.728480, 0.620683,
		-0.660259, -0.621748, -0.421293,
		0.692812, -0.287659, -0.661260,
		22.046360, 20.963732, 7.116175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.592585, 20.387333, 7.523766>,  <21.561392, 21.165094, 7.579057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.592585, 20.387333, 7.523766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.951260, 20.526035, 7.413701>,  <22.166464, 20.609257, 7.347661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.951260, 20.526035, 7.413701>,  <21.592585, 20.387333, 7.523766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.951260, 20.526035, 7.413701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442387, -0.679867, 0.584872,
		0.015734, -0.646174, -0.763028,
		0.896686, 0.346756, -0.275162,
		22.220266, 20.630062, 7.331152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.152451, 19.756826, 7.250720>,  <21.592585, 20.387333, 7.523766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.152451, 19.756826, 7.250720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.317087, 20.073030, 7.432131>,  <22.415869, 20.262753, 7.540978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.317087, 20.073030, 7.432131>,  <22.152451, 19.756826, 7.250720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.317087, 20.073030, 7.432131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610528, -0.608630, 0.506779,
		0.676644, 0.068306, -0.733135,
		0.411592, 0.790508, 0.453529,
		22.440565, 20.310183, 7.568190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.904121, 19.679480, 7.168921>,  <22.152451, 19.756826, 7.250720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.904121, 19.679480, 7.168921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.799410, 19.884239, 7.496196>,  <22.736584, 20.007095, 7.692561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.799410, 19.884239, 7.496196>,  <22.904121, 19.679480, 7.168921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.799410, 19.884239, 7.496196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540857, -0.624317, 0.563650,
		0.799341, 0.590073, -0.113432,
		-0.261777, 0.511900, 0.818188,
		22.720877, 20.037809, 7.741652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.469006, 19.770247, 7.533484>,  <22.904121, 19.679480, 7.168921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.469006, 19.770247, 7.533484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.177069, 19.802507, 7.805020>,  <23.001905, 19.821863, 7.967941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.177069, 19.802507, 7.805020>,  <23.469006, 19.770247, 7.533484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.177069, 19.802507, 7.805020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443531, -0.699776, 0.559995,
		0.520199, 0.709795, 0.474957,
		-0.729845, 0.080651, 0.678839,
		22.958115, 19.826702, 8.008672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.719868, 19.780043, 8.334104>,  <23.469006, 19.770247, 7.533484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.719868, 19.780043, 8.334104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.366835, 19.608130, 8.257854>,  <23.155016, 19.504982, 8.212105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.366835, 19.608130, 8.257854>,  <23.719868, 19.780043, 8.334104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.366835, 19.608130, 8.257854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258551, -0.782301, 0.566707,
		-0.392685, 0.450879, 0.801565,
		-0.882582, -0.429782, -0.190623,
		23.102060, 19.479195, 8.200667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.382130, 19.694183, 8.996944>,  <23.719868, 19.780043, 8.334104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.382130, 19.694183, 8.996944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.268404, 19.419029, 8.729817>,  <23.200169, 19.253937, 8.569541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.268404, 19.419029, 8.729817>,  <23.382130, 19.694183, 8.996944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.268404, 19.419029, 8.729817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345877, -0.723249, 0.597729,
		-0.894167, -0.061039, 0.443554,
		-0.284315, -0.687885, -0.667817,
		23.183109, 19.212664, 8.529472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.922480, 19.290024, 9.421905>,  <23.382130, 19.694183, 8.996944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.922480, 19.290024, 9.421905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.123060, 19.130287, 9.114900>,  <23.243408, 19.034445, 8.930696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.123060, 19.130287, 9.114900>,  <22.922480, 19.290024, 9.421905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.123060, 19.130287, 9.114900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375195, -0.698980, 0.608815,
		-0.779599, -0.593257, -0.200674,
		0.501451, -0.399340, -0.767512,
		23.273495, 19.010485, 8.884646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.901897, 18.564833, 9.565359>,  <22.922480, 19.290024, 9.421905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.901897, 18.564833, 9.565359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.196140, 18.594017, 9.295972>,  <23.372686, 18.611526, 9.134339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.196140, 18.594017, 9.295972>,  <22.901897, 18.564833, 9.565359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.196140, 18.594017, 9.295972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523227, -0.692642, 0.496468,
		-0.430249, -0.717582, -0.547687,
		0.735608, 0.072960, -0.673467,
		23.416822, 18.615906, 9.093931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.070732, 17.901960, 9.327291>,  <22.901897, 18.564833, 9.565359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.070732, 17.901960, 9.327291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.385868, 18.138676, 9.259064>,  <23.574949, 18.280704, 9.218127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.385868, 18.138676, 9.259064>,  <23.070732, 17.901960, 9.327291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.385868, 18.138676, 9.259064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608117, -0.703639, 0.367541,
		0.097488, -0.393288, -0.914232,
		0.787839, 0.591791, -0.170568,
		23.622219, 18.316214, 9.207893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.586451, 17.492771, 9.048032>,  <23.070732, 17.901960, 9.327291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.586451, 17.492771, 9.048032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.777311, 17.808628, 9.202324>,  <23.891829, 17.998142, 9.294899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.777311, 17.808628, 9.202324>,  <23.586451, 17.492771, 9.048032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.777311, 17.808628, 9.202324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619625, -0.613542, 0.489521,
		0.623209, 0.005432, -0.782037,
		0.477154, 0.789643, 0.385730,
		23.920458, 18.045521, 9.318043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.167622, 17.373182, 8.922916>,  <23.586451, 17.492771, 9.048032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.167622, 17.373182, 8.922916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.199518, 17.630644, 9.227377>,  <24.218657, 17.785122, 9.410053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.199518, 17.630644, 9.227377>,  <24.167622, 17.373182, 8.922916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.199518, 17.630644, 9.227377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526202, -0.675704, 0.516271,
		0.846613, 0.359351, -0.392574,
		0.079741, 0.643655, 0.761150,
		24.223440, 17.823740, 9.455722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.874825, 17.380947, 9.028336>,  <24.167622, 17.373182, 8.922916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.874825, 17.380947, 9.028336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687929, 17.518787, 9.354020>,  <24.575792, 17.601492, 9.549431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687929, 17.518787, 9.354020>,  <24.874825, 17.380947, 9.028336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.687929, 17.518787, 9.354020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640807, -0.502496, 0.580400,
		0.609144, 0.792937, 0.013962,
		-0.467236, 0.344600, 0.814212,
		24.547758, 17.622168, 9.598284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.429119, 17.389542, 9.594773>,  <24.874825, 17.380947, 9.028336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.429119, 17.389542, 9.594773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106432, 17.410374, 9.830229>,  <24.912819, 17.422873, 9.971502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.106432, 17.410374, 9.830229>,  <25.429119, 17.389542, 9.594773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.106432, 17.410374, 9.830229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458822, -0.572549, 0.679463,
		0.372411, 0.818215, 0.437990,
		-0.806717, 0.052080, 0.588638,
		24.864416, 17.425997, 10.006821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721092, 17.591009, 10.313194>,  <25.429119, 17.389542, 9.594773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721092, 17.591009, 10.313194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352253, 17.445448, 10.365815>,  <25.130949, 17.358110, 10.397388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352253, 17.445448, 10.365815>,  <25.721092, 17.591009, 10.313194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352253, 17.445448, 10.365815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326257, -0.548355, 0.769976,
		-0.208061, 0.752914, 0.624365,
		-0.922099, -0.363905, 0.131552,
		25.075623, 17.336277, 10.405281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716200, 17.507126, 11.056215>,  <25.721092, 17.591009, 10.313194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716200, 17.507126, 11.056215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427464, 17.272995, 10.908521>,  <25.254221, 17.132517, 10.819903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.427464, 17.272995, 10.908521>,  <25.716200, 17.507126, 11.056215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427464, 17.272995, 10.908521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260034, -0.723835, 0.639097,
		-0.641349, 0.365312, 0.674699,
		-0.721840, -0.585329, -0.369237,
		25.210911, 17.097397, 10.797750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.346216, 17.364628, 11.627208>,  <25.716200, 17.507126, 11.056215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.346216, 17.364628, 11.627208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248568, 17.076342, 11.367678>,  <25.189978, 16.903370, 11.211960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248568, 17.076342, 11.367678>,  <25.346216, 17.364628, 11.627208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.248568, 17.076342, 11.367678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112484, -0.685596, 0.719239,
		-0.963199, 0.102599, 0.248437,
		-0.244121, -0.720716, -0.648825,
		25.175331, 16.860126, 11.173030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.934256, 16.923992, 12.010747>,  <25.346216, 17.364628, 11.627208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.934256, 16.923992, 12.010747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028458, 16.688484, 11.701454>,  <25.084978, 16.547180, 11.515879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.028458, 16.688484, 11.701454>,  <24.934256, 16.923992, 12.010747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.028458, 16.688484, 11.701454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127334, -0.807444, 0.576038,
		-0.963496, -0.037201, -0.265127,
		0.235504, -0.588770, -0.773232,
		25.099110, 16.511854, 11.469484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.422523, 16.418802, 12.022346>,  <24.934256, 16.923992, 12.010747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.422523, 16.418802, 12.022346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.751333, 16.280809, 11.841124>,  <24.948620, 16.198013, 11.732389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.751333, 16.280809, 11.841124>,  <24.422523, 16.418802, 12.022346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.751333, 16.280809, 11.841124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061639, -0.844835, 0.531464,
		-0.566104, -0.408951, -0.715741,
		0.822026, -0.344981, -0.453057,
		24.997942, 16.177315, 11.705207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.228792, 15.744756, 11.941333>,  <24.422523, 16.418802, 12.022346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.228792, 15.744756, 11.941333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.626423, 15.736260, 11.898705>,  <24.865002, 15.731163, 11.873128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.626423, 15.736260, 11.898705>,  <24.228792, 15.744756, 11.941333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.626423, 15.736260, 11.898705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054193, -0.753160, 0.655601,
		-0.094188, -0.657495, -0.747549,
		0.994078, -0.021238, -0.106570,
		24.924646, 15.729889, 11.866734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.443283, 15.080041, 11.674080>,  <24.228792, 15.744756, 11.941333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.443283, 15.080041, 11.674080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782377, 15.209074, 11.842501>,  <24.985834, 15.286494, 11.943553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782377, 15.209074, 11.842501>,  <24.443283, 15.080041, 11.674080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.782377, 15.209074, 11.842501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113335, -0.885638, 0.450335,
		0.518170, -0.334045, -0.787346,
		0.847735, 0.322583, 0.421052,
		25.036697, 15.305849, 11.968816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.899920, 14.526693, 11.671103>,  <24.443283, 15.080041, 11.674080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.899920, 14.526693, 11.671103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040924, 14.776437, 11.949932>,  <25.125526, 14.926283, 12.117229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040924, 14.776437, 11.949932>,  <24.899920, 14.526693, 11.671103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040924, 14.776437, 11.949932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206383, -0.778418, 0.592850,
		0.912766, -0.065122, -0.403259,
		0.352511, 0.624359, 0.697074,
		25.146677, 14.963744, 12.159054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551420, 14.300885, 11.775439>,  <24.899920, 14.526693, 11.671103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551420, 14.300885, 11.775439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504204, 14.495727, 12.121572>,  <25.475874, 14.612632, 12.329250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504204, 14.495727, 12.121572>,  <25.551420, 14.300885, 11.775439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504204, 14.495727, 12.121572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279397, -0.819926, 0.499658,
		0.952892, 0.300752, -0.039309,
		-0.118043, 0.487103, 0.865330,
		25.468790, 14.641857, 12.381170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218470, 14.163587, 12.276772>,  <25.551420, 14.300885, 11.775439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218470, 14.163587, 12.276772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902527, 14.285849, 12.489450>,  <25.712961, 14.359206, 12.617058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902527, 14.285849, 12.489450>,  <26.218470, 14.163587, 12.276772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902527, 14.285849, 12.489450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167125, -0.726874, 0.666126,
		0.590082, 0.615004, 0.523043,
		-0.789856, 0.305656, 0.531698,
		25.665569, 14.377545, 12.648960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495497, 13.618376, 11.968869>,  <26.218470, 14.163587, 12.276772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495497, 13.618376, 11.968869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410404, 13.343021, 11.691490>,  <26.359348, 13.177809, 11.525063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410404, 13.343021, 11.691490>,  <26.495497, 13.618376, 11.968869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410404, 13.343021, 11.691490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967620, 0.049741, 0.247462,
		-0.135856, 0.723637, -0.676678,
		-0.212732, -0.688386, -0.693448,
		26.346584, 13.136505, 11.483456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222315, 14.013577, 12.092957>,  <26.495497, 13.618376, 11.968869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222315, 14.013577, 12.092957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465462, 14.251657, 12.303189>,  <27.611351, 14.394504, 12.429329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.465462, 14.251657, 12.303189>,  <27.222315, 14.013577, 12.092957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.465462, 14.251657, 12.303189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612465, -0.069809, 0.787409,
		0.505354, -0.800542, 0.322103,
		0.607868, 0.595197, 0.525582,
		27.647821, 14.430216, 12.460864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581928, 13.688285, 12.867160>,  <27.222315, 14.013577, 12.092957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581928, 13.688285, 12.867160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530020, 14.084723, 12.855201>,  <27.498875, 14.322585, 12.848025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530020, 14.084723, 12.855201>,  <27.581928, 13.688285, 12.867160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530020, 14.084723, 12.855201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426723, -0.028607, 0.903930,
		0.895023, 0.130062, 0.426635,
		-0.129772, 0.991093, -0.029897,
		27.491089, 14.382051, 12.846231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793184, 14.004455, 13.572165>,  <27.581928, 13.688285, 12.867160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793184, 14.004455, 13.572165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491587, 14.213170, 13.412552>,  <27.310627, 14.338399, 13.316784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.491587, 14.213170, 13.412552>,  <27.793184, 14.004455, 13.572165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491587, 14.213170, 13.412552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387505, 0.137188, 0.911602,
		0.530407, 0.841971, 0.098756,
		-0.753995, 0.521789, -0.399034,
		27.265388, 14.369707, 13.292842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837959, 14.781193, 13.601949>,  <27.793184, 14.004455, 13.572165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837959, 14.781193, 13.601949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482468, 14.598754, 13.620434>,  <27.269173, 14.489290, 13.631525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482468, 14.598754, 13.620434>,  <27.837959, 14.781193, 13.601949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482468, 14.598754, 13.620434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024777, 0.148446, 0.988610,
		-0.457763, 0.877461, -0.143229,
		-0.888729, -0.456098, 0.046212,
		27.215849, 14.461925, 13.634297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153519, 15.285650, 13.828299>,  <27.837959, 14.781193, 13.601949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153519, 15.285650, 13.828299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139843, 14.905785, 13.952858>,  <27.131638, 14.677865, 14.027594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139843, 14.905785, 13.952858>,  <27.153519, 15.285650, 13.828299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139843, 14.905785, 13.952858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085260, 0.313216, 0.945847,
		-0.995772, 0.005788, -0.091678,
		-0.034189, -0.949664, 0.311398,
		27.129585, 14.620885, 14.046277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967045, 15.475253, 14.537473>,  <27.153519, 15.285650, 13.828299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967045, 15.475253, 14.537473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987944, 15.075985, 14.525287>,  <27.000483, 14.836424, 14.517975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.987944, 15.075985, 14.525287>,  <26.967045, 15.475253, 14.537473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987944, 15.075985, 14.525287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268163, -0.043409, 0.962395,
		-0.961956, -0.042113, -0.269940,
		0.052247, -0.998170, -0.030465,
		27.003618, 14.776534, 14.516148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363274, 15.353648, 14.928452>,  <26.967045, 15.475253, 14.537473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363274, 15.353648, 14.928452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615461, 15.043296, 14.937583>,  <26.766773, 14.857084, 14.943061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.615461, 15.043296, 14.937583>,  <26.363274, 15.353648, 14.928452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.615461, 15.043296, 14.937583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163135, -0.103697, 0.981139,
		-0.758879, -0.622300, -0.191951,
		0.630467, -0.775880, 0.022825,
		26.804602, 14.810532, 14.944430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<11.880919, 18.941593, 20.844881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.547873, 18.721296, 20.821445>,  <11.348045, 18.589117, 20.807384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.547873, 18.721296, 20.821445>,  <11.880919, 18.941593, 20.844881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.547873, 18.721296, 20.821445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274473, -0.318422, -0.907343,
		0.481057, -0.771550, 0.416288,
		-0.832615, -0.550744, -0.058591,
		11.298089, 18.556072, 20.803869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.099991, 18.252655, 20.651443>,  <11.880919, 18.941593, 20.844881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.099991, 18.252655, 20.651443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.708293, 18.278896, 20.574736>,  <11.473274, 18.294641, 20.528711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.708293, 18.278896, 20.574736>,  <12.099991, 18.252655, 20.651443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.708293, 18.278896, 20.574736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144930, -0.434781, -0.888797,
		-0.141687, -0.898143, 0.416249,
		-0.979245, 0.065604, -0.191771,
		11.414519, 18.298578, 20.517204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.954982, 17.599201, 20.515402>,  <12.099991, 18.252655, 20.651443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.954982, 17.599201, 20.515402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.664092, 17.807039, 20.335997>,  <11.489558, 17.931742, 20.228354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.664092, 17.807039, 20.335997>,  <11.954982, 17.599201, 20.515402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.664092, 17.807039, 20.335997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129497, -0.537838, -0.833043,
		-0.674074, -0.663890, 0.323843,
		-0.727224, 0.519596, -0.448514,
		11.445925, 17.962917, 20.201443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.554713, 17.070190, 20.188492>,  <11.954982, 17.599201, 20.515402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.554713, 17.070190, 20.188492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.463709, 17.412457, 20.002558>,  <11.409106, 17.617817, 19.890997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.463709, 17.412457, 20.002558>,  <11.554713, 17.070190, 20.188492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.463709, 17.412457, 20.002558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016324, -0.473936, -0.880408,
		-0.973639, -0.207890, 0.093858,
		-0.227511, 0.855667, -0.464836,
		11.395455, 17.669157, 19.863108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.079957, 16.877832, 19.714384>,  <11.554713, 17.070190, 20.188492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.079957, 16.877832, 19.714384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.251094, 17.217781, 19.591314>,  <11.353776, 17.421751, 19.517471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.251094, 17.217781, 19.591314>,  <11.079957, 16.877832, 19.714384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.251094, 17.217781, 19.591314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187697, -0.416526, -0.889537,
		-0.884149, 0.322833, -0.337726,
		0.427843, 0.849874, -0.307676,
		11.379447, 17.472744, 19.499012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.891557, 16.905998, 19.002708>,  <11.079957, 16.877832, 19.714384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.891557, 16.905998, 19.002708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.188869, 17.169182, 19.051081>,  <11.367255, 17.327093, 19.080103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.188869, 17.169182, 19.051081>,  <10.891557, 16.905998, 19.002708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.188869, 17.169182, 19.051081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350955, -0.229616, -0.907803,
		-0.569532, 0.717192, -0.401583,
		0.743279, 0.657960, 0.120929,
		11.411853, 17.366570, 19.087358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.883263, 17.244442, 18.308222>,  <10.891557, 16.905998, 19.002708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.883263, 17.244442, 18.308222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.240312, 17.286415, 18.483591>,  <11.454541, 17.311600, 18.588812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.240312, 17.286415, 18.483591>,  <10.883263, 17.244442, 18.308222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.240312, 17.286415, 18.483591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450659, -0.182899, -0.873759,
		-0.011500, 0.977516, -0.210550,
		0.892622, 0.104934, 0.438422,
		11.508099, 17.317896, 18.615118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.199389, 17.529247, 17.814308>,  <10.883263, 17.244442, 18.308222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.199389, 17.529247, 17.814308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.471908, 17.373768, 18.062422>,  <11.635419, 17.280481, 18.211290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.471908, 17.373768, 18.062422>,  <11.199389, 17.529247, 17.814308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.471908, 17.373768, 18.062422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530919, -0.320978, -0.784282,
		0.503945, 0.863648, -0.012315,
		0.681296, -0.388697, 0.620282,
		11.676296, 17.257158, 18.248507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.754646, 17.575510, 17.348299>,  <11.199389, 17.529247, 17.814308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.754646, 17.575510, 17.348299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.905078, 17.352116, 17.644045>,  <11.995337, 17.218079, 17.821491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.905078, 17.352116, 17.644045>,  <11.754646, 17.575510, 17.348299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.905078, 17.352116, 17.644045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710602, -0.338253, -0.616952,
		0.594650, 0.757416, 0.269650,
		0.376080, -0.558485, 0.739364,
		12.017901, 17.184570, 17.865854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.548144, 17.771431, 17.499695>,  <11.754646, 17.575510, 17.348299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.548144, 17.771431, 17.499695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.408422, 17.407139, 17.587831>,  <12.324588, 17.188562, 17.640715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.408422, 17.407139, 17.587831>,  <12.548144, 17.771431, 17.499695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.408422, 17.407139, 17.587831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682472, -0.408415, -0.606159,
		0.642040, -0.061358, 0.764211,
		-0.349308, -0.910732, 0.220344,
		12.303629, 17.133919, 17.653934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.164751, 17.429239, 17.669748>,  <12.548144, 17.771431, 17.499695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.164751, 17.429239, 17.669748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.907874, 17.128313, 17.610947>,  <12.753748, 16.947758, 17.575665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.907874, 17.128313, 17.610947>,  <13.164751, 17.429239, 17.669748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.907874, 17.128313, 17.610947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652680, -0.436079, -0.619552,
		0.401992, -0.493819, 0.771068,
		-0.642192, -0.752315, -0.147006,
		12.715217, 16.902618, 17.566845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.592361, 16.829643, 17.649557>,  <13.164751, 17.429239, 17.669748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.592361, 16.829643, 17.649557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.244624, 16.734682, 17.476177>,  <13.035981, 16.677706, 17.372149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.244624, 16.734682, 17.476177>,  <13.592361, 16.829643, 17.649557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.244624, 16.734682, 17.476177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488541, -0.545246, -0.681201,
		-0.074619, -0.803957, 0.589988,
		-0.869345, -0.237403, -0.433451,
		12.983821, 16.663462, 17.346142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.621089, 16.064621, 17.551500>,  <13.592361, 16.829643, 17.649557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.621089, 16.064621, 17.551500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.329754, 16.185165, 17.305344>,  <13.154953, 16.257492, 17.157650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.329754, 16.185165, 17.305344>,  <13.621089, 16.064621, 17.551500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.329754, 16.185165, 17.305344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439500, -0.483568, -0.756969,
		-0.525704, -0.821793, 0.219753,
		-0.728337, 0.301361, -0.615391,
		13.111253, 16.275574, 17.120726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.372924, 15.482636, 17.201229>,  <13.621089, 16.064621, 17.551500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.372924, 15.482636, 17.201229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.295720, 15.798748, 16.968607>,  <13.249398, 15.988415, 16.829035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.295720, 15.798748, 16.968607>,  <13.372924, 15.482636, 17.201229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.295720, 15.798748, 16.968607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429916, -0.464663, -0.774119,
		-0.881997, -0.399432, -0.250070,
		-0.193009, 0.790280, -0.581554,
		13.237817, 16.035831, 16.794140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.278215, 15.206299, 16.585276>,  <13.372924, 15.482636, 17.201229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.278215, 15.206299, 16.585276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.326331, 15.585340, 16.466898>,  <13.355201, 15.812764, 16.395870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.326331, 15.585340, 16.466898>,  <13.278215, 15.206299, 16.585276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.326331, 15.585340, 16.466898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524123, -0.313796, -0.791724,
		-0.843105, -0.059876, -0.534405,
		0.120289, 0.947601, -0.295945,
		13.362418, 15.869619, 16.378115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.166517, 15.262014, 15.848578>,  <13.278215, 15.206299, 16.585276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.166517, 15.262014, 15.848578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.368103, 15.599000, 15.924763>,  <13.489055, 15.801191, 15.970473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.368103, 15.599000, 15.924763>,  <13.166517, 15.262014, 15.848578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.368103, 15.599000, 15.924763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516169, -0.116956, -0.848464,
		-0.692524, 0.525906, -0.493795,
		0.503964, 0.842463, 0.190461,
		13.519293, 15.851739, 15.981901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.299377, 15.625621, 15.239888>,  <13.166517, 15.262014, 15.848578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.299377, 15.625621, 15.239888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.569413, 15.787640, 15.486527>,  <13.731435, 15.884851, 15.634511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.569413, 15.787640, 15.486527>,  <13.299377, 15.625621, 15.239888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.569413, 15.787640, 15.486527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669285, 0.015333, -0.742847,
		-0.310342, 0.914168, -0.260740,
		0.675089, 0.405046, 0.616597,
		13.771940, 15.909154, 15.671507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.785132, 15.992869, 14.770866>,  <13.299377, 15.625621, 15.239888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.785132, 15.992869, 14.770866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.013145, 15.953151, 15.097106>,  <14.149954, 15.929319, 15.292850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.013145, 15.953151, 15.097106>,  <13.785132, 15.992869, 14.770866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.013145, 15.953151, 15.097106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804706, -0.132918, -0.578603,
		0.165860, 0.986141, 0.004136,
		0.570034, -0.099296, 0.815599,
		14.184155, 15.923362, 15.341785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.261970, 16.507706, 14.689965>,  <13.785132, 15.992869, 14.770866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.261970, 16.507706, 14.689965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.409528, 16.252337, 14.960175>,  <14.498063, 16.099115, 15.122300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.409528, 16.252337, 14.960175>,  <14.261970, 16.507706, 14.689965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.409528, 16.252337, 14.960175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789066, -0.168989, -0.590607,
		0.491213, 0.750905, 0.441419,
		0.368895, -0.638424, 0.675523,
		14.520196, 16.060810, 15.162831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.914609, 16.832190, 14.889310>,  <14.261970, 16.507706, 14.689965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.914609, 16.832190, 14.889310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.927591, 16.442238, 14.977453>,  <14.935381, 16.208267, 15.030339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.927591, 16.442238, 14.977453>,  <14.914609, 16.832190, 14.889310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.927591, 16.442238, 14.977453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926026, -0.053625, -0.373631,
		0.376062, 0.216183, 0.901023,
		0.032456, -0.974879, 0.220358,
		14.937328, 16.149775, 15.043561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.568210, 16.632454, 15.382848>,  <14.914609, 16.832190, 14.889310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.568210, 16.632454, 15.382848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.444999, 16.294750, 15.207417>,  <15.371072, 16.092129, 15.102160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.444999, 16.294750, 15.207417>,  <15.568210, 16.632454, 15.382848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.444999, 16.294750, 15.207417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928521, -0.166337, -0.331936,
		0.207288, -0.509472, 0.835146,
		-0.308028, -0.844257, -0.438576,
		15.352591, 16.041473, 15.075845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070864, 16.127941, 15.487690>,  <15.568210, 16.632454, 15.382848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.070864, 16.127941, 15.487690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.858479, 15.981911, 15.181801>,  <15.731050, 15.894293, 14.998267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.858479, 15.981911, 15.181801>,  <16.070864, 16.127941, 15.487690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.858479, 15.981911, 15.181801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842851, -0.320874, -0.432020,
		-0.087660, -0.873933, 0.478076,
		-0.530959, -0.365076, -0.764723,
		15.699192, 15.872388, 14.952384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.671623, 15.873472, 15.104835>,  <16.070864, 16.127941, 15.487690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.671623, 15.873472, 15.104835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.034521, 16.004622, 15.210215>,  <17.252260, 16.083311, 15.273442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.034521, 16.004622, 15.210215>,  <16.671623, 15.873472, 15.104835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.034521, 16.004622, 15.210215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315826, 0.117384, 0.941528,
		0.277779, -0.937400, 0.210047,
		0.907245, 0.327875, 0.263449,
		17.306694, 16.102983, 15.289249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.850529, 15.570505, 15.720340>,  <16.671623, 15.873472, 15.104835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.850529, 15.570505, 15.720340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.093246, 15.888340, 15.728637>,  <17.238876, 16.079041, 15.733615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.093246, 15.888340, 15.728637>,  <16.850529, 15.570505, 15.720340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.093246, 15.888340, 15.728637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291363, 0.198072, 0.935882,
		0.739533, -0.573931, 0.351703,
		0.606794, 0.794588, 0.020741,
		17.275284, 16.126717, 15.734859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.206520, 15.522272, 16.368130>,  <16.850529, 15.570505, 15.720340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.206520, 15.522272, 16.368130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.254318, 15.897899, 16.239212>,  <17.282997, 16.123274, 16.161861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.254318, 15.897899, 16.239212>,  <17.206520, 15.522272, 16.368130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.254318, 15.897899, 16.239212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362749, 0.343474, 0.866279,
		0.924194, 0.013398, 0.381689,
		0.119494, 0.939067, -0.322297,
		17.290167, 16.179619, 16.142523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.387884, 15.879085, 16.985014>,  <17.206520, 15.522272, 16.368130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.387884, 15.879085, 16.985014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.274630, 16.183783, 16.751921>,  <17.206676, 16.366602, 16.612064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.274630, 16.183783, 16.751921>,  <17.387884, 15.879085, 16.985014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.274630, 16.183783, 16.751921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307040, 0.503626, 0.807520,
		0.908603, 0.407560, 0.091292,
		-0.283136, 0.761745, -0.582733,
		17.189690, 16.412306, 16.577101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.702835, 16.440924, 17.243940>,  <17.387884, 15.879085, 16.985014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.702835, 16.440924, 17.243940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.416853, 16.608198, 17.019814>,  <17.245264, 16.708563, 16.885338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.416853, 16.608198, 17.019814>,  <17.702835, 16.440924, 17.243940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.416853, 16.608198, 17.019814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315878, 0.521754, 0.792461,
		0.623745, 0.743567, -0.240935,
		-0.714956, 0.418188, -0.560318,
		17.202366, 16.733654, 16.851719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.720154, 17.123030, 17.388634>,  <17.702835, 16.440924, 17.243940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.720154, 17.123030, 17.388634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.356644, 17.052395, 17.237404>,  <17.138536, 17.010014, 17.146666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.356644, 17.052395, 17.237404>,  <17.720154, 17.123030, 17.388634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.356644, 17.052395, 17.237404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414897, 0.479094, 0.773517,
		0.044540, 0.859817, -0.508655,
		-0.908777, -0.176587, -0.378075,
		17.084011, 16.999418, 17.123981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.319433, 17.796309, 17.368931>,  <17.720154, 17.123030, 17.388634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.319433, 17.796309, 17.368931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.038168, 17.512224, 17.382593>,  <16.869410, 17.341774, 17.390791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.038168, 17.512224, 17.382593>,  <17.319433, 17.796309, 17.368931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.038168, 17.512224, 17.382593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513018, 0.540017, 0.667229,
		-0.492318, 0.451645, -0.744069,
		-0.703161, -0.710210, 0.034158,
		16.827219, 17.299162, 17.392841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827410, 18.167488, 17.458920>,  <17.319433, 17.796309, 17.368931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.827410, 18.167488, 17.458920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.690006, 17.798298, 17.528336>,  <16.607563, 17.576784, 17.569984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.690006, 17.798298, 17.528336>,  <16.827410, 18.167488, 17.458920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.690006, 17.798298, 17.528336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497390, 0.335537, 0.800011,
		-0.796620, 0.188495, -0.574340,
		-0.343510, -0.922976, 0.173540,
		16.586954, 17.521404, 17.580397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.061110, 18.219948, 17.595631>,  <16.827410, 18.167488, 17.458920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.061110, 18.219948, 17.595631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.131414, 17.855785, 17.745440>,  <16.173597, 17.637287, 17.835325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.131414, 17.855785, 17.745440>,  <16.061110, 18.219948, 17.595631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.131414, 17.855785, 17.745440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629329, 0.188640, 0.753896,
		-0.757003, -0.368203, -0.539791,
		0.175761, -0.910407, 0.374522,
		16.184143, 17.582663, 17.857796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.463008, 17.784801, 17.646658>,  <16.061110, 18.219948, 17.595631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.463008, 17.784801, 17.646658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.727847, 17.658314, 17.918432>,  <15.886750, 17.582420, 18.081497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.727847, 17.658314, 17.918432>,  <15.463008, 17.784801, 17.646658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.727847, 17.658314, 17.918432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665641, 0.168387, 0.727026,
		-0.344309, -0.933622, -0.099002,
		0.662097, -0.316221, 0.679434,
		15.926476, 17.563448, 18.122263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.064481, 17.528072, 18.218708>,  <15.463008, 17.784801, 17.646658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.064481, 17.528072, 18.218708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.425088, 17.533646, 18.391714>,  <15.641453, 17.536989, 18.495518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.425088, 17.533646, 18.391714>,  <15.064481, 17.528072, 18.218708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.425088, 17.533646, 18.391714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429448, 0.151880, 0.890229,
		-0.053286, -0.988301, 0.142907,
		0.901518, 0.013934, 0.432517,
		15.695543, 17.537827, 18.521469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.113529, 17.039946, 18.783262>,  <15.064481, 17.528072, 18.218708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.113529, 17.039946, 18.783262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.387319, 17.321331, 18.859823>,  <15.551593, 17.490162, 18.905760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.387319, 17.321331, 18.859823>,  <15.113529, 17.039946, 18.783262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.387319, 17.321331, 18.859823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361645, 0.099669, 0.926973,
		0.633015, -0.703709, 0.322625,
		0.684474, 0.703463, 0.191401,
		15.592661, 17.532370, 18.917244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.252307, 17.001989, 19.544691>,  <15.113529, 17.039946, 18.783262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.252307, 17.001989, 19.544691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.394855, 17.359470, 19.435665>,  <15.480385, 17.573959, 19.370249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.394855, 17.359470, 19.435665>,  <15.252307, 17.001989, 19.544691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.394855, 17.359470, 19.435665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537294, 0.434677, 0.722753,
		0.764405, -0.111121, 0.635088,
		0.356371, 0.893705, -0.272565,
		15.501767, 17.627583, 19.353895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.465602, 17.300186, 20.216301>,  <15.252307, 17.001989, 19.544691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.465602, 17.300186, 20.216301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.431949, 17.608980, 19.964281>,  <15.411757, 17.794256, 19.813070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.431949, 17.608980, 19.964281>,  <15.465602, 17.300186, 20.216301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.431949, 17.608980, 19.964281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521879, 0.504498, 0.687840,
		0.848861, 0.386679, 0.360438,
		-0.084133, 0.771986, -0.630048,
		15.406709, 17.840576, 19.775267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.664886, 17.861441, 20.600908>,  <15.465602, 17.300186, 20.216301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.664886, 17.861441, 20.600908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.432461, 17.974331, 20.295565>,  <15.293006, 18.042065, 20.112358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.432461, 17.974331, 20.295565>,  <15.664886, 17.861441, 20.600908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.432461, 17.974331, 20.295565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502872, 0.612975, 0.609410,
		0.639911, 0.737977, -0.214253,
		-0.581062, 0.282227, -0.763357,
		15.258142, 18.058998, 20.066557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.665245, 18.486332, 20.635126>,  <15.664886, 17.861441, 20.600908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.665245, 18.486332, 20.635126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.340113, 18.413895, 20.413671>,  <15.145034, 18.370432, 20.280798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.340113, 18.413895, 20.413671>,  <15.665245, 18.486332, 20.635126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.340113, 18.413895, 20.413671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532292, 0.616946, 0.579692,
		0.236587, 0.765887, -0.597866,
		-0.812830, -0.181091, -0.553637,
		15.096264, 18.359568, 20.247580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.253876, 19.081282, 20.655285>,  <15.665245, 18.486332, 20.635126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.253876, 19.081282, 20.655285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.999196, 18.791946, 20.548407>,  <14.846388, 18.618345, 20.484280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.999196, 18.791946, 20.548407>,  <15.253876, 19.081282, 20.655285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.999196, 18.791946, 20.548407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706102, 0.407650, 0.579000,
		-0.309892, 0.557316, -0.770303,
		-0.636700, -0.723340, -0.267194,
		14.808186, 18.574944, 20.468248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.595119, 19.331713, 20.511856>,  <15.253876, 19.081282, 20.655285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.595119, 19.331713, 20.511856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.507116, 18.950220, 20.593824>,  <14.454314, 18.721325, 20.643005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.507116, 18.950220, 20.593824>,  <14.595119, 19.331713, 20.511856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507116, 18.950220, 20.593824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793198, 0.297180, 0.531526,
		-0.567832, -0.045601, -0.821881,
		-0.220008, -0.953732, 0.204919,
		14.441113, 18.664101, 20.655300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.905725, 19.324644, 20.342693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.008687, 19.010330, 20.567650>,  <14.070464, 18.821743, 20.702623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.008687, 19.010330, 20.567650>,  <13.905725, 19.324644, 20.342693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.008687, 19.010330, 20.567650> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759964, 0.194845, 0.620073,
		-0.596822, -0.587009, -0.547013,
		0.257406, -0.785783, 0.562393,
		14.085909, 18.774595, 20.736368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.310925, 18.880350, 20.423754>,  <13.905725, 19.324644, 20.342693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.310925, 18.880350, 20.423754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.561637, 18.795410, 20.723635>,  <13.712065, 18.744446, 20.903563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.561637, 18.795410, 20.723635>,  <13.310925, 18.880350, 20.423754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.561637, 18.795410, 20.723635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751704, 0.088533, 0.653532,
		-0.205150, -0.973175, -0.104132,
		0.626781, -0.212349, 0.749702,
		13.749671, 18.731707, 20.948545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.820787, 18.737528, 21.003490>,  <13.310925, 18.880350, 20.423754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.820787, 18.737528, 21.003490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.174148, 18.691591, 21.185223>,  <13.386164, 18.664030, 21.294262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.174148, 18.691591, 21.185223>,  <12.820787, 18.737528, 21.003490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.174148, 18.691591, 21.185223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457285, 0.000674, 0.889320,
		-0.102441, -0.993383, -0.051922,
		0.883400, -0.114845, 0.454328,
		13.439168, 18.657139, 21.321522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.834397, 18.070250, 21.511379>,  <12.820787, 18.737528, 21.003490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.834397, 18.070250, 21.511379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.093076, 18.353790, 21.624033>,  <13.248282, 18.523914, 21.691626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.093076, 18.353790, 21.624033>,  <12.834397, 18.070250, 21.511379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.093076, 18.353790, 21.624033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596616, 0.240050, 0.765784,
		0.475220, -0.663256, 0.578150,
		0.646695, 0.708850, 0.281633,
		13.287085, 18.566444, 21.708523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.938441, 18.007614, 22.275665>,  <12.834397, 18.070250, 21.511379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.938441, 18.007614, 22.275665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.044747, 18.377394, 22.166294>,  <13.108531, 18.599262, 22.100672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.044747, 18.377394, 22.166294>,  <12.938441, 18.007614, 22.275665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.044747, 18.377394, 22.166294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519685, 0.376272, 0.767038,
		0.811971, -0.061755, 0.580422,
		0.265765, 0.924448, -0.273429,
		13.124477, 18.654728, 22.084265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.220550, 18.175819, 22.859097>,  <12.938441, 18.007614, 22.275665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.220550, 18.175819, 22.859097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.082258, 18.489847, 22.653519>,  <12.999284, 18.678263, 22.530172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.082258, 18.489847, 22.653519>,  <13.220550, 18.175819, 22.859097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.082258, 18.489847, 22.653519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431834, 0.353152, 0.829941,
		0.833061, 0.508873, 0.216925,
		-0.345728, 0.785068, -0.513946,
		12.978540, 18.725368, 22.499334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.310567, 18.759020, 23.307671>,  <13.220550, 18.175819, 22.859097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.310567, 18.759020, 23.307671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.113585, 18.966303, 23.027969>,  <12.995397, 19.090672, 22.860149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.113585, 18.966303, 23.027969>,  <13.310567, 18.759020, 23.307671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.113585, 18.966303, 23.027969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396982, 0.581240, 0.710328,
		0.774528, 0.627394, -0.080516,
		-0.492454, 0.518205, -0.699251,
		12.965849, 19.121765, 22.818193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.447358, 19.555567, 23.424753>,  <13.310567, 18.759020, 23.307671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.447358, 19.555567, 23.424753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.094666, 19.503353, 23.243420>,  <12.883050, 19.472025, 23.134621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.094666, 19.503353, 23.243420>,  <13.447358, 19.555567, 23.424753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.094666, 19.503353, 23.243420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466718, 0.381358, 0.797960,
		0.068721, 0.915165, -0.397178,
		-0.881732, -0.130534, -0.453332,
		12.830146, 19.464193, 23.107420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.141214, 20.226437, 23.609478>,  <13.447358, 19.555567, 23.424753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.141214, 20.226437, 23.609478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.870030, 19.948586, 23.513262>,  <12.707320, 19.781874, 23.455532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.870030, 19.948586, 23.513262>,  <13.141214, 20.226437, 23.609478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.870030, 19.948586, 23.513262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545065, 0.255466, 0.798524,
		-0.493228, 0.672478, -0.551814,
		-0.677960, -0.694629, -0.240541,
		12.666642, 19.740196, 23.441099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.442473, 20.583298, 23.602730>,  <13.141214, 20.226437, 23.609478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.442473, 20.583298, 23.602730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.395130, 20.191013, 23.664953>,  <12.366724, 19.955643, 23.702288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.395130, 20.191013, 23.664953>,  <12.442473, 20.583298, 23.602730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.395130, 20.191013, 23.664953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510294, 0.194464, 0.837725,
		-0.851816, 0.019771, -0.523467,
		-0.118358, -0.980710, 0.155558,
		12.359623, 19.896801, 23.711620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.689491, 20.442707, 23.764174>,  <12.442473, 20.583298, 23.602730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.689491, 20.442707, 23.764174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.898348, 20.147745, 23.935568>,  <12.023662, 19.970768, 24.038404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.898348, 20.147745, 23.935568>,  <11.689491, 20.442707, 23.764174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.898348, 20.147745, 23.935568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455507, 0.183631, 0.871087,
		-0.721028, -0.650010, -0.240013,
		0.522141, -0.737406, 0.428487,
		12.054990, 19.926523, 24.064114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.122847, 20.136669, 24.176582>,  <11.689491, 20.442707, 23.764174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.122847, 20.136669, 24.176582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.472154, 19.983681, 24.297325>,  <11.681738, 19.891888, 24.369770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.472154, 19.983681, 24.297325>,  <11.122847, 20.136669, 24.176582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.472154, 19.983681, 24.297325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356802, -0.080098, 0.930740,
		-0.331806, -0.920488, -0.206415,
		0.873268, -0.382474, 0.301855,
		11.734135, 19.868938, 24.387882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.995098, 19.652384, 24.721413>,  <11.122847, 20.136669, 24.176582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.995098, 19.652384, 24.721413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.387153, 19.667421, 24.799305>,  <11.622385, 19.676445, 24.846041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.387153, 19.667421, 24.799305>,  <10.995098, 19.652384, 24.721413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.387153, 19.667421, 24.799305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186797, -0.154915, 0.970107,
		0.066640, -0.987212, -0.144815,
		0.980136, 0.037597, 0.194732,
		11.681193, 19.678699, 24.857725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.125024, 19.184189, 25.137482>,  <10.995098, 19.652384, 24.721413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.125024, 19.184189, 25.137482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.444824, 19.413282, 25.209898>,  <11.636704, 19.550739, 25.253347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.444824, 19.413282, 25.209898>,  <11.125024, 19.184189, 25.137482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.444824, 19.413282, 25.209898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144066, -0.109764, 0.983462,
		0.583133, -0.812360, -0.005245,
		0.799500, 0.572734, 0.181041,
		11.684674, 19.585102, 25.264210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.601089, 18.801733, 25.635338>,  <11.125024, 19.184189, 25.137482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.601089, 18.801733, 25.635338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.652787, 19.197382, 25.663425>,  <11.683806, 19.434772, 25.680279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.652787, 19.197382, 25.663425>,  <11.601089, 18.801733, 25.635338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.652787, 19.197382, 25.663425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000872, -0.070926, 0.997481,
		0.991612, -0.128859, -0.010029,
		0.129245, 0.989123, 0.070219,
		11.691561, 19.494120, 25.684490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.182836, 18.989756, 26.136280>,  <11.601089, 18.801733, 25.635338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.182836, 18.989756, 26.136280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.982361, 19.335808, 26.143873>,  <11.862076, 19.543440, 26.148430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.982361, 19.335808, 26.143873>,  <12.182836, 18.989756, 26.136280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.982361, 19.335808, 26.143873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184623, 0.085473, 0.979086,
		0.845414, 0.494210, -0.202561,
		-0.501188, 0.865130, 0.018983,
		11.832005, 19.595346, 26.149569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.428014, 19.369123, 26.736526>,  <12.182836, 18.989756, 26.136280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.428014, 19.369123, 26.736526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.104769, 19.581984, 26.635519>,  <11.910822, 19.709700, 26.574915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.104769, 19.581984, 26.635519>,  <12.428014, 19.369123, 26.736526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.104769, 19.581984, 26.635519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238999, 0.095598, 0.966302,
		0.538361, 0.841234, 0.049930,
		-0.808113, 0.532152, -0.252520,
		11.862335, 19.741629, 26.559763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.436929, 19.909946, 27.201437>,  <12.428014, 19.369123, 26.736526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.436929, 19.909946, 27.201437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.065541, 19.898180, 27.053339>,  <11.842709, 19.891119, 26.964481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.065541, 19.898180, 27.053339>,  <12.436929, 19.909946, 27.201437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.065541, 19.898180, 27.053339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368322, 0.201218, 0.907662,
		0.047798, 0.979105, -0.197660,
		-0.928469, -0.029418, -0.370243,
		11.787001, 19.889355, 26.942266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.198519, 20.468683, 27.524345>,  <12.436929, 19.909946, 27.201437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.198519, 20.468683, 27.524345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.879153, 20.254019, 27.415144>,  <11.687534, 20.125221, 27.349623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.879153, 20.254019, 27.415144>,  <12.198519, 20.468683, 27.524345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.879153, 20.254019, 27.415144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412664, 0.157547, 0.897155,
		-0.438456, 0.828960, -0.347249,
		-0.798414, -0.536660, -0.273005,
		11.639629, 20.093021, 27.333242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.670452, 20.848192, 27.787910>,  <12.198519, 20.468683, 27.524345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.670452, 20.848192, 27.787910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.513645, 20.486443, 27.720472>,  <11.419560, 20.269392, 27.680010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.513645, 20.486443, 27.720472>,  <11.670452, 20.848192, 27.787910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.513645, 20.486443, 27.720472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532014, 0.073353, 0.843552,
		-0.750521, 0.420384, -0.509897,
		-0.392018, -0.904376, -0.168598,
		11.396040, 20.215130, 27.669893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.888531, 20.865120, 27.843864>,  <11.670452, 20.848192, 27.787910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.888531, 20.865120, 27.843864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.989711, 20.483543, 27.908371>,  <11.050419, 20.254597, 27.947075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.989711, 20.483543, 27.908371>,  <10.888531, 20.865120, 27.843864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.989711, 20.483543, 27.908371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365270, 0.060188, 0.928954,
		-0.895876, -0.293886, -0.333223,
		0.252951, -0.953944, 0.161268,
		11.065596, 20.197361, 27.956751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.335634, 20.643402, 28.180241>,  <10.888531, 20.865120, 27.843864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.335634, 20.643402, 28.180241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.630683, 20.393993, 28.283880>,  <10.807713, 20.244349, 28.346064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.630683, 20.393993, 28.283880>,  <10.335634, 20.643402, 28.180241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.630683, 20.393993, 28.283880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260445, 0.091298, 0.961162,
		-0.622963, -0.776455, -0.095050,
		0.737622, -0.623524, 0.259099,
		10.851970, 20.206936, 28.361610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.204020, 20.255989, 28.707241>,  <10.335634, 20.643402, 28.180241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.204020, 20.255989, 28.707241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.600121, 20.263723, 28.762411>,  <10.837783, 20.268364, 28.795513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.600121, 20.263723, 28.762411>,  <10.204020, 20.255989, 28.707241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.600121, 20.263723, 28.762411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137567, 0.290385, 0.946970,
		-0.021743, -0.956715, 0.290214,
		0.990254, 0.019334, 0.137926,
		10.897198, 20.269524, 28.803789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.405077, 20.395006, 28.514517>,  <10.204020, 20.255989, 28.707241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.405077, 20.395006, 28.514517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.097104, 20.153584, 28.597389>,  <8.912320, 20.008730, 28.647114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.097104, 20.153584, 28.597389>,  <9.405077, 20.395006, 28.514517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.097104, 20.153584, 28.597389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187641, -0.524454, -0.830505,
		0.609915, -0.600556, 0.517046,
		-0.769931, -0.603557, 0.207183,
		8.866124, 19.972517, 28.659544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.589081, 19.650072, 28.510204>,  <9.405077, 20.395006, 28.514517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.589081, 19.650072, 28.510204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.212691, 19.704445, 28.386209>,  <8.986857, 19.737068, 28.311813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.212691, 19.704445, 28.386209>,  <9.589081, 19.650072, 28.510204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.212691, 19.704445, 28.386209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173923, -0.591492, -0.787330,
		-0.290378, -0.794770, 0.532936,
		-0.940974, 0.135933, -0.309985,
		8.930399, 19.745226, 28.293213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.619038, 19.219484, 27.971994>,  <9.589081, 19.650072, 28.510204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.619038, 19.219484, 27.971994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.265240, 19.391977, 27.900766>,  <9.052961, 19.495472, 27.858028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.265240, 19.391977, 27.900766>,  <9.619038, 19.219484, 27.971994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.265240, 19.391977, 27.900766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011542, -0.401787, -0.915660,
		-0.466409, -0.807841, 0.360355,
		-0.884494, 0.431232, -0.178073,
		8.999891, 19.521347, 27.847345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.181042, 18.698250, 27.542618>,  <9.619038, 19.219484, 27.971994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.181042, 18.698250, 27.542618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.965035, 19.029322, 27.481520>,  <8.835431, 19.227964, 27.444860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.965035, 19.029322, 27.481520>,  <9.181042, 18.698250, 27.542618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.965035, 19.029322, 27.481520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128821, -0.260624, -0.956807,
		-0.831738, -0.497015, 0.247363,
		-0.540016, 0.827678, -0.152744,
		8.803030, 19.277626, 27.435696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.549835, 18.577330, 27.223604>,  <9.181042, 18.698250, 27.542618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.549835, 18.577330, 27.223604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.651203, 18.948267, 27.113470>,  <8.712024, 19.170830, 27.047390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.651203, 18.948267, 27.113470>,  <8.549835, 18.577330, 27.223604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.651203, 18.948267, 27.113470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120190, -0.252236, -0.960172,
		-0.959861, 0.276420, 0.047536,
		0.253421, 0.927345, -0.275335,
		8.727229, 19.226471, 27.030870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.117914, 18.654461, 26.719145>,  <8.549835, 18.577330, 27.223604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.117914, 18.654461, 26.719145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.405480, 18.927128, 26.664753>,  <8.578020, 19.090729, 26.632118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.405480, 18.927128, 26.664753>,  <8.117914, 18.654461, 26.719145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.405480, 18.927128, 26.664753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001288, -0.196933, -0.980416,
		-0.695096, 0.704661, -0.142456,
		0.718915, 0.681667, -0.135980,
		8.621155, 19.131628, 26.623959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.899574, 19.081507, 26.157831>,  <8.117914, 18.654461, 26.719145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.899574, 19.081507, 26.157831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.298245, 19.106352, 26.178898>,  <8.537448, 19.121260, 26.191538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.298245, 19.106352, 26.178898>,  <7.899574, 19.081507, 26.157831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.298245, 19.106352, 26.178898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067198, -0.261967, -0.962735,
		-0.046001, 0.963076, -0.265271,
		0.996679, 0.062113, 0.052666,
		8.597249, 19.124985, 26.194698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.091465, 19.475388, 25.570175>,  <7.899574, 19.081507, 26.157831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.091465, 19.475388, 25.570175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.413565, 19.265070, 25.679806>,  <8.606824, 19.138880, 25.745584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.413565, 19.265070, 25.679806>,  <8.091465, 19.475388, 25.570175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.413565, 19.265070, 25.679806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312865, -0.015871, -0.949665,
		0.503676, 0.850465, 0.151722,
		0.805249, -0.525792, 0.274075,
		8.655139, 19.107332, 25.762028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.758431, 19.753960, 25.308445>,  <8.091465, 19.475388, 25.570175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.758431, 19.753960, 25.308445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.863224, 19.378222, 25.396984>,  <8.926100, 19.152779, 25.450108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.863224, 19.378222, 25.396984>,  <8.758431, 19.753960, 25.308445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.863224, 19.378222, 25.396984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444386, -0.086179, -0.891681,
		0.856672, 0.331967, 0.394855,
		0.261981, -0.939346, 0.221349,
		8.941818, 19.096418, 25.463388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.504931, 19.726341, 25.095772>,  <8.758431, 19.753960, 25.308445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.504931, 19.726341, 25.095772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.369025, 19.351679, 25.129787>,  <9.287481, 19.126881, 25.150198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.369025, 19.351679, 25.129787>,  <9.504931, 19.726341, 25.095772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.369025, 19.351679, 25.129787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554555, -0.272544, -0.786249,
		0.759624, -0.219980, 0.612030,
		-0.339764, -0.936658, 0.085040,
		9.267096, 19.070681, 25.155300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.032395, 19.368475, 24.918621>,  <9.504931, 19.726341, 25.095772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.032395, 19.368475, 24.918621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.732456, 19.106600, 24.880438>,  <9.552492, 18.949474, 24.857529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.732456, 19.106600, 24.880438>,  <10.032395, 19.368475, 24.918621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.732456, 19.106600, 24.880438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483820, -0.444200, -0.754058,
		0.451271, -0.611613, 0.649834,
		-0.749848, -0.654687, -0.095456,
		9.507502, 18.910194, 24.851801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.246086, 18.684502, 24.994684>,  <10.032395, 19.368475, 24.918621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.246086, 18.684502, 24.994684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.915344, 18.658365, 24.771240>,  <9.716899, 18.642683, 24.637175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.915344, 18.658365, 24.771240>,  <10.246086, 18.684502, 24.994684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.915344, 18.658365, 24.771240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537864, -0.382136, -0.751448,
		-0.164362, -0.921793, 0.351117,
		-0.826854, -0.065344, -0.558608,
		9.667288, 18.638762, 24.603659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.454233, 18.376324, 24.459057>,  <10.246086, 18.684502, 24.994684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.454233, 18.376324, 24.459057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.098859, 18.428436, 24.283009>,  <9.885634, 18.459703, 24.177380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.098859, 18.428436, 24.283009>,  <10.454233, 18.376324, 24.459057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.098859, 18.428436, 24.283009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363571, -0.385554, -0.848035,
		-0.280173, -0.913441, 0.295174,
		-0.888436, 0.130280, -0.440123,
		9.832328, 18.467520, 24.150972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.335757, 17.738028, 24.120855>,  <10.454233, 18.376324, 24.459057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.335757, 17.738028, 24.120855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.105434, 18.017288, 23.950665>,  <9.967240, 18.184845, 23.848549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.105434, 18.017288, 23.950665>,  <10.335757, 17.738028, 24.120855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.105434, 18.017288, 23.950665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527076, -0.080850, -0.845963,
		-0.625010, -0.711371, -0.321424,
		-0.575807, 0.698150, -0.425479,
		9.932693, 18.226734, 23.823021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.093885, 17.485401, 23.498886>,  <10.335757, 17.738028, 24.120855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.093885, 17.485401, 23.498886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.078218, 17.884224, 23.472521>,  <10.068818, 18.123518, 23.456701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.078218, 17.884224, 23.472521>,  <10.093885, 17.485401, 23.498886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.078218, 17.884224, 23.472521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343089, -0.048535, -0.938048,
		-0.938486, -0.059355, -0.340178,
		-0.039167, 0.997056, -0.065913,
		10.066468, 18.183340, 23.452747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.795155, 17.523876, 22.891680>,  <10.093885, 17.485401, 23.498886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.795155, 17.523876, 22.891680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.969579, 17.878197, 22.955183>,  <10.074233, 18.090790, 22.993286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.969579, 17.878197, 22.955183>,  <9.795155, 17.523876, 22.891680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.969579, 17.878197, 22.955183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251041, 0.049676, -0.966701,
		-0.864193, 0.461396, -0.200711,
		0.436061, 0.885803, 0.158759,
		10.100397, 18.143938, 23.002811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.739765, 17.864714, 22.298416>,  <9.795155, 17.523876, 22.891680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.739765, 17.864714, 22.298416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.007480, 18.116989, 22.455534>,  <10.168108, 18.268354, 22.549805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.007480, 18.116989, 22.455534>,  <9.739765, 17.864714, 22.298416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.007480, 18.116989, 22.455534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440543, 0.088863, -0.893323,
		-0.598314, 0.770931, -0.218371,
		0.669285, 0.630689, 0.392796,
		10.208265, 18.306196, 22.573372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.770641, 18.589540, 22.022503>,  <9.739765, 17.864714, 22.298416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.770641, 18.589540, 22.022503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.129414, 18.528370, 22.188456>,  <10.344677, 18.491667, 22.288027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.129414, 18.528370, 22.188456>,  <9.770641, 18.589540, 22.022503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.129414, 18.528370, 22.188456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434988, 0.136739, -0.889993,
		0.079374, 0.978731, 0.189168,
		0.896931, -0.152928, 0.414883,
		10.398493, 18.482491, 22.312920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.059802, 19.169411, 21.797943>,  <9.770641, 18.589540, 22.022503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.059802, 19.169411, 21.797943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.322145, 18.878300, 21.878134>,  <10.479549, 18.703632, 21.926249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.322145, 18.878300, 21.878134>,  <10.059802, 19.169411, 21.797943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.322145, 18.878300, 21.878134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372735, 0.081269, -0.924372,
		0.656447, 0.680979, 0.324570,
		0.655855, -0.727780, 0.200476,
		10.518901, 18.659966, 21.938276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.728858, 19.383017, 21.630417>,  <10.059802, 19.169411, 21.797943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.728858, 19.383017, 21.630417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.741529, 18.983322, 21.621250>,  <10.749130, 18.743505, 21.615749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.741529, 18.983322, 21.621250>,  <10.728858, 19.383017, 21.630417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.741529, 18.983322, 21.621250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400051, 0.033686, -0.915874,
		0.915945, 0.019843, 0.400812,
		0.031676, -0.999235, -0.022917,
		10.751031, 18.683552, 21.614374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.415323, 19.260187, 21.317961>,  <10.728858, 19.383017, 21.630417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.415323, 19.260187, 21.317961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.200338, 18.927856, 21.260191>,  <11.071347, 18.728458, 21.225529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.200338, 18.927856, 21.260191>,  <11.415323, 19.260187, 21.317961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.200338, 18.927856, 21.260191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460837, -0.145940, -0.875403,
		0.706233, -0.537052, 0.461314,
		-0.537462, -0.830829, -0.144426,
		11.039100, 18.678608, 21.216864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.472218, 22.579020, 5.545751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.852806, 22.679832, 5.616386>,  <20.081160, 22.740320, 5.658767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.852806, 22.679832, 5.616386>,  <19.472218, 22.579020, 5.545751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.852806, 22.679832, 5.616386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072727, -0.741723, 0.666752,
		0.299024, -0.621552, -0.724057,
		0.951470, 0.252033, 0.176589,
		20.138247, 22.755442, 5.669363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.087572, 23.198364, 5.910805>,  <19.472218, 22.579020, 5.545751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.087572, 23.198364, 5.910805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.006723, 22.848192, 6.086426>,  <18.958214, 22.638088, 6.191798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.006723, 22.848192, 6.086426>,  <19.087572, 23.198364, 5.910805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.006723, 22.848192, 6.086426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924270, -0.318749, -0.210058,
		0.323838, 0.363345, 0.873561,
		-0.202124, -0.875431, 0.439052,
		18.946087, 22.585564, 6.218142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.752680, 22.928129, 6.282480>,  <19.087572, 23.198364, 5.910805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.752680, 22.928129, 6.282480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.524462, 22.602421, 6.239687>,  <19.387531, 22.406996, 6.214012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.524462, 22.602421, 6.239687>,  <19.752680, 22.928129, 6.282480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.524462, 22.602421, 6.239687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821071, -0.568396, -0.052619,
		-0.017961, -0.117861, 0.992868,
		-0.570544, -0.814269, -0.106981,
		19.353298, 22.358139, 6.207593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.871092, 22.767641, 7.100038>,  <19.752680, 22.928129, 6.282480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.871092, 22.767641, 7.100038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.257986, 22.815014, 7.010216>,  <20.490124, 22.843437, 6.956323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.257986, 22.815014, 7.010216>,  <19.871092, 22.767641, 7.100038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.257986, 22.815014, 7.010216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247111, -0.641985, 0.725804,
		-0.058201, -0.757515, -0.650218,
		0.967237, 0.118433, -0.224555,
		20.548157, 22.850544, 6.942849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.586718, 22.116335, 7.251616>,  <19.871092, 22.767641, 7.100038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.586718, 22.116335, 7.251616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.246416, 21.910902, 7.206982>,  <19.042234, 21.787642, 7.180201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.246416, 21.910902, 7.206982>,  <19.586718, 22.116335, 7.251616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.246416, 21.910902, 7.206982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398170, -0.768423, 0.500986,
		-0.343043, 0.381785, 0.858232,
		-0.850754, -0.513582, -0.111587,
		18.991190, 21.756828, 7.173506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.477421, 21.845625, 7.855337>,  <19.586718, 22.116335, 7.251616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.477421, 21.845625, 7.855337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.290491, 21.622087, 7.581315>,  <19.178333, 21.487965, 7.416901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.290491, 21.622087, 7.581315>,  <19.477421, 21.845625, 7.855337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.290491, 21.622087, 7.581315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507419, -0.804086, 0.309795,
		-0.723970, -0.202835, 0.659337,
		-0.467326, -0.558842, -0.685056,
		19.150293, 21.454435, 7.375798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.110657, 21.239374, 8.132226>,  <19.477421, 21.845625, 7.855337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.110657, 21.239374, 8.132226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.210720, 21.146027, 7.756362>,  <19.270758, 21.090017, 7.530844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.210720, 21.146027, 7.756362>,  <19.110657, 21.239374, 8.132226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.210720, 21.146027, 7.756362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646353, -0.682335, 0.341536,
		-0.720867, -0.692790, -0.019851,
		0.250157, -0.233371, -0.939659,
		19.285767, 21.076015, 7.474465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.033072, 20.532356, 7.929048>,  <19.110657, 21.239374, 8.132226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.033072, 20.532356, 7.929048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.347466, 20.696743, 7.744295>,  <19.536102, 20.795376, 7.633442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.347466, 20.696743, 7.744295>,  <19.033072, 20.532356, 7.929048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.347466, 20.696743, 7.744295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612376, -0.620222, 0.490224,
		-0.085004, -0.668155, -0.739150,
		0.785983, 0.410967, -0.461884,
		19.583260, 20.820034, 7.605730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.527077, 19.932564, 7.686500>,  <19.033072, 20.532356, 7.929048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.527077, 19.932564, 7.686500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.746977, 20.265343, 7.716539>,  <19.878918, 20.465010, 7.734563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.746977, 20.265343, 7.716539>,  <19.527077, 19.932564, 7.686500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.746977, 20.265343, 7.716539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617284, -0.465175, 0.634486,
		0.562792, -0.302452, -0.769277,
		0.549750, 0.831946, 0.075098,
		19.911901, 20.514927, 7.739069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.206760, 19.690994, 7.450520>,  <19.527077, 19.932564, 7.686500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.206760, 19.690994, 7.450520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.229727, 20.010530, 7.690039>,  <20.243507, 20.202251, 7.833751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.229727, 20.010530, 7.690039>,  <20.206760, 19.690994, 7.450520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.229727, 20.010530, 7.690039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533801, -0.531418, 0.657763,
		0.843659, 0.281872, -0.456933,
		0.057417, 0.798839, 0.598799,
		20.246952, 20.250181, 7.869679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.821793, 19.733435, 7.718766>,  <20.206760, 19.690994, 7.450520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.821793, 19.733435, 7.718766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.612682, 19.950150, 7.982029>,  <20.487215, 20.080179, 8.139987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.612682, 19.950150, 7.982029>,  <20.821793, 19.733435, 7.718766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.612682, 19.950150, 7.982029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473217, -0.457742, 0.752687,
		0.709062, 0.704939, -0.017086,
		-0.522777, 0.541787, 0.658157,
		20.455849, 20.112686, 8.179476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251339, 19.858767, 8.214861>,  <20.821793, 19.733435, 7.718766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.251339, 19.858767, 8.214861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.908241, 19.957735, 8.395109>,  <20.702383, 20.017117, 8.503258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.908241, 19.957735, 8.395109>,  <21.251339, 19.858767, 8.214861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.908241, 19.957735, 8.395109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372194, -0.305761, 0.876346,
		0.354609, 0.919398, 0.170176,
		-0.857744, 0.247421, 0.450620,
		20.650919, 20.031961, 8.530295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.416626, 20.205450, 8.852205>,  <21.251339, 19.858767, 8.214861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.416626, 20.205450, 8.852205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.042463, 20.071161, 8.896585>,  <20.817966, 19.990587, 8.923212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.042463, 20.071161, 8.896585>,  <21.416626, 20.205450, 8.852205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.042463, 20.071161, 8.896585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274104, -0.490314, 0.827320,
		-0.223350, 0.804290, 0.550665,
		-0.935405, -0.335722, 0.110947,
		20.761843, 19.970446, 8.929869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.199417, 20.397768, 9.554295>,  <21.416626, 20.205450, 8.852205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.199417, 20.397768, 9.554295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.993755, 20.078836, 9.427859>,  <20.870359, 19.887478, 9.351998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.993755, 20.078836, 9.427859>,  <21.199417, 20.397768, 9.554295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.993755, 20.078836, 9.427859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231255, -0.483753, 0.844099,
		-0.825934, 0.360900, 0.433110,
		-0.514154, -0.797329, -0.316089,
		20.839510, 19.839638, 9.333033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.752127, 20.240261, 10.184380>,  <21.199417, 20.397768, 9.554295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.752127, 20.240261, 10.184380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.773832, 19.926710, 9.936965>,  <20.786856, 19.738579, 9.788516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.773832, 19.926710, 9.936965>,  <20.752127, 20.240261, 10.184380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.773832, 19.926710, 9.936965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018804, -0.620143, 0.784264,
		-0.998350, -0.030927, -0.048391,
		0.054264, -0.783879, -0.618538,
		20.790112, 19.691545, 9.751404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.326391, 19.770039, 10.461115>,  <20.752127, 20.240261, 10.184380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.326391, 19.770039, 10.461115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.499052, 19.513153, 10.207742>,  <20.602648, 19.359022, 10.055718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.499052, 19.513153, 10.207742>,  <20.326391, 19.770039, 10.461115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.499052, 19.513153, 10.207742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013237, -0.706656, 0.707434,
		-0.901943, -0.296980, -0.313531,
		0.431652, -0.642215, -0.633432,
		20.628548, 19.320488, 10.017713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.076336, 19.118965, 10.597862>,  <20.326391, 19.770039, 10.461115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.076336, 19.118965, 10.597862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.426416, 19.051426, 10.416527>,  <20.636465, 19.010902, 10.307726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.426416, 19.051426, 10.416527>,  <20.076336, 19.118965, 10.597862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.426416, 19.051426, 10.416527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204310, -0.720425, 0.662756,
		-0.438499, -0.672666, -0.596019,
		0.875201, -0.168846, -0.453338,
		20.688976, 19.000772, 10.280525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.122162, 18.430845, 10.640868>,  <20.076336, 19.118965, 10.597862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.122162, 18.430845, 10.640868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.497469, 18.512619, 10.529257>,  <20.722654, 18.561684, 10.462290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.497469, 18.512619, 10.529257>,  <20.122162, 18.430845, 10.640868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.497469, 18.512619, 10.529257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334709, -0.740163, 0.583206,
		-0.087298, -0.640597, -0.762899,
		0.938269, 0.204436, -0.279028,
		20.778950, 18.573950, 10.445548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.480959, 17.758436, 10.292085>,  <20.122162, 18.430845, 10.640868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.480959, 17.758436, 10.292085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.750130, 18.007994, 10.451044>,  <20.911633, 18.157728, 10.546419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.750130, 18.007994, 10.451044>,  <20.480959, 17.758436, 10.292085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.750130, 18.007994, 10.451044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302246, -0.722251, 0.622094,
		0.675142, -0.298512, -0.674592,
		0.672926, 0.623895, 0.397398,
		20.952007, 18.195162, 10.570264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124105, 17.363554, 10.280087>,  <20.480959, 17.758436, 10.292085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124105, 17.363554, 10.280087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.143293, 17.653807, 10.554650>,  <21.154806, 17.827959, 10.719389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.143293, 17.653807, 10.554650>,  <21.124105, 17.363554, 10.280087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.143293, 17.653807, 10.554650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238052, -0.675704, 0.697678,
		0.970067, 0.129933, -0.205152,
		0.047971, 0.725632, 0.686409,
		21.157684, 17.871496, 10.760573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.780066, 17.294966, 10.588728>,  <21.124105, 17.363554, 10.280087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.780066, 17.294966, 10.588728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.579304, 17.528385, 10.844090>,  <21.458847, 17.668436, 10.997308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.579304, 17.528385, 10.844090>,  <21.780066, 17.294966, 10.588728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.579304, 17.528385, 10.844090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335786, -0.548748, 0.765587,
		0.797081, 0.598620, 0.079473,
		-0.501907, 0.583548, 0.638405,
		21.428732, 17.703449, 11.035612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.244186, 17.560707, 11.059945>,  <21.780066, 17.294966, 10.588728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.244186, 17.560707, 11.059945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.891123, 17.541204, 11.246938>,  <21.679285, 17.529503, 11.359134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.891123, 17.541204, 11.246938>,  <22.244186, 17.560707, 11.059945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.891123, 17.541204, 11.246938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417651, -0.537594, 0.732503,
		0.215602, 0.841793, 0.494874,
		-0.882657, -0.048756, 0.467482,
		21.626326, 17.526577, 11.387182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.469429, 17.622627, 11.717431>,  <22.244186, 17.560707, 11.059945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.469429, 17.622627, 11.717431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.099962, 17.473492, 11.752829>,  <21.878283, 17.384010, 11.774067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.099962, 17.473492, 11.752829>,  <22.469429, 17.622627, 11.717431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.099962, 17.473492, 11.752829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344978, -0.708529, 0.615610,
		-0.166822, 0.599148, 0.783066,
		-0.923667, -0.372838, 0.088495,
		21.822863, 17.361641, 11.779377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.258526, 17.633169, 12.521785>,  <22.469429, 17.622627, 11.717431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.258526, 17.633169, 12.521785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.041084, 17.372072, 12.310722>,  <21.910620, 17.215414, 12.184085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.041084, 17.372072, 12.310722>,  <22.258526, 17.633169, 12.521785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.041084, 17.372072, 12.310722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132783, -0.687617, 0.713829,
		-0.828772, 0.317976, 0.460465,
		-0.543604, -0.652743, -0.527656,
		21.878002, 17.176249, 12.152426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.912483, 17.235907, 13.031454>,  <22.258526, 17.633169, 12.521785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.912483, 17.235907, 13.031454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.892935, 17.014174, 12.699110>,  <21.881207, 16.881134, 12.499703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.892935, 17.014174, 12.699110>,  <21.912483, 17.235907, 13.031454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.892935, 17.014174, 12.699110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237445, -0.814454, 0.529419,
		-0.970171, -0.171411, 0.171425,
		-0.048869, -0.554331, -0.830860,
		21.878275, 16.847874, 12.449852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.391323, 16.691830, 13.252818>,  <21.912483, 17.235907, 13.031454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.391323, 16.691830, 13.252818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.646650, 16.596022, 12.960194>,  <21.799847, 16.538538, 12.784619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.646650, 16.596022, 12.960194>,  <21.391323, 16.691830, 13.252818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.646650, 16.596022, 12.960194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286141, -0.808431, 0.514356,
		-0.714614, -0.537652, -0.447500,
		0.638318, -0.239518, -0.731561,
		21.838146, 16.524166, 12.740726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.326927, 16.008705, 13.134842>,  <21.391323, 16.691830, 13.252818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.326927, 16.008705, 13.134842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.681389, 16.083021, 12.965037>,  <21.894066, 16.127611, 12.863154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.681389, 16.083021, 12.965037>,  <21.326927, 16.008705, 13.134842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.681389, 16.083021, 12.965037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339861, -0.883323, 0.322854,
		-0.314997, -0.430374, -0.845905,
		0.886155, 0.185792, -0.424511,
		21.947235, 16.138760, 12.837684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.506721, 15.295465, 12.868307>,  <21.326927, 16.008705, 13.134842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.506721, 15.295465, 12.868307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.838242, 15.519190, 12.861884>,  <22.037153, 15.653425, 12.858030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.838242, 15.519190, 12.861884>,  <21.506721, 15.295465, 12.868307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.838242, 15.519190, 12.861884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554572, -0.817282, 0.156526,
		0.074424, -0.138634, -0.987543,
		0.828801, 0.559313, -0.016057,
		22.086882, 15.686984, 12.857067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.920311, 15.070362, 12.303752>,  <21.506721, 15.295465, 12.868307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.920311, 15.070362, 12.303752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.152792, 15.247763, 12.576665>,  <22.292280, 15.354203, 12.740413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.152792, 15.247763, 12.576665>,  <21.920311, 15.070362, 12.303752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.152792, 15.247763, 12.576665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494096, -0.858519, 0.137166,
		0.646587, 0.257392, -0.718105,
		0.581201, 0.443503, 0.682284,
		22.327152, 15.380814, 12.781350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.404049, 14.629743, 12.229659>,  <21.920311, 15.070362, 12.303752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.404049, 14.629743, 12.229659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.529352, 14.850053, 12.539114>,  <22.604534, 14.982239, 12.724787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.529352, 14.850053, 12.539114>,  <22.404049, 14.629743, 12.229659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.529352, 14.850053, 12.539114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653274, -0.716250, 0.245398,
		0.689277, 0.428524, -0.584179,
		0.313259, 0.550776, 0.773637,
		22.623329, 15.015285, 12.771205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.135702, 14.693094, 12.130173>,  <22.404049, 14.629743, 12.229659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.135702, 14.693094, 12.130173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.055136, 14.705964, 12.521764>,  <23.006796, 14.713686, 12.756719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.055136, 14.705964, 12.521764>,  <23.135702, 14.693094, 12.130173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.055136, 14.705964, 12.521764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809303, -0.557553, 0.184832,
		0.551779, 0.829517, 0.086261,
		-0.201416, 0.032175, 0.978977,
		22.994711, 14.715616, 12.815457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.736336, 14.892872, 12.335904>,  <23.135702, 14.693094, 12.130173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.736336, 14.892872, 12.335904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.551790, 14.704323, 12.636558>,  <23.441063, 14.591193, 12.816950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.551790, 14.704323, 12.636558>,  <23.736336, 14.892872, 12.335904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.551790, 14.704323, 12.636558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827772, -0.533572, 0.173478,
		0.319278, 0.702218, 0.636358,
		-0.461362, -0.471372, 0.751634,
		23.413382, 14.562911, 12.862048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.989965, 15.018804, 12.967947>,  <23.736336, 14.892872, 12.335904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.989965, 15.018804, 12.967947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.827993, 14.654710, 13.002590>,  <23.730810, 14.436254, 13.023376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.827993, 14.654710, 13.002590>,  <23.989965, 15.018804, 12.967947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.827993, 14.654710, 13.002590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893121, -0.373463, 0.250720,
		-0.195869, 0.178876, 0.964178,
		-0.404932, -0.910235, 0.086609,
		23.706514, 14.381639, 13.028573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.980082, 14.812854, 13.630671>,  <23.989965, 15.018804, 12.967947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.980082, 14.812854, 13.630671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.008715, 14.528067, 13.351249>,  <24.025894, 14.357194, 13.183596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.008715, 14.528067, 13.351249>,  <23.980082, 14.812854, 13.630671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.008715, 14.528067, 13.351249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850332, -0.322512, 0.415839,
		-0.521356, -0.623768, 0.582323,
		0.071581, -0.711968, -0.698554,
		24.030190, 14.314476, 13.141683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.440147, 14.204877, 13.549397>,  <23.980082, 14.812854, 13.630671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.440147, 14.204877, 13.549397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.577852, 14.172830, 13.175218>,  <24.660475, 14.153601, 12.950709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.577852, 14.172830, 13.175218>,  <24.440147, 14.204877, 13.549397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577852, 14.172830, 13.175218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247723, 0.953294, -0.172813,
		0.905604, 0.291225, 0.308334,
		0.344260, -0.080119, -0.935450,
		24.681129, 14.148794, 12.894583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.650141, 14.932403, 13.311451>,  <24.440147, 14.204877, 13.549397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.650141, 14.932403, 13.311451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.962811, 14.765770, 13.125786>,  <25.150412, 14.665791, 13.014387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.962811, 14.765770, 13.125786>,  <24.650141, 14.932403, 13.311451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.962811, 14.765770, 13.125786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018671, 0.759518, -0.650219,
		0.623410, 0.499592, 0.601472,
		0.781672, -0.416582, -0.464163,
		25.197311, 14.640795, 12.986537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.001175, 15.431359, 13.305788>,  <24.650141, 14.932403, 13.311451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.001175, 15.431359, 13.305788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.161230, 15.193246, 13.027070>,  <25.257263, 15.050378, 12.859838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.161230, 15.193246, 13.027070>,  <25.001175, 15.431359, 13.305788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161230, 15.193246, 13.027070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238109, 0.801736, -0.548201,
		0.884982, 0.053443, 0.462549,
		0.400139, -0.595285, -0.696796,
		25.281271, 15.014661, 12.818031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618633, 15.757403, 13.083464>,  <25.001175, 15.431359, 13.305788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618633, 15.757403, 13.083464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.472404, 15.512375, 12.803145>,  <25.384668, 15.365357, 12.634954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.472404, 15.512375, 12.803145>,  <25.618633, 15.757403, 13.083464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.472404, 15.512375, 12.803145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211057, 0.678743, -0.703394,
		0.906539, -0.405047, -0.118841,
		-0.365570, -0.612572, -0.700795,
		25.362734, 15.328604, 12.592907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105677, 15.820271, 12.522301>,  <25.618633, 15.757403, 13.083464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105677, 15.820271, 12.522301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.780054, 15.664842, 12.349641>,  <25.584681, 15.571584, 12.246045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.780054, 15.664842, 12.349641>,  <26.105677, 15.820271, 12.522301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780054, 15.664842, 12.349641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095999, 0.642969, -0.759852,
		0.572794, -0.660002, -0.486112,
		-0.814059, -0.388572, -0.431648,
		25.535837, 15.548270, 12.220146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229042, 15.876869, 11.798663>,  <26.105677, 15.820271, 12.522301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229042, 15.876869, 11.798663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.834705, 15.810436, 11.807879>,  <25.598103, 15.770576, 11.813410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.834705, 15.810436, 11.807879>,  <26.229042, 15.876869, 11.798663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834705, 15.810436, 11.807879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122088, 0.616818, -0.777580,
		0.114930, -0.769384, -0.628362,
		-0.985843, -0.166082, 0.023042,
		25.538952, 15.760612, 11.814792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039064, 15.789268, 11.063385>,  <26.229042, 15.876869, 11.798663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039064, 15.789268, 11.063385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.709503, 15.897965, 11.262319>,  <25.511766, 15.963183, 11.381679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.709503, 15.897965, 11.262319>,  <26.039064, 15.789268, 11.063385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.709503, 15.897965, 11.262319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211025, 0.667345, -0.714226,
		-0.525980, -0.693402, -0.492482,
		-0.823902, 0.271743, 0.497335,
		25.462332, 15.979488, 11.411519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517788, 15.772585, 10.543792>,  <26.039064, 15.789268, 11.063385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517788, 15.772585, 10.543792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.385639, 15.992992, 10.850316>,  <25.306351, 16.125237, 11.034231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.385639, 15.992992, 10.850316>,  <25.517788, 15.772585, 10.543792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.385639, 15.992992, 10.850316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442012, 0.627043, -0.641438,
		-0.833955, -0.550631, 0.036401,
		-0.330370, 0.551020, 0.766311,
		25.286528, 16.158298, 11.080210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.803438, 15.865869, 10.413761>,  <25.517788, 15.772585, 10.543792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.803438, 15.865869, 10.413761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.909826, 16.174065, 10.645487>,  <24.973660, 16.358982, 10.784522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.909826, 16.174065, 10.645487>,  <24.803438, 15.865869, 10.413761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909826, 16.174065, 10.645487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481437, 0.626815, -0.612635,
		-0.835152, -0.115962, 0.537656,
		0.265969, 0.770491, 0.579314,
		24.989616, 16.405212, 10.819282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.233053, 16.280403, 10.451922>,  <24.803438, 15.865869, 10.413761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.233053, 16.280403, 10.451922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.520874, 16.538239, 10.555267>,  <24.693567, 16.692940, 10.617274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.520874, 16.538239, 10.555267>,  <24.233053, 16.280403, 10.451922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.520874, 16.538239, 10.555267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382836, 0.678609, -0.626839,
		-0.579380, 0.352133, 0.735066,
		0.719552, 0.644587, 0.258363,
		24.736740, 16.731615, 10.632776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.866722, 16.857658, 10.585310>,  <24.233053, 16.280403, 10.451922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.866722, 16.857658, 10.585310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.238815, 16.993584, 10.529898>,  <24.462070, 17.075140, 10.496651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.238815, 16.993584, 10.529898>,  <23.866722, 16.857658, 10.585310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.238815, 16.993584, 10.529898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361968, 0.787567, -0.498716,
		-0.060369, 0.514066, 0.855624,
		0.930234, 0.339815, -0.138530,
		24.517885, 17.095528, 10.488338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.794249, 17.544596, 10.661325>,  <23.866722, 16.857658, 10.585310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.794249, 17.544596, 10.661325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.144400, 17.560232, 10.468583>,  <24.354490, 17.569614, 10.352939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.144400, 17.560232, 10.468583>,  <23.794249, 17.544596, 10.661325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.144400, 17.560232, 10.468583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331943, 0.773229, -0.540307,
		0.351460, 0.632921, 0.689845,
		0.875380, 0.039094, -0.481853,
		24.407013, 17.571960, 10.324027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.885117, 18.250242, 10.545761>,  <23.794249, 17.544596, 10.661325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.885117, 18.250242, 10.545761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.120138, 18.070335, 10.276691>,  <24.261150, 17.962391, 10.115250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.120138, 18.070335, 10.276691>,  <23.885117, 18.250242, 10.545761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.120138, 18.070335, 10.276691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344122, 0.613495, -0.710777,
		0.732367, 0.649101, 0.205686,
		0.587553, -0.449768, -0.672674,
		24.296404, 17.935406, 10.074889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.343721, 18.775085, 10.290946>,  <23.885117, 18.250242, 10.545761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.343721, 18.775085, 10.290946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.302069, 18.471272, 10.034115>,  <24.277077, 18.288982, 9.880016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.302069, 18.471272, 10.034115>,  <24.343721, 18.775085, 10.290946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.302069, 18.471272, 10.034115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254240, 0.644467, -0.721128,
		0.961519, 0.088151, -0.260212,
		-0.104130, -0.759534, -0.642078,
		24.270830, 18.243412, 9.841492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.476070, 19.176014, 9.706995>,  <24.343721, 18.775085, 10.290946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.476070, 19.176014, 9.706995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.306637, 18.823908, 9.621474>,  <24.204977, 18.612644, 9.570162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.306637, 18.823908, 9.621474>,  <24.476070, 19.176014, 9.706995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.306637, 18.823908, 9.621474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512060, 0.427371, -0.745082,
		0.747244, -0.206123, -0.631775,
		-0.423582, -0.880265, -0.213803,
		24.179562, 18.559828, 9.557333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.627581, 19.132919, 8.998405>,  <24.476070, 19.176014, 9.706995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.627581, 19.132919, 8.998405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.321882, 18.885460, 9.071292>,  <24.138464, 18.736984, 9.115025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.321882, 18.885460, 9.071292>,  <24.627581, 19.132919, 8.998405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.321882, 18.885460, 9.071292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520669, 0.425135, -0.740381,
		0.380565, -0.660711, -0.647018,
		-0.764248, -0.618645, 0.182220,
		24.092607, 18.699865, 9.125957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.400784, 18.715996, 8.309324>,  <24.627581, 19.132919, 8.998405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.400784, 18.715996, 8.309324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.096067, 18.711767, 8.568420>,  <23.913239, 18.709230, 8.723878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.096067, 18.711767, 8.568420>,  <24.400784, 18.715996, 8.309324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.096067, 18.711767, 8.568420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564112, 0.502440, -0.655234,
		-0.318523, -0.864548, -0.388717,
		-0.761788, -0.010573, 0.647740,
		23.867531, 18.708595, 8.762742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.914787, 18.556376, 7.840744>,  <24.400784, 18.715996, 8.309324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.914787, 18.556376, 7.840744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.750799, 18.716022, 8.168799>,  <23.652407, 18.811811, 8.365633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.750799, 18.716022, 8.168799>,  <23.914787, 18.556376, 7.840744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.750799, 18.716022, 8.168799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448731, 0.694573, -0.562324,
		-0.794081, -0.598558, -0.105656,
		-0.409970, 0.399120, 0.820139,
		23.627808, 18.835758, 8.414842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.612276, 18.288605, 19.163158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286322, 18.074810, 19.073460>,  <16.090750, 17.946533, 19.019640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.286322, 18.074810, 19.073460>,  <16.612276, 18.288605, 19.163158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.286322, 18.074810, 19.073460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538551, -0.555146, -0.633857,
		0.214299, -0.637288, 0.740229,
		-0.814885, -0.534486, -0.224245,
		16.041857, 17.914465, 19.006186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876484, 17.675262, 19.166283>,  <16.612276, 18.288605, 19.163158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876484, 17.675262, 19.166283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.533928, 17.657663, 18.960503>,  <16.328394, 17.647104, 18.837034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.533928, 17.657663, 18.960503>,  <16.876484, 17.675262, 19.166283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.533928, 17.657663, 18.960503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465787, -0.495761, -0.732982,
		-0.222797, -0.867344, 0.445058,
		-0.856390, -0.043996, -0.514452,
		16.277012, 17.644464, 18.806168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.894676, 17.055094, 18.850069>,  <16.876484, 17.675262, 19.166283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.894676, 17.055094, 18.850069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616623, 17.247538, 18.636406>,  <16.449791, 17.363005, 18.508207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616623, 17.247538, 18.636406>,  <16.894676, 17.055094, 18.850069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.616623, 17.247538, 18.636406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301380, -0.479556, -0.824133,
		-0.652660, -0.733865, 0.188357,
		-0.695130, 0.481112, -0.534159,
		16.408083, 17.391870, 18.476158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.773800, 16.575672, 18.369963>,  <16.894676, 17.055094, 18.850069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.773800, 16.575672, 18.369963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.571762, 16.882746, 18.212208>,  <16.450541, 17.066990, 18.117554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.571762, 16.882746, 18.212208>,  <16.773800, 16.575672, 18.369963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.571762, 16.882746, 18.212208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218050, -0.328633, -0.918942,
		-0.835066, -0.550148, -0.001403,
		-0.505093, 0.767684, -0.394390,
		16.420235, 17.113050, 18.093891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.157909, 16.346342, 17.903084>,  <16.773800, 16.575672, 18.369963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.157909, 16.346342, 17.903084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.312061, 16.704418, 17.813534>,  <16.404552, 16.919264, 17.759804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.312061, 16.704418, 17.813534>,  <16.157909, 16.346342, 17.903084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.312061, 16.704418, 17.813534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177951, -0.310161, -0.933881,
		-0.905437, 0.320058, -0.278830,
		0.385379, 0.895189, -0.223876,
		16.427675, 16.972975, 17.746370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.883884, 16.429752, 17.192324>,  <16.157909, 16.346342, 17.903084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.883884, 16.429752, 17.192324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.185030, 16.688398, 17.241453>,  <16.365717, 16.843586, 17.270931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.185030, 16.688398, 17.241453>,  <15.883884, 16.429752, 17.192324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.185030, 16.688398, 17.241453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297791, -0.168231, -0.939691,
		-0.586955, 0.744035, -0.319211,
		0.752864, 0.646614, 0.122823,
		16.410889, 16.882383, 17.278299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.952919, 16.831049, 16.585024>,  <15.883884, 16.429752, 17.192324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.952919, 16.831049, 16.585024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.303051, 16.888216, 16.769794>,  <16.513130, 16.922516, 16.880657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.303051, 16.888216, 16.769794>,  <15.952919, 16.831049, 16.585024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.303051, 16.888216, 16.769794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481827, -0.177735, -0.858052,
		-0.040529, 0.973645, -0.224438,
		0.875329, 0.142916, 0.461925,
		16.565649, 16.931091, 16.908371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.227303, 17.191795, 16.150469>,  <15.952919, 16.831049, 16.585024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.227303, 17.191795, 16.150469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532705, 17.056164, 16.370317>,  <16.715946, 16.974785, 16.502226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532705, 17.056164, 16.370317>,  <16.227303, 17.191795, 16.150469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.532705, 17.056164, 16.370317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431069, -0.366129, -0.824699,
		0.480870, 0.866588, -0.133376,
		0.763507, -0.339079, 0.549620,
		16.761757, 16.954439, 16.535204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.783522, 17.357153, 15.832125>,  <16.227303, 17.191795, 16.150469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.783522, 17.357153, 15.832125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.928493, 17.066242, 16.065264>,  <17.015476, 16.891695, 16.205147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.928493, 17.066242, 16.065264>,  <16.783522, 17.357153, 15.832125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.928493, 17.066242, 16.065264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516284, -0.363986, -0.775220,
		0.775949, 0.581877, 0.243562,
		0.362429, -0.727278, 0.582848,
		17.037222, 16.848059, 16.240118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500277, 17.404917, 15.709270>,  <16.783522, 17.357153, 15.832125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.500277, 17.404917, 15.709270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.425373, 17.036646, 15.846258>,  <17.380430, 16.815683, 15.928452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.425373, 17.036646, 15.846258>,  <17.500277, 17.404917, 15.709270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.425373, 17.036646, 15.846258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451779, -0.390298, -0.802224,
		0.872256, 0.004497, 0.489030,
		-0.187259, -0.920678, 0.342471,
		17.369196, 16.760443, 15.948999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.161798, 17.030994, 15.672735>,  <17.500277, 17.404917, 15.709270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.161798, 17.030994, 15.672735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.884142, 16.744947, 15.705651>,  <17.717548, 16.573318, 15.725401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.884142, 16.744947, 15.705651>,  <18.161798, 17.030994, 15.672735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.884142, 16.744947, 15.705651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381483, -0.462395, -0.800413,
		0.610442, -0.524208, 0.593774,
		-0.694141, -0.715120, 0.082289,
		17.675900, 16.530411, 15.730338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.492031, 16.490442, 15.585014>,  <18.161798, 17.030994, 15.672735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.492031, 16.490442, 15.585014> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.116573, 16.381523, 15.500349>,  <17.891298, 16.316172, 15.449550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.116573, 16.381523, 15.500349>,  <18.492031, 16.490442, 15.585014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.116573, 16.381523, 15.500349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311126, -0.403711, -0.860359,
		0.148822, -0.873425, 0.463660,
		-0.938644, -0.272297, -0.211664,
		17.834980, 16.299833, 15.436850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.754658, 16.479809, 14.793584>,  <18.492031, 16.490442, 15.585014>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.754658, 16.479809, 14.793584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.505333, 16.193777, 14.667002>,  <18.355738, 16.022158, 14.591053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.505333, 16.193777, 14.667002>,  <18.754658, 16.479809, 14.793584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.505333, 16.193777, 14.667002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278799, -0.174872, 0.944294,
		-0.730583, 0.676818, -0.090363,
		-0.623314, -0.715078, -0.316454,
		18.318338, 15.979254, 14.572065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.309654, 15.906132, 14.697707>,  <18.754658, 16.479809, 14.793584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.309654, 15.906132, 14.697707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.528681, 15.626084, 14.514400>,  <19.660097, 15.458056, 14.404416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.528681, 15.626084, 14.514400>,  <19.309654, 15.906132, 14.697707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.528681, 15.626084, 14.514400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785561, 0.618748, -0.006657,
		0.288212, -0.356351, 0.888790,
		0.547565, -0.700117, -0.458267,
		19.692951, 15.416049, 14.376921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382374, 15.792524, 15.466259>,  <19.309654, 15.906132, 14.697707>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.382374, 15.792524, 15.466259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.665182, 15.558476, 15.625132>,  <19.834867, 15.418047, 15.720455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.665182, 15.558476, 15.625132>,  <19.382374, 15.792524, 15.466259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.665182, 15.558476, 15.625132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670260, -0.375312, 0.640228,
		-0.225543, -0.718871, -0.657537,
		0.707023, -0.585120, 0.397182,
		19.877289, 15.382940, 15.744286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.117210, 15.121043, 15.627744>,  <19.382374, 15.792524, 15.466259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.117210, 15.121043, 15.627744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.436041, 15.077509, 15.865340>,  <19.627338, 15.051389, 16.007898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.436041, 15.077509, 15.865340>,  <19.117210, 15.121043, 15.627744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.436041, 15.077509, 15.865340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591707, -0.337268, 0.732211,
		0.120644, -0.935096, -0.333227,
		0.797075, -0.108835, 0.593993,
		19.675163, 15.044858, 16.043537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.875433, 14.531242, 16.055086>,  <19.117210, 15.121043, 15.627744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.875433, 14.531242, 16.055086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.182867, 14.703486, 16.244337>,  <19.367327, 14.806833, 16.357887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.182867, 14.703486, 16.244337>,  <18.875433, 14.531242, 16.055086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.182867, 14.703486, 16.244337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469022, -0.123685, 0.874483,
		0.435081, -0.894023, 0.106904,
		0.768585, 0.430611, 0.473129,
		19.413443, 14.832669, 16.386276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.030777, 14.092869, 16.513580>,  <18.875433, 14.531242, 16.055086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.030777, 14.092869, 16.513580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.182138, 14.427933, 16.671129>,  <19.272955, 14.628971, 16.765659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.182138, 14.427933, 16.671129>,  <19.030777, 14.092869, 16.513580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.182138, 14.427933, 16.671129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518353, -0.160774, 0.839918,
		0.766891, -0.521993, 0.373366,
		0.378404, 0.837661, 0.393873,
		19.295660, 14.679231, 16.789291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.236040, 13.941216, 17.204311>,  <19.030777, 14.092869, 16.513580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.236040, 13.941216, 17.204311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.185631, 14.336954, 17.175154>,  <19.155386, 14.574397, 17.157660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.185631, 14.336954, 17.175154>,  <19.236040, 13.941216, 17.204311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.185631, 14.336954, 17.175154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569911, -0.012059, 0.821618,
		0.811985, 0.145088, 0.565359,
		-0.126024, 0.989345, -0.072896,
		19.147823, 14.633758, 17.153286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.262077, 14.040143, 17.795664>,  <19.236040, 13.941216, 17.204311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.262077, 14.040143, 17.795664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.084143, 14.376191, 17.671524>,  <18.977381, 14.577820, 17.597040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.084143, 14.376191, 17.671524>,  <19.262077, 14.040143, 17.795664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.084143, 14.376191, 17.671524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618035, -0.037157, 0.785271,
		0.648191, 0.541125, 0.535753,
		-0.444837, 0.840120, -0.310350,
		18.950691, 14.628227, 17.578419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.316940, 14.538300, 18.336412>,  <19.262077, 14.040143, 17.795664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.316940, 14.538300, 18.336412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.986116, 14.599267, 18.119991>,  <18.787622, 14.635848, 17.990139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.986116, 14.599267, 18.119991>,  <19.316940, 14.538300, 18.336412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.986116, 14.599267, 18.119991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560917, -0.161078, 0.812050,
		0.036621, 0.975101, 0.218716,
		-0.827062, 0.152419, -0.541052,
		18.737997, 14.644993, 17.957676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.906860, 14.989976, 18.806652>,  <19.316940, 14.538300, 18.336412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.906860, 14.989976, 18.806652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.642883, 14.876019, 18.528570>,  <18.484497, 14.807646, 18.361721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.642883, 14.876019, 18.528570>,  <18.906860, 14.989976, 18.806652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.642883, 14.876019, 18.528570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743130, 0.111295, 0.659827,
		-0.110606, 0.952077, -0.285160,
		-0.659942, -0.284892, -0.695207,
		18.444901, 14.790552, 18.320007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.309647, 15.456544, 18.913994>,  <18.906860, 14.989976, 18.806652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.309647, 15.456544, 18.913994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.170837, 15.129890, 18.729523>,  <18.087553, 14.933898, 18.618839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.170837, 15.129890, 18.729523>,  <18.309647, 15.456544, 18.913994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.170837, 15.129890, 18.729523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825213, 0.032214, 0.563902,
		-0.445646, 0.576256, -0.685076,
		-0.347021, -0.816634, -0.461178,
		18.066730, 14.884900, 18.591169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.654812, 15.635994, 18.612307>,  <18.309647, 15.456544, 18.913994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.654812, 15.635994, 18.612307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.646341, 15.236315, 18.625889>,  <17.641258, 14.996507, 18.634039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.646341, 15.236315, 18.625889>,  <17.654812, 15.635994, 18.612307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.646341, 15.236315, 18.625889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858303, 0.035588, 0.511907,
		-0.512706, -0.018305, -0.858369,
		-0.021177, -0.999199, 0.033958,
		17.639988, 14.936555, 18.636076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.966732, 15.460347, 18.435118>,  <17.654812, 15.635994, 18.612307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.966732, 15.460347, 18.435118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.123491, 15.154145, 18.639242>,  <17.217546, 14.970425, 18.761717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.123491, 15.154145, 18.639242>,  <16.966732, 15.460347, 18.435118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.123491, 15.154145, 18.639242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867157, -0.122059, 0.482847,
		-0.307333, -0.631747, -0.711648,
		0.391900, -0.765505, 0.510310,
		17.241062, 14.924494, 18.792336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318316, 15.081388, 18.628613>,  <16.966732, 15.460347, 18.435118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318316, 15.081388, 18.628613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591320, 14.920092, 18.872440>,  <16.755123, 14.823314, 19.018738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591320, 14.920092, 18.872440>,  <16.318316, 15.081388, 18.628613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.591320, 14.920092, 18.872440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638913, 0.075840, 0.765531,
		-0.354924, -0.911945, -0.205875,
		0.682509, -0.403242, 0.609572,
		16.796072, 14.799119, 19.055311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.895725, 14.605490, 19.066547>,  <16.318316, 15.081388, 18.628613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.895725, 14.605490, 19.066547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248701, 14.667029, 19.244370>,  <16.460487, 14.703953, 19.351063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248701, 14.667029, 19.244370>,  <15.895725, 14.605490, 19.066547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.248701, 14.667029, 19.244370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468006, 0.191384, 0.862753,
		0.047652, -0.969383, 0.240887,
		0.882439, 0.153848, 0.444558,
		16.513433, 14.713184, 19.377737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.023058, 14.083580, 19.501593>,  <15.895725, 14.605490, 19.066547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.023058, 14.083580, 19.501593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243671, 14.388595, 19.636856>,  <16.376040, 14.571604, 19.718014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243671, 14.388595, 19.636856>,  <16.023058, 14.083580, 19.501593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.243671, 14.388595, 19.636856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544725, 0.022228, 0.838320,
		0.631733, -0.646563, 0.427632,
		0.551532, 0.762537, 0.338157,
		16.409132, 14.617355, 19.738302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.336014, 13.449244, 19.707636>,  <16.023058, 14.083580, 19.501593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.336014, 13.449244, 19.707636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.013988, 13.213017, 19.729919>,  <15.820773, 13.071281, 19.743290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.013988, 13.213017, 19.729919>,  <16.336014, 13.449244, 19.707636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.013988, 13.213017, 19.729919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277597, -0.458081, -0.844453,
		0.524226, -0.664374, 0.532724,
		-0.805064, -0.590567, 0.055710,
		15.772470, 13.035848, 19.746632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505255, 12.736118, 19.557442>,  <16.336014, 13.449244, 19.707636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.505255, 12.736118, 19.557442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.114054, 12.736541, 19.474010>,  <15.879333, 12.736794, 19.423952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.114054, 12.736541, 19.474010>,  <16.505255, 12.736118, 19.557442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.114054, 12.736541, 19.474010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187684, -0.431836, -0.882209,
		-0.091003, -0.901951, 0.422139,
		-0.978005, 0.001055, -0.208580,
		15.820652, 12.736857, 19.411436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.412722, 12.125275, 19.383257>,  <16.505255, 12.736118, 19.557442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.412722, 12.125275, 19.383257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105244, 12.312779, 19.209190>,  <15.920757, 12.425282, 19.104750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105244, 12.312779, 19.209190>,  <16.412722, 12.125275, 19.383257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.105244, 12.312779, 19.209190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145552, -0.534308, -0.832664,
		-0.622836, -0.703403, 0.342489,
		-0.768694, 0.468764, -0.435168,
		15.874635, 12.453408, 19.078640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045546, 11.620351, 19.127699>,  <16.412722, 12.125275, 19.383257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.045546, 11.620351, 19.127699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907413, 11.930464, 18.916157>,  <15.824534, 12.116531, 18.789232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907413, 11.930464, 18.916157>,  <16.045546, 11.620351, 19.127699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.907413, 11.930464, 18.916157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052857, -0.578693, -0.813830,
		-0.936992, -0.253086, 0.240819,
		-0.345329, 0.775282, -0.528853,
		15.803815, 12.163048, 18.757502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.490523, 11.280698, 18.684813>,  <16.045546, 11.620351, 19.127699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.490523, 11.280698, 18.684813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.623044, 11.626117, 18.532745>,  <15.702557, 11.833368, 18.441505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.623044, 11.626117, 18.532745>,  <15.490523, 11.280698, 18.684813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.623044, 11.626117, 18.532745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033837, -0.413536, -0.909859,
		-0.942918, 0.288573, -0.166225,
		0.331301, 0.863547, -0.380166,
		15.722434, 11.885180, 18.418695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.046361, 11.450750, 18.164631>,  <15.490523, 11.280698, 18.684813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.046361, 11.450750, 18.164631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.378681, 11.655334, 18.076832>,  <15.578074, 11.778085, 18.024151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.378681, 11.655334, 18.076832>,  <15.046361, 11.450750, 18.164631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.378681, 11.655334, 18.076832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092482, -0.262037, -0.960616,
		-0.548834, 0.818380, -0.170400,
		0.830800, 0.511460, -0.219500,
		15.627921, 11.808772, 18.010983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.809633, 11.988951, 17.709156>,  <15.046361, 11.450750, 18.164631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.809633, 11.988951, 17.709156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206154, 11.949218, 17.674620>,  <15.444066, 11.925378, 17.653898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206154, 11.949218, 17.674620>,  <14.809633, 11.988951, 17.709156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.206154, 11.949218, 17.674620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119291, -0.401019, -0.908270,
		0.055597, 0.910669, -0.409380,
		0.991301, -0.099332, -0.086339,
		15.503544, 11.919418, 17.648718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.910265, 12.213663, 17.031992>,  <14.809633, 11.988951, 17.709156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.910265, 12.213663, 17.031992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254297, 12.027146, 17.114775>,  <15.460717, 11.915236, 17.164444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254297, 12.027146, 17.114775>,  <14.910265, 12.213663, 17.031992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.254297, 12.027146, 17.114775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013073, -0.385397, -0.922658,
		0.509989, 0.796267, -0.325377,
		0.860082, -0.466292, 0.206958,
		15.512321, 11.887259, 17.176863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.402451, 12.315053, 16.475346>,  <14.910265, 12.213663, 17.031992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.402451, 12.315053, 16.475346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.506897, 11.977086, 16.662079>,  <15.569565, 11.774306, 16.774118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.506897, 11.977086, 16.662079>,  <15.402451, 12.315053, 16.475346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.506897, 11.977086, 16.662079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180451, -0.517811, -0.836247,
		0.948291, 0.134117, -0.287675,
		0.261116, -0.844917, 0.466834,
		15.585232, 11.723611, 16.802130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.755160, 12.002917, 15.943217>,  <15.402451, 12.315053, 16.475346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.755160, 12.002917, 15.943217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.658485, 11.710198, 16.198109>,  <15.600480, 11.534567, 16.351044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.658485, 11.710198, 16.198109>,  <15.755160, 12.002917, 15.943217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.658485, 11.710198, 16.198109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296998, -0.569394, -0.766540,
		0.923785, -0.374519, -0.079726,
		-0.241688, -0.731797, 0.637229,
		15.585979, 11.490660, 16.389277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.215122, 11.481070, 15.857730>,  <15.755160, 12.002917, 15.943217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.215122, 11.481070, 15.857730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.878304, 11.327381, 16.009171>,  <15.676214, 11.235168, 16.100035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.878304, 11.327381, 16.009171>,  <16.215122, 11.481070, 15.857730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.878304, 11.327381, 16.009171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135344, -0.528933, -0.837802,
		0.522156, -0.756706, 0.393382,
		-0.842042, -0.384221, 0.378600,
		15.625691, 11.212114, 16.122751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.171240, 10.679972, 15.786818>,  <16.215122, 11.481070, 15.857730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.171240, 10.679972, 15.786818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.815650, 10.862802, 15.798160>,  <15.602296, 10.972500, 15.804965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.815650, 10.862802, 15.798160>,  <16.171240, 10.679972, 15.786818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815650, 10.862802, 15.798160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226502, -0.385030, -0.894678,
		-0.398040, -0.801758, 0.445812,
		-0.888966, 0.457094, 0.028343,
		15.548957, 10.999924, 15.806665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<12.804778, 14.213017, 24.550793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.181519, 14.223366, 24.684805>,  <13.407563, 14.229575, 24.765213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.181519, 14.223366, 24.684805>,  <12.804778, 14.213017, 24.550793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.181519, 14.223366, 24.684805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331033, -0.242736, -0.911864,
		0.057731, 0.969747, -0.237186,
		0.941852, 0.025873, 0.335031,
		13.464074, 14.231128, 24.785315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.126075, 14.559477, 24.012121>,  <12.804778, 14.213017, 24.550793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.126075, 14.559477, 24.012121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.390970, 14.337687, 24.213715>,  <13.549908, 14.204614, 24.334671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.390970, 14.337687, 24.213715>,  <13.126075, 14.559477, 24.012121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.390970, 14.337687, 24.213715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398141, -0.309408, -0.863568,
		0.634762, 0.772545, 0.015856,
		0.662239, -0.554473, 0.503982,
		13.589642, 14.171346, 24.364910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.588259, 14.556368, 23.451689>,  <13.126075, 14.559477, 24.012121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.588259, 14.556368, 23.451689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.734453, 14.343369, 23.757072>,  <13.822170, 14.215570, 23.940302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.734453, 14.343369, 23.757072>,  <13.588259, 14.556368, 23.451689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.734453, 14.343369, 23.757072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671280, -0.417412, -0.612496,
		0.644828, 0.736352, 0.204896,
		0.365487, -0.532497, 0.763457,
		13.844099, 14.183620, 23.986109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.314867, 14.679861, 23.585606>,  <13.588259, 14.556368, 23.451689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.314867, 14.679861, 23.585606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.199984, 14.307802, 23.677116>,  <14.131054, 14.084567, 23.732023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.199984, 14.307802, 23.677116>,  <14.314867, 14.679861, 23.585606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.199984, 14.307802, 23.677116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475250, -0.345744, -0.809073,
		0.831654, -0.123646, 0.541353,
		-0.287208, -0.930147, 0.228777,
		14.113821, 14.028758, 23.745749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.877090, 14.246912, 23.586967>,  <14.314867, 14.679861, 23.585606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.877090, 14.246912, 23.586967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.575838, 13.987443, 23.543110>,  <14.395087, 13.831761, 23.516794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.575838, 13.987443, 23.543110>,  <14.877090, 14.246912, 23.586967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.575838, 13.987443, 23.543110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437570, -0.369465, -0.819773,
		0.491254, -0.665372, 0.562094,
		-0.753129, -0.648672, -0.109645,
		14.349899, 13.792841, 23.510216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.213896, 13.617549, 23.437840>,  <14.877090, 14.246912, 23.586967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.213896, 13.617549, 23.437840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.836540, 13.611841, 23.305286>,  <14.610127, 13.608417, 23.225754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.836540, 13.611841, 23.305286>,  <15.213896, 13.617549, 23.437840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.836540, 13.611841, 23.305286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303424, -0.440708, -0.844814,
		-0.133989, -0.897537, 0.420088,
		-0.943388, -0.014269, -0.331384,
		14.553524, 13.607560, 23.205872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.240442, 13.008320, 23.019701>,  <15.213896, 13.617549, 23.437840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.240442, 13.008320, 23.019701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.881441, 13.160195, 22.929966>,  <14.666040, 13.251321, 22.876125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.881441, 13.160195, 22.929966>,  <15.240442, 13.008320, 23.019701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.881441, 13.160195, 22.929966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048226, -0.421139, -0.905713,
		-0.438371, -0.823696, 0.359661,
		-0.897500, 0.379693, -0.224338,
		14.612190, 13.274102, 22.862665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.791796, 12.455297, 22.766748>,  <15.240442, 13.008320, 23.019701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.791796, 12.455297, 22.766748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.711798, 12.812246, 22.604923>,  <14.663799, 13.026416, 22.507828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.711798, 12.812246, 22.604923>,  <14.791796, 12.455297, 22.766748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.711798, 12.812246, 22.604923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156899, -0.378406, -0.912245,
		-0.967153, -0.245920, -0.064334,
		-0.199995, 0.892375, -0.404561,
		14.651799, 13.079959, 22.483555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.460557, 12.305955, 22.207983>,  <14.791796, 12.455297, 22.766748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.460557, 12.305955, 22.207983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.543356, 12.690367, 22.134689>,  <14.593036, 12.921014, 22.090714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.543356, 12.690367, 22.134689>,  <14.460557, 12.305955, 22.207983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.543356, 12.690367, 22.134689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071721, -0.201693, -0.976819,
		-0.975709, 0.189058, -0.110676,
		0.206998, 0.961029, -0.183234,
		14.605455, 12.978676, 22.079720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.017501, 12.523171, 21.671415>,  <14.460557, 12.305955, 22.207983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.017501, 12.523171, 21.671415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.341045, 12.757380, 21.649843>,  <14.535172, 12.897906, 21.636900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.341045, 12.757380, 21.649843>,  <14.017501, 12.523171, 21.671415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.341045, 12.757380, 21.649843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144591, -0.286961, -0.946967,
		-0.569946, 0.758167, -0.316772,
		0.808860, 0.585523, -0.053929,
		14.583703, 12.933038, 21.633665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.006821, 12.748005, 20.997278>,  <14.017501, 12.523171, 21.671415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.006821, 12.748005, 20.997278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.378883, 12.867659, 21.082441>,  <14.602120, 12.939450, 21.133539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.378883, 12.867659, 21.082441>,  <14.006821, 12.748005, 20.997278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.378883, 12.867659, 21.082441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238168, -0.050243, -0.969924,
		-0.279439, 0.952888, -0.117977,
		0.930156, 0.299133, 0.212908,
		14.657930, 12.957398, 21.146313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.205977, 13.362122, 20.469009>,  <14.006821, 12.748005, 20.997278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.205977, 13.362122, 20.469009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.548368, 13.221680, 20.620813>,  <14.753803, 13.137415, 20.711895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.548368, 13.221680, 20.620813>,  <14.205977, 13.362122, 20.469009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.548368, 13.221680, 20.620813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387109, -0.051326, -0.920604,
		0.342707, 0.934929, 0.091982,
		0.855978, -0.351104, 0.379509,
		14.805161, 13.116348, 20.734667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.799303, 13.796238, 20.120840>,  <14.205977, 13.362122, 20.469009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.799303, 13.796238, 20.120840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.972402, 13.462010, 20.256224>,  <15.076261, 13.261474, 20.337454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.972402, 13.462010, 20.256224>,  <14.799303, 13.796238, 20.120840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.972402, 13.462010, 20.256224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520118, -0.075245, -0.850774,
		0.736348, 0.544207, 0.402033,
		0.432746, -0.835570, 0.338458,
		15.102225, 13.211339, 20.357761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.453103, 13.804580, 19.904762>,  <14.799303, 13.796238, 20.120840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.453103, 13.804580, 19.904762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.386503, 13.418342, 19.984667>,  <15.346543, 13.186599, 20.032610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.386503, 13.418342, 19.984667>,  <15.453103, 13.804580, 19.904762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.386503, 13.418342, 19.984667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643010, -0.259913, -0.720405,
		0.747540, 0.008500, 0.664163,
		-0.166501, -0.965595, 0.199761,
		15.336553, 13.128663, 20.044596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.134186, 13.988636, 20.240559>,  <15.453103, 13.804580, 19.904762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.134186, 13.988636, 20.240559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.208031, 14.376581, 20.176952>,  <16.252338, 14.609348, 20.138788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.208031, 14.376581, 20.176952>,  <16.134186, 13.988636, 20.240559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.208031, 14.376581, 20.176952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479709, 0.230137, 0.846709,
		0.857787, -0.080031, 0.507737,
		0.184612, 0.969862, -0.159017,
		16.263414, 14.667540, 20.129248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.260185, 14.221803, 20.845388>,  <16.134186, 13.988636, 20.240559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.260185, 14.221803, 20.845388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.198082, 14.582436, 20.683874>,  <16.160820, 14.798816, 20.586966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.198082, 14.582436, 20.683874>,  <16.260185, 14.221803, 20.845388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.198082, 14.582436, 20.683874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308799, 0.343966, 0.886753,
		0.938370, 0.262364, 0.225005,
		-0.155258, 0.901583, -0.403785,
		16.151505, 14.852911, 20.562738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.435986, 14.757577, 21.351458>,  <16.260185, 14.221803, 20.845388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.435986, 14.757577, 21.351458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.216217, 14.959970, 21.085491>,  <16.084356, 15.081407, 20.925911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.216217, 14.959970, 21.085491>,  <16.435986, 14.757577, 21.351458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.216217, 14.959970, 21.085491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366234, 0.569437, 0.735944,
		0.751005, 0.647859, -0.127552,
		-0.549421, 0.505984, -0.664918,
		16.051390, 15.111766, 20.886015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.481308, 15.412676, 21.507662>,  <16.435986, 14.757577, 21.351458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.481308, 15.412676, 21.507662> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.150824, 15.438734, 21.283831>,  <15.952533, 15.454370, 21.149532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.150824, 15.438734, 21.283831>,  <16.481308, 15.412676, 21.507662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150824, 15.438734, 21.283831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373145, 0.680879, 0.630212,
		0.422061, 0.729493, -0.538242,
		-0.826213, 0.065146, -0.559579,
		15.902960, 15.458278, 21.115957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330957, 16.102602, 21.328382>,  <16.481308, 15.412676, 21.507662>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.330957, 16.102602, 21.328382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.985450, 15.901589, 21.313593>,  <15.778146, 15.780982, 21.304720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.985450, 15.901589, 21.313593>,  <16.330957, 16.102602, 21.328382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.985450, 15.901589, 21.313593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355820, 0.556351, 0.750910,
		-0.356787, 0.661767, -0.659369,
		-0.863768, -0.502532, -0.036972,
		15.726319, 15.750830, 21.302502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.921086, 16.598288, 21.478758>,  <16.330957, 16.102602, 21.328382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.921086, 16.598288, 21.478758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.686744, 16.278784, 21.533539>,  <15.546139, 16.087082, 21.566406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.686744, 16.278784, 21.533539>,  <15.921086, 16.598288, 21.478758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.686744, 16.278784, 21.533539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451378, 0.461963, 0.763445,
		-0.673076, 0.385452, -0.631186,
		-0.585856, -0.798760, 0.136951,
		15.510987, 16.039156, 21.574625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334052, 16.862785, 21.550783>,  <15.921086, 16.598288, 21.478758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334052, 16.862785, 21.550783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.312425, 16.505838, 21.730009>,  <15.299448, 16.291670, 21.837543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.312425, 16.505838, 21.730009>,  <15.334052, 16.862785, 21.550783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.312425, 16.505838, 21.730009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351169, 0.437048, 0.828052,
		-0.934750, -0.112575, -0.337001,
		-0.054068, -0.892366, 0.448063,
		15.296205, 16.238129, 21.864428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.842945, 17.021856, 21.951712>,  <15.334052, 16.862785, 21.550783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.842945, 17.021856, 21.951712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.998269, 16.686554, 22.104834>,  <15.091463, 16.485373, 22.196707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.998269, 16.686554, 22.104834>,  <14.842945, 17.021856, 21.951712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.998269, 16.686554, 22.104834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382069, 0.231570, 0.894650,
		-0.838593, -0.493659, -0.230351,
		0.388310, -0.838257, 0.382804,
		15.114762, 16.435076, 22.219675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.272392, 16.742229, 22.330502>,  <14.842945, 17.021856, 21.951712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.272392, 16.742229, 22.330502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.602547, 16.585075, 22.492678>,  <14.800639, 16.490784, 22.589983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.602547, 16.585075, 22.492678>,  <14.272392, 16.742229, 22.330502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.602547, 16.585075, 22.492678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243799, 0.399691, 0.883634,
		-0.509215, -0.828185, 0.234114,
		0.825386, -0.392883, 0.405439,
		14.850163, 16.467211, 22.614309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.132707, 16.410595, 22.993797>,  <14.272392, 16.742229, 22.330502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.132707, 16.410595, 22.993797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.527266, 16.473515, 23.012888>,  <14.764001, 16.511267, 23.024342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.527266, 16.473515, 23.012888>,  <14.132707, 16.410595, 22.993797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.527266, 16.473515, 23.012888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088679, 0.264758, 0.960229,
		0.138407, -0.951399, 0.275106,
		0.986397, 0.157298, 0.047725,
		14.823185, 16.520704, 23.027205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.406252, 16.108023, 23.603640>,  <14.132707, 16.410595, 22.993797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.406252, 16.108023, 23.603640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.684745, 16.381382, 23.515797>,  <14.851841, 16.545397, 23.463091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.684745, 16.381382, 23.515797>,  <14.406252, 16.108023, 23.603640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.684745, 16.381382, 23.515797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048384, 0.349922, 0.935529,
		0.716183, -0.640720, 0.276693,
		0.696233, 0.683397, -0.219607,
		14.893615, 16.586401, 23.449915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.842914, 16.058886, 24.163074>,  <14.406252, 16.108023, 23.603640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.842914, 16.058886, 24.163074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.889205, 16.417524, 23.992092>,  <14.916980, 16.632708, 23.889502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.889205, 16.417524, 23.992092>,  <14.842914, 16.058886, 24.163074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889205, 16.417524, 23.992092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007074, 0.429594, 0.902994,
		0.993256, -0.107526, 0.043374,
		0.115728, 0.896598, -0.427457,
		14.923923, 16.686504, 23.863855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364168, 16.320911, 24.592703>,  <14.842914, 16.058886, 24.163074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.364168, 16.320911, 24.592703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.223551, 16.645052, 24.405195>,  <15.139180, 16.839537, 24.292690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.223551, 16.645052, 24.405195>,  <15.364168, 16.320911, 24.592703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.223551, 16.645052, 24.405195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003378, 0.501825, 0.864963,
		0.936165, 0.302489, -0.179151,
		-0.351544, 0.810353, -0.468769,
		15.118088, 16.888159, 24.264565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.633453, 16.753386, 24.946522>,  <15.364168, 16.320911, 24.592703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.633453, 16.753386, 24.946522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.369873, 16.991280, 24.762316>,  <15.211725, 17.134016, 24.651793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.369873, 16.991280, 24.762316>,  <15.633453, 16.753386, 24.946522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.369873, 16.991280, 24.762316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020661, 0.597694, 0.801458,
		0.751903, 0.537635, -0.381563,
		-0.658950, 0.594735, -0.460517,
		15.172188, 17.169701, 24.624161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<7.775536, 16.131462, 21.857426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.113897, 16.082344, 22.065029>,  <8.316915, 16.052874, 22.189590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.113897, 16.082344, 22.065029>,  <7.775536, 16.131462, 21.857426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.113897, 16.082344, 22.065029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524092, 0.010982, -0.851591,
		0.098870, 0.992372, 0.073644,
		0.845903, -0.122793, 0.519008,
		8.367668, 16.045506, 22.220732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.280047, 16.506672, 21.512379>,  <7.775536, 16.131462, 21.857426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.280047, 16.506672, 21.512379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.517943, 16.272264, 21.732512>,  <8.660681, 16.131620, 21.864592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.517943, 16.272264, 21.732512>,  <8.280047, 16.506672, 21.512379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.517943, 16.272264, 21.732512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610865, -0.115600, -0.783250,
		0.522617, 0.802010, 0.289226,
		0.594740, -0.586018, 0.550334,
		8.696365, 16.096458, 21.897612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.997317, 16.782852, 21.509964>,  <8.280047, 16.506672, 21.512379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.997317, 16.782852, 21.509964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.030860, 16.393810, 21.596689>,  <9.050985, 16.160385, 21.648724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.030860, 16.393810, 21.596689>,  <8.997317, 16.782852, 21.509964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.030860, 16.393810, 21.596689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653244, -0.110650, -0.749019,
		0.752489, 0.204443, 0.626069,
		0.083858, -0.972605, 0.216814,
		9.056017, 16.102030, 21.661734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.790927, 16.596077, 21.511461>,  <8.997317, 16.782852, 21.509964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.790927, 16.596077, 21.511461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.585124, 16.254845, 21.476730>,  <9.461642, 16.050106, 21.455891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.585124, 16.254845, 21.476730>,  <9.790927, 16.596077, 21.511461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.585124, 16.254845, 21.476730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628183, -0.306058, -0.715343,
		0.583669, -0.422594, 0.693358,
		-0.514507, -0.853079, -0.086830,
		9.430772, 15.998921, 21.450682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.275248, 16.031715, 21.494663>,  <9.790927, 16.596077, 21.511461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.275248, 16.031715, 21.494663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.933935, 15.887486, 21.343988>,  <9.729148, 15.800947, 21.253584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.933935, 15.887486, 21.343988>,  <10.275248, 16.031715, 21.494663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.933935, 15.887486, 21.343988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511213, -0.436016, -0.740642,
		0.102816, -0.824545, 0.556377,
		-0.853282, -0.360577, -0.376689,
		9.677951, 15.779312, 21.230982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.495704, 15.399703, 21.208904>,  <10.275248, 16.031715, 21.494663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.495704, 15.399703, 21.208904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.126053, 15.438046, 21.060957>,  <9.904263, 15.461053, 20.972189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.126053, 15.438046, 21.060957>,  <10.495704, 15.399703, 21.208904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.126053, 15.438046, 21.060957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298332, -0.423778, -0.855225,
		-0.238722, -0.900680, 0.363027,
		-0.924126, 0.095858, -0.369866,
		9.848815, 15.466805, 20.949997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.477875, 14.863520, 20.796410>,  <10.495704, 15.399703, 21.208904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.477875, 14.863520, 20.796410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.184630, 15.098398, 20.659153>,  <10.008683, 15.239326, 20.576799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.184630, 15.098398, 20.659153>,  <10.477875, 14.863520, 20.796410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.184630, 15.098398, 20.659153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204139, -0.291290, -0.934600,
		-0.648749, -0.755215, 0.093678,
		-0.733111, 0.587197, -0.343142,
		9.964697, 15.274557, 20.556210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.061937, 14.535851, 20.407679>,  <10.477875, 14.863520, 20.796410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.061937, 14.535851, 20.407679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.019999, 14.907672, 20.266294>,  <9.994836, 15.130765, 20.181463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.019999, 14.907672, 20.266294>,  <10.061937, 14.535851, 20.407679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.019999, 14.907672, 20.266294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286075, -0.312207, -0.905918,
		-0.952454, -0.196099, -0.233189,
		-0.104846, 0.929555, -0.353462,
		9.988544, 15.186539, 20.160255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.612532, 14.551934, 19.747358>,  <10.061937, 14.535851, 20.407679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.612532, 14.551934, 19.747358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.849628, 14.873607, 19.729704>,  <9.991887, 15.066610, 19.719110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.849628, 14.873607, 19.729704>,  <9.612532, 14.551934, 19.747358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.849628, 14.873607, 19.729704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342601, -0.301359, -0.889835,
		-0.728890, 0.512322, -0.454142,
		0.592742, 0.804182, -0.044135,
		10.027452, 15.114861, 19.716463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.820685, 14.581913, 19.042124>,  <9.612532, 14.551934, 19.747358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.820685, 14.581913, 19.042124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.015182, 14.911404, 19.158773>,  <10.131881, 15.109097, 19.228764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.015182, 14.911404, 19.158773>,  <9.820685, 14.581913, 19.042124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.015182, 14.911404, 19.158773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430765, 0.064406, -0.900163,
		-0.760269, 0.563319, -0.323515,
		0.486242, 0.823725, 0.291624,
		10.161056, 15.158522, 19.246262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.625793, 15.075149, 18.575827>,  <9.820685, 14.581913, 19.042124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.625793, 15.075149, 18.575827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.979628, 15.177589, 18.731733>,  <10.191929, 15.239054, 18.825277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.979628, 15.177589, 18.731733>,  <9.625793, 15.075149, 18.575827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.979628, 15.177589, 18.731733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447485, -0.230633, -0.864040,
		-0.131389, 0.938733, -0.318617,
		0.884587, 0.256102, 0.389767,
		10.245004, 15.254420, 18.848663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.933087, 15.461441, 18.064177>,  <9.625793, 15.075149, 18.575827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.933087, 15.461441, 18.064177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.215940, 15.318695, 18.308344>,  <10.385651, 15.233047, 18.454845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.215940, 15.318695, 18.308344>,  <9.933087, 15.461441, 18.064177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.215940, 15.318695, 18.308344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594302, -0.167779, -0.786546,
		0.383107, 0.918965, 0.093444,
		0.707131, -0.356865, 0.610421,
		10.428079, 15.211636, 18.491470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.640565, 15.708895, 17.841343>,  <9.933087, 15.461441, 18.064177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.640565, 15.708895, 17.841343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.715465, 15.381598, 18.058752>,  <10.760405, 15.185221, 18.189198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.715465, 15.381598, 18.058752>,  <10.640565, 15.708895, 17.841343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.715465, 15.381598, 18.058752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634742, -0.321497, -0.702668,
		0.749694, 0.476572, 0.459172,
		0.187249, -0.818241, 0.543525,
		10.771639, 15.136127, 18.221809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.294468, 15.629972, 17.772053>,  <10.640565, 15.708895, 17.841343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.294468, 15.629972, 17.772053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.166696, 15.275711, 17.906864>,  <11.090033, 15.063155, 17.987751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.166696, 15.275711, 17.906864>,  <11.294468, 15.629972, 17.772053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.166696, 15.275711, 17.906864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417195, -0.450774, -0.789146,
		0.850830, -0.111472, 0.513480,
		-0.319431, -0.885651, 0.337026,
		11.070867, 15.010015, 18.007973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.003692, 15.890270, 18.031879>,  <11.294468, 15.629972, 17.772053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.003692, 15.890270, 18.031879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.107312, 16.260052, 17.919966>,  <12.169484, 16.481920, 17.852818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.107312, 16.260052, 17.919966>,  <12.003692, 15.890270, 18.031879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.107312, 16.260052, 17.919966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209882, 0.336629, 0.917949,
		0.942784, -0.179073, 0.281230,
		0.259050, 0.924453, -0.279785,
		12.185027, 16.537388, 17.836031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.449252, 16.251305, 18.576563>,  <12.003692, 15.890270, 18.031879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.449252, 16.251305, 18.576563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.289652, 16.548725, 18.361927>,  <12.193892, 16.727179, 18.233147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.289652, 16.548725, 18.361927>,  <12.449252, 16.251305, 18.576563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.289652, 16.548725, 18.361927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345494, 0.420151, 0.839111,
		0.849371, 0.520194, 0.089251,
		-0.399002, 0.743553, -0.536588,
		12.169951, 16.771791, 18.200951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.668204, 16.830711, 19.003916>,  <12.449252, 16.251305, 18.576563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.668204, 16.830711, 19.003916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.370400, 16.958231, 18.769285>,  <12.191718, 17.034742, 18.628506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.370400, 16.958231, 18.769285>,  <12.668204, 16.830711, 19.003916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.370400, 16.958231, 18.769285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340747, 0.574105, 0.744510,
		0.574105, 0.754169, -0.318797,
		-0.744510, 0.318797, -0.586578,
		12.147047, 17.053871, 18.593311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.657993, 17.502796, 19.235207>,  <12.668204, 16.830711, 19.003916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.657993, 17.502796, 19.235207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.316487, 17.443760, 19.035486>,  <12.111584, 17.408339, 18.915655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.316487, 17.443760, 19.035486>,  <12.657993, 17.502796, 19.235207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.316487, 17.443760, 19.035486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498408, 0.509021, 0.701775,
		0.150577, 0.848006, -0.508146,
		-0.853766, -0.147593, -0.499299,
		12.060357, 17.399483, 18.885696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.409142, 18.170605, 19.068634>,  <12.657993, 17.502796, 19.235207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.409142, 18.170605, 19.068634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.104245, 17.913389, 19.098269>,  <11.921308, 17.759060, 19.116049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.104245, 17.913389, 19.098269>,  <12.409142, 18.170605, 19.068634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.104245, 17.913389, 19.098269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428282, 0.586843, 0.687161,
		-0.485350, 0.492051, -0.722718,
		-0.762240, -0.643040, 0.074087,
		11.875573, 17.720476, 19.120495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.925676, 18.600887, 19.204561>,  <12.409142, 18.170605, 19.068634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.925676, 18.600887, 19.204561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.745506, 18.250044, 19.271257>,  <11.637404, 18.039537, 19.311275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.745506, 18.250044, 19.271257>,  <11.925676, 18.600887, 19.204561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.745506, 18.250044, 19.271257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592961, 0.433506, 0.678579,
		-0.667469, 0.206778, -0.715351,
		-0.450424, -0.877106, 0.166740,
		11.610379, 17.986912, 19.321280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.156042, 18.741892, 19.215839>,  <11.925676, 18.600887, 19.204561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.156042, 18.741892, 19.215839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.231724, 18.412745, 19.430162>,  <11.277133, 18.215256, 19.558756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.231724, 18.412745, 19.430162>,  <11.156042, 18.741892, 19.215839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.231724, 18.412745, 19.430162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492767, 0.392415, 0.776654,
		-0.849342, -0.410975, -0.331236,
		0.189204, -0.822867, 0.535810,
		11.288485, 18.165884, 19.590906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.465179, 18.612871, 19.699682>,  <11.156042, 18.741892, 19.215839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.465179, 18.612871, 19.699682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.753765, 18.396610, 19.872744>,  <10.926916, 18.266853, 19.976580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.753765, 18.396610, 19.872744>,  <10.465179, 18.612871, 19.699682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.753765, 18.396610, 19.872744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398443, 0.186884, 0.897952,
		-0.566335, -0.820226, -0.080589,
		0.721463, -0.540652, 0.432652,
		10.970204, 18.234415, 20.002539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.147966, 18.314560, 20.216454>,  <10.465179, 18.612871, 19.699682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.147966, 18.314560, 20.216454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.532965, 18.283939, 20.320564>,  <10.763964, 18.265566, 20.383030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.532965, 18.283939, 20.320564>,  <10.147966, 18.314560, 20.216454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.532965, 18.283939, 20.320564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251425, 0.108745, 0.961748,
		-0.101928, -0.991118, 0.085420,
		0.962495, -0.076552, 0.260276,
		10.821713, 18.260973, 20.398647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.210960, 17.824394, 20.709801>,  <10.147966, 18.314560, 20.216454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.210960, 17.824394, 20.709801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.534050, 18.057518, 20.745396>,  <10.727903, 18.197392, 20.766752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.534050, 18.057518, 20.745396>,  <10.210960, 17.824394, 20.709801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.534050, 18.057518, 20.745396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156289, 0.066133, 0.985495,
		0.568470, -0.809914, 0.144504,
		0.807723, 0.582808, 0.088986,
		10.776367, 18.232361, 20.772091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.540597, 17.482681, 21.214399>,  <10.210960, 17.824394, 20.709801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.540597, 17.482681, 21.214399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.703206, 17.847984, 21.203817>,  <10.800772, 18.067165, 21.197468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.703206, 17.847984, 21.203817>,  <10.540597, 17.482681, 21.214399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.703206, 17.847984, 21.203817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096484, 0.071707, 0.992748,
		0.908532, -0.401021, 0.117265,
		0.406522, 0.913258, -0.026456,
		10.825163, 18.121962, 21.195881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.040539, 17.446806, 21.729015>,  <10.540597, 17.482681, 21.214399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.040539, 17.446806, 21.729015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.939220, 17.832470, 21.697420>,  <10.878429, 18.063868, 21.678463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.939220, 17.832470, 21.697420>,  <11.040539, 17.446806, 21.729015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.939220, 17.832470, 21.697420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031668, 0.089870, 0.995450,
		0.966870, 0.249642, -0.053296,
		-0.253296, 0.964159, -0.078987,
		10.863232, 18.121717, 21.673723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.319032, 17.712893, 22.310717>,  <11.040539, 17.446806, 21.729015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.319032, 17.712893, 22.310717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.093025, 18.022198, 22.195602>,  <10.957421, 18.207781, 22.126534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.093025, 18.022198, 22.195602>,  <11.319032, 17.712893, 22.310717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.093025, 18.022198, 22.195602> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043216, 0.320585, 0.946233,
		0.823948, 0.547074, -0.147718,
		-0.565015, 0.773263, -0.287787,
		10.923521, 18.254177, 22.109266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.560892, 18.331049, 22.814997>,  <11.319032, 17.712893, 22.310717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.560892, 18.331049, 22.814997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.195308, 18.367918, 22.656918>,  <10.975957, 18.390039, 22.562071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.195308, 18.367918, 22.656918>,  <11.560892, 18.331049, 22.814997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.195308, 18.367918, 22.656918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341300, 0.352224, 0.871466,
		0.219523, 0.931366, -0.290460,
		-0.913961, 0.092173, -0.395196,
		10.921120, 18.395571, 22.538359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.720637, 19.098000, 22.612705>,  <11.560892, 18.331049, 22.814997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.720637, 19.098000, 22.612705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.071289, 19.203468, 22.773701>,  <12.281680, 19.266748, 22.870298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.071289, 19.203468, 22.773701>,  <11.720637, 19.098000, 22.612705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.071289, 19.203468, 22.773701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437728, -0.089691, -0.894623,
		-0.199786, 0.960434, -0.194041,
		0.876630, 0.263670, 0.402490,
		12.334278, 19.282570, 22.894447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.980589, 19.643919, 22.166855>,  <11.720637, 19.098000, 22.612705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.980589, 19.643919, 22.166855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.308441, 19.510376, 22.353079>,  <12.505153, 19.430250, 22.464813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.308441, 19.510376, 22.353079>,  <11.980589, 19.643919, 22.166855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.308441, 19.510376, 22.353079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440097, -0.153336, -0.884762,
		0.366772, 0.930068, 0.021252,
		0.819630, -0.333859, 0.465559,
		12.554330, 19.410219, 22.492746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.601903, 19.776361, 21.789112>,  <11.980589, 19.643919, 22.166855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.601903, 19.776361, 21.789112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.734040, 19.467283, 22.005932>,  <12.813323, 19.281836, 22.136023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.734040, 19.467283, 22.005932>,  <12.601903, 19.776361, 21.789112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.734040, 19.467283, 22.005932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563781, -0.299047, -0.769885,
		0.756984, 0.559922, 0.336842,
		0.330344, -0.772695, 0.542047,
		12.833143, 19.235476, 22.168547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.356258, 19.897680, 21.843372>,  <12.601903, 19.776361, 21.789112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.356258, 19.897680, 21.843372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.266138, 19.513428, 21.908392>,  <13.212066, 19.282875, 21.947405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.266138, 19.513428, 21.908392>,  <13.356258, 19.897680, 21.843372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.266138, 19.513428, 21.908392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572105, -0.265490, -0.776023,
		0.788629, -0.081844, 0.609398,
		-0.225302, -0.960634, 0.162550,
		13.198547, 19.225237, 21.957157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.060087, 19.597668, 21.920509>,  <13.356258, 19.897680, 21.843372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.060087, 19.597668, 21.920509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.808390, 19.299480, 21.832575>,  <13.657372, 19.120567, 21.779814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.808390, 19.299480, 21.832575>,  <14.060087, 19.597668, 21.920509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.808390, 19.299480, 21.832575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720329, -0.453160, -0.525141,
		0.291854, -0.488797, 0.822131,
		-0.629244, -0.745469, -0.219838,
		13.619617, 19.075840, 21.766623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.445288, 18.973396, 22.022015>,  <14.060087, 19.597668, 21.920509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.445288, 18.973396, 22.022015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.142729, 18.857393, 21.787491>,  <13.961194, 18.787792, 21.646776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.142729, 18.857393, 21.787491>,  <14.445288, 18.973396, 22.022015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.142729, 18.857393, 21.787491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651770, -0.409963, -0.638065,
		-0.055323, -0.864770, 0.499112,
		-0.756396, -0.290007, -0.586311,
		13.915810, 18.770391, 21.611597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.454432, 18.184391, 21.862469>,  <14.445288, 18.973396, 22.022015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.454432, 18.184391, 21.862469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.227977, 18.362410, 21.584932>,  <14.092103, 18.469221, 21.418409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.227977, 18.362410, 21.584932>,  <14.454432, 18.184391, 21.862469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.227977, 18.362410, 21.584932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434774, -0.553906, -0.710042,
		-0.700327, -0.703648, 0.120092,
		-0.566139, 0.445048, -0.693843,
		14.058135, 18.495924, 21.376780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.239416, 17.688768, 21.417213>,  <14.454432, 18.184391, 21.862469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.239416, 17.688768, 21.417213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.211038, 18.031534, 21.212992>,  <14.194011, 18.237194, 21.090460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.211038, 18.031534, 21.212992>,  <14.239416, 17.688768, 21.417213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.211038, 18.031534, 21.212992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353912, -0.456917, -0.816072,
		-0.932584, -0.238588, -0.270856,
		-0.070946, 0.856915, -0.510553,
		14.189754, 18.288609, 21.059826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.259817, 17.426674, 20.806978>,  <14.239416, 17.688768, 21.417213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.259817, 17.426674, 20.806978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.273501, 17.823450, 20.758181>,  <14.281713, 18.061516, 20.728903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.273501, 17.823450, 20.758181>,  <14.259817, 17.426674, 20.806978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.273501, 17.823450, 20.758181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463389, -0.123894, -0.877451,
		-0.885494, -0.026510, -0.463893,
		0.034212, 0.991941, -0.121992,
		14.283765, 18.121033, 20.721582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.995393, 17.626488, 20.118967>,  <14.259817, 17.426674, 20.806978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.995393, 17.626488, 20.118967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.248418, 17.917599, 20.224955>,  <14.400232, 18.092264, 20.288548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.248418, 17.917599, 20.224955>,  <13.995393, 17.626488, 20.118967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.248418, 17.917599, 20.224955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487417, -0.108198, -0.866440,
		-0.601905, 0.677226, -0.423172,
		0.632562, 0.727776, 0.264967,
		14.438187, 18.135931, 20.304445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.077853, 17.946075, 19.494270>,  <13.995393, 17.626488, 20.118967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.077853, 17.946075, 19.494270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.374415, 18.083042, 19.725119>,  <14.552353, 18.165222, 19.863628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.374415, 18.083042, 19.725119>,  <14.077853, 17.946075, 19.494270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.374415, 18.083042, 19.725119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643222, -0.117490, -0.756612,
		-0.191269, 0.932174, -0.307357,
		0.741405, 0.342415, 0.577122,
		14.596837, 18.185766, 19.898254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.508270, 18.447464, 19.100754>,  <14.077853, 17.946075, 19.494270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.508270, 18.447464, 19.100754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.751752, 18.331226, 19.396059>,  <14.897840, 18.261484, 19.573242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.751752, 18.331226, 19.396059>,  <14.508270, 18.447464, 19.100754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.751752, 18.331226, 19.396059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717554, -0.195388, -0.668536,
		0.338521, 0.936685, 0.089584,
		0.608704, -0.290595, 0.738264,
		14.934363, 18.244047, 19.617538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180681, 18.848503, 19.003149>,  <14.508270, 18.447464, 19.100754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.180681, 18.848503, 19.003149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.258188, 18.532476, 19.235786>,  <15.304692, 18.342861, 19.375368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.258188, 18.532476, 19.235786>,  <15.180681, 18.848503, 19.003149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.258188, 18.532476, 19.235786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714307, -0.292745, -0.635662,
		0.672473, 0.538606, 0.507625,
		0.193767, -0.790065, 0.581593,
		15.316319, 18.295456, 19.410265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.871787, 18.844044, 19.120520>,  <15.180681, 18.848503, 19.003149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.871787, 18.844044, 19.120520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.776702, 18.462341, 19.193060>,  <15.719651, 18.233320, 19.236584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.776702, 18.462341, 19.193060>,  <15.871787, 18.844044, 19.120520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776702, 18.462341, 19.193060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775777, -0.298868, -0.555740,
		0.584519, 0.008583, 0.811335,
		-0.237712, -0.954256, 0.181353,
		15.705388, 18.176065, 19.247465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<8.531249, 22.566643, 5.672635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.655587, 22.615103, 5.295552>,  <8.730190, 22.644178, 5.069303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.655587, 22.615103, 5.295552>,  <8.531249, 22.566643, 5.672635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.655587, 22.615103, 5.295552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037184, -0.992634, -0.115305,
		-0.949733, 0.000789, -0.313061,
		0.310846, 0.121150, -0.942707,
		8.748841, 22.651447, 5.012740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.037502, 22.318563, 5.161297>,  <8.531249, 22.566643, 5.672635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.037502, 22.318563, 5.161297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.430722, 22.275976, 5.101597>,  <8.666655, 22.250423, 5.065777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.430722, 22.275976, 5.101597>,  <8.037502, 22.318563, 5.161297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.430722, 22.275976, 5.101597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072009, -0.972902, 0.219718,
		-0.168599, -0.205247, -0.964079,
		0.983051, -0.106467, -0.149250,
		8.725637, 22.244036, 5.056822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.044939, 21.729250, 4.710494>,  <8.037502, 22.318563, 5.161297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.044939, 21.729250, 4.710494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.395185, 21.795757, 4.891889>,  <8.605333, 21.835661, 5.000726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.395185, 21.795757, 4.891889>,  <8.044939, 21.729250, 4.710494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.395185, 21.795757, 4.891889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116875, -0.983918, 0.135079,
		0.468654, -0.065276, -0.880967,
		0.875616, 0.166268, 0.453488,
		8.657870, 21.845638, 5.027935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.946324, 21.233025, 5.274139>,  <8.044939, 21.729250, 4.710494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.946324, 21.233025, 5.274139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.727279, 21.250257, 5.608388>,  <7.595852, 21.260597, 5.808938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.727279, 21.250257, 5.608388>,  <7.946324, 21.233025, 5.274139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.727279, 21.250257, 5.608388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438581, -0.835711, 0.330506,
		0.712578, 0.547477, 0.438749,
		-0.547612, 0.043085, 0.835623,
		7.562996, 21.263184, 5.859075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.335840, 20.800667, 5.572626>,  <7.946324, 21.233025, 5.274139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.335840, 20.800667, 5.572626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.023701, 20.882210, 5.809099>,  <7.836417, 20.931135, 5.950983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.023701, 20.882210, 5.809099>,  <8.335840, 20.800667, 5.572626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.023701, 20.882210, 5.809099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062616, -0.915149, 0.398224,
		0.622201, 0.347771, 0.701371,
		-0.780349, 0.203858, 0.591183,
		7.789596, 20.943367, 5.986454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.789847, 20.188866, 5.478352>,  <8.335840, 20.800667, 5.572626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.789847, 20.188866, 5.478352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.898043, 19.804707, 5.451613>,  <7.962961, 19.574211, 5.435570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.898043, 19.804707, 5.451613>,  <7.789847, 20.188866, 5.478352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.898043, 19.804707, 5.451613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857027, -0.271843, 0.437729,
		-0.438566, -0.061112, -0.896619,
		0.270490, -0.960399, -0.066847,
		7.979190, 19.516586, 5.431560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.156904, 19.856752, 5.260274>,  <7.789847, 20.188866, 5.478352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.156904, 19.856752, 5.260274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.393059, 19.609190, 5.467503>,  <7.534753, 19.460653, 5.591840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.393059, 19.609190, 5.467503>,  <7.156904, 19.856752, 5.260274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.393059, 19.609190, 5.467503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797974, -0.351231, 0.489770,
		-0.121156, -0.702564, -0.701231,
		0.590389, -0.618903, 0.518073,
		7.570176, 19.423519, 5.622924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.739552, 19.234232, 5.302851>,  <7.156904, 19.856752, 5.260274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.739552, 19.234232, 5.302851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.034359, 19.245621, 5.572961>,  <7.211242, 19.252453, 5.735028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.034359, 19.245621, 5.572961>,  <6.739552, 19.234232, 5.302851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.034359, 19.245621, 5.572961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635637, -0.310394, 0.706839,
		0.229726, -0.950182, -0.210668,
		0.737015, 0.028471, 0.675276,
		7.255463, 19.254162, 5.775544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.644538, 18.716532, 5.762481>,  <6.739552, 19.234232, 5.302851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.644538, 18.716532, 5.762481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.825608, 19.032516, 5.927910>,  <6.934250, 19.222107, 6.027168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.825608, 19.032516, 5.927910>,  <6.644538, 18.716532, 5.762481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.825608, 19.032516, 5.927910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592174, -0.080428, 0.801786,
		0.666644, -0.607857, 0.431388,
		0.452676, 0.789963, 0.413574,
		6.961411, 19.269505, 6.051982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.975870, 18.595175, 6.489492>,  <6.644538, 18.716532, 5.762481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.975870, 18.595175, 6.489492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.886802, 18.984230, 6.462972>,  <6.833361, 19.217663, 6.447060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.886802, 18.984230, 6.462972>,  <6.975870, 18.595175, 6.489492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.886802, 18.984230, 6.462972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584719, -0.078825, 0.807397,
		0.780078, 0.218551, 0.586271,
		-0.222670, 0.972637, -0.066301,
		6.820001, 19.276022, 6.443082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.118445, 19.079142, 7.132595>,  <6.975870, 18.595175, 6.489492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.118445, 19.079142, 7.132595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.790651, 19.149343, 6.914367>,  <6.593975, 19.191463, 6.783431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.790651, 19.149343, 6.914367>,  <7.118445, 19.079142, 7.132595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.790651, 19.149343, 6.914367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573067, -0.240442, 0.783442,
		0.006318, 0.954666, 0.297613,
		-0.819484, 0.175502, -0.545568,
		6.544806, 19.201994, 6.750697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.619023, 19.556105, 7.486521>,  <7.118445, 19.079142, 7.132595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.619023, 19.556105, 7.486521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.390404, 19.345379, 7.234870>,  <6.253232, 19.218943, 7.083880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.390404, 19.345379, 7.234870>,  <6.619023, 19.556105, 7.486521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.390404, 19.345379, 7.234870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722111, -0.041228, 0.690547,
		-0.389728, 0.848980, -0.356855,
		-0.571548, -0.526815, -0.629125,
		6.218939, 19.187334, 7.046133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.951091, 19.907963, 7.545056>,  <6.619023, 19.556105, 7.486521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.951091, 19.907963, 7.545056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.855384, 19.546421, 7.403182>,  <5.797960, 19.329496, 7.318057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.855384, 19.546421, 7.403182>,  <5.951091, 19.907963, 7.545056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.855384, 19.546421, 7.403182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665305, -0.113446, 0.737902,
		-0.707192, 0.412530, -0.574193,
		-0.239267, -0.903852, -0.354687,
		5.783604, 19.275265, 7.296775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.399504, 19.757313, 7.938456>,  <5.951091, 19.907963, 7.545056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.399504, 19.757313, 7.938456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.457677, 19.408413, 7.751681>,  <5.492581, 19.199074, 7.639616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.457677, 19.408413, 7.751681>,  <5.399504, 19.757313, 7.938456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.457677, 19.408413, 7.751681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426539, -0.481119, 0.765891,
		-0.892701, 0.087782, -0.442018,
		0.145432, -0.872249, -0.466938,
		5.501307, 19.146738, 7.611599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.836423, 19.314161, 8.064346>,  <5.399504, 19.757313, 7.938456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.836423, 19.314161, 8.064346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.129881, 19.053392, 7.987649>,  <5.305955, 18.896931, 7.941630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.129881, 19.053392, 7.987649>,  <4.836423, 19.314161, 8.064346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.129881, 19.053392, 7.987649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285224, -0.551533, 0.783874,
		-0.616778, -0.520393, -0.590572,
		0.733643, -0.651922, -0.191745,
		5.349974, 18.857817, 7.930126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.477098, 18.634243, 8.018750>,  <4.836423, 19.314161, 8.064346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.477098, 18.634243, 8.018750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.863452, 18.567408, 8.097890>,  <5.095265, 18.527308, 8.145373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.863452, 18.567408, 8.097890>,  <4.477098, 18.634243, 8.018750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.863452, 18.567408, 8.097890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253937, -0.461296, 0.850130,
		-0.050779, -0.871371, -0.487989,
		0.965887, -0.167087, 0.197849,
		5.153218, 18.517281, 8.157245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.530977, 17.832634, 8.239511>,  <4.477098, 18.634243, 8.018750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.530977, 17.832634, 8.239511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.863267, 18.007236, 8.377704>,  <5.062641, 18.111998, 8.460620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.863267, 18.007236, 8.377704>,  <4.530977, 17.832634, 8.239511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.863267, 18.007236, 8.377704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085595, -0.513073, 0.854067,
		0.550063, -0.739067, -0.388860,
		0.830725, 0.436506, 0.345483,
		5.112484, 18.138187, 8.481348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.015730, 17.319401, 8.574530>,  <4.530977, 17.832634, 8.239511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.015730, 17.319401, 8.574530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.112989, 17.674994, 8.729753>,  <5.171345, 17.888350, 8.822886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.112989, 17.674994, 8.729753>,  <5.015730, 17.319401, 8.574530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.112989, 17.674994, 8.729753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118777, -0.369765, 0.921502,
		0.962689, -0.270154, 0.015683,
		0.243149, 0.888983, 0.388057,
		5.185934, 17.941689, 8.846169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.505119, 17.108488, 9.089934>,  <5.015730, 17.319401, 8.574530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.505119, 17.108488, 9.089934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.372928, 17.473631, 9.185831>,  <5.293614, 17.692717, 9.243369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.372928, 17.473631, 9.185831>,  <5.505119, 17.108488, 9.089934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.372928, 17.473631, 9.185831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050038, -0.236710, 0.970291,
		0.942487, 0.332655, 0.032550,
		-0.330477, 0.912858, 0.239741,
		5.273785, 17.747488, 9.257753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.824762, 17.233675, 9.668203>,  <5.505119, 17.108488, 9.089934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.824762, 17.233675, 9.668203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.517998, 17.489651, 9.687510>,  <5.333940, 17.643236, 9.699095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.517998, 17.489651, 9.687510>,  <5.824762, 17.233675, 9.668203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.517998, 17.489651, 9.687510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148894, -0.250587, 0.956576,
		0.624245, 0.726419, 0.287460,
		-0.766909, 0.639938, 0.048268,
		5.287926, 17.681633, 9.701991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.966231, 17.649363, 10.231399>,  <5.824762, 17.233675, 9.668203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.966231, 17.649363, 10.231399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.575340, 17.698202, 10.161980>,  <5.340806, 17.727507, 10.120328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.575340, 17.698202, 10.161980>,  <5.966231, 17.649363, 10.231399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.575340, 17.698202, 10.161980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194338, -0.186576, 0.963027,
		0.085207, 0.974823, 0.206056,
		-0.977227, 0.122101, -0.173548,
		5.282172, 17.734833, 10.109916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.739650, 18.106697, 10.768931>,  <5.966231, 17.649363, 10.231399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.739650, 18.106697, 10.768931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.420559, 17.918203, 10.618427>,  <5.229105, 17.805107, 10.528125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.420559, 17.918203, 10.618427>,  <5.739650, 18.106697, 10.768931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.420559, 17.918203, 10.618427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237851, -0.327486, 0.914429,
		-0.554128, 0.818959, 0.149162,
		-0.797727, -0.471232, -0.376259,
		5.181241, 17.776834, 10.505549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.214496, 18.257750, 11.275827>,  <5.739650, 18.106697, 10.768931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.214496, 18.257750, 11.275827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.054847, 17.943567, 11.086615>,  <4.959057, 17.755058, 10.973087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.054847, 17.943567, 11.086615>,  <5.214496, 18.257750, 11.275827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.054847, 17.943567, 11.086615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301295, -0.374903, 0.876737,
		-0.865981, 0.492448, -0.087022,
		-0.399123, -0.785457, -0.473031,
		4.935110, 17.707930, 10.944705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.616185, 18.071470, 11.577295>,  <5.214496, 18.257750, 11.275827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.616185, 18.071470, 11.577295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.685096, 17.717609, 11.403994>,  <4.726443, 17.505293, 11.300013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.685096, 17.717609, 11.403994>,  <4.616185, 18.071470, 11.577295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.685096, 17.717609, 11.403994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269454, -0.465378, 0.843100,
		-0.947478, -0.028505, -0.318547,
		0.172278, -0.884653, -0.433255,
		4.736780, 17.452213, 11.274017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.015816, 17.523590, 11.741780>,  <4.616185, 18.071470, 11.577295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.015816, 17.523590, 11.741780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.318470, 17.286074, 11.632297>,  <4.500062, 17.143564, 11.566607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.318470, 17.286074, 11.632297>,  <4.015816, 17.523590, 11.741780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.318470, 17.286074, 11.632297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121158, -0.538701, 0.833740,
		-0.642515, -0.597674, -0.479542,
		0.756634, -0.593791, -0.273710,
		4.545461, 17.107937, 11.550183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.807493, 16.809851, 11.736628>,  <4.015816, 17.523590, 11.741780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.807493, 16.809851, 11.736628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.200059, 16.771433, 11.803083>,  <4.435598, 16.748383, 11.842957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.200059, 16.771433, 11.803083>,  <3.807493, 16.809851, 11.736628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.200059, 16.771433, 11.803083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188805, -0.638181, 0.746376,
		0.034341, -0.763872, -0.644454,
		0.981414, -0.096045, 0.166139,
		4.494483, 16.742619, 11.852925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.936960, 16.059811, 11.940145>,  <3.807493, 16.809851, 11.736628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.936960, 16.059811, 11.940145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.251115, 16.266104, 12.077072>,  <4.439609, 16.389879, 12.159228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.251115, 16.266104, 12.077072>,  <3.936960, 16.059811, 11.940145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.251115, 16.266104, 12.077072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002314, -0.550565, 0.834789,
		0.618997, -0.656427, -0.431215,
		0.785390, 0.515734, 0.342318,
		4.486732, 16.420824, 12.179768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.266567, 15.587032, 12.265676>,  <3.936960, 16.059811, 11.940145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.266567, 15.587032, 12.265676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.431244, 15.920897, 12.412018>,  <4.530050, 16.121216, 12.499823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.431244, 15.920897, 12.412018>,  <4.266567, 15.587032, 12.265676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.431244, 15.920897, 12.412018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190700, -0.471469, 0.861017,
		0.891148, -0.284705, -0.353269,
		0.411691, 0.834662, 0.365855,
		4.554751, 16.171295, 12.521774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.814858, 15.361524, 12.549350>,  <4.266567, 15.587032, 12.265676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.814858, 15.361524, 12.549350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.786521, 15.715072, 12.734284>,  <4.769519, 15.927200, 12.845245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.786521, 15.715072, 12.734284>,  <4.814858, 15.361524, 12.549350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.786521, 15.715072, 12.734284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253515, -0.432327, 0.865346,
		0.964734, 0.178513, -0.193447,
		-0.070843, 0.883870, 0.462336,
		4.765268, 15.980233, 12.872985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.397619, 15.266502, 12.966369>,  <4.814858, 15.361524, 12.549350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.397619, 15.266502, 12.966369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.176263, 15.561156, 13.121870>,  <5.043449, 15.737948, 13.215171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.176263, 15.561156, 13.121870>,  <5.397619, 15.266502, 12.966369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.176263, 15.561156, 13.121870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071727, -0.422855, 0.903354,
		0.829828, 0.527792, 0.181167,
		-0.553391, 0.736634, 0.388754,
		5.010246, 15.782146, 13.238496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.753977, 15.438039, 13.650788>,  <5.397619, 15.266502, 12.966369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.753977, 15.438039, 13.650788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.375132, 15.563942, 13.675792>,  <5.147825, 15.639483, 13.690794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.375132, 15.563942, 13.675792>,  <5.753977, 15.438039, 13.650788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.375132, 15.563942, 13.675792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035938, -0.297598, 0.954015,
		0.318886, 0.901312, 0.293170,
		-0.947111, 0.314758, 0.062508,
		5.090999, 15.658369, 13.694544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.510988, 15.402509, 13.891924>,  <5.753977, 15.438039, 13.650788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.510988, 15.402509, 13.891924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.852449, 15.275856, 14.057342>,  <7.057326, 15.199864, 14.156592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.852449, 15.275856, 14.057342>,  <6.510988, 15.402509, 13.891924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.852449, 15.275856, 14.057342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510389, 0.666804, -0.543025,
		-0.103815, 0.674624, 0.730825,
		0.853654, -0.316631, 0.413545,
		7.108546, 15.180867, 14.181405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.767605, 15.932673, 14.176579>,  <6.510988, 15.402509, 13.891924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.767605, 15.932673, 14.176579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.084927, 15.691296, 14.144263>,  <7.275320, 15.546470, 14.124874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.084927, 15.691296, 14.144263>,  <6.767605, 15.932673, 14.176579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.084927, 15.691296, 14.144263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435670, 0.655351, -0.617014,
		0.425277, 0.454283, 0.782794,
		0.793304, -0.603442, -0.080788,
		7.322918, 15.510263, 14.120027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.356621, 16.222958, 14.472270>,  <6.767605, 15.932673, 14.176579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.356621, 16.222958, 14.472270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.459494, 15.956284, 14.192446>,  <7.521218, 15.796279, 14.024551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.459494, 15.956284, 14.192446>,  <7.356621, 16.222958, 14.472270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.459494, 15.956284, 14.192446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428223, 0.727580, -0.535960,
		0.866303, -0.161728, 0.472613,
		0.257184, -0.666687, -0.699560,
		7.536649, 15.756277, 13.982577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.013896, 16.425495, 14.182259>,  <7.356621, 16.222958, 14.472270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.013896, 16.425495, 14.182259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.874458, 16.160093, 13.917459>,  <7.790795, 16.000853, 13.758578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.874458, 16.160093, 13.917459>,  <8.013896, 16.425495, 14.182259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.874458, 16.160093, 13.917459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274406, 0.603107, -0.748974,
		0.896204, -0.442746, -0.028171,
		-0.348595, -0.663504, -0.662000,
		7.769880, 15.961042, 13.718859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.430774, 16.492554, 13.465687>,  <8.013896, 16.425495, 14.182259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.430774, 16.492554, 13.465687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.076832, 16.333698, 13.368268>,  <7.864467, 16.238386, 13.309816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.076832, 16.333698, 13.368268>,  <8.430774, 16.492554, 13.465687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.076832, 16.333698, 13.368268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004938, 0.514756, -0.857323,
		0.465844, -0.759807, -0.453522,
		-0.884853, -0.397139, -0.243548,
		7.811376, 16.214558, 13.295204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.479763, 16.416901, 12.717896>,  <8.430774, 16.492554, 13.465687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.479763, 16.416901, 12.717896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.093475, 16.411713, 12.821603>,  <7.861703, 16.408600, 12.883827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.093475, 16.411713, 12.821603>,  <8.479763, 16.416901, 12.717896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.093475, 16.411713, 12.821603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227118, 0.525896, -0.819665,
		-0.125717, -0.850450, -0.510813,
		-0.965719, -0.012969, 0.259267,
		7.803760, 16.407822, 12.899383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.140374, 16.416052, 12.073863>,  <8.479763, 16.416901, 12.717896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.140374, 16.416052, 12.073863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.829610, 16.485744, 12.315873>,  <7.643151, 16.527559, 12.461079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.829610, 16.485744, 12.315873>,  <8.140374, 16.416052, 12.073863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.829610, 16.485744, 12.315873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362449, 0.661986, -0.656053,
		-0.514821, -0.728985, -0.451154,
		-0.776911, 0.174230, 0.605024,
		7.596537, 16.538013, 12.497380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.474181, 16.426935, 11.651419>,  <8.140374, 16.416052, 12.073863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.474181, 16.426935, 11.651419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.414404, 16.642944, 11.982729>,  <7.378539, 16.772551, 12.181516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.414404, 16.642944, 11.982729>,  <7.474181, 16.426935, 11.651419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.414404, 16.642944, 11.982729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162834, 0.812805, -0.559315,
		-0.975270, -0.218457, -0.033532,
		-0.149441, 0.540023, 0.828277,
		7.369572, 16.804951, 12.231212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.816202, 16.661797, 11.535220>,  <7.474181, 16.426935, 11.651419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.816202, 16.661797, 11.535220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.007269, 16.901411, 11.792277>,  <7.121909, 17.045179, 11.946511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.007269, 16.901411, 11.792277>,  <6.816202, 16.661797, 11.535220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.007269, 16.901411, 11.792277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114607, 0.767726, -0.630446,
		-0.871033, 0.227492, 0.435372,
		0.477668, 0.599036, 0.642642,
		7.150569, 17.081121, 11.985070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.393076, 17.248325, 11.645367>,  <6.816202, 16.661797, 11.535220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.393076, 17.248325, 11.645367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.749855, 17.371496, 11.777798>,  <6.963922, 17.445398, 11.857256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.749855, 17.371496, 11.777798>,  <6.393076, 17.248325, 11.645367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.749855, 17.371496, 11.777798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026323, 0.766366, -0.641864,
		-0.451375, 0.563793, 0.691663,
		0.891946, 0.307928, 0.331078,
		7.017438, 17.463875, 11.877121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.202852, 17.988974, 11.764912>,  <6.393076, 17.248325, 11.645367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.202852, 17.988974, 11.764912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.597645, 17.927979, 11.744471>,  <6.834521, 17.891382, 11.732205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.597645, 17.927979, 11.744471>,  <6.202852, 17.988974, 11.764912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.597645, 17.927979, 11.744471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079016, 0.736561, -0.671739,
		0.140072, 0.658958, 0.739023,
		0.986983, -0.152486, -0.051104,
		6.893740, 17.882233, 11.729139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.529656, 18.732664, 11.829376>,  <6.202852, 17.988974, 11.764912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.529656, 18.732664, 11.829376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.818923, 18.506130, 11.671240>,  <6.992484, 18.370211, 11.576358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.818923, 18.506130, 11.671240>,  <6.529656, 18.732664, 11.829376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.818923, 18.506130, 11.671240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180875, 0.707714, -0.682953,
		0.666566, 0.422383, 0.614233,
		0.723169, -0.566333, -0.395340,
		7.035874, 18.336229, 11.552638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.161899, 19.222694, 11.744279>,  <6.529656, 18.732664, 11.829376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.161899, 19.222694, 11.744279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.160289, 18.909386, 11.495612>,  <7.159324, 18.721401, 11.346412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.160289, 18.909386, 11.495612>,  <7.161899, 19.222694, 11.744279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.160289, 18.909386, 11.495612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029589, 0.621493, -0.782861,
		0.999554, 0.015245, -0.025677,
		-0.004023, -0.783271, -0.621667,
		7.159082, 18.674404, 11.309112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.755465, 19.397362, 11.310125>,  <7.161899, 19.222694, 11.744279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.755465, 19.397362, 11.310125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.516832, 19.129156, 11.133717>,  <7.373652, 18.968233, 11.027871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.516832, 19.129156, 11.133717>,  <7.755465, 19.397362, 11.310125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.516832, 19.129156, 11.133717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152964, 0.444452, -0.882646,
		0.787840, -0.594032, -0.162588,
		-0.596582, -0.670514, -0.441023,
		7.337857, 18.928001, 11.001410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.200517, 19.075306, 10.768140>,  <7.755465, 19.397362, 11.310125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.200517, 19.075306, 10.768140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.811992, 19.027723, 10.685774>,  <7.578877, 18.999174, 10.636354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.811992, 19.027723, 10.685774>,  <8.200517, 19.075306, 10.768140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.811992, 19.027723, 10.685774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128427, 0.466367, -0.875219,
		0.200146, -0.876556, -0.437711,
		-0.971313, -0.118957, -0.205915,
		7.520598, 18.992037, 10.624000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.168132, 19.015581, 10.066402>,  <8.200517, 19.075306, 10.768140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.168132, 19.015581, 10.066402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.771386, 19.062517, 10.086142>,  <7.533339, 19.090679, 10.097985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.771386, 19.062517, 10.086142>,  <8.168132, 19.015581, 10.066402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.771386, 19.062517, 10.086142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029147, 0.586729, -0.809259,
		-0.123912, -0.801237, -0.585375,
		-0.991865, 0.117339, 0.049349,
		7.473826, 19.097719, 10.100946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.906581, 18.931465, 9.460314>,  <8.168132, 19.015581, 10.066402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.906581, 18.931465, 9.460314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.604185, 19.141504, 9.616646>,  <7.422747, 19.267529, 9.710444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.604185, 19.141504, 9.616646>,  <7.906581, 18.931465, 9.460314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.604185, 19.141504, 9.616646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155460, 0.435957, -0.886439,
		-0.635852, -0.730899, -0.247948,
		-0.755992, 0.525098, 0.390829,
		7.377387, 19.299034, 9.733894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.245990, 18.776827, 9.025323>,  <7.906581, 18.931465, 9.460314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.245990, 18.776827, 9.025323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.218277, 19.131031, 9.209093>,  <7.201649, 19.343554, 9.319355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.218277, 19.131031, 9.209093>,  <7.245990, 18.776827, 9.025323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.218277, 19.131031, 9.209093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149941, 0.446058, -0.882355,
		-0.986264, -0.130018, 0.101871,
		-0.069282, 0.885510, 0.459426,
		7.197493, 19.396685, 9.346921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.809197, 19.145426, 8.554863>,  <7.245990, 18.776827, 9.025323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.809197, 19.145426, 8.554863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.937145, 19.442457, 8.790239>,  <7.013914, 19.620676, 8.931465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.937145, 19.442457, 8.790239>,  <6.809197, 19.145426, 8.554863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.937145, 19.442457, 8.790239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132426, 0.650015, -0.748294,
		-0.938161, 0.161431, 0.306256,
		0.319869, 0.742577, 0.588441,
		7.033106, 19.665230, 8.966772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.297723, 19.516649, 8.551865>,  <6.809197, 19.145426, 8.554863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.297723, 19.516649, 8.551865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.615607, 19.746622, 8.629727>,  <6.806337, 19.884605, 8.676445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.615607, 19.746622, 8.629727>,  <6.297723, 19.516649, 8.551865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.615607, 19.746622, 8.629727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208239, 0.559470, -0.802266,
		-0.570152, 0.597033, 0.564339,
		0.794709, 0.574931, 0.194657,
		6.854020, 19.919102, 8.688125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.995218, 20.222506, 8.482694>,  <6.297723, 19.516649, 8.551865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.995218, 20.222506, 8.482694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.392050, 20.271244, 8.470495>,  <6.630149, 20.300488, 8.463176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.392050, 20.271244, 8.470495>,  <5.995218, 20.222506, 8.482694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.392050, 20.271244, 8.470495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114860, 0.781816, -0.612839,
		-0.050829, 0.611488, 0.789619,
		0.992080, 0.121845, -0.030496,
		6.689674, 20.307798, 8.461347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<15.873707, 17.495398, 25.038603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.478601, 17.481529, 24.977787>,  <15.241537, 17.473207, 24.941298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.478601, 17.481529, 24.977787>,  <15.873707, 17.495398, 25.038603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.478601, 17.481529, 24.977787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150468, 0.468020, 0.870814,
		0.040965, 0.883038, -0.467512,
		-0.987766, -0.034673, -0.152042,
		15.182271, 17.471127, 24.932175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.650059, 18.085340, 25.250708>,  <15.873707, 17.495398, 25.038603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.650059, 18.085340, 25.250708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.318279, 17.861992, 25.256863>,  <15.119211, 17.727983, 25.260555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.318279, 17.861992, 25.256863>,  <15.650059, 18.085340, 25.250708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.318279, 17.861992, 25.256863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244384, 0.387521, 0.888878,
		-0.502286, 0.733519, -0.457885,
		-0.829449, -0.558370, 0.015386,
		15.069445, 17.694481, 25.261478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.158099, 18.524803, 25.538139>,  <15.650059, 18.085340, 25.250708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.158099, 18.524803, 25.538139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.966646, 18.175959, 25.578806>,  <14.851774, 17.966652, 25.603207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.966646, 18.175959, 25.578806>,  <15.158099, 18.524803, 25.538139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.966646, 18.175959, 25.578806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459597, 0.347516, 0.817315,
		-0.748118, 0.344468, -0.567151,
		-0.478633, -0.872109, 0.101666,
		14.823056, 17.914326, 25.609306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.458464, 18.689770, 25.793333>,  <15.158099, 18.524803, 25.538139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.458464, 18.689770, 25.793333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.530394, 18.311363, 25.901196>,  <14.573552, 18.084318, 25.965912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.530394, 18.311363, 25.901196>,  <14.458464, 18.689770, 25.793333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.530394, 18.311363, 25.901196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499041, 0.148496, 0.853760,
		-0.847715, -0.288096, -0.445398,
		0.179825, -0.946017, 0.269654,
		14.584341, 18.027557, 25.982092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.825881, 18.350340, 25.882744>,  <14.458464, 18.689770, 25.793333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.825881, 18.350340, 25.882744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.089627, 18.121761, 26.078167>,  <14.247875, 17.984613, 26.195421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.089627, 18.121761, 26.078167>,  <13.825881, 18.350340, 25.882744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.089627, 18.121761, 26.078167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607735, -0.022565, 0.793819,
		-0.442601, -0.820329, -0.362167,
		0.659365, -0.571447, 0.488556,
		14.287436, 17.950327, 26.224733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.487761, 17.685825, 26.101749>,  <13.825881, 18.350340, 25.882744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.487761, 17.685825, 26.101749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.806329, 17.745213, 26.336245>,  <13.997469, 17.780844, 26.476942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.806329, 17.745213, 26.336245>,  <13.487761, 17.685825, 26.101749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806329, 17.745213, 26.336245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559407, -0.187404, 0.807430,
		0.229740, -0.970998, -0.066198,
		0.796419, 0.148468, 0.586237,
		14.045255, 17.789753, 26.512115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.517300, 17.149586, 26.512426>,  <13.487761, 17.685825, 26.101749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.517300, 17.149586, 26.512426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.738127, 17.418015, 26.710369>,  <13.870623, 17.579071, 26.829134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.738127, 17.418015, 26.710369>,  <13.517300, 17.149586, 26.512426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.738127, 17.418015, 26.710369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476390, -0.233224, 0.847738,
		0.684307, -0.703752, 0.190937,
		0.552066, 0.671073, 0.494857,
		13.903747, 17.619337, 26.858826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.379830, 16.972530, 27.224644>,  <13.517300, 17.149586, 26.512426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.379830, 16.972530, 27.224644> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.532106, 17.340939, 27.257622>,  <13.623472, 17.561983, 27.277409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.532106, 17.340939, 27.257622>,  <13.379830, 16.972530, 27.224644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.532106, 17.340939, 27.257622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295759, 0.036803, 0.954554,
		0.876129, -0.387773, 0.286410,
		0.380691, 0.921020, 0.082444,
		13.646314, 17.617245, 27.282354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.854080, 16.981907, 27.851660>,  <13.379830, 16.972530, 27.224644>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.854080, 16.981907, 27.851660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.717513, 17.347446, 27.763741>,  <13.635573, 17.566771, 27.710989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.717513, 17.347446, 27.763741>,  <13.854080, 16.981907, 27.851660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.717513, 17.347446, 27.763741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435425, 0.053463, 0.898636,
		0.832970, 0.402515, 0.379661,
		-0.341417, 0.913851, -0.219798,
		13.615088, 17.621601, 27.697802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.068121, 17.382063, 28.435339>,  <13.854080, 16.981907, 27.851660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.068121, 17.382063, 28.435339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.797439, 17.618517, 28.259781>,  <13.635029, 17.760389, 28.154446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.797439, 17.618517, 28.259781>,  <14.068121, 17.382063, 28.435339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.797439, 17.618517, 28.259781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342143, 0.275358, 0.898396,
		0.651926, 0.758115, 0.015916,
		-0.676705, 0.591134, -0.438897,
		13.594427, 17.795856, 28.128111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.016186, 17.998070, 28.899813>,  <14.068121, 17.382063, 28.435339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.016186, 17.998070, 28.899813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.678509, 17.983419, 28.685898>,  <13.475903, 17.974628, 28.557549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.678509, 17.983419, 28.685898>,  <14.016186, 17.998070, 28.899813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.678509, 17.983419, 28.685898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533292, 0.158275, 0.830992,
		0.054208, 0.986716, -0.153147,
		-0.844192, -0.036625, -0.534788,
		13.425251, 17.972431, 28.525461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.705884, 18.533598, 29.164515>,  <14.016186, 17.998070, 28.899813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.705884, 18.533598, 29.164515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.433817, 18.300655, 28.986422>,  <13.270576, 18.160889, 28.879566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.433817, 18.300655, 28.986422>,  <13.705884, 18.533598, 29.164515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.433817, 18.300655, 28.986422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634434, 0.163376, 0.755514,
		-0.367240, 0.796347, -0.480590,
		-0.680168, -0.582358, -0.445232,
		13.229767, 18.125948, 28.852852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.052123, 18.969624, 29.150845>,  <13.705884, 18.533598, 29.164515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.052123, 18.969624, 29.150845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.965678, 18.580713, 29.115126>,  <12.913812, 18.347366, 29.093695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.965678, 18.580713, 29.115126>,  <13.052123, 18.969624, 29.150845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.965678, 18.580713, 29.115126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675570, 0.082875, 0.732623,
		-0.704912, 0.218655, -0.674751,
		-0.216112, -0.972276, -0.089297,
		12.900845, 18.289030, 29.088337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.400442, 19.022505, 29.090242>,  <13.052123, 18.969624, 29.150845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.400442, 19.022505, 29.090242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.508508, 18.667105, 29.238609>,  <12.573347, 18.453865, 29.327629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.508508, 18.667105, 29.238609>,  <12.400442, 19.022505, 29.090242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.508508, 18.667105, 29.238609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565233, 0.165507, 0.808158,
		-0.779437, -0.427990, -0.457495,
		0.270165, -0.888500, 0.370917,
		12.589558, 18.400555, 29.349884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.860845, 19.407391, 28.677298>,  <12.400442, 19.022505, 29.090242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.860845, 19.407391, 28.677298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.543881, 19.630121, 28.577671>,  <11.353703, 19.763760, 28.517895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.543881, 19.630121, 28.577671>,  <11.860845, 19.407391, 28.677298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.543881, 19.630121, 28.577671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181524, -0.174558, -0.967770,
		-0.582355, -0.812081, 0.037245,
		-0.792409, 0.556825, -0.249067,
		11.306159, 19.797169, 28.502951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.407216, 18.965910, 28.146534>,  <11.860845, 19.407391, 28.677298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.407216, 18.965910, 28.146534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.322365, 19.354065, 28.100311>,  <11.271454, 19.586958, 28.072578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.322365, 19.354065, 28.100311>,  <11.407216, 18.965910, 28.146534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.322365, 19.354065, 28.100311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030719, -0.111568, -0.993282,
		-0.976759, -0.214252, -0.006142,
		-0.212127, 0.970386, -0.115556,
		11.258726, 19.645180, 28.065645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.948717, 19.005245, 27.584719>,  <11.407216, 18.965910, 28.146534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.948717, 19.005245, 27.584719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.095947, 19.376762, 27.602007>,  <11.184285, 19.599672, 27.612379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.095947, 19.376762, 27.602007>,  <10.948717, 19.005245, 27.584719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.095947, 19.376762, 27.602007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040146, 0.030566, -0.998726,
		-0.928929, 0.369341, -0.026036,
		0.368075, 0.928791, 0.043221,
		11.206369, 19.655399, 27.614973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.662186, 19.275015, 27.054399>,  <10.948717, 19.005245, 27.584719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.662186, 19.275015, 27.054399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.946962, 19.541096, 27.144413>,  <11.117828, 19.700745, 27.198421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.946962, 19.541096, 27.144413>,  <10.662186, 19.275015, 27.054399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.946962, 19.541096, 27.144413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109819, 0.211048, -0.971287,
		-0.693597, 0.716214, 0.077202,
		0.711943, 0.665204, 0.225036,
		11.160545, 19.740658, 27.211924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.498699, 19.909729, 26.682076>,  <10.662186, 19.275015, 27.054399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.498699, 19.909729, 26.682076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.890049, 19.890057, 26.762438>,  <11.124859, 19.878252, 26.810656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.890049, 19.890057, 26.762438>,  <10.498699, 19.909729, 26.682076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.890049, 19.890057, 26.762438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202024, 0.018910, -0.979198,
		0.044360, 0.998611, 0.028437,
		0.978375, -0.049183, 0.200904,
		11.183561, 19.875301, 26.822710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.762241, 20.395058, 26.243441>,  <10.498699, 19.909729, 26.682076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.762241, 20.395058, 26.243441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.075088, 20.166019, 26.341774>,  <11.262795, 20.028597, 26.400774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.075088, 20.166019, 26.341774>,  <10.762241, 20.395058, 26.243441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.075088, 20.166019, 26.341774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393244, 0.147511, -0.907524,
		0.483380, 0.806459, 0.340539,
		0.782114, -0.572594, 0.245832,
		11.309722, 19.994242, 26.415524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.258402, 20.724327, 25.896616>,  <10.762241, 20.395058, 26.243441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.258402, 20.724327, 25.896616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.448837, 20.384699, 25.988197>,  <11.563099, 20.180922, 26.043146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.448837, 20.384699, 25.988197>,  <11.258402, 20.724327, 25.896616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.448837, 20.384699, 25.988197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558366, 0.090727, -0.824619,
		0.679388, 0.520430, 0.517286,
		0.476089, -0.849071, 0.228951,
		11.591664, 20.129978, 26.056883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.935313, 20.795080, 25.806923>,  <11.258402, 20.724327, 25.896616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.935313, 20.795080, 25.806923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.855948, 20.405823, 25.760233>,  <11.808330, 20.172268, 25.732218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.855948, 20.405823, 25.760233>,  <11.935313, 20.795080, 25.806923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.855948, 20.405823, 25.760233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513596, -0.001796, -0.858030,
		0.834777, -0.230194, 0.500158,
		-0.198412, -0.973143, -0.116727,
		11.796425, 20.113880, 25.725214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.441081, 20.614578, 25.430674>,  <11.935313, 20.795080, 25.806923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.441081, 20.614578, 25.430674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.225101, 20.280617, 25.387991>,  <12.095512, 20.080240, 25.362381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.225101, 20.280617, 25.387991>,  <12.441081, 20.614578, 25.430674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.225101, 20.280617, 25.387991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474880, -0.197507, -0.857602,
		0.694939, -0.513737, 0.503124,
		-0.539952, -0.834904, -0.106708,
		12.063115, 20.030146, 25.355978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.837748, 20.028690, 25.183739>,  <12.441081, 20.614578, 25.430674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.837748, 20.028690, 25.183739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.468003, 19.912720, 25.084541>,  <12.246157, 19.843138, 25.025023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.468003, 19.912720, 25.084541>,  <12.837748, 20.028690, 25.183739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.468003, 19.912720, 25.084541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333386, -0.297764, -0.894533,
		0.185506, -0.909549, 0.371899,
		-0.924360, -0.289927, -0.247994,
		12.190695, 19.825741, 25.010143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.892199, 19.386137, 24.912418>,  <12.837748, 20.028690, 25.183739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.892199, 19.386137, 24.912418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.547771, 19.521351, 24.760477>,  <12.341113, 19.602480, 24.669312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.547771, 19.521351, 24.760477>,  <12.892199, 19.386137, 24.912418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.547771, 19.521351, 24.760477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250262, -0.368553, -0.895286,
		-0.442637, -0.865967, 0.232752,
		-0.861070, 0.338038, -0.379854,
		12.289450, 19.622761, 24.646521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.461027, 18.829382, 24.572277>,  <12.892199, 19.386137, 24.912418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.461027, 18.829382, 24.572277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.359770, 19.170534, 24.389624>,  <12.299015, 19.375225, 24.280031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.359770, 19.170534, 24.389624>,  <12.461027, 18.829382, 24.572277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.359770, 19.170534, 24.389624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239786, -0.401962, -0.883702,
		-0.937241, -0.333198, -0.102755,
		-0.253144, 0.852881, -0.456631,
		12.283827, 19.426399, 24.252634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.397331, 18.608656, 23.909809>,  <12.461027, 18.829382, 24.572277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.397331, 18.608656, 23.909809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.335238, 18.999083, 23.848883>,  <12.297982, 19.233337, 23.812326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.335238, 18.999083, 23.848883>,  <12.397331, 18.608656, 23.909809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.335238, 18.999083, 23.848883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177272, -0.124161, -0.976299,
		-0.971842, -0.178555, -0.153755,
		-0.155233, 0.976065, -0.152317,
		12.288669, 19.291903, 23.803188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.804428, 18.791882, 23.374533>,  <12.397331, 18.608656, 23.909809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.804428, 18.791882, 23.374533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.062925, 19.096972, 23.384483>,  <12.218024, 19.280025, 23.390453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.062925, 19.096972, 23.384483>,  <11.804428, 18.791882, 23.374533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.062925, 19.096972, 23.384483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308394, -0.231202, -0.922734,
		-0.698042, 0.603983, -0.384633,
		0.646244, 0.762726, 0.024876,
		12.256799, 19.325788, 23.391947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.222028, 18.885796, 23.218002>,  <11.804428, 18.791882, 23.374533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.222028, 18.885796, 23.218002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.908192, 18.720327, 23.033268>,  <10.719890, 18.621046, 22.922428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.908192, 18.720327, 23.033268>,  <11.222028, 18.885796, 23.218002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.908192, 18.720327, 23.033268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589167, 0.265407, 0.763178,
		-0.193131, 0.870881, -0.451959,
		-0.784590, -0.413673, -0.461836,
		10.672814, 18.596226, 22.894716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.629254, 19.293144, 23.381086>,  <11.222028, 18.885796, 23.218002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.629254, 19.293144, 23.381086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.458908, 18.963236, 23.232285>,  <10.356700, 18.765291, 23.143003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.458908, 18.963236, 23.232285>,  <10.629254, 19.293144, 23.381086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.458908, 18.963236, 23.232285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539797, -0.098362, 0.836029,
		-0.726124, 0.556845, -0.403320,
		-0.425867, -0.824772, -0.372006,
		10.331148, 18.715805, 23.120682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.899588, 19.459965, 23.248703>,  <10.629254, 19.293144, 23.381086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.899588, 19.459965, 23.248703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.947473, 19.067831, 23.311457>,  <9.976203, 18.832550, 23.349110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.947473, 19.067831, 23.311457>,  <9.899588, 19.459965, 23.248703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.947473, 19.067831, 23.311457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659193, 0.039677, 0.750927,
		-0.742384, -0.193312, -0.641480,
		0.119711, -0.980335, 0.156886,
		9.983386, 18.773731, 23.358522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.187326, 19.089359, 23.166918>,  <9.899588, 19.459965, 23.248703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.187326, 19.089359, 23.166918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.412332, 18.830029, 23.372149>,  <9.547335, 18.674429, 23.495287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.412332, 18.830029, 23.372149>,  <9.187326, 19.089359, 23.166918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.412332, 18.830029, 23.372149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691517, -0.028776, 0.721786,
		-0.453191, -0.760816, -0.464518,
		0.562513, -0.648330, 0.513076,
		9.581085, 18.635530, 23.526072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.729447, 18.700060, 23.530949>,  <9.187326, 19.089359, 23.166918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.729447, 18.700060, 23.530949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.065488, 18.621561, 23.733223>,  <9.267112, 18.574461, 23.854588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.065488, 18.621561, 23.733223>,  <8.729447, 18.700060, 23.530949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.065488, 18.621561, 23.733223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494873, 0.104433, 0.862667,
		-0.222108, -0.974977, -0.009384,
		0.840101, -0.196249, 0.505685,
		9.317518, 18.562687, 23.884928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.564957, 18.225458, 24.009575>,  <8.729447, 18.700060, 23.530949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.564957, 18.225458, 24.009575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.891240, 18.387945, 24.174307>,  <9.087010, 18.485437, 24.273146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.891240, 18.387945, 24.174307>,  <8.564957, 18.225458, 24.009575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.891240, 18.387945, 24.174307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483156, 0.086959, 0.871206,
		0.318087, -0.909629, 0.267199,
		0.815709, 0.406218, 0.411832,
		9.135953, 18.509809, 24.297857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.459770, 18.131931, 24.660538>,  <8.564957, 18.225458, 24.009575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.459770, 18.131931, 24.660538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.782202, 18.362909, 24.712378>,  <8.975660, 18.501495, 24.743483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.782202, 18.362909, 24.712378>,  <8.459770, 18.131931, 24.660538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.782202, 18.362909, 24.712378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223236, 0.093866, 0.970234,
		0.548091, -0.811016, 0.204570,
		0.806078, 0.577444, 0.129601,
		9.024025, 18.536142, 24.751257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.525207, 17.386074, 24.816221>,  <8.459770, 18.131931, 24.660538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.525207, 17.386074, 24.816221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.279892, 17.071907, 24.849693>,  <8.132704, 16.883408, 24.869776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.279892, 17.071907, 24.849693>,  <8.525207, 17.386074, 24.816221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.279892, 17.071907, 24.849693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246923, -0.291276, -0.924223,
		0.750273, -0.546151, 0.372573,
		-0.613286, -0.785416, 0.083679,
		8.095906, 16.836283, 24.874798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.771487, 16.762142, 24.375586>,  <8.525207, 17.386074, 24.816221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.771487, 16.762142, 24.375586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.380479, 16.694826, 24.426388>,  <8.145874, 16.654436, 24.456869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.380479, 16.694826, 24.426388>,  <8.771487, 16.762142, 24.375586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.380479, 16.694826, 24.426388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005491, -0.581864, -0.813268,
		0.210767, -0.795684, 0.567860,
		-0.977521, -0.168291, 0.127007,
		8.087222, 16.644339, 24.464489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.708884, 16.085751, 24.372648>,  <8.771487, 16.762142, 24.375586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.708884, 16.085751, 24.372648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.330704, 16.176943, 24.279570>,  <8.103796, 16.231657, 24.223722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.330704, 16.176943, 24.279570>,  <8.708884, 16.085751, 24.372648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.330704, 16.176943, 24.279570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098641, -0.480431, -0.871468,
		-0.310471, -0.846884, 0.431736,
		-0.945451, 0.227978, -0.232697,
		8.047069, 16.245337, 24.209761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.487007, 15.460060, 24.116060>,  <8.708884, 16.085751, 24.372648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.487007, 15.460060, 24.116060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.236348, 15.742269, 23.983665>,  <8.085953, 15.911593, 23.904228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.236348, 15.742269, 23.983665>,  <8.487007, 15.460060, 24.116060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.236348, 15.742269, 23.983665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190319, -0.273314, -0.942910,
		-0.755707, -0.653864, 0.036997,
		-0.626647, 0.705522, -0.330988,
		8.048354, 15.953925, 23.884369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.114645, 15.133717, 23.547707>,  <8.487007, 15.460060, 24.116060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.114645, 15.133717, 23.547707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.089634, 15.531696, 23.516300>,  <8.074627, 15.770484, 23.497456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.089634, 15.531696, 23.516300>,  <8.114645, 15.133717, 23.547707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.089634, 15.531696, 23.516300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173209, -0.066659, -0.982627,
		-0.982898, -0.075042, -0.168166,
		-0.062528, 0.994950, -0.078517,
		8.070875, 15.830181, 23.492744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.745507, 15.184426, 23.034256>,  <8.114645, 15.133717, 23.547707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.745507, 15.184426, 23.034256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.946875, 15.529720, 23.049189>,  <8.067696, 15.736897, 23.058147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.946875, 15.529720, 23.049189>,  <7.745507, 15.184426, 23.034256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.946875, 15.529720, 23.049189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223153, -0.088158, -0.970789,
		-0.834728, 0.497044, -0.237014,
		0.503420, 0.863235, 0.037329,
		8.097900, 15.788691, 23.060387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.594736, 15.545197, 22.381519>,  <7.745507, 15.184426, 23.034256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.594736, 15.545197, 22.381519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.910703, 15.751971, 22.513464>,  <8.100283, 15.876036, 22.592630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.910703, 15.751971, 22.513464>,  <7.594736, 15.545197, 22.381519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.910703, 15.751971, 22.513464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366254, 0.033717, -0.929904,
		-0.491821, 0.855361, -0.162696,
		0.789918, 0.516934, 0.329862,
		8.147678, 15.907051, 22.612423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<11.612226, 17.722879, 25.076807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.690988, 18.108688, 25.147152>,  <11.738244, 18.340174, 25.189360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.690988, 18.108688, 25.147152>,  <11.612226, 17.722879, 25.076807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.690988, 18.108688, 25.147152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952900, 0.230474, -0.197137,
		-0.230674, -0.128764, 0.964473,
		0.196902, 0.964521, 0.175863,
		11.750058, 18.398045, 25.199911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.025183, 17.563545, 25.711123>,  <11.612226, 17.722879, 25.076807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.025183, 17.563545, 25.711123> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.234360, 17.251377, 25.574022>,  <12.359866, 17.064077, 25.491762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.234360, 17.251377, 25.574022>,  <12.025183, 17.563545, 25.711123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.234360, 17.251377, 25.574022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554360, 0.005951, 0.832256,
		-0.647469, -0.625228, 0.435745,
		0.522943, -0.780419, -0.342749,
		12.391243, 17.017252, 25.471197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.993386, 16.913038, 26.163927>,  <12.025183, 17.563545, 25.711123>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.993386, 16.913038, 26.163927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.350912, 16.895279, 25.985434>,  <12.565428, 16.884623, 25.878338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.350912, 16.895279, 25.985434>,  <11.993386, 16.913038, 26.163927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.350912, 16.895279, 25.985434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448260, 0.116298, 0.886306,
		0.012546, -0.992222, 0.123851,
		0.893815, -0.044398, -0.446232,
		12.619057, 16.881960, 25.851564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.032531, 16.557085, 26.915859>,  <11.993386, 16.913038, 26.163927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.032531, 16.557085, 26.915859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.274954, 16.771624, 27.150814>,  <12.420408, 16.900347, 27.291786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.274954, 16.771624, 27.150814>,  <12.032531, 16.557085, 26.915859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.274954, 16.771624, 27.150814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004626, 0.740826, -0.671680,
		-0.795407, 0.404360, 0.451465,
		0.606058, 0.536348, 0.587388,
		12.456771, 16.932528, 27.327030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.742041, 16.562601, 27.064968>,  <12.032531, 16.557085, 26.915859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.742041, 16.562601, 27.064968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.750091, 16.213844, 27.260683>,  <12.754921, 16.004591, 27.378113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.750091, 16.213844, 27.260683>,  <12.742041, 16.562601, 27.064968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.750091, 16.213844, 27.260683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490204, -0.417921, -0.764881,
		0.871376, 0.255244, 0.418993,
		0.020125, -0.871890, 0.489288,
		12.756128, 15.952277, 27.407469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.384739, 16.268087, 26.829889>,  <12.742041, 16.562601, 27.064968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.384739, 16.268087, 26.829889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.213711, 15.963175, 27.024256>,  <13.111094, 15.780228, 27.140875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.213711, 15.963175, 27.024256>,  <13.384739, 16.268087, 26.829889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.213711, 15.963175, 27.024256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462851, -0.646329, -0.606653,
		0.776501, -0.034480, 0.629172,
		-0.427569, -0.762280, 0.485916,
		13.085440, 15.734491, 27.170031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.941259, 15.854612, 27.114004>,  <13.384739, 16.268087, 26.829889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.941259, 15.854612, 27.114004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.616503, 15.633675, 27.038378>,  <13.421649, 15.501112, 26.993002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.616503, 15.633675, 27.038378>,  <13.941259, 15.854612, 27.114004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.616503, 15.633675, 27.038378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538216, -0.582688, -0.608932,
		0.226174, -0.596146, 0.770361,
		-0.811892, -0.552345, -0.189067,
		13.372935, 15.467971, 26.981657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.133941, 15.174891, 27.037603>,  <13.941259, 15.854612, 27.114004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.133941, 15.174891, 27.037603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.779054, 15.165290, 26.853313>,  <13.566121, 15.159529, 26.742739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.779054, 15.165290, 26.853313>,  <14.133941, 15.174891, 27.037603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.779054, 15.165290, 26.853313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388123, -0.578708, -0.717257,
		-0.249409, -0.815181, 0.522757,
		-0.887218, -0.024004, -0.460726,
		13.512888, 15.158089, 26.715096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.944568, 14.463413, 26.741627>,  <14.133941, 15.174891, 27.037603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.944568, 14.463413, 26.741627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.696809, 14.694538, 26.529032>,  <13.548153, 14.833213, 26.401474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.696809, 14.694538, 26.529032>,  <13.944568, 14.463413, 26.741627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.696809, 14.694538, 26.529032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267918, -0.480774, -0.834911,
		-0.737947, -0.659537, 0.142983,
		-0.619398, 0.577813, -0.531488,
		13.510989, 14.867882, 26.369585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.490676, 14.017403, 26.486462>,  <13.944568, 14.463413, 26.741627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.490676, 14.017403, 26.486462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.499176, 14.337187, 26.246325>,  <13.504276, 14.529058, 26.102242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.499176, 14.337187, 26.246325>,  <13.490676, 14.017403, 26.486462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.499176, 14.337187, 26.246325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158259, -0.595599, -0.787538,
		-0.987169, -0.078273, -0.139179,
		0.021251, 0.799460, -0.600344,
		13.505551, 14.577024, 26.066221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.128445, 13.729813, 25.943565>,  <13.490676, 14.017403, 26.486462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.128445, 13.729813, 25.943565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.318017, 14.061959, 25.826344>,  <13.431760, 14.261248, 25.756010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.318017, 14.061959, 25.826344>,  <13.128445, 13.729813, 25.943565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.318017, 14.061959, 25.826344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095523, -0.379321, -0.920321,
		-0.875366, 0.408174, -0.259090,
		0.473930, 0.830367, -0.293055,
		13.460196, 14.311069, 25.738426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.802334, 13.868814, 25.226641>,  <13.128445, 13.729813, 25.943565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.802334, 13.868814, 25.226641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.130130, 14.098050, 25.226147>,  <13.326808, 14.235592, 25.225851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.130130, 14.098050, 25.226147>,  <12.802334, 13.868814, 25.226641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.130130, 14.098050, 25.226147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052708, -0.077513, -0.995597,
		-0.570664, 0.815817, -0.093728,
		0.819490, 0.573092, -0.001234,
		13.375977, 14.269978, 25.225777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.189124, 13.557010, 25.221689>,  <12.802334, 13.868814, 25.226641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.189124, 13.557010, 25.221689> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.855300, 13.337803, 25.199116>,  <11.655005, 13.206279, 25.185572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.855300, 13.337803, 25.199116>,  <12.189124, 13.557010, 25.221689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.855300, 13.337803, 25.199116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214167, 0.228344, 0.949732,
		-0.507583, 0.804696, -0.307934,
		-0.834561, -0.548017, -0.056436,
		11.604932, 13.173398, 25.182184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.636371, 13.992328, 25.503853>,  <12.189124, 13.557010, 25.221689>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.636371, 13.992328, 25.503853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.481216, 13.623743, 25.512360>,  <11.388124, 13.402592, 25.517464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.481216, 13.623743, 25.512360>,  <11.636371, 13.992328, 25.503853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.481216, 13.623743, 25.512360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482307, 0.222580, 0.847253,
		-0.785445, 0.318381, -0.530763,
		-0.387886, -0.921462, 0.021267,
		11.364851, 13.347304, 25.518740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.914057, 14.106627, 25.651751>,  <11.636371, 13.992328, 25.503853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.914057, 14.106627, 25.651751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.993370, 13.723765, 25.736166>,  <11.040957, 13.494048, 25.786816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.993370, 13.723765, 25.736166>,  <10.914057, 14.106627, 25.651751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.993370, 13.723765, 25.736166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456827, 0.100250, 0.883889,
		-0.867175, -0.271668, -0.417377,
		0.198282, -0.957155, 0.211040,
		11.052855, 13.436619, 25.799479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.277573, 13.731086, 25.559153>,  <10.914057, 14.106627, 25.651751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.277573, 13.731086, 25.559153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.498890, 13.518227, 25.815491>,  <10.631680, 13.390511, 25.969294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.498890, 13.518227, 25.815491>,  <10.277573, 13.731086, 25.559153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.498890, 13.518227, 25.815491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662929, 0.184525, 0.725587,
		-0.504372, -0.826298, -0.250680,
		0.553294, -0.532149, 0.640846,
		10.664878, 13.358582, 26.007744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.790394, 13.524476, 25.994219>,  <10.277573, 13.731086, 25.559153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.790394, 13.524476, 25.994219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.128577, 13.458291, 26.197323>,  <10.331488, 13.418580, 26.319185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.128577, 13.458291, 26.197323>,  <9.790394, 13.524476, 25.994219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.128577, 13.458291, 26.197323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497581, 0.101216, 0.861492,
		-0.193940, -0.981008, 0.003242,
		0.845459, -0.165464, 0.507761,
		10.382215, 13.408652, 26.349651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.639065, 12.963067, 26.444735>,  <9.790394, 13.524476, 25.994219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.639065, 12.963067, 26.444735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.947781, 13.155102, 26.611519>,  <10.133010, 13.270323, 26.711590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.947781, 13.155102, 26.611519>,  <9.639065, 12.963067, 26.444735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.947781, 13.155102, 26.611519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527209, 0.116508, 0.841710,
		0.355516, -0.869449, 0.343026,
		0.771789, 0.480088, 0.416961,
		10.179317, 13.299128, 26.736607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.730844, 12.641670, 27.193415>,  <9.639065, 12.963067, 26.444735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.730844, 12.641670, 27.193415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.925106, 12.991318, 27.190447>,  <10.041663, 13.201107, 27.188667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.925106, 12.991318, 27.190447>,  <9.730844, 12.641670, 27.193415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.925106, 12.991318, 27.190447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410853, 0.235740, 0.880696,
		0.771583, -0.424665, 0.473623,
		0.485653, 0.874120, -0.007418,
		10.070802, 13.253553, 27.188221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.156688, 12.716504, 27.899637>,  <9.730844, 12.641670, 27.193415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.156688, 12.716504, 27.899637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.109945, 13.081176, 27.742064>,  <10.081900, 13.299979, 27.647518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.109945, 13.081176, 27.742064>,  <10.156688, 12.716504, 27.899637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.109945, 13.081176, 27.742064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359777, 0.330852, 0.872409,
		0.925692, 0.243675, 0.289339,
		-0.116856, 0.911680, -0.393936,
		10.074888, 13.354680, 27.623882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.553008, 13.205545, 28.342342>,  <10.156688, 12.716504, 27.899637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.553008, 13.205545, 28.342342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.281035, 13.423108, 28.145626>,  <10.117851, 13.553646, 28.027597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.281035, 13.423108, 28.145626>,  <10.553008, 13.205545, 28.342342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.281035, 13.423108, 28.145626> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219466, 0.488984, 0.844233,
		0.699662, 0.681952, -0.213107,
		-0.679932, 0.543908, -0.491789,
		10.077056, 13.586281, 27.998089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.641266, 13.967599, 28.551903>,  <10.553008, 13.205545, 28.342342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.641266, 13.967599, 28.551903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.276443, 13.941813, 28.389917>,  <10.057549, 13.926342, 28.292727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.276443, 13.941813, 28.389917>,  <10.641266, 13.967599, 28.551903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.276443, 13.941813, 28.389917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346232, 0.650210, 0.676277,
		0.219717, 0.757014, -0.615348,
		-0.912057, -0.064463, -0.404965,
		10.002827, 13.922475, 28.268429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.254325, 14.579992, 28.680521>,  <10.641266, 13.967599, 28.551903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.254325, 14.579992, 28.680521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.948881, 14.331529, 28.610022>,  <9.765615, 14.182450, 28.567722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.948881, 14.331529, 28.610022>,  <10.254325, 14.579992, 28.680521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.948881, 14.331529, 28.610022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602840, 0.588103, 0.539183,
		-0.231267, 0.517974, -0.823540,
		-0.763609, -0.621158, -0.176247,
		9.719798, 14.145181, 28.557148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.701508, 15.004208, 28.534046>,  <10.254325, 14.579992, 28.680521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.701508, 15.004208, 28.534046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.526569, 14.662877, 28.647581>,  <9.421607, 14.458079, 28.715702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.526569, 14.662877, 28.647581>,  <9.701508, 15.004208, 28.534046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.526569, 14.662877, 28.647581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759637, 0.519477, 0.391275,
		-0.481333, -0.044493, -0.875408,
		-0.437345, -0.853326, 0.283840,
		9.395366, 14.406879, 28.732733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.073575, 15.098939, 28.424320>,  <9.701508, 15.004208, 28.534046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.073575, 15.098939, 28.424320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.077396, 14.810253, 28.701170>,  <9.079689, 14.637042, 28.867279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.077396, 14.810253, 28.701170>,  <9.073575, 15.098939, 28.424320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.077396, 14.810253, 28.701170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795183, 0.414187, 0.442869,
		-0.606294, -0.554596, -0.569939,
		0.009552, -0.721715, 0.692125,
		9.080262, 14.593739, 28.908808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.384909, 15.043660, 28.533888>,  <9.073575, 15.098939, 28.424320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.384909, 15.043660, 28.533888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.550025, 14.859262, 28.848108>,  <8.649095, 14.748624, 29.036640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.550025, 14.859262, 28.848108>,  <8.384909, 15.043660, 28.533888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.550025, 14.859262, 28.848108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741224, 0.331201, 0.583860,
		-0.529331, -0.823280, -0.204984,
		0.412790, -0.460994, 0.785550,
		8.673862, 14.720964, 29.083773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.317572, 15.383651, 27.880453>,  <8.384909, 15.043660, 28.533888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.317572, 15.383651, 27.880453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.316733, 15.777827, 27.812452>,  <8.316231, 16.014334, 27.771652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.316733, 15.777827, 27.812452>,  <8.317572, 15.383651, 27.880453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.316733, 15.777827, 27.812452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252296, -0.165024, -0.953474,
		-0.967648, 0.040894, 0.248969,
		-0.002095, 0.985441, -0.170003,
		8.316105, 16.073460, 27.761452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.911951, 15.498734, 27.266802>,  <8.317572, 15.383651, 27.880453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.911951, 15.498734, 27.266802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.039555, 15.876912, 27.293226>,  <8.116117, 16.103819, 27.309080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.039555, 15.876912, 27.293226>,  <7.911951, 15.498734, 27.266802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.039555, 15.876912, 27.293226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208284, 0.137935, -0.968293,
		-0.924581, 0.295135, 0.240924,
		0.319010, 0.945446, 0.066060,
		8.135258, 16.160545, 27.313044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.437609, 15.958173, 26.969105>,  <7.911951, 15.498734, 27.266802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.437609, 15.958173, 26.969105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.745866, 16.212919, 26.960043>,  <7.930820, 16.365767, 26.954605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.745866, 16.212919, 26.960043>,  <7.437609, 15.958173, 26.969105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.745866, 16.212919, 26.960043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270950, 0.295273, -0.916188,
		-0.576799, 0.712192, 0.400108,
		0.770642, 0.636865, -0.022655,
		7.977059, 16.403978, 26.953247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.182114, 16.764534, 26.832970>,  <7.437609, 15.958173, 26.969105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.182114, 16.764534, 26.832970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.564489, 16.718683, 26.724863>,  <7.793914, 16.691174, 26.660000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.564489, 16.718683, 26.724863>,  <7.182114, 16.764534, 26.832970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.564489, 16.718683, 26.724863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213203, 0.361793, -0.907552,
		0.201807, 0.925185, 0.321413,
		0.955938, -0.114624, -0.270265,
		7.851270, 16.684296, 26.643784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.332658, 17.245178, 26.445410>,  <7.182114, 16.764534, 26.832970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.332658, 17.245178, 26.445410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.629342, 17.008110, 26.319801>,  <7.807352, 16.865870, 26.244436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.629342, 17.008110, 26.319801>,  <7.332658, 17.245178, 26.445410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.629342, 17.008110, 26.319801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195318, 0.257041, -0.946457,
		0.641653, 0.763330, 0.074891,
		0.741710, -0.592669, -0.314023,
		7.851854, 16.830309, 26.225594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.571891, 17.616316, 25.916178>,  <7.332658, 17.245178, 26.445410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.571891, 17.616316, 25.916178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.679789, 17.236200, 25.853962>,  <7.744527, 17.008131, 25.816631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.679789, 17.236200, 25.853962>,  <7.571891, 17.616316, 25.916178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.679789, 17.236200, 25.853962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255233, 0.085192, -0.963119,
		0.928490, 0.299494, -0.219565,
		0.269744, -0.950287, -0.155541,
		7.760712, 16.951115, 25.807299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.114347, 17.660152, 25.345226>,  <7.571891, 17.616316, 25.916178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.114347, 17.660152, 25.345226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.018920, 17.271763, 25.338354>,  <7.961663, 17.038729, 25.334230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.018920, 17.271763, 25.338354>,  <8.114347, 17.660152, 25.345226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.018920, 17.271763, 25.338354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001375, 0.017354, -0.999849,
		0.971125, -0.238556, -0.002805,
		-0.238569, -0.970974, -0.017181,
		7.947350, 16.980471, 25.333200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.860432, 17.833307, 25.336779>,  <8.114347, 17.660152, 25.345226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.860432, 17.833307, 25.336779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.980436, 18.210520, 25.279253>,  <9.052440, 18.436848, 25.244738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.980436, 18.210520, 25.279253>,  <8.860432, 17.833307, 25.336779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.980436, 18.210520, 25.279253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207179, 0.211575, 0.955151,
		0.931166, -0.256762, 0.258851,
		0.300013, 0.943032, -0.143816,
		9.070440, 18.493429, 25.236109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.435907, 17.951038, 25.831459>,  <8.860432, 17.833307, 25.336779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.435907, 17.951038, 25.831459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.272588, 18.299545, 25.722511>,  <9.174596, 18.508650, 25.657143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.272588, 18.299545, 25.722511>,  <9.435907, 17.951038, 25.831459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.272588, 18.299545, 25.722511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091473, 0.335920, 0.937438,
		0.908254, 0.357841, -0.216853,
		-0.408299, 0.871268, -0.272367,
		9.150098, 18.560926, 25.640800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.691533, 18.463594, 26.241835>,  <9.435907, 17.951038, 25.831459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.691533, 18.463594, 26.241835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.397954, 18.679623, 26.077084>,  <9.221807, 18.809240, 25.978233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.397954, 18.679623, 26.077084>,  <9.691533, 18.463594, 26.241835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.397954, 18.679623, 26.077084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065105, 0.547676, 0.834154,
		0.676077, 0.639041, -0.366805,
		-0.733949, 0.540071, -0.411876,
		9.177770, 18.841644, 25.953522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.905434, 19.221598, 26.231833>,  <9.691533, 18.463594, 26.241835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.905434, 19.221598, 26.231833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.508969, 19.172056, 26.250845>,  <9.271091, 19.142332, 26.262253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.508969, 19.172056, 26.250845>,  <9.905434, 19.221598, 26.231833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.508969, 19.172056, 26.250845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006828, 0.405445, 0.914094,
		-0.132484, 0.905690, -0.402707,
		-0.991162, -0.123852, 0.047531,
		9.211620, 19.134901, 26.265104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.559445, 19.962524, 26.431717>,  <9.905434, 19.221598, 26.231833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.559445, 19.962524, 26.431717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.284819, 19.680698, 26.503510>,  <9.120043, 19.511602, 26.546585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.284819, 19.680698, 26.503510>,  <9.559445, 19.962524, 26.431717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.284819, 19.680698, 26.503510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283690, 0.486889, 0.826111,
		-0.669438, 0.516262, -0.534160,
		-0.686566, -0.704566, 0.179483,
		9.078849, 19.469328, 26.557354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.983652, 20.439463, 26.644302>,  <9.559445, 19.962524, 26.431717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.983652, 20.439463, 26.644302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.933764, 20.062712, 26.769081>,  <8.903832, 19.836660, 26.843948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.933764, 20.062712, 26.769081>,  <8.983652, 20.439463, 26.644302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.933764, 20.062712, 26.769081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283269, 0.335118, 0.898585,
		-0.950896, 0.023705, -0.308601,
		-0.124719, -0.941878, 0.311947,
		8.896349, 19.780148, 26.862665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.618110, 20.550346, 27.183144>,  <8.983652, 20.439463, 26.644302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.618110, 20.550346, 27.183144> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.673884, 20.163052, 27.266161>,  <8.707349, 19.930676, 27.315971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.673884, 20.163052, 27.266161>,  <8.618110, 20.550346, 27.183144>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.673884, 20.163052, 27.266161> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317745, 0.154760, 0.935461,
		-0.937868, -0.196384, -0.286073,
		0.139436, -0.968237, 0.207544,
		8.715715, 19.872581, 27.328424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.974216, 20.176592, 27.453650>,  <8.618110, 20.550346, 27.183144>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.974216, 20.176592, 27.453650> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.287098, 19.978682, 27.605095>,  <8.474828, 19.859936, 27.695963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.287098, 19.978682, 27.605095>,  <7.974216, 20.176592, 27.453650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.287098, 19.978682, 27.605095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309768, 0.218409, 0.925387,
		-0.540553, -0.841127, 0.017575,
		0.782206, -0.494776, 0.378615,
		8.521760, 19.830248, 27.718679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.686624, 19.897047, 27.990335>,  <7.974216, 20.176592, 27.453650>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.686624, 19.897047, 27.990335> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.075980, 19.866577, 28.076782>,  <8.309594, 19.848295, 28.128651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.075980, 19.866577, 28.076782>,  <7.686624, 19.897047, 27.990335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.075980, 19.866577, 28.076782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187359, 0.278421, 0.942008,
		-0.131929, -0.957434, 0.256741,
		0.973392, -0.076176, 0.216116,
		8.367998, 19.843725, 28.141617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<15.100318, 15.191140, 13.983438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.292205, 15.394357, 14.269589>,  <15.407337, 15.516287, 14.441280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.292205, 15.394357, 14.269589>,  <15.100318, 15.191140, 13.983438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.292205, 15.394357, 14.269589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766757, -0.153638, 0.623281,
		0.426563, -0.847519, 0.315842,
		0.479717, 0.508042, 0.715377,
		15.436120, 15.546769, 14.484202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.956433, 14.922956, 14.601715>,  <15.100318, 15.191140, 13.983438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.956433, 14.922956, 14.601715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.103021, 15.257583, 14.764618>,  <15.190973, 15.458359, 14.862360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.103021, 15.257583, 14.764618>,  <14.956433, 14.922956, 14.601715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.103021, 15.257583, 14.764618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738510, -0.004713, 0.674226,
		0.565954, -0.547847, 0.616085,
		0.366469, 0.836565, 0.407257,
		15.212961, 15.508553, 14.886795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.034268, 14.854388, 15.393093>,  <14.956433, 14.922956, 14.601715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.034268, 14.854388, 15.393093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.994946, 15.240150, 15.294903>,  <14.971352, 15.471607, 15.235989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.994946, 15.240150, 15.294903>,  <15.034268, 14.854388, 15.393093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.994946, 15.240150, 15.294903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704544, 0.106761, 0.701583,
		0.702818, 0.241919, 0.668971,
		-0.098306, 0.964405, -0.245476,
		14.965454, 15.529472, 15.221260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.951317, 15.205100, 16.054167>,  <15.034268, 14.854388, 15.393093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.951317, 15.205100, 16.054167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.843321, 15.495223, 15.800857>,  <14.778523, 15.669296, 15.648871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.843321, 15.495223, 15.800857>,  <14.951317, 15.205100, 16.054167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.843321, 15.495223, 15.800857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601064, 0.386853, 0.699333,
		0.752215, 0.569451, 0.331509,
		-0.269990, 0.725307, -0.633273,
		14.762323, 15.712815, 15.610874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.923984, 15.820934, 16.433260>,  <14.951317, 15.205100, 16.054167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.923984, 15.820934, 16.433260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.678888, 15.854205, 16.118900>,  <14.531831, 15.874167, 15.930285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.678888, 15.854205, 16.118900>,  <14.923984, 15.820934, 16.433260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.678888, 15.854205, 16.118900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618406, 0.568717, 0.542342,
		0.492063, 0.818317, -0.297038,
		-0.612738, 0.083176, -0.785897,
		14.495067, 15.879158, 15.883131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.684766, 16.495342, 16.450821>,  <14.923984, 15.820934, 16.433260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.684766, 16.495342, 16.450821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.419170, 16.301388, 16.223135>,  <14.259813, 16.185015, 16.086523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.419170, 16.301388, 16.223135>,  <14.684766, 16.495342, 16.450821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.419170, 16.301388, 16.223135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745821, 0.484001, 0.457705,
		0.053565, 0.728442, -0.683010,
		-0.663989, -0.484886, -0.569213,
		14.219974, 16.155922, 16.052370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.190966, 16.987543, 16.232832>,  <14.684766, 16.495342, 16.450821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.190966, 16.987543, 16.232832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.007133, 16.635315, 16.186560>,  <13.896832, 16.423979, 16.158796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.007133, 16.635315, 16.186560>,  <14.190966, 16.987543, 16.232832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.007133, 16.635315, 16.186560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814940, 0.366334, 0.449080,
		-0.353069, 0.300660, -0.885972,
		-0.459582, -0.880570, -0.115679,
		13.869258, 16.371143, 16.151855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.547823, 17.120884, 15.936521>,  <14.190966, 16.987543, 16.232832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.547823, 17.120884, 15.936521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.503293, 16.764721, 16.113058>,  <13.476575, 16.551023, 16.218981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.503293, 16.764721, 16.113058>,  <13.547823, 17.120884, 15.936521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503293, 16.764721, 16.113058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864024, 0.306134, 0.399681,
		-0.490989, -0.336837, -0.803412,
		-0.111325, -0.890406, 0.441343,
		13.469895, 16.497599, 16.245461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.944892, 17.141216, 16.075396>,  <13.547823, 17.120884, 15.936521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.944892, 17.141216, 16.075396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.053279, 16.813372, 16.277311>,  <13.118311, 16.616665, 16.398460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.053279, 16.813372, 16.277311>,  <12.944892, 17.141216, 16.075396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.053279, 16.813372, 16.277311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631864, 0.244162, 0.735618,
		-0.726171, -0.518287, -0.451723,
		0.270968, -0.819612, 0.504790,
		13.134569, 16.567488, 16.428749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.338243, 16.876799, 16.304213>,  <12.944892, 17.141216, 16.075396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.338243, 16.876799, 16.304213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.590086, 16.688490, 16.551428>,  <12.741192, 16.575504, 16.699757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.590086, 16.688490, 16.551428>,  <12.338243, 16.876799, 16.304213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.590086, 16.688490, 16.551428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626432, 0.162919, 0.762260,
		-0.459541, -0.867081, -0.192332,
		0.629606, -0.470773, 0.618036,
		12.778968, 16.547258, 16.736839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.932744, 16.356831, 16.702023>,  <12.338243, 16.876799, 16.304213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.932744, 16.356831, 16.702023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.253593, 16.439825, 16.926004>,  <12.446103, 16.489622, 17.060394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.253593, 16.439825, 16.926004>,  <11.932744, 16.356831, 16.702023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.253593, 16.439825, 16.926004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574210, 0.010534, 0.818641,
		0.163957, -0.978182, 0.127589,
		0.802123, 0.207485, 0.559954,
		12.494230, 16.502069, 17.093990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.752558, 16.003632, 17.337120>,  <11.932744, 16.356831, 16.702023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.752558, 16.003632, 17.337120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.035542, 16.281704, 17.388062>,  <12.205334, 16.448547, 17.418627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.035542, 16.281704, 17.388062>,  <11.752558, 16.003632, 17.337120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.035542, 16.281704, 17.388062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279300, 0.109475, 0.953943,
		0.649222, -0.710448, 0.271614,
		0.707462, 0.695182, 0.127354,
		12.247781, 16.490259, 17.426268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.927172, 15.314929, 17.631021>,  <11.752558, 16.003632, 17.337120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.927172, 15.314929, 17.631021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.647496, 15.032162, 17.673733>,  <11.479691, 14.862501, 17.699360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.647496, 15.032162, 17.673733>,  <11.927172, 15.314929, 17.631021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.647496, 15.032162, 17.673733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483791, -0.577790, -0.657347,
		0.526385, -0.407952, 0.745985,
		-0.699189, -0.706919, 0.106776,
		11.437739, 14.820086, 17.705765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.290225, 14.740234, 17.608498>,  <11.927172, 15.314929, 17.631021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.290225, 14.740234, 17.608498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.910047, 14.649590, 17.523363>,  <11.681939, 14.595202, 17.472282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.910047, 14.649590, 17.523363>,  <12.290225, 14.740234, 17.608498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.910047, 14.649590, 17.523363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294870, -0.440171, -0.848116,
		0.098509, -0.868848, 0.485180,
		-0.950446, -0.226612, -0.212837,
		11.624913, 14.581606, 17.459513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.309804, 14.084561, 17.526114>,  <12.290225, 14.740234, 17.608498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.309804, 14.084561, 17.526114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.975139, 14.191877, 17.335110>,  <11.774340, 14.256267, 17.220507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.975139, 14.191877, 17.335110>,  <12.309804, 14.084561, 17.526114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.975139, 14.191877, 17.335110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255777, -0.579535, -0.773769,
		-0.484325, -0.769521, 0.416255,
		-0.836665, 0.268287, -0.477508,
		11.724140, 14.272365, 17.191856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.072609, 13.474113, 17.269630>,  <12.309804, 14.084561, 17.526114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.072609, 13.474113, 17.269630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.886936, 13.745222, 17.041538>,  <11.775533, 13.907887, 16.904684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.886936, 13.745222, 17.041538>,  <12.072609, 13.474113, 17.269630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.886936, 13.745222, 17.041538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046398, -0.624298, -0.779807,
		-0.884523, -0.388431, 0.258341,
		-0.464183, 0.677771, -0.570228,
		11.747682, 13.948553, 16.870470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.572081, 13.108336, 16.882980>,  <12.072609, 13.474113, 17.269630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.572081, 13.108336, 16.882980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.621462, 13.453619, 16.687172>,  <11.651091, 13.660789, 16.569687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.621462, 13.453619, 16.687172>,  <11.572081, 13.108336, 16.882980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.621462, 13.453619, 16.687172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011410, -0.492029, -0.870504,
		-0.992285, 0.113052, -0.050894,
		0.123453, 0.863207, -0.489523,
		11.658498, 13.712582, 16.540316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.142879, 13.017908, 16.332825>,  <11.572081, 13.108336, 16.882980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.142879, 13.017908, 16.332825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.370366, 13.323720, 16.211460>,  <11.506858, 13.507207, 16.138641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.370366, 13.323720, 16.211460>,  <11.142879, 13.017908, 16.332825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.370366, 13.323720, 16.211460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005189, -0.372200, -0.928138,
		-0.822517, 0.526273, -0.215643,
		0.568717, 0.764529, -0.303410,
		11.540981, 13.553079, 16.120438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.788077, 13.233424, 15.697853>,  <11.142879, 13.017908, 16.332825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.788077, 13.233424, 15.697853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.154996, 13.392000, 15.712834>,  <11.375147, 13.487145, 15.721824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.154996, 13.392000, 15.712834>,  <10.788077, 13.233424, 15.697853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.154996, 13.392000, 15.712834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125800, -0.199265, -0.971837,
		-0.377812, 0.896174, -0.232657,
		0.917296, 0.396440, 0.037454,
		11.430184, 13.510932, 15.724071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.783913, 13.641666, 15.131559>,  <10.788077, 13.233424, 15.697853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.783913, 13.641666, 15.131559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.165236, 13.559624, 15.220225>,  <11.394030, 13.510398, 15.273425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.165236, 13.559624, 15.220225>,  <10.783913, 13.641666, 15.131559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.165236, 13.559624, 15.220225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180613, -0.201044, -0.962788,
		0.242038, 0.957869, -0.154612,
		0.953308, -0.205106, 0.221664,
		11.451228, 13.498092, 15.286724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.253693, 14.015737, 14.697840>,  <10.783913, 13.641666, 15.131559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.253693, 14.015737, 14.697840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.465125, 13.705067, 14.834881>,  <11.591985, 13.518664, 14.917106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.465125, 13.705067, 14.834881>,  <11.253693, 14.015737, 14.697840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.465125, 13.705067, 14.834881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269680, -0.229043, -0.935314,
		0.804906, 0.586783, 0.088386,
		0.528582, -0.776676, 0.342602,
		11.623699, 13.472064, 14.937661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.765325, 14.052135, 14.249216>,  <11.253693, 14.015737, 14.697840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.765325, 14.052135, 14.249216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.772282, 13.686181, 14.410553>,  <11.776456, 13.466609, 14.507355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.772282, 13.686181, 14.410553>,  <11.765325, 14.052135, 14.249216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.772282, 13.686181, 14.410553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281002, -0.382670, -0.880114,
		0.959549, 0.128647, 0.250429,
		0.017392, -0.914884, 0.403341,
		11.777499, 13.411716, 14.531555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.387456, 13.719208, 14.068941>,  <11.765325, 14.052135, 14.249216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.387456, 13.719208, 14.068941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.144670, 13.414528, 14.159632>,  <11.998998, 13.231720, 14.214046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.144670, 13.414528, 14.159632>,  <12.387456, 13.719208, 14.068941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.144670, 13.414528, 14.159632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155035, -0.393295, -0.906247,
		0.779459, -0.514910, 0.356807,
		-0.606966, -0.761700, 0.226728,
		11.962580, 13.186018, 14.227650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.682183, 13.236482, 13.695598>,  <12.387456, 13.719208, 14.068941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.682183, 13.236482, 13.695598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.339659, 13.059254, 13.801746>,  <12.134144, 12.952917, 13.865436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.339659, 13.059254, 13.801746>,  <12.682183, 13.236482, 13.695598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.339659, 13.059254, 13.801746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045087, -0.447730, -0.893031,
		0.514490, -0.776676, 0.363419,
		-0.856310, -0.443070, 0.265371,
		12.082766, 12.926332, 13.881358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.687289, 12.670530, 13.354968>,  <12.682183, 13.236482, 13.695598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.687289, 12.670530, 13.354968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.304565, 12.664328, 13.471089>,  <12.074931, 12.660606, 13.540762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.304565, 12.664328, 13.471089>,  <12.687289, 12.670530, 13.354968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.304565, 12.664328, 13.471089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254047, -0.440887, -0.860859,
		0.141340, -0.897429, 0.417905,
		-0.956809, -0.015507, 0.290304,
		12.017523, 12.659676, 13.558181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.773284, 12.028565, 13.879250>,  <12.687289, 12.670530, 13.354968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.773284, 12.028565, 13.879250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.053224, 12.250550, 13.699369>,  <13.221188, 12.383741, 13.591441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.053224, 12.250550, 13.699369>,  <12.773284, 12.028565, 13.879250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.053224, 12.250550, 13.699369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159273, 0.734968, 0.659132,
		0.696306, -0.389669, 0.602757,
		0.699850, 0.554960, -0.449699,
		13.263178, 12.417039, 13.564459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.951257, 11.298992, 13.911927>,  <12.773284, 12.028565, 13.879250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.951257, 11.298992, 13.911927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.078697, 10.955202, 14.071824>,  <13.155162, 10.748928, 14.167762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.078697, 10.955202, 14.071824>,  <12.951257, 11.298992, 13.911927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.078697, 10.955202, 14.071824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286118, 0.314848, 0.904990,
		-0.903675, -0.402705, -0.145601,
		0.318602, -0.859476, 0.399742,
		13.174277, 10.697359, 14.191747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.402143, 10.874725, 14.213547>,  <12.951257, 11.298992, 13.911927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.402143, 10.874725, 14.213547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.750657, 10.778249, 14.384515>,  <12.959765, 10.720363, 14.487096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.750657, 10.778249, 14.384515>,  <12.402143, 10.874725, 14.213547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.750657, 10.778249, 14.384515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453475, -0.062611, 0.889067,
		-0.187676, -0.968455, -0.163928,
		0.871285, -0.241194, 0.427419,
		13.012043, 10.705892, 14.512741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.375879, 10.199654, 14.596156>,  <12.402143, 10.874725, 14.213547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.375879, 10.199654, 14.596156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.616555, 10.451092, 14.793270>,  <12.760961, 10.601954, 14.911539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.616555, 10.451092, 14.793270>,  <12.375879, 10.199654, 14.596156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.616555, 10.451092, 14.793270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463077, -0.228155, 0.856449,
		0.650792, -0.743514, 0.153810,
		0.601689, 0.628596, 0.492786,
		12.797062, 10.639670, 14.941106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.216760, 10.107512, 15.241812>,  <12.375879, 10.199654, 14.596156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.216760, 10.107512, 15.241812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.516848, 10.366319, 15.296272>,  <12.696900, 10.521603, 15.328949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.516848, 10.366319, 15.296272>,  <12.216760, 10.107512, 15.241812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.516848, 10.366319, 15.296272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229735, 0.061992, 0.971277,
		0.619994, -0.759950, 0.195151,
		0.750220, 0.647019, 0.136152,
		12.741914, 10.560424, 15.337118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.478494, 9.806855, 15.734072>,  <12.216760, 10.107512, 15.241812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.478494, 9.806855, 15.734072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.620248, 10.180511, 15.751012>,  <12.705300, 10.404705, 15.761176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.620248, 10.180511, 15.751012>,  <12.478494, 9.806855, 15.734072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.620248, 10.180511, 15.751012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208224, 0.034680, 0.977466,
		0.911621, -0.355219, 0.206800,
		0.354386, 0.934140, 0.042350,
		12.726563, 10.460753, 15.763717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.830140, 9.901495, 16.359808>,  <12.478494, 9.806855, 15.734072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.830140, 9.901495, 16.359808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.739279, 10.281397, 16.273674>,  <12.684762, 10.509337, 16.221994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.739279, 10.281397, 16.273674>,  <12.830140, 9.901495, 16.359808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.739279, 10.281397, 16.273674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140942, 0.186726, 0.972249,
		0.963606, 0.251200, 0.091445,
		-0.227153, 0.949754, -0.215335,
		12.671133, 10.566323, 16.209074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.282767, 10.285102, 16.893677>,  <12.830140, 9.901495, 16.359808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.282767, 10.285102, 16.893677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.005174, 10.545207, 16.770037>,  <12.838617, 10.701270, 16.695852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.005174, 10.545207, 16.770037>,  <13.282767, 10.285102, 16.893677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.005174, 10.545207, 16.770037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211554, 0.226198, 0.950831,
		0.688208, 0.725254, -0.019412,
		-0.693985, 0.650263, -0.309102,
		12.796978, 10.740286, 16.677307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.409437, 11.007237, 17.095762>,  <13.282767, 10.285102, 16.893677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.409437, 11.007237, 17.095762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.015455, 11.044654, 17.037636>,  <12.779066, 11.067103, 17.002760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.015455, 11.044654, 17.037636>,  <13.409437, 11.007237, 17.095762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.015455, 11.044654, 17.037636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058222, 0.612089, 0.788643,
		0.162716, 0.785237, -0.597433,
		-0.984954, 0.093541, -0.145314,
		12.719969, 11.072716, 16.994041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.290279, 11.657939, 17.284964>,  <13.409437, 11.007237, 17.095762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.290279, 11.657939, 17.284964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.925420, 11.495664, 17.308298>,  <12.706504, 11.398298, 17.322298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.925420, 11.495664, 17.308298>,  <13.290279, 11.657939, 17.284964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.925420, 11.495664, 17.308298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187791, 0.540188, 0.820324,
		-0.364308, 0.737302, -0.568916,
		-0.912148, -0.405687, 0.058336,
		12.651775, 11.373958, 17.325798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.768623, 12.182023, 17.395023>,  <13.290279, 11.657939, 17.284964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.768623, 12.182023, 17.395023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.567961, 11.861627, 17.525719>,  <12.447563, 11.669389, 17.604136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.567961, 11.861627, 17.525719>,  <12.768623, 12.182023, 17.395023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.567961, 11.861627, 17.525719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254305, 0.497561, 0.829314,
		-0.826844, 0.332939, -0.453300,
		-0.501655, -0.800990, 0.326737,
		12.417464, 11.621329, 17.623739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.180673, 12.558714, 17.746609>,  <12.768623, 12.182023, 17.395023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.180673, 12.558714, 17.746609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.180143, 12.177073, 17.866398>,  <12.179826, 11.948088, 17.938272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.180143, 12.177073, 17.866398>,  <12.180673, 12.558714, 17.746609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.180143, 12.177073, 17.866398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411644, 0.273444, 0.869355,
		-0.911344, -0.122127, -0.393112,
		-0.001323, -0.954104, 0.299475,
		12.179747, 11.890841, 17.956240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.510357, 12.534223, 18.026922>,  <12.180673, 12.558714, 17.746609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.510357, 12.534223, 18.026922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.738548, 12.235776, 18.164248>,  <11.875463, 12.056707, 18.246643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.738548, 12.235776, 18.164248>,  <11.510357, 12.534223, 18.026922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.738548, 12.235776, 18.164248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228623, 0.257224, 0.938918,
		-0.788851, -0.614121, -0.023839,
		0.570478, -0.746117, 0.343314,
		11.909692, 12.011941, 18.267242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.064475, 12.220254, 18.494713>,  <11.510357, 12.534223, 18.026922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.064475, 12.220254, 18.494713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.438674, 12.109180, 18.582108>,  <11.663194, 12.042537, 18.634544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.438674, 12.109180, 18.582108>,  <11.064475, 12.220254, 18.494713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.438674, 12.109180, 18.582108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232941, -0.019741, 0.972290,
		-0.265677, -0.960470, -0.083151,
		0.935497, -0.277684, 0.218488,
		11.719323, 12.025875, 18.647654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.077281, 11.692318, 18.968374>,  <11.064475, 12.220254, 18.494713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.077281, 11.692318, 18.968374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.451046, 11.826815, 19.015392>,  <11.675304, 11.907513, 19.043602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.451046, 11.826815, 19.015392>,  <11.077281, 11.692318, 18.968374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.451046, 11.826815, 19.015392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135887, 0.031464, 0.990224,
		0.329257, -0.941250, 0.075092,
		0.934411, 0.336242, 0.117544,
		11.731369, 11.927688, 19.050655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.275149, 11.418698, 19.579168>,  <11.077281, 11.692318, 18.968374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.275149, 11.418698, 19.579168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.544621, 11.707887, 19.517887>,  <11.706304, 11.881399, 19.481117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.544621, 11.707887, 19.517887>,  <11.275149, 11.418698, 19.579168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.544621, 11.707887, 19.517887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065586, 0.148000, 0.986810,
		0.736109, -0.674841, 0.052288,
		0.673679, 0.722970, -0.153204,
		11.746724, 11.924778, 19.471926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.912835, 11.169185, 19.799955>,  <11.275149, 11.418698, 19.579168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.912835, 11.169185, 19.799955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.917131, 11.569092, 19.792498>,  <11.919709, 11.809036, 19.788023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.917131, 11.569092, 19.792498>,  <11.912835, 11.169185, 19.799955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.917131, 11.569092, 19.792498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062063, 0.017944, 0.997911,
		0.998014, -0.011875, -0.061856,
		0.010740, 0.999768, -0.018646,
		11.920354, 11.869022, 19.786903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.375309, 11.317403, 20.448168>,  <11.912835, 11.169185, 19.799955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.375309, 11.317403, 20.448168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.188381, 11.663950, 20.377716>,  <12.076224, 11.871878, 20.335445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.188381, 11.663950, 20.377716>,  <12.375309, 11.317403, 20.448168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.188381, 11.663950, 20.377716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043925, 0.176220, 0.983370,
		0.882997, 0.467284, -0.044296,
		-0.467319, 0.866367, -0.176128,
		12.048185, 11.923861, 20.324879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.734637, 11.876641, 20.871597>,  <12.375309, 11.317403, 20.448168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.734637, 11.876641, 20.871597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380985, 12.034877, 20.772139>,  <12.168795, 12.129818, 20.712463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380985, 12.034877, 20.772139>,  <12.734637, 11.876641, 20.871597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.380985, 12.034877, 20.772139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148381, 0.266897, 0.952234,
		0.443056, 0.878792, -0.177274,
		-0.884129, 0.395589, -0.248646,
		12.115746, 12.153553, 20.697544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.695087, 12.450634, 21.281864>,  <12.734637, 11.876641, 20.871597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.695087, 12.450634, 21.281864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.316588, 12.353835, 21.196026>,  <12.089489, 12.295755, 21.144522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.316588, 12.353835, 21.196026>,  <12.695087, 12.450634, 21.281864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.316588, 12.353835, 21.196026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253954, 0.144990, 0.956287,
		-0.200305, 0.959383, -0.198653,
		-0.946248, -0.241998, -0.214597,
		12.032714, 12.281236, 21.131647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.395596, 12.948683, 21.729427>,  <12.695087, 12.450634, 21.281864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.395596, 12.948683, 21.729427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.081256, 12.727892, 21.617882>,  <11.892653, 12.595418, 21.550955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.081256, 12.727892, 21.617882>,  <12.395596, 12.948683, 21.729427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.081256, 12.727892, 21.617882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504595, 0.311622, 0.805156,
		-0.357527, 0.773443, -0.523412,
		-0.785849, -0.551976, -0.278862,
		11.845501, 12.562299, 21.534224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.846169, 13.450729, 21.810795>,  <12.395596, 12.948683, 21.729427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.846169, 13.450729, 21.810795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.760982, 13.061240, 21.843069>,  <11.709869, 12.827547, 21.862432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.760982, 13.061240, 21.843069>,  <11.846169, 13.450729, 21.810795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.760982, 13.061240, 21.843069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296965, 0.143180, 0.944093,
		-0.930836, 0.177101, -0.319654,
		-0.212968, -0.973722, 0.080684,
		11.697091, 12.769123, 21.867275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.191854, 13.446958, 22.210363>,  <11.846169, 13.450729, 21.810795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.191854, 13.446958, 22.210363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.367527, 13.090157, 22.253170>,  <11.472931, 12.876076, 22.278854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.367527, 13.090157, 22.253170>,  <11.191854, 13.446958, 22.210363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.367527, 13.090157, 22.253170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155127, 0.042037, 0.987000,
		-0.884904, -0.450073, -0.119911,
		0.439182, -0.892001, 0.107017,
		11.499282, 12.822556, 22.285275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.745771, 13.138089, 22.735699>,  <11.191854, 13.446958, 22.210363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.745771, 13.138089, 22.735699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.057154, 12.887335, 22.722918>,  <11.243983, 12.736882, 22.715248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.057154, 12.887335, 22.722918>,  <10.745771, 13.138089, 22.735699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.057154, 12.887335, 22.722918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138141, -0.220753, 0.965498,
		-0.612312, -0.747182, -0.258445,
		0.778454, -0.626888, -0.031953,
		11.290690, 12.699268, 22.713331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.508933, 12.740482, 23.264458>,  <10.745771, 13.138089, 22.735699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.508933, 12.740482, 23.264458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.892753, 12.648531, 23.199440>,  <11.123045, 12.593360, 23.160429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.892753, 12.648531, 23.199440>,  <10.508933, 12.740482, 23.264458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.892753, 12.648531, 23.199440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169957, 0.012683, 0.985370,
		-0.224454, -0.973137, 0.051240,
		0.959549, -0.229879, -0.162544,
		11.180617, 12.579567, 23.150677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.744864, 11.993850, 23.572411>,  <10.508933, 12.740482, 23.264458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.744864, 11.993850, 23.572411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.037814, 12.264972, 23.546480>,  <11.213585, 12.427645, 23.530922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.037814, 12.264972, 23.546480>,  <10.744864, 11.993850, 23.572411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.037814, 12.264972, 23.546480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201570, -0.124886, 0.971480,
		0.650379, -0.724557, -0.228089,
		0.732377, 0.677806, -0.064826,
		11.257527, 12.468313, 23.527033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.405568, 11.661508, 23.868633>,  <10.744864, 11.993850, 23.572411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.405568, 11.661508, 23.868633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.444655, 12.057802, 23.906357>,  <11.468107, 12.295579, 23.928991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.444655, 12.057802, 23.906357>,  <11.405568, 11.661508, 23.868633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.444655, 12.057802, 23.906357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229523, -0.114644, 0.966528,
		0.968386, -0.072800, -0.238599,
		0.097717, 0.990736, 0.094311,
		11.473970, 12.355022, 23.934650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.847522, 11.657782, 24.440310>,  <11.405568, 11.661508, 23.868633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.847522, 11.657782, 24.440310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.702061, 12.030318, 24.432701>,  <11.614784, 12.253840, 24.428137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.702061, 12.030318, 24.432701>,  <11.847522, 11.657782, 24.440310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.702061, 12.030318, 24.432701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040371, 0.004641, 0.999174,
		0.930660, 0.364120, 0.035911,
		-0.363652, 0.931341, -0.019019,
		11.592965, 12.309720, 24.426996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.259641, 12.086105, 24.899788>,  <11.847522, 11.657782, 24.440310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.259641, 12.086105, 24.899788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.905830, 12.267767, 24.857157>,  <11.693544, 12.376764, 24.831579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.905830, 12.267767, 24.857157>,  <12.259641, 12.086105, 24.899788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.905830, 12.267767, 24.857157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023241, 0.185278, 0.982411,
		0.465913, 0.871445, -0.153328,
		-0.884525, 0.454155, -0.106577,
		11.640472, 12.404014, 24.825184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
