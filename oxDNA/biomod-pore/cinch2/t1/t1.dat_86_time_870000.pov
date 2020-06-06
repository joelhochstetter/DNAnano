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
	<42.784645, 32.127300, 23.256115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713547, 32.423321, 23.515572>,  <42.670887, 32.600933, 23.671246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713547, 32.423321, 23.515572>,  <42.784645, 32.127300, 23.256115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713547, 32.423321, 23.515572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525904, -0.628553, 0.573015,
		0.831765, -0.239274, 0.500914,
		-0.177743, 0.740047, 0.648643,
		42.660225, 32.645336, 23.710165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786854, 31.811190, 23.931704>,  <42.784645, 32.127300, 23.256115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786854, 31.811190, 23.931704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506382, 32.096382, 23.932690>,  <42.338100, 32.267498, 23.933281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506382, 32.096382, 23.932690>,  <42.786854, 31.811190, 23.931704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506382, 32.096382, 23.932690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581513, -0.573877, 0.576635,
		0.412546, 0.402889, 0.816998,
		-0.701176, 0.712984, 0.002465,
		42.296028, 32.310276, 23.933430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416599, 31.933903, 24.647596>,  <42.786854, 31.811190, 23.931704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416599, 31.933903, 24.647596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149754, 32.043381, 24.370453>,  <41.989647, 32.109070, 24.204166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.149754, 32.043381, 24.370453>,  <42.416599, 31.933903, 24.647596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.149754, 32.043381, 24.370453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716709, -0.489491, 0.496716,
		-0.203198, 0.827942, 0.522707,
		-0.667112, 0.273697, -0.692857,
		41.949619, 32.125488, 24.162596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.781895, 31.997299, 25.008659>,  <42.416599, 31.933903, 24.647596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.781895, 31.997299, 25.008659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700188, 31.976292, 24.617657>,  <41.651165, 31.963688, 24.383055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700188, 31.976292, 24.617657>,  <41.781895, 31.997299, 25.008659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700188, 31.976292, 24.617657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757132, -0.624482, 0.191765,
		-0.620506, 0.779271, 0.087795,
		-0.204263, -0.052519, -0.977506,
		41.638908, 31.960535, 24.324406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089603, 32.301071, 24.875507>,  <41.781895, 31.997299, 25.008659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089603, 32.301071, 24.875507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194599, 32.023182, 24.607639>,  <41.257599, 31.856449, 24.446918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194599, 32.023182, 24.607639>,  <41.089603, 32.301071, 24.875507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194599, 32.023182, 24.607639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898246, -0.429449, 0.093425,
		-0.352494, 0.577005, -0.736759,
		0.262494, -0.694722, -0.669670,
		41.273346, 31.814766, 24.406738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385750, 32.869881, 25.112804>,  <41.089603, 32.301071, 24.875507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385750, 32.869881, 25.112804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074158, 33.117924, 25.150009>,  <40.887203, 33.266750, 25.172331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074158, 33.117924, 25.150009>,  <41.385750, 32.869881, 25.112804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074158, 33.117924, 25.150009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457275, 0.460296, 0.760938,
		0.429054, 0.635288, -0.642123,
		-0.778982, 0.620110, 0.093010,
		40.840462, 33.303955, 25.177912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635674, 33.489597, 25.264797>,  <41.385750, 32.869881, 25.112804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635674, 33.489597, 25.264797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258129, 33.526279, 25.391739>,  <41.031601, 33.548290, 25.467903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258129, 33.526279, 25.391739>,  <41.635674, 33.489597, 25.264797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258129, 33.526279, 25.391739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316345, 0.527576, 0.788409,
		-0.095126, 0.844543, -0.526970,
		-0.943863, 0.091706, 0.317354,
		40.974972, 33.553791, 25.486944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.631969, 34.043324, 25.671936>,  <41.635674, 33.489597, 25.264797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.631969, 34.043324, 25.671936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295231, 33.876274, 25.808689>,  <41.093185, 33.776047, 25.890741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295231, 33.876274, 25.808689>,  <41.631969, 34.043324, 25.671936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295231, 33.876274, 25.808689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083160, 0.525514, 0.846711,
		-0.533267, 0.741234, -0.407674,
		-0.841849, -0.417621, 0.341881,
		41.042675, 33.750988, 25.911253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188061, 34.520355, 26.047310>,  <41.631969, 34.043324, 25.671936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188061, 34.520355, 26.047310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036476, 34.186150, 26.206455>,  <40.945526, 33.985626, 26.301943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036476, 34.186150, 26.206455>,  <41.188061, 34.520355, 26.047310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036476, 34.186150, 26.206455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037943, 0.415544, 0.908781,
		-0.924632, 0.359493, -0.125775,
		-0.378966, -0.835516, 0.397866,
		40.922787, 33.935493, 26.325815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765182, 34.759399, 26.465990>,  <41.188061, 34.520355, 26.047310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765182, 34.759399, 26.465990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827869, 34.386513, 26.596474>,  <40.865482, 34.162781, 26.674765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827869, 34.386513, 26.596474>,  <40.765182, 34.759399, 26.465990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827869, 34.386513, 26.596474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024322, 0.333835, 0.942318,
		-0.987344, -0.139744, 0.074991,
		0.156718, -0.932216, 0.326211,
		40.874886, 34.106850, 26.694338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199226, 34.603134, 26.932997>,  <40.765182, 34.759399, 26.465990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199226, 34.603134, 26.932997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503193, 34.356464, 27.015209>,  <40.685574, 34.208462, 27.064537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503193, 34.356464, 27.015209>,  <40.199226, 34.603134, 26.932997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503193, 34.356464, 27.015209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086254, 0.217731, 0.972190,
		-0.644276, -0.756508, 0.112266,
		0.759913, -0.616676, 0.205531,
		40.731167, 34.171463, 27.076868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971603, 34.207558, 27.444540>,  <40.199226, 34.603134, 26.932997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971603, 34.207558, 27.444540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370415, 34.204643, 27.475231>,  <40.609699, 34.202896, 27.493645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.370415, 34.204643, 27.475231>,  <39.971603, 34.207558, 27.444540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370415, 34.204643, 27.475231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073686, 0.201734, 0.976665,
		-0.022593, -0.979413, 0.200597,
		0.997026, -0.007284, 0.076727,
		40.669521, 34.202457, 27.498249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072380, 33.972275, 28.031527>,  <39.971603, 34.207558, 27.444540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072380, 33.972275, 28.031527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433605, 34.140701, 27.997639>,  <40.650341, 34.241756, 27.977306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433605, 34.140701, 27.997639>,  <40.072380, 33.972275, 28.031527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433605, 34.140701, 27.997639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095466, 0.389096, 0.916237,
		0.418773, -0.819327, 0.391576,
		0.903059, 0.421078, -0.084725,
		40.704525, 34.267021, 27.972221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427177, 33.696484, 28.617498>,  <40.072380, 33.972275, 28.031527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427177, 33.696484, 28.617498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608566, 34.029278, 28.489647>,  <40.717400, 34.228954, 28.412935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608566, 34.029278, 28.489647>,  <40.427177, 33.696484, 28.617498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608566, 34.029278, 28.489647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097391, 0.402731, 0.910122,
		0.885932, -0.381589, 0.263656,
		0.453476, 0.831984, -0.319629,
		40.744610, 34.278873, 28.393759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809402, 33.881008, 29.216423>,  <40.427177, 33.696484, 28.617498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809402, 33.881008, 29.216423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778934, 34.192524, 28.967365>,  <40.760654, 34.379433, 28.817930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.778934, 34.192524, 28.967365>,  <40.809402, 33.881008, 29.216423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778934, 34.192524, 28.967365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066602, 0.619089, 0.782491,
		0.994868, 0.101070, 0.004714,
		-0.076168, 0.778790, -0.622644,
		40.756084, 34.426163, 28.780573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355110, 34.392372, 29.433573>,  <40.809402, 33.881008, 29.216423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355110, 34.392372, 29.433573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052593, 34.574848, 29.245995>,  <40.871082, 34.684334, 29.133448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052593, 34.574848, 29.245995>,  <41.355110, 34.392372, 29.433573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052593, 34.574848, 29.245995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096932, 0.630744, 0.769913,
		0.647010, 0.627737, -0.432809,
		-0.756295, 0.456189, -0.468946,
		40.825706, 34.711704, 29.105310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562561, 35.004684, 29.576136>,  <41.355110, 34.392372, 29.433573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562561, 35.004684, 29.576136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185730, 35.052700, 29.450863>,  <40.959633, 35.081509, 29.375698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.185730, 35.052700, 29.450863>,  <41.562561, 35.004684, 29.576136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185730, 35.052700, 29.450863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205414, 0.531652, 0.821676,
		0.265141, 0.838413, -0.476198,
		-0.942075, 0.120042, -0.313184,
		40.903107, 35.088715, 29.356907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595421, 35.726013, 29.799440>,  <41.562561, 35.004684, 29.576136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595421, 35.726013, 29.799440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228756, 35.580692, 29.732819>,  <41.008755, 35.493500, 29.692844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.228756, 35.580692, 29.732819>,  <41.595421, 35.726013, 29.799440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228756, 35.580692, 29.732819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335016, 0.471251, 0.815896,
		-0.217923, 0.803702, -0.553690,
		-0.916664, -0.363298, -0.166557,
		40.953758, 35.471703, 29.682852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158272, 36.365849, 29.776003>,  <41.595421, 35.726013, 29.799440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158272, 36.365849, 29.776003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894115, 36.072964, 29.842632>,  <40.735622, 35.897232, 29.882610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894115, 36.072964, 29.842632>,  <41.158272, 36.365849, 29.776003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894115, 36.072964, 29.842632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558337, 0.627130, 0.543109,
		-0.502135, 0.265661, -0.822973,
		-0.660394, -0.732210, 0.166575,
		40.695999, 35.853302, 29.892605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459557, 36.631912, 29.682899>,  <41.158272, 36.365849, 29.776003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459557, 36.631912, 29.682899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436745, 36.335106, 29.950081>,  <40.423058, 36.157024, 30.110390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436745, 36.335106, 29.950081>,  <40.459557, 36.631912, 29.682899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436745, 36.335106, 29.950081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644882, 0.538122, 0.542726,
		-0.762152, -0.399799, -0.509201,
		-0.057031, -0.742014, 0.667954,
		40.419636, 36.112503, 30.150467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673416, 36.547791, 29.917109>,  <40.459557, 36.631912, 29.682899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673416, 36.547791, 29.917109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910202, 36.397022, 30.202068>,  <40.052273, 36.306561, 30.373043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910202, 36.397022, 30.202068>,  <39.673416, 36.547791, 29.917109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910202, 36.397022, 30.202068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592738, 0.395330, 0.701695,
		-0.546117, -0.837642, 0.010603,
		0.591961, -0.376923, 0.712398,
		40.087791, 36.283947, 30.415789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225113, 36.440765, 30.427366>,  <39.673416, 36.547791, 29.917109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225113, 36.440765, 30.427366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572990, 36.403584, 30.621269>,  <39.781719, 36.381275, 30.737610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572990, 36.403584, 30.621269>,  <39.225113, 36.440765, 30.427366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572990, 36.403584, 30.621269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369745, 0.527912, 0.764590,
		-0.326983, -0.844196, 0.424752,
		0.869696, -0.092958, 0.484756,
		39.833900, 36.375698, 30.766697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094082, 36.140739, 31.012238>,  <39.225113, 36.440765, 30.427366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094082, 36.140739, 31.012238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427273, 36.355167, 31.067036>,  <39.627190, 36.483826, 31.099915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427273, 36.355167, 31.067036>,  <39.094082, 36.140739, 31.012238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427273, 36.355167, 31.067036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427468, 0.466301, 0.774490,
		0.351300, -0.703699, 0.617573,
		0.832983, 0.536071, 0.136997,
		39.677166, 36.515987, 31.108135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177910, 36.105324, 31.704903>,  <39.094082, 36.140739, 31.012238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177910, 36.105324, 31.704903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390961, 36.417461, 31.573830>,  <39.518791, 36.604744, 31.495186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.390961, 36.417461, 31.573830>,  <39.177910, 36.105324, 31.704903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.390961, 36.417461, 31.573830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310357, 0.540281, 0.782160,
		0.787394, -0.314899, 0.529952,
		0.532624, 0.780343, -0.327683,
		39.550747, 36.651566, 31.475525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563244, 36.437084, 32.302647>,  <39.177910, 36.105324, 31.704903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563244, 36.437084, 32.302647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537731, 36.715042, 32.016136>,  <39.522423, 36.881817, 31.844231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.537731, 36.715042, 32.016136>,  <39.563244, 36.437084, 32.302647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537731, 36.715042, 32.016136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177711, 0.698356, 0.693338,
		0.982014, 0.171510, 0.078951,
		-0.063778, 0.694898, -0.716274,
		39.518597, 36.923512, 31.801254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979389, 36.971642, 32.530315>,  <39.563244, 36.437084, 32.302647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979389, 36.971642, 32.530315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739613, 37.133781, 32.254242>,  <39.595745, 37.231064, 32.088596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739613, 37.133781, 32.254242>,  <39.979389, 36.971642, 32.530315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739613, 37.133781, 32.254242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203515, 0.756758, 0.621207,
		0.774110, 0.512843, -0.371140,
		-0.599445, 0.405350, -0.690186,
		39.559780, 37.255386, 32.047188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112823, 37.744373, 32.548069>,  <39.979389, 36.971642, 32.530315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112823, 37.744373, 32.548069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756065, 37.721142, 32.368671>,  <39.542011, 37.707203, 32.261032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756065, 37.721142, 32.368671>,  <40.112823, 37.744373, 32.548069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756065, 37.721142, 32.368671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291062, 0.832742, 0.470981,
		0.346129, 0.550606, -0.759623,
		-0.891895, -0.058077, -0.448497,
		39.488495, 37.703720, 32.234123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915115, 38.307209, 32.270416>,  <40.112823, 37.744373, 32.548069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915115, 38.307209, 32.270416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576790, 38.105728, 32.340714>,  <39.373795, 37.984840, 32.382893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.576790, 38.105728, 32.340714>,  <39.915115, 38.307209, 32.270416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576790, 38.105728, 32.340714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449038, 0.850056, 0.275263,
		-0.288042, 0.153905, -0.945169,
		-0.845811, -0.503704, 0.175743,
		39.323048, 37.954617, 32.393436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311825, 38.562012, 31.901035>,  <39.915115, 38.307209, 32.270416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311825, 38.562012, 31.901035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173862, 38.395142, 32.237370>,  <39.091084, 38.295017, 32.439171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173862, 38.395142, 32.237370>,  <39.311825, 38.562012, 31.901035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173862, 38.395142, 32.237370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663915, 0.741667, 0.095642,
		-0.663519, -0.525256, -0.532774,
		-0.344904, -0.417177, 0.840835,
		39.070393, 38.269989, 32.489620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569733, 38.427441, 31.890261>,  <39.311825, 38.562012, 31.901035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569733, 38.427441, 31.890261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701256, 38.490383, 32.262737>,  <38.780170, 38.528149, 32.486225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701256, 38.490383, 32.262737>,  <38.569733, 38.427441, 31.890261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701256, 38.490383, 32.262737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645682, 0.757021, 0.100070,
		-0.689186, -0.634159, 0.350520,
		0.328812, 0.157357, 0.931194,
		38.799900, 38.537590, 32.542095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033978, 38.498409, 32.529102>,  <38.569733, 38.427441, 31.890261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033978, 38.498409, 32.529102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361893, 38.710297, 32.616135>,  <38.558643, 38.837429, 32.668354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361893, 38.710297, 32.616135>,  <38.033978, 38.498409, 32.529102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361893, 38.710297, 32.616135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569125, 0.795815, 0.206822,
		-0.063594, -0.293380, 0.953878,
		0.819788, 0.529723, 0.217579,
		38.607830, 38.869213, 32.681408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053665, 38.755695, 33.250164>,  <38.033978, 38.498409, 32.529102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053665, 38.755695, 33.250164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212368, 38.972607, 32.953918>,  <38.307590, 39.102753, 32.776169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212368, 38.972607, 32.953918>,  <38.053665, 38.755695, 33.250164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212368, 38.972607, 32.953918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575178, 0.775672, 0.259813,
		0.715368, 0.322904, 0.619662,
		0.396760, 0.542278, -0.740618,
		38.331398, 39.135288, 32.731731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253960, 38.010204, 33.170898>,  <38.053665, 38.755695, 33.250164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253960, 38.010204, 33.170898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857777, 38.063099, 33.155338>,  <37.620068, 38.094837, 33.146004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857777, 38.063099, 33.155338>,  <38.253960, 38.010204, 33.170898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857777, 38.063099, 33.155338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048744, -0.599985, -0.798525,
		-0.128937, -0.789006, 0.600703,
		-0.990454, 0.132240, -0.038901,
		37.560642, 38.102772, 33.143669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839165, 37.379631, 32.940022>,  <38.253960, 38.010204, 33.170898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839165, 37.379631, 32.940022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618114, 37.699627, 32.846539>,  <37.485485, 37.891624, 32.790447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618114, 37.699627, 32.846539>,  <37.839165, 37.379631, 32.940022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618114, 37.699627, 32.846539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012201, -0.272623, -0.962044,
		-0.833338, -0.534505, 0.140899,
		-0.552629, 0.799988, -0.233708,
		37.452324, 37.939625, 32.776424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238125, 37.195755, 32.620083>,  <37.839165, 37.379631, 32.940022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238125, 37.195755, 32.620083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300430, 37.564434, 32.477978>,  <37.337814, 37.785641, 32.392715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300430, 37.564434, 32.477978>,  <37.238125, 37.195755, 32.620083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300430, 37.564434, 32.477978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100471, -0.343007, -0.933944,
		-0.982671, 0.181170, 0.039175,
		0.155766, 0.921696, -0.355265,
		37.347160, 37.840942, 32.371399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919044, 37.259331, 31.934553>,  <37.238125, 37.195755, 32.620083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919044, 37.259331, 31.934553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186546, 37.556618, 31.942436>,  <37.347050, 37.734989, 31.947166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186546, 37.556618, 31.942436>,  <36.919044, 37.259331, 31.934553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186546, 37.556618, 31.942436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205524, -0.159329, -0.965595,
		-0.714509, 0.649800, -0.259302,
		0.668758, 0.743219, 0.019708,
		37.387173, 37.779583, 31.948349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841057, 37.811684, 31.340734>,  <36.919044, 37.259331, 31.934553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841057, 37.811684, 31.340734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223560, 37.773335, 31.451279>,  <37.453064, 37.750324, 31.517605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223560, 37.773335, 31.451279>,  <36.841057, 37.811684, 31.340734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223560, 37.773335, 31.451279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277496, -0.001547, -0.960725,
		0.092532, 0.995393, 0.025125,
		0.956260, -0.095870, 0.276361,
		37.510437, 37.744572, 31.534187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226597, 38.301231, 30.860737>,  <36.841057, 37.811684, 31.340734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226597, 38.301231, 30.860737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494835, 38.044510, 31.009541>,  <37.655777, 37.890476, 31.098824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494835, 38.044510, 31.009541>,  <37.226597, 38.301231, 30.860737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494835, 38.044510, 31.009541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458340, -0.035842, -0.888054,
		0.583287, 0.766033, 0.270127,
		0.670597, -0.641801, 0.372010,
		37.696014, 37.851971, 31.121143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830479, 38.575165, 30.611336>,  <37.226597, 38.301231, 30.860737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830479, 38.575165, 30.611336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905773, 38.191730, 30.696831>,  <37.950951, 37.961670, 30.748127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905773, 38.191730, 30.696831>,  <37.830479, 38.575165, 30.611336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905773, 38.191730, 30.696831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510836, -0.090309, -0.854922,
		0.838816, 0.270114, 0.472679,
		0.188239, -0.958584, 0.213737,
		37.962246, 37.904156, 30.760952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495564, 38.469696, 30.368811>,  <37.830479, 38.575165, 30.611336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495564, 38.469696, 30.368811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350849, 38.098343, 30.402786>,  <38.264019, 37.875530, 30.423172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350849, 38.098343, 30.402786>,  <38.495564, 38.469696, 30.368811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350849, 38.098343, 30.402786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442568, -0.251228, -0.860824,
		0.820513, -0.273846, 0.501764,
		-0.361790, -0.928382, 0.084940,
		38.242313, 37.819828, 30.428268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943775, 38.079372, 29.969902>,  <38.495564, 38.469696, 30.368811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943775, 38.079372, 29.969902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645737, 37.814037, 29.997658>,  <38.466915, 37.654835, 30.014311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.645737, 37.814037, 29.997658>,  <38.943775, 38.079372, 29.969902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645737, 37.814037, 29.997658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219416, -0.342039, -0.913710,
		0.629837, -0.665572, 0.400398,
		-0.745092, -0.663342, 0.069391,
		38.422211, 37.615036, 30.018475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238354, 37.438862, 29.737431>,  <38.943775, 38.079372, 29.969902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238354, 37.438862, 29.737431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842850, 37.410160, 29.684971>,  <38.605545, 37.392941, 29.653496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842850, 37.410160, 29.684971>,  <39.238354, 37.438862, 29.737431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842850, 37.410160, 29.684971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149422, -0.447141, -0.881895,
		0.004640, -0.891581, 0.452838,
		-0.988763, -0.071755, -0.131147,
		38.546223, 37.388634, 29.645626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150829, 36.921505, 29.304716>,  <39.238354, 37.438862, 29.737431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150829, 36.921505, 29.304716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767311, 37.029182, 29.268383>,  <38.537201, 37.093788, 29.246584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767311, 37.029182, 29.268383>,  <39.150829, 36.921505, 29.304716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767311, 37.029182, 29.268383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047103, -0.465905, -0.883580,
		-0.280173, -0.842892, 0.459386,
		-0.958793, 0.269194, -0.090831,
		38.479671, 37.109940, 29.241133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935631, 36.419998, 28.990206>,  <39.150829, 36.921505, 29.304716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935631, 36.419998, 28.990206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673981, 36.709618, 28.902691>,  <38.516991, 36.883389, 28.850182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673981, 36.709618, 28.902691>,  <38.935631, 36.419998, 28.990206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673981, 36.709618, 28.902691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039385, -0.321465, -0.946102,
		-0.755357, -0.610256, 0.238797,
		-0.654129, 0.724050, -0.218786,
		38.477741, 36.926834, 28.837055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368439, 36.029396, 28.788832>,  <38.935631, 36.419998, 28.990206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368439, 36.029396, 28.788832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370850, 36.396748, 28.630566>,  <38.372295, 36.617157, 28.535606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370850, 36.396748, 28.630566>,  <38.368439, 36.029396, 28.788832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370850, 36.396748, 28.630566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106073, -0.392854, -0.913462,
		-0.994340, 0.047479, 0.095045,
		0.006032, 0.918374, -0.395667,
		38.372658, 36.672260, 28.511866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851494, 35.989086, 28.431377>,  <38.368439, 36.029396, 28.788832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851494, 35.989086, 28.431377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035374, 36.308960, 28.276882>,  <38.145702, 36.500885, 28.184185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035374, 36.308960, 28.276882>,  <37.851494, 35.989086, 28.431377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035374, 36.308960, 28.276882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010179, -0.430141, -0.902704,
		-0.888015, 0.418907, -0.189596,
		0.459702, 0.799685, -0.386236,
		38.173283, 36.548866, 28.161011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470871, 36.169495, 27.867504>,  <37.851494, 35.989086, 28.431377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470871, 36.169495, 27.867504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835110, 36.323856, 27.808331>,  <38.053654, 36.416473, 27.772827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.835110, 36.323856, 27.808331>,  <37.470871, 36.169495, 27.867504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835110, 36.323856, 27.808331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057157, -0.472095, -0.879692,
		-0.409317, 0.792593, -0.451948,
		0.910600, 0.385905, -0.147934,
		38.108292, 36.439629, 27.763950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493366, 36.211277, 27.186188>,  <37.470871, 36.169495, 27.867504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493366, 36.211277, 27.186188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879803, 36.233887, 27.286964>,  <38.111664, 36.247452, 27.347431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879803, 36.233887, 27.286964>,  <37.493366, 36.211277, 27.186188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879803, 36.233887, 27.286964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256501, -0.321990, -0.911334,
		0.029614, 0.945055, -0.325569,
		0.966090, 0.056521, 0.251943,
		38.169628, 36.250843, 27.362547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866062, 36.550976, 26.610331>,  <37.493366, 36.211277, 27.186188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866062, 36.550976, 26.610331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111225, 36.313225, 26.818584>,  <38.258324, 36.170574, 26.943537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111225, 36.313225, 26.818584>,  <37.866062, 36.550976, 26.610331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111225, 36.313225, 26.818584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225394, -0.500009, -0.836175,
		0.757327, 0.629844, -0.172489,
		0.612906, -0.594379, 0.520634,
		38.295097, 36.134911, 26.974775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529079, 36.540710, 26.246342>,  <37.866062, 36.550976, 26.610331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529079, 36.540710, 26.246342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515213, 36.222786, 26.488689>,  <38.506893, 36.032032, 26.634098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515213, 36.222786, 26.488689>,  <38.529079, 36.540710, 26.246342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515213, 36.222786, 26.488689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355135, -0.576465, -0.735913,
		0.934172, 0.189653, 0.302249,
		-0.034668, -0.794809, 0.605869,
		38.504814, 35.984344, 26.670450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094067, 36.124039, 26.009111>,  <38.529079, 36.540710, 26.246342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094067, 36.124039, 26.009111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904449, 35.861721, 26.244129>,  <38.790680, 35.704330, 26.385139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904449, 35.861721, 26.244129>,  <39.094067, 36.124039, 26.009111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904449, 35.861721, 26.244129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297995, -0.747401, -0.593793,
		0.828541, -0.106399, 0.549727,
		-0.474045, -0.655798, 0.587546,
		38.762238, 35.664982, 26.420393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618610, 35.588364, 26.186060>,  <39.094067, 36.124039, 26.009111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618610, 35.588364, 26.186060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250740, 35.432304, 26.203850>,  <39.030018, 35.338669, 26.214523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250740, 35.432304, 26.203850>,  <39.618610, 35.588364, 26.186060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250740, 35.432304, 26.203850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307175, -0.785349, -0.537467,
		0.244624, -0.480633, 0.842111,
		-0.919675, -0.390153, 0.044477,
		38.974838, 35.315258, 26.217194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686848, 34.855484, 26.396229>,  <39.618610, 35.588364, 26.186060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686848, 34.855484, 26.396229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319817, 34.880280, 26.239147>,  <39.099598, 34.895157, 26.144897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319817, 34.880280, 26.239147>,  <39.686848, 34.855484, 26.396229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319817, 34.880280, 26.239147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196480, -0.788010, -0.583468,
		-0.345621, -0.612534, 0.710879,
		-0.917574, 0.061985, -0.392704,
		39.044544, 34.898876, 26.121336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312050, 34.062016, 26.407471>,  <39.686848, 34.855484, 26.396229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312050, 34.062016, 26.407471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119232, 34.289577, 26.140945>,  <39.003540, 34.426117, 25.981030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.119232, 34.289577, 26.140945>,  <39.312050, 34.062016, 26.407471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119232, 34.289577, 26.140945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164212, -0.688365, -0.706533,
		-0.860619, -0.449999, 0.238403,
		-0.482047, 0.568907, -0.666315,
		38.974617, 34.460251, 25.941051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811756, 33.659134, 26.128437>,  <39.312050, 34.062016, 26.407471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811756, 33.659134, 26.128437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862934, 33.940941, 25.849213>,  <38.893639, 34.110023, 25.681677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862934, 33.940941, 25.849213>,  <38.811756, 33.659134, 26.128437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862934, 33.940941, 25.849213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123255, -0.709684, -0.693654,
		-0.984093, 0.002707, -0.177632,
		0.127941, 0.704515, -0.698062,
		38.901318, 34.152294, 25.639793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399071, 33.454163, 25.581112>,  <38.811756, 33.659134, 26.128437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399071, 33.454163, 25.581112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666573, 33.699642, 25.413235>,  <38.827072, 33.846931, 25.312508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.666573, 33.699642, 25.413235>,  <38.399071, 33.454163, 25.581112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666573, 33.699642, 25.413235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070628, -0.509502, -0.857566,
		-0.740125, 0.603140, -0.297385,
		0.668750, 0.613703, -0.419693,
		38.867199, 33.883755, 25.287327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081223, 33.651905, 24.946098>,  <38.399071, 33.454163, 25.581112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081223, 33.651905, 24.946098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473255, 33.725769, 24.916885>,  <38.708477, 33.770088, 24.899357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473255, 33.725769, 24.916885>,  <38.081223, 33.651905, 24.946098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473255, 33.725769, 24.916885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018830, -0.452541, -0.891545,
		-0.197686, 0.872414, -0.447006,
		0.980085, 0.184663, -0.073034,
		38.767281, 33.781166, 24.894976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207603, 33.847137, 24.310993>,  <38.081223, 33.651905, 24.946098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207603, 33.847137, 24.310993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525490, 33.669170, 24.476151>,  <38.716221, 33.562389, 24.575245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525490, 33.669170, 24.476151>,  <38.207603, 33.847137, 24.310993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525490, 33.669170, 24.476151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106023, -0.568024, -0.816155,
		0.597656, 0.692383, -0.404243,
		0.794711, -0.444921, 0.412891,
		38.763905, 33.535694, 24.600018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442783, 33.723709, 24.491974>,  <38.207603, 33.847137, 24.310993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442783, 33.723709, 24.491974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156044, 33.458576, 24.578495>,  <36.984001, 33.299496, 24.630407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156044, 33.458576, 24.578495>,  <37.442783, 33.723709, 24.491974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156044, 33.458576, 24.578495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355915, 0.081112, -0.930992,
		0.599543, -0.744366, -0.294055,
		-0.716849, -0.662828, 0.216300,
		36.940990, 33.259727, 24.643385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376076, 33.289070, 23.940733>,  <37.442783, 33.723709, 24.491974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376076, 33.289070, 23.940733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016682, 33.302269, 24.115837>,  <36.801044, 33.310188, 24.220900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016682, 33.302269, 24.115837>,  <37.376076, 33.289070, 23.940733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016682, 33.302269, 24.115837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389943, 0.398070, -0.830352,
		-0.201658, -0.916761, -0.344793,
		-0.898487, 0.032998, 0.437758,
		36.747135, 33.312168, 24.247164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648224, 33.416943, 23.616173>,  <37.376076, 33.289070, 23.940733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648224, 33.416943, 23.616173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545185, 33.759792, 23.794601>,  <36.483360, 33.965504, 23.901659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545185, 33.759792, 23.794601>,  <36.648224, 33.416943, 23.616173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545185, 33.759792, 23.794601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538326, 0.256061, -0.802894,
		-0.802402, -0.446955, 0.395453,
		-0.257597, 0.857126, 0.446071,
		36.467907, 34.016930, 23.928423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055481, 33.706059, 23.319727>,  <36.648224, 33.416943, 23.616173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055481, 33.706059, 23.319727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178864, 34.026657, 23.524651>,  <36.252892, 34.219017, 23.647606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178864, 34.026657, 23.524651>,  <36.055481, 33.706059, 23.319727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178864, 34.026657, 23.524651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487448, 0.595667, -0.638416,
		-0.816853, -0.052802, 0.574424,
		0.308456, 0.801494, 0.512311,
		36.271400, 34.267105, 23.678343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458755, 34.141285, 23.660069>,  <36.055481, 33.706059, 23.319727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458755, 34.141285, 23.660069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792847, 34.351814, 23.596344>,  <35.993301, 34.478130, 23.558109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792847, 34.351814, 23.596344>,  <35.458755, 34.141285, 23.660069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792847, 34.351814, 23.596344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483566, 0.565032, -0.668508,
		-0.261835, 0.635393, 0.726442,
		0.835229, 0.526321, -0.159309,
		36.043415, 34.509712, 23.548552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252712, 34.880775, 23.607491>,  <35.458755, 34.141285, 23.660069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252712, 34.880775, 23.607491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586407, 34.804394, 23.400578>,  <35.786625, 34.758564, 23.276430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586407, 34.804394, 23.400578>,  <35.252712, 34.880775, 23.607491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586407, 34.804394, 23.400578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312119, 0.609826, -0.728487,
		0.454562, 0.769186, 0.449139,
		0.834239, -0.190957, -0.517281,
		35.836678, 34.747105, 23.245394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642670, 34.938122, 24.141500>,  <35.252712, 34.880775, 23.607491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642670, 34.938122, 24.141500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259247, 34.953506, 24.254414>,  <34.029194, 34.962738, 24.322161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259247, 34.953506, 24.254414>,  <34.642670, 34.938122, 24.141500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259247, 34.953506, 24.254414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161911, -0.888811, -0.428719,
		0.234408, -0.456658, 0.858206,
		-0.958560, 0.038458, 0.282282,
		33.971680, 34.965042, 24.339098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600983, 34.356522, 24.496639>,  <34.642670, 34.938122, 24.141500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600983, 34.356522, 24.496639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224178, 34.450104, 24.400406>,  <33.998096, 34.506252, 24.342667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224178, 34.450104, 24.400406>,  <34.600983, 34.356522, 24.496639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224178, 34.450104, 24.400406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142386, -0.927829, -0.344759,
		-0.303877, -0.290512, 0.907338,
		-0.942011, 0.233957, -0.240581,
		33.941574, 34.520290, 24.328232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157368, 33.955421, 24.921587>,  <34.600983, 34.356522, 24.496639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157368, 33.955421, 24.921587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918205, 34.047665, 24.614517>,  <33.774708, 34.103012, 24.430275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918205, 34.047665, 24.614517>,  <34.157368, 33.955421, 24.921587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918205, 34.047665, 24.614517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368029, -0.929786, 0.007336,
		-0.712081, 0.286913, 0.640798,
		-0.597910, 0.230608, -0.767674,
		33.738831, 34.116848, 24.384214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639748, 33.588673, 25.001593>,  <34.157368, 33.955421, 24.921587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639748, 33.588673, 25.001593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595406, 33.696205, 24.618877>,  <33.568802, 33.760723, 24.389248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595406, 33.696205, 24.618877>,  <33.639748, 33.588673, 25.001593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595406, 33.696205, 24.618877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407913, -0.890199, -0.202860,
		-0.906266, 0.367798, 0.208342,
		-0.110854, 0.268831, -0.956787,
		33.562149, 33.776855, 24.331841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115566, 33.144623, 24.725954>,  <33.639748, 33.588673, 25.001593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115566, 33.144623, 24.725954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244770, 33.278881, 24.372002>,  <33.322292, 33.359436, 24.159630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.244770, 33.278881, 24.372002>,  <33.115566, 33.144623, 24.725954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244770, 33.278881, 24.372002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045106, -0.928476, -0.368644,
		-0.945321, 0.158989, -0.284765,
		0.323008, 0.335642, -0.884879,
		33.341671, 33.379574, 24.106539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625481, 32.924744, 24.201300>,  <33.115566, 33.144623, 24.725954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625481, 32.924744, 24.201300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991264, 32.976524, 24.047935>,  <33.210735, 33.007595, 23.955917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991264, 32.976524, 24.047935>,  <32.625481, 32.924744, 24.201300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991264, 32.976524, 24.047935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000620, -0.947899, -0.318570,
		-0.404677, 0.291082, -0.866895,
		0.914460, 0.129456, -0.383412,
		33.265602, 33.015362, 23.932911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557140, 32.554337, 23.531044>,  <32.625481, 32.924744, 24.201300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557140, 32.554337, 23.531044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948673, 32.585670, 23.606682>,  <33.183594, 32.604469, 23.652065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948673, 32.585670, 23.606682>,  <32.557140, 32.554337, 23.531044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948673, 32.585670, 23.606682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141249, -0.927133, -0.347093,
		0.148127, 0.366454, -0.918569,
		0.978830, 0.078333, 0.189094,
		33.242321, 32.609169, 23.663410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852913, 32.414032, 22.913406>,  <32.557140, 32.554337, 23.531044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852913, 32.414032, 22.913406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134628, 32.339569, 23.187435>,  <33.303658, 32.294891, 23.351852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134628, 32.339569, 23.187435>,  <32.852913, 32.414032, 22.913406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134628, 32.339569, 23.187435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160167, -0.898457, -0.408805,
		0.691609, 0.397642, -0.602957,
		0.704289, -0.186159, 0.685070,
		33.345917, 32.283722, 23.392956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513210, 32.246155, 22.598946>,  <32.852913, 32.414032, 22.913406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513210, 32.246155, 22.598946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517986, 32.083878, 22.964520>,  <33.520851, 31.986511, 23.183863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517986, 32.083878, 22.964520>,  <33.513210, 32.246155, 22.598946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517986, 32.083878, 22.964520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209035, -0.892790, -0.399037,
		0.977835, 0.195809, 0.074142,
		0.011941, -0.405691, 0.913932,
		33.521568, 31.962170, 23.238699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037277, 31.686672, 22.620365>,  <33.513210, 32.246155, 22.598946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037277, 31.686672, 22.620365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831821, 31.580956, 22.946880>,  <33.708549, 31.517525, 23.142790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831821, 31.580956, 22.946880>,  <34.037277, 31.686672, 22.620365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831821, 31.580956, 22.946880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213492, -0.960822, -0.176754,
		0.831021, 0.083483, 0.549941,
		-0.513640, -0.264294, 0.816286,
		33.677731, 31.501667, 23.191767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279079, 31.013371, 22.573591>,  <34.037277, 31.686672, 22.620365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279079, 31.013371, 22.573591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025845, 31.003761, 22.883076>,  <33.873905, 30.997995, 23.068766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025845, 31.003761, 22.883076>,  <34.279079, 31.013371, 22.573591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025845, 31.003761, 22.883076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036313, -0.999339, -0.001318,
		0.773232, 0.027261, 0.633537,
		-0.633083, -0.024025, 0.773711,
		33.835918, 30.996553, 23.115189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638561, 30.670820, 23.070244>,  <34.279079, 31.013371, 22.573591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638561, 30.670820, 23.070244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242294, 30.657528, 23.123119>,  <34.004536, 30.649553, 23.154844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242294, 30.657528, 23.123119>,  <34.638561, 30.670820, 23.070244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242294, 30.657528, 23.123119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049867, -0.990953, 0.124603,
		0.126852, 0.130032, 0.983362,
		-0.990667, -0.033231, 0.132189,
		33.945095, 30.647558, 23.162775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651264, 30.205444, 23.628275>,  <34.638561, 30.670820, 23.070244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651264, 30.205444, 23.628275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292500, 30.225193, 23.452496>,  <34.077240, 30.237041, 23.347029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292500, 30.225193, 23.452496>,  <34.651264, 30.205444, 23.628275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292500, 30.225193, 23.452496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107963, -0.988124, 0.109336,
		-0.428830, 0.145508, 0.891589,
		-0.896911, 0.049372, -0.439447,
		34.023426, 30.240005, 23.320662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258907, 29.975693, 24.073698>,  <34.651264, 30.205444, 23.628275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258907, 29.975693, 24.073698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031731, 29.951450, 23.745365>,  <33.895424, 29.936905, 23.548365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031731, 29.951450, 23.745365>,  <34.258907, 29.975693, 24.073698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031731, 29.951450, 23.745365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113948, -0.981892, 0.151339,
		-0.815143, 0.179484, 0.550752,
		-0.567942, -0.060606, -0.820834,
		33.861347, 29.933268, 23.499115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600643, 29.705568, 24.287100>,  <34.258907, 29.975693, 24.073698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600643, 29.705568, 24.287100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622749, 29.638767, 23.893337>,  <33.636013, 29.598686, 23.657080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622749, 29.638767, 23.893337>,  <33.600643, 29.705568, 24.287100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622749, 29.638767, 23.893337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313996, -0.938800, 0.141639,
		-0.947815, 0.301273, -0.104318,
		0.055261, -0.167003, -0.984406,
		33.639328, 29.588667, 23.598015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019135, 29.249249, 24.228903>,  <33.600643, 29.705568, 24.287100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019135, 29.249249, 24.228903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225491, 29.201851, 23.889534>,  <33.349304, 29.173412, 23.685913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225491, 29.201851, 23.889534>,  <33.019135, 29.249249, 24.228903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225491, 29.201851, 23.889534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173365, -0.984336, 0.032063,
		-0.838930, 0.130546, -0.528350,
		0.515888, -0.118496, -0.848421,
		33.380257, 29.166302, 23.635008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687153, 28.719675, 23.669641>,  <33.019135, 29.249249, 24.228903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687153, 28.719675, 23.669641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082687, 28.729416, 23.610828>,  <33.320007, 28.735260, 23.575541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082687, 28.729416, 23.610828>,  <32.687153, 28.719675, 23.669641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082687, 28.729416, 23.610828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040592, -0.993270, 0.108477,
		-0.143402, -0.113233, -0.983165,
		0.988832, 0.024352, -0.147033,
		33.379337, 28.736721, 23.566719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847454, 28.130489, 23.197636>,  <32.687153, 28.719675, 23.669641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847454, 28.130489, 23.197636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205166, 28.218563, 23.353470>,  <33.419792, 28.271408, 23.446970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205166, 28.218563, 23.353470>,  <32.847454, 28.130489, 23.197636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205166, 28.218563, 23.353470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198981, -0.975432, 0.094541,
		0.400829, -0.007026, -0.916126,
		0.894283, 0.220187, 0.389584,
		33.473450, 28.284618, 23.470345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264175, 27.859217, 22.693653>,  <32.847454, 28.130489, 23.197636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264175, 27.859217, 22.693653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474869, 27.914322, 23.029171>,  <33.601284, 27.947386, 23.230482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474869, 27.914322, 23.029171>,  <33.264175, 27.859217, 22.693653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474869, 27.914322, 23.029171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366716, -0.927055, -0.078026,
		0.766858, 0.348698, -0.538831,
		0.526733, 0.137763, 0.838793,
		33.632889, 27.955650, 23.280809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857647, 27.524111, 22.646879>,  <33.264175, 27.859217, 22.693653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857647, 27.524111, 22.646879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863285, 27.573997, 23.043716>,  <33.866669, 27.603930, 23.281818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863285, 27.573997, 23.043716>,  <33.857647, 27.524111, 22.646879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863285, 27.573997, 23.043716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338467, -0.934213, 0.112633,
		0.940873, 0.334203, -0.055381,
		0.014095, 0.124718, 0.992092,
		33.867516, 27.611414, 23.341345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574463, 27.312887, 22.926846>,  <33.857647, 27.524111, 22.646879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574463, 27.312887, 22.926846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304787, 27.290852, 23.221443>,  <34.142979, 27.277630, 23.398203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304787, 27.290852, 23.221443>,  <34.574463, 27.312887, 22.926846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304787, 27.290852, 23.221443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250574, -0.955128, 0.157934,
		0.694748, 0.291025, 0.657746,
		-0.674195, -0.055090, 0.736496,
		34.102528, 27.274324, 23.442392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873444, 26.856230, 23.269485>,  <34.574463, 27.312887, 22.926846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873444, 26.856230, 23.269485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516922, 26.854256, 23.450836>,  <34.303009, 26.853071, 23.559647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.516922, 26.854256, 23.450836>,  <34.873444, 26.856230, 23.269485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516922, 26.854256, 23.450836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087714, -0.982927, 0.161741,
		0.444839, 0.183928, 0.876521,
		-0.891305, -0.004935, 0.453377,
		34.249531, 26.852776, 23.586849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948952, 26.580908, 23.954159>,  <34.873444, 26.856230, 23.269485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948952, 26.580908, 23.954159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569920, 26.514568, 23.844913>,  <34.342503, 26.474764, 23.779366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569920, 26.514568, 23.844913>,  <34.948952, 26.580908, 23.954159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569920, 26.514568, 23.844913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073675, -0.945120, 0.318310,
		-0.310918, 0.281501, 0.907793,
		-0.947577, -0.165849, -0.273115,
		34.285648, 26.464813, 23.762980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573364, 26.353952, 24.557474>,  <34.948952, 26.580908, 23.954159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573364, 26.353952, 24.557474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355438, 26.232315, 24.244884>,  <34.224682, 26.159332, 24.057331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355438, 26.232315, 24.244884>,  <34.573364, 26.353952, 24.557474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355438, 26.232315, 24.244884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057661, -0.916139, 0.396692,
		-0.836570, 0.261185, 0.481595,
		-0.544818, -0.304091, -0.781474,
		34.191994, 26.141088, 24.010443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075211, 25.962767, 24.856056>,  <34.573364, 26.353952, 24.557474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075211, 25.962767, 24.856056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052593, 25.851097, 24.472626>,  <34.039021, 25.784096, 24.242567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052593, 25.851097, 24.472626>,  <34.075211, 25.962767, 24.856056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052593, 25.851097, 24.472626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031948, -0.960124, 0.277742,
		-0.997889, -0.014919, 0.063212,
		-0.056548, -0.279175, -0.958574,
		34.035629, 25.767345, 24.185053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671707, 25.395872, 24.827679>,  <34.075211, 25.962767, 24.856056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671707, 25.395872, 24.827679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843960, 25.359905, 24.468464>,  <33.947311, 25.338326, 24.252935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843960, 25.359905, 24.468464>,  <33.671707, 25.395872, 24.827679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843960, 25.359905, 24.468464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063136, -0.995588, 0.069412,
		-0.900318, 0.026808, -0.434406,
		0.430629, -0.089919, -0.898039,
		33.973148, 25.332930, 24.199053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272228, 24.925798, 24.321213>,  <33.671707, 25.395872, 24.827679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.272228, 24.925798, 24.321213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650051, 24.937160, 24.190365>,  <33.876743, 24.943977, 24.111856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650051, 24.937160, 24.190365>,  <33.272228, 24.925798, 24.321213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650051, 24.937160, 24.190365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033362, -0.999398, 0.009556,
		-0.326652, -0.019940, -0.944934,
		0.944556, 0.028404, -0.327120,
		33.933418, 24.945683, 24.092228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297287, 24.504389, 23.767925>,  <33.272228, 24.925798, 24.321213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297287, 24.504389, 23.767925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683243, 24.529255, 23.869999>,  <33.914818, 24.544174, 23.931244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683243, 24.529255, 23.869999>,  <33.297287, 24.504389, 23.767925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683243, 24.529255, 23.869999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137180, -0.947815, -0.287800,
		0.223978, 0.312702, -0.923066,
		0.964891, 0.062166, 0.255187,
		33.972710, 24.547905, 23.946554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658527, 24.163364, 23.190844>,  <33.297287, 24.504389, 23.767925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658527, 24.163364, 23.190844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908802, 24.171947, 23.502754>,  <34.058968, 24.177097, 23.689899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908802, 24.171947, 23.502754>,  <33.658527, 24.163364, 23.190844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908802, 24.171947, 23.502754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201519, -0.970136, -0.135001,
		0.753592, 0.241609, -0.611330,
		0.625691, 0.021459, 0.779775,
		34.096508, 24.178385, 23.736687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164227, 23.826073, 22.875324>,  <33.658527, 24.163364, 23.190844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164227, 23.826073, 22.875324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219177, 23.795364, 23.270340>,  <34.252148, 23.776939, 23.507349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219177, 23.795364, 23.270340>,  <34.164227, 23.826073, 22.875324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219177, 23.795364, 23.270340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310014, -0.943570, -0.116479,
		0.940755, 0.322152, -0.105822,
		0.137375, -0.076772, 0.987539,
		34.260391, 23.772333, 23.566603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755371, 23.397291, 22.950577>,  <34.164227, 23.826073, 22.875324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755371, 23.397291, 22.950577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569683, 23.368031, 23.303654>,  <34.458271, 23.350473, 23.515501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569683, 23.368031, 23.303654>,  <34.755371, 23.397291, 22.950577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569683, 23.368031, 23.303654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221096, -0.974605, 0.035509,
		0.857681, 0.211644, 0.468604,
		-0.464219, -0.073151, 0.882694,
		34.430416, 23.346085, 23.568462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208366, 23.048191, 23.399662>,  <34.755371, 23.397291, 22.950577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208366, 23.048191, 23.399662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848366, 22.995247, 23.565781>,  <34.632366, 22.963480, 23.665451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848366, 22.995247, 23.565781>,  <35.208366, 23.048191, 23.399662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848366, 22.995247, 23.565781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116908, -0.991171, -0.062546,
		0.419908, -0.007740, 0.907534,
		-0.900006, -0.132361, 0.415296,
		34.578365, 22.955538, 23.690369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281029, 22.518957, 23.930950>,  <35.208366, 23.048191, 23.399662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281029, 22.518957, 23.930950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887669, 22.499550, 23.861012>,  <34.651653, 22.487906, 23.819048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887669, 22.499550, 23.861012>,  <35.281029, 22.518957, 23.930950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887669, 22.499550, 23.861012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048172, -0.998820, 0.006239,
		-0.174944, -0.002288, 0.984576,
		-0.983399, -0.048521, -0.174848,
		34.592648, 22.484993, 23.808558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079521, 22.025217, 24.412441>,  <35.281029, 22.518957, 23.930950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079521, 22.025217, 24.412441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772114, 22.054195, 24.158157>,  <34.587669, 22.071583, 24.005587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772114, 22.054195, 24.158157>,  <35.079521, 22.025217, 24.412441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772114, 22.054195, 24.158157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177036, -0.978855, 0.102476,
		-0.614842, 0.191298, 0.765097,
		-0.768523, 0.072444, -0.635708,
		34.541557, 22.075928, 23.967445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493206, 21.765738, 24.789587>,  <35.079521, 22.025217, 24.412441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493206, 21.765738, 24.789587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434849, 21.735455, 24.395027>,  <34.399834, 21.717285, 24.158291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434849, 21.735455, 24.395027>,  <34.493206, 21.765738, 24.789587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434849, 21.735455, 24.395027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273544, -0.955108, 0.113764,
		-0.950732, 0.286420, 0.118629,
		-0.145888, -0.075709, -0.986400,
		34.391083, 21.712742, 24.099108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687927, 21.535593, 24.593693>,  <34.493206, 21.765738, 24.789587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687927, 21.535593, 24.593693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935410, 21.432083, 24.296978>,  <34.083897, 21.369978, 24.118950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935410, 21.432083, 24.296978>,  <33.687927, 21.535593, 24.593693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935410, 21.432083, 24.296978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290311, -0.952672, 0.090201,
		-0.730019, 0.159541, -0.664545,
		0.618702, -0.258773, -0.741785,
		34.121021, 21.354450, 24.074442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267971, 21.124989, 24.123247>,  <33.687927, 21.535593, 24.593693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267971, 21.124989, 24.123247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643559, 21.018280, 24.036369>,  <33.868912, 20.954254, 23.984243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643559, 21.018280, 24.036369>,  <33.267971, 21.124989, 24.123247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643559, 21.018280, 24.036369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249762, -0.962830, 0.102846,
		-0.236556, -0.042322, -0.970696,
		0.938968, -0.266772, -0.217193,
		33.925247, 20.938248, 23.971212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163414, 20.410601, 23.959030>,  <33.267971, 21.124989, 24.123247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163414, 20.410601, 23.959030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561390, 20.439816, 23.986641>,  <33.800175, 20.457344, 24.003206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561390, 20.439816, 23.986641>,  <33.163414, 20.410601, 23.959030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561390, 20.439816, 23.986641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071471, -0.997132, 0.024875,
		0.070644, -0.019816, -0.997305,
		0.994938, 0.073035, 0.069025,
		33.859871, 20.461725, 24.007349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409527, 19.954443, 23.538399>,  <33.163414, 20.410601, 23.959030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409527, 19.954443, 23.538399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702908, 20.011162, 23.804314>,  <33.878937, 20.045193, 23.963861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702908, 20.011162, 23.804314>,  <33.409527, 19.954443, 23.538399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702908, 20.011162, 23.804314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161800, -0.986309, 0.031867,
		0.660202, 0.084190, -0.746355,
		0.733453, 0.141799, 0.664785,
		33.922943, 20.053701, 24.003750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976215, 19.702934, 23.297682>,  <33.409527, 19.954443, 23.538399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976215, 19.702934, 23.297682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011642, 19.686119, 23.695755>,  <34.032898, 19.676029, 23.934599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011642, 19.686119, 23.695755>,  <33.976215, 19.702934, 23.297682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011642, 19.686119, 23.695755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326156, -0.942805, -0.068853,
		0.941158, 0.330683, -0.069792,
		0.088568, -0.042038, 0.995183,
		34.038212, 19.673508, 23.994310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474564, 19.148952, 23.381683>,  <33.976215, 19.702934, 23.297682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474564, 19.148952, 23.381683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314167, 19.213535, 23.742378>,  <34.217930, 19.252285, 23.958796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314167, 19.213535, 23.742378>,  <34.474564, 19.148952, 23.381683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314167, 19.213535, 23.742378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228193, -0.935713, 0.269015,
		0.887203, 0.313645, 0.338374,
		-0.400996, 0.161457, 0.901739,
		34.193867, 19.261972, 24.012899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935432, 18.939356, 23.874741>,  <34.474564, 19.148952, 23.381683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935432, 18.939356, 23.874741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591145, 18.934467, 24.078312>,  <34.384571, 18.931534, 24.200455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591145, 18.934467, 24.078312>,  <34.935432, 18.939356, 23.874741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591145, 18.934467, 24.078312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293821, -0.828317, 0.477034,
		0.415722, 0.560127, 0.716542,
		-0.860723, -0.012222, 0.508926,
		34.332928, 18.930801, 24.230989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131557, 19.003710, 24.602547>,  <34.935432, 18.939356, 23.874741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131557, 19.003710, 24.602547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798851, 18.812218, 24.490128>,  <34.599228, 18.697323, 24.422676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798851, 18.812218, 24.490128>,  <35.131557, 19.003710, 24.602547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798851, 18.812218, 24.490128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338825, -0.838833, 0.426094,
		-0.439738, 0.259183, 0.859916,
		-0.831762, -0.478730, -0.281049,
		34.549324, 18.668598, 24.405813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971737, 18.618580, 25.180878>,  <35.131557, 19.003710, 24.602547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971737, 18.618580, 25.180878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823246, 18.444729, 24.852661>,  <34.734150, 18.340418, 24.655731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823246, 18.444729, 24.852661>,  <34.971737, 18.618580, 25.180878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823246, 18.444729, 24.852661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170807, -0.900574, 0.399740,
		-0.912695, 0.008243, 0.408558,
		-0.371231, -0.434626, -0.820541,
		34.711876, 18.314341, 24.606499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401222, 18.064026, 25.275646>,  <34.971737, 18.618580, 25.180878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401222, 18.064026, 25.275646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585159, 17.989799, 24.928288>,  <34.695522, 17.945265, 24.719872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585159, 17.989799, 24.928288>,  <34.401222, 18.064026, 25.275646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585159, 17.989799, 24.928288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098793, -0.961161, 0.257699,
		-0.882489, -0.204292, -0.423648,
		0.459840, -0.185564, -0.868397,
		34.723110, 17.934130, 24.667768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065994, 17.639072, 24.693108>,  <34.401222, 18.064026, 25.275646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065994, 17.639072, 24.693108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461281, 17.577873, 24.694481>,  <34.698452, 17.541153, 24.695305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461281, 17.577873, 24.694481>,  <34.065994, 17.639072, 24.693108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461281, 17.577873, 24.694481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151097, -0.971875, 0.180633,
		-0.024298, -0.179024, -0.983545,
		0.988220, -0.152999, 0.003435,
		34.757748, 17.531973, 24.695511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675320, 18.098989, 25.144533>,  <34.065994, 17.639072, 24.693108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675320, 18.098989, 25.144533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787838, 18.253609, 24.793205>,  <33.855350, 18.346380, 24.582409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787838, 18.253609, 24.793205>,  <33.675320, 18.098989, 25.144533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787838, 18.253609, 24.793205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611613, 0.777513, 0.146303,
		0.739459, 0.496037, 0.455134,
		0.281301, 0.386551, -0.878321,
		33.872227, 18.369574, 24.529709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094360, 18.202404, 24.864759>,  <33.675320, 18.098989, 25.144533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094360, 18.202404, 24.864759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712578, 18.262947, 24.761917>,  <32.483509, 18.299273, 24.700212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712578, 18.262947, 24.761917>,  <33.094360, 18.202404, 24.864759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712578, 18.262947, 24.761917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016361, 0.833910, 0.551657,
		0.297901, 0.530739, -0.793455,
		-0.954456, 0.151358, -0.257106,
		32.426239, 18.308355, 24.684786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951950, 17.723835, 25.440002>,  <33.094360, 18.202404, 24.864759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951950, 17.723835, 25.440002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142750, 17.853115, 25.766930>,  <33.257229, 17.930683, 25.963087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142750, 17.853115, 25.766930>,  <32.951950, 17.723835, 25.440002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142750, 17.853115, 25.766930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023357, -0.934266, 0.355811,
		0.878592, -0.150632, -0.453195,
		0.477002, 0.323198, 0.817320,
		33.285851, 17.950075, 26.012125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376968, 17.928705, 25.917698>,  <32.951950, 17.723835, 25.440002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376968, 17.928705, 25.917698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718723, 17.787086, 26.069839>,  <32.923779, 17.702116, 26.161123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718723, 17.787086, 26.069839>,  <32.376968, 17.928705, 25.917698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718723, 17.787086, 26.069839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096938, 0.827714, 0.552713,
		-0.510509, -0.435362, 0.741512,
		0.854391, -0.354046, 0.380352,
		32.975040, 17.680872, 26.183945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250427, 18.118217, 26.627192>,  <32.376968, 17.928705, 25.917698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250427, 18.118217, 26.627192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634834, 18.085625, 26.521515>,  <32.865479, 18.066069, 26.458109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634834, 18.085625, 26.521515>,  <32.250427, 18.118217, 26.627192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634834, 18.085625, 26.521515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170558, 0.926805, 0.334578,
		0.217592, -0.366597, 0.904578,
		0.961022, -0.081482, -0.264191,
		32.923141, 18.061180, 26.442257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775822, 18.308510, 27.241520>,  <32.250427, 18.118217, 26.627192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775822, 18.308510, 27.241520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921612, 18.363857, 26.873169>,  <33.009087, 18.397066, 26.652159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.921612, 18.363857, 26.873169>,  <32.775822, 18.308510, 27.241520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921612, 18.363857, 26.873169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066771, 0.990237, 0.122363,
		0.928816, 0.016889, 0.370155,
		0.364475, 0.138369, -0.920876,
		33.030952, 18.405369, 26.596907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147259, 18.900562, 27.530607>,  <32.775822, 18.308510, 27.241520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147259, 18.900562, 27.530607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096176, 18.911613, 27.134037>,  <33.065525, 18.918243, 26.896095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.096176, 18.911613, 27.134037>,  <33.147259, 18.900562, 27.530607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096176, 18.911613, 27.134037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098825, 0.994283, 0.040435,
		0.986876, 0.103142, -0.124247,
		-0.127707, 0.027626, -0.991427,
		33.057865, 18.919901, 26.836609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624664, 19.314337, 27.301989>,  <33.147259, 18.900562, 27.530607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624664, 19.314337, 27.301989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347874, 19.303520, 27.013424>,  <33.181801, 19.297031, 26.840284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347874, 19.303520, 27.013424>,  <33.624664, 19.314337, 27.301989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347874, 19.303520, 27.013424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097011, 0.993718, 0.055806,
		0.715373, 0.108601, -0.690252,
		-0.691976, -0.027040, -0.721414,
		33.140282, 19.295408, 26.796999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797062, 19.862801, 26.798744>,  <33.624664, 19.314337, 27.301989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797062, 19.862801, 26.798744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422287, 19.780190, 26.685970>,  <33.197422, 19.730623, 26.618305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422287, 19.780190, 26.685970>,  <33.797062, 19.862801, 26.798744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422287, 19.780190, 26.685970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204535, 0.978166, -0.036825,
		0.283384, 0.023162, -0.958727,
		-0.936941, -0.206529, -0.281934,
		33.141205, 19.718231, 26.601391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668373, 20.263157, 26.170223>,  <33.797062, 19.862801, 26.798744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668373, 20.263157, 26.170223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335537, 20.185734, 26.378132>,  <33.135834, 20.139280, 26.502876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335537, 20.185734, 26.378132>,  <33.668373, 20.263157, 26.170223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335537, 20.185734, 26.378132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250709, 0.967186, -0.041187,
		-0.494741, -0.164582, -0.853313,
		-0.832091, -0.193557, 0.519769,
		33.085911, 20.127666, 26.534063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421543, 20.843039, 26.298906>,  <33.668373, 20.263157, 26.170223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421543, 20.843039, 26.298906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115150, 20.665043, 26.484489>,  <32.931316, 20.558245, 26.595839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115150, 20.665043, 26.484489>,  <33.421543, 20.843039, 26.298906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115150, 20.665043, 26.484489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435229, 0.890114, 0.135174,
		-0.473125, -0.098387, -0.875484,
		-0.765982, -0.444990, 0.463956,
		32.885357, 20.531546, 26.623676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727665, 21.084455, 26.053118>,  <33.421543, 20.843039, 26.298906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727665, 21.084455, 26.053118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658020, 20.956852, 26.425766>,  <32.616234, 20.880289, 26.649355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.658020, 20.956852, 26.425766>,  <32.727665, 21.084455, 26.053118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.658020, 20.956852, 26.425766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607933, 0.779077, 0.153156,
		-0.774662, -0.539695, -0.329587,
		-0.174117, -0.319011, 0.931620,
		32.605785, 20.861149, 26.705252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075962, 20.983158, 26.049433>,  <32.727665, 21.084455, 26.053118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075962, 20.983158, 26.049433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204865, 21.042809, 26.423367>,  <32.282207, 21.078598, 26.647726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204865, 21.042809, 26.423367>,  <32.075962, 20.983158, 26.049433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204865, 21.042809, 26.423367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644729, 0.757657, 0.101389,
		-0.693163, -0.635388, 0.340305,
		0.322255, 0.149125, 0.934833,
		32.301540, 21.087545, 26.703817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.450836, 21.192373, 26.332516>,  <32.075962, 20.983158, 26.049433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.450836, 21.192373, 26.332516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719671, 21.288422, 26.612698>,  <31.880972, 21.346050, 26.780807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719671, 21.288422, 26.612698>,  <31.450836, 21.192373, 26.332516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719671, 21.288422, 26.612698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409101, 0.908891, 0.080958,
		-0.617197, -0.340967, 0.709090,
		0.672090, 0.240122, 0.700455,
		31.921299, 21.360458, 26.822834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052156, 21.470409, 26.959324>,  <31.450836, 21.192373, 26.332516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052156, 21.470409, 26.959324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431204, 21.598171, 26.959770>,  <31.658632, 21.674828, 26.960037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.431204, 21.598171, 26.959770>,  <31.052156, 21.470409, 26.959324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431204, 21.598171, 26.959770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316559, 0.938706, 0.136459,
		0.042539, -0.129664, 0.990645,
		0.947619, 0.319402, 0.001115,
		31.715490, 21.693993, 26.960104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936649, 22.105904, 27.259705>,  <31.052156, 21.470409, 26.959324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936649, 22.105904, 27.259705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316927, 22.137463, 27.139732>,  <31.545094, 22.156399, 27.067749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316927, 22.137463, 27.139732>,  <30.936649, 22.105904, 27.259705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316927, 22.137463, 27.139732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115336, 0.987680, -0.105763,
		0.287891, 0.135141, 0.948080,
		0.950692, 0.078900, -0.299931,
		31.602135, 22.161133, 27.049753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312399, 22.535351, 27.776928>,  <30.936649, 22.105904, 27.259705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312399, 22.535351, 27.776928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495106, 22.554176, 27.421593>,  <31.604731, 22.565472, 27.208391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495106, 22.554176, 27.421593>,  <31.312399, 22.535351, 27.776928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495106, 22.554176, 27.421593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010998, 0.998822, 0.047265,
		0.889517, -0.011819, 0.456748,
		0.456769, 0.047066, -0.888339,
		31.632135, 22.568296, 27.155090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879314, 23.020908, 27.828188>,  <31.312399, 22.535351, 27.776928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879314, 23.020908, 27.828188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804304, 23.016098, 27.435314>,  <31.759298, 23.013212, 27.199589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804304, 23.016098, 27.435314>,  <31.879314, 23.020908, 27.828188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804304, 23.016098, 27.435314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061760, 0.998091, -0.000428,
		0.980316, 0.060580, -0.187910,
		-0.187525, -0.012025, -0.982186,
		31.748047, 23.012491, 27.140657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224262, 23.585665, 27.700130>,  <31.879314, 23.020908, 27.828188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224262, 23.585665, 27.700130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026287, 23.502518, 27.362652>,  <31.907501, 23.452629, 27.160164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.026287, 23.502518, 27.362652>,  <32.224262, 23.585665, 27.700130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026287, 23.502518, 27.362652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039921, 0.975379, -0.216893,
		0.868008, -0.073668, -0.491055,
		-0.494943, -0.207868, -0.843696,
		31.877804, 23.440157, 27.109543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525215, 23.948978, 27.129738>,  <32.224262, 23.585665, 27.700130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525215, 23.948978, 27.129738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152912, 23.874119, 27.004097>,  <31.929529, 23.829203, 26.928713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152912, 23.874119, 27.004097>,  <32.525215, 23.948978, 27.129738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152912, 23.874119, 27.004097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163749, 0.981467, -0.099544,
		0.326912, -0.041218, -0.944155,
		-0.930760, -0.187147, -0.314104,
		31.873684, 23.817974, 26.909866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482483, 24.318333, 26.663286>,  <32.525215, 23.948978, 27.129738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482483, 24.318333, 26.663286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091732, 24.253723, 26.719311>,  <31.857281, 24.214958, 26.752926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091732, 24.253723, 26.719311>,  <32.482483, 24.318333, 26.663286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091732, 24.253723, 26.719311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186355, 0.964410, -0.187575,
		-0.104781, -0.209340, -0.972213,
		-0.976879, -0.161522, 0.140063,
		31.798668, 24.205267, 26.761330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077827, 24.341484, 26.016714>,  <32.482483, 24.318333, 26.663286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077827, 24.341484, 26.016714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818426, 24.417847, 26.311466>,  <31.662785, 24.463663, 26.488317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818426, 24.417847, 26.311466>,  <32.077827, 24.341484, 26.016714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818426, 24.417847, 26.311466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093899, 0.940585, -0.326316,
		-0.755395, -0.280811, -0.592051,
		-0.648507, 0.190905, 0.736881,
		31.623875, 24.475119, 26.532530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629679, 24.765125, 25.677155>,  <32.077827, 24.341484, 26.016714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629679, 24.765125, 25.677155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547583, 24.806732, 26.066422>,  <31.498325, 24.831697, 26.299982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547583, 24.806732, 26.066422>,  <31.629679, 24.765125, 25.677155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547583, 24.806732, 26.066422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473357, 0.859753, -0.191726,
		-0.856627, -0.500006, -0.127217,
		-0.205239, 0.104018, 0.973168,
		31.486012, 24.837938, 26.358372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951859, 25.005548, 25.616236>,  <31.629679, 24.765125, 25.677155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951859, 25.005548, 25.616236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119478, 25.113037, 25.963150>,  <31.220051, 25.177530, 26.171299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119478, 25.113037, 25.963150>,  <30.951859, 25.005548, 25.616236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119478, 25.113037, 25.963150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173549, 0.961294, -0.213996,
		-0.891223, -0.060842, 0.449466,
		0.419049, 0.268723, 0.867286,
		31.245193, 25.193653, 26.223335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550865, 25.543177, 25.848160>,  <30.951859, 25.005548, 25.616236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550865, 25.543177, 25.848160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886625, 25.591709, 26.060078>,  <31.088081, 25.620829, 26.187229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.886625, 25.591709, 26.060078>,  <30.550865, 25.543177, 25.848160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886625, 25.591709, 26.060078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004818, 0.973065, -0.230482,
		-0.543491, 0.196019, 0.816207,
		0.839401, 0.121332, 0.529797,
		31.138445, 25.628109, 26.219017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390175, 26.028929, 26.327925>,  <30.550865, 25.543177, 25.848160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390175, 26.028929, 26.327925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783646, 26.037312, 26.256439>,  <31.019728, 26.042341, 26.213547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783646, 26.037312, 26.256439>,  <30.390175, 26.028929, 26.327925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783646, 26.037312, 26.256439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047245, 0.988431, -0.144126,
		0.173627, 0.150217, 0.973287,
		0.983677, 0.020959, -0.178715,
		31.078749, 26.043600, 26.202826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661840, 26.594902, 26.755901>,  <30.390175, 26.028929, 26.327925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661840, 26.594902, 26.755901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948696, 26.539768, 26.482635>,  <31.120810, 26.506687, 26.318676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.948696, 26.539768, 26.482635>,  <30.661840, 26.594902, 26.755901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948696, 26.539768, 26.482635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029924, 0.973254, -0.227775,
		0.696285, 0.183789, 0.693835,
		0.717141, -0.137834, -0.683162,
		31.163839, 26.498419, 26.277687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137936, 27.139725, 26.780500>,  <30.661840, 26.594902, 26.755901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137936, 27.139725, 26.780500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225012, 26.992386, 26.418964>,  <31.277258, 26.903982, 26.202042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225012, 26.992386, 26.418964>,  <31.137936, 27.139725, 26.780500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225012, 26.992386, 26.418964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097959, 0.929621, -0.355259,
		0.971089, -0.011202, 0.238455,
		0.217693, -0.368347, -0.903842,
		31.290319, 26.881882, 26.147812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685364, 27.475779, 26.598526>,  <31.137936, 27.139725, 26.780500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685364, 27.475779, 26.598526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513142, 27.358467, 26.257092>,  <31.409807, 27.288080, 26.052231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513142, 27.358467, 26.257092>,  <31.685364, 27.475779, 26.598526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513142, 27.358467, 26.257092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180863, 0.898517, -0.399944,
		0.884254, -0.326582, -0.333824,
		-0.430561, -0.293275, -0.853584,
		31.383974, 27.270485, 26.001015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197556, 27.661150, 26.083178>,  <31.685364, 27.475779, 26.598526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197556, 27.661150, 26.083178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845591, 27.605164, 25.901558>,  <31.634411, 27.571571, 25.792587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845591, 27.605164, 25.901558>,  <32.197556, 27.661150, 26.083178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845591, 27.605164, 25.901558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076838, 0.901128, -0.426691,
		0.468876, -0.410340, -0.782161,
		-0.879915, -0.139966, -0.454047,
		31.581615, 27.563173, 25.765345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236279, 27.727148, 25.257772>,  <32.197556, 27.661150, 26.083178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236279, 27.727148, 25.257772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857016, 27.794704, 25.365456>,  <31.629457, 27.835238, 25.430065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857016, 27.794704, 25.365456>,  <32.236279, 27.727148, 25.257772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857016, 27.794704, 25.365456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011700, 0.865074, -0.501507,
		-0.317583, -0.472359, -0.822204,
		-0.948159, 0.168890, 0.269206,
		31.572569, 27.845371, 25.446217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943245, 28.004143, 24.666222>,  <32.236279, 27.727148, 25.257772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943245, 28.004143, 24.666222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691254, 28.128727, 24.950790>,  <31.540060, 28.203478, 25.121532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691254, 28.128727, 24.950790>,  <31.943245, 28.004143, 24.666222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691254, 28.128727, 24.950790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080601, 0.884888, -0.458778,
		-0.772421, -0.346361, -0.532354,
		-0.629976, 0.311462, 0.711423,
		31.502260, 28.222166, 25.164217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568806, 28.479813, 24.329697>,  <31.943245, 28.004143, 24.666222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568806, 28.479813, 24.329697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450521, 28.549427, 24.705414>,  <31.379551, 28.591196, 24.930843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450521, 28.549427, 24.705414>,  <31.568806, 28.479813, 24.329697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450521, 28.549427, 24.705414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293761, 0.919053, -0.262767,
		-0.908989, -0.353630, -0.220647,
		-0.295709, 0.174035, 0.939291,
		31.361809, 28.601637, 24.987202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888937, 28.794525, 24.259735>,  <31.568806, 28.479813, 24.329697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888937, 28.794525, 24.259735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034334, 28.889729, 24.620007>,  <31.121572, 28.946850, 24.836170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034334, 28.889729, 24.620007>,  <30.888937, 28.794525, 24.259735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034334, 28.889729, 24.620007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184180, 0.966090, -0.180964,
		-0.913210, -0.100109, 0.395002,
		0.363491, 0.238009, 0.900681,
		31.143381, 28.961132, 24.890211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405170, 29.273586, 24.508886>,  <30.888937, 28.794525, 24.259735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405170, 29.273586, 24.508886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749113, 29.310539, 24.709728>,  <30.955479, 29.332712, 24.830235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749113, 29.310539, 24.709728>,  <30.405170, 29.273586, 24.508886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749113, 29.310539, 24.709728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126467, 0.991382, 0.034168,
		-0.494622, -0.092880, 0.864131,
		0.859858, 0.092384, 0.502106,
		31.007071, 29.338255, 24.860359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401960, 29.943827, 24.702667>,  <30.405170, 29.273586, 24.508886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401960, 29.943827, 24.702667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783844, 29.888729, 24.808159>,  <31.012974, 29.855671, 24.871454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783844, 29.888729, 24.808159>,  <30.401960, 29.943827, 24.702667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783844, 29.888729, 24.808159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118569, 0.989095, 0.087369,
		-0.272887, -0.052142, 0.960632,
		0.954711, -0.137743, 0.263729,
		31.070257, 29.847406, 24.887278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476648, 30.189888, 25.415039>,  <30.401960, 29.943827, 24.702667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476648, 30.189888, 25.415039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814058, 30.211365, 25.201279>,  <31.016504, 30.224251, 25.073023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814058, 30.211365, 25.201279>,  <30.476648, 30.189888, 25.415039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814058, 30.211365, 25.201279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055831, 0.980835, 0.186668,
		0.534181, -0.187295, 0.824361,
		0.843524, 0.053690, -0.534401,
		31.067116, 30.227472, 25.040958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960138, 30.576111, 25.762890>,  <30.476648, 30.189888, 25.415039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960138, 30.576111, 25.762890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079742, 30.603462, 25.382172>,  <31.151505, 30.619873, 25.153740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.079742, 30.603462, 25.382172>,  <30.960138, 30.576111, 25.762890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079742, 30.603462, 25.382172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017822, 0.996855, 0.077213,
		0.954083, -0.040050, 0.296851,
		0.299010, 0.068377, -0.951797,
		31.169445, 30.623976, 25.096632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628420, 31.015375, 25.740202>,  <30.960138, 30.576111, 25.762890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628420, 31.015375, 25.740202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468830, 31.026714, 25.373592>,  <31.373077, 31.033518, 25.153627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468830, 31.026714, 25.373592>,  <31.628420, 31.015375, 25.740202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468830, 31.026714, 25.373592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131116, 0.991015, -0.026425,
		0.907540, -0.130714, -0.399104,
		-0.398972, 0.028347, -0.916525,
		31.349138, 31.035219, 25.098635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940557, 31.600571, 25.475140>,  <31.628420, 31.015375, 25.740202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940557, 31.600571, 25.475140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656666, 31.537136, 25.200584>,  <31.486330, 31.499075, 25.035851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656666, 31.537136, 25.200584>,  <31.940557, 31.600571, 25.475140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656666, 31.537136, 25.200584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064254, 0.984843, -0.161104,
		0.701536, -0.070238, -0.709164,
		-0.709731, -0.158587, -0.686390,
		31.443747, 31.489559, 24.994667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120178, 31.914093, 24.880915>,  <31.940557, 31.600571, 25.475140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120178, 31.914093, 24.880915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723743, 31.870239, 24.850624>,  <31.485884, 31.843927, 24.832451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723743, 31.870239, 24.850624>,  <32.120178, 31.914093, 24.880915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723743, 31.870239, 24.850624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109741, 0.993956, -0.002775,
		0.075572, 0.005560, -0.997125,
		-0.991083, -0.109635, -0.075725,
		31.426418, 31.837349, 24.827906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945932, 32.436966, 24.410864>,  <32.120178, 31.914093, 24.880915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945932, 32.436966, 24.410864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575436, 32.354748, 24.537247>,  <31.353138, 32.305416, 24.613077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575436, 32.354748, 24.537247>,  <31.945932, 32.436966, 24.410864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575436, 32.354748, 24.537247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214792, 0.976643, 0.005674,
		-0.309745, -0.062610, -0.948756,
		-0.926241, -0.205542, 0.315958,
		31.297564, 32.293083, 24.632034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478661, 32.888798, 24.054533>,  <31.945932, 32.436966, 24.410864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478661, 32.888798, 24.054533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325214, 32.774303, 24.405739>,  <31.233147, 32.705608, 24.616463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325214, 32.774303, 24.405739>,  <31.478661, 32.888798, 24.054533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325214, 32.774303, 24.405739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244706, 0.948274, 0.202226,
		-0.890483, -0.137279, -0.433814,
		-0.383613, -0.286236, 0.878015,
		31.210131, 32.688435, 24.669144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754845, 33.208321, 24.049185>,  <31.478661, 32.888798, 24.054533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754845, 33.208321, 24.049185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840368, 33.143684, 24.434551>,  <30.891682, 33.104904, 24.665771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.840368, 33.143684, 24.434551>,  <30.754845, 33.208321, 24.049185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840368, 33.143684, 24.434551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370887, 0.898951, 0.233088,
		-0.903731, -0.407155, 0.132271,
		0.213808, -0.161591, 0.963418,
		30.904510, 33.095207, 24.723577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172939, 33.499687, 24.419399>,  <30.754845, 33.208321, 24.049185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172939, 33.499687, 24.419399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443167, 33.463638, 24.712109>,  <30.605303, 33.442009, 24.887733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443167, 33.463638, 24.712109>,  <30.172939, 33.499687, 24.419399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443167, 33.463638, 24.712109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253844, 0.903395, 0.345603,
		-0.692223, -0.419233, 0.587427,
		0.675566, -0.090119, 0.731771,
		30.645836, 33.436604, 24.931641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798414, 33.765869, 24.999968>,  <30.172939, 33.499687, 24.419399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798414, 33.765869, 24.999968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189840, 33.786106, 25.079819>,  <30.424696, 33.798248, 25.127729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189840, 33.786106, 25.079819>,  <29.798414, 33.765869, 24.999968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189840, 33.786106, 25.079819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140847, 0.871615, 0.469520,
		-0.150244, -0.487572, 0.860058,
		0.978565, 0.050594, 0.199629,
		30.483410, 33.801285, 25.139708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.003506, 33.555286, 24.837885>,  <29.798414, 33.765869, 24.999968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.003506, 33.555286, 24.837885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786812, 33.474205, 24.511589>,  <28.656796, 33.425556, 24.315811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.786812, 33.474205, 24.511589>,  <29.003506, 33.555286, 24.837885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786812, 33.474205, 24.511589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496531, -0.705886, 0.505155,
		-0.678218, 0.678701, 0.281754,
		-0.541736, -0.202706, -0.815741,
		28.624290, 33.413395, 24.266867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291241, 33.518509, 25.064009>,  <29.003506, 33.555286, 24.837885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291241, 33.518509, 25.064009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308523, 33.306644, 24.725166>,  <28.318893, 33.179523, 24.521860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308523, 33.306644, 24.725166>,  <28.291241, 33.518509, 25.064009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308523, 33.306644, 24.725166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377343, -0.793745, 0.477055,
		-0.925065, 0.299038, -0.234159,
		0.043205, -0.529665, -0.847106,
		28.321486, 33.147743, 24.471035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.664118, 32.948097, 25.132591>,  <28.291241, 33.518509, 25.064009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.664118, 32.948097, 25.132591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881414, 32.834133, 24.816689>,  <28.011793, 32.765755, 24.627148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881414, 32.834133, 24.816689>,  <27.664118, 32.948097, 25.132591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881414, 32.834133, 24.816689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323623, -0.939029, 0.116160,
		-0.774698, 0.192481, -0.602324,
		0.543241, -0.284915, -0.789755,
		28.044386, 32.748657, 24.579762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212057, 32.620850, 24.586771>,  <27.664118, 32.948097, 25.132591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212057, 32.620850, 24.586771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589382, 32.492359, 24.553360>,  <27.815777, 32.415264, 24.533314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.589382, 32.492359, 24.553360>,  <27.212057, 32.620850, 24.586771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.589382, 32.492359, 24.553360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321211, -0.946904, 0.013976,
		-0.083584, 0.013647, -0.996407,
		0.943312, -0.321225, -0.083530,
		27.872375, 32.395992, 24.528301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.132162, 32.135864, 24.154022>,  <27.212057, 32.620850, 24.586771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.132162, 32.135864, 24.154022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494499, 32.065311, 24.308083>,  <27.711901, 32.022980, 24.400518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.494499, 32.065311, 24.308083>,  <27.132162, 32.135864, 24.154022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494499, 32.065311, 24.308083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227432, -0.969543, 0.090892,
		0.357386, -0.169929, -0.918367,
		0.905842, -0.176383, 0.385149,
		27.766253, 32.012398, 24.423628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392391, 31.499172, 23.905893>,  <27.132162, 32.135864, 24.154022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392391, 31.499172, 23.905893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600060, 31.545734, 24.244576>,  <27.724661, 31.573671, 24.447784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600060, 31.545734, 24.244576>,  <27.392391, 31.499172, 23.905893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600060, 31.545734, 24.244576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006790, -0.990089, 0.140280,
		0.854645, -0.078579, -0.513233,
		0.519169, 0.116405, 0.846707,
		27.755810, 31.580656, 24.498589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721306, 30.956879, 23.918377>,  <27.392391, 31.499172, 23.905893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721306, 30.956879, 23.918377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760550, 31.097122, 24.290924>,  <27.784096, 31.181269, 24.514452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760550, 31.097122, 24.290924>,  <27.721306, 30.956879, 23.918377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760550, 31.097122, 24.290924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086904, -0.935326, 0.342947,
		0.991374, 0.047294, -0.122231,
		0.098107, 0.350611, 0.931368,
		27.789982, 31.202305, 24.570335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352064, 30.720797, 24.271784>,  <27.721306, 30.956879, 23.918377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352064, 30.720797, 24.271784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154646, 30.832188, 24.601357>,  <28.036196, 30.899023, 24.799101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154646, 30.832188, 24.601357>,  <28.352064, 30.720797, 24.271784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154646, 30.832188, 24.601357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077604, -0.929473, 0.360635,
		0.866251, 0.241930, 0.437125,
		-0.493545, 0.278478, 0.823932,
		28.006582, 30.915731, 24.848536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758392, 30.445080, 24.823437>,  <28.352064, 30.720797, 24.271784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758392, 30.445080, 24.823437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386343, 30.528957, 24.944035>,  <28.163113, 30.579285, 25.016394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386343, 30.528957, 24.944035>,  <28.758392, 30.445080, 24.823437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386343, 30.528957, 24.944035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031313, -0.863249, 0.503805,
		0.365909, 0.459161, 0.809494,
		-0.930123, 0.209694, 0.301494,
		28.107306, 30.591866, 25.034483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766411, 30.089573, 25.338131>,  <28.758392, 30.445080, 24.823437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766411, 30.089573, 25.338131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373289, 30.158733, 25.312199>,  <28.137417, 30.200230, 25.296640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373289, 30.158733, 25.312199>,  <28.766411, 30.089573, 25.338131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373289, 30.158733, 25.312199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183952, -0.886069, 0.425492,
		0.016125, 0.430101, 0.902637,
		-0.982803, 0.172903, -0.064830,
		28.078447, 30.210604, 25.292749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457739, 29.805586, 25.955311>,  <28.766411, 30.089573, 25.338131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457739, 29.805586, 25.955311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126915, 29.823586, 25.731186>,  <27.928421, 29.834385, 25.596710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126915, 29.823586, 25.731186>,  <28.457739, 29.805586, 25.955311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126915, 29.823586, 25.731186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160461, -0.974216, 0.158608,
		-0.538727, 0.221086, 0.812954,
		-0.827059, 0.045001, -0.560311,
		27.878798, 29.837086, 25.563093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824602, 29.623857, 26.382566>,  <28.457739, 29.805586, 25.955311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824602, 29.623857, 26.382566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803820, 29.553280, 25.989391>,  <27.791351, 29.510933, 25.753487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803820, 29.553280, 25.989391>,  <27.824602, 29.623857, 26.382566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803820, 29.553280, 25.989391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131767, -0.974451, 0.181887,
		-0.989918, 0.138969, 0.027377,
		-0.051954, -0.176446, -0.982938,
		27.788233, 29.500345, 25.694510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474024, 29.082806, 26.367205>,  <27.824602, 29.623857, 26.382566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474024, 29.082806, 26.367205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587475, 29.053047, 25.984787>,  <27.655546, 29.035192, 25.755337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587475, 29.053047, 25.984787>,  <27.474024, 29.082806, 26.367205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587475, 29.053047, 25.984787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017721, -0.997222, 0.072345,
		-0.958770, -0.003577, -0.284160,
		0.283629, -0.074397, -0.956043,
		27.672564, 29.030727, 25.697973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150955, 28.411278, 26.188580>,  <27.474024, 29.082806, 26.367205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150955, 28.411278, 26.188580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408102, 28.496605, 25.894310>,  <27.562391, 28.547802, 25.717749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408102, 28.496605, 25.894310>,  <27.150955, 28.411278, 26.188580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408102, 28.496605, 25.894310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099927, -0.975586, -0.195565,
		-0.759430, 0.052210, -0.648491,
		0.642869, 0.213320, -0.735672,
		27.600964, 28.560600, 25.673609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991287, 27.991213, 25.664116>,  <27.150955, 28.411278, 26.188580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991287, 27.991213, 25.664116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370371, 28.093693, 25.588001>,  <27.597820, 28.155182, 25.542332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370371, 28.093693, 25.588001>,  <26.991287, 27.991213, 25.664116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370371, 28.093693, 25.588001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263190, -0.964670, 0.011973,
		-0.180498, -0.061429, -0.981655,
		0.947708, 0.256201, -0.190289,
		27.654684, 28.170553, 25.530914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272943, 27.465740, 25.246933>,  <26.991287, 27.991213, 25.664116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272943, 27.465740, 25.246933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583082, 27.651367, 25.418270>,  <27.769165, 27.762743, 25.521072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.583082, 27.651367, 25.418270>,  <27.272943, 27.465740, 25.246933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583082, 27.651367, 25.418270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440600, -0.883410, 0.159557,
		0.452447, 0.065016, -0.889418,
		0.775347, 0.464069, 0.428342,
		27.815687, 27.790588, 25.546772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922850, 27.210962, 24.971912>,  <27.272943, 27.465740, 25.246933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922850, 27.210962, 24.971912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012163, 27.370003, 25.327904>,  <28.065750, 27.465427, 25.541498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012163, 27.370003, 25.327904>,  <27.922850, 27.210962, 24.971912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012163, 27.370003, 25.327904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399693, -0.870085, 0.288439,
		0.889039, 0.291314, -0.353193,
		0.223282, 0.397602, 0.889976,
		28.079147, 27.489283, 25.594896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576212, 27.124540, 24.977396>,  <27.922850, 27.210962, 24.971912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576212, 27.124540, 24.977396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486830, 27.162731, 25.365406>,  <28.433201, 27.185646, 25.598213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486830, 27.162731, 25.365406>,  <28.576212, 27.124540, 24.977396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486830, 27.162731, 25.365406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461871, -0.865997, 0.191634,
		0.858338, 0.490849, 0.149412,
		-0.223454, 0.095478, 0.970027,
		28.419794, 27.191374, 25.656414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128937, 26.945045, 25.352362>,  <28.576212, 27.124540, 24.977396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128937, 26.945045, 25.352362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855223, 26.897541, 25.640152>,  <28.690994, 26.869038, 25.812826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855223, 26.897541, 25.640152>,  <29.128937, 26.945045, 25.352362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855223, 26.897541, 25.640152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496751, -0.798228, 0.340691,
		0.533845, 0.590532, 0.605212,
		-0.684286, -0.118763, 0.719477,
		28.649937, 26.861912, 25.855995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492182, 26.910673, 26.039490>,  <29.128937, 26.945045, 25.352362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492182, 26.910673, 26.039490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138649, 26.724434, 26.021358>,  <28.926529, 26.612690, 26.010479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138649, 26.724434, 26.021358>,  <29.492182, 26.910673, 26.039490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138649, 26.724434, 26.021358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446782, -0.868867, 0.213204,
		-0.138652, 0.168185, 0.975956,
		-0.883833, -0.465600, -0.045328,
		28.873499, 26.584753, 26.007759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499498, 26.372738, 26.582716>,  <29.492182, 26.910673, 26.039490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499498, 26.372738, 26.582716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159256, 26.239361, 26.420094>,  <28.955111, 26.159334, 26.322519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159256, 26.239361, 26.420094>,  <29.499498, 26.372738, 26.582716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159256, 26.239361, 26.420094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277482, -0.941435, 0.191581,
		-0.446628, 0.050147, 0.893313,
		-0.850604, -0.333444, -0.406556,
		28.904076, 26.139328, 26.298126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194633, 25.885139, 27.020380>,  <29.499498, 26.372738, 26.582716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194633, 25.885139, 27.020380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015070, 25.764835, 26.683804>,  <28.907331, 25.692654, 26.481857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015070, 25.764835, 26.683804>,  <29.194633, 25.885139, 27.020380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015070, 25.764835, 26.683804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175222, -0.953002, 0.247154,
		-0.876230, -0.036490, 0.480509,
		-0.448908, -0.300759, -0.841443,
		28.880398, 25.674608, 26.431372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.751493, 25.421112, 27.197453>,  <29.194633, 25.885139, 27.020380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.751493, 25.421112, 27.197453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817572, 25.340576, 26.811256>,  <28.857220, 25.292255, 26.579538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817572, 25.340576, 26.811256>,  <28.751493, 25.421112, 27.197453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817572, 25.340576, 26.811256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126048, -0.966603, 0.223139,
		-0.978173, -0.158560, -0.134300,
		0.165196, -0.201340, -0.965491,
		28.867130, 25.280174, 26.521608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467995, 24.784914, 27.224977>,  <28.751493, 25.421112, 27.197453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467995, 24.784914, 27.224977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658247, 24.792767, 26.873207>,  <28.772398, 24.797478, 26.662146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658247, 24.792767, 26.873207>,  <28.467995, 24.784914, 27.224977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658247, 24.792767, 26.873207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041508, -0.999138, 0.000146,
		-0.878664, -0.036573, -0.476037,
		0.475632, 0.019631, -0.879425,
		28.800936, 24.798656, 26.609379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212540, 24.240442, 26.883390>,  <28.467995, 24.784914, 27.224977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212540, 24.240442, 26.883390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552387, 24.294952, 26.679596>,  <28.756296, 24.327658, 26.557320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552387, 24.294952, 26.679596>,  <28.212540, 24.240442, 26.883390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552387, 24.294952, 26.679596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035251, -0.978554, -0.202954,
		-0.526215, 0.154474, -0.836203,
		0.849620, 0.136274, -0.509484,
		28.807274, 24.335835, 26.526751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178680, 23.769039, 26.245474>,  <28.212540, 24.240442, 26.883390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178680, 23.769039, 26.245474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564030, 23.847622, 26.318481>,  <28.795240, 23.894772, 26.362286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.564030, 23.847622, 26.318481>,  <28.178680, 23.769039, 26.245474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.564030, 23.847622, 26.318481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231020, -0.953635, -0.192902,
		0.136161, 0.228003, -0.964093,
		0.963374, 0.196459, 0.182521,
		28.853043, 23.906559, 26.373238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500620, 23.572128, 25.640078>,  <28.178680, 23.769039, 26.245474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500620, 23.572128, 25.640078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779337, 23.611393, 25.924286>,  <28.946568, 23.634951, 26.094810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779337, 23.611393, 25.924286>,  <28.500620, 23.572128, 25.640078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779337, 23.611393, 25.924286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325048, -0.926249, -0.190805,
		0.639392, 0.363905, -0.677312,
		0.696794, 0.098160, 0.710523,
		28.988375, 23.640841, 26.137444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088947, 23.394735, 25.291380>,  <28.500620, 23.572128, 25.640078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088947, 23.394735, 25.291380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152193, 23.347031, 25.683456>,  <29.190140, 23.318407, 25.918703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152193, 23.347031, 25.683456>,  <29.088947, 23.394735, 25.291380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152193, 23.347031, 25.683456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346741, -0.922755, -0.168206,
		0.924538, 0.366468, -0.104548,
		0.158114, -0.119262, 0.980192,
		29.199627, 23.311253, 25.977514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648073, 23.021290, 25.388586>,  <29.088947, 23.394735, 25.291380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648073, 23.021290, 25.388586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505142, 22.944641, 25.754230>,  <29.419384, 22.898651, 25.973618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505142, 22.944641, 25.754230>,  <29.648073, 23.021290, 25.388586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505142, 22.944641, 25.754230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360418, -0.931208, -0.054319,
		0.861636, 0.310052, 0.401811,
		-0.357328, -0.191623, 0.914110,
		29.397943, 22.887154, 26.028463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192049, 22.824455, 25.764200>,  <29.648073, 23.021290, 25.388586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192049, 22.824455, 25.764200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871492, 22.689903, 25.962036>,  <29.679159, 22.609171, 26.080738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871492, 22.689903, 25.962036>,  <30.192049, 22.824455, 25.764200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871492, 22.689903, 25.962036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418413, -0.906161, 0.061661,
		0.427438, 0.256358, 0.866935,
		-0.801391, -0.336381, 0.494592,
		29.631075, 22.588989, 26.110415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485664, 22.348639, 26.224043>,  <30.192049, 22.824455, 25.764200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485664, 22.348639, 26.224043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097925, 22.252087, 26.205704>,  <29.865282, 22.194155, 26.194700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097925, 22.252087, 26.205704>,  <30.485664, 22.348639, 26.224043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097925, 22.252087, 26.205704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237215, -0.968054, 0.081247,
		-0.063992, 0.067882, 0.995639,
		-0.969347, -0.241380, -0.045846,
		29.807121, 22.179672, 26.191950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357956, 21.850317, 26.779293>,  <30.485664, 22.348639, 26.224043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357956, 21.850317, 26.779293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085924, 21.792782, 26.491737>,  <29.922705, 21.758261, 26.319204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085924, 21.792782, 26.491737>,  <30.357956, 21.850317, 26.779293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085924, 21.792782, 26.491737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194254, -0.980872, 0.012489,
		-0.706934, -0.131153, 0.695013,
		-0.680081, -0.143838, -0.718888,
		29.881901, 21.749630, 26.276072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943560, 21.208910, 26.990976>,  <30.357956, 21.850317, 26.779293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943560, 21.208910, 26.990976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872091, 21.231808, 26.598080>,  <29.829210, 21.245546, 26.362341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872091, 21.231808, 26.598080>,  <29.943560, 21.208910, 26.990976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872091, 21.231808, 26.598080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330439, -0.936831, -0.114706,
		-0.926762, -0.345066, 0.148467,
		-0.178669, 0.057246, -0.982242,
		29.818491, 21.248981, 26.303408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620672, 20.568674, 26.752892>,  <29.943560, 21.208910, 26.990976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620672, 20.568674, 26.752892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747599, 20.728214, 26.408745>,  <29.823753, 20.823938, 26.202257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.747599, 20.728214, 26.408745>,  <29.620672, 20.568674, 26.752892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747599, 20.728214, 26.408745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353399, -0.891637, -0.283008,
		-0.880012, -0.214250, -0.423882,
		0.317314, 0.398849, -0.860367,
		29.842793, 20.847870, 26.150635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288717, 20.232349, 26.302254>,  <29.620672, 20.568674, 26.752892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288717, 20.232349, 26.302254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606707, 20.380314, 26.109928>,  <29.797501, 20.469091, 25.994534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606707, 20.380314, 26.109928>,  <29.288717, 20.232349, 26.302254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606707, 20.380314, 26.109928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305056, -0.928843, -0.210220,
		-0.524361, 0.020445, -0.851250,
		0.794975, 0.369910, -0.480812,
		29.845200, 20.491287, 25.965685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.248560, 19.917561, 25.699972>,  <29.288717, 20.232349, 26.302254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.248560, 19.917561, 25.699972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627258, 20.033245, 25.756577>,  <29.854477, 20.102655, 25.790539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627258, 20.033245, 25.756577>,  <29.248560, 19.917561, 25.699972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627258, 20.033245, 25.756577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316157, -0.918217, -0.238584,
		0.060936, 0.270618, -0.960756,
		0.946748, 0.289212, 0.141510,
		29.911283, 20.120008, 25.799030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.598846, 19.581215, 25.157162>,  <29.248560, 19.917561, 25.699972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.598846, 19.581215, 25.157162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889990, 19.676949, 25.414204>,  <30.064676, 19.734388, 25.568428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889990, 19.676949, 25.414204>,  <29.598846, 19.581215, 25.157162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889990, 19.676949, 25.414204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439836, -0.881893, -0.169733,
		0.526086, 0.406183, -0.747161,
		0.727858, 0.239334, 0.642605,
		30.108347, 19.748749, 25.606985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238499, 19.373068, 24.803886>,  <29.598846, 19.581215, 25.157162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238499, 19.373068, 24.803886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316010, 19.393845, 25.195755>,  <30.362516, 19.406311, 25.430876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316010, 19.393845, 25.195755>,  <30.238499, 19.373068, 24.803886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316010, 19.393845, 25.195755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322843, -0.946354, -0.013683,
		0.926403, 0.318931, -0.200151,
		0.193777, 0.051941, 0.979670,
		30.374144, 19.409428, 25.489656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670673, 18.837051, 24.438692>,  <30.238499, 19.373068, 24.803886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670673, 18.837051, 24.438692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525192, 18.779659, 24.070534>,  <30.437904, 18.745224, 23.849638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525192, 18.779659, 24.070534>,  <30.670673, 18.837051, 24.438692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525192, 18.779659, 24.070534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012491, 0.987226, -0.158837,
		0.931431, -0.069267, -0.357265,
		-0.363704, -0.143483, -0.920398,
		30.416080, 18.736614, 23.794415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089647, 19.223440, 24.017700>,  <30.670673, 18.837051, 24.438692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089647, 19.223440, 24.017700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747234, 19.186909, 23.814182>,  <30.541786, 19.164989, 23.692072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747234, 19.186909, 23.814182>,  <31.089647, 19.223440, 24.017700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747234, 19.186909, 23.814182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007929, 0.981834, -0.189577,
		0.516863, -0.166318, -0.839756,
		-0.856031, -0.091327, -0.508792,
		30.490425, 19.159510, 23.661545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253410, 19.568623, 23.455175>,  <31.089647, 19.223440, 24.017700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253410, 19.568623, 23.455175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856367, 19.563370, 23.503441>,  <30.618141, 19.560219, 23.532400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.856367, 19.563370, 23.503441>,  <31.253410, 19.568623, 23.455175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856367, 19.563370, 23.503441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025759, 0.994276, -0.103691,
		-0.118613, -0.106033, -0.987263,
		-0.992606, -0.013132, 0.120666,
		30.558586, 19.559431, 23.539640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917000, 19.900091, 22.851610>,  <31.253410, 19.568623, 23.455175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917000, 19.900091, 22.851610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645828, 19.921162, 23.144905>,  <30.483126, 19.933804, 23.320881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645828, 19.921162, 23.144905>,  <30.917000, 19.900091, 22.851610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645828, 19.921162, 23.144905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148160, 0.967170, -0.206471,
		-0.720040, -0.248609, -0.647870,
		-0.677931, 0.052678, 0.733236,
		30.442450, 19.936966, 23.364876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346132, 20.249207, 22.594337>,  <30.917000, 19.900091, 22.851610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346132, 20.249207, 22.594337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314323, 20.282803, 22.991653>,  <30.295238, 20.302961, 23.230043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314323, 20.282803, 22.991653>,  <30.346132, 20.249207, 22.594337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314323, 20.282803, 22.991653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273824, 0.956272, -0.102784,
		-0.958487, -0.280160, -0.053046,
		-0.079523, 0.083992, 0.993288,
		30.290466, 20.308001, 23.289640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700459, 20.599598, 22.771446>,  <30.346132, 20.249207, 22.594337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700459, 20.599598, 22.771446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915133, 20.644146, 23.106007>,  <30.043936, 20.670876, 23.306744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915133, 20.644146, 23.106007>,  <29.700459, 20.599598, 22.771446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915133, 20.644146, 23.106007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264920, 0.963368, 0.041712,
		-0.801117, -0.243966, 0.546528,
		0.536683, 0.111371, 0.836401,
		30.076138, 20.677557, 23.356928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281834, 20.814327, 23.310741>,  <29.700459, 20.599598, 22.771446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281834, 20.814327, 23.310741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644676, 20.949490, 23.411121>,  <29.862381, 21.030586, 23.471350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644676, 20.949490, 23.411121>,  <29.281834, 20.814327, 23.310741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644676, 20.949490, 23.411121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391742, 0.895844, 0.209767,
		-0.153931, -0.288589, 0.944998,
		0.907107, 0.337906, 0.250951,
		29.916809, 21.050861, 23.486406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046944, 21.235796, 23.736025>,  <29.281834, 20.814327, 23.310741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046944, 21.235796, 23.736025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428257, 21.338985, 23.673164>,  <29.657045, 21.400900, 23.635448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428257, 21.338985, 23.673164>,  <29.046944, 21.235796, 23.736025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428257, 21.338985, 23.673164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187605, 0.913369, 0.361333,
		0.236750, -0.314971, 0.919099,
		0.953286, 0.257973, -0.157150,
		29.714243, 21.416378, 23.626019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231398, 21.613922, 24.275917>,  <29.046944, 21.235796, 23.736025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231398, 21.613922, 24.275917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495247, 21.732094, 23.999477>,  <29.653557, 21.802998, 23.833612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495247, 21.732094, 23.999477>,  <29.231398, 21.613922, 24.275917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495247, 21.732094, 23.999477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118637, 0.948907, 0.292406,
		0.742176, -0.110887, 0.660968,
		0.659621, 0.295431, -0.691101,
		29.693132, 21.820723, 23.792147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680805, 22.147884, 24.540722>,  <29.231398, 21.613922, 24.275917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680805, 22.147884, 24.540722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694357, 22.185040, 24.142681>,  <29.702488, 22.207333, 23.903856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694357, 22.185040, 24.142681>,  <29.680805, 22.147884, 24.540722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694357, 22.185040, 24.142681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025679, 0.995423, 0.092046,
		0.999096, 0.022435, 0.036108,
		0.033878, 0.092890, -0.995100,
		29.704521, 22.212906, 23.844151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055187, 22.805758, 24.464588>,  <29.680805, 22.147884, 24.540722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055187, 22.805758, 24.464588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899157, 22.749725, 24.100563>,  <29.805538, 22.716106, 23.882147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.899157, 22.749725, 24.100563>,  <30.055187, 22.805758, 24.464588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899157, 22.749725, 24.100563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000065, 0.988365, -0.152103,
		0.920782, -0.059273, -0.385547,
		-0.390077, -0.140079, -0.910065,
		29.782133, 22.707701, 23.827543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471987, 23.191858, 23.944273>,  <30.055187, 22.805758, 24.464588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471987, 23.191858, 23.944273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108719, 23.132206, 23.787819>,  <29.890759, 23.096415, 23.693947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108719, 23.132206, 23.787819>,  <30.471987, 23.191858, 23.944273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108719, 23.132206, 23.787819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061959, 0.971982, -0.226741,
		0.413989, -0.181685, -0.891966,
		-0.908171, -0.149133, -0.391133,
		29.836267, 23.087465, 23.670479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506929, 23.546129, 23.267172>,  <30.471987, 23.191858, 23.944273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506929, 23.546129, 23.267172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131853, 23.541874, 23.406094>,  <29.906807, 23.539322, 23.489447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131853, 23.541874, 23.406094>,  <30.506929, 23.546129, 23.267172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131853, 23.541874, 23.406094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144211, 0.921294, -0.361139,
		-0.316129, -0.388722, -0.865423,
		-0.937692, -0.010637, 0.347306,
		29.850546, 23.538683, 23.510284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175663, 23.992682, 22.845966>,  <30.506929, 23.546129, 23.267172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175663, 23.992682, 22.845966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862080, 23.941513, 23.088963>,  <29.673929, 23.910812, 23.234760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862080, 23.941513, 23.088963>,  <30.175663, 23.992682, 22.845966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862080, 23.941513, 23.088963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375126, 0.877305, -0.299361,
		-0.494659, -0.462572, -0.735758,
		-0.783960, -0.127920, 0.607489,
		29.626892, 23.903137, 23.271210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572809, 24.072994, 22.449043>,  <30.175663, 23.992682, 22.845966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572809, 24.072994, 22.449043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505527, 24.185688, 22.826897>,  <29.465158, 24.253304, 23.053608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.505527, 24.185688, 22.826897>,  <29.572809, 24.072994, 22.449043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505527, 24.185688, 22.826897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353591, 0.877271, -0.324604,
		-0.920152, -0.388614, -0.047942,
		-0.168204, 0.281733, 0.944634,
		29.455067, 24.270208, 23.110287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044031, 24.465521, 22.346064>,  <29.572809, 24.072994, 22.449043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044031, 24.465521, 22.346064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134899, 24.567417, 22.722042>,  <29.189421, 24.628555, 22.947630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134899, 24.567417, 22.722042>,  <29.044031, 24.465521, 22.346064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134899, 24.567417, 22.722042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332717, 0.927406, -0.170929,
		-0.915255, -0.273907, 0.295436,
		0.227171, 0.254740, 0.939947,
		29.203051, 24.643839, 23.004026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478943, 24.931726, 22.549704>,  <29.044031, 24.465521, 22.346064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478943, 24.931726, 22.549704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776924, 24.994949, 22.808952>,  <28.955713, 25.032883, 22.964500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776924, 24.994949, 22.808952>,  <28.478943, 24.931726, 22.549704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776924, 24.994949, 22.808952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219297, 0.975555, 0.014151,
		-0.630040, -0.152672, 0.761407,
		0.744955, 0.158058, 0.648120,
		29.000410, 25.042366, 23.003387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129637, 25.255438, 23.172827>,  <28.478943, 24.931726, 22.549704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129637, 25.255438, 23.172827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514807, 25.356613, 23.135303>,  <28.745909, 25.417318, 23.112789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.514807, 25.356613, 23.135303>,  <28.129637, 25.255438, 23.172827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514807, 25.356613, 23.135303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266820, 0.944256, -0.192843,
		0.039800, 0.210722, 0.976735,
		0.962924, 0.252937, -0.093806,
		28.803684, 25.432495, 23.107162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183739, 25.759661, 23.708393>,  <28.129637, 25.255438, 23.172827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183739, 25.759661, 23.708393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499014, 25.812794, 23.468021>,  <28.688179, 25.844673, 23.323799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499014, 25.812794, 23.468021>,  <28.183739, 25.759661, 23.708393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499014, 25.812794, 23.468021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072559, 0.989677, 0.123593,
		0.611141, -0.053812, 0.789690,
		0.788189, 0.132832, -0.600928,
		28.735470, 25.852644, 23.287743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573883, 26.172966, 24.079172>,  <28.183739, 25.759661, 23.708393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573883, 26.172966, 24.079172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737259, 26.240452, 23.720348>,  <28.835283, 26.280943, 23.505054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737259, 26.240452, 23.720348>,  <28.573883, 26.172966, 24.079172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737259, 26.240452, 23.720348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117027, 0.964981, 0.234770,
		0.905253, -0.200869, 0.374390,
		0.408438, 0.168713, -0.897059,
		28.859791, 26.291065, 23.451231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946587, 26.705406, 24.231054>,  <28.573883, 26.172966, 24.079172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946587, 26.705406, 24.231054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899326, 26.729366, 23.834579>,  <28.870970, 26.743742, 23.596695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899326, 26.729366, 23.834579>,  <28.946587, 26.705406, 24.231054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899326, 26.729366, 23.834579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095782, 0.992837, 0.071417,
		0.988365, 0.103376, -0.111568,
		-0.118152, 0.059900, -0.991187,
		28.863880, 26.747335, 23.537224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340807, 27.369337, 23.913948>,  <28.946587, 26.705406, 24.231054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340807, 27.369337, 23.913948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048904, 27.252979, 23.666454>,  <28.873762, 27.183165, 23.517958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.048904, 27.252979, 23.666454>,  <29.340807, 27.369337, 23.913948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048904, 27.252979, 23.666454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323231, 0.944241, -0.062700,
		0.602474, 0.154239, -0.783094,
		-0.729758, -0.290895, -0.618735,
		28.829977, 27.165710, 23.480833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223579, 28.020058, 23.548796>,  <29.340807, 27.369337, 23.913948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223579, 28.020058, 23.548796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905016, 27.796009, 23.457584>,  <28.713879, 27.661581, 23.402857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905016, 27.796009, 23.457584>,  <29.223579, 28.020058, 23.548796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905016, 27.796009, 23.457584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505440, 0.823521, -0.257571,
		0.332057, -0.089877, -0.938967,
		-0.796409, -0.560121, -0.228029,
		28.666094, 27.627974, 23.389175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964771, 28.288773, 22.845974>,  <29.223579, 28.020058, 23.548796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964771, 28.288773, 22.845974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652536, 28.104004, 23.014408>,  <28.465195, 27.993143, 23.115469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.652536, 28.104004, 23.014408>,  <28.964771, 28.288773, 22.845974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.652536, 28.104004, 23.014408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616279, 0.681212, -0.395158,
		-0.104316, -0.567961, -0.816418,
		-0.780588, -0.461920, 0.421084,
		28.418360, 27.965427, 23.140734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419477, 28.446274, 22.443592>,  <28.964771, 28.288773, 22.845974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419477, 28.446274, 22.443592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202692, 28.334526, 22.760635>,  <28.072620, 28.267477, 22.950861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202692, 28.334526, 22.760635>,  <28.419477, 28.446274, 22.443592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202692, 28.334526, 22.760635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708338, 0.659385, -0.251930,
		-0.452254, -0.697972, -0.555249,
		-0.541963, -0.279367, 0.792610,
		28.040104, 28.250715, 22.998419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736088, 28.417246, 22.192114>,  <28.419477, 28.446274, 22.443592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736088, 28.417246, 22.192114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709076, 28.459419, 22.588966>,  <27.692869, 28.484724, 22.827078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709076, 28.459419, 22.588966>,  <27.736088, 28.417246, 22.192114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709076, 28.459419, 22.588966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775994, 0.619480, -0.118652,
		-0.627115, -0.777900, 0.039983,
		-0.067530, 0.105435, 0.992131,
		27.688816, 28.491051, 22.886606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040529, 28.374964, 22.326628>,  <27.736088, 28.417246, 22.192114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040529, 28.374964, 22.326628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226353, 28.566444, 22.624630>,  <27.337847, 28.681332, 22.803431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226353, 28.566444, 22.624630>,  <27.040529, 28.374964, 22.326628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226353, 28.566444, 22.624630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736547, 0.675925, 0.024972,
		-0.491613, -0.560331, 0.666593,
		0.464560, 0.478701, 0.745003,
		27.365721, 28.710054, 22.848131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529140, 28.383596, 22.845997>,  <27.040529, 28.374964, 22.326628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529140, 28.383596, 22.845997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800079, 28.667858, 22.922070>,  <26.962643, 28.838415, 22.967712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800079, 28.667858, 22.922070>,  <26.529140, 28.383596, 22.845997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800079, 28.667858, 22.922070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732216, 0.676255, 0.080868,
		-0.071142, -0.194030, 0.978413,
		0.677347, 0.710656, 0.190182,
		27.003283, 28.881056, 22.979124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166828, 28.851948, 23.421892>,  <26.529140, 28.383596, 22.845997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166828, 28.851948, 23.421892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460806, 29.061340, 23.249462>,  <26.637192, 29.186975, 23.146004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460806, 29.061340, 23.249462>,  <26.166828, 28.851948, 23.421892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460806, 29.061340, 23.249462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625189, 0.769280, -0.131707,
		0.262673, 0.366301, 0.892651,
		0.734943, 0.523480, -0.431077,
		26.681290, 29.218384, 23.120138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244278, 29.453768, 23.909048>,  <26.166828, 28.851948, 23.421892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244278, 29.453768, 23.909048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408323, 29.538994, 23.554329>,  <26.506750, 29.590130, 23.341497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.408323, 29.538994, 23.554329>,  <26.244278, 29.453768, 23.909048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408323, 29.538994, 23.554329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742513, 0.642618, -0.188988,
		0.529607, 0.735966, 0.421747,
		0.410111, 0.213063, -0.886800,
		26.531357, 29.602913, 23.288290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104229, 30.087135, 23.823603>,  <26.244278, 29.453768, 23.909048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104229, 30.087135, 23.823603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177282, 30.015118, 23.436981>,  <26.221115, 29.971907, 23.205008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.177282, 30.015118, 23.436981>,  <26.104229, 30.087135, 23.823603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177282, 30.015118, 23.436981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688307, 0.678573, -0.256461,
		0.702053, 0.712125, 0.000004,
		0.182635, -0.180046, -0.966555,
		26.232073, 29.961103, 23.147015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258270, 30.779272, 23.483740>,  <26.104229, 30.087135, 23.823603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258270, 30.779272, 23.483740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141935, 30.505615, 23.216198>,  <26.072134, 30.341421, 23.055674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.141935, 30.505615, 23.216198>,  <26.258270, 30.779272, 23.483740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.141935, 30.505615, 23.216198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516111, 0.700821, -0.492421,
		0.805632, 0.201989, -0.556918,
		-0.290837, -0.684142, -0.668853,
		26.054684, 30.300373, 23.015543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376469, 31.045383, 22.854620>,  <26.258270, 30.779272, 23.483740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376469, 31.045383, 22.854620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107563, 30.756187, 22.790936>,  <25.946220, 30.582670, 22.752724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.107563, 30.756187, 22.790936>,  <26.376469, 31.045383, 22.854620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107563, 30.756187, 22.790936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483056, 0.591362, -0.645715,
		0.560995, -0.357184, -0.746796,
		-0.672266, -0.722987, -0.159211,
		25.905884, 30.539291, 22.743172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.350613, 31.021025, 22.135736>,  <26.376469, 31.045383, 22.854620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.350613, 31.021025, 22.135736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025997, 30.879478, 22.321720>,  <25.831228, 30.794550, 22.433311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.025997, 30.879478, 22.321720>,  <26.350613, 31.021025, 22.135736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.025997, 30.879478, 22.321720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572668, 0.639697, -0.512678,
		-0.116014, -0.682325, -0.721785,
		-0.811537, -0.353865, 0.464960,
		25.782536, 30.773319, 22.461208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903616, 31.231216, 21.672720>,  <26.350613, 31.021025, 22.135736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903616, 31.231216, 21.672720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664227, 31.151665, 21.983147>,  <25.520594, 31.103933, 22.169403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664227, 31.151665, 21.983147>,  <25.903616, 31.231216, 21.672720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664227, 31.151665, 21.983147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630609, 0.714414, -0.303225,
		-0.494128, -0.670866, -0.552971,
		-0.598473, -0.198877, 0.776065,
		25.484684, 31.092001, 22.215967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121143, 31.054991, 21.380009>,  <25.903616, 31.231216, 21.672720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121143, 31.054991, 21.380009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104456, 31.131252, 21.772316>,  <25.094444, 31.177010, 22.007700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104456, 31.131252, 21.772316>,  <25.121143, 31.054991, 21.380009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104456, 31.131252, 21.772316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785284, 0.600649, -0.150166,
		-0.617729, -0.776447, 0.124661,
		-0.041719, 0.190656, 0.980770,
		25.091940, 31.188448, 22.066547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.358498, 30.991255, 21.633490>,  <25.121143, 31.054991, 21.380009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.358498, 30.991255, 21.633490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542269, 31.226585, 21.899662>,  <24.652533, 31.367783, 22.059366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542269, 31.226585, 21.899662>,  <24.358498, 30.991255, 21.633490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542269, 31.226585, 21.899662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717028, 0.687814, -0.113061,
		-0.524209, -0.425189, 0.737847,
		0.459430, 0.588324, 0.665431,
		24.680098, 31.403082, 22.099291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.866182, 31.387014, 21.922626>,  <24.358498, 30.991255, 21.633490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.866182, 31.387014, 21.922626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178934, 31.598518, 22.054733>,  <24.366585, 31.725420, 22.133997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178934, 31.598518, 22.054733>,  <23.866182, 31.387014, 21.922626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178934, 31.598518, 22.054733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562795, 0.826547, 0.009062,
		-0.268190, -0.192959, 0.943844,
		0.781880, 0.528760, 0.330267,
		24.413498, 31.757147, 22.153814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.633696, 31.771427, 22.516663>,  <23.866182, 31.387014, 21.922626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.633696, 31.771427, 22.516663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.944048, 31.961971, 22.351212>,  <24.130260, 32.076298, 22.251940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.944048, 31.961971, 22.351212>,  <23.633696, 31.771427, 22.516663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.944048, 31.961971, 22.351212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539847, 0.840582, -0.044581,
		0.326452, 0.257885, 0.909353,
		0.775883, 0.476358, -0.413628,
		24.176813, 32.104877, 22.227123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.617924, 32.503761, 22.832167>,  <23.633696, 31.771427, 22.516663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.617924, 32.503761, 22.832167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.820351, 32.505970, 22.487175>,  <23.941807, 32.507298, 22.280180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.820351, 32.505970, 22.487175>,  <23.617924, 32.503761, 22.832167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.820351, 32.505970, 22.487175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477294, 0.834701, -0.274709,
		0.718393, 0.550676, 0.425050,
		0.506065, 0.005525, -0.862477,
		23.972170, 32.507626, 22.228432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.946571, 33.072140, 22.810516>,  <23.617924, 32.503761, 22.832167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.946571, 33.072140, 22.810516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.853336, 32.921268, 22.451984>,  <23.797396, 32.830746, 22.236866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.853336, 32.921268, 22.451984>,  <23.946571, 33.072140, 22.810516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.853336, 32.921268, 22.451984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703788, 0.701498, -0.112172,
		0.671082, 0.604680, -0.428964,
		-0.233089, -0.377177, -0.896330,
		23.783409, 32.808117, 22.183084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.097311, 33.032940, 22.722933>,  <23.946571, 33.072140, 22.810516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.097311, 33.032940, 22.722933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.882393, 33.360039, 22.640377>,  <22.753441, 33.556297, 22.590843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.882393, 33.360039, 22.640377>,  <23.097311, 33.032940, 22.722933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.882393, 33.360039, 22.640377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730511, -0.328932, 0.598463,
		0.421505, 0.472322, 0.774109,
		-0.537297, 0.817750, -0.206390,
		22.721205, 33.605362, 22.578461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.984159, 33.394215, 23.265594>,  <23.097311, 33.032940, 22.722933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.984159, 33.394215, 23.265594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.677298, 33.464840, 23.018921>,  <22.493181, 33.507214, 22.870916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.677298, 33.464840, 23.018921>,  <22.984159, 33.394215, 23.265594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.677298, 33.464840, 23.018921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623801, -0.429394, 0.653065,
		-0.149493, 0.885690, 0.439552,
		-0.767154, 0.176564, -0.616685,
		22.447151, 33.517811, 22.833916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.454657, 33.848988, 23.613956>,  <22.984159, 33.394215, 23.265594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.454657, 33.848988, 23.613956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.341743, 33.535534, 23.392601>,  <22.273996, 33.347462, 23.259789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.341743, 33.535534, 23.392601>,  <22.454657, 33.848988, 23.613956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.341743, 33.535534, 23.392601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538127, -0.348203, 0.767577,
		-0.794189, 0.514466, -0.323402,
		-0.282282, -0.783632, -0.553387,
		22.257059, 33.300446, 23.226585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.390875, 34.541779, 23.672293>,  <22.454657, 33.848988, 23.613956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.390875, 34.541779, 23.672293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.178953, 34.458347, 23.343464>,  <22.051800, 34.408291, 23.146166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.178953, 34.458347, 23.343464>,  <22.390875, 34.541779, 23.672293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.178953, 34.458347, 23.343464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598431, 0.778785, 0.188081,
		0.600989, 0.591600, -0.537421,
		-0.529804, -0.208575, -0.822073,
		22.020012, 34.395775, 23.096842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.024326, 35.132771, 23.683008>,  <22.390875, 34.541779, 23.672293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.024326, 35.132771, 23.683008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.861902, 34.902939, 23.398762>,  <21.764448, 34.765041, 23.228214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.861902, 34.902939, 23.398762>,  <22.024326, 35.132771, 23.683008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.861902, 34.902939, 23.398762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906949, 0.348740, 0.236272,
		0.112063, 0.740432, -0.662724,
		-0.406062, -0.574579, -0.710615,
		21.740084, 34.730564, 23.185577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.367922, 35.151905, 23.347088>,  <22.024326, 35.132771, 23.683008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.367922, 35.151905, 23.347088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.251947, 35.175739, 22.965012>,  <21.182362, 35.190041, 22.735765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.251947, 35.175739, 22.965012>,  <21.367922, 35.151905, 23.347088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.251947, 35.175739, 22.965012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233650, 0.972266, -0.010268,
		0.928086, -0.226157, -0.295819,
		-0.289937, 0.059588, -0.955189,
		21.164967, 35.193615, 22.678455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.927420, 35.460217, 22.926245>,  <21.367922, 35.151905, 23.347088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.927420, 35.460217, 22.926245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.577532, 35.547321, 22.753067>,  <21.367599, 35.599586, 22.649160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.577532, 35.547321, 22.753067>,  <21.927420, 35.460217, 22.926245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.577532, 35.547321, 22.753067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285788, 0.953277, -0.097920,
		0.391394, -0.209384, -0.896085,
		-0.874720, 0.217765, -0.432947,
		21.315115, 35.612652, 22.623182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.102764, 35.753834, 22.367384>,  <21.927420, 35.460217, 22.926245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.102764, 35.753834, 22.367384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.727518, 35.877106, 22.430584>,  <21.502371, 35.951069, 22.468504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.727518, 35.877106, 22.430584>,  <22.102764, 35.753834, 22.367384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.727518, 35.877106, 22.430584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268219, 0.935138, -0.231465,
		-0.219086, -0.174762, -0.959927,
		-0.938115, 0.308182, 0.158001,
		21.446083, 35.969559, 22.477983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.918200, 36.232700, 21.811333>,  <22.102764, 35.753834, 22.367384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.918200, 36.232700, 21.811333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641979, 36.303482, 22.091854>,  <21.476248, 36.345951, 22.260166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641979, 36.303482, 22.091854>,  <21.918200, 36.232700, 21.811333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641979, 36.303482, 22.091854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047140, 0.978560, -0.200495,
		-0.721747, -0.105392, -0.684087,
		-0.690550, 0.176954, 0.701304,
		21.434814, 36.356567, 22.302246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.396053, 36.711365, 21.565258>,  <21.918200, 36.232700, 21.811333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.396053, 36.711365, 21.565258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.323185, 36.772736, 21.953747>,  <21.279463, 36.809559, 22.186840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.323185, 36.772736, 21.953747>,  <21.396053, 36.711365, 21.565258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323185, 36.772736, 21.953747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004230, 0.987864, -0.155266,
		-0.983258, -0.024177, -0.180609,
		-0.182171, 0.153430, 0.971222,
		21.268534, 36.818764, 22.245113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.851532, 37.287903, 21.614508>,  <21.396053, 36.711365, 21.565258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.851532, 37.287903, 21.614508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.057137, 37.281139, 21.957554>,  <21.180498, 37.277081, 22.163382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.057137, 37.281139, 21.957554>,  <20.851532, 37.287903, 21.614508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.057137, 37.281139, 21.957554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232291, 0.965191, -0.120193,
		-0.825732, 0.260997, 0.500046,
		0.514010, -0.016910, 0.857617,
		21.211340, 37.276066, 22.214840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.485657, 37.824162, 21.931644>,  <20.851532, 37.287903, 21.614508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.485657, 37.824162, 21.931644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.838867, 37.784069, 22.115044>,  <21.050793, 37.760014, 22.225084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.838867, 37.784069, 22.115044>,  <20.485657, 37.824162, 21.931644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.838867, 37.784069, 22.115044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363186, 0.764698, -0.532290,
		-0.297262, 0.636546, 0.711650,
		0.883024, -0.100232, 0.458500,
		21.103775, 37.753998, 22.252594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.655573, 38.468281, 22.176191>,  <20.485657, 37.824162, 21.931644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.655573, 38.468281, 22.176191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.022367, 38.308994, 22.185631>,  <21.242445, 38.213421, 22.191294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.022367, 38.308994, 22.185631>,  <20.655573, 38.468281, 22.176191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.022367, 38.308994, 22.185631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371106, 0.829875, -0.416639,
		0.146330, 0.390810, 0.908766,
		0.916989, -0.398215, 0.023597,
		21.297464, 38.189529, 22.192709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.036827, 39.006176, 22.405663>,  <20.655573, 38.468281, 22.176191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.036827, 39.006176, 22.405663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304836, 38.759926, 22.239735>,  <21.465643, 38.612175, 22.140177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304836, 38.759926, 22.239735>,  <21.036827, 39.006176, 22.405663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.304836, 38.759926, 22.239735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357659, 0.757382, -0.546308,
		0.650498, 0.217675, 0.727647,
		0.670024, -0.615622, -0.414822,
		21.505844, 38.575237, 22.115288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.720224, 39.323105, 22.439812>,  <21.036827, 39.006176, 22.405663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.720224, 39.323105, 22.439812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.753843, 39.039326, 22.159920>,  <21.774015, 38.869061, 21.991985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.753843, 39.039326, 22.159920>,  <21.720224, 39.323105, 22.439812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.753843, 39.039326, 22.159920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637164, 0.578162, -0.509658,
		0.766132, -0.403007, 0.500626,
		0.084047, -0.709446, -0.699730,
		21.779057, 38.826492, 21.950001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.501591, 39.225510, 22.249992>,  <21.720224, 39.323105, 22.439812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.501591, 39.225510, 22.249992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.285084, 39.102779, 21.936844>,  <22.155180, 39.029140, 21.748955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.285084, 39.102779, 21.936844>,  <22.501591, 39.225510, 22.249992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.285084, 39.102779, 21.936844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643596, 0.447992, -0.620555,
		0.541121, -0.839740, -0.045014,
		-0.541270, -0.306824, -0.782870,
		22.122704, 39.010731, 21.701982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.955360, 38.937992, 21.788986>,  <22.501591, 39.225510, 22.249992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.955360, 38.937992, 21.788986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.628742, 39.032856, 21.578461>,  <22.432772, 39.089775, 21.452145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.628742, 39.032856, 21.578461>,  <22.955360, 38.937992, 21.788986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.628742, 39.032856, 21.578461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572413, 0.450748, -0.684959,
		0.074789, -0.860571, -0.503811,
		-0.816547, 0.237160, -0.526313,
		22.383778, 39.104004, 21.420567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.206570, 38.855934, 21.160028>,  <22.955360, 38.937992, 21.788986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.206570, 38.855934, 21.160028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.876717, 39.078266, 21.118011>,  <22.678804, 39.211666, 21.092802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.876717, 39.078266, 21.118011>,  <23.206570, 38.855934, 21.160028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.876717, 39.078266, 21.118011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468620, 0.567262, -0.677207,
		-0.316828, -0.607670, -0.728257,
		-0.824630, 0.555834, -0.105041,
		22.629328, 39.245018, 21.086498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.302282, 39.085930, 20.498743>,  <23.206570, 38.855934, 21.160028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.302282, 39.085930, 20.498743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.047144, 39.333965, 20.681454>,  <22.894060, 39.482788, 20.791080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.047144, 39.333965, 20.681454>,  <23.302282, 39.085930, 20.498743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.047144, 39.333965, 20.681454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120907, 0.666356, -0.735766,
		-0.760614, -0.414078, -0.500005,
		-0.637846, 0.620088, 0.456775,
		22.855791, 39.519993, 20.818485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.818346, 39.265968, 19.929077>,  <23.302282, 39.085930, 20.498743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.818346, 39.265968, 19.929077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.830557, 39.543583, 20.216793>,  <22.837883, 39.710152, 20.389423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.830557, 39.543583, 20.216793>,  <22.818346, 39.265968, 19.929077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.830557, 39.543583, 20.216793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370098, 0.660630, -0.653143,
		-0.928491, 0.286146, -0.236696,
		0.030525, 0.694038, 0.719291,
		22.839714, 39.751793, 20.432581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.638720, 39.868217, 19.590124>,  <22.818346, 39.265968, 19.929077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.638720, 39.868217, 19.590124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.801407, 39.981094, 19.937675>,  <22.899019, 40.048820, 20.146206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.801407, 39.981094, 19.937675>,  <22.638720, 39.868217, 19.590124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.801407, 39.981094, 19.937675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408708, 0.794401, -0.449316,
		-0.817030, 0.537863, 0.207764,
		0.406719, 0.282189, 0.868878,
		22.923422, 40.065750, 20.198339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.661179, 40.591217, 19.547346>,  <22.638720, 39.868217, 19.590124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.661179, 40.591217, 19.547346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.956638, 40.498402, 19.800503>,  <23.133915, 40.442711, 19.952396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.956638, 40.498402, 19.800503>,  <22.661179, 40.591217, 19.547346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.956638, 40.498402, 19.800503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655268, 0.467471, -0.593375,
		-0.158171, 0.853011, 0.497348,
		0.738651, -0.232042, 0.632891,
		23.178234, 40.428791, 19.990370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.066963, 41.268280, 19.653629>,  <22.661179, 40.591217, 19.547346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.066963, 41.268280, 19.653629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.289534, 40.953114, 19.759144>,  <23.423075, 40.764015, 19.822453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.289534, 40.953114, 19.759144>,  <23.066963, 41.268280, 19.653629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.289534, 40.953114, 19.759144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720756, 0.299741, -0.625033,
		0.413404, 0.537910, 0.734676,
		0.556424, -0.787914, 0.263788,
		23.456461, 40.716740, 19.838280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.666683, 41.562424, 19.732363>,  <23.066963, 41.268280, 19.653629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.666683, 41.562424, 19.732363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.733360, 41.173027, 19.669716>,  <23.773367, 40.939388, 19.632128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.733360, 41.173027, 19.669716>,  <23.666683, 41.562424, 19.732363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.733360, 41.173027, 19.669716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756265, 0.228149, -0.613198,
		0.632675, -0.016229, 0.774247,
		0.166692, -0.973491, -0.156618,
		23.783367, 40.880981, 19.622730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.398169, 41.513550, 19.748146>,  <23.666683, 41.562424, 19.732363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.398169, 41.513550, 19.748146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290083, 41.177837, 19.559429>,  <24.225231, 40.976410, 19.446199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.290083, 41.177837, 19.559429>,  <24.398169, 41.513550, 19.748146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.290083, 41.177837, 19.559429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826981, 0.048616, -0.560124,
		0.493040, -0.541517, 0.680934,
		-0.270213, -0.839283, -0.471793,
		24.209019, 40.926052, 19.417891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044752, 41.146378, 19.517187>,  <24.398169, 41.513550, 19.748146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.044752, 41.146378, 19.517187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757660, 40.955219, 19.314613>,  <24.585403, 40.840523, 19.193069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757660, 40.955219, 19.314613>,  <25.044752, 41.146378, 19.517187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.757660, 40.955219, 19.314613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629759, -0.135195, -0.764935,
		0.297096, -0.867948, 0.397995,
		-0.717731, -0.477900, -0.506432,
		24.542341, 40.811848, 19.162683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.463276, 40.559593, 19.239622>,  <25.044752, 41.146378, 19.517187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.463276, 40.559593, 19.239622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117662, 40.591530, 19.040798>,  <24.910294, 40.610691, 18.921503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117662, 40.591530, 19.040798>,  <25.463276, 40.559593, 19.239622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.117662, 40.591530, 19.040798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416336, -0.441770, -0.794672,
		-0.283036, -0.893568, 0.348463,
		-0.864034, 0.079843, -0.497061,
		24.858452, 40.615482, 18.891680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386267, 39.976295, 18.887762>,  <25.463276, 40.559593, 19.239622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386267, 39.976295, 18.887762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198757, 40.261024, 18.678551>,  <25.086252, 40.431862, 18.553024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.198757, 40.261024, 18.678551>,  <25.386267, 39.976295, 18.887762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.198757, 40.261024, 18.678551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313610, -0.419426, -0.851898,
		-0.825774, -0.563373, -0.026620,
		-0.468771, 0.711823, -0.523030,
		25.058126, 40.474571, 18.521641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.227242, 39.632538, 18.228416>,  <25.386267, 39.976295, 18.887762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.227242, 39.632538, 18.228416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151058, 40.023716, 18.194122>,  <25.105349, 40.258423, 18.173546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.151058, 40.023716, 18.194122>,  <25.227242, 39.632538, 18.228416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151058, 40.023716, 18.194122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061779, -0.099101, -0.993158,
		-0.979749, -0.183861, 0.079291,
		-0.190460, 0.977944, -0.085735,
		25.093920, 40.317101, 18.168402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.922297, 39.454578, 17.932661>,  <25.227242, 39.632538, 18.228416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.922297, 39.454578, 17.932661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113722, 39.168404, 18.136280>,  <26.228577, 38.996700, 18.258451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113722, 39.168404, 18.136280>,  <25.922297, 39.454578, 17.932661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113722, 39.168404, 18.136280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579645, -0.692878, -0.428872,
		0.659538, -0.089824, -0.746285,
		0.478561, -0.715438, 0.509046,
		26.257290, 38.953773, 18.288994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164116, 39.023788, 17.501877>,  <25.922297, 39.454578, 17.932661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164116, 39.023788, 17.501877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126717, 38.837051, 17.853630>,  <26.104277, 38.725010, 18.064682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126717, 38.837051, 17.853630>,  <26.164116, 39.023788, 17.501877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126717, 38.837051, 17.853630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547996, -0.713293, -0.436937,
		0.831239, -0.522750, -0.189139,
		-0.093497, -0.466847, 0.879382,
		26.098667, 38.696999, 18.117445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317919, 38.323441, 17.423555>,  <26.164116, 39.023788, 17.501877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317919, 38.323441, 17.423555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034168, 38.436653, 17.681759>,  <25.863918, 38.504581, 17.836681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.034168, 38.436653, 17.681759>,  <26.317919, 38.323441, 17.423555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034168, 38.436653, 17.681759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663351, -0.577641, -0.475707,
		0.238231, -0.765653, 0.597513,
		-0.709374, 0.283032, 0.645508,
		25.821356, 38.521564, 17.875412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.036680, 37.808861, 17.890463>,  <26.317919, 38.323441, 17.423555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.036680, 37.808861, 17.890463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773754, 38.096962, 17.801769>,  <25.615999, 38.269825, 17.748552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773754, 38.096962, 17.801769>,  <26.036680, 37.808861, 17.890463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773754, 38.096962, 17.801769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629497, -0.686517, -0.363906,
		-0.414330, -0.099619, 0.904658,
		-0.657315, 0.720257, -0.221735,
		25.576559, 38.313038, 17.735249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.354828, 37.406666, 17.963739>,  <26.036680, 37.808861, 17.890463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.354828, 37.406666, 17.963739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691326, 37.217400, 17.859112>,  <25.893225, 37.103840, 17.796335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691326, 37.217400, 17.859112>,  <25.354828, 37.406666, 17.963739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691326, 37.217400, 17.859112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536763, -0.673026, -0.508842,
		0.064726, 0.568462, -0.820159,
		0.841247, -0.473167, -0.261567,
		25.943701, 37.075451, 17.780642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.333004, 37.253365, 17.241987>,  <25.354828, 37.406666, 17.963739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.333004, 37.253365, 17.241987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611742, 36.994781, 17.366241>,  <25.778986, 36.839630, 17.440794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.611742, 36.994781, 17.366241>,  <25.333004, 37.253365, 17.241987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.611742, 36.994781, 17.366241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346802, -0.682819, -0.643029,
		0.627801, 0.340363, -0.700014,
		0.696846, -0.646460, 0.310636,
		25.820795, 36.800842, 17.459433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921268, 37.294361, 16.812489>,  <25.333004, 37.253365, 17.241987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921268, 37.294361, 16.812489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717625, 37.138515, 16.505501>,  <25.595438, 37.045006, 16.321308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717625, 37.138515, 16.505501>,  <25.921268, 37.294361, 16.812489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717625, 37.138515, 16.505501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859188, 0.177180, 0.480003,
		-0.051037, 0.903774, -0.424957,
		-0.509108, -0.389616, -0.767469,
		25.564892, 37.021629, 16.275261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361893, 37.730328, 16.626343>,  <25.921268, 37.294361, 16.812489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361893, 37.730328, 16.626343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295197, 37.341778, 16.558651>,  <25.255178, 37.108650, 16.518036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.295197, 37.341778, 16.558651>,  <25.361893, 37.730328, 16.626343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.295197, 37.341778, 16.558651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850948, 0.055064, 0.522356,
		-0.498082, 0.231103, -0.835766,
		-0.166739, -0.971370, -0.169230,
		25.245174, 37.050365, 16.507881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.708141, 37.635406, 16.227552>,  <25.361893, 37.730328, 16.626343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.708141, 37.635406, 16.227552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782164, 37.309715, 16.447659>,  <24.826576, 37.114300, 16.579723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.782164, 37.309715, 16.447659>,  <24.708141, 37.635406, 16.227552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.782164, 37.309715, 16.447659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882587, 0.108558, 0.457445,
		-0.432199, -0.570311, -0.698534,
		0.185054, -0.814224, 0.550268,
		24.837681, 37.065449, 16.612740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.132242, 37.216732, 16.146961>,  <24.708141, 37.635406, 16.227552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.132242, 37.216732, 16.146961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.316784, 37.091919, 16.479176>,  <24.427509, 37.017033, 16.678505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.316784, 37.091919, 16.479176>,  <24.132242, 37.216732, 16.146961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.316784, 37.091919, 16.479176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857854, 0.081957, 0.507317,
		-0.226366, -0.946531, -0.229864,
		0.461352, -0.312028, 0.830538,
		24.455189, 36.998310, 16.728336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.672308, 36.746662, 16.298601>,  <24.132242, 37.216732, 16.146961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.672308, 36.746662, 16.298601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.869326, 36.773495, 16.645679>,  <23.987535, 36.789597, 16.853928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.869326, 36.773495, 16.645679>,  <23.672308, 36.746662, 16.298601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.869326, 36.773495, 16.645679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851757, -0.167492, 0.496444,
		0.178636, -0.983588, -0.025357,
		0.492544, 0.067085, 0.867698,
		24.017090, 36.793621, 16.905989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.480568, 36.200077, 16.636005>,  <23.672308, 36.746662, 16.298601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.480568, 36.200077, 16.636005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.609642, 36.465103, 16.906380>,  <23.687086, 36.624119, 17.068604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.609642, 36.465103, 16.906380>,  <23.480568, 36.200077, 16.636005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.609642, 36.465103, 16.906380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736809, -0.272432, 0.618784,
		0.594129, -0.697706, 0.400272,
		0.322683, 0.662561, 0.675935,
		23.706448, 36.663872, 17.109159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.446825, 35.803539, 17.270605>,  <23.480568, 36.200077, 16.636005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.446825, 35.803539, 17.270605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.442673, 36.196098, 17.347282>,  <23.440182, 36.431633, 17.393290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.442673, 36.196098, 17.347282>,  <23.446825, 35.803539, 17.270605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.442673, 36.196098, 17.347282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710395, -0.142154, 0.689297,
		0.703726, -0.129021, 0.698658,
		-0.010383, 0.981400, 0.191694,
		23.439558, 36.490517, 17.404791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.479332, 35.837215, 18.070223>,  <23.446825, 35.803539, 17.270605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.479332, 35.837215, 18.070223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.339069, 36.180946, 17.921310>,  <23.254911, 36.387184, 17.831963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.339069, 36.180946, 17.921310>,  <23.479332, 35.837215, 18.070223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.339069, 36.180946, 17.921310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710663, 0.014729, 0.703379,
		0.609916, 0.511213, 0.605528,
		-0.350658, 0.859328, -0.372283,
		23.233871, 36.438744, 17.809626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.544792, 36.360188, 18.621956>,  <23.479332, 35.837215, 18.070223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.544792, 36.360188, 18.621956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.255939, 36.468121, 18.367172>,  <23.082628, 36.532879, 18.214302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.255939, 36.468121, 18.367172>,  <23.544792, 36.360188, 18.621956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.255939, 36.468121, 18.367172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673005, -0.061098, 0.737110,
		0.159977, 0.960968, 0.225718,
		-0.722130, 0.269830, -0.636961,
		23.039301, 36.549068, 18.176085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.159981, 36.917564, 18.987398>,  <23.544792, 36.360188, 18.621956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.159981, 36.917564, 18.987398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.938570, 36.783154, 18.682587>,  <22.805723, 36.702507, 18.499699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.938570, 36.783154, 18.682587>,  <23.159981, 36.917564, 18.987398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.938570, 36.783154, 18.682587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777974, -0.117957, 0.617125,
		-0.297260, 0.934435, -0.196131,
		-0.553528, -0.336032, -0.762030,
		22.772512, 36.682343, 18.453978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.541897, 37.319489, 18.947338>,  <23.159981, 36.917564, 18.987398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.541897, 37.319489, 18.947338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430107, 36.984367, 18.759731>,  <22.363033, 36.783295, 18.647167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.430107, 36.984367, 18.759731>,  <22.541897, 37.319489, 18.947338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.430107, 36.984367, 18.759731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777006, -0.089615, 0.623081,
		-0.564052, 0.538565, -0.625934,
		-0.279476, -0.837805, -0.469016,
		22.346264, 36.733025, 18.619026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.852337, 37.405010, 18.850843>,  <22.541897, 37.319489, 18.947338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.852337, 37.405010, 18.850843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.918911, 37.011654, 18.821865>,  <21.958855, 36.775642, 18.804478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.918911, 37.011654, 18.821865>,  <21.852337, 37.405010, 18.850843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.918911, 37.011654, 18.821865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774928, -0.175876, 0.607087,
		-0.609744, -0.044899, -0.791326,
		0.166433, -0.983388, -0.072446,
		21.968842, 36.716637, 18.800131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.257984, 37.206219, 18.636778>,  <21.852337, 37.405010, 18.850843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.257984, 37.206219, 18.636778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.423479, 36.874889, 18.787884>,  <21.522776, 36.676094, 18.878548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.423479, 36.874889, 18.787884>,  <21.257984, 37.206219, 18.636778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.423479, 36.874889, 18.787884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729121, -0.053006, 0.682329,
		-0.545164, -0.557740, -0.625877,
		0.413738, -0.828322, 0.377763,
		21.547600, 36.626392, 18.901213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.686968, 36.713631, 18.742649>,  <21.257984, 37.206219, 18.636778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.686968, 36.713631, 18.742649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.979059, 36.600185, 18.991272>,  <21.154314, 36.532120, 19.140446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.979059, 36.600185, 18.991272>,  <20.686968, 36.713631, 18.742649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.979059, 36.600185, 18.991272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680966, -0.228580, 0.695727,
		-0.055241, -0.931298, -0.360044,
		0.730229, -0.283611, 0.621556,
		21.198128, 36.515102, 19.177738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.346310, 36.117435, 19.176304>,  <20.686968, 36.713631, 18.742649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.346310, 36.117435, 19.176304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.661974, 36.233822, 19.392662>,  <20.851372, 36.303654, 19.522476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.661974, 36.233822, 19.392662>,  <20.346310, 36.117435, 19.176304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.661974, 36.233822, 19.392662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544839, -0.074874, 0.835191,
		0.283509, -0.953800, 0.099441,
		0.789160, 0.290963, 0.540895,
		20.898722, 36.321110, 19.554930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.257156, 35.670292, 19.683445>,  <20.346310, 36.117435, 19.176304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.257156, 35.670292, 19.683445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.476379, 35.973896, 19.824036>,  <20.607914, 36.156059, 19.908390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.476379, 35.973896, 19.824036>,  <20.257156, 35.670292, 19.683445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.476379, 35.973896, 19.824036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440946, -0.094899, 0.892503,
		0.710774, -0.644124, 0.282673,
		0.548057, 0.759011, 0.351476,
		20.640797, 36.201599, 19.929478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.641542, 35.397705, 20.179733>,  <20.257156, 35.670292, 19.683445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.641542, 35.397705, 20.179733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.624706, 35.791626, 20.247124>,  <20.614605, 36.027981, 20.287558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.624706, 35.791626, 20.247124>,  <20.641542, 35.397705, 20.179733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.624706, 35.791626, 20.247124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433705, -0.169919, 0.884888,
		0.900071, -0.035825, 0.434267,
		-0.042090, 0.984806, 0.168477,
		20.612080, 36.087067, 20.297667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.613985, 35.380089, 20.830484>,  <20.641542, 35.397705, 20.179733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.613985, 35.380089, 20.830484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.508760, 35.761150, 20.769501>,  <20.445625, 35.989788, 20.732910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.508760, 35.761150, 20.769501>,  <20.613985, 35.380089, 20.830484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.508760, 35.761150, 20.769501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551371, -0.018774, 0.834049,
		0.791701, 0.303466, 0.530206,
		-0.263060, 0.952657, -0.152459,
		20.429842, 36.046947, 20.723763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.742535, 35.798050, 21.417452>,  <20.613985, 35.380089, 20.830484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.742535, 35.798050, 21.417452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.468033, 36.026058, 21.236732>,  <20.303331, 36.162865, 21.128300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.468033, 36.026058, 21.236732>,  <20.742535, 35.798050, 21.417452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.468033, 36.026058, 21.236732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493824, 0.090918, 0.864796,
		0.534032, 0.816582, 0.219099,
		-0.686257, 0.570025, -0.451801,
		20.262156, 36.197067, 21.101192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.682112, 36.388786, 21.870550>,  <20.742535, 35.798050, 21.417452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.682112, 36.388786, 21.870550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356226, 36.351982, 21.641544>,  <20.160694, 36.329899, 21.504141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356226, 36.351982, 21.641544>,  <20.682112, 36.388786, 21.870550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.356226, 36.351982, 21.641544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571322, 0.296186, 0.765418,
		0.099141, 0.950688, -0.293877,
		-0.814716, -0.092014, -0.572513,
		20.111811, 36.324379, 21.469791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.255157, 37.053642, 22.026644>,  <20.682112, 36.388786, 21.870550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.255157, 37.053642, 22.026644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.017962, 36.773972, 21.866886>,  <19.875645, 36.606171, 21.771030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.017962, 36.773972, 21.866886>,  <20.255157, 37.053642, 22.026644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.017962, 36.773972, 21.866886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624960, 0.086876, 0.775807,
		-0.507727, 0.709652, -0.488474,
		-0.592990, -0.699175, -0.399395,
		19.840065, 36.564220, 21.747068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.603771, 37.411621, 22.053888>,  <20.255157, 37.053642, 22.026644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.603771, 37.411621, 22.053888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.561527, 37.014381, 22.033482>,  <19.536180, 36.776039, 22.021238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.561527, 37.014381, 22.033482>,  <19.603771, 37.411621, 22.053888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.561527, 37.014381, 22.033482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706547, 0.038841, 0.706599,
		-0.699740, 0.110670, -0.705773,
		-0.105612, -0.993098, -0.051015,
		19.529844, 36.716454, 22.018177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.969023, 37.273277, 21.954041>,  <19.603771, 37.411621, 22.053888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.969023, 37.273277, 21.954041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.076239, 36.914822, 22.095512>,  <19.140568, 36.699749, 22.180395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.076239, 36.914822, 22.095512>,  <18.969023, 37.273277, 21.954041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.076239, 36.914822, 22.095512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888418, -0.087916, 0.450538,
		-0.372651, -0.434977, -0.819711,
		0.268039, -0.896140, 0.353679,
		19.156651, 36.645981, 22.201616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.445780, 36.807751, 21.868290>,  <18.969023, 37.273277, 21.954041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.445780, 36.807751, 21.868290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.649445, 36.684559, 22.189762>,  <18.771643, 36.610645, 22.382647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.649445, 36.684559, 22.189762>,  <18.445780, 36.807751, 21.868290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.649445, 36.684559, 22.189762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836998, 0.040323, 0.545719,
		-0.200477, -0.950538, -0.237249,
		0.509159, -0.307981, 0.803682,
		18.802193, 36.592167, 22.430866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.285662, 36.272228, 22.313643>,  <18.445780, 36.807751, 21.868290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.285662, 36.272228, 22.313643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.500250, 36.427525, 22.613369>,  <18.629002, 36.520702, 22.793205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.500250, 36.427525, 22.613369>,  <18.285662, 36.272228, 22.313643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.500250, 36.427525, 22.613369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832819, 0.100007, 0.544437,
		0.136437, -0.916115, 0.376987,
		0.536468, 0.388243, 0.749313,
		18.661190, 36.543995, 22.838163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.954411, 36.209316, 22.940565>,  <18.285662, 36.272228, 22.313643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.954411, 36.209316, 22.940565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.183598, 36.532745, 22.994102>,  <18.321110, 36.726803, 23.026226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.183598, 36.532745, 22.994102>,  <17.954411, 36.209316, 22.940565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.183598, 36.532745, 22.994102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757895, 0.460576, 0.462023,
		0.311934, -0.366165, 0.876710,
		0.572968, 0.808575, 0.133846,
		18.355488, 36.775318, 23.034256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.107973, 36.502518, 23.652510>,  <17.954411, 36.209316, 22.940565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.107973, 36.502518, 23.652510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.145941, 36.827984, 23.423096>,  <18.168720, 37.023262, 23.285448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.145941, 36.827984, 23.423096>,  <18.107973, 36.502518, 23.652510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.145941, 36.827984, 23.423096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810132, 0.397949, 0.430491,
		0.578512, 0.423778, 0.696947,
		0.094917, 0.813664, -0.573535,
		18.174416, 37.072083, 23.251036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.220421, 37.042404, 24.104712>,  <18.107973, 36.502518, 23.652510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.220421, 37.042404, 24.104712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.054243, 37.178234, 23.767170>,  <17.954536, 37.259731, 23.564644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.054243, 37.178234, 23.767170>,  <18.220421, 37.042404, 24.104712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.054243, 37.178234, 23.767170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754226, 0.389986, 0.528255,
		0.508476, 0.855919, 0.094101,
		-0.415446, 0.339579, -0.843855,
		17.929609, 37.280109, 23.514013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.318424, 25.272486, 20.805872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.712379, 25.320274, 20.856041>,  <32.948753, 25.348948, 20.886143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.712379, 25.320274, 20.856041>,  <32.318424, 25.272486, 20.805872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712379, 25.320274, 20.856041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139436, 0.976418, 0.164821,
		-0.102773, -0.179818, 0.978316,
		0.984883, 0.119473, 0.125422,
		33.007843, 25.356117, 20.893667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379169, 25.783552, 21.359528>,  <32.318424, 25.272486, 20.805872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379169, 25.783552, 21.359528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.740467, 25.807480, 21.189556>,  <32.957245, 25.821836, 21.087574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.740467, 25.807480, 21.189556>,  <32.379169, 25.783552, 21.359528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740467, 25.807480, 21.189556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003652, 0.989128, 0.147012,
		0.429103, -0.134340, 0.893209,
		0.903248, 0.059822, -0.424928,
		33.011440, 25.825426, 21.062078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724098, 26.127886, 21.773872>,  <32.379169, 25.783552, 21.359528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724098, 26.127886, 21.773872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.915768, 26.159786, 21.424236>,  <33.030769, 26.178926, 21.214455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.915768, 26.159786, 21.424236>,  <32.724098, 26.127886, 21.773872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915768, 26.159786, 21.424236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117186, 0.992761, 0.026338,
		0.869864, 0.089811, 0.485049,
		0.479172, 0.079751, -0.874091,
		33.059521, 26.183712, 21.162008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268982, 26.601656, 21.922020>,  <32.724098, 26.127886, 21.773872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268982, 26.601656, 21.922020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.199535, 26.598572, 21.528107>,  <33.157867, 26.596722, 21.291759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.199535, 26.598572, 21.528107>,  <33.268982, 26.601656, 21.922020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199535, 26.598572, 21.528107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157012, 0.987395, 0.019948,
		0.972216, 0.158086, -0.172641,
		-0.173619, -0.007713, -0.984783,
		33.147449, 26.596258, 21.232672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708099, 27.130339, 21.692287>,  <33.268982, 26.601656, 21.922020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708099, 27.130339, 21.692287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.433846, 27.099838, 21.402710>,  <33.269295, 27.081537, 21.228964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.433846, 27.099838, 21.402710>,  <33.708099, 27.130339, 21.692287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433846, 27.099838, 21.402710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026170, 0.991274, -0.129196,
		0.727478, -0.107526, -0.677653,
		-0.685631, -0.076253, -0.723944,
		33.228157, 27.076963, 21.185526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907398, 27.678938, 21.225559>,  <33.708099, 27.130339, 21.692287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907398, 27.678938, 21.225559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.534130, 27.584179, 21.117432>,  <33.310169, 27.527323, 21.052555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.534130, 27.584179, 21.117432>,  <33.907398, 27.678938, 21.225559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534130, 27.584179, 21.117432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258176, 0.965024, 0.045537,
		0.250076, 0.112283, -0.961694,
		-0.933171, -0.236899, -0.270319,
		33.254177, 27.513109, 21.036337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784790, 28.096014, 20.629322>,  <33.907398, 27.678938, 21.225559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784790, 28.096014, 20.629322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.417511, 27.979542, 20.736748>,  <33.197144, 27.909658, 20.801203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.417511, 27.979542, 20.736748>,  <33.784790, 28.096014, 20.629322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417511, 27.979542, 20.736748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312992, 0.948856, -0.041340,
		-0.242793, -0.122018, -0.962374,
		-0.918198, -0.291178, 0.268566,
		33.142052, 27.892189, 20.817318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301403, 28.351755, 20.200245>,  <33.784790, 28.096014, 20.629322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301403, 28.351755, 20.200245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.092136, 28.284851, 20.534508>,  <32.966576, 28.244709, 20.735065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.092136, 28.284851, 20.534508>,  <33.301403, 28.351755, 20.200245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092136, 28.284851, 20.534508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292114, 0.956345, 0.008534,
		-0.800603, -0.239642, -0.549188,
		-0.523168, -0.167258, 0.835655,
		32.935184, 28.234674, 20.785204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714954, 28.697182, 20.086430>,  <33.301403, 28.351755, 20.200245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714954, 28.697182, 20.086430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.746361, 28.664169, 20.483826>,  <32.765205, 28.644361, 20.722263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.746361, 28.664169, 20.483826>,  <32.714954, 28.697182, 20.086430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746361, 28.664169, 20.483826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407055, 0.907053, 0.107521,
		-0.910022, -0.412848, 0.037627,
		0.078520, -0.082530, 0.993491,
		32.769917, 28.639410, 20.781874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124214, 28.951345, 20.229578>,  <32.714954, 28.697182, 20.086430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124214, 28.951345, 20.229578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.329117, 28.978157, 20.572063>,  <32.452057, 28.994244, 20.777555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.329117, 28.978157, 20.572063>,  <32.124214, 28.951345, 20.229578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329117, 28.978157, 20.572063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483016, 0.846822, 0.222685,
		-0.710134, -0.527637, 0.466165,
		0.512255, 0.067029, 0.856214,
		32.482792, 28.998266, 20.828928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616135, 28.896065, 20.699686>,  <32.124214, 28.951345, 20.229578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616135, 28.896065, 20.699686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.944723, 29.061298, 20.856934>,  <32.141876, 29.160439, 20.951283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.944723, 29.061298, 20.856934>,  <31.616135, 28.896065, 20.699686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944723, 29.061298, 20.856934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554501, 0.739523, 0.381621,
		-0.133080, -0.531476, 0.836554,
		0.821474, 0.413083, 0.393120,
		32.191166, 29.185223, 20.974869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330551, 29.487528, 21.071550>,  <31.616135, 28.896065, 20.699686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330551, 29.487528, 21.071550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.719631, 29.580196, 21.076916>,  <31.953079, 29.635798, 21.080135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.719631, 29.580196, 21.076916>,  <31.330551, 29.487528, 21.071550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719631, 29.580196, 21.076916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230670, 0.958939, 0.165008,
		0.025364, -0.163598, 0.986201,
		0.972702, 0.231672, 0.013414,
		32.011440, 29.649698, 21.080940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441137, 29.848938, 21.719683>,  <31.330551, 29.487528, 21.071550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441137, 29.848938, 21.719683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.703196, 29.961452, 21.439209>,  <31.860432, 30.028961, 21.270924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.703196, 29.961452, 21.439209>,  <31.441137, 29.848938, 21.719683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703196, 29.961452, 21.439209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284137, 0.951704, 0.116303,
		0.700035, 0.123037, 0.703429,
		0.655147, 0.281286, -0.701185,
		31.899740, 30.045839, 21.228853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625074, 30.481693, 21.932344>,  <31.441137, 29.848938, 21.719683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625074, 30.481693, 21.932344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.743963, 30.479542, 21.550426>,  <31.815296, 30.478251, 21.321276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.743963, 30.479542, 21.550426>,  <31.625074, 30.481693, 21.932344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743963, 30.479542, 21.550426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165776, 0.984506, -0.057151,
		0.940307, 0.175269, 0.291725,
		0.297222, -0.005379, -0.954793,
		31.833130, 30.477928, 21.263988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994589, 31.089291, 21.904383>,  <31.625074, 30.481693, 21.932344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994589, 31.089291, 21.904383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.867971, 30.991016, 21.537899>,  <31.792002, 30.932053, 21.318008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.867971, 30.991016, 21.537899>,  <31.994589, 31.089291, 21.904383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867971, 30.991016, 21.537899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528150, 0.847962, -0.044913,
		0.787945, 0.469680, -0.398174,
		-0.316542, -0.245685, -0.916210,
		31.773008, 30.917311, 21.263037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063328, 31.775894, 21.553358>,  <31.994589, 31.089291, 21.904383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063328, 31.775894, 21.553358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.842466, 31.557411, 21.301395>,  <31.709949, 31.426321, 21.150217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.842466, 31.557411, 21.301395>,  <32.063328, 31.775894, 21.553358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842466, 31.557411, 21.301395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488876, 0.824111, -0.286079,
		0.675372, 0.149986, -0.722065,
		-0.552154, -0.546209, -0.629906,
		31.676821, 31.393549, 21.112423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111454, 32.047592, 20.794039>,  <32.063328, 31.775894, 21.553358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111454, 32.047592, 20.794039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.776644, 31.830387, 20.820934>,  <31.575756, 31.700064, 20.837072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.776644, 31.830387, 20.820934>,  <32.111454, 32.047592, 20.794039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776644, 31.830387, 20.820934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522006, 0.755666, -0.395575,
		0.163992, -0.366206, -0.915969,
		-0.837028, -0.543013, 0.067239,
		31.525536, 31.667484, 20.841106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875280, 32.178543, 20.156734>,  <32.111454, 32.047592, 20.794039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875280, 32.178543, 20.156734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.573217, 32.045456, 20.382668>,  <31.391979, 31.965603, 20.518227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.573217, 32.045456, 20.382668>,  <31.875280, 32.178543, 20.156734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573217, 32.045456, 20.382668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565624, 0.766246, -0.304854,
		-0.331370, -0.549695, -0.766831,
		-0.755158, -0.332719, 0.564832,
		31.346670, 31.945641, 20.552116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314314, 32.195030, 19.692410>,  <31.875280, 32.178543, 20.156734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314314, 32.195030, 19.692410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.149382, 32.170609, 20.056004>,  <31.050423, 32.155956, 20.274160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.149382, 32.170609, 20.056004>,  <31.314314, 32.195030, 19.692410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149382, 32.170609, 20.056004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698349, 0.661929, -0.272320,
		-0.585056, -0.747076, -0.315573,
		-0.412331, -0.061058, 0.908985,
		31.025682, 32.152290, 20.328699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688162, 32.095757, 19.620396>,  <31.314314, 32.195030, 19.692410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688162, 32.095757, 19.620396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.675869, 32.233402, 19.995766>,  <30.668493, 32.315990, 20.220987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.675869, 32.233402, 19.995766>,  <30.688162, 32.095757, 19.620396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675869, 32.233402, 19.995766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753228, 0.609192, -0.248057,
		-0.657041, -0.714472, 0.240475,
		-0.030734, 0.344116, 0.938424,
		30.666649, 32.336636, 20.277292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057100, 32.057682, 19.754524>,  <30.688162, 32.095757, 19.620396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057100, 32.057682, 19.754524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.206297, 32.332680, 20.003757>,  <30.295815, 32.497677, 20.153297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.206297, 32.332680, 20.003757>,  <30.057100, 32.057682, 19.754524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206297, 32.332680, 20.003757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747619, 0.620403, -0.236993,
		-0.549493, -0.377432, 0.745387,
		0.372992, 0.687491, 0.623083,
		30.318195, 32.538929, 20.190681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503017, 32.251934, 20.155163>,  <30.057100, 32.057682, 19.754524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503017, 32.251934, 20.155163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.767101, 32.549873, 20.193790>,  <29.925550, 32.728638, 20.216967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.767101, 32.549873, 20.193790>,  <29.503017, 32.251934, 20.155163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767101, 32.549873, 20.193790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714074, 0.662330, -0.226754,
		-0.232859, 0.080746, 0.969153,
		0.660208, 0.744848, 0.096571,
		29.965164, 32.773327, 20.222761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127766, 32.698082, 20.387766>,  <29.503017, 32.251934, 20.155163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127766, 32.698082, 20.387766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.432304, 32.895927, 20.220097>,  <29.615028, 33.014633, 20.119495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.432304, 32.895927, 20.220097>,  <29.127766, 32.698082, 20.387766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432304, 32.895927, 20.220097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632503, 0.708671, -0.312609,
		0.142437, 0.503133, 0.852390,
		0.761348, 0.494613, -0.419174,
		29.660709, 33.044312, 20.094345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575773, 32.676289, 20.877869>,  <29.127766, 32.698082, 20.387766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575773, 32.676289, 20.877869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.181282, 32.610458, 20.884388>,  <27.944588, 32.570961, 20.888300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.181282, 32.610458, 20.884388>,  <28.575773, 32.676289, 20.877869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181282, 32.610458, 20.884388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165298, -0.977798, 0.128795,
		-0.005260, 0.129716, 0.991537,
		-0.986230, -0.164576, 0.016298,
		27.885412, 32.561085, 20.889277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495165, 32.280258, 21.451920>,  <28.575773, 32.676289, 20.877869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495165, 32.280258, 21.451920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.176180, 32.230553, 21.215748>,  <27.984789, 32.200729, 21.074045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.176180, 32.230553, 21.215748>,  <28.495165, 32.280258, 21.451920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176180, 32.230553, 21.215748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195179, -0.979078, -0.057551,
		-0.570926, -0.161135, 0.805034,
		-0.797464, -0.124268, -0.590431,
		27.936941, 32.193272, 21.038618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127129, 31.788424, 21.738960>,  <28.495165, 32.280258, 21.451920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127129, 31.788424, 21.738960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.053165, 31.782619, 21.345901>,  <28.008787, 31.779137, 21.110065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.053165, 31.782619, 21.345901>,  <28.127129, 31.788424, 21.738960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053165, 31.782619, 21.345901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292435, -0.955410, -0.040921,
		-0.938238, -0.294927, 0.180905,
		-0.184907, -0.014510, -0.982649,
		27.997694, 31.778267, 21.051107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741890, 31.141706, 21.753351>,  <28.127129, 31.788424, 21.738960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741890, 31.141706, 21.753351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.886333, 31.225922, 21.389973>,  <27.973000, 31.276451, 21.171946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.886333, 31.225922, 21.389973>,  <27.741890, 31.141706, 21.753351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886333, 31.225922, 21.389973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024967, -0.971647, -0.235113,
		-0.932188, 0.107583, -0.345616,
		0.361111, 0.210540, -0.908445,
		27.994667, 31.289083, 21.117439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342743, 30.658010, 21.306520>,  <27.741890, 31.141706, 21.753351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342743, 30.658010, 21.306520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.675957, 30.770458, 21.115932>,  <27.875885, 30.837927, 21.001579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.675957, 30.770458, 21.115932>,  <27.342743, 30.658010, 21.306520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675957, 30.770458, 21.115932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169974, -0.949668, -0.263135,
		-0.526460, 0.138213, -0.838890,
		0.833036, 0.281120, -0.476469,
		27.925867, 30.854794, 20.972992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342171, 30.222712, 20.652943>,  <27.342743, 30.658010, 21.306520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342171, 30.222712, 20.652943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.729237, 30.323059, 20.663422>,  <27.961477, 30.383266, 20.669708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.729237, 30.323059, 20.663422>,  <27.342171, 30.222712, 20.652943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729237, 30.323059, 20.663422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248565, -0.930801, -0.268001,
		-0.042848, 0.265848, -0.963062,
		0.967667, 0.250867, 0.026197,
		28.019537, 30.398319, 20.671280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626066, 29.883301, 20.046654>,  <27.342171, 30.222712, 20.652943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626066, 29.883301, 20.046654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.930759, 29.965961, 20.292274>,  <28.113575, 30.015558, 20.439648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.930759, 29.965961, 20.292274>,  <27.626066, 29.883301, 20.046654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930759, 29.965961, 20.292274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431173, -0.869103, -0.242385,
		0.483585, 0.449395, -0.751126,
		0.761732, 0.206651, 0.614052,
		28.159279, 30.027956, 20.476490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170300, 29.606089, 19.685240>,  <27.626066, 29.883301, 20.046654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.170300, 29.606089, 19.685240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.277761, 29.636547, 20.069328>,  <28.342239, 29.654821, 20.299782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.277761, 29.636547, 20.069328>,  <28.170300, 29.606089, 19.685240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277761, 29.636547, 20.069328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411508, -0.910394, -0.042939,
		0.870911, 0.406675, -0.275917,
		0.268655, 0.076146, 0.960222,
		28.358358, 29.659391, 20.357395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864088, 29.298809, 19.767969>,  <28.170300, 29.606089, 19.685240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864088, 29.298809, 19.767969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.722946, 29.297588, 20.142239>,  <28.638262, 29.296856, 20.366800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.722946, 29.297588, 20.142239>,  <28.864088, 29.298809, 19.767969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722946, 29.297588, 20.142239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267582, -0.958561, 0.097782,
		0.896602, 0.284872, 0.339047,
		-0.352853, -0.003051, 0.935674,
		28.617090, 29.296673, 20.422941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466961, 29.105089, 20.165842>,  <28.864088, 29.298809, 19.767969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466961, 29.105089, 20.165842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.158979, 29.021347, 20.406952>,  <28.974190, 28.971102, 20.551619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.158979, 29.021347, 20.406952>,  <29.466961, 29.105089, 20.165842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.158979, 29.021347, 20.406952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341986, -0.932908, 0.112823,
		0.538714, 0.293010, 0.789894,
		-0.769956, -0.209353, 0.602776,
		28.927992, 28.958542, 20.587784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699680, 28.791277, 20.833084>,  <29.466961, 29.105089, 20.165842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699680, 28.791277, 20.833084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.319351, 28.673923, 20.793365>,  <29.091154, 28.603512, 20.769533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.319351, 28.673923, 20.793365>,  <29.699680, 28.791277, 20.833084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319351, 28.673923, 20.793365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304583, -0.943883, -0.127729,
		-0.056252, -0.151693, 0.986825,
		-0.950823, -0.293385, -0.099298,
		29.034103, 28.585909, 20.763577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491709, 28.280180, 21.419455>,  <29.699680, 28.791277, 20.833084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491709, 28.280180, 21.419455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.290585, 28.225780, 21.078003>,  <29.169910, 28.193140, 20.873133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.290585, 28.225780, 21.078003>,  <29.491709, 28.280180, 21.419455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290585, 28.225780, 21.078003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167310, -0.984182, 0.058248,
		-0.848049, -0.113532, 0.517613,
		-0.502813, -0.135999, -0.853630,
		29.139740, 28.184980, 20.821915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996738, 27.698792, 21.514948>,  <29.491709, 28.280180, 21.419455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996738, 27.698792, 21.514948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.030151, 27.744171, 21.118938>,  <29.050200, 27.771399, 20.881332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.030151, 27.744171, 21.118938>,  <28.996738, 27.698792, 21.514948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030151, 27.744171, 21.118938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291805, -0.952733, -0.084557,
		-0.952823, -0.281831, -0.112690,
		0.083533, 0.113451, -0.990026,
		29.055212, 27.778206, 20.821930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644711, 27.112242, 21.194662>,  <28.996738, 27.698792, 21.514948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644711, 27.112242, 21.194662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.897768, 27.247948, 20.916191>,  <29.049603, 27.329372, 20.749109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.897768, 27.247948, 20.916191>,  <28.644711, 27.112242, 21.194662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897768, 27.247948, 20.916191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287654, -0.937568, -0.195501,
		-0.719039, -0.076575, -0.690738,
		0.632644, 0.339266, -0.696175,
		29.087561, 27.349728, 20.707338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.535259, 26.673931, 20.604494>,  <28.644711, 27.112242, 21.194662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.535259, 26.673931, 20.604494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.902418, 26.828686, 20.569199>,  <29.122713, 26.921539, 20.548021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.902418, 26.828686, 20.569199>,  <28.535259, 26.673931, 20.604494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902418, 26.828686, 20.569199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379235, -0.920717, -0.091983,
		-0.116829, 0.050968, -0.991843,
		0.917895, 0.386888, -0.088237,
		29.177786, 26.944752, 20.542727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862698, 26.162533, 20.210516>,  <28.535259, 26.673931, 20.604494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862698, 26.162533, 20.210516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.156809, 26.381897, 20.369820>,  <29.333277, 26.513515, 20.465401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.156809, 26.381897, 20.369820>,  <28.862698, 26.162533, 20.210516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156809, 26.381897, 20.369820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560401, -0.822420, 0.097855,
		0.381200, 0.151233, -0.912039,
		0.735280, 0.548410, 0.398258,
		29.377394, 26.546419, 20.489298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416834, 25.937729, 19.856119>,  <28.862698, 26.162533, 20.210516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416834, 25.937729, 19.856119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.569786, 26.119820, 20.177753>,  <29.661558, 26.229074, 20.370735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.569786, 26.119820, 20.177753>,  <29.416834, 25.937729, 19.856119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569786, 26.119820, 20.177753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513708, -0.828070, 0.224511,
		0.768043, 0.327217, -0.550490,
		0.382380, 0.455225, 0.804087,
		29.684500, 26.256388, 20.418980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.177219, 26.065041, 19.750521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.120159, 26.018585, 20.143696>,  <30.085924, 25.990713, 20.379601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.120159, 26.018585, 20.143696>,  <30.177219, 26.065041, 19.750521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120159, 26.018585, 20.143696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722829, -0.690634, 0.023300,
		0.676144, 0.713818, 0.182464,
		-0.142649, -0.116136, 0.982936,
		30.077364, 25.983744, 20.438576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910128, 25.880783, 19.988579>,  <30.177219, 26.065041, 19.750521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910128, 25.880783, 19.988579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.660189, 25.807919, 20.292259>,  <30.510225, 25.764200, 20.474468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.660189, 25.807919, 20.292259>,  <30.910128, 25.880783, 19.988579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660189, 25.807919, 20.292259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541658, -0.801465, 0.253497,
		0.562295, 0.569623, 0.599461,
		-0.624845, -0.182163, 0.759200,
		30.472734, 25.753269, 20.520020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363260, 25.779205, 20.477854>,  <30.910128, 25.880783, 19.988579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363260, 25.779205, 20.477854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.032408, 25.609894, 20.625740>,  <30.833897, 25.508307, 20.714472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.032408, 25.609894, 20.625740>,  <31.363260, 25.779205, 20.477854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032408, 25.609894, 20.625740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530223, -0.805821, 0.263659,
		0.186324, 0.414112, 0.890951,
		-0.827132, -0.423277, 0.369716,
		30.784267, 25.482910, 20.736654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453951, 25.469976, 21.118586>,  <31.363260, 25.779205, 20.477854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453951, 25.469976, 21.118586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.135740, 25.264793, 20.989582>,  <30.944815, 25.141684, 20.912180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.135740, 25.264793, 20.989582>,  <31.453951, 25.469976, 21.118586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135740, 25.264793, 20.989582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388625, -0.840319, 0.377935,
		-0.464875, 0.175322, 0.867844,
		-0.795526, -0.512959, -0.322508,
		30.897083, 25.110907, 20.892830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277172, 25.017256, 21.687580>,  <31.453951, 25.469976, 21.118586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277172, 25.017256, 21.687580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.071341, 24.847343, 21.389648>,  <30.947842, 24.745396, 21.210890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.071341, 24.847343, 21.389648>,  <31.277172, 25.017256, 21.687580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071341, 24.847343, 21.389648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337439, -0.898891, 0.279515,
		-0.788253, -0.107502, 0.605889,
		-0.514580, -0.424779, -0.744829,
		30.916967, 24.719910, 21.166201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884787, 24.368986, 21.926504>,  <31.277172, 25.017256, 21.687580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884787, 24.368986, 21.926504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.879370, 24.299759, 21.532578>,  <30.876120, 24.258223, 21.296221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.879370, 24.299759, 21.532578>,  <30.884787, 24.368986, 21.926504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879370, 24.299759, 21.532578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187054, -0.967958, 0.167534,
		-0.982256, -0.181944, 0.045484,
		-0.013544, -0.173069, -0.984817,
		30.875307, 24.247839, 21.237133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.495850, 23.705027, 21.840097>,  <30.884787, 24.368986, 21.926504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.495850, 23.705027, 21.840097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.713476, 23.769341, 21.510700>,  <30.844051, 23.807930, 21.313063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.713476, 23.769341, 21.510700>,  <30.495850, 23.705027, 21.840097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713476, 23.769341, 21.510700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282342, -0.959314, -0.000768,
		-0.790112, -0.232089, -0.567325,
		0.544064, 0.160786, -0.823493,
		30.876696, 23.817577, 21.263653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220713, 23.241211, 21.238438>,  <30.495850, 23.705027, 21.840097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220713, 23.241211, 21.238438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.601658, 23.337765, 21.163887>,  <30.830225, 23.395697, 21.119156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.601658, 23.337765, 21.163887>,  <30.220713, 23.241211, 21.238438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601658, 23.337765, 21.163887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207674, -0.960873, -0.183287,
		-0.223327, 0.135850, -0.965230,
		0.952364, 0.241386, -0.186377,
		30.887367, 23.410181, 21.107973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304533, 22.843021, 20.656883>,  <30.220713, 23.241211, 21.238438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304533, 22.843021, 20.656883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.661598, 22.954956, 20.798214>,  <30.875837, 23.022116, 20.883013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.661598, 22.954956, 20.798214>,  <30.304533, 22.843021, 20.656883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661598, 22.954956, 20.798214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405515, -0.840816, -0.358588,
		0.196739, 0.463379, -0.864045,
		0.892665, 0.279836, 0.353328,
		30.929398, 23.038906, 20.904213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784012, 22.703283, 20.096857>,  <30.304533, 22.843021, 20.656883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784012, 22.703283, 20.096857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.994392, 22.709141, 20.437012>,  <31.120621, 22.712654, 20.641106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.994392, 22.709141, 20.437012>,  <30.784012, 22.703283, 20.096857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994392, 22.709141, 20.437012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425006, -0.870592, -0.247870,
		0.736711, 0.491788, -0.464113,
		0.525952, 0.014642, 0.850388,
		31.152178, 22.713533, 20.692127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424986, 22.750051, 19.875813>,  <30.784012, 22.703283, 20.096857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424986, 22.750051, 19.875813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.416702, 22.599747, 20.246407>,  <31.411732, 22.509563, 20.468763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.416702, 22.599747, 20.246407>,  <31.424986, 22.750051, 19.875813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416702, 22.599747, 20.246407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285171, -0.890407, -0.354758,
		0.958253, 0.256860, 0.125594,
		-0.020706, -0.375764, 0.926484,
		31.410490, 22.487017, 20.524351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979069, 22.233459, 19.981499>,  <31.424986, 22.750051, 19.875813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979069, 22.233459, 19.981499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.718666, 22.148804, 20.273087>,  <31.562424, 22.098011, 20.448040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.718666, 22.148804, 20.273087>,  <31.979069, 22.233459, 19.981499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718666, 22.148804, 20.273087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094776, -0.930167, -0.354692,
		0.753132, -0.299996, 0.585487,
		-0.651007, -0.211639, 0.728971,
		31.523363, 22.085312, 20.491777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220764, 21.588755, 20.326002>,  <31.979069, 22.233459, 19.981499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220764, 21.588755, 20.326002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.837114, 21.613907, 20.436371>,  <31.606926, 21.628998, 20.502592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.837114, 21.613907, 20.436371>,  <32.220764, 21.588755, 20.326002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837114, 21.613907, 20.436371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097762, -0.988597, -0.114533,
		0.265575, -0.136826, 0.954332,
		-0.959121, 0.062881, 0.275923,
		31.549377, 21.632771, 20.519148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.044704, 21.255610, 20.936264>,  <32.220764, 21.588755, 20.326002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.044704, 21.255610, 20.936264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.690794, 21.241352, 20.750404>,  <31.478447, 21.232798, 20.638887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.690794, 21.241352, 20.750404>,  <32.044704, 21.255610, 20.936264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690794, 21.241352, 20.750404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025565, -0.991856, 0.124772,
		-0.465314, 0.122274, 0.876660,
		-0.884776, -0.035646, -0.464650,
		31.425362, 21.230658, 20.611010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735992, 20.714334, 21.376839>,  <32.044704, 21.255610, 20.936264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735992, 20.714334, 21.376839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.512280, 20.757812, 21.048111>,  <31.378052, 20.783899, 20.850874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.512280, 20.757812, 21.048111>,  <31.735992, 20.714334, 21.376839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512280, 20.757812, 21.048111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098732, -0.993044, -0.064148,
		-0.823076, 0.045263, 0.566125,
		-0.559284, 0.108694, -0.821819,
		31.344494, 20.790421, 20.801565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123594, 20.528076, 21.615847>,  <31.735992, 20.714334, 21.376839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123594, 20.528076, 21.615847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.129858, 20.487556, 21.217953>,  <31.133617, 20.463243, 20.979218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.129858, 20.487556, 21.217953>,  <31.123594, 20.528076, 21.615847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129858, 20.487556, 21.217953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234456, -0.967490, 0.094835,
		-0.972001, 0.231736, -0.038903,
		0.015662, -0.101300, -0.994733,
		31.134556, 20.457167, 20.919533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503172, 20.124250, 21.488874>,  <31.123594, 20.528076, 21.615847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503172, 20.124250, 21.488874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744143, 20.104317, 21.170227>,  <30.888725, 20.092358, 20.979038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.744143, 20.104317, 21.170227>,  <30.503172, 20.124250, 21.488874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744143, 20.104317, 21.170227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095446, -0.995385, -0.009912,
		-0.792448, 0.082005, -0.604402,
		0.602425, -0.049833, -0.796618,
		30.924870, 20.089367, 20.931242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175907, 19.602854, 21.107315>,  <30.503172, 20.124250, 21.488874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175907, 19.602854, 21.107315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.558048, 19.644978, 20.996887>,  <30.787333, 19.670252, 20.930630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.558048, 19.644978, 20.996887>,  <30.175907, 19.602854, 21.107315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558048, 19.644978, 20.996887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102563, -0.994427, -0.024411,
		-0.277102, -0.004993, -0.960828,
		0.955351, 0.105309, -0.276070,
		30.844654, 19.676571, 20.914066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199263, 18.921951, 20.705618>,  <30.175907, 19.602854, 21.107315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199263, 18.921951, 20.705618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574619, 19.046528, 20.765522>,  <30.799833, 19.121273, 20.801464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574619, 19.046528, 20.765522>,  <30.199263, 18.921951, 20.705618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574619, 19.046528, 20.765522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309962, -0.950151, 0.033720,
		0.152795, 0.014776, -0.988147,
		0.938391, 0.311440, 0.149758,
		30.856136, 19.139959, 20.810450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524649, 18.577080, 20.288149>,  <30.199263, 18.921951, 20.705618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524649, 18.577080, 20.288149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.796644, 18.692562, 20.557747>,  <30.959841, 18.761852, 20.719505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.796644, 18.692562, 20.557747>,  <30.524649, 18.577080, 20.288149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796644, 18.692562, 20.557747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315544, -0.944967, 0.086430,
		0.661854, 0.153903, -0.733664,
		0.679987, 0.288707, 0.673993,
		31.000641, 18.779175, 20.759945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958651, 18.105953, 20.185982>,  <30.524649, 18.577080, 20.288149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958651, 18.105953, 20.185982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.063519, 18.269756, 20.535511>,  <31.126440, 18.368038, 20.745230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.063519, 18.269756, 20.535511>,  <30.958651, 18.105953, 20.185982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063519, 18.269756, 20.535511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225259, -0.906453, 0.357215,
		0.938363, 0.103185, -0.329891,
		0.262172, 0.409508, 0.873825,
		31.142170, 18.392609, 20.797659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597567, 17.839645, 20.412312>,  <30.958651, 18.105953, 20.185982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597567, 17.839645, 20.412312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453506, 17.949474, 20.768940>,  <31.367069, 18.015371, 20.982918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.453506, 17.949474, 20.768940>,  <31.597567, 17.839645, 20.412312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453506, 17.949474, 20.768940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207892, -0.908052, 0.363625,
		0.909435, 0.316311, 0.269955,
		-0.360152, 0.274572, 0.891572,
		31.345461, 18.031845, 21.036411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119480, 17.603746, 20.984644>,  <31.597567, 17.839645, 20.412312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119480, 17.603746, 20.984644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.737793, 17.610550, 21.104092>,  <31.508780, 17.614632, 21.175760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.737793, 17.610550, 21.104092>,  <32.119480, 17.603746, 20.984644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737793, 17.610550, 21.104092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116267, -0.898775, 0.422712,
		0.275583, 0.438080, 0.855652,
		-0.954220, 0.017008, 0.298621,
		31.451527, 17.615652, 21.193678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750896, 17.244785, 21.200871>,  <32.119480, 17.603746, 20.984644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750896, 17.244785, 21.200871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.035706, 17.209904, 21.479561>,  <33.206589, 17.188974, 21.646774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.035706, 17.209904, 21.479561>,  <32.750896, 17.244785, 21.200871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035706, 17.209904, 21.479561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247999, 0.959539, -0.133345,
		-0.656906, 0.267731, 0.704837,
		0.712020, -0.087203, 0.696724,
		33.249313, 17.183743, 21.688578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644550, 17.833786, 21.835363>,  <32.750896, 17.244785, 21.200871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644550, 17.833786, 21.835363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018223, 17.703663, 21.776726>,  <33.242424, 17.625589, 21.741543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018223, 17.703663, 21.776726>,  <32.644550, 17.833786, 21.835363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018223, 17.703663, 21.776726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343738, 0.930678, 0.125226,
		0.095694, -0.167373, 0.981238,
		0.934177, -0.325306, -0.146593,
		33.298477, 17.606071, 21.732748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073532, 18.021145, 22.410404>,  <32.644550, 17.833786, 21.835363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073532, 18.021145, 22.410404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326714, 17.960697, 22.106686>,  <33.478622, 17.924429, 21.924454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326714, 17.960697, 22.106686>,  <33.073532, 18.021145, 22.410404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326714, 17.960697, 22.106686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379013, 0.915681, 0.133703,
		0.675069, -0.372411, 0.636861,
		0.632954, -0.151120, -0.759297,
		33.516602, 17.915361, 21.878897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694180, 18.348301, 22.601912>,  <33.073532, 18.021145, 22.410404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694180, 18.348301, 22.601912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.735241, 18.298557, 22.207146>,  <33.759876, 18.268711, 21.970287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.735241, 18.298557, 22.207146>,  <33.694180, 18.348301, 22.601912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735241, 18.298557, 22.207146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417808, 0.905782, -0.070677,
		0.902718, -0.405085, 0.144937,
		0.102651, -0.124357, -0.986913,
		33.766037, 18.261250, 21.911072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393738, 18.325087, 22.477310>,  <33.694180, 18.348301, 22.601912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393738, 18.325087, 22.477310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153072, 18.472778, 22.193996>,  <34.008671, 18.561394, 22.024008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.153072, 18.472778, 22.193996>,  <34.393738, 18.325087, 22.477310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153072, 18.472778, 22.193996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364343, 0.915985, 0.168003,
		0.710812, -0.156978, -0.685642,
		-0.601665, 0.369228, -0.708287,
		33.972572, 18.583546, 21.981510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826298, 18.825274, 22.052990>,  <34.393738, 18.325087, 22.477310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826298, 18.825274, 22.052990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.448891, 18.925213, 21.965950>,  <34.222446, 18.985176, 21.913727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.448891, 18.925213, 21.965950>,  <34.826298, 18.825274, 22.052990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448891, 18.925213, 21.965950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235149, 0.967648, 0.091448,
		0.233408, 0.035115, -0.971745,
		-0.943518, 0.249849, -0.217600,
		34.165836, 19.000168, 21.900669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985210, 19.399498, 21.598156>,  <34.826298, 18.825274, 22.052990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985210, 19.399498, 21.598156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589687, 19.428928, 21.650078>,  <34.352375, 19.446587, 21.681231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589687, 19.428928, 21.650078>,  <34.985210, 19.399498, 21.598156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589687, 19.428928, 21.650078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046765, 0.978955, -0.198645,
		-0.141688, -0.190352, -0.971438,
		-0.988806, 0.073575, 0.129804,
		34.293045, 19.451000, 21.689018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767365, 19.817701, 21.086731>,  <34.985210, 19.399498, 21.598156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767365, 19.817701, 21.086731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.461933, 19.832058, 21.344620>,  <34.278675, 19.840672, 21.499353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.461933, 19.832058, 21.344620>,  <34.767365, 19.817701, 21.086731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461933, 19.832058, 21.344620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053051, 0.991592, -0.118032,
		-0.643536, -0.124329, -0.755251,
		-0.763575, 0.035891, 0.644721,
		34.232861, 19.842825, 21.538036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173424, 20.083464, 20.714249>,  <34.767365, 19.817701, 21.086731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173424, 20.083464, 20.714249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096252, 20.152081, 21.100689>,  <34.049950, 20.193251, 21.332554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096252, 20.152081, 21.100689>,  <34.173424, 20.083464, 20.714249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096252, 20.152081, 21.100689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163267, 0.965261, -0.203999,
		-0.967534, -0.197090, -0.158218,
		-0.192927, 0.171544, 0.966101,
		34.038376, 20.203545, 21.390520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513496, 20.455740, 20.649160>,  <34.173424, 20.083464, 20.714249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513496, 20.455740, 20.649160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699520, 20.527882, 20.995846>,  <33.811134, 20.571167, 21.203857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699520, 20.527882, 20.995846>,  <33.513496, 20.455740, 20.649160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699520, 20.527882, 20.995846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258557, 0.964013, -0.061866,
		-0.846680, -0.195323, 0.494956,
		0.465060, 0.180355, 0.866713,
		33.839039, 20.581987, 21.255859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118706, 20.908440, 20.856180>,  <33.513496, 20.455740, 20.649160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118706, 20.908440, 20.856180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.446690, 20.964130, 21.078274>,  <33.643478, 20.997545, 21.211531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.446690, 20.964130, 21.078274>,  <33.118706, 20.908440, 20.856180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446690, 20.964130, 21.078274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294634, 0.934268, 0.200835,
		-0.490778, -0.328267, 0.807080,
		0.819956, 0.139228, 0.555236,
		33.692677, 21.005899, 21.244844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884457, 21.284075, 21.392582>,  <33.118706, 20.908440, 20.856180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884457, 21.284075, 21.392582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.276905, 21.359577, 21.409431>,  <33.512375, 21.404879, 21.419540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.276905, 21.359577, 21.409431>,  <32.884457, 21.284075, 21.392582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276905, 21.359577, 21.409431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192932, 0.970361, 0.145522,
		-0.013406, -0.150902, 0.988458,
		0.981121, 0.188754, 0.042123,
		33.571239, 21.416204, 21.422068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032085, 21.630573, 22.059155>,  <32.884457, 21.284075, 21.392582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032085, 21.630573, 22.059155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.323208, 21.730167, 21.803558>,  <33.497883, 21.789923, 21.650202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.323208, 21.730167, 21.803558>,  <33.032085, 21.630573, 22.059155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323208, 21.730167, 21.803558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187194, 0.968508, 0.164170,
		0.659742, 0.000131, 0.751492,
		0.727805, 0.248984, -0.638989,
		33.541550, 21.804863, 21.611862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448330, 22.224499, 22.335453>,  <33.032085, 21.630573, 22.059155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448330, 22.224499, 22.335453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527126, 22.216202, 21.943378>,  <33.574402, 22.211224, 21.708134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.527126, 22.216202, 21.943378>,  <33.448330, 22.224499, 22.335453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527126, 22.216202, 21.943378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038018, 0.998863, -0.028780,
		0.979669, 0.042934, 0.195973,
		0.196986, -0.020745, -0.980187,
		33.586224, 22.209978, 21.649323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742737, 22.841900, 22.212828>,  <33.448330, 22.224499, 22.335453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742737, 22.841900, 22.212828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.686661, 22.738644, 21.830475>,  <33.653015, 22.676689, 21.601063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.686661, 22.738644, 21.830475>,  <33.742737, 22.841900, 22.212828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686661, 22.738644, 21.830475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030809, 0.963811, -0.264801,
		0.989645, -0.066572, -0.127162,
		-0.140189, -0.258142, -0.955882,
		33.644604, 22.661201, 21.543711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167477, 23.292599, 21.870125>,  <33.742737, 22.841900, 22.212828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167477, 23.292599, 21.870125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907467, 23.161942, 21.595673>,  <33.751461, 23.083548, 21.431002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.907467, 23.161942, 21.595673>,  <34.167477, 23.292599, 21.870125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907467, 23.161942, 21.595673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002556, 0.901961, -0.431811,
		0.759909, -0.282441, -0.585462,
		-0.650025, -0.326641, -0.686130,
		33.712460, 23.063950, 21.389833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486526, 23.498373, 21.213411>,  <34.167477, 23.292599, 21.870125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486526, 23.498373, 21.213411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096352, 23.439938, 21.147461>,  <33.862247, 23.404877, 21.107891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.096352, 23.439938, 21.147461>,  <34.486526, 23.498373, 21.213411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096352, 23.439938, 21.147461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071380, 0.917690, -0.390834,
		0.208402, -0.369464, -0.905574,
		-0.975435, -0.146091, -0.164876,
		33.803722, 23.396111, 21.097998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366898, 23.684074, 20.490536>,  <34.486526, 23.498373, 21.213411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366898, 23.684074, 20.490536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029800, 23.740524, 20.698330>,  <33.827541, 23.774395, 20.823008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029800, 23.740524, 20.698330>,  <34.366898, 23.684074, 20.490536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029800, 23.740524, 20.698330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111602, 0.898254, -0.425069,
		-0.526620, -0.416200, -0.741248,
		-0.842743, 0.141125, 0.519488,
		33.776978, 23.782862, 20.854176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958534, 24.270067, 20.151995>,  <34.366898, 23.684074, 20.490536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958534, 24.270067, 20.151995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.753712, 24.237766, 20.494053>,  <33.630817, 24.218386, 20.699287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.753712, 24.237766, 20.494053>,  <33.958534, 24.270067, 20.151995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753712, 24.237766, 20.494053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264543, 0.962004, -0.067566,
		-0.817200, -0.260821, -0.513962,
		-0.512057, -0.080750, 0.855148,
		33.600094, 24.213541, 20.750597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306007, 24.502699, 20.013922>,  <33.958534, 24.270067, 20.151995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306007, 24.502699, 20.013922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.372025, 24.543198, 20.406353>,  <33.411633, 24.567497, 20.641811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.372025, 24.543198, 20.406353>,  <33.306007, 24.502699, 20.013922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372025, 24.543198, 20.406353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434718, 0.900349, -0.019783,
		-0.885315, -0.423226, 0.192608,
		0.165041, 0.101245, 0.981076,
		33.421535, 24.573570, 20.700676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721333, 24.792229, 20.178743>,  <33.306007, 24.502699, 20.013922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721333, 24.792229, 20.178743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.971527, 24.871899, 20.480495>,  <33.121643, 24.919701, 20.661547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.971527, 24.871899, 20.480495>,  <32.721333, 24.792229, 20.178743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971527, 24.871899, 20.480495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350976, 0.935347, 0.044056,
		-0.696835, -0.292326, 0.654956,
		0.625490, 0.199174, 0.754382,
		33.159176, 24.931650, 20.706810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.825949, 40.882507, 18.180799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.145016, 40.779099, 18.398750>,  <24.336456, 40.717052, 18.529522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.145016, 40.779099, 18.398750>,  <23.825949, 40.882507, 18.180799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.145016, 40.779099, 18.398750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573357, -0.044857, 0.818077,
		-0.187050, -0.964963, -0.184007,
		0.797668, -0.258523, 0.544878,
		24.384315, 40.701542, 18.562214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.563004, 40.256763, 18.526686>,  <23.825949, 40.882507, 18.180799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.563004, 40.256763, 18.526686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.874025, 40.418644, 18.719196>,  <24.060638, 40.515774, 18.834703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.874025, 40.418644, 18.719196>,  <23.563004, 40.256763, 18.526686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.874025, 40.418644, 18.719196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497133, -0.073045, 0.864594,
		0.385057, -0.911527, 0.144394,
		0.777554, 0.404701, 0.481277,
		24.107292, 40.540054, 18.863579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.782457, 39.813576, 18.934004>,  <23.563004, 40.256763, 18.526686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.782457, 39.813576, 18.934004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.918970, 40.157799, 19.085251>,  <24.000877, 40.364330, 19.175999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.918970, 40.157799, 19.085251>,  <23.782457, 39.813576, 18.934004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.918970, 40.157799, 19.085251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437834, -0.210422, 0.874085,
		0.831762, -0.463862, 0.304966,
		0.341283, 0.860555, 0.378115,
		24.021355, 40.415966, 19.198685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.044796, 39.602573, 19.633720>,  <23.782457, 39.813576, 18.934004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.044796, 39.602573, 19.633720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.967791, 39.994976, 19.624142>,  <23.921587, 40.230415, 19.618395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.967791, 39.994976, 19.624142>,  <24.044796, 39.602573, 19.633720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.967791, 39.994976, 19.624142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506222, -0.078379, 0.858834,
		0.840641, 0.177458, 0.511694,
		-0.192513, 0.981002, -0.023945,
		23.910036, 40.289276, 19.616959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.293381, 39.827278, 20.287395>,  <24.044796, 39.602573, 19.633720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.293381, 39.827278, 20.287395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.039053, 40.103455, 20.149395>,  <23.886456, 40.269161, 20.066595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.039053, 40.103455, 20.149395>,  <24.293381, 39.827278, 20.287395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.039053, 40.103455, 20.149395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531403, -0.067416, 0.844432,
		0.559771, 0.720241, 0.409766,
		-0.635819, 0.690440, -0.345001,
		23.848307, 40.310585, 20.045895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.152985, 40.211918, 20.876177>,  <24.293381, 39.827278, 20.287395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.152985, 40.211918, 20.876177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.863382, 40.252991, 20.603333>,  <23.689621, 40.277634, 20.439627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.863382, 40.252991, 20.603333>,  <24.152985, 40.211918, 20.876177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.863382, 40.252991, 20.603333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687691, -0.184616, 0.702138,
		-0.053834, 0.977432, 0.204274,
		-0.724005, 0.102678, -0.682110,
		23.646181, 40.283794, 20.398699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.523470, 40.405460, 21.357698>,  <24.152985, 40.211918, 20.876177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.523470, 40.405460, 21.357698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.334736, 40.321739, 21.015106>,  <23.221495, 40.271507, 20.809551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.334736, 40.321739, 21.015106>,  <23.523470, 40.405460, 21.357698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.334736, 40.321739, 21.015106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782342, -0.348574, 0.516175,
		-0.406586, 0.913612, 0.000720,
		-0.471835, -0.209307, -0.856483,
		23.193186, 40.258945, 20.758162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.728327, 40.746635, 21.299120>,  <23.523470, 40.405460, 21.357698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.728327, 40.746635, 21.299120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.779518, 40.440746, 21.046509>,  <22.810232, 40.257214, 20.894943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.779518, 40.440746, 21.046509>,  <22.728327, 40.746635, 21.299120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.779518, 40.440746, 21.046509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675496, -0.533443, 0.509061,
		-0.726173, 0.361444, -0.584835,
		0.127979, -0.764720, -0.631526,
		22.817911, 40.211330, 20.857052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.049570, 40.488422, 21.028170>,  <22.728327, 40.746635, 21.299120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.049570, 40.488422, 21.028170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.301218, 40.180298, 20.986534>,  <22.452208, 39.995422, 20.961552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.301218, 40.180298, 20.986534>,  <22.049570, 40.488422, 21.028170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301218, 40.180298, 20.986534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628059, -0.582646, 0.515816,
		-0.457983, -0.259137, -0.850353,
		0.629122, -0.770306, -0.104089,
		22.489954, 39.949207, 20.955307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.568600, 40.013100, 20.951950>,  <22.049570, 40.488422, 21.028170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.568600, 40.013100, 20.951950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.894697, 39.787758, 21.005627>,  <22.090355, 39.652554, 21.037832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.894697, 39.787758, 21.005627>,  <21.568600, 40.013100, 20.951950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.894697, 39.787758, 21.005627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563253, -0.717466, 0.409865,
		-0.134621, -0.409724, -0.902221,
		0.815245, -0.563355, 0.134193,
		22.139271, 39.618752, 21.045885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.406446, 39.300621, 20.648558>,  <21.568600, 40.013100, 20.951950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.406446, 39.300621, 20.648558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.710415, 39.254093, 20.904366>,  <21.892796, 39.226177, 21.057850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.710415, 39.254093, 20.904366>,  <21.406446, 39.300621, 20.648558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.710415, 39.254093, 20.904366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438947, -0.817480, 0.372897,
		0.479420, -0.564089, -0.672279,
		0.759922, -0.116321, 0.639522,
		21.938391, 39.219196, 21.096222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.545340, 38.498531, 20.676167>,  <21.406446, 39.300621, 20.648558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.545340, 38.498531, 20.676167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.708723, 38.663578, 21.001842>,  <21.806753, 38.762608, 21.197248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.708723, 38.663578, 21.001842>,  <21.545340, 38.498531, 20.676167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.708723, 38.663578, 21.001842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248666, -0.807954, 0.534205,
		0.878253, -0.420662, -0.227411,
		0.408458, 0.412618, 0.814192,
		21.831261, 38.787365, 21.246099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.901539, 37.928051, 21.004044>,  <21.545340, 38.498531, 20.676167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.901539, 37.928051, 21.004044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.853863, 38.217712, 21.275749>,  <21.825258, 38.391510, 21.438772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.853863, 38.217712, 21.275749>,  <21.901539, 37.928051, 21.004044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.853863, 38.217712, 21.275749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227415, -0.685864, 0.691283,
		0.966476, -0.072082, 0.246430,
		-0.119189, 0.724151, 0.679264,
		21.818106, 38.434959, 21.479528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.362186, 37.773624, 21.600599>,  <21.901539, 37.928051, 21.004044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.362186, 37.773624, 21.600599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.072144, 38.014332, 21.734520>,  <21.898117, 38.158756, 21.814873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.072144, 38.014332, 21.734520>,  <22.362186, 37.773624, 21.600599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.072144, 38.014332, 21.734520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189509, -0.641782, 0.743103,
		0.662047, 0.475382, 0.579401,
		-0.725107, 0.601771, 0.334801,
		21.854612, 38.194862, 21.834961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.549517, 37.857204, 22.240376>,  <22.362186, 37.773624, 21.600599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.549517, 37.857204, 22.240376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.157326, 37.914097, 22.186073>,  <21.922010, 37.948235, 22.153492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.157326, 37.914097, 22.186073>,  <22.549517, 37.857204, 22.240376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.157326, 37.914097, 22.186073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193646, -0.578876, 0.792088,
		0.034078, 0.802914, 0.595120,
		-0.980479, 0.142235, -0.135754,
		21.863182, 37.956768, 22.145348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.338823, 37.486214, 22.770830>,  <22.549517, 37.857204, 22.240376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.338823, 37.486214, 22.770830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.969395, 37.566528, 22.640171>,  <21.747738, 37.614716, 22.561775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.969395, 37.566528, 22.640171>,  <22.338823, 37.486214, 22.770830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.969395, 37.566528, 22.640171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329447, -0.851404, 0.408137,
		-0.196161, 0.484557, 0.852482,
		-0.923572, 0.200787, -0.326648,
		21.692324, 37.626766, 22.542177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.846445, 37.324593, 23.288782>,  <22.338823, 37.486214, 22.770830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.846445, 37.324593, 23.288782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.642456, 37.302727, 22.945400>,  <21.520063, 37.289608, 22.739372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.642456, 37.302727, 22.945400>,  <21.846445, 37.324593, 23.288782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.642456, 37.302727, 22.945400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282308, -0.932065, 0.227062,
		-0.812546, 0.358143, 0.459894,
		-0.509972, -0.054667, -0.858452,
		21.489464, 37.286327, 22.687864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.336927, 36.839897, 23.516264>,  <21.846445, 37.324593, 23.288782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.336927, 36.839897, 23.516264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.277086, 36.836414, 23.120781>,  <21.241180, 36.834324, 22.883492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.277086, 36.836414, 23.120781>,  <21.336927, 36.839897, 23.516264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.277086, 36.836414, 23.120781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244635, -0.968545, 0.045545,
		-0.958005, 0.248686, 0.142768,
		-0.149604, -0.008706, -0.988708,
		21.232204, 36.833801, 22.824169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.673540, 36.402691, 23.414646>,  <21.336927, 36.839897, 23.516264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.673540, 36.402691, 23.414646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.866663, 36.432018, 23.065586>,  <20.982536, 36.449615, 22.856150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.866663, 36.432018, 23.065586>,  <20.673540, 36.402691, 23.414646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.866663, 36.432018, 23.065586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277140, -0.932481, -0.231675,
		-0.830717, 0.353701, -0.429890,
		0.482807, 0.073317, -0.872652,
		21.011505, 36.454014, 22.803791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.212748, 36.263721, 22.838470>,  <20.673540, 36.402691, 23.414646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.212748, 36.263721, 22.838470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.586067, 36.161823, 22.737232>,  <20.810059, 36.100685, 22.676489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.586067, 36.161823, 22.737232>,  <20.212748, 36.263721, 22.838470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.586067, 36.161823, 22.737232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332198, -0.880136, -0.339124,
		-0.136368, 0.400582, -0.906056,
		0.933300, -0.254744, -0.253095,
		20.866056, 36.085400, 22.661304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.147926, 35.917603, 22.234509>,  <20.212748, 36.263721, 22.838470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.147926, 35.917603, 22.234509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.509478, 35.808853, 22.366623>,  <20.726408, 35.743603, 22.445892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.509478, 35.808853, 22.366623>,  <20.147926, 35.917603, 22.234509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.509478, 35.808853, 22.366623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171871, -0.937813, -0.301609,
		0.391748, 0.215850, -0.894395,
		0.903877, -0.271875, 0.330288,
		20.780642, 35.727291, 22.465710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.590223, 35.493690, 22.649755>,  <20.147926, 35.917603, 22.234509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.590223, 35.493690, 22.649755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.451759, 35.846218, 22.521099>,  <19.368681, 36.057735, 22.443905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.451759, 35.846218, 22.521099>,  <19.590223, 35.493690, 22.649755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.451759, 35.846218, 22.521099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606744, -0.051185, -0.793247,
		-0.715567, -0.469742, -0.517017,
		-0.346158, 0.881319, -0.321639,
		19.347912, 36.110615, 22.424608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.406988, 35.385410, 21.936945>,  <19.590223, 35.493690, 22.649755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.406988, 35.385410, 21.936945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.455399, 35.781597, 21.963261>,  <19.484446, 36.019310, 21.979050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.455399, 35.781597, 21.963261>,  <19.406988, 35.385410, 21.936945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.455399, 35.781597, 21.963261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609703, -0.021872, -0.792328,
		-0.783336, 0.136006, -0.606537,
		0.121027, 0.990467, 0.065790,
		19.491707, 36.078735, 21.982998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.089020, 35.620533, 21.239277>,  <19.406988, 35.385410, 21.936945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.089020, 35.620533, 21.239277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.306080, 35.913387, 21.403961>,  <19.436316, 36.089100, 21.502771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.306080, 35.913387, 21.403961>,  <19.089020, 35.620533, 21.239277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.306080, 35.913387, 21.403961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457209, 0.153718, -0.875974,
		-0.704620, 0.663586, -0.251325,
		0.542651, 0.732137, 0.411710,
		19.468876, 36.133030, 21.527473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.103670, 36.020981, 20.722179>,  <19.089020, 35.620533, 21.239277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.103670, 36.020981, 20.722179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.407404, 36.140408, 20.953442>,  <19.589645, 36.212063, 21.092199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.407404, 36.140408, 20.953442>,  <19.103670, 36.020981, 20.722179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.407404, 36.140408, 20.953442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558237, 0.157624, -0.814571,
		-0.334336, 0.941282, -0.046982,
		0.759336, 0.298567, 0.578158,
		19.635204, 36.229977, 21.126888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.319801, 36.698090, 20.399586>,  <19.103670, 36.020981, 20.722179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.319801, 36.698090, 20.399586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.608280, 36.527840, 20.618206>,  <19.781368, 36.425690, 20.749378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.608280, 36.527840, 20.618206>,  <19.319801, 36.698090, 20.399586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.608280, 36.527840, 20.618206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642429, 0.115776, -0.757550,
		0.259152, 0.897464, 0.356929,
		0.721197, -0.425622, 0.546553,
		19.824640, 36.400154, 20.782171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.899900, 37.157475, 20.429518>,  <19.319801, 36.698090, 20.399586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.899900, 37.157475, 20.429518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.084072, 36.811989, 20.511501>,  <20.194574, 36.604698, 20.560692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.084072, 36.811989, 20.511501>,  <19.899900, 37.157475, 20.429518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.084072, 36.811989, 20.511501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709610, 0.219389, -0.669568,
		0.533347, 0.453730, 0.713911,
		0.460428, -0.863711, 0.204961,
		20.222200, 36.552876, 20.572990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.655312, 37.308796, 20.534378>,  <19.899900, 37.157475, 20.429518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.655312, 37.308796, 20.534378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.607725, 36.921661, 20.445705>,  <20.579174, 36.689381, 20.392502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.607725, 36.921661, 20.445705>,  <20.655312, 37.308796, 20.534378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.607725, 36.921661, 20.445705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760687, 0.054650, -0.646814,
		0.638124, -0.245578, 0.729719,
		-0.118964, -0.967835, -0.221682,
		20.572037, 36.631310, 20.379200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.363640, 37.111046, 20.498945>,  <20.655312, 37.308796, 20.534378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.363640, 37.111046, 20.498945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.137468, 36.843941, 20.305294>,  <21.001764, 36.683678, 20.189104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.137468, 36.843941, 20.305294>,  <21.363640, 37.111046, 20.498945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.137468, 36.843941, 20.305294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665952, -0.023318, -0.745630,
		0.486617, -0.744006, 0.457885,
		-0.565430, -0.667766, -0.484126,
		20.967838, 36.643612, 20.160057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.884666, 36.611488, 20.336773>,  <21.363640, 37.111046, 20.498945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.884666, 36.611488, 20.336773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.583511, 36.524338, 20.088356>,  <21.402819, 36.472046, 19.939306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.583511, 36.524338, 20.088356>,  <21.884666, 36.611488, 20.336773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.583511, 36.524338, 20.088356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651463, -0.380886, -0.656142,
		-0.093586, -0.898585, 0.428704,
		-0.752887, -0.217879, -0.621040,
		21.357645, 36.458973, 19.902044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.140324, 36.009373, 19.943214>,  <21.884666, 36.611488, 20.336773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.140324, 36.009373, 19.943214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.870176, 36.174713, 19.698914>,  <21.708088, 36.273918, 19.552332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.870176, 36.174713, 19.698914>,  <22.140324, 36.009373, 19.943214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.870176, 36.174713, 19.698914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609175, -0.154104, -0.777919,
		-0.415672, -0.897438, -0.147725,
		-0.675368, 0.413350, -0.610754,
		21.667566, 36.298717, 19.515688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.205433, 35.554646, 19.405811>,  <22.140324, 36.009373, 19.943214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.205433, 35.554646, 19.405811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.012304, 35.882656, 19.282890>,  <21.896427, 36.079464, 19.209137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.012304, 35.882656, 19.282890>,  <22.205433, 35.554646, 19.405811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.012304, 35.882656, 19.282890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457185, -0.063261, -0.887119,
		-0.746904, -0.568815, -0.344361,
		-0.482822, 0.820029, -0.307304,
		21.867458, 36.128666, 19.190699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.141077, 35.430183, 18.716034>,  <22.205433, 35.554646, 19.405811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.141077, 35.430183, 18.716034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.049154, 35.819466, 18.712868>,  <21.993999, 36.053036, 18.710968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.049154, 35.819466, 18.712868>,  <22.141077, 35.430183, 18.716034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.049154, 35.819466, 18.712868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425136, 0.093068, -0.900332,
		-0.875470, -0.210269, -0.435132,
		-0.229809, 0.973204, -0.007915,
		21.980211, 36.111427, 18.710493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.052649, 35.668159, 17.955687>,  <22.141077, 35.430183, 18.716034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.052649, 35.668159, 17.955687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.157047, 35.995796, 18.160030>,  <22.219687, 36.192379, 18.282637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.157047, 35.995796, 18.160030>,  <22.052649, 35.668159, 17.955687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.157047, 35.995796, 18.160030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518828, 0.327249, -0.789763,
		-0.814063, 0.471172, -0.339556,
		0.260995, 0.819088, 0.510858,
		22.235346, 36.241524, 18.313288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.011007, 36.246071, 17.415676>,  <22.052649, 35.668159, 17.955687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.011007, 36.246071, 17.415676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.237495, 36.363766, 17.723656>,  <22.373388, 36.434383, 17.908443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.237495, 36.363766, 17.723656>,  <22.011007, 36.246071, 17.415676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.237495, 36.363766, 17.723656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591958, 0.504856, -0.628257,
		-0.573570, 0.811508, 0.111682,
		0.566218, 0.294238, 0.769949,
		22.407360, 36.452038, 17.954639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.214098, 36.984692, 17.308929>,  <22.011007, 36.246071, 17.415676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.214098, 36.984692, 17.308929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.478811, 36.877018, 17.588810>,  <22.637640, 36.812412, 17.756739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.478811, 36.877018, 17.588810>,  <22.214098, 36.984692, 17.308929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.478811, 36.877018, 17.588810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725573, 0.464822, -0.507429,
		-0.188645, 0.843493, 0.502924,
		0.661783, -0.269184, 0.699702,
		22.677345, 36.796261, 17.798721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.731848, 37.544907, 17.327305>,  <22.214098, 36.984692, 17.308929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.731848, 37.544907, 17.327305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.895733, 37.221798, 17.496838>,  <22.994064, 37.027931, 17.598557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.895733, 37.221798, 17.496838>,  <22.731848, 37.544907, 17.327305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.895733, 37.221798, 17.496838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883920, 0.236731, -0.403292,
		0.225435, 0.539867, 0.811001,
		0.409713, -0.807776, 0.423832,
		23.018646, 36.979465, 17.623987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.375214, 37.794052, 17.607925>,  <22.731848, 37.544907, 17.327305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.375214, 37.794052, 17.607925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.406227, 37.397743, 17.563465>,  <23.424835, 37.159958, 17.536789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.406227, 37.397743, 17.563465>,  <23.375214, 37.794052, 17.607925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.406227, 37.397743, 17.563465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942474, 0.109195, -0.315942,
		0.325164, -0.080259, 0.942246,
		0.077531, -0.990775, -0.111148,
		23.429487, 37.100510, 17.530121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.956114, 37.435425, 18.075460>,  <23.375214, 37.794052, 17.607925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.956114, 37.435425, 18.075460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.888407, 37.205654, 17.755116>,  <23.847782, 37.067791, 17.562908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.888407, 37.205654, 17.755116>,  <23.956114, 37.435425, 18.075460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.888407, 37.205654, 17.755116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955169, 0.104655, -0.276947,
		0.242901, -0.811835, 0.530964,
		-0.169267, -0.574432, -0.800860,
		23.837627, 37.033325, 17.514858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.521851, 36.997787, 18.066246>,  <23.956114, 37.435425, 18.075460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.521851, 36.997787, 18.066246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.374949, 36.932037, 17.700054>,  <24.286808, 36.892590, 17.480339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.374949, 36.932037, 17.700054>,  <24.521851, 36.997787, 18.066246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.374949, 36.932037, 17.700054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930108, -0.059724, -0.362399,
		0.004892, -0.984589, 0.174817,
		-0.367254, -0.164372, -0.915481,
		24.264772, 36.882725, 17.425409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943754, 36.576706, 17.878017>,  <24.521851, 36.997787, 18.066246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943754, 36.576706, 17.878017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.790728, 36.682571, 17.523933>,  <24.698912, 36.746090, 17.311483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.790728, 36.682571, 17.523933>,  <24.943754, 36.576706, 17.878017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.790728, 36.682571, 17.523933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904681, -0.087239, -0.417063,
		-0.187608, -0.960386, -0.206066,
		-0.382564, 0.264668, -0.885209,
		24.675959, 36.761971, 17.258371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.992283, 36.024567, 17.409763>,  <24.943754, 36.576706, 17.878017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.992283, 36.024567, 17.409763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.961206, 36.358784, 17.192200>,  <24.942560, 36.559315, 17.061663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.961206, 36.358784, 17.192200>,  <24.992283, 36.024567, 17.409763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961206, 36.358784, 17.192200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834594, -0.243919, -0.493919,
		-0.545359, -0.492315, -0.678387,
		-0.077692, 0.835541, -0.543907,
		24.937899, 36.609447, 17.029028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.828943, 28.301874, 20.558157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213463, 28.384235, 20.631374>,  <28.444176, 28.433653, 20.675304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213463, 28.384235, 20.631374>,  <27.828943, 28.301874, 20.558157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213463, 28.384235, 20.631374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240988, 0.950431, 0.196485,
		-0.133514, -0.232993, 0.963270,
		0.961301, 0.205903, 0.183044,
		28.501854, 28.446007, 20.686287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730839, 28.718103, 21.092840>,  <27.828943, 28.301874, 20.558157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730839, 28.718103, 21.092840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105371, 28.787121, 20.970524>,  <28.330091, 28.828531, 20.897135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105371, 28.787121, 20.970524>,  <27.730839, 28.718103, 21.092840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105371, 28.787121, 20.970524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180425, 0.983585, 0.002529,
		0.301206, 0.052804, 0.952096,
		0.936334, 0.172544, -0.305789,
		28.386272, 28.838884, 20.878786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133574, 29.183517, 21.583107>,  <27.730839, 28.718103, 21.092840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133574, 29.183517, 21.583107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273394, 29.219692, 21.210091>,  <28.357286, 29.241398, 20.986280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273394, 29.219692, 21.210091>,  <28.133574, 29.183517, 21.583107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.273394, 29.219692, 21.210091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167411, 0.985341, 0.032806,
		0.921839, 0.144651, 0.359566,
		0.349550, 0.090437, -0.932543,
		28.378258, 29.246824, 20.930328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588881, 29.707203, 21.585119>,  <28.133574, 29.183517, 21.583107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588881, 29.707203, 21.585119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459188, 29.700741, 21.206783>,  <28.381372, 29.696863, 20.979782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459188, 29.700741, 21.206783>,  <28.588881, 29.707203, 21.585119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.459188, 29.700741, 21.206783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151485, 0.986064, -0.068774,
		0.933770, -0.165579, -0.317265,
		-0.324231, -0.016158, -0.945840,
		28.361919, 29.695894, 20.923031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133450, 30.199303, 21.302298>,  <28.588881, 29.707203, 21.585119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133450, 30.199303, 21.302298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833797, 30.146194, 21.042706>,  <28.654007, 30.114330, 20.886950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833797, 30.146194, 21.042706>,  <29.133450, 30.199303, 21.302298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833797, 30.146194, 21.042706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140763, 0.989239, -0.039894,
		0.647295, 0.061467, -0.759757,
		-0.749129, -0.132769, -0.648982,
		28.609058, 30.106363, 20.848011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237869, 30.662933, 20.741901>,  <29.133450, 30.199303, 21.302298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237869, 30.662933, 20.741901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845495, 30.592968, 20.708035>,  <28.610071, 30.550989, 20.687714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845495, 30.592968, 20.708035>,  <29.237869, 30.662933, 20.741901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845495, 30.592968, 20.708035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155445, 0.967734, -0.198311,
		0.116622, -0.181369, -0.976475,
		-0.980936, -0.174915, -0.084666,
		28.551214, 30.540493, 20.682634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923685, 31.208515, 20.221704>,  <29.237869, 30.662933, 20.741901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923685, 31.208515, 20.221704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605734, 31.109009, 20.443077>,  <28.414963, 31.049305, 20.575901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605734, 31.109009, 20.443077>,  <28.923685, 31.208515, 20.221704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605734, 31.109009, 20.443077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330402, 0.942466, -0.050912,
		-0.508926, -0.223324, -0.831336,
		-0.794876, -0.248765, 0.553432,
		28.367271, 31.034380, 20.609106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362360, 31.461233, 19.861084>,  <28.923685, 31.208515, 20.221704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362360, 31.461233, 19.861084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233524, 31.413467, 20.236744>,  <28.156223, 31.384808, 20.462139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.233524, 31.413467, 20.236744>,  <28.362360, 31.461233, 19.861084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233524, 31.413467, 20.236744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299803, 0.953823, 0.018461,
		-0.897986, -0.275613, -0.343015,
		-0.322087, -0.119415, 0.939149,
		28.136898, 31.377644, 20.518488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767555, 31.856274, 19.795685>,  <28.362360, 31.461233, 19.861084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767555, 31.856274, 19.795685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828304, 31.819248, 20.189308>,  <27.864754, 31.797033, 20.425482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828304, 31.819248, 20.189308>,  <27.767555, 31.856274, 19.795685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828304, 31.819248, 20.189308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474156, 0.866742, 0.154706,
		-0.867243, -0.490092, 0.087746,
		0.151873, -0.092563, 0.984056,
		27.873867, 31.791479, 20.484526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982578, 31.874262, 20.144430>,  <27.767555, 31.856274, 19.795685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982578, 31.874262, 20.144430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271528, 31.988449, 20.396362>,  <27.444899, 32.056961, 20.547522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271528, 31.988449, 20.396362>,  <26.982578, 31.874262, 20.144430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271528, 31.988449, 20.396362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481756, 0.861158, 0.162230,
		-0.496072, -0.420614, 0.759603,
		0.722374, 0.285466, 0.629829,
		27.488241, 32.074089, 20.585312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696518, 32.027805, 20.701248>,  <26.982578, 31.874262, 20.144430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696518, 32.027805, 20.701248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048494, 32.212173, 20.747311>,  <27.259680, 32.322792, 20.774948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048494, 32.212173, 20.747311>,  <26.696518, 32.027805, 20.701248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.048494, 32.212173, 20.747311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474233, 0.837665, 0.270964,
		0.028431, -0.293042, 0.955677,
		0.879940, 0.460917, 0.115155,
		27.312477, 32.350449, 20.781857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686052, 32.342499, 21.317938>,  <26.696518, 32.027805, 20.701248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686052, 32.342499, 21.317938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960896, 32.534920, 21.100140>,  <27.125801, 32.650372, 20.969461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.960896, 32.534920, 21.100140>,  <26.686052, 32.342499, 21.317938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960896, 32.534920, 21.100140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458237, 0.868495, 0.189039,
		0.563828, 0.119618, 0.817184,
		0.687108, 0.481049, -0.544495,
		27.167028, 32.679234, 20.936790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992241, 32.102615, 21.093084>,  <26.686052, 32.342499, 21.317938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992241, 32.102615, 21.093084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021257, 32.498940, 21.047413>,  <26.038668, 32.736732, 21.020010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021257, 32.498940, 21.047413>,  <25.992241, 32.102615, 21.093084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021257, 32.498940, 21.047413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518824, -0.060284, -0.852753,
		-0.851798, 0.121099, 0.509682,
		0.072542, 0.990808, -0.114179,
		26.043020, 32.796181, 21.013159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317087, 32.491135, 20.875162>,  <25.992241, 32.102615, 21.093084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317087, 32.491135, 20.875162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605999, 32.752304, 20.783951>,  <25.779346, 32.909008, 20.729223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605999, 32.752304, 20.783951>,  <25.317087, 32.491135, 20.875162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.605999, 32.752304, 20.783951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434200, 0.171468, -0.884347,
		-0.538314, 0.737757, 0.407349,
		0.722280, 0.652927, -0.228031,
		25.822683, 32.948181, 20.715542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.761583, 32.513786, 21.182928>,  <25.317087, 32.491135, 20.875162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.761583, 32.513786, 21.182928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.539869, 32.546040, 21.514294>,  <24.406841, 32.565392, 21.713112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.539869, 32.546040, 21.514294>,  <24.761583, 32.513786, 21.182928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.539869, 32.546040, 21.514294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480113, -0.782046, 0.397361,
		0.679898, 0.617983, 0.394762,
		-0.554284, 0.080634, 0.828413,
		24.373585, 32.570229, 21.762817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.135328, 32.777210, 21.728041>,  <24.761583, 32.513786, 21.182928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.135328, 32.777210, 21.728041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837362, 32.550056, 21.868103>,  <24.658583, 32.413765, 21.952141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837362, 32.550056, 21.868103>,  <25.135328, 32.777210, 21.728041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.837362, 32.550056, 21.868103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667153, -0.631670, 0.394842,
		-0.003043, 0.527730, 0.849407,
		-0.744914, -0.567886, 0.350154,
		24.613888, 32.379692, 21.973150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394598, 32.559654, 22.306356>,  <25.135328, 32.777210, 21.728041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394598, 32.559654, 22.306356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.084459, 32.311886, 22.257114>,  <24.898376, 32.163223, 22.227570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.084459, 32.311886, 22.257114>,  <25.394598, 32.559654, 22.306356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.084459, 32.311886, 22.257114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527602, -0.742453, 0.412794,
		-0.347095, 0.255107, 0.902466,
		-0.775345, -0.619422, -0.123107,
		24.851856, 32.126060, 22.220182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.242464, 32.133801, 22.988344>,  <25.394598, 32.559654, 22.306356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.242464, 32.133801, 22.988344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.069859, 31.919899, 22.697735>,  <24.966295, 31.791559, 22.523369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.069859, 31.919899, 22.697735>,  <25.242464, 32.133801, 22.988344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.069859, 31.919899, 22.697735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405899, -0.834328, 0.373018,
		-0.805632, -0.133934, 0.577078,
		-0.431513, -0.534750, -0.726525,
		24.940405, 31.759474, 22.479778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.974442, 31.551678, 23.359051>,  <25.242464, 32.133801, 22.988344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.974442, 31.551678, 23.359051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021210, 31.452415, 22.974396>,  <25.049271, 31.392859, 22.743603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021210, 31.452415, 22.974396>,  <24.974442, 31.551678, 23.359051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.021210, 31.452415, 22.974396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435944, -0.857185, 0.274202,
		-0.892347, -0.451280, 0.007961,
		0.116918, -0.248154, -0.961639,
		25.056286, 31.377970, 22.685904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.881519, 30.802799, 23.301346>,  <24.974442, 31.551678, 23.359051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.881519, 30.802799, 23.301346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067602, 30.893013, 22.958950>,  <25.179253, 30.947142, 22.753513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067602, 30.893013, 22.958950>,  <24.881519, 30.802799, 23.301346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067602, 30.893013, 22.958950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450981, -0.892478, 0.009946,
		-0.761708, -0.390661, -0.516899,
		0.465207, 0.225535, -0.855989,
		25.207165, 30.960674, 22.702154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.754587, 30.180864, 22.911015>,  <24.881519, 30.802799, 23.301346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.754587, 30.180864, 22.911015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067289, 30.372120, 22.750896>,  <25.254911, 30.486874, 22.654825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067289, 30.372120, 22.750896>,  <24.754587, 30.180864, 22.911015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067289, 30.372120, 22.750896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530210, -0.847551, 0.023103,
		-0.328225, -0.230302, -0.916094,
		0.781758, 0.478140, -0.400297,
		25.301817, 30.515562, 22.630808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.010172, 29.656805, 22.413227>,  <24.754587, 30.180864, 22.911015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.010172, 29.656805, 22.413227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291784, 29.918465, 22.523811>,  <25.460751, 30.075460, 22.590162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291784, 29.918465, 22.523811>,  <25.010172, 29.656805, 22.413227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.291784, 29.918465, 22.523811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671717, -0.739740, 0.039764,
		0.230521, 0.157708, -0.960202,
		0.704029, 0.654151, 0.276460,
		25.502993, 30.114710, 22.606749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648132, 29.513802, 22.073952>,  <25.010172, 29.656805, 22.413227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648132, 29.513802, 22.073952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773611, 29.730595, 22.385811>,  <25.848898, 29.860670, 22.572926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773611, 29.730595, 22.385811>,  <25.648132, 29.513802, 22.073952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773611, 29.730595, 22.385811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808386, -0.583172, 0.080139,
		0.498102, 0.605116, -0.621072,
		0.313698, 0.541984, 0.779646,
		25.867720, 29.893190, 22.619705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457943, 29.548256, 22.011473>,  <25.648132, 29.513802, 22.073952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457943, 29.548256, 22.011473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399435, 29.732651, 22.361580>,  <26.364330, 29.843288, 22.571644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399435, 29.732651, 22.361580>,  <26.457943, 29.548256, 22.011473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399435, 29.732651, 22.361580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896561, -0.312149, 0.314230,
		0.418071, 0.830694, -0.367646,
		-0.146268, 0.460988, 0.875269,
		26.355555, 29.870947, 22.624161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030334, 29.966894, 22.115475>,  <26.457943, 29.548256, 22.011473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030334, 29.966894, 22.115475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865652, 29.836552, 22.455902>,  <26.766844, 29.758347, 22.660158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865652, 29.836552, 22.455902>,  <27.030334, 29.966894, 22.115475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865652, 29.836552, 22.455902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789761, -0.593566, 0.154783,
		0.454728, 0.735865, 0.501722,
		-0.411704, -0.325856, 0.851069,
		26.742142, 29.738794, 22.711224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.587465, 29.997593, 22.684385>,  <27.030334, 29.966894, 22.115475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.587465, 29.997593, 22.684385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303946, 29.737526, 22.793842>,  <27.133833, 29.581486, 22.859516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303946, 29.737526, 22.793842>,  <27.587465, 29.997593, 22.684385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303946, 29.737526, 22.793842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702256, -0.687010, 0.186694,
		0.066612, 0.324496, 0.943539,
		-0.708802, -0.650169, 0.273642,
		27.091305, 29.542475, 22.875935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966270, 29.760536, 23.239332>,  <27.587465, 29.997593, 22.684385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966270, 29.760536, 23.239332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665264, 29.502857, 23.184593>,  <27.484659, 29.348249, 23.151751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665264, 29.502857, 23.184593>,  <27.966270, 29.760536, 23.239332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665264, 29.502857, 23.184593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539811, -0.722384, 0.432164,
		-0.377253, 0.251340, 0.891352,
		-0.752518, -0.644197, -0.136845,
		27.439508, 29.309599, 23.143539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000864, 29.247967, 23.859459>,  <27.966270, 29.760536, 23.239332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000864, 29.247967, 23.859459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800364, 29.072865, 23.560898>,  <27.680063, 28.967802, 23.381762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800364, 29.072865, 23.560898>,  <28.000864, 29.247967, 23.859459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800364, 29.072865, 23.560898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473572, -0.860723, 0.186773,
		-0.724206, -0.259855, 0.638749,
		-0.501253, -0.437756, -0.746401,
		27.649988, 28.941538, 23.336977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465141, 29.393726, 24.377218>,  <28.000864, 29.247967, 23.859459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465141, 29.393726, 24.377218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560276, 29.412533, 24.765285>,  <27.617357, 29.423817, 24.998125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560276, 29.412533, 24.765285>,  <27.465141, 29.393726, 24.377218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560276, 29.412533, 24.765285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137567, 0.990390, -0.014274,
		-0.961514, -0.130068, 0.242019,
		0.237837, 0.047018, 0.970166,
		27.631626, 29.426638, 25.056335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.909464, 29.789827, 24.752895>,  <27.465141, 29.393726, 24.377218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.909464, 29.789827, 24.752895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235865, 29.806023, 24.983547>,  <27.431705, 29.815741, 25.121939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235865, 29.806023, 24.983547>,  <26.909464, 29.789827, 24.752895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235865, 29.806023, 24.983547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070638, 0.997052, 0.029953,
		-0.573716, -0.065174, 0.816457,
		0.816002, 0.040489, 0.576629,
		27.480665, 29.818169, 25.156536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801792, 30.404194, 25.076006>,  <26.909464, 29.789827, 24.752895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801792, 30.404194, 25.076006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189478, 30.355076, 25.161369>,  <27.422089, 30.325605, 25.212587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189478, 30.355076, 25.161369>,  <26.801792, 30.404194, 25.076006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189478, 30.355076, 25.161369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132198, 0.990760, -0.030300,
		-0.207718, 0.057580, 0.976493,
		0.969215, -0.122796, 0.213411,
		27.480242, 30.318237, 25.225393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861189, 30.878569, 25.527220>,  <26.801792, 30.404194, 25.076006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861189, 30.878569, 25.527220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225588, 30.788670, 25.388901>,  <27.444227, 30.734730, 25.305908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225588, 30.788670, 25.388901>,  <26.861189, 30.878569, 25.527220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225588, 30.788670, 25.388901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200405, 0.974058, -0.105111,
		0.360451, 0.026456, 0.932403,
		0.910995, -0.224746, -0.345799,
		27.498886, 30.721247, 25.285162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307709, 31.380934, 25.802383>,  <26.861189, 30.878569, 25.527220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307709, 31.380934, 25.802383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521366, 31.224358, 25.502659>,  <27.649561, 31.130413, 25.322824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521366, 31.224358, 25.502659>,  <27.307709, 31.380934, 25.802383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521366, 31.224358, 25.502659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245314, 0.919975, -0.305723,
		0.809019, -0.020516, 0.587425,
		0.534144, -0.391439, -0.749310,
		27.681610, 31.106926, 25.277866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903532, 31.760891, 25.699486>,  <27.307709, 31.380934, 25.802383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903532, 31.760891, 25.699486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891077, 31.561474, 25.352962>,  <27.883604, 31.441824, 25.145048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891077, 31.561474, 25.352962>,  <27.903532, 31.760891, 25.699486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.891077, 31.561474, 25.352962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454171, 0.765025, -0.456579,
		0.890370, -0.407669, 0.202601,
		-0.031138, -0.498541, -0.866307,
		27.881735, 31.411911, 25.093071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596365, 31.646948, 25.499060>,  <27.903532, 31.760891, 25.699486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596365, 31.646948, 25.499060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346231, 31.629009, 25.187431>,  <28.196152, 31.618246, 25.000454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346231, 31.629009, 25.187431>,  <28.596365, 31.646948, 25.499060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.346231, 31.629009, 25.187431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450206, 0.794716, -0.407113,
		0.637396, -0.605322, -0.476772,
		-0.625332, -0.044847, -0.779069,
		28.158632, 31.615555, 24.953711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939875, 31.620888, 24.906464>,  <28.596365, 31.646948, 25.499060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939875, 31.620888, 24.906464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586681, 31.747707, 24.768005>,  <28.374765, 31.823799, 24.684931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586681, 31.747707, 24.768005>,  <28.939875, 31.620888, 24.906464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586681, 31.747707, 24.768005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463121, 0.708637, -0.532309,
		0.076523, -0.630328, -0.772548,
		-0.882985, 0.317049, -0.346145,
		28.321785, 31.842823, 24.664162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.110672, 31.999237, 24.210045>,  <28.939875, 31.620888, 24.906464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.110672, 31.999237, 24.210045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740185, 32.103786, 24.318710>,  <28.517893, 32.166515, 24.383909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740185, 32.103786, 24.318710>,  <29.110672, 31.999237, 24.210045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.740185, 32.103786, 24.318710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114108, 0.881199, -0.458768,
		-0.359301, -0.393920, -0.846008,
		-0.926219, 0.261372, 0.271666,
		28.462318, 32.182198, 24.400209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848438, 32.280399, 23.616871>,  <29.110672, 31.999237, 24.210045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848438, 32.280399, 23.616871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601671, 32.430805, 23.893429>,  <28.453611, 32.521049, 24.059364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601671, 32.430805, 23.893429>,  <28.848438, 32.280399, 23.616871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601671, 32.430805, 23.893429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046871, 0.859376, -0.509192,
		-0.785632, -0.346535, -0.512538,
		-0.616916, 0.376014, 0.691396,
		28.416595, 32.543610, 24.100847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333675, 32.653553, 23.266544>,  <28.848438, 32.280399, 23.616871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333675, 32.653553, 23.266544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352160, 32.798515, 23.638893>,  <28.363251, 32.885494, 23.862303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352160, 32.798515, 23.638893>,  <28.333675, 32.653553, 23.266544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352160, 32.798515, 23.638893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003709, 0.931801, -0.362951,
		-0.998925, 0.020225, 0.041715,
		0.046211, 0.362406, 0.930874,
		28.366022, 32.907238, 23.918156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805916, 33.239754, 23.293865>,  <28.333675, 32.653553, 23.266544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805916, 33.239754, 23.293865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073959, 33.290901, 23.586330>,  <28.234785, 33.321590, 23.761810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073959, 33.290901, 23.586330>,  <27.805916, 33.239754, 23.293865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073959, 33.290901, 23.586330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140905, 0.945223, -0.294447,
		-0.728765, 0.300337, 0.615386,
		0.670110, 0.127871, 0.731164,
		28.274992, 33.329262, 23.805679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.753826, 25.820236, 25.732605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.108311, 25.902966, 25.898426>,  <28.321001, 25.952604, 25.997919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.108311, 25.902966, 25.898426>,  <27.753826, 25.820236, 25.732605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108311, 25.902966, 25.898426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322211, 0.918115, 0.230748,
		-0.332883, -0.338064, 0.880285,
		0.886211, 0.206825, 0.414553,
		28.374174, 25.965014, 26.022793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650150, 26.175976, 26.283819>,  <27.753826, 25.820236, 25.732605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650150, 26.175976, 26.283819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.032715, 26.274807, 26.221558>,  <28.262253, 26.334106, 26.184200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.032715, 26.274807, 26.221558>,  <27.650150, 26.175976, 26.283819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032715, 26.274807, 26.221558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211811, 0.953884, 0.212699,
		0.201028, -0.170459, 0.964641,
		0.956412, 0.247080, -0.155653,
		28.319639, 26.348930, 26.174862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907339, 26.711216, 26.853598>,  <27.650150, 26.175976, 26.283819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907339, 26.711216, 26.853598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.122259, 26.742435, 26.517689>,  <28.251211, 26.761168, 26.316143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.122259, 26.742435, 26.517689>,  <27.907339, 26.711216, 26.853598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.122259, 26.742435, 26.517689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173517, 0.984638, -0.019505,
		0.825348, 0.156195, 0.542590,
		0.537301, 0.078051, -0.839771,
		28.283449, 26.765850, 26.265757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047476, 27.351784, 26.926592>,  <27.907339, 26.711216, 26.853598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047476, 27.351784, 26.926592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.170090, 27.292545, 26.550484>,  <28.243658, 27.257002, 26.324820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.170090, 27.292545, 26.550484>,  <28.047476, 27.351784, 26.926592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170090, 27.292545, 26.550484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058330, 0.983044, -0.173848,
		0.950071, 0.108137, 0.292699,
		0.306535, -0.148095, -0.940268,
		28.262051, 27.248117, 26.268404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382029, 27.868549, 26.780634>,  <28.047476, 27.351784, 26.926592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382029, 27.868549, 26.780634> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.286177, 27.736614, 26.415386>,  <28.228666, 27.657454, 26.196238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.286177, 27.736614, 26.415386>,  <28.382029, 27.868549, 26.780634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286177, 27.736614, 26.415386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069135, 0.943930, -0.322827,
		0.968400, -0.014230, -0.248995,
		-0.239627, -0.329840, -0.913118,
		28.214289, 27.637663, 26.141451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740076, 28.310871, 26.202496>,  <28.382029, 27.868549, 26.780634>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740076, 28.310871, 26.202496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.413212, 28.179142, 26.013268>,  <28.217093, 28.100103, 25.899731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.413212, 28.179142, 26.013268>,  <28.740076, 28.310871, 26.202496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413212, 28.179142, 26.013268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091722, 0.884551, -0.457337,
		0.569066, -0.330327, -0.753026,
		-0.817160, -0.329324, -0.473070,
		28.168064, 28.080345, 25.871347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908005, 28.398640, 25.488234>,  <28.740076, 28.310871, 26.202496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908005, 28.398640, 25.488234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.513145, 28.365124, 25.542664>,  <28.276230, 28.345015, 25.575321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.513145, 28.365124, 25.542664>,  <28.908005, 28.398640, 25.488234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513145, 28.365124, 25.542664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150207, 0.777145, -0.611133,
		-0.054545, -0.623719, -0.779744,
		-0.987149, -0.083788, 0.136076,
		28.217001, 28.339987, 25.583487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636995, 28.712297, 24.934227>,  <28.908005, 28.398640, 25.488234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636995, 28.712297, 24.934227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.286516, 28.664013, 25.120865>,  <28.076229, 28.635042, 25.232847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.286516, 28.664013, 25.120865>,  <28.636995, 28.712297, 24.934227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286516, 28.664013, 25.120865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264048, 0.930133, -0.255207,
		-0.403187, -0.346814, -0.846853,
		-0.876196, -0.120713, 0.466593,
		28.023657, 28.627798, 25.260843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128775, 28.960234, 24.503910>,  <28.636995, 28.712297, 24.934227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128775, 28.960234, 24.503910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.000835, 28.983124, 24.882206>,  <27.924072, 28.996859, 25.109182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.000835, 28.983124, 24.882206>,  <28.128775, 28.960234, 24.503910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000835, 28.983124, 24.882206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158518, 0.987337, -0.006131,
		-0.934114, 0.147956, -0.324870,
		-0.319849, 0.057225, 0.945739,
		27.904881, 29.000292, 25.165928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.558338, 28.625195, 24.174116>,  <28.128775, 28.960234, 24.503910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.558338, 28.625195, 24.174116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.610018, 28.582603, 23.779762>,  <27.641026, 28.557049, 23.543150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.610018, 28.582603, 23.779762>,  <27.558338, 28.625195, 24.174116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610018, 28.582603, 23.779762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423710, -0.892959, 0.151967,
		-0.896537, -0.437364, -0.070253,
		0.129198, -0.106477, -0.985885,
		27.648777, 28.550661, 23.483997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383905, 27.850132, 23.991329>,  <27.558338, 28.625195, 24.174116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383905, 27.850132, 23.991329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.594721, 28.000408, 23.686413>,  <27.721210, 28.090574, 23.503464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.594721, 28.000408, 23.686413>,  <27.383905, 27.850132, 23.991329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594721, 28.000408, 23.686413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437435, -0.888955, -0.135679,
		-0.728617, -0.261946, -0.632853,
		0.527037, 0.375690, -0.762292,
		27.752832, 28.113115, 23.457726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451256, 27.247829, 23.594496>,  <27.383905, 27.850132, 23.991329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451256, 27.247829, 23.594496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.752588, 27.485077, 23.480862>,  <27.933388, 27.627424, 23.412682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.752588, 27.485077, 23.480862>,  <27.451256, 27.247829, 23.594496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752588, 27.485077, 23.480862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620284, -0.784344, 0.007292,
		-0.218497, -0.181708, -0.958771,
		0.753331, 0.593117, -0.284087,
		27.978588, 27.663012, 23.395636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.649380, 26.935347, 22.960125>,  <27.451256, 27.247829, 23.594496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.649380, 26.935347, 22.960125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.963924, 27.141258, 23.096737>,  <28.152651, 27.264805, 23.178703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.963924, 27.141258, 23.096737>,  <27.649380, 26.935347, 22.960125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963924, 27.141258, 23.096737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610669, -0.731304, -0.303773,
		0.093386, 0.447436, -0.889427,
		0.786360, 0.514778, 0.341529,
		28.199833, 27.295692, 23.199196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109039, 26.883930, 22.430834>,  <27.649380, 26.935347, 22.960125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109039, 26.883930, 22.430834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.327612, 26.964211, 22.756073>,  <28.458755, 27.012379, 22.951218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.327612, 26.964211, 22.756073>,  <28.109039, 26.883930, 22.430834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327612, 26.964211, 22.756073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519205, -0.842963, -0.140855,
		0.657143, 0.499133, -0.564827,
		0.546433, 0.200699, 0.813100,
		28.491543, 27.024420, 23.000004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716356, 26.605251, 22.223230>,  <28.109039, 26.883930, 22.430834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716356, 26.605251, 22.223230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.785463, 26.647522, 22.614941>,  <28.826927, 26.672884, 22.849968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.785463, 26.647522, 22.614941>,  <28.716356, 26.605251, 22.223230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785463, 26.647522, 22.614941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456325, -0.889678, 0.015500,
		0.872880, 0.444191, -0.201929,
		0.172767, 0.105675, 0.979278,
		28.837294, 26.679224, 22.908724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401148, 26.431206, 22.300322>,  <28.716356, 26.605251, 22.223230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401148, 26.431206, 22.300322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.227938, 26.391808, 22.658714>,  <29.124012, 26.368168, 22.873751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.227938, 26.391808, 22.658714>,  <29.401148, 26.431206, 22.300322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227938, 26.391808, 22.658714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437802, -0.891873, 0.113545,
		0.787920, 0.441431, 0.429326,
		-0.433027, -0.098495, 0.895984,
		29.098030, 26.362259, 22.927509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846697, 25.948593, 22.621199>,  <29.401148, 26.431206, 22.300322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846697, 25.948593, 22.621199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.513369, 25.951157, 22.842300>,  <29.313372, 25.952694, 22.974962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.513369, 25.951157, 22.842300>,  <29.846697, 25.948593, 22.621199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513369, 25.951157, 22.842300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129195, -0.969982, 0.206018,
		0.537482, 0.243092, 0.807477,
		-0.833320, 0.006409, 0.552755,
		29.263372, 25.953079, 23.008127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028126, 25.697060, 23.190664>,  <29.846697, 25.948593, 22.621199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028126, 25.697060, 23.190664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.635231, 25.626198, 23.165928>,  <29.399494, 25.583681, 23.151087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.635231, 25.626198, 23.165928>,  <30.028126, 25.697060, 23.190664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635231, 25.626198, 23.165928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159649, -0.962202, 0.220635,
		-0.098589, 0.206843, 0.973394,
		-0.982238, -0.177154, -0.061841,
		29.340559, 25.573051, 23.147375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924711, 25.384932, 23.811544>,  <30.028126, 25.697060, 23.190664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924711, 25.384932, 23.811544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.643681, 25.267551, 23.552231>,  <29.475061, 25.197124, 23.396643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.643681, 25.267551, 23.552231>,  <29.924711, 25.384932, 23.811544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643681, 25.267551, 23.552231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081648, -0.938240, 0.336213,
		-0.706906, 0.183285, 0.683147,
		-0.702579, -0.293448, -0.648283,
		29.432907, 25.179518, 23.357746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525064, 25.007504, 24.204323>,  <29.924711, 25.384932, 23.811544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525064, 25.007504, 24.204323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.441141, 24.892513, 23.830513>,  <29.390787, 24.823519, 23.606226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.441141, 24.892513, 23.830513>,  <29.525064, 25.007504, 24.204323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441141, 24.892513, 23.830513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068068, -0.957775, 0.279344,
		-0.975370, -0.005002, 0.220517,
		-0.209809, -0.287474, -0.934526,
		29.378199, 24.806271, 23.550156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109686, 24.521664, 24.351555>,  <29.525064, 25.007504, 24.204323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109686, 24.521664, 24.351555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.225880, 24.455963, 23.974483>,  <29.295595, 24.416542, 23.748241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.225880, 24.455963, 23.974483>,  <29.109686, 24.521664, 24.351555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225880, 24.455963, 23.974483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100370, -0.974493, 0.200724,
		-0.951601, -0.152923, -0.266589,
		0.290484, -0.164252, -0.942677,
		29.313025, 24.406687, 23.691681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764513, 23.851440, 24.237736>,  <29.109686, 24.521664, 24.351555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764513, 23.851440, 24.237736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.028757, 23.855637, 23.937473>,  <29.187304, 23.858154, 23.757317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.028757, 23.855637, 23.937473>,  <28.764513, 23.851440, 24.237736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.028757, 23.855637, 23.937473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248711, -0.946494, 0.205651,
		-0.708335, -0.322552, -0.627872,
		0.660610, 0.010490, -0.750656,
		29.226940, 23.858784, 23.712276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557455, 23.285370, 23.803928>,  <28.764513, 23.851440, 24.237736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557455, 23.285370, 23.803928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.932503, 23.372864, 23.695839>,  <29.157532, 23.425360, 23.630985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.932503, 23.372864, 23.695839>,  <28.557455, 23.285370, 23.803928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932503, 23.372864, 23.695839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199866, -0.975126, -0.095831,
		-0.284464, 0.035844, -0.958017,
		0.937621, 0.218736, -0.270224,
		29.213789, 23.438484, 23.614771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.174126, 24.632252, 24.342882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.791271, 24.599396, 24.231777>,  <34.561558, 24.579683, 24.165115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.791271, 24.599396, 24.231777>,  <35.174126, 24.632252, 24.342882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791271, 24.599396, 24.231777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020597, 0.975822, -0.217593,
		0.288917, -0.202544, -0.935683,
		-0.957132, -0.082138, -0.277760,
		34.504131, 24.574755, 24.148449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245438, 25.005768, 23.753616>,  <35.174126, 24.632252, 24.342882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245438, 25.005768, 23.753616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.863419, 24.981525, 23.869698>,  <34.634209, 24.966980, 23.939346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.863419, 24.981525, 23.869698>,  <35.245438, 25.005768, 23.753616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863419, 24.981525, 23.869698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100795, 0.986947, -0.125606,
		-0.278803, -0.149210, -0.948686,
		-0.955044, -0.060604, 0.290204,
		34.576904, 24.963345, 23.956758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762909, 25.237076, 23.209499>,  <35.245438, 25.005768, 23.753616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762909, 25.237076, 23.209499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497623, 25.255665, 23.508293>,  <34.338451, 25.266819, 23.687571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497623, 25.255665, 23.508293>,  <34.762909, 25.237076, 23.209499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497623, 25.255665, 23.508293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352888, 0.860745, -0.366863,
		-0.660013, -0.506911, -0.554458,
		-0.663213, 0.046473, 0.746986,
		34.298660, 25.269608, 23.732389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025475, 25.441238, 22.953239>,  <34.762909, 25.237076, 23.209499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025475, 25.441238, 22.953239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.073650, 25.534161, 23.339302>,  <34.102558, 25.589914, 23.570940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.073650, 25.534161, 23.339302>,  <34.025475, 25.441238, 22.953239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073650, 25.534161, 23.339302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369671, 0.912806, -0.173576,
		-0.921324, -0.335885, 0.195817,
		0.120441, 0.232307, 0.965157,
		34.109783, 25.603853, 23.628849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402390, 25.776264, 23.061735>,  <34.025475, 25.441238, 22.953239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402390, 25.776264, 23.061735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650753, 25.882668, 23.356682>,  <33.799770, 25.946510, 23.533649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650753, 25.882668, 23.356682>,  <33.402390, 25.776264, 23.061735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650753, 25.882668, 23.356682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210414, 0.962697, -0.170117,
		-0.755113, -0.049525, 0.653721,
		0.620911, 0.266010, 0.737366,
		33.837025, 25.962471, 23.577892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046352, 26.316914, 23.420597>,  <33.402390, 25.776264, 23.061735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046352, 26.316914, 23.420597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426086, 26.361610, 23.538082>,  <33.653927, 26.388428, 23.608574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426086, 26.361610, 23.538082>,  <33.046352, 26.316914, 23.420597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426086, 26.361610, 23.538082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115176, 0.993329, -0.005631,
		-0.292384, -0.028483, 0.955877,
		0.949340, 0.111741, 0.293714,
		33.710888, 26.395132, 23.626196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053471, 26.693291, 23.960258>,  <33.046352, 26.316914, 23.420597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053471, 26.693291, 23.960258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.438488, 26.768169, 23.881813>,  <33.669498, 26.813097, 23.834745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.438488, 26.768169, 23.881813>,  <33.053471, 26.693291, 23.960258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438488, 26.768169, 23.881813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156478, 0.974307, 0.161989,
		0.221400, -0.125235, 0.967108,
		0.962547, 0.187195, -0.196115,
		33.727253, 26.824327, 23.822979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309200, 27.128178, 24.457848>,  <33.053471, 26.693291, 23.960258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309200, 27.128178, 24.457848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.571350, 27.173275, 24.159111>,  <33.728642, 27.200333, 23.979870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.571350, 27.173275, 24.159111>,  <33.309200, 27.128178, 24.457848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571350, 27.173275, 24.159111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141260, 0.989646, 0.025437,
		0.741975, 0.088828, 0.664517,
		0.655377, 0.112743, -0.746840,
		33.767963, 27.207098, 23.935059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667873, 27.723988, 24.617575>,  <33.309200, 27.128178, 24.457848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667873, 27.723988, 24.617575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766644, 27.702789, 24.230541>,  <33.825905, 27.690069, 23.998322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766644, 27.702789, 24.230541>,  <33.667873, 27.723988, 24.617575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766644, 27.702789, 24.230541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095362, 0.992328, -0.078689,
		0.964330, 0.111701, 0.239981,
		0.246930, -0.052997, -0.967583,
		33.840721, 27.686890, 23.940266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196762, 28.221001, 24.484924>,  <33.667873, 27.723988, 24.617575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196762, 28.221001, 24.484924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.052341, 28.147930, 24.119133>,  <33.965691, 28.104088, 23.899658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.052341, 28.147930, 24.119133>,  <34.196762, 28.221001, 24.484924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052341, 28.147930, 24.119133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006091, 0.981067, -0.193572,
		0.932527, -0.064318, -0.355325,
		-0.361048, -0.182675, -0.914480,
		33.944027, 28.093128, 23.844790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618320, 28.586655, 24.049572>,  <34.196762, 28.221001, 24.484924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618320, 28.586655, 24.049572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.264530, 28.510601, 23.879135>,  <34.052258, 28.464970, 23.776873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.264530, 28.510601, 23.879135>,  <34.618320, 28.586655, 24.049572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264530, 28.510601, 23.879135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059628, 0.951779, -0.300935,
		0.462765, -0.240762, -0.853160,
		-0.884473, -0.190134, -0.426094,
		33.999187, 28.453562, 23.751307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635551, 28.820217, 23.368107>,  <34.618320, 28.586655, 24.049572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635551, 28.820217, 23.368107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239548, 28.790947, 23.416317>,  <34.001945, 28.773384, 23.445244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239548, 28.790947, 23.416317>,  <34.635551, 28.820217, 23.368107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239548, 28.790947, 23.416317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124183, 0.857363, -0.499507,
		-0.066781, -0.509484, -0.857885,
		-0.990010, -0.073177, 0.120525,
		33.942543, 28.768993, 23.452475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292038, 29.056662, 22.673298>,  <34.635551, 28.820217, 23.368107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292038, 29.056662, 22.673298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.026394, 29.096783, 22.969646>,  <33.867008, 29.120855, 23.147455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.026394, 29.096783, 22.969646>,  <34.292038, 29.056662, 22.673298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026394, 29.096783, 22.969646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185137, 0.938033, -0.292949,
		-0.724346, -0.331715, -0.604391,
		-0.664114, 0.100301, 0.740873,
		33.827160, 29.126873, 23.191908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646225, 29.331886, 22.345699>,  <34.292038, 29.056662, 22.673298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646225, 29.331886, 22.345699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.619022, 29.420570, 22.734795>,  <33.602699, 29.473782, 22.968252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.619022, 29.420570, 22.734795>,  <33.646225, 29.331886, 22.345699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619022, 29.420570, 22.734795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083564, 0.970303, -0.227000,
		-0.994179, -0.096724, -0.047461,
		-0.068008, 0.221712, 0.972738,
		33.598621, 29.487083, 23.026615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140381, 29.008135, 21.854954>,  <33.646225, 29.331886, 22.345699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140381, 29.008135, 21.854954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.869629, 28.975330, 21.562351>,  <32.707176, 28.955648, 21.386789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.869629, 28.975330, 21.562351>,  <33.140381, 29.008135, 21.854954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869629, 28.975330, 21.562351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175887, -0.983007, -0.052544,
		-0.714767, -0.164229, 0.679807,
		-0.676884, -0.082012, -0.731506,
		32.666565, 28.950727, 21.342899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663898, 28.518095, 22.100962>,  <33.140381, 29.008135, 21.854954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663898, 28.518095, 22.100962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681362, 28.553558, 21.702919>,  <32.691841, 28.574837, 21.464094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681362, 28.553558, 21.702919>,  <32.663898, 28.518095, 22.100962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681362, 28.553558, 21.702919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148592, -0.985552, -0.081287,
		-0.987934, -0.144317, -0.056199,
		0.043656, 0.088657, -0.995105,
		32.694458, 28.580156, 21.404388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320015, 27.937641, 21.887383>,  <32.663898, 28.518095, 22.100962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320015, 27.937641, 21.887383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.521606, 28.053822, 21.562016>,  <32.642559, 28.123529, 21.366795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.521606, 28.053822, 21.562016>,  <32.320015, 27.937641, 21.887383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521606, 28.053822, 21.562016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001019, -0.941562, -0.336838,
		-0.863718, 0.170586, -0.474227,
		0.503974, 0.290450, -0.813418,
		32.672798, 28.140957, 21.317989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057186, 27.527563, 21.411118>,  <32.320015, 27.937641, 21.887383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057186, 27.527563, 21.411118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.383293, 27.648209, 21.213383>,  <32.578957, 27.720596, 21.094742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.383293, 27.648209, 21.213383>,  <32.057186, 27.527563, 21.411118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383293, 27.648209, 21.213383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152538, -0.935354, -0.319132,
		-0.558634, 0.184773, -0.808571,
		0.815267, 0.301615, -0.494336,
		32.627872, 27.738693, 21.065083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041073, 27.354879, 20.607841>,  <32.057186, 27.527563, 21.411118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041073, 27.354879, 20.607841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.413734, 27.376453, 20.751572>,  <32.637329, 27.389399, 20.837811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.413734, 27.376453, 20.751572>,  <32.041073, 27.354879, 20.607841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413734, 27.376453, 20.751572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159658, -0.949104, -0.271497,
		0.326395, 0.310310, -0.892846,
		0.931652, 0.053935, 0.359327,
		32.693230, 27.392633, 20.859369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387466, 26.926638, 20.176641>,  <32.041073, 27.354879, 20.607841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387466, 26.926638, 20.176641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.662510, 26.968750, 20.464005>,  <32.827538, 26.994019, 20.636423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.662510, 26.968750, 20.464005>,  <32.387466, 26.926638, 20.176641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662510, 26.968750, 20.464005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327805, -0.927869, -0.177772,
		0.647871, 0.357735, -0.672524,
		0.687609, 0.105283, 0.718407,
		32.868793, 27.000336, 20.679527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035011, 26.638472, 19.911438>,  <32.387466, 26.926638, 20.176641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035011, 26.638472, 19.911438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.077553, 26.620899, 20.308781>,  <33.103077, 26.610355, 20.547186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.077553, 26.620899, 20.308781>,  <33.035011, 26.638472, 19.911438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077553, 26.620899, 20.308781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187411, -0.980233, -0.063414,
		0.976507, 0.192911, -0.096017,
		0.106352, -0.043929, 0.993358,
		33.109459, 26.607721, 20.606789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686802, 26.362669, 20.064802>,  <33.035011, 26.638472, 19.911438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686802, 26.362669, 20.064802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.463486, 26.300251, 20.390739>,  <33.329498, 26.262800, 20.586302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.463486, 26.300251, 20.390739>,  <33.686802, 26.362669, 20.064802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463486, 26.300251, 20.390739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289556, -0.957042, 0.015114,
		0.777479, 0.244380, 0.579487,
		-0.558287, -0.156043, 0.814842,
		33.296001, 26.253439, 20.635191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153656, 25.884855, 20.467291>,  <33.686802, 26.362669, 20.064802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153656, 25.884855, 20.467291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.800854, 25.840099, 20.650398>,  <33.589172, 25.813246, 20.760263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.800854, 25.840099, 20.650398>,  <34.153656, 25.884855, 20.467291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800854, 25.840099, 20.650398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290095, -0.894442, 0.340321,
		0.371369, 0.432961, 0.821359,
		-0.882003, -0.111888, 0.457768,
		33.536251, 25.806534, 20.787729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256702, 25.584841, 21.162846>,  <34.153656, 25.884855, 20.467291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256702, 25.584841, 21.162846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873871, 25.518284, 21.067921>,  <33.644173, 25.478350, 21.010965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873871, 25.518284, 21.067921>,  <34.256702, 25.584841, 21.162846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873871, 25.518284, 21.067921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109974, -0.966043, 0.233811,
		-0.268159, 0.197676, 0.942876,
		-0.957077, -0.166390, -0.237314,
		33.586746, 25.468367, 20.996727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136539, 25.115494, 21.602562>,  <34.256702, 25.584841, 21.162846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136539, 25.115494, 21.602562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.837387, 25.079762, 21.339443>,  <33.657898, 25.058323, 21.181572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.837387, 25.079762, 21.339443>,  <34.136539, 25.115494, 21.602562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837387, 25.079762, 21.339443> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002868, -0.990461, 0.137767,
		-0.663830, 0.104919, 0.740488,
		-0.747878, -0.089330, -0.657798,
		33.613022, 25.052963, 21.142103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646191, 24.681681, 21.985008>,  <34.136539, 25.115494, 21.602562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646191, 24.681681, 21.985008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.564751, 24.654507, 21.594330>,  <33.515888, 24.638203, 21.359922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.564751, 24.654507, 21.594330>,  <33.646191, 24.681681, 21.985008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564751, 24.654507, 21.594330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135798, -0.985987, 0.096892,
		-0.969591, 0.152361, 0.191522,
		-0.203601, -0.067937, -0.976694,
		33.503670, 24.634125, 21.301321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170250, 24.111685, 21.968203>,  <33.646191, 24.681681, 21.985008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170250, 24.111685, 21.968203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.288433, 24.152664, 21.588264>,  <33.359344, 24.177252, 21.360302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.288433, 24.152664, 21.588264>,  <33.170250, 24.111685, 21.968203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288433, 24.152664, 21.588264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053143, -0.994457, -0.090728,
		-0.953876, -0.023671, -0.299265,
		0.295458, 0.102447, -0.949847,
		33.377071, 24.183399, 21.303310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654549, 23.755424, 21.572626>,  <33.170250, 24.111685, 21.968203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654549, 23.755424, 21.572626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.005531, 23.769951, 21.381313>,  <33.216122, 23.778667, 21.266525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.005531, 23.769951, 21.381313>,  <32.654549, 23.755424, 21.572626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005531, 23.769951, 21.381313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038528, -0.988571, -0.145749,
		-0.478110, 0.146315, -0.866027,
		0.877455, 0.036318, -0.478283,
		33.268768, 23.780846, 21.237829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076908, 23.874321, 20.951475>,  <32.654549, 23.755424, 21.572626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076908, 23.874321, 20.951475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.712006, 23.713146, 20.980957>,  <31.493065, 23.616442, 20.998646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.712006, 23.713146, 20.980957>,  <32.076908, 23.874321, 20.951475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712006, 23.713146, 20.980957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409223, 0.904455, -0.120409,
		-0.018144, -0.140005, -0.989985,
		-0.912255, -0.402939, 0.073704,
		31.438330, 23.592264, 21.003069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672108, 23.965946, 20.293453>,  <32.076908, 23.874321, 20.951475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672108, 23.965946, 20.293453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.419254, 23.918743, 20.599781>,  <31.267542, 23.890421, 20.783577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.419254, 23.918743, 20.599781>,  <31.672108, 23.965946, 20.293453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419254, 23.918743, 20.599781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433895, 0.872759, -0.223666,
		-0.641981, -0.473672, -0.602906,
		-0.632136, -0.118009, 0.765819,
		31.229614, 23.883341, 20.829527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996223, 24.036951, 19.961229>,  <31.672108, 23.965946, 20.293453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996223, 24.036951, 19.961229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.954184, 24.123196, 20.349552>,  <30.928959, 24.174942, 20.582546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.954184, 24.123196, 20.349552>,  <30.996223, 24.036951, 19.961229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954184, 24.123196, 20.349552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544490, 0.804411, -0.237602,
		-0.832157, -0.553566, 0.032856,
		-0.105098, 0.215612, 0.970807,
		30.922653, 24.187880, 20.640795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314642, 24.286577, 20.124260>,  <30.996223, 24.036951, 19.961229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314642, 24.286577, 20.124260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.498091, 24.414402, 20.455933>,  <30.608160, 24.491096, 20.654936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.498091, 24.414402, 20.455933>,  <30.314642, 24.286577, 20.124260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498091, 24.414402, 20.455933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507213, 0.860310, -0.051017,
		-0.729658, -0.397175, 0.556643,
		0.458623, 0.319562, 0.829184,
		30.635677, 24.510271, 20.704687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829456, 24.548075, 20.591459>,  <30.314642, 24.286577, 20.124260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829456, 24.548075, 20.591459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.173273, 24.710766, 20.715237>,  <30.379564, 24.808380, 20.789503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.173273, 24.710766, 20.715237>,  <29.829456, 24.548075, 20.591459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173273, 24.710766, 20.715237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446993, 0.891842, 0.069386,
		-0.247754, -0.197959, 0.948383,
		0.859544, 0.406730, 0.309444,
		30.431137, 24.832785, 20.808069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562107, 25.039930, 21.011200>,  <29.829456, 24.548075, 20.591459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562107, 25.039930, 21.011200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.942265, 25.156178, 20.966843>,  <30.170359, 25.225925, 20.940229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.942265, 25.156178, 20.966843>,  <29.562107, 25.039930, 21.011200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942265, 25.156178, 20.966843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293424, 0.955935, -0.009530,
		0.103236, 0.041596, 0.993787,
		0.950392, 0.290617, -0.110892,
		30.227383, 25.243362, 20.933575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682165, 25.477825, 21.534231>,  <29.562107, 25.039930, 21.011200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682165, 25.477825, 21.534231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.936388, 25.563942, 21.237659>,  <30.088921, 25.615612, 21.059717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.936388, 25.563942, 21.237659>,  <29.682165, 25.477825, 21.534231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936388, 25.563942, 21.237659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303180, 0.952786, 0.016779,
		0.710035, 0.214122, 0.670822,
		0.635557, 0.215293, -0.741429,
		30.127054, 25.628531, 21.015230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824392, 26.267227, 21.635324>,  <29.682165, 25.477825, 21.534231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824392, 26.267227, 21.635324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.941910, 26.185501, 21.261814>,  <30.012421, 26.136465, 21.037708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.941910, 26.185501, 21.261814>,  <29.824392, 26.267227, 21.635324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941910, 26.185501, 21.261814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245794, 0.927892, -0.280361,
		0.923727, 0.311885, 0.222389,
		0.293793, -0.204315, -0.933778,
		30.030048, 26.124207, 20.981680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285583, 26.804003, 21.396149>,  <29.824392, 26.267227, 21.635324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285583, 26.804003, 21.396149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.102489, 26.630459, 21.085732>,  <29.992632, 26.526333, 20.899481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.102489, 26.630459, 21.085732>,  <30.285583, 26.804003, 21.396149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102489, 26.630459, 21.085732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317618, 0.895051, -0.313052,
		0.830419, 0.103191, -0.547499,
		-0.457736, -0.433860, -0.776043,
		29.965168, 26.500301, 20.852919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469318, 27.191439, 20.880484>,  <30.285583, 26.804003, 21.396149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469318, 27.191439, 20.880484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.121918, 27.012775, 20.794506>,  <29.913477, 26.905577, 20.742920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.121918, 27.012775, 20.794506>,  <30.469318, 27.191439, 20.880484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121918, 27.012775, 20.794506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396063, 0.886055, -0.240916,
		0.298058, -0.124106, -0.946446,
		-0.868502, -0.446659, -0.214942,
		29.861366, 26.878778, 20.730024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266476, 27.614265, 20.256546>,  <30.469318, 27.191439, 20.880484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266476, 27.614265, 20.256546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.945555, 27.385220, 20.323982>,  <29.753002, 27.247791, 20.364445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.945555, 27.385220, 20.323982>,  <30.266476, 27.614265, 20.256546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945555, 27.385220, 20.323982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589197, 0.804963, -0.069864,
		-0.095706, -0.155386, -0.983207,
		-0.802301, -0.572617, 0.168593,
		29.704865, 27.213434, 20.374559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777727, 27.771318, 19.703953>,  <30.266476, 27.614265, 20.256546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777727, 27.771318, 19.703953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.540579, 27.633221, 19.994968>,  <29.398289, 27.550362, 20.169577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.540579, 27.633221, 19.994968>,  <29.777727, 27.771318, 19.703953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540579, 27.633221, 19.994968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560753, 0.825406, -0.065274,
		-0.577978, -0.446668, -0.682956,
		-0.592872, -0.345242, 0.727537,
		29.362717, 27.529648, 20.213230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145086, 27.986799, 19.554571>,  <29.777727, 27.771318, 19.703953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145086, 27.986799, 19.554571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.102932, 27.915329, 19.945869>,  <29.077641, 27.872446, 20.180649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.102932, 27.915329, 19.945869>,  <29.145086, 27.986799, 19.554571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102932, 27.915329, 19.945869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488981, 0.865894, 0.105478,
		-0.865905, -0.467229, -0.178622,
		-0.105385, -0.178677, 0.978248,
		29.071316, 27.861727, 20.239344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416779, 28.028053, 19.821012>,  <29.145086, 27.986799, 19.554571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416779, 28.028053, 19.821012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.660688, 28.090611, 20.131809>,  <28.807035, 28.128145, 20.318287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.660688, 28.090611, 20.131809>,  <28.416779, 28.028053, 19.821012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660688, 28.090611, 20.131809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357476, 0.929229, 0.093510,
		-0.707378, -0.334776, 0.622529,
		0.609777, 0.156392, 0.776990,
		28.843622, 28.137527, 20.364906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.822628, 37.739849, 31.105862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.082325, 37.624203, 31.387257>,  <39.238144, 37.554817, 31.556093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.082325, 37.624203, 31.387257>,  <38.822628, 37.739849, 31.105862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082325, 37.624203, 31.387257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520167, -0.506019, -0.688020,
		0.554893, 0.812625, -0.178145,
		0.649246, -0.289112, 0.703487,
		39.277100, 37.537468, 31.598303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.528740, 37.866776, 30.870846>,  <38.822628, 37.739849, 31.105862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.528740, 37.866776, 30.870846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.548241, 37.583675, 31.152756>,  <39.559940, 37.413815, 31.321901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.548241, 37.583675, 31.152756>,  <39.528740, 37.866776, 30.870846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548241, 37.583675, 31.152756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692213, -0.484736, -0.534669,
		0.720044, 0.513922, 0.466284,
		0.048754, -0.707753, 0.704775,
		39.562866, 37.371349, 31.364189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226685, 37.713799, 31.169334>,  <39.528740, 37.866776, 30.870846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226685, 37.713799, 31.169334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.024094, 37.384109, 31.270638>,  <39.902538, 37.186295, 31.331419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.024094, 37.384109, 31.270638>,  <40.226685, 37.713799, 31.169334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024094, 37.384109, 31.270638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634524, -0.555145, -0.537767,
		0.583835, -0.111668, 0.804156,
		-0.506475, -0.824224, 0.253257,
		39.872150, 37.136841, 31.346615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770546, 37.178783, 31.318104>,  <40.226685, 37.713799, 31.169334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770546, 37.178783, 31.318104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.434681, 36.970650, 31.255859>,  <40.233162, 36.845768, 31.218513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.434681, 36.970650, 31.255859>,  <40.770546, 37.178783, 31.318104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434681, 36.970650, 31.255859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498098, -0.623593, -0.602520,
		0.216474, -0.583425, 0.782787,
		-0.839666, -0.520334, -0.155611,
		40.182781, 36.814548, 31.209177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955368, 36.472443, 31.362301>,  <40.770546, 37.178783, 31.318104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955368, 36.472443, 31.362301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.602276, 36.422474, 31.181114>,  <40.390419, 36.392490, 31.072403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.602276, 36.422474, 31.181114>,  <40.955368, 36.472443, 31.362301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602276, 36.422474, 31.181114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401393, -0.701631, -0.588726,
		-0.244268, -0.701504, 0.669496,
		-0.882733, -0.124924, -0.452965,
		40.337456, 36.384998, 31.045225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843906, 35.729332, 31.312323>,  <40.955368, 36.472443, 31.362301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843906, 35.729332, 31.312323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.604584, 35.881027, 31.029987>,  <40.460991, 35.972046, 30.860586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.604584, 35.881027, 31.029987>,  <40.843906, 35.729332, 31.312323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604584, 35.881027, 31.029987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259788, -0.741502, -0.618615,
		-0.757986, -0.553487, 0.345120,
		-0.598303, 0.379244, -0.705838,
		40.425091, 35.994801, 30.818237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500954, 35.128792, 30.942516>,  <40.843906, 35.729332, 31.312323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500954, 35.128792, 30.942516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.458931, 35.438030, 30.692307>,  <40.433716, 35.623573, 30.542181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.458931, 35.438030, 30.692307>,  <40.500954, 35.128792, 30.942516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458931, 35.438030, 30.692307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292244, -0.577232, -0.762493,
		-0.950556, -0.262911, -0.165291,
		-0.105056, 0.773098, -0.625526,
		40.427414, 35.669960, 30.504648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066360, 34.829395, 30.404739>,  <40.500954, 35.128792, 30.942516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066360, 34.829395, 30.404739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.251842, 35.136490, 30.227848>,  <40.363132, 35.320747, 30.121714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.251842, 35.136490, 30.227848>,  <40.066360, 34.829395, 30.404739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251842, 35.136490, 30.227848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110944, -0.545520, -0.830722,
		-0.879017, 0.336145, -0.338134,
		0.463702, 0.767733, -0.442229,
		40.390953, 35.366810, 30.095179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720158, 34.938789, 29.687696>,  <40.066360, 34.829395, 30.404739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720158, 34.938789, 29.687696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.086468, 35.098946, 29.674717>,  <40.306252, 35.195038, 29.666929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.086468, 35.098946, 29.674717>,  <39.720158, 34.938789, 29.687696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086468, 35.098946, 29.674717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101965, -0.309831, -0.945308,
		-0.388544, 0.862377, -0.324560,
		0.915771, 0.400387, -0.032451,
		40.361198, 35.219063, 29.664982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656322, 35.259426, 28.966303>,  <39.720158, 34.938789, 29.687696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656322, 35.259426, 28.966303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.030407, 35.187122, 29.088097>,  <40.254856, 35.143742, 29.161173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.030407, 35.187122, 29.088097>,  <39.656322, 35.259426, 28.966303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030407, 35.187122, 29.088097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267251, -0.203794, -0.941831,
		0.232292, 0.962183, -0.142283,
		0.935210, -0.180755, 0.304484,
		40.310970, 35.132896, 29.179441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995468, 35.405914, 28.368382>,  <39.656322, 35.259426, 28.966303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995468, 35.405914, 28.368382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.250885, 35.194496, 28.592136>,  <40.404133, 35.067646, 28.726389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.250885, 35.194496, 28.592136>,  <39.995468, 35.405914, 28.368382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250885, 35.194496, 28.592136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313252, -0.485422, -0.816234,
		0.702953, 0.696425, -0.144393,
		0.638538, -0.528543, 0.559385,
		40.442448, 35.035934, 28.759953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695724, 35.497173, 28.045967>,  <39.995468, 35.405914, 28.368382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695724, 35.497173, 28.045967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.711227, 35.168072, 28.272797>,  <40.720531, 34.970612, 28.408895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.711227, 35.168072, 28.272797>,  <40.695724, 35.497173, 28.045967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711227, 35.168072, 28.272797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334521, -0.524073, -0.783226,
		0.941591, 0.220056, 0.254916,
		0.038759, -0.822753, 0.567076,
		40.722855, 34.921246, 28.442919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536839, 35.341156, 28.064629>,  <40.695724, 35.497173, 28.045967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536839, 35.341156, 28.064629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.275906, 35.045975, 28.133778>,  <41.119347, 34.868866, 28.175268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.275906, 35.045975, 28.133778>,  <41.536839, 35.341156, 28.064629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275906, 35.045975, 28.133778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316581, -0.472530, -0.822492,
		0.688647, -0.481812, 0.541869,
		-0.652335, -0.737952, 0.172874,
		41.080204, 34.824589, 28.185640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.840862, 34.817913, 27.740606>,  <41.536839, 35.341156, 28.064629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.840862, 34.817913, 27.740606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.479931, 34.659996, 27.809814>,  <41.263371, 34.565247, 27.851339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.479931, 34.659996, 27.809814>,  <41.840862, 34.817913, 27.740606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479931, 34.659996, 27.809814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061528, -0.515260, -0.854822,
		0.426630, -0.760687, 0.489227,
		-0.902331, -0.394794, 0.173022,
		41.209232, 34.541557, 27.861721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996387, 34.167385, 27.632978>,  <41.840862, 34.817913, 27.740606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996387, 34.167385, 27.632978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.599510, 34.185097, 27.586349>,  <41.361385, 34.195724, 27.558372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.599510, 34.185097, 27.586349>,  <41.996387, 34.167385, 27.632978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599510, 34.185097, 27.586349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079498, -0.495600, -0.864905,
		-0.096072, -0.867421, 0.488212,
		-0.992195, 0.044281, -0.116572,
		41.301853, 34.198380, 27.551378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751862, 33.524700, 27.400532>,  <41.996387, 34.167385, 27.632978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751862, 33.524700, 27.400532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.428383, 33.727211, 27.280739>,  <41.234295, 33.848717, 27.208864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.428383, 33.727211, 27.280739>,  <41.751862, 33.524700, 27.400532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428383, 33.727211, 27.280739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033883, -0.548375, -0.835545,
		-0.587251, -0.665554, 0.460623,
		-0.808695, 0.506282, -0.299483,
		41.185772, 33.879093, 27.190895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166172, 32.997250, 27.256262>,  <41.751862, 33.524700, 27.400532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166172, 32.997250, 27.256262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.038570, 33.338306, 27.090740>,  <40.962009, 33.542942, 26.991428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.038570, 33.338306, 27.090740>,  <41.166172, 32.997250, 27.256262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038570, 33.338306, 27.090740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279979, -0.501909, -0.818351,
		-0.905455, -0.145201, 0.398834,
		-0.319004, 0.852645, -0.413803,
		40.942867, 33.594101, 26.966599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525078, 32.800083, 26.804657>,  <41.166172, 32.997250, 27.256262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525078, 32.800083, 26.804657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.624199, 33.161137, 26.663887>,  <40.683670, 33.377769, 26.579424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.624199, 33.161137, 26.663887>,  <40.525078, 32.800083, 26.804657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624199, 33.161137, 26.663887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320560, -0.266403, -0.908994,
		-0.914241, 0.338062, 0.223333,
		0.247800, 0.902631, -0.351926,
		40.698540, 33.431927, 26.558310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965973, 33.100746, 26.398956>,  <40.525078, 32.800083, 26.804657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965973, 33.100746, 26.398956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.275181, 33.315487, 26.263763>,  <40.460705, 33.444332, 26.182648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.275181, 33.315487, 26.263763>,  <39.965973, 33.100746, 26.398956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275181, 33.315487, 26.263763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342250, -0.095658, -0.934727,
		-0.534141, 0.838236, 0.109792,
		0.773019, 0.536852, -0.337981,
		40.507088, 33.476543, 26.162369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751690, 33.635548, 25.896952>,  <39.965973, 33.100746, 26.398956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751690, 33.635548, 25.896952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.128666, 33.600853, 25.767780>,  <40.354851, 33.580036, 25.690277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.128666, 33.600853, 25.767780>,  <39.751690, 33.635548, 25.896952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128666, 33.600853, 25.767780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326489, -0.030233, -0.944717,
		0.072178, 0.995772, -0.056811,
		0.942441, -0.086736, -0.322927,
		40.411400, 33.574833, 25.670902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910980, 34.140533, 25.392061>,  <39.751690, 33.635548, 25.896952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910980, 34.140533, 25.392061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.167240, 33.841022, 25.324066>,  <40.320995, 33.661316, 25.283268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.167240, 33.841022, 25.324066>,  <39.910980, 34.140533, 25.392061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167240, 33.841022, 25.324066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166885, 0.080309, -0.982700,
		0.749477, 0.657936, -0.073510,
		0.640650, -0.748779, -0.169990,
		40.359436, 33.616390, 25.273069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979523, 34.062717, 24.721142>,  <39.910980, 34.140533, 25.392061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979523, 34.062717, 24.721142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.594860, 33.964550, 24.770103>,  <39.364063, 33.905651, 24.799480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.594860, 33.964550, 24.770103>,  <39.979523, 34.062717, 24.721142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594860, 33.964550, 24.770103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119381, 0.776422, 0.618803,
		-0.246904, 0.580464, -0.775951,
		-0.961658, -0.245419, 0.122405,
		39.306362, 33.890923, 24.806826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692581, 34.800514, 24.768808>,  <39.979523, 34.062717, 24.721142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692581, 34.800514, 24.768808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.444801, 34.528885, 24.926357>,  <39.296131, 34.365906, 25.020887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.444801, 34.528885, 24.926357>,  <39.692581, 34.800514, 24.768808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444801, 34.528885, 24.926357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314449, 0.674352, 0.668110,
		-0.719306, 0.290010, -0.631264,
		-0.619452, -0.679076, 0.393872,
		39.258965, 34.325161, 25.044519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998524, 35.065170, 24.731754>,  <39.692581, 34.800514, 24.768808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998524, 35.065170, 24.731754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.956474, 34.784088, 25.013222>,  <38.931244, 34.615437, 25.182102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.956474, 34.784088, 25.013222>,  <38.998524, 35.065170, 24.731754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956474, 34.784088, 25.013222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557859, 0.627438, 0.543245,
		-0.823251, -0.335443, -0.457969,
		-0.105119, -0.702709, 0.703669,
		38.924938, 34.573277, 25.224323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260601, 35.084110, 25.064112>,  <38.998524, 35.065170, 24.731754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260601, 35.084110, 25.064112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.493309, 34.906406, 25.336632>,  <38.632935, 34.799782, 25.500143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.493309, 34.906406, 25.336632>,  <38.260601, 35.084110, 25.064112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493309, 34.906406, 25.336632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241436, 0.705562, 0.666251,
		-0.776690, -0.552098, 0.303217,
		0.581774, -0.444263, 0.681300,
		38.667843, 34.773129, 25.541021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852108, 35.000282, 25.599569>,  <38.260601, 35.084110, 25.064112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852108, 35.000282, 25.599569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.222462, 34.988068, 25.750198>,  <38.444675, 34.980740, 25.840576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.222462, 34.988068, 25.750198>,  <37.852108, 35.000282, 25.599569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222462, 34.988068, 25.750198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297113, 0.556828, 0.775672,
		-0.233377, -0.830066, 0.506483,
		0.925883, -0.030541, 0.376574,
		38.500225, 34.978905, 25.863171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794674, 34.756256, 26.360485>,  <37.852108, 35.000282, 25.599569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794674, 34.756256, 26.360485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.130478, 34.961060, 26.287731>,  <38.331959, 35.083942, 26.244080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.130478, 34.961060, 26.287731>,  <37.794674, 34.756256, 26.360485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130478, 34.961060, 26.287731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280649, 0.695238, 0.661726,
		0.465259, -0.504477, 0.727349,
		0.839506, 0.512004, -0.181885,
		38.382328, 35.114662, 26.233166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915848, 34.882576, 27.003399>,  <37.794674, 34.756256, 26.360485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915848, 34.882576, 27.003399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.189987, 35.119362, 26.833752>,  <38.354469, 35.261433, 26.731964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.189987, 35.119362, 26.833752>,  <37.915848, 34.882576, 27.003399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189987, 35.119362, 26.833752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013836, 0.571715, 0.820336,
		0.728085, -0.568083, 0.383632,
		0.685347, 0.591966, -0.424117,
		38.395592, 35.296951, 26.706516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579926, 35.029922, 27.539965>,  <37.915848, 34.882576, 27.003399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579926, 35.029922, 27.539965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.547352, 35.310429, 27.256672>,  <38.527805, 35.478733, 27.086697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.547352, 35.310429, 27.256672>,  <38.579926, 35.029922, 27.539965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547352, 35.310429, 27.256672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294683, 0.695765, 0.655037,
		0.952118, -0.155360, -0.263313,
		-0.081437, 0.701266, -0.708233,
		38.522923, 35.520809, 27.044203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177254, 35.471279, 27.627447>,  <38.579926, 35.029922, 27.539965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177254, 35.471279, 27.627447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.900043, 35.685604, 27.434525>,  <38.733719, 35.814201, 27.318771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.900043, 35.685604, 27.434525>,  <39.177254, 35.471279, 27.627447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900043, 35.685604, 27.434525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051996, 0.704429, 0.707867,
		0.719037, 0.465491, -0.516047,
		-0.693024, 0.535815, -0.482307,
		38.692135, 35.846348, 27.289833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395798, 36.280720, 27.716829>,  <39.177254, 35.471279, 27.627447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395798, 36.280720, 27.716829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.014168, 36.278038, 27.597031>,  <38.785191, 36.276428, 27.525152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.014168, 36.278038, 27.597031>,  <39.395798, 36.280720, 27.716829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014168, 36.278038, 27.597031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186343, 0.796069, 0.575805,
		0.234562, 0.605169, -0.760757,
		-0.954074, -0.006700, -0.299496,
		38.727947, 36.276028, 27.507181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266209, 36.960464, 27.610302>,  <39.395798, 36.280720, 27.716829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266209, 36.960464, 27.610302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.904449, 36.794979, 27.652069>,  <38.687393, 36.695686, 27.677130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.904449, 36.794979, 27.652069>,  <39.266209, 36.960464, 27.610302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904449, 36.794979, 27.652069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233146, 0.684103, 0.691120,
		-0.357359, 0.600703, -0.715157,
		-0.904399, -0.413714, 0.104419,
		38.633129, 36.670864, 27.683395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803219, 37.566139, 27.699106>,  <39.266209, 36.960464, 27.610302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803219, 37.566139, 27.699106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.589523, 37.250324, 27.819912>,  <38.461304, 37.060833, 27.892395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.589523, 37.250324, 27.819912>,  <38.803219, 37.566139, 27.699106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589523, 37.250324, 27.819912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331930, 0.524507, 0.784038,
		-0.777438, 0.318617, -0.542285,
		-0.534241, -0.789541, 0.302013,
		38.429253, 37.013462, 27.910517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136406, 37.820625, 27.985825>,  <38.803219, 37.566139, 27.699106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136406, 37.820625, 27.985825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.214775, 37.469852, 28.161373>,  <38.261795, 37.259388, 28.266703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.214775, 37.469852, 28.161373>,  <38.136406, 37.820625, 27.985825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214775, 37.469852, 28.161373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329521, 0.362643, 0.871726,
		-0.923596, -0.315408, -0.217917,
		0.195923, -0.876931, 0.438869,
		38.273552, 37.206772, 28.293034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586674, 37.868465, 28.512047>,  <38.136406, 37.820625, 27.985825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586674, 37.868465, 28.512047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.835384, 37.571560, 28.611992>,  <37.984612, 37.393417, 28.671959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.835384, 37.571560, 28.611992>,  <37.586674, 37.868465, 28.512047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835384, 37.571560, 28.611992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235479, 0.127091, 0.963534,
		-0.746954, -0.657942, -0.095766,
		0.621779, -0.742267, 0.249863,
		38.021919, 37.348881, 28.686951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296879, 37.591309, 29.070547>,  <37.586674, 37.868465, 28.512047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296879, 37.591309, 29.070547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.658848, 37.432167, 29.130970>,  <37.876030, 37.336681, 29.167223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.658848, 37.432167, 29.130970>,  <37.296879, 37.591309, 29.070547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658848, 37.432167, 29.130970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097955, 0.150690, 0.983716,
		-0.414141, -0.904987, 0.097391,
		0.904926, -0.397858, 0.151055,
		37.930325, 37.312809, 29.176287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232777, 37.278736, 29.633215>,  <37.296879, 37.591309, 29.070547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232777, 37.278736, 29.633215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.631367, 37.312271, 29.631542>,  <37.870522, 37.332394, 29.630539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.631367, 37.312271, 29.631542>,  <37.232777, 37.278736, 29.633215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631367, 37.312271, 29.631542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012950, 0.202781, 0.979138,
		0.082936, -0.975629, 0.203151,
		0.996471, 0.083837, -0.004183,
		37.930309, 37.337421, 29.630287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357243, 36.946964, 30.279253>,  <37.232777, 37.278736, 29.633215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357243, 36.946964, 30.279253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.699295, 37.125839, 30.174351>,  <37.904526, 37.233166, 30.111408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.699295, 37.125839, 30.174351>,  <37.357243, 36.946964, 30.279253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699295, 37.125839, 30.174351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129950, 0.304828, 0.943500,
		0.501867, -0.840893, 0.202554,
		0.855127, 0.447190, -0.262257,
		37.955833, 37.259995, 30.095675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834595, 36.554394, 30.577715>,  <37.357243, 36.946964, 30.279253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834595, 36.554394, 30.577715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.973988, 36.927593, 30.541779>,  <38.057621, 37.151512, 30.520218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.973988, 36.927593, 30.541779>,  <37.834595, 36.554394, 30.577715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973988, 36.927593, 30.541779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194786, 0.165840, 0.966724,
		0.916854, -0.319382, 0.239527,
		0.348478, 0.933001, -0.089840,
		38.078529, 37.207493, 30.514826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339115, 36.701206, 31.068277>,  <37.834595, 36.554394, 30.577715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339115, 36.701206, 31.068277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.212063, 37.070435, 30.981510>,  <38.135834, 37.291973, 30.929449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.212063, 37.070435, 30.981510>,  <38.339115, 36.701206, 31.068277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212063, 37.070435, 30.981510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357013, 0.095511, 0.929204,
		0.878439, 0.372583, 0.299212,
		-0.317627, 0.923071, -0.216917,
		38.116776, 37.347355, 30.916435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673027, 37.110558, 31.506050>,  <38.339115, 36.701206, 31.068277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673027, 37.110558, 31.506050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.385944, 37.361866, 31.385933>,  <38.213696, 37.512650, 31.313862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.385944, 37.361866, 31.385933>,  <38.673027, 37.110558, 31.506050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385944, 37.361866, 31.385933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093797, 0.340089, 0.935704,
		0.690002, 0.699726, -0.185153,
		-0.717704, 0.628270, -0.300294,
		38.170631, 37.550346, 31.295845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735546, 37.674950, 31.966133>,  <38.673027, 37.110558, 31.506050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735546, 37.674950, 31.966133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.355053, 37.674114, 31.842747>,  <38.126759, 37.673615, 31.768715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.355053, 37.674114, 31.842747>,  <38.735546, 37.674950, 31.966133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355053, 37.674114, 31.842747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304376, 0.168820, 0.937473,
		0.050119, 0.985645, -0.161222,
		-0.951233, -0.002087, -0.308467,
		38.069683, 37.673489, 31.750206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.717049, 22.764732, 23.243998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.077692, 22.886890, 23.366531>,  <29.294077, 22.960184, 23.440052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.077692, 22.886890, 23.366531>,  <28.717049, 22.764732, 23.243998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077692, 22.886890, 23.366531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301952, -0.951445, 0.059813,
		0.309728, 0.038571, -0.950043,
		0.901606, 0.305393, 0.306335,
		29.348173, 22.978508, 23.458431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214973, 22.561485, 22.683691>,  <28.717049, 22.764732, 23.243998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214973, 22.561485, 22.683691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.390911, 22.590862, 23.041718>,  <29.496473, 22.608488, 23.256533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.390911, 22.590862, 23.041718>,  <29.214973, 22.561485, 22.683691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390911, 22.590862, 23.041718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287538, -0.955703, -0.062881,
		0.850798, 0.285023, -0.441480,
		0.439846, 0.073443, 0.895065,
		29.522865, 22.612896, 23.310238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.824482, 22.389469, 22.581160>,  <29.214973, 22.561485, 22.683691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.824482, 22.389469, 22.581160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.791813, 22.335587, 22.976166>,  <29.772213, 22.303257, 23.213169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.791813, 22.335587, 22.976166>,  <29.824482, 22.389469, 22.581160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.791813, 22.335587, 22.976166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226009, -0.967515, -0.113287,
		0.970696, 0.213935, 0.109462,
		-0.081670, -0.134707, 0.987514,
		29.767311, 22.295174, 23.272421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523077, 22.097507, 22.833145>,  <29.824482, 22.389469, 22.581160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523077, 22.097507, 22.833145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.253538, 21.999355, 23.111919>,  <30.091814, 21.940464, 23.279184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.253538, 21.999355, 23.111919>,  <30.523077, 22.097507, 22.833145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253538, 21.999355, 23.111919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400549, -0.913931, 0.065501,
		0.620877, 0.323293, 0.714138,
		-0.673849, -0.245379, 0.696934,
		30.051384, 21.925741, 23.320999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999599, 21.685770, 23.336338>,  <30.523077, 22.097507, 22.833145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999599, 21.685770, 23.336338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.611649, 21.620609, 23.408779>,  <30.378878, 21.581512, 23.452244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.611649, 21.620609, 23.408779>,  <30.999599, 21.685770, 23.336338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611649, 21.620609, 23.408779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194577, -0.965388, 0.173685,
		0.146540, 0.203692, 0.968006,
		-0.969879, -0.162900, 0.181102,
		30.320684, 21.571739, 23.463110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010458, 21.346298, 24.098640>,  <30.999599, 21.685770, 23.336338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010458, 21.346298, 24.098640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.679766, 21.267879, 23.887707>,  <30.481350, 21.220829, 23.761147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.679766, 21.267879, 23.887707>,  <31.010458, 21.346298, 24.098640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679766, 21.267879, 23.887707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145527, -0.979940, 0.136161,
		-0.543450, 0.035827, 0.838677,
		-0.826731, -0.196047, -0.527334,
		30.431746, 21.209064, 23.729506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.771517, 20.844885, 24.415541>,  <31.010458, 21.346298, 24.098640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.771517, 20.844885, 24.415541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530125, 20.785645, 24.102139>,  <30.385290, 20.750101, 23.914097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.530125, 20.785645, 24.102139>,  <30.771517, 20.844885, 24.415541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530125, 20.785645, 24.102139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063439, -0.988403, 0.137967,
		-0.794851, 0.033555, 0.605876,
		-0.603479, -0.148099, -0.783505,
		30.349081, 20.741215, 23.867086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097479, 20.427843, 24.522097>,  <30.771517, 20.844885, 24.415541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097479, 20.427843, 24.522097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.159107, 20.398445, 24.127968>,  <30.196083, 20.380806, 23.891491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.159107, 20.398445, 24.127968>,  <30.097479, 20.427843, 24.522097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159107, 20.398445, 24.127968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242282, -0.969594, 0.034438,
		-0.957895, 0.233420, -0.167191,
		0.154069, -0.073496, -0.985323,
		30.205328, 20.376396, 23.832371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540018, 20.053007, 24.273333>,  <30.097479, 20.427843, 24.522097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540018, 20.053007, 24.273333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.834389, 20.007542, 24.006351>,  <30.011011, 19.980263, 23.846163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.834389, 20.007542, 24.006351>,  <29.540018, 20.053007, 24.273333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834389, 20.007542, 24.006351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245208, -0.963629, -0.106260,
		-0.631101, 0.241865, -0.737030,
		0.735924, -0.113665, -0.667455,
		30.055166, 19.973442, 23.806114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291470, 19.540028, 23.717445>,  <29.540018, 20.053007, 24.273333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291470, 19.540028, 23.717445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.686550, 19.545158, 23.655113>,  <29.923599, 19.548237, 23.617714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.686550, 19.545158, 23.655113>,  <29.291470, 19.540028, 23.717445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686550, 19.545158, 23.655113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040662, -0.941267, -0.335207,
		-0.150976, 0.337420, -0.929168,
		0.987701, 0.012826, -0.155829,
		29.982861, 19.549006, 23.608364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366316, 19.202530, 23.011055>,  <29.291470, 19.540028, 23.717445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366316, 19.202530, 23.011055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.707434, 19.189770, 23.219563>,  <29.912104, 19.182114, 23.344667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.707434, 19.189770, 23.219563>,  <29.366316, 19.202530, 23.011055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707434, 19.189770, 23.219563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007554, -0.998782, -0.048766,
		0.522191, 0.037650, -0.851997,
		0.852795, -0.031901, 0.521271,
		29.963272, 19.180199, 23.375944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802427, 18.742945, 22.632471>,  <29.366316, 19.202530, 23.011055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802427, 18.742945, 22.632471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.926880, 18.748272, 23.012581>,  <30.001551, 18.751469, 23.240646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.926880, 18.748272, 23.012581>,  <29.802427, 18.742945, 22.632471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926880, 18.748272, 23.012581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065878, -0.997194, 0.035545,
		0.948081, -0.073662, -0.309380,
		0.311131, 0.013319, 0.950274,
		30.020220, 18.752268, 23.297663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582155, 18.524467, 22.890102>,  <29.802427, 18.742945, 22.632471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582155, 18.524467, 22.890102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.270802, 18.450333, 23.130024>,  <30.083988, 18.405851, 23.273977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.270802, 18.450333, 23.130024>,  <30.582155, 18.524467, 22.890102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270802, 18.450333, 23.130024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070347, -0.975161, -0.210027,
		0.623833, -0.121288, 0.772089,
		-0.778385, -0.185336, 0.599806,
		30.037287, 18.394732, 23.309965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472105, 17.922031, 22.573362>,  <30.582155, 18.524467, 22.890102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472105, 17.922031, 22.573362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.138803, 17.896355, 22.793022>,  <29.938822, 17.880949, 22.924818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.138803, 17.896355, 22.793022>,  <30.472105, 17.922031, 22.573362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138803, 17.896355, 22.793022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345442, 0.715065, 0.607743,
		-0.431691, 0.696104, -0.573656,
		-0.833254, -0.064192, 0.549151,
		29.888826, 17.877096, 22.957767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801126, 18.442173, 22.121700>,  <30.472105, 17.922031, 22.573362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801126, 18.442173, 22.121700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.970678, 18.305874, 21.786030>,  <31.072409, 18.224094, 21.584627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.970678, 18.305874, 21.786030>,  <30.801126, 18.442173, 22.121700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970678, 18.305874, 21.786030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079629, 0.908922, -0.409292,
		0.902212, 0.240312, 0.358139,
		0.423878, -0.340750, -0.839176,
		31.097841, 18.203650, 21.534277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288261, 18.905762, 21.969479>,  <30.801126, 18.442173, 22.121700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288261, 18.905762, 21.969479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.284441, 18.729656, 21.610352>,  <31.282148, 18.623993, 21.394875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.284441, 18.729656, 21.610352>,  <31.288261, 18.905762, 21.969479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284441, 18.729656, 21.610352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000805, 0.897862, -0.440276,
		0.999954, -0.003482, -0.008929,
		-0.009550, -0.440263, -0.897818,
		31.281576, 18.597578, 21.341005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805338, 19.233282, 21.653614>,  <31.288261, 18.905762, 21.969479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805338, 19.233282, 21.653614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.552185, 19.092285, 21.377872>,  <31.400293, 19.007687, 21.212427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.552185, 19.092285, 21.377872>,  <31.805338, 19.233282, 21.653614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552185, 19.092285, 21.377872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050581, 0.907275, -0.417485,
		0.772595, -0.229350, -0.592026,
		-0.632881, -0.352492, -0.689355,
		31.362322, 18.986538, 21.171066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052818, 19.555853, 21.038118>,  <31.805338, 19.233282, 21.653614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052818, 19.555853, 21.038118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.677544, 19.435390, 20.969860>,  <31.452379, 19.363113, 20.928905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.677544, 19.435390, 20.969860>,  <32.052818, 19.555853, 21.038118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677544, 19.435390, 20.969860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168413, 0.827848, -0.535074,
		0.302409, -0.473258, -0.827391,
		-0.938182, -0.301155, -0.170646,
		31.396090, 19.345043, 20.918667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041222, 19.742184, 20.365635>,  <32.052818, 19.555853, 21.038118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041222, 19.742184, 20.365635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.670563, 19.726933, 20.515232>,  <31.448168, 19.717781, 20.604990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.670563, 19.726933, 20.515232>,  <32.041222, 19.742184, 20.365635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670563, 19.726933, 20.515232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229990, 0.844440, -0.483762,
		-0.297370, -0.534291, -0.791267,
		-0.926647, -0.038127, 0.373993,
		31.392569, 19.715494, 20.627430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542421, 19.935593, 19.760735>,  <32.041222, 19.742184, 20.365635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542421, 19.935593, 19.760735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.345652, 19.975662, 20.106678>,  <31.227591, 19.999704, 20.314243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.345652, 19.975662, 20.106678>,  <31.542421, 19.935593, 19.760735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345652, 19.975662, 20.106678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367674, 0.876533, -0.310654,
		-0.789195, -0.470803, -0.394355,
		-0.491922, 0.100172, 0.864858,
		31.198074, 20.005714, 20.366135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001537, 20.371929, 19.617987>,  <31.542421, 19.935593, 19.760735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001537, 20.371929, 19.617987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.042725, 20.399166, 20.014927>,  <31.067438, 20.415508, 20.253092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.042725, 20.399166, 20.014927>,  <31.001537, 20.371929, 19.617987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042725, 20.399166, 20.014927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109862, 0.992329, -0.056690,
		-0.988599, -0.103184, 0.109661,
		0.102970, 0.068091, 0.992351,
		31.073616, 20.419594, 20.312632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526421, 20.840858, 19.821432>,  <31.001537, 20.371929, 19.617987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526421, 20.840858, 19.821432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.778412, 20.823338, 20.131584>,  <30.929605, 20.812824, 20.317675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.778412, 20.823338, 20.131584>,  <30.526421, 20.840858, 19.821432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778412, 20.823338, 20.131584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117654, 0.981501, 0.151041,
		-0.767650, -0.186378, 0.613169,
		0.629977, -0.043804, 0.775378,
		30.967405, 20.810196, 20.364197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189920, 21.259586, 20.273640>,  <30.526421, 20.840858, 19.821432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189920, 21.259586, 20.273640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.578270, 21.231411, 20.365242>,  <30.811279, 21.214506, 20.420204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.578270, 21.231411, 20.365242>,  <30.189920, 21.259586, 20.273640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578270, 21.231411, 20.365242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033784, 0.986506, 0.160201,
		-0.237201, -0.147798, 0.960152,
		0.970873, -0.070438, 0.229007,
		30.869532, 21.210279, 20.433945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312038, 21.813667, 20.752054>,  <30.189920, 21.259586, 20.273640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312038, 21.813667, 20.752054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.701031, 21.738930, 20.696381>,  <30.934425, 21.694086, 20.662977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.701031, 21.738930, 20.696381>,  <30.312038, 21.813667, 20.752054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701031, 21.738930, 20.696381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225112, 0.907530, 0.354562,
		0.060066, -0.376137, 0.924615,
		0.972480, -0.186845, -0.139184,
		30.992775, 21.682877, 20.654625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619310, 21.783934, 21.391045>,  <30.312038, 21.813667, 20.752054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619310, 21.783934, 21.391045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901794, 21.897842, 21.131763>,  <31.071285, 21.966188, 20.976194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.901794, 21.897842, 21.131763>,  <30.619310, 21.783934, 21.391045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901794, 21.897842, 21.131763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057460, 0.889470, 0.453367,
		0.705664, -0.357420, 0.611792,
		0.706213, 0.284771, -0.648204,
		31.113659, 21.983274, 20.937302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248974, 22.021681, 21.811537>,  <30.619310, 21.783934, 21.391045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248974, 22.021681, 21.811537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.287518, 22.170013, 21.442062>,  <31.310644, 22.259012, 21.220377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.287518, 22.170013, 21.442062>,  <31.248974, 22.021681, 21.811537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287518, 22.170013, 21.442062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009682, 0.927613, 0.373417,
		0.995299, -0.044926, 0.085795,
		0.096361, 0.370832, -0.923688,
		31.316425, 22.281263, 21.164957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833364, 22.630154, 21.847864>,  <31.248974, 22.021681, 21.811537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833364, 22.630154, 21.847864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.629965, 22.660900, 21.504814>,  <31.507925, 22.679348, 21.298985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.629965, 22.660900, 21.504814>,  <31.833364, 22.630154, 21.847864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629965, 22.660900, 21.504814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244671, 0.942053, 0.229503,
		0.825571, 0.326537, -0.460224,
		-0.508497, 0.076868, -0.857626,
		31.477415, 22.683960, 21.247526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045761, 23.254208, 21.622746>,  <31.833364, 22.630154, 21.847864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045761, 23.254208, 21.622746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.718716, 23.175919, 21.406155>,  <31.522488, 23.128944, 21.276199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.718716, 23.175919, 21.406155>,  <32.045761, 23.254208, 21.622746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718716, 23.175919, 21.406155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154536, 0.980540, -0.121080,
		0.554638, -0.015319, -0.831951,
		-0.817615, -0.195722, -0.541477,
		31.473431, 23.117203, 21.243711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516212, 23.191605, 21.089453>,  <32.045761, 23.254208, 21.622746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516212, 23.191605, 21.089453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905338, 23.271248, 21.136753>,  <33.138813, 23.319035, 21.165133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905338, 23.271248, 21.136753>,  <32.516212, 23.191605, 21.089453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905338, 23.271248, 21.136753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225204, -0.932364, -0.282809,
		0.053943, 0.301752, -0.951859,
		0.972817, 0.199107, 0.118250,
		33.197182, 23.330980, 21.172228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691036, 22.737419, 20.593136>,  <32.516212, 23.191605, 21.089453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691036, 22.737419, 20.593136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008533, 22.834675, 20.816154>,  <33.199032, 22.893028, 20.949965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008533, 22.834675, 20.816154>,  <32.691036, 22.737419, 20.593136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008533, 22.834675, 20.816154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281185, -0.959482, 0.018117,
		0.539359, 0.142393, -0.829949,
		0.793742, 0.243141, 0.557544,
		33.246655, 22.907618, 20.983418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302063, 22.338600, 20.369308>,  <32.691036, 22.737419, 20.593136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302063, 22.338600, 20.369308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422722, 22.445229, 20.735466>,  <33.495117, 22.509205, 20.955160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422722, 22.445229, 20.735466>,  <33.302063, 22.338600, 20.369308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422722, 22.445229, 20.735466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386332, -0.911939, 0.138255,
		0.871640, 0.311942, -0.378069,
		0.301649, 0.266569, 0.915396,
		33.513218, 22.525200, 21.010084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988297, 22.243925, 20.392035>,  <33.302063, 22.338600, 20.369308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988297, 22.243925, 20.392035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.865032, 22.230942, 20.772346>,  <33.791073, 22.223152, 21.000534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.865032, 22.230942, 20.772346>,  <33.988297, 22.243925, 20.392035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865032, 22.230942, 20.772346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490863, -0.861531, 0.129684,
		0.814917, 0.506666, 0.281426,
		-0.308163, -0.032460, 0.950780,
		33.772583, 22.221203, 21.057581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540825, 21.916439, 20.792202>,  <33.988297, 22.243925, 20.392035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540825, 21.916439, 20.792202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.235401, 21.902485, 21.050121>,  <34.052147, 21.894114, 21.204872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.235401, 21.902485, 21.050121>,  <34.540825, 21.916439, 20.792202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235401, 21.902485, 21.050121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263754, -0.928295, 0.262111,
		0.589418, 0.370205, 0.718007,
		-0.763557, -0.034884, 0.644797,
		34.006332, 21.892019, 21.243561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798386, 21.644474, 21.435581>,  <34.540825, 21.916439, 20.792202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798386, 21.644474, 21.435581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.407043, 21.564262, 21.455975>,  <34.172237, 21.516134, 21.468210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.407043, 21.564262, 21.455975>,  <34.798386, 21.644474, 21.435581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407043, 21.564262, 21.455975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206543, -0.961189, 0.182906,
		0.012326, 0.189478, 0.981807,
		-0.978360, -0.200531, 0.050983,
		34.113537, 21.504103, 21.471270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507244, 21.379930, 22.163832>,  <34.798386, 21.644474, 21.435581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507244, 21.379930, 22.163832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260525, 21.225105, 21.889679>,  <34.112495, 21.132210, 21.725187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260525, 21.225105, 21.889679>,  <34.507244, 21.379930, 22.163832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260525, 21.225105, 21.889679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412363, -0.900583, 0.137500,
		-0.670463, -0.197816, 0.715086,
		-0.616795, -0.387064, -0.685380,
		34.075485, 21.108986, 21.684065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191856, 21.580053, 22.809341>,  <34.507244, 21.379930, 22.163832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191856, 21.580053, 22.809341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.241642, 21.613064, 23.204857>,  <34.271511, 21.632870, 23.442165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.241642, 21.613064, 23.204857>,  <34.191856, 21.580053, 22.809341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241642, 21.613064, 23.204857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174434, 0.982835, -0.060076,
		-0.976771, -0.165001, 0.136719,
		0.124460, 0.082528, 0.988786,
		34.278980, 21.637823, 23.501493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629768, 22.081423, 23.072159>,  <34.191856, 21.580053, 22.809341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629768, 22.081423, 23.072159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894581, 22.088734, 23.371861>,  <34.053467, 22.093121, 23.551682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.894581, 22.088734, 23.371861>,  <33.629768, 22.081423, 23.072159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894581, 22.088734, 23.371861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155882, 0.981199, 0.113798,
		-0.733087, -0.192133, 0.652433,
		0.662031, 0.018279, 0.749254,
		34.093189, 22.094217, 23.596636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371212, 22.502590, 23.465532>,  <33.629768, 22.081423, 23.072159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371212, 22.502590, 23.465532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749996, 22.507786, 23.593967>,  <33.977268, 22.510904, 23.671028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749996, 22.507786, 23.593967>,  <33.371212, 22.502590, 23.465532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749996, 22.507786, 23.593967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056138, 0.990505, 0.125489,
		-0.316409, -0.136859, 0.938699,
		0.946960, 0.012991, 0.321088,
		34.034084, 22.511683, 23.690294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332973, 22.880152, 24.064632>,  <33.371212, 22.502590, 23.465532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332973, 22.880152, 24.064632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.726711, 22.899754, 23.996914>,  <33.962955, 22.911514, 23.956282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.726711, 22.899754, 23.996914>,  <33.332973, 22.880152, 24.064632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726711, 22.899754, 23.996914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005935, 0.969239, 0.246051,
		0.176148, -0.241194, 0.954357,
		0.984346, 0.049006, -0.169298,
		34.022015, 22.914455, 23.946125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719788, 23.171732, 24.647141>,  <33.332973, 22.880152, 24.064632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719788, 23.171732, 24.647141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.934628, 23.257263, 24.320755>,  <34.063534, 23.308582, 24.124924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.934628, 23.257263, 24.320755>,  <33.719788, 23.171732, 24.647141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934628, 23.257263, 24.320755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117994, 0.938779, 0.323683,
		0.835222, -0.270131, 0.478992,
		0.537105, 0.213829, -0.815963,
		34.095760, 23.321411, 24.075966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352154, 23.562443, 24.865665>,  <33.719788, 23.171732, 24.647141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352154, 23.562443, 24.865665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.348568, 23.651756, 24.475780>,  <34.346416, 23.705343, 24.241850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.348568, 23.651756, 24.475780>,  <34.352154, 23.562443, 24.865665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348568, 23.651756, 24.475780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138695, 0.965608, 0.219921,
		0.990295, -0.133216, -0.039626,
		-0.008966, 0.223282, -0.974713,
		34.345879, 23.718740, 24.183367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810081, 24.043070, 24.832359>,  <34.352154, 23.562443, 24.865665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810081, 24.043070, 24.832359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.579311, 24.077198, 24.507427>,  <34.440849, 24.097675, 24.312468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.579311, 24.077198, 24.507427>,  <34.810081, 24.043070, 24.832359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579311, 24.077198, 24.507427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076085, 0.984592, 0.157450,
		0.813246, 0.152642, -0.561543,
		-0.576924, 0.085320, -0.812329,
		34.406235, 24.102795, 24.263729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.537550, 19.716019, 26.725550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.515165, 19.604309, 26.342117>,  <30.501736, 19.537283, 26.112059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.515165, 19.604309, 26.342117>,  <30.537550, 19.716019, 26.725550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515165, 19.604309, 26.342117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150664, 0.946729, -0.284616,
		0.987000, -0.160350, -0.010902,
		-0.055960, -0.279273, -0.958580,
		30.498377, 19.520527, 26.054543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112200, 19.977705, 26.353292>,  <30.537550, 19.716019, 26.725550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112200, 19.977705, 26.353292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.788958, 19.932384, 26.122078>,  <30.595013, 19.905191, 25.983349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.788958, 19.932384, 26.122078>,  <31.112200, 19.977705, 26.353292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788958, 19.932384, 26.122078> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072843, 0.993016, -0.092807,
		0.584514, -0.032893, -0.810717,
		-0.808107, -0.113302, -0.578036,
		30.546526, 19.898394, 25.948668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174749, 20.495672, 25.877495>,  <31.112200, 19.977705, 26.353292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174749, 20.495672, 25.877495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.788353, 20.393284, 25.862881>,  <30.556515, 20.331850, 25.854113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.788353, 20.393284, 25.862881>,  <31.174749, 20.495672, 25.877495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788353, 20.393284, 25.862881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247747, 0.956732, -0.152595,
		0.074015, -0.138354, -0.987613,
		-0.965994, -0.255973, -0.036536,
		30.498554, 20.316492, 25.851919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906237, 20.925165, 25.292940>,  <31.174749, 20.495672, 25.877495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906237, 20.925165, 25.292940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.579895, 20.801643, 25.488499>,  <30.384090, 20.727530, 25.605835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.579895, 20.801643, 25.488499>,  <30.906237, 20.925165, 25.292940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579895, 20.801643, 25.488499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471980, 0.844086, -0.254469,
		-0.334090, -0.438360, -0.834401,
		-0.815854, -0.308805, 0.488898,
		30.335138, 20.709002, 25.635168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383814, 21.358292, 25.097889>,  <30.906237, 20.925165, 25.292940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383814, 21.358292, 25.097889> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.192698, 21.226212, 25.423512>,  <30.078028, 21.146963, 25.618885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.192698, 21.226212, 25.423512>,  <30.383814, 21.358292, 25.097889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192698, 21.226212, 25.423512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532681, 0.845769, 0.030422,
		-0.698547, -0.419096, -0.579992,
		-0.477790, -0.330201, 0.814054,
		30.049360, 21.127151, 25.667728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664061, 21.532089, 25.048773>,  <30.383814, 21.358292, 25.097889>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664061, 21.532089, 25.048773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.696779, 21.432705, 25.434845>,  <29.716410, 21.373075, 25.666489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.696779, 21.432705, 25.434845>,  <29.664061, 21.532089, 25.048773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696779, 21.432705, 25.434845> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571996, 0.781354, 0.249613,
		-0.816168, -0.572498, -0.078205,
		0.081797, -0.248459, 0.965183,
		29.721319, 21.358168, 25.724400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.998077, 21.516088, 25.352552>,  <29.664061, 21.532089, 25.048773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.998077, 21.516088, 25.352552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.256865, 21.580460, 25.650688>,  <29.412138, 21.619083, 25.829571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.256865, 21.580460, 25.650688>,  <28.998077, 21.516088, 25.352552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256865, 21.580460, 25.650688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467838, 0.855648, 0.221345,
		-0.602129, -0.491902, 0.628867,
		0.646969, 0.160930, 0.745341,
		29.450954, 21.628738, 25.874290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564880, 21.778961, 25.990124>,  <28.998077, 21.516088, 25.352552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564880, 21.778961, 25.990124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.934805, 21.916904, 26.054367>,  <29.156759, 21.999670, 26.092913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.934805, 21.916904, 26.054367>,  <28.564880, 21.778961, 25.990124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934805, 21.916904, 26.054367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379599, 0.808768, 0.449221,
		0.025020, -0.476412, 0.878866,
		0.924813, 0.344856, 0.160610,
		29.212248, 22.020361, 26.102551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504192, 22.183458, 26.651724>,  <28.564880, 21.778961, 25.990124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504192, 22.183458, 26.651724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.859596, 22.300964, 26.510727>,  <29.072838, 22.371468, 26.426128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.859596, 22.300964, 26.510727>,  <28.504192, 22.183458, 26.651724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859596, 22.300964, 26.510727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215619, 0.945401, 0.244389,
		0.405041, -0.141138, 0.903340,
		0.888510, 0.293765, -0.352494,
		29.126150, 22.389093, 26.404980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.833782, 22.716446, 27.158165>,  <28.504192, 22.183458, 26.651724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.833782, 22.716446, 27.158165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.007423, 22.760303, 26.800499>,  <29.111609, 22.786617, 26.585899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.007423, 22.760303, 26.800499>,  <28.833782, 22.716446, 27.158165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007423, 22.760303, 26.800499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137130, 0.989042, 0.054702,
		0.890366, 0.098871, 0.444379,
		0.434101, 0.109642, -0.894167,
		29.137653, 22.793196, 26.532249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461994, 23.166246, 27.293844>,  <28.833782, 22.716446, 27.158165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461994, 23.166246, 27.293844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.354675, 23.202675, 26.910236>,  <29.290283, 23.224531, 26.680071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.354675, 23.202675, 26.910236>,  <29.461994, 23.166246, 27.293844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354675, 23.202675, 26.910236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115966, 0.985229, 0.126000,
		0.956331, 0.145020, -0.253774,
		-0.268298, 0.091069, -0.959022,
		29.274185, 23.229996, 26.622530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930450, 23.590145, 26.993641>,  <29.461994, 23.166246, 27.293844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930450, 23.590145, 26.993641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.614025, 23.610050, 26.749760>,  <29.424170, 23.621994, 26.603430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.614025, 23.610050, 26.749760>,  <29.930450, 23.590145, 26.993641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614025, 23.610050, 26.749760> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152105, 0.981385, -0.117250,
		0.592520, -0.185492, -0.783909,
		-0.791065, 0.049764, -0.609704,
		29.376705, 23.624979, 26.566849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632366, 23.518694, 26.586073>,  <29.930450, 23.590145, 26.993641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632366, 23.518694, 26.586073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.007444, 23.614468, 26.686787>,  <31.232492, 23.671932, 26.747215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.007444, 23.614468, 26.686787>,  <30.632366, 23.518694, 26.586073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007444, 23.614468, 26.686787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301962, -0.920050, -0.249653,
		0.171877, 0.310128, -0.935029,
		0.937698, 0.239433, 0.251782,
		31.288754, 23.686298, 26.762321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040169, 23.293957, 26.029848>,  <30.632366, 23.518694, 26.586073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040169, 23.293957, 26.029848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.284254, 23.341480, 26.343159>,  <31.430706, 23.369993, 26.531145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.284254, 23.341480, 26.343159>,  <31.040169, 23.293957, 26.029848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284254, 23.341480, 26.343159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431494, -0.879018, -0.202829,
		0.664417, 0.461748, -0.587655,
		0.610216, 0.118807, 0.783276,
		31.467319, 23.377123, 26.578142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722471, 22.983076, 25.832634>,  <31.040169, 23.293957, 26.029848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722471, 22.983076, 25.832634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.724474, 22.992382, 26.232521>,  <31.725676, 22.997965, 26.472452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.724474, 22.992382, 26.232521>,  <31.722471, 22.983076, 25.832634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724474, 22.992382, 26.232521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389621, -0.920769, 0.019475,
		0.920961, 0.389413, -0.013675,
		0.005007, 0.023264, 0.999717,
		31.725977, 22.999361, 26.532436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196968, 22.501066, 25.978695>,  <31.722471, 22.983076, 25.832634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196968, 22.501066, 25.978695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.017429, 22.539276, 26.334091>,  <31.909706, 22.562202, 26.547329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.017429, 22.539276, 26.334091>,  <32.196968, 22.501066, 25.978695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017429, 22.539276, 26.334091> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212162, -0.954449, 0.209795,
		0.868057, 0.282669, 0.408136,
		-0.448847, 0.095523, 0.888488,
		31.882774, 22.567932, 26.600637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693832, 22.276400, 26.453093>,  <32.196968, 22.501066, 25.978695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693832, 22.276400, 26.453093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.367107, 22.255802, 26.682934>,  <32.171074, 22.243443, 26.820839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.367107, 22.255802, 26.682934>,  <32.693832, 22.276400, 26.453093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367107, 22.255802, 26.682934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273921, -0.911193, 0.307725,
		0.507729, 0.408749, 0.758377,
		-0.816810, -0.051495, 0.574604,
		32.122063, 22.240355, 26.855314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934059, 22.144852, 27.106447>,  <32.693832, 22.276400, 26.453093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934059, 22.144852, 27.106447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.560532, 22.008614, 27.062656>,  <32.336414, 21.926870, 27.036383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.560532, 22.008614, 27.062656>,  <32.934059, 22.144852, 27.106447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560532, 22.008614, 27.062656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301361, -0.913788, 0.272347,
		-0.192799, 0.221330, 0.955951,
		-0.933815, -0.340595, -0.109477,
		32.280388, 21.906435, 27.029814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800781, 21.765974, 27.657871>,  <32.934059, 22.144852, 27.106447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800781, 21.765974, 27.657871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.533447, 21.634853, 27.390778>,  <32.373047, 21.556181, 27.230522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.533447, 21.634853, 27.390778>,  <32.800781, 21.765974, 27.657871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533447, 21.634853, 27.390778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382231, -0.921429, 0.069767,
		-0.638140, -0.208601, 0.741123,
		-0.668339, -0.327801, -0.667734,
		32.332947, 21.536512, 27.190456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481941, 21.106607, 28.006273>,  <32.800781, 21.765974, 27.657871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481941, 21.106607, 28.006273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.423553, 21.101112, 27.610596>,  <32.388519, 21.097815, 27.373190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.423553, 21.101112, 27.610596>,  <32.481941, 21.106607, 28.006273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423553, 21.101112, 27.610596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408496, -0.911517, -0.047622,
		-0.901012, -0.411033, 0.138670,
		-0.145974, -0.013738, -0.989193,
		32.379761, 21.096991, 27.313837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511681, 20.364080, 27.899351>,  <32.481941, 21.106607, 28.006273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511681, 20.364080, 27.899351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.506077, 20.519066, 27.530640>,  <32.502712, 20.612057, 27.309412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.506077, 20.519066, 27.530640>,  <32.511681, 20.364080, 27.899351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506077, 20.519066, 27.530640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209239, -0.900323, -0.381624,
		-0.977764, -0.198220, -0.068455,
		-0.014013, 0.387462, -0.921779,
		32.501873, 20.635303, 27.254107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169842, 19.921881, 27.548454>,  <32.511681, 20.364080, 27.899351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169842, 19.921881, 27.548454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.365028, 20.111874, 27.255527>,  <32.482140, 20.225870, 27.079771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.365028, 20.111874, 27.255527>,  <32.169842, 19.921881, 27.548454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365028, 20.111874, 27.255527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156653, -0.873012, -0.461855,
		-0.858692, 0.110648, -0.500404,
		0.487962, 0.474982, -0.732315,
		32.511417, 20.254368, 27.035833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919960, 19.663677, 27.004751>,  <32.169842, 19.921881, 27.548454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919960, 19.663677, 27.004751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.270813, 19.806133, 26.875877>,  <32.481323, 19.891607, 26.798553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.270813, 19.806133, 26.875877>,  <31.919960, 19.663677, 27.004751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270813, 19.806133, 26.875877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219883, -0.894237, -0.389860,
		-0.426952, 0.271117, -0.862675,
		0.877134, 0.356139, -0.322182,
		32.533955, 19.912975, 26.779222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864386, 19.609980, 26.309792>,  <31.919960, 19.663677, 27.004751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864386, 19.609980, 26.309792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.250809, 19.611038, 26.413116>,  <32.482662, 19.611673, 26.475111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.250809, 19.611038, 26.413116>,  <31.864386, 19.609980, 26.309792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250809, 19.611038, 26.413116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125746, -0.878295, -0.461287,
		0.225653, 0.478112, -0.848817,
		0.966058, 0.002644, 0.258310,
		32.540627, 19.611832, 26.490610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.190960, 19.303822, 25.772213>,  <31.864386, 19.609980, 26.309792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.190960, 19.303822, 25.772213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.469074, 19.305782, 26.059700>,  <32.635944, 19.306959, 26.232191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.469074, 19.305782, 26.059700>,  <32.190960, 19.303822, 25.772213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469074, 19.305782, 26.059700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297201, -0.912441, -0.281289,
		0.654407, 0.409180, -0.635864,
		0.695286, 0.004902, 0.718716,
		32.677662, 19.307253, 26.275314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774620, 18.921448, 25.559488>,  <32.190960, 19.303822, 25.772213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774620, 18.921448, 25.559488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.844257, 18.916298, 25.953346>,  <32.886040, 18.913208, 26.189661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.844257, 18.916298, 25.953346>,  <32.774620, 18.921448, 25.559488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844257, 18.916298, 25.953346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422508, -0.902222, -0.086501,
		0.889482, 0.431079, -0.151635,
		0.174097, -0.012874, 0.984644,
		32.896488, 18.912436, 26.248739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270046, 18.984943, 25.011099>,  <32.774620, 18.921448, 25.559488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270046, 18.984943, 25.011099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.610451, 18.961868, 24.802311>,  <33.814693, 18.948023, 24.677038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.610451, 18.961868, 24.802311>,  <33.270046, 18.984943, 25.011099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610451, 18.961868, 24.802311> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051159, 0.998327, -0.026926,
		0.522649, -0.003789, 0.852540,
		0.851012, -0.057688, -0.521968,
		33.865753, 18.944563, 24.645720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725067, 19.432587, 25.290745>,  <33.270046, 18.984943, 25.011099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725067, 19.432587, 25.290745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.876034, 19.411205, 24.920944>,  <33.966614, 19.398376, 24.699064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.876034, 19.411205, 24.920944>,  <33.725067, 19.432587, 25.290745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876034, 19.411205, 24.920944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139380, 0.990239, -0.000356,
		0.915495, -0.128722, 0.381182,
		0.377416, -0.053455, -0.924500,
		33.989258, 19.395168, 24.643595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310940, 19.842052, 25.241972>,  <33.725067, 19.432587, 25.290745>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310940, 19.842052, 25.241972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.211452, 19.808865, 24.855965>,  <34.151760, 19.788952, 24.624361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.211452, 19.808865, 24.855965>,  <34.310940, 19.842052, 25.241972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211452, 19.808865, 24.855965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220822, 0.965228, -0.139899,
		0.943069, -0.247892, -0.221745,
		-0.248714, -0.082968, -0.965017,
		34.136837, 19.783974, 24.566460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850380, 20.272566, 24.875826>,  <34.310940, 19.842052, 25.241972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850380, 20.272566, 24.875826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.574776, 20.206604, 24.593529>,  <34.409412, 20.167027, 24.424150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.574776, 20.206604, 24.593529>,  <34.850380, 20.272566, 24.875826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574776, 20.206604, 24.593529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145657, 0.922395, -0.357730,
		0.709963, -0.349276, -0.611521,
		-0.689011, -0.164902, -0.705741,
		34.368073, 20.157133, 24.381805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169407, 20.311773, 24.191584>,  <34.850380, 20.272566, 24.875826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169407, 20.311773, 24.191584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.777668, 20.379944, 24.148071>,  <34.542625, 20.420847, 24.121964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.777668, 20.379944, 24.148071>,  <35.169407, 20.311773, 24.191584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777668, 20.379944, 24.148071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194640, 0.940313, -0.279154,
		0.054713, -0.294562, -0.954065,
		-0.979348, 0.170426, -0.108781,
		34.483864, 20.431072, 24.115437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160454, 20.639418, 23.556992>,  <35.169407, 20.311773, 24.191584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160454, 20.639418, 23.556992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.798206, 20.735882, 23.696529>,  <34.580856, 20.793760, 23.780252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.798206, 20.735882, 23.696529>,  <35.160454, 20.639418, 23.556992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798206, 20.735882, 23.696529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086914, 0.910657, -0.403918,
		-0.415088, -0.335477, -0.845670,
		-0.905620, 0.241162, 0.348845,
		34.526520, 20.808229, 23.801184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827309, 21.137371, 23.003944>,  <35.160454, 20.639418, 23.556992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827309, 21.137371, 23.003944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.603394, 21.193233, 23.330658>,  <34.469044, 21.226751, 23.526686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.603394, 21.193233, 23.330658>,  <34.827309, 21.137371, 23.003944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603394, 21.193233, 23.330658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058192, 0.976636, -0.206870,
		-0.826590, -0.163334, -0.538583,
		-0.559789, 0.139656, 0.816782,
		34.435455, 21.235130, 23.575693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302773, 20.743673, 22.432758>,  <34.827309, 21.137371, 23.003944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302773, 20.743673, 22.432758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.145107, 20.696598, 22.068169>,  <34.050507, 20.668352, 21.849415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.145107, 20.696598, 22.068169>,  <34.302773, 20.743673, 22.432758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145107, 20.696598, 22.068169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124957, -0.975694, 0.180019,
		-0.910506, 0.184852, 0.369875,
		-0.394162, -0.117690, -0.911474,
		34.026859, 20.661291, 21.794725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698219, 20.361528, 22.601419>,  <34.302773, 20.743673, 22.432758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698219, 20.361528, 22.601419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.811108, 20.314178, 22.220612>,  <33.878841, 20.285769, 21.992126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.811108, 20.314178, 22.220612>,  <33.698219, 20.361528, 22.601419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811108, 20.314178, 22.220612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181508, -0.981023, 0.068176,
		-0.942023, 0.153558, -0.298349,
		0.282219, -0.118377, -0.952019,
		33.895775, 20.278666, 21.935005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337032, 19.801968, 22.443920>,  <33.698219, 20.361528, 22.601419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337032, 19.801968, 22.443920> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.588100, 19.825848, 22.133446>,  <33.738743, 19.840176, 21.947161>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.588100, 19.825848, 22.133446>,  <33.337032, 19.801968, 22.443920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588100, 19.825848, 22.133446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169000, -0.962827, -0.210720,
		-0.759915, 0.263438, -0.594247,
		0.627669, 0.059702, -0.776188,
		33.776402, 19.843758, 21.900589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032955, 19.502571, 21.954538>,  <33.337032, 19.801968, 22.443920>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032955, 19.502571, 21.954538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.414955, 19.484428, 21.837292>,  <33.644154, 19.473543, 21.766943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.414955, 19.484428, 21.837292>,  <33.032955, 19.502571, 21.954538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414955, 19.484428, 21.837292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096520, -0.981973, -0.162521,
		-0.280463, 0.183500, -0.942162,
		0.955000, -0.045356, -0.293118,
		33.701454, 19.470821, 21.749355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970222, 19.083364, 21.449450>,  <33.032955, 19.502571, 21.954538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970222, 19.083364, 21.449450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.358559, 19.089661, 21.545128>,  <33.591560, 19.093439, 21.602535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.358559, 19.089661, 21.545128>,  <32.970222, 19.083364, 21.449450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358559, 19.089661, 21.545128> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042392, -0.993389, -0.106687,
		0.235934, 0.113717, -0.965093,
		0.970844, 0.015741, 0.239195,
		33.649811, 19.094383, 21.616886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392967, 18.861794, 20.869690>,  <32.970222, 19.083364, 21.449450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392967, 18.861794, 20.869690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.594727, 18.773495, 21.203602>,  <33.715782, 18.720514, 21.403948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.594727, 18.773495, 21.203602>,  <33.392967, 18.861794, 20.869690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594727, 18.773495, 21.203602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020792, -0.969594, -0.243836,
		0.863223, 0.105633, -0.493648,
		0.504395, -0.220749, 0.834779,
		33.746044, 18.707270, 21.454035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695210, 18.235653, 20.636230>,  <33.392967, 18.861794, 20.869690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695210, 18.235653, 20.636230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.711914, 18.223911, 21.035709>,  <33.721935, 18.216866, 21.275396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.711914, 18.223911, 21.035709>,  <33.695210, 18.235653, 20.636230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711914, 18.223911, 21.035709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198189, -0.979462, -0.037077,
		0.979274, 0.199478, -0.035083,
		0.041759, -0.029355, 0.998696,
		33.724442, 18.215105, 21.335318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264137, 17.768219, 20.863756>,  <33.695210, 18.235653, 20.636230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264137, 17.768219, 20.863756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.027348, 17.809124, 21.183533>,  <33.885273, 17.833668, 21.375399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.027348, 17.809124, 21.183533>,  <34.264137, 17.768219, 20.863756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027348, 17.809124, 21.183533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033507, -0.994183, 0.102364,
		0.805260, 0.033810, 0.591957,
		-0.591974, 0.102264, 0.799443,
		33.849754, 17.839804, 21.423365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548069, 17.230492, 21.401398>,  <34.264137, 17.768219, 20.863756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548069, 17.230492, 21.401398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.174503, 17.345234, 21.486732>,  <33.950363, 17.414080, 21.537933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.174503, 17.345234, 21.486732>,  <34.548069, 17.230492, 21.401398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174503, 17.345234, 21.486732> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243026, -0.947101, 0.209613,
		0.262179, 0.143915, 0.954228,
		-0.933917, 0.286858, 0.213335,
		33.894329, 17.431292, 21.550734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.897909, 33.661705, 20.335054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607683, 33.391022, 20.285049>,  <30.433548, 33.228611, 20.255047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.607683, 33.391022, 20.285049>,  <30.897909, 33.661705, 20.335054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607683, 33.391022, 20.285049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516183, -0.655328, 0.551453,
		-0.455096, 0.335583, 0.824786,
		-0.725564, -0.676704, -0.125015,
		30.390015, 33.188011, 20.247545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750990, 33.460049, 20.997379>,  <30.897909, 33.661705, 20.335054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750990, 33.460049, 20.997379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627085, 33.174206, 20.746498>,  <30.552742, 33.002701, 20.595970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627085, 33.174206, 20.746498>,  <30.750990, 33.460049, 20.997379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627085, 33.174206, 20.746498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572852, -0.666749, 0.476745,
		-0.758872, -0.211615, 0.615900,
		-0.309764, -0.714608, -0.627202,
		30.534155, 32.959824, 20.558338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752501, 32.795536, 21.449869>,  <30.750990, 33.460049, 20.997379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752501, 32.795536, 21.449869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716537, 32.638000, 21.083961>,  <30.694960, 32.543480, 20.864416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716537, 32.638000, 21.083961>,  <30.752501, 32.795536, 21.449869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716537, 32.638000, 21.083961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434540, -0.841968, 0.319790,
		-0.896154, -0.368754, 0.246838,
		-0.089906, -0.393842, -0.914771,
		30.689566, 32.519848, 20.809530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375315, 32.189358, 21.482391>,  <30.752501, 32.795536, 21.449869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375315, 32.189358, 21.482391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582199, 32.155689, 21.141708>,  <30.706329, 32.135487, 20.937298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582199, 32.155689, 21.141708>,  <30.375315, 32.189358, 21.482391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582199, 32.155689, 21.141708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304316, -0.912032, 0.274934,
		-0.799929, -0.401387, -0.446096,
		0.517209, -0.084173, -0.851709,
		30.737362, 32.130436, 20.886196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285183, 31.538427, 21.288757>,  <30.375315, 32.189358, 21.482391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285183, 31.538427, 21.288757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604525, 31.634315, 21.067791>,  <30.796129, 31.691849, 20.935211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604525, 31.634315, 21.067791>,  <30.285183, 31.538427, 21.288757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604525, 31.634315, 21.067791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344862, -0.934027, 0.093078,
		-0.493658, -0.264816, -0.828356,
		0.798356, 0.239720, -0.552415,
		30.844032, 31.706232, 20.902067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524067, 30.881014, 20.936872>,  <30.285183, 31.538427, 21.288757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524067, 30.881014, 20.936872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837708, 31.123981, 20.885918>,  <31.025892, 31.269762, 20.855345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.837708, 31.123981, 20.885918>,  <30.524067, 30.881014, 20.936872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.837708, 31.123981, 20.885918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610229, -0.791967, -0.020201,
		-0.113156, -0.061896, -0.991647,
		0.784102, 0.607418, -0.127387,
		31.072939, 31.306208, 20.847702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903410, 30.629906, 20.387478>,  <30.524067, 30.881014, 20.936872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903410, 30.629906, 20.387478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162613, 30.863728, 20.582775>,  <31.318134, 31.004021, 20.699955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162613, 30.863728, 20.582775>,  <30.903410, 30.629906, 20.387478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162613, 30.863728, 20.582775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626592, -0.773589, 0.094565,
		0.432980, 0.244652, -0.867568,
		0.648005, 0.584556, 0.488245,
		31.357014, 31.039095, 20.729248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509388, 30.466911, 20.014336>,  <30.903410, 30.629906, 20.387478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509388, 30.466911, 20.014336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595734, 30.621155, 20.373158>,  <31.647541, 30.713701, 20.588451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595734, 30.621155, 20.373158>,  <31.509388, 30.466911, 20.014336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595734, 30.621155, 20.373158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687095, -0.712746, 0.141041,
		0.693759, 0.585917, -0.418808,
		0.215865, 0.385609, 0.897055,
		31.660494, 30.736837, 20.642275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232788, 30.410416, 20.051889>,  <31.509388, 30.466911, 20.014336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232788, 30.410416, 20.051889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077168, 30.429161, 20.419899>,  <31.983795, 30.440409, 20.640705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.077168, 30.429161, 20.419899>,  <32.232788, 30.410416, 20.051889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077168, 30.429161, 20.419899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512615, -0.818790, 0.258474,
		0.765420, 0.572177, 0.294526,
		-0.389048, 0.046863, 0.920025,
		31.960453, 30.443220, 20.695906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780060, 30.357677, 20.416529>,  <32.232788, 30.410416, 20.051889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780060, 30.357677, 20.416529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472218, 30.243385, 20.644939>,  <32.287514, 30.174810, 20.781986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472218, 30.243385, 20.644939>,  <32.780060, 30.357677, 20.416529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472218, 30.243385, 20.644939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549997, -0.750940, 0.365503,
		0.324372, 0.595355, 0.735075,
		-0.769601, -0.285730, 0.571028,
		32.241337, 30.157667, 20.816248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181690, 30.116802, 21.060274>,  <32.780060, 30.357677, 20.416529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181690, 30.116802, 21.060274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812115, 29.963787, 21.060299>,  <32.590370, 29.871979, 21.060314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812115, 29.963787, 21.060299>,  <33.181690, 30.116802, 21.060274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812115, 29.963787, 21.060299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345322, -0.833985, 0.430373,
		-0.164582, 0.397661, 0.902651,
		-0.923940, -0.382537, 0.000062,
		32.534931, 29.849026, 21.060318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152706, 29.685369, 21.625498>,  <33.181690, 30.116802, 21.060274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152706, 29.685369, 21.625498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883205, 29.527863, 21.375378>,  <32.721504, 29.433359, 21.225306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883205, 29.527863, 21.375378>,  <33.152706, 29.685369, 21.625498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883205, 29.527863, 21.375378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324452, -0.917905, 0.228431,
		-0.663916, -0.048973, 0.746202,
		-0.673756, -0.393766, -0.625301,
		32.681080, 29.409733, 21.187788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093853, 29.773264, 22.393383>,  <33.152706, 29.685369, 21.625498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093853, 29.773264, 22.393383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308773, 29.820225, 22.727455>,  <33.437725, 29.848402, 22.927898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308773, 29.820225, 22.727455>,  <33.093853, 29.773264, 22.393383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308773, 29.820225, 22.727455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084974, 0.992760, -0.084889,
		-0.839100, -0.025358, 0.543386,
		0.537299, 0.117404, 0.835180,
		33.469963, 29.855446, 22.978008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762253, 30.229437, 22.771259>,  <33.093853, 29.773264, 22.393383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762253, 30.229437, 22.771259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121956, 30.245087, 22.945522>,  <33.337780, 30.254477, 23.050079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121956, 30.245087, 22.945522>,  <32.762253, 30.229437, 22.771259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121956, 30.245087, 22.945522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072786, 0.995490, 0.060837,
		-0.431311, -0.086418, 0.898055,
		0.899262, 0.039126, 0.435656,
		33.391735, 30.256824, 23.076220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687729, 30.567408, 23.416452>,  <32.762253, 30.229437, 22.771259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687729, 30.567408, 23.416452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071793, 30.596981, 23.308651>,  <33.302231, 30.614725, 23.243969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071793, 30.596981, 23.308651>,  <32.687729, 30.567408, 23.416452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071793, 30.596981, 23.308651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003045, 0.967080, 0.254455,
		0.279446, -0.243496, 0.928773,
		0.960157, 0.073934, -0.269505,
		33.359840, 30.619162, 23.227800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815903, 30.930128, 23.907381>,  <32.687729, 30.567408, 23.416452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815903, 30.930128, 23.907381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133698, 30.944881, 23.664917>,  <33.324375, 30.953733, 23.519438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133698, 30.944881, 23.664917>,  <32.815903, 30.930128, 23.907381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133698, 30.944881, 23.664917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163220, 0.948458, 0.271638,
		0.584938, -0.314750, 0.747516,
		0.794486, 0.036882, -0.606162,
		33.372044, 30.955946, 23.483068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283653, 31.146721, 24.352974>,  <32.815903, 30.930128, 23.907381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283653, 31.146721, 24.352974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398705, 31.262997, 23.987949>,  <33.467735, 31.332762, 23.768934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398705, 31.262997, 23.987949>,  <33.283653, 31.146721, 24.352974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398705, 31.262997, 23.987949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069594, 0.943965, 0.322625,
		0.955211, -0.156305, 0.251279,
		0.287626, 0.290688, -0.912563,
		33.484993, 31.350203, 23.714180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791943, 31.528492, 24.453070>,  <33.283653, 31.146721, 24.352974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791943, 31.528492, 24.453070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725521, 31.659615, 24.081055>,  <33.685669, 31.738289, 23.857845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725521, 31.659615, 24.081055>,  <33.791943, 31.528492, 24.453070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725521, 31.659615, 24.081055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247864, 0.926726, 0.282386,
		0.954457, -0.183630, -0.235140,
		-0.166056, 0.327809, -0.930036,
		33.675705, 31.757957, 23.802044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363377, 32.055138, 24.218904>,  <33.791943, 31.528492, 24.453070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363377, 32.055138, 24.218904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053089, 32.131714, 23.978367>,  <33.866917, 32.177658, 23.834044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053089, 32.131714, 23.978367>,  <34.363377, 32.055138, 24.218904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053089, 32.131714, 23.978367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105067, 0.978757, 0.176055,
		0.622275, 0.073387, -0.779351,
		-0.775716, 0.191439, -0.601345,
		33.820374, 32.189144, 23.797962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529404, 32.670696, 23.814680>,  <34.363377, 32.055138, 24.218904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529404, 32.670696, 23.814680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131382, 32.664909, 23.775372>,  <33.892570, 32.661438, 23.751787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131382, 32.664909, 23.775372>,  <34.529404, 32.670696, 23.814680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131382, 32.664909, 23.775372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012118, 0.999627, -0.024484,
		0.098588, -0.023172, -0.994858,
		-0.995054, -0.014470, -0.098270,
		33.832867, 32.660568, 23.745890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300186, 33.111588, 23.191290>,  <34.529404, 32.670696, 23.814680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300186, 33.111588, 23.191290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000664, 33.082233, 23.454773>,  <33.820950, 33.064621, 23.612864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000664, 33.082233, 23.454773>,  <34.300186, 33.111588, 23.191290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000664, 33.082233, 23.454773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064731, 0.997197, 0.037514,
		-0.659616, -0.014549, -0.751462,
		-0.748810, -0.073388, 0.658709,
		33.776020, 33.060219, 23.652386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139297, 33.773315, 23.158129>,  <34.300186, 33.111588, 23.191290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139297, 33.773315, 23.158129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886631, 33.643749, 23.439857>,  <33.735031, 33.566010, 23.608894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886631, 33.643749, 23.439857>,  <34.139297, 33.773315, 23.158129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886631, 33.643749, 23.439857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128720, 0.939737, 0.316742,
		-0.764476, 0.109416, -0.635299,
		-0.631670, -0.323917, 0.704322,
		33.697128, 33.546574, 23.651154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544193, 34.191483, 23.115387>,  <34.139297, 33.773315, 23.158129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544193, 34.191483, 23.115387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549530, 34.052338, 23.490368>,  <33.552734, 33.968853, 23.715357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549530, 34.052338, 23.490368>,  <33.544193, 34.191483, 23.115387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549530, 34.052338, 23.490368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171266, 0.922885, 0.344893,
		-0.985134, -0.165156, -0.047260,
		0.013346, -0.347860, 0.937451,
		33.553535, 33.947979, 23.771603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010941, 34.600056, 23.467529>,  <33.544193, 34.191483, 23.115387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010941, 34.600056, 23.467529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258644, 34.445049, 23.740688>,  <33.407269, 34.352047, 23.904583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258644, 34.445049, 23.740688>,  <33.010941, 34.600056, 23.467529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258644, 34.445049, 23.740688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019913, 0.877198, 0.479716,
		-0.784933, -0.283471, 0.550931,
		0.619261, -0.387516, 0.682896,
		33.444424, 34.328796, 23.945557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747822, 34.885815, 24.075630>,  <33.010941, 34.600056, 23.467529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747822, 34.885815, 24.075630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118248, 34.764889, 24.165974>,  <33.340504, 34.692333, 24.220181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.118248, 34.764889, 24.165974>,  <32.747822, 34.885815, 24.075630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118248, 34.764889, 24.165974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121199, 0.805079, 0.580654,
		-0.357373, -0.510349, 0.782195,
		0.926065, -0.302311, 0.225860,
		33.396069, 34.674194, 24.233732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796352, 34.765175, 24.914364>,  <32.747822, 34.885815, 24.075630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796352, 34.765175, 24.914364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131084, 34.853298, 24.713890>,  <33.331924, 34.906174, 24.593605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131084, 34.853298, 24.713890>,  <32.796352, 34.765175, 24.914364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131084, 34.853298, 24.713890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050166, 0.880750, 0.470917,
		0.545165, -0.419218, 0.725983,
		0.836826, 0.220308, -0.501184,
		33.382133, 34.919392, 24.563534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113689, 34.622601, 25.346619>,  <32.796352, 34.765175, 24.914364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113689, 34.622601, 25.346619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287270, 34.975224, 25.420959>,  <32.391418, 35.186798, 25.465565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287270, 34.975224, 25.420959>,  <32.113689, 34.622601, 25.346619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287270, 34.975224, 25.420959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236564, 0.087556, -0.967663,
		-0.869324, 0.463885, -0.170550,
		0.433952, 0.881558, 0.185853,
		32.417454, 35.239693, 25.476715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410606, 34.588768, 25.012339>,  <32.113689, 34.622601, 25.346619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410606, 34.588768, 25.012339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129786, 34.400242, 25.225876>,  <30.961292, 34.287128, 25.353998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.129786, 34.400242, 25.225876>,  <31.410606, 34.588768, 25.012339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129786, 34.400242, 25.225876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411845, -0.880282, -0.235559,
		0.580952, 0.054485, 0.812112,
		-0.702053, -0.471312, 0.533841,
		30.919170, 34.258846, 25.386028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774439, 33.911736, 25.282665>,  <31.410606, 34.588768, 25.012339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774439, 33.911736, 25.282665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376884, 33.868591, 25.273220>,  <31.138351, 33.842705, 25.267553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376884, 33.868591, 25.273220>,  <31.774439, 33.911736, 25.282665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376884, 33.868591, 25.273220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110333, -0.962050, -0.249574,
		0.004201, -0.250653, 0.968068,
		-0.993886, -0.107858, -0.023613,
		31.078718, 33.836235, 25.266136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603197, 33.366730, 25.793421>,  <31.774439, 33.911736, 25.282665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603197, 33.366730, 25.793421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295988, 33.387257, 25.538074>,  <31.111662, 33.399574, 25.384867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295988, 33.387257, 25.538074>,  <31.603197, 33.366730, 25.793421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295988, 33.387257, 25.538074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039647, -0.991062, -0.127374,
		-0.639195, -0.123135, 0.759123,
		-0.768022, 0.051319, -0.638364,
		31.065582, 33.402653, 25.346565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116913, 32.786968, 25.998625>,  <31.603197, 33.366730, 25.793421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116913, 32.786968, 25.998625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052986, 32.887550, 25.616791>,  <31.014629, 32.947899, 25.387691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052986, 32.887550, 25.616791>,  <31.116913, 32.786968, 25.998625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052986, 32.887550, 25.616791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078062, -0.960766, -0.266150,
		-0.984055, -0.117053, 0.133919,
		-0.159818, 0.251452, -0.954584,
		31.005041, 32.962986, 25.330416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620811, 32.309265, 25.806589>,  <31.116913, 32.786968, 25.998625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620811, 32.309265, 25.806589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802504, 32.436298, 25.473648>,  <30.911520, 32.512520, 25.273884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802504, 32.436298, 25.473648>,  <30.620811, 32.309265, 25.806589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802504, 32.436298, 25.473648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043766, -0.941128, -0.335206,
		-0.889808, 0.115833, -0.441389,
		0.454231, 0.317587, -0.832354,
		30.938772, 32.531574, 25.223942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272274, 31.978462, 25.334015>,  <30.620811, 32.309265, 25.806589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272274, 31.978462, 25.334015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580248, 32.080856, 25.100204>,  <30.765032, 32.142292, 24.959917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580248, 32.080856, 25.100204>,  <30.272274, 31.978462, 25.334015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580248, 32.080856, 25.100204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130837, -0.959878, -0.248025,
		-0.624566, 0.114485, -0.772535,
		0.769934, 0.255984, -0.584528,
		30.811228, 32.157650, 24.924847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169453, 31.697828, 24.690281>,  <30.272274, 31.978462, 25.334015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169453, 31.697828, 24.690281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565506, 31.753017, 24.700066>,  <30.803139, 31.786131, 24.705936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565506, 31.753017, 24.700066>,  <30.169453, 31.697828, 24.690281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565506, 31.753017, 24.700066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140057, -0.979919, -0.141927,
		0.004386, 0.143952, -0.989575,
		0.990134, 0.137975, 0.024460,
		30.862547, 31.794411, 24.707403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449284, 31.281908, 24.191788>,  <30.169453, 31.697828, 24.690281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449284, 31.281908, 24.191788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764112, 31.359554, 24.425999>,  <30.953009, 31.406141, 24.566525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.764112, 31.359554, 24.425999>,  <30.449284, 31.281908, 24.191788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764112, 31.359554, 24.425999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232072, -0.972642, 0.010497,
		0.571545, 0.127623, -0.810586,
		0.787070, 0.194114, 0.585526,
		31.000233, 31.417788, 24.601656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991245, 30.938282, 23.851942>,  <30.449284, 31.281908, 24.191788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991245, 30.938282, 23.851942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105705, 30.986141, 24.232216>,  <31.174381, 31.014856, 24.460381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105705, 30.986141, 24.232216>,  <30.991245, 30.938282, 23.851942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105705, 30.986141, 24.232216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178039, -0.981535, 0.069942,
		0.941499, 0.149245, -0.302167,
		0.286149, 0.119648, 0.950686,
		31.191549, 31.022036, 24.517422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675238, 30.591148, 23.919598>,  <30.991245, 30.938282, 23.851942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675238, 30.591148, 23.919598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499054, 30.604103, 24.278473>,  <31.393343, 30.611876, 24.493797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499054, 30.604103, 24.278473>,  <31.675238, 30.591148, 23.919598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499054, 30.604103, 24.278473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152973, -0.982028, 0.110549,
		0.884644, 0.185938, 0.427589,
		-0.440459, 0.032387, 0.897188,
		31.366917, 30.613819, 24.547630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178829, 30.375114, 24.459053>,  <31.675238, 30.591148, 23.919598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178829, 30.375114, 24.459053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808641, 30.311169, 24.596428>,  <31.586529, 30.272802, 24.678854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808641, 30.311169, 24.596428>,  <32.178829, 30.375114, 24.459053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808641, 30.311169, 24.596428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216521, -0.967137, 0.133282,
		0.310845, 0.197710, 0.929670,
		-0.925469, -0.159863, 0.343439,
		31.531000, 30.263210, 24.699459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318371, 29.762499, 24.842045>,  <32.178829, 30.375114, 24.459053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318371, 29.762499, 24.842045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920797, 29.804173, 24.856125>,  <31.682253, 29.829176, 24.864573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920797, 29.804173, 24.856125>,  <32.318371, 29.762499, 24.842045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920797, 29.804173, 24.856125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080821, -0.909116, 0.408627,
		0.074572, 0.403303, 0.912023,
		-0.993935, 0.104183, 0.035199,
		31.622618, 29.835428, 24.866684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085632, 29.599508, 25.473013>,  <32.318371, 29.762499, 24.842045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085632, 29.599508, 25.473013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746824, 29.513084, 25.278744>,  <31.543539, 29.461231, 25.162182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.746824, 29.513084, 25.278744>,  <32.085632, 29.599508, 25.473013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746824, 29.513084, 25.278744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053273, -0.874564, 0.481974,
		-0.528885, 0.434115, 0.729263,
		-0.847020, -0.216059, -0.485671,
		31.492718, 29.448267, 25.133043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537672, 29.469015, 26.041765>,  <32.085632, 29.599508, 25.473013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537672, 29.469015, 26.041765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421860, 29.310429, 25.693287>,  <31.352371, 29.215277, 25.484200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421860, 29.310429, 25.693287>,  <31.537672, 29.469015, 26.041765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421860, 29.310429, 25.693287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009607, -0.908933, 0.416833,
		-0.957120, 0.129056, 0.259357,
		-0.289532, -0.396467, -0.871197,
		31.335001, 29.191488, 25.431927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217316, 28.850088, 26.231142>,  <31.537672, 29.469015, 26.041765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217316, 28.850088, 26.231142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257973, 28.762947, 25.842873>,  <31.282368, 28.710663, 25.609911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257973, 28.762947, 25.842873>,  <31.217316, 28.850088, 26.231142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257973, 28.762947, 25.842873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209396, -0.958554, 0.193205,
		-0.972534, 0.183618, -0.143047,
		0.101642, -0.217852, -0.970675,
		31.288465, 28.697592, 25.551670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594473, 28.453012, 26.058138>,  <31.217316, 28.850088, 26.231142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594473, 28.453012, 26.058138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879536, 28.389874, 25.784729>,  <31.050573, 28.351990, 25.620684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879536, 28.389874, 25.784729>,  <30.594473, 28.453012, 26.058138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879536, 28.389874, 25.784729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137940, -0.986865, 0.084080,
		-0.687816, 0.034365, -0.725071,
		0.712658, -0.157848, -0.683522,
		31.093332, 28.342520, 25.579672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265694, 27.916710, 25.772408>,  <30.594473, 28.453012, 26.058138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265694, 27.916710, 25.772408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654087, 27.901558, 25.677959>,  <30.887123, 27.892466, 25.621290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654087, 27.901558, 25.677959>,  <30.265694, 27.916710, 25.772408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654087, 27.901558, 25.677959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012865, -0.994219, 0.106599,
		-0.238795, -0.100469, -0.965859,
		0.970985, -0.037881, -0.236122,
		30.945383, 27.890194, 25.607122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386860, 27.471523, 25.216681>,  <30.265694, 27.916710, 25.772408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386860, 27.471523, 25.216681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746164, 27.482292, 25.392136>,  <30.961746, 27.488754, 25.497410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746164, 27.482292, 25.392136>,  <30.386860, 27.471523, 25.216681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746164, 27.482292, 25.392136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033295, -0.991084, 0.129014,
		0.438202, -0.130493, -0.889354,
		0.898260, 0.026924, 0.438640,
		31.015642, 27.490370, 25.523727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721413, 26.793018, 24.980146>,  <30.386860, 27.471523, 25.216681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721413, 26.793018, 24.980146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942005, 26.927521, 25.285511>,  <31.074360, 27.008223, 25.468731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.942005, 26.927521, 25.285511>,  <30.721413, 26.793018, 24.980146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942005, 26.927521, 25.285511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022929, -0.920923, 0.389070,
		0.833872, -0.197061, -0.515582,
		0.551482, 0.336256, 0.763413,
		31.107450, 27.028399, 25.514534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437933, 26.472593, 24.964108>,  <30.721413, 26.793018, 24.980146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437933, 26.472593, 24.964108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383759, 26.611683, 25.335213>,  <31.351254, 26.695137, 25.557877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383759, 26.611683, 25.335213>,  <31.437933, 26.472593, 24.964108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383759, 26.611683, 25.335213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064261, -0.931336, 0.358446,
		0.988700, 0.108165, 0.103790,
		-0.135435, 0.347726, 0.927763,
		31.343128, 26.716002, 25.613541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946293, 26.081285, 25.391365>,  <31.437933, 26.472593, 24.964108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946293, 26.081285, 25.391365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709816, 26.254757, 25.663368>,  <31.567930, 26.358839, 25.826571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.709816, 26.254757, 25.663368>,  <31.946293, 26.081285, 25.391365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.709816, 26.254757, 25.663368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198338, -0.739064, 0.643775,
		0.781762, 0.515468, 0.350915,
		-0.591194, 0.433679, 0.680009,
		31.532457, 26.384861, 25.867371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335327, 26.013983, 26.032175>,  <31.946293, 26.081285, 25.391365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335327, 26.013983, 26.032175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938532, 26.043751, 26.073017>,  <31.700455, 26.061611, 26.097523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938532, 26.043751, 26.073017>,  <32.335327, 26.013983, 26.032175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938532, 26.043751, 26.073017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004321, -0.787672, 0.616080,
		0.126274, 0.611584, 0.781038,
		-0.991986, 0.074420, 0.102105,
		31.640936, 26.066076, 26.103649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.221626, 25.924295, 26.818237>,  <32.335327, 26.013983, 26.032175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.221626, 25.924295, 26.818237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879515, 25.838905, 26.629375>,  <31.674248, 25.787670, 26.516058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.879515, 25.838905, 26.629375>,  <32.221626, 25.924295, 26.818237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879515, 25.838905, 26.629375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001536, -0.912233, 0.409669,
		-0.518168, 0.349655, 0.780540,
		-0.855278, -0.213476, -0.472153,
		31.622931, 25.774862, 26.487730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849161, 25.610657, 27.309488>,  <32.221626, 25.924295, 26.818237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849161, 25.610657, 27.309488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659622, 25.465435, 26.988575>,  <31.545898, 25.378302, 26.796026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659622, 25.465435, 26.988575>,  <31.849161, 25.610657, 27.309488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659622, 25.465435, 26.988575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160801, -0.860068, 0.484176,
		-0.865802, 0.358434, 0.349161,
		-0.473847, -0.363054, -0.802285,
		31.517467, 25.356518, 26.747890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241819, 25.237175, 27.556028>,  <31.849161, 25.610657, 27.309488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241819, 25.237175, 27.556028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331285, 25.094704, 27.193127>,  <31.384966, 25.009220, 26.975386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331285, 25.094704, 27.193127>,  <31.241819, 25.237175, 27.556028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331285, 25.094704, 27.193127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038928, -0.933358, 0.356830,
		-0.973888, -0.044493, -0.222627,
		0.223667, -0.356178, -0.907254,
		31.398386, 24.987850, 26.920950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783022, 24.606499, 27.499592>,  <31.241819, 25.237175, 27.556028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783022, 24.606499, 27.499592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036503, 24.578907, 27.191395>,  <31.188591, 24.562353, 27.006475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036503, 24.578907, 27.191395>,  <30.783022, 24.606499, 27.499592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036503, 24.578907, 27.191395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069725, -0.986869, 0.145696,
		-0.770428, -0.146051, -0.620573,
		0.633703, -0.068978, -0.770495,
		31.226614, 24.558214, 26.960247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561382, 23.994179, 27.163622>,  <30.783022, 24.606499, 27.499592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561382, 23.994179, 27.163622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933865, 24.064758, 27.036049>,  <31.157354, 24.107105, 26.959505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933865, 24.064758, 27.036049>,  <30.561382, 23.994179, 27.163622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933865, 24.064758, 27.036049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195948, -0.980160, 0.029851,
		-0.307337, -0.090291, -0.947308,
		0.931208, 0.176449, -0.318931,
		31.213226, 24.117693, 26.940369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139605, 24.087309, 26.493608>,  <30.561382, 23.994179, 27.163622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139605, 24.087309, 26.493608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743248, 24.034779, 26.481697>,  <29.505434, 24.003262, 26.474550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.743248, 24.034779, 26.481697>,  <30.139605, 24.087309, 26.493608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743248, 24.034779, 26.481697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125893, 0.981938, -0.141239,
		0.047787, -0.136204, -0.989527,
		-0.990892, -0.131324, -0.029776,
		29.445980, 23.995380, 26.472765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929399, 24.444292, 25.918621>,  <30.139605, 24.087309, 26.493608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929399, 24.444292, 25.918621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595673, 24.406288, 26.135834>,  <29.395435, 24.383486, 26.266161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595673, 24.406288, 26.135834>,  <29.929399, 24.444292, 25.918621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595673, 24.406288, 26.135834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095328, 0.995062, 0.027638,
		-0.542977, -0.028708, -0.839257,
		-0.834319, -0.095012, 0.543032,
		29.345377, 24.377785, 26.298744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404772, 24.791840, 25.468517>,  <29.929399, 24.444292, 25.918621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404772, 24.791840, 25.468517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218143, 24.799156, 25.822235>,  <29.106167, 24.803545, 26.034466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218143, 24.799156, 25.822235>,  <29.404772, 24.791840, 25.468517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218143, 24.799156, 25.822235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280325, 0.945186, -0.167454,
		-0.838886, -0.326019, -0.435870,
		-0.466571, 0.018289, 0.884295,
		29.078173, 24.804644, 26.087524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.830317, 25.061222, 25.259142>,  <29.404772, 24.791840, 25.468517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.830317, 25.061222, 25.259142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820475, 25.111816, 25.655807>,  <28.814569, 25.142172, 25.893806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820475, 25.111816, 25.655807>,  <28.830317, 25.061222, 25.259142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820475, 25.111816, 25.655807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293364, 0.947378, -0.128115,
		-0.955684, -0.294070, 0.013797,
		-0.024603, 0.126485, 0.991663,
		28.813093, 25.149761, 25.953306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.260361, 25.492113, 25.371820>,  <28.830317, 25.061222, 25.259142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.260361, 25.492113, 25.371820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449411, 25.534939, 25.721714>,  <28.562841, 25.560635, 25.931650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449411, 25.534939, 25.721714>,  <28.260361, 25.492113, 25.371820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449411, 25.534939, 25.721714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330402, 0.941718, 0.063257,
		-0.816980, -0.318911, 0.480457,
		0.472629, 0.107065, 0.874734,
		28.591200, 25.567059, 25.984135>
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
