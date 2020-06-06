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
	<43.089752, 32.211220, 22.983988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920708, 32.334038, 23.325073>,  <42.819283, 32.407730, 23.529724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920708, 32.334038, 23.325073>,  <43.089752, 32.211220, 22.983988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920708, 32.334038, 23.325073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122836, 0.912776, -0.389552,
		-0.897948, -0.269373, -0.348034,
		-0.422612, 0.307046, 0.852714,
		42.793922, 32.426151, 23.580887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237247, 32.284744, 22.957592>,  <43.089752, 32.211220, 22.983988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237247, 32.284744, 22.957592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464584, 32.527489, 23.179836>,  <42.600986, 32.673138, 23.313183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464584, 32.527489, 23.179836>,  <42.237247, 32.284744, 22.957592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464584, 32.527489, 23.179836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012552, 0.681592, -0.731625,
		-0.822696, 0.408840, 0.394996,
		0.568344, 0.606863, 0.555610,
		42.635086, 32.709549, 23.346519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012878, 32.928120, 22.880327>,  <42.237247, 32.284744, 22.957592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012878, 32.928120, 22.880327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393345, 32.987793, 22.988426>,  <42.621624, 33.023598, 23.053286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.393345, 32.987793, 22.988426>,  <42.012878, 32.928120, 22.880327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393345, 32.987793, 22.988426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095579, 0.690118, -0.717358,
		-0.293521, 0.708154, 0.642155,
		0.951163, 0.149183, 0.270249,
		42.678692, 33.032547, 23.069500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083458, 33.596577, 22.737228>,  <42.012878, 32.928120, 22.880327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083458, 33.596577, 22.737228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429893, 33.396618, 22.736839>,  <42.637753, 33.276642, 22.736607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429893, 33.396618, 22.736839>,  <42.083458, 33.596577, 22.737228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429893, 33.396618, 22.736839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244442, 0.425199, -0.871466,
		0.436052, 0.754528, 0.490454,
		0.866087, -0.499892, -0.000970,
		42.689720, 33.246651, 22.736547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928703, 33.954575, 22.095823>,  <42.083458, 33.596577, 22.737228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928703, 33.954575, 22.095823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681698, 33.790257, 21.827518>,  <41.533493, 33.691666, 21.666536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681698, 33.790257, 21.827518>,  <41.928703, 33.954575, 22.095823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681698, 33.790257, 21.827518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746234, 0.036433, 0.664686,
		-0.248611, 0.911000, -0.329047,
		-0.617517, -0.410795, -0.670762,
		41.496445, 33.667019, 21.626289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115021, 34.072483, 22.237001>,  <41.928703, 33.954575, 22.095823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115021, 34.072483, 22.237001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856350, 34.374813, 22.195938>,  <40.701145, 34.556210, 22.171299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856350, 34.374813, 22.195938>,  <41.115021, 34.072483, 22.237001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856350, 34.374813, 22.195938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195954, -0.034549, 0.980004,
		0.737162, 0.653865, 0.170448,
		-0.646679, 0.755822, -0.102659,
		40.662346, 34.601559, 22.165140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313004, 34.679436, 22.660982>,  <41.115021, 34.072483, 22.237001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313004, 34.679436, 22.660982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918266, 34.695007, 22.598202>,  <40.681423, 34.704350, 22.560534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.918266, 34.695007, 22.598202>,  <41.313004, 34.679436, 22.660982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918266, 34.695007, 22.598202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155153, 0.045563, 0.986839,
		0.045563, 0.998203, -0.038924,
		-0.986839, 0.038924, -0.156951,
		40.622215, 34.706684, 22.551117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074455, 35.194489, 23.140444>,  <41.313004, 34.679436, 22.660982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074455, 35.194489, 23.140444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772804, 34.957802, 23.026485>,  <40.591812, 34.815792, 22.958111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.772804, 34.957802, 23.026485>,  <41.074455, 35.194489, 23.140444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772804, 34.957802, 23.026485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348584, -0.006998, 0.937252,
		-0.556577, 0.806118, -0.200984,
		-0.754129, -0.591713, -0.284895,
		40.546566, 34.780289, 22.941017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573689, 35.479324, 23.621452>,  <41.074455, 35.194489, 23.140444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573689, 35.479324, 23.621452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444874, 35.122761, 23.493908>,  <40.367584, 34.908821, 23.417381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444874, 35.122761, 23.493908>,  <40.573689, 35.479324, 23.621452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444874, 35.122761, 23.493908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260630, -0.240315, 0.935051,
		-0.910144, 0.384228, -0.154939,
		-0.322039, -0.891413, -0.318862,
		40.348263, 34.855335, 23.398249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906887, 35.385891, 23.911579>,  <40.573689, 35.479324, 23.621452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906887, 35.385891, 23.911579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003231, 35.011143, 23.810177>,  <40.061039, 34.786293, 23.749336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003231, 35.011143, 23.810177>,  <39.906887, 35.385891, 23.911579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003231, 35.011143, 23.810177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283196, -0.317668, 0.904924,
		-0.928324, -0.146171, -0.341831,
		0.240863, -0.936867, -0.253504,
		40.075489, 34.730083, 23.734125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287041, 35.030365, 23.830223>,  <39.906887, 35.385891, 23.911579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287041, 35.030365, 23.830223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588837, 34.789623, 23.934925>,  <39.769913, 34.645176, 23.997746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588837, 34.789623, 23.934925>,  <39.287041, 35.030365, 23.830223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588837, 34.789623, 23.934925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455502, -0.193056, 0.869050,
		-0.472511, -0.774917, -0.419806,
		0.754488, -0.601858, 0.261756,
		39.815182, 34.609066, 24.013453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958977, 34.492210, 24.019478>,  <39.287041, 35.030365, 23.830223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958977, 34.492210, 24.019478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317215, 34.442875, 24.190453>,  <39.532158, 34.413273, 24.293037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317215, 34.442875, 24.190453>,  <38.958977, 34.492210, 24.019478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317215, 34.442875, 24.190453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441424, -0.365849, 0.819329,
		0.055326, -0.922466, -0.382094,
		0.895591, -0.123336, 0.427439,
		39.585892, 34.405872, 24.318684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839573, 33.983646, 24.615337>,  <38.958977, 34.492210, 24.019478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839573, 33.983646, 24.615337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206654, 34.126648, 24.684635>,  <39.426903, 34.212448, 24.726213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206654, 34.126648, 24.684635>,  <38.839573, 33.983646, 24.615337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206654, 34.126648, 24.684635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134347, -0.131119, 0.982221,
		0.373868, -0.924660, -0.072297,
		0.917700, 0.357508, 0.173247,
		39.481964, 34.233902, 24.736609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098320, 33.635887, 25.164442>,  <38.839573, 33.983646, 24.615337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098320, 33.635887, 25.164442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314613, 33.972252, 25.155628>,  <39.444389, 34.174068, 25.150341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314613, 33.972252, 25.155628>,  <39.098320, 33.635887, 25.164442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314613, 33.972252, 25.155628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138482, 0.114822, 0.983686,
		0.829719, -0.528857, 0.178538,
		0.540729, 0.840908, -0.022033,
		39.476833, 34.224525, 25.149019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612057, 33.448784, 25.603987>,  <39.098320, 33.635887, 25.164442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612057, 33.448784, 25.603987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634750, 33.847431, 25.580223>,  <39.648365, 34.086620, 25.565966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634750, 33.847431, 25.580223>,  <39.612057, 33.448784, 25.603987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634750, 33.847431, 25.580223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029345, 0.057813, 0.997896,
		0.997958, -0.058356, -0.025966,
		0.056732, 0.996620, -0.059408,
		39.651772, 34.146416, 25.562401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142258, 33.755569, 26.166855>,  <39.612057, 33.448784, 25.603987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142258, 33.755569, 26.166855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906593, 34.060936, 26.060959>,  <39.765194, 34.244156, 25.997421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906593, 34.060936, 26.060959>,  <40.142258, 33.755569, 26.166855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906593, 34.060936, 26.060959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012887, 0.318720, 0.947761,
		0.807915, 0.561793, -0.177938,
		-0.589159, 0.763417, -0.264739,
		39.729847, 34.289963, 25.981537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421989, 34.367393, 26.371180>,  <40.142258, 33.755569, 26.166855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421989, 34.367393, 26.371180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035667, 34.462776, 26.330460>,  <39.803875, 34.520004, 26.306028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035667, 34.462776, 26.330460>,  <40.421989, 34.367393, 26.371180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035667, 34.462776, 26.330460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021257, 0.464133, 0.885510,
		0.258405, 0.853065, -0.453330,
		-0.965803, 0.238457, -0.101800,
		39.745926, 34.534313, 26.299919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402149, 35.147564, 26.379177>,  <40.421989, 34.367393, 26.371180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402149, 35.147564, 26.379177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037342, 35.011414, 26.470707>,  <39.818459, 34.929726, 26.525625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037342, 35.011414, 26.470707>,  <40.402149, 35.147564, 26.379177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037342, 35.011414, 26.470707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008645, 0.573751, 0.818984,
		-0.410050, 0.744953, -0.526216,
		-0.912022, -0.340373, 0.228827,
		39.763737, 34.909302, 26.539354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144775, 35.704517, 26.702492>,  <40.402149, 35.147564, 26.379177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144775, 35.704517, 26.702492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883335, 35.416203, 26.794811>,  <39.726471, 35.243214, 26.850203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883335, 35.416203, 26.794811>,  <40.144775, 35.704517, 26.702492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883335, 35.416203, 26.794811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258970, 0.499534, 0.826681,
		-0.711155, 0.480548, -0.513158,
		-0.653600, -0.720791, 0.230798,
		39.687256, 35.199966, 26.864050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408512, 35.927021, 26.836552>,  <40.144775, 35.704517, 26.702492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408512, 35.927021, 26.836552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438610, 35.580219, 27.033585>,  <39.456669, 35.372139, 27.151804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438610, 35.580219, 27.033585>,  <39.408512, 35.927021, 26.836552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438610, 35.580219, 27.033585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422646, 0.419685, 0.803265,
		-0.903166, -0.268629, -0.334859,
		0.075245, -0.867008, 0.492580,
		39.461182, 35.320118, 27.181358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825653, 35.850975, 27.216772>,  <39.408512, 35.927021, 26.836552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825653, 35.850975, 27.216772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073788, 35.602688, 27.408558>,  <39.222668, 35.453716, 27.523630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073788, 35.602688, 27.408558>,  <38.825653, 35.850975, 27.216772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073788, 35.602688, 27.408558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274261, 0.401045, 0.874039,
		-0.734821, -0.673698, 0.078544,
		0.620338, -0.620721, 0.479465,
		39.259888, 35.416473, 27.552397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329533, 35.462349, 27.814285>,  <38.825653, 35.850975, 27.216772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329533, 35.462349, 27.814285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710846, 35.402386, 27.919182>,  <38.939636, 35.366409, 27.982121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.710846, 35.402386, 27.919182>,  <38.329533, 35.462349, 27.814285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710846, 35.402386, 27.919182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242395, 0.138403, 0.960255,
		-0.180243, -0.978965, 0.095601,
		0.953287, -0.149906, 0.262243,
		38.996834, 35.357414, 27.997854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327126, 34.946079, 28.292940>,  <38.329533, 35.462349, 27.814285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327126, 34.946079, 28.292940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676678, 35.124523, 28.370213>,  <38.886410, 35.231590, 28.416576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676678, 35.124523, 28.370213>,  <38.327126, 34.946079, 28.292940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676678, 35.124523, 28.370213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238905, 0.048006, 0.969856,
		0.423387, -0.893690, 0.148529,
		0.873881, 0.446109, 0.193182,
		38.938843, 35.258354, 28.428167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628998, 34.661995, 28.902653>,  <38.327126, 34.946079, 28.292940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628998, 34.661995, 28.902653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842003, 34.998241, 28.863064>,  <38.969807, 35.199989, 28.839310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842003, 34.998241, 28.863064>,  <38.628998, 34.661995, 28.902653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842003, 34.998241, 28.863064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110159, 0.184768, 0.976589,
		0.839220, -0.509148, 0.190993,
		0.532518, 0.840613, -0.098973,
		39.001759, 35.250423, 28.833372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064495, 34.704273, 29.426653>,  <38.628998, 34.661995, 28.902653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064495, 34.704273, 29.426653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107483, 35.088230, 29.323078>,  <39.133278, 35.318604, 29.260933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107483, 35.088230, 29.323078>,  <39.064495, 34.704273, 29.426653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107483, 35.088230, 29.323078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018120, 0.262293, 0.964818,
		0.994043, -0.098998, 0.045582,
		0.107471, 0.959897, -0.258937,
		39.139725, 35.376198, 29.245398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470772, 34.996441, 29.997852>,  <39.064495, 34.704273, 29.426653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470772, 34.996441, 29.997852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277267, 35.296810, 29.818035>,  <39.161163, 35.477032, 29.710144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.277267, 35.296810, 29.818035>,  <39.470772, 34.996441, 29.997852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277267, 35.296810, 29.818035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381554, 0.281308, 0.880501,
		0.787647, 0.597481, 0.150430,
		-0.483765, 0.750921, -0.449543,
		39.132137, 35.522087, 29.683172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560875, 35.498066, 30.499847>,  <39.470772, 34.996441, 29.997852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560875, 35.498066, 30.499847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268101, 35.614876, 30.253597>,  <39.092438, 35.684959, 30.105848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268101, 35.614876, 30.253597>,  <39.560875, 35.498066, 30.499847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268101, 35.614876, 30.253597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567618, 0.238495, 0.787991,
		0.376934, 0.926199, -0.008807,
		-0.731936, 0.292021, -0.615624,
		39.048519, 35.702484, 30.068911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107136, 35.753368, 30.910837>,  <39.560875, 35.498066, 30.499847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107136, 35.753368, 30.910837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881054, 35.778885, 30.581844>,  <38.745403, 35.794197, 30.384449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881054, 35.778885, 30.581844>,  <39.107136, 35.753368, 30.910837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881054, 35.778885, 30.581844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814049, 0.118415, 0.568596,
		0.133668, 0.990913, -0.014996,
		-0.565205, 0.063796, -0.822480,
		38.711491, 35.798023, 30.335100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823494, 36.375546, 30.912090>,  <39.107136, 35.753368, 30.910837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823494, 36.375546, 30.912090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584808, 36.136848, 30.697491>,  <38.441597, 35.993629, 30.568731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584808, 36.136848, 30.697491>,  <38.823494, 36.375546, 30.912090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584808, 36.136848, 30.697491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764395, 0.219233, 0.606330,
		-0.244206, 0.771902, -0.586968,
		-0.596710, -0.596745, -0.536500,
		38.405796, 35.957825, 30.536541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182323, 36.698341, 30.737406>,  <38.823494, 36.375546, 30.912090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182323, 36.698341, 30.737406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106857, 36.306595, 30.708416>,  <38.061577, 36.071548, 30.691023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106857, 36.306595, 30.708416>,  <38.182323, 36.698341, 30.737406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106857, 36.306595, 30.708416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848601, 0.125439, 0.513948,
		-0.494251, 0.158464, -0.854755,
		-0.188661, -0.979365, -0.072474,
		38.050259, 36.012787, 30.686674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525040, 36.504749, 30.364098>,  <38.182323, 36.698341, 30.737406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525040, 36.504749, 30.364098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624733, 36.205841, 30.610504>,  <37.684547, 36.026497, 30.758348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624733, 36.205841, 30.610504>,  <37.525040, 36.504749, 30.364098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624733, 36.205841, 30.610504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854744, 0.129311, 0.502684,
		-0.455297, -0.651820, -0.606494,
		0.249233, -0.747268, 0.616014,
		37.699501, 35.981659, 30.795309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911869, 36.256519, 30.562565>,  <37.525040, 36.504749, 30.364098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911869, 36.256519, 30.562565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163921, 36.164127, 30.859100>,  <37.315155, 36.108692, 31.037022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.163921, 36.164127, 30.859100>,  <36.911869, 36.256519, 30.562565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163921, 36.164127, 30.859100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728567, 0.154325, 0.667363,
		-0.268554, -0.960642, -0.071038,
		0.630134, -0.230979, 0.741337,
		37.352962, 36.094833, 31.081501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563709, 35.579620, 30.750923>,  <36.911869, 36.256519, 30.562565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563709, 35.579620, 30.750923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188984, 35.452911, 30.691547>,  <35.964149, 35.376884, 30.655922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188984, 35.452911, 30.691547>,  <36.563709, 35.579620, 30.750923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188984, 35.452911, 30.691547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218730, -0.199255, -0.955225,
		0.273013, -0.927336, 0.255953,
		-0.936814, -0.316774, -0.148437,
		35.907940, 35.357880, 30.647017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519379, 34.845501, 30.474731>,  <36.563709, 35.579620, 30.750923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519379, 34.845501, 30.474731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226349, 35.088306, 30.351528>,  <36.050529, 35.233990, 30.277607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226349, 35.088306, 30.351528>,  <36.519379, 34.845501, 30.474731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226349, 35.088306, 30.351528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185837, -0.256951, -0.948389,
		-0.654826, -0.752006, 0.075430,
		-0.732576, 0.607011, -0.308009,
		36.006577, 35.270409, 30.259125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111286, 34.577560, 29.880680>,  <36.519379, 34.845501, 30.474731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111286, 34.577560, 29.880680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024490, 34.959381, 29.798954>,  <35.972412, 35.188473, 29.749918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024490, 34.959381, 29.798954>,  <36.111286, 34.577560, 29.880680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024490, 34.959381, 29.798954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090738, -0.228118, -0.969396,
		-0.971947, -0.191812, 0.136114,
		-0.216991, 0.954553, -0.204314,
		35.959393, 35.245747, 29.737659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604973, 34.471596, 29.427763>,  <36.111286, 34.577560, 29.880680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604973, 34.471596, 29.427763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778210, 34.829315, 29.382751>,  <35.882153, 35.043945, 29.355743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778210, 34.829315, 29.382751>,  <35.604973, 34.471596, 29.427763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778210, 34.829315, 29.382751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061808, -0.095087, -0.993549,
		-0.899229, 0.437252, 0.014094,
		0.433091, 0.894298, -0.112530,
		35.908138, 35.097603, 29.348991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232887, 34.976295, 28.946482>,  <35.604973, 34.471596, 29.427763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232887, 34.976295, 28.946482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615654, 35.092415, 28.948971>,  <35.845314, 35.162086, 28.950464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615654, 35.092415, 28.948971>,  <35.232887, 34.976295, 28.946482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615654, 35.092415, 28.948971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072267, -0.217355, -0.973414,
		-0.281224, 0.931926, -0.228969,
		0.956917, 0.290295, 0.006222,
		35.902729, 35.179504, 28.950838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280357, 35.473495, 28.385748>,  <35.232887, 34.976295, 28.946482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280357, 35.473495, 28.385748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646683, 35.334984, 28.467113>,  <35.866478, 35.251877, 28.515932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646683, 35.334984, 28.467113>,  <35.280357, 35.473495, 28.385748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646683, 35.334984, 28.467113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185171, -0.085354, -0.978992,
		0.356364, 0.934241, -0.014047,
		0.915814, -0.346277, 0.203412,
		35.921429, 35.231102, 28.528137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674988, 35.815739, 27.847853>,  <35.280357, 35.473495, 28.385748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674988, 35.815739, 27.847853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942600, 35.546661, 27.974274>,  <36.103168, 35.385216, 28.050125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942600, 35.546661, 27.974274>,  <35.674988, 35.815739, 27.847853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942600, 35.546661, 27.974274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374020, -0.062749, -0.925296,
		0.642270, 0.737258, 0.209619,
		0.669028, -0.672691, 0.316051,
		36.143307, 35.344852, 28.069088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364719, 36.041161, 27.640139>,  <35.674988, 35.815739, 27.847853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364719, 36.041161, 27.640139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365120, 35.647709, 27.712223>,  <36.365360, 35.411636, 27.755474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365120, 35.647709, 27.712223>,  <36.364719, 36.041161, 27.640139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365120, 35.647709, 27.712223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424452, -0.162754, -0.890703,
		0.905450, 0.077380, 0.417340,
		0.000999, -0.983628, 0.180210,
		36.365421, 35.352619, 27.766287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001320, 35.759605, 27.319029>,  <36.364719, 36.041161, 27.640139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001320, 35.759605, 27.319029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768860, 35.435310, 27.347240>,  <36.629383, 35.240734, 27.364166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768860, 35.435310, 27.347240>,  <37.001320, 35.759605, 27.319029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768860, 35.435310, 27.347240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405424, -0.363576, -0.838715,
		0.705618, -0.458826, 0.539984,
		-0.581150, -0.810735, 0.070527,
		36.594517, 35.192089, 27.368399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407345, 35.114864, 27.216095>,  <37.001320, 35.759605, 27.319029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407345, 35.114864, 27.216095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034180, 34.993607, 27.138351>,  <36.810280, 34.920853, 27.091705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034180, 34.993607, 27.138351>,  <37.407345, 35.114864, 27.216095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034180, 34.993607, 27.138351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237347, -0.111739, -0.964977,
		0.270812, -0.946370, 0.176194,
		-0.932914, -0.303147, -0.194358,
		36.754307, 34.902664, 27.080044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436863, 34.411266, 27.013641>,  <37.407345, 35.114864, 27.216095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436863, 34.411266, 27.013641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093155, 34.555191, 26.868210>,  <36.886929, 34.641544, 26.780951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.093155, 34.555191, 26.868210>,  <37.436863, 34.411266, 27.013641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093155, 34.555191, 26.868210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281379, -0.261094, -0.923394,
		-0.427176, -0.895748, 0.123107,
		-0.859271, 0.359812, -0.363578,
		36.835373, 34.663136, 26.759136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217136, 33.895023, 26.522989>,  <37.436863, 34.411266, 27.013641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217136, 33.895023, 26.522989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021030, 34.228451, 26.421162>,  <36.903366, 34.428505, 26.360065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021030, 34.228451, 26.421162>,  <37.217136, 33.895023, 26.522989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021030, 34.228451, 26.421162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116269, -0.226919, -0.966948,
		-0.863783, -0.503661, 0.014333,
		-0.490266, 0.833567, -0.254569,
		36.873951, 34.478519, 26.344791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978798, 33.712238, 25.914337>,  <37.217136, 33.895023, 26.522989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978798, 33.712238, 25.914337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917389, 34.106750, 25.938595>,  <36.880543, 34.343460, 25.953150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917389, 34.106750, 25.938595>,  <36.978798, 33.712238, 25.914337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917389, 34.106750, 25.938595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179066, 0.088122, -0.979882,
		-0.971786, -0.139571, -0.190138,
		-0.153519, 0.986283, 0.060643,
		36.871334, 34.402634, 25.956787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518063, 33.980251, 25.266380>,  <36.978798, 33.712238, 25.914337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518063, 33.980251, 25.266380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741673, 34.277203, 25.414093>,  <36.875839, 34.455372, 25.502720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741673, 34.277203, 25.414093>,  <36.518063, 33.980251, 25.266380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741673, 34.277203, 25.414093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343105, 0.198337, -0.918118,
		-0.754834, 0.639950, -0.143840,
		0.559021, 0.742379, 0.369282,
		36.909378, 34.499916, 25.524878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414406, 34.506680, 24.791830>,  <36.518063, 33.980251, 25.266380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414406, 34.506680, 24.791830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745182, 34.613834, 24.989582>,  <36.943645, 34.678127, 25.108232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745182, 34.613834, 24.989582>,  <36.414406, 34.506680, 24.791830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745182, 34.613834, 24.989582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361021, 0.421121, -0.832058,
		-0.431089, 0.866542, 0.251529,
		0.826938, 0.267884, 0.494380,
		36.993263, 34.694199, 25.137896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448246, 35.200184, 24.610182>,  <36.414406, 34.506680, 24.791830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448246, 35.200184, 24.610182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798538, 35.036205, 24.712196>,  <37.008713, 34.937817, 24.773405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798538, 35.036205, 24.712196>,  <36.448246, 35.200184, 24.610182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798538, 35.036205, 24.712196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416031, 0.372702, -0.829464,
		0.244985, 0.832488, 0.496937,
		0.875728, -0.409947, 0.255035,
		37.061256, 34.913219, 24.788708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900928, 35.769421, 24.447510>,  <36.448246, 35.200184, 24.610182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900928, 35.769421, 24.447510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127499, 35.441681, 24.482910>,  <37.263443, 35.245037, 24.504150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127499, 35.441681, 24.482910>,  <36.900928, 35.769421, 24.447510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127499, 35.441681, 24.482910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519126, 0.271340, -0.810483,
		0.640051, 0.505024, 0.579038,
		0.566430, -0.819345, 0.088499,
		37.297428, 35.195877, 24.509460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574001, 36.041775, 24.283716>,  <36.900928, 35.769421, 24.447510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574001, 36.041775, 24.283716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591129, 35.644390, 24.241390>,  <37.601406, 35.405960, 24.215994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591129, 35.644390, 24.241390>,  <37.574001, 36.041775, 24.283716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591129, 35.644390, 24.241390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413259, 0.114040, -0.903444,
		0.909606, -0.005043, 0.415441,
		0.042821, -0.993463, -0.105816,
		37.603977, 35.346352, 24.209646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262856, 35.818218, 24.080053>,  <37.574001, 36.041775, 24.283716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262856, 35.818218, 24.080053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047840, 35.497250, 23.976379>,  <37.918831, 35.304668, 23.914175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047840, 35.497250, 23.976379>,  <38.262856, 35.818218, 24.080053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047840, 35.497250, 23.976379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365902, 0.054963, -0.929029,
		0.759719, -0.594221, 0.264063,
		-0.537535, -0.802422, -0.259183,
		37.886581, 35.256523, 23.898624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657558, 35.398293, 23.623798>,  <38.262856, 35.818218, 24.080053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657558, 35.398293, 23.623798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278069, 35.287727, 23.562466>,  <38.050373, 35.221386, 23.525667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278069, 35.287727, 23.562466>,  <38.657558, 35.398293, 23.623798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278069, 35.287727, 23.562466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165475, -0.021017, -0.985990,
		0.269322, -0.960808, 0.065680,
		-0.948727, -0.276417, -0.153330,
		37.993450, 35.204803, 23.516466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664692, 34.735134, 23.209122>,  <38.657558, 35.398293, 23.623798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664692, 34.735134, 23.209122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303116, 34.892513, 23.142090>,  <38.086170, 34.986942, 23.101871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.303116, 34.892513, 23.142090>,  <38.664692, 34.735134, 23.209122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303116, 34.892513, 23.142090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054225, -0.283247, -0.957513,
		-0.424201, -0.874624, 0.234704,
		-0.903943, 0.393451, -0.167580,
		38.031933, 35.010548, 23.091816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490105, 34.421127, 22.556763>,  <38.664692, 34.735134, 23.209122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490105, 34.421127, 22.556763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200523, 34.696140, 22.579365>,  <38.026775, 34.861149, 22.592926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200523, 34.696140, 22.579365>,  <38.490105, 34.421127, 22.556763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200523, 34.696140, 22.579365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137245, -0.063271, -0.988514,
		-0.676061, -0.723392, 0.140166,
		-0.723952, 0.687533, 0.056507,
		37.983337, 34.902401, 22.596317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821682, 34.148861, 22.171926>,  <38.490105, 34.421127, 22.556763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821682, 34.148861, 22.171926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802856, 34.547375, 22.200787>,  <37.791561, 34.786484, 22.218102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802856, 34.547375, 22.200787>,  <37.821682, 34.148861, 22.171926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802856, 34.547375, 22.200787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061632, 0.069195, -0.995698,
		-0.996989, -0.051304, 0.058146,
		-0.047059, 0.996283, 0.072149,
		37.788738, 34.846260, 22.222431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290432, 34.337723, 21.711376>,  <37.821682, 34.148861, 22.171926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290432, 34.337723, 21.711376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521305, 34.663132, 21.739780>,  <37.659828, 34.858376, 21.756823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.521305, 34.663132, 21.739780>,  <37.290432, 34.337723, 21.711376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521305, 34.663132, 21.739780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017649, 0.099362, -0.994895,
		-0.816426, 0.572980, 0.071708,
		0.577180, 0.813524, 0.071010,
		37.694458, 34.907188, 21.761084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955116, 35.038273, 21.330017>,  <37.290432, 34.337723, 21.711376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955116, 35.038273, 21.330017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346668, 35.103645, 21.379154>,  <37.581600, 35.142868, 21.408636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346668, 35.103645, 21.379154>,  <36.955116, 35.038273, 21.330017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346668, 35.103645, 21.379154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066331, 0.314467, -0.946948,
		-0.193395, 0.935093, 0.296983,
		0.978876, 0.163436, 0.122842,
		37.640331, 35.152676, 21.416006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.101685, 35.604115, 21.055576>,  <36.955116, 35.038273, 21.330017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.101685, 35.604115, 21.055576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490002, 35.508717, 21.066040>,  <37.722992, 35.451477, 21.072317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490002, 35.508717, 21.066040>,  <37.101685, 35.604115, 21.055576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490002, 35.508717, 21.066040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140732, 0.477730, -0.867161,
		0.194320, 0.845513, 0.497340,
		0.970790, -0.238499, 0.026158,
		37.781239, 35.437168, 21.073887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742317, 35.809620, 20.386799>,  <37.101685, 35.604115, 21.055576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742317, 35.809620, 20.386799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757565, 36.024639, 20.723747>,  <36.766712, 36.153652, 20.925917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757565, 36.024639, 20.723747>,  <36.742317, 35.809620, 20.386799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757565, 36.024639, 20.723747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799309, 0.522317, -0.297138,
		-0.599710, -0.661986, 0.449580,
		0.038123, 0.537550, 0.842370,
		36.769001, 36.185905, 20.976458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119068, 35.820442, 20.679121>,  <36.742317, 35.809620, 20.386799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119068, 35.820442, 20.679121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290489, 36.162361, 20.796196>,  <36.393341, 36.367512, 20.866440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290489, 36.162361, 20.796196>,  <36.119068, 35.820442, 20.679121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290489, 36.162361, 20.796196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850262, 0.491116, -0.189365,
		-0.305611, -0.167707, 0.937271,
		0.428551, 0.854798, 0.292685,
		36.419056, 36.418800, 20.884001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779160, 36.170109, 21.306501>,  <36.119068, 35.820442, 20.679121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779160, 36.170109, 21.306501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928268, 36.392857, 21.009602>,  <36.017735, 36.526505, 20.831461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928268, 36.392857, 21.009602>,  <35.779160, 36.170109, 21.306501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928268, 36.392857, 21.009602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923509, 0.300570, -0.238304,
		0.090394, 0.774308, 0.626319,
		0.372774, 0.556870, -0.742250,
		36.040100, 36.559917, 20.786926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520283, 36.761566, 21.380642>,  <35.779160, 36.170109, 21.306501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520283, 36.761566, 21.380642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634434, 36.754520, 20.997341>,  <35.702927, 36.750294, 20.767361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634434, 36.754520, 20.997341>,  <35.520283, 36.761566, 21.380642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634434, 36.754520, 20.997341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807272, 0.534501, -0.250241,
		0.516595, 0.844984, 0.138319,
		0.285381, -0.017612, -0.958252,
		35.720047, 36.749237, 20.709866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822449, 36.721123, 21.682638>,  <35.520283, 36.761566, 21.380642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822449, 36.721123, 21.682638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656876, 36.412872, 21.488815>,  <34.557533, 36.227924, 21.372520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656876, 36.412872, 21.488815>,  <34.822449, 36.721123, 21.682638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656876, 36.412872, 21.488815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156134, -0.584517, 0.796217,
		-0.896817, 0.253926, 0.362272,
		-0.413934, -0.770624, -0.484559,
		34.532696, 36.181686, 21.343447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250324, 36.370483, 22.100111>,  <34.822449, 36.721123, 21.682638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250324, 36.370483, 22.100111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477619, 36.159863, 21.847176>,  <34.613995, 36.033489, 21.695414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477619, 36.159863, 21.847176>,  <34.250324, 36.370483, 22.100111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477619, 36.159863, 21.847176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408673, -0.486399, 0.772271,
		-0.714212, -0.697249, -0.061199,
		0.568232, -0.526555, -0.632339,
		34.648090, 36.001896, 21.657475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833149, 35.746216, 22.036228>,  <34.250324, 36.370483, 22.100111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833149, 35.746216, 22.036228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742096, 35.607399, 22.400150>,  <33.687466, 35.524109, 22.618504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742096, 35.607399, 22.400150>,  <33.833149, 35.746216, 22.036228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742096, 35.607399, 22.400150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072963, -0.925628, -0.371334,
		0.971011, -0.150908, 0.185377,
		-0.227628, -0.347044, 0.909806,
		33.673809, 35.503284, 22.673092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212078, 35.083942, 22.241741>,  <33.833149, 35.746216, 22.036228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212078, 35.083942, 22.241741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868610, 35.094872, 22.446461>,  <33.662529, 35.101429, 22.569292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868610, 35.094872, 22.446461>,  <34.212078, 35.083942, 22.241741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868610, 35.094872, 22.446461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166182, -0.959474, -0.227580,
		0.484840, -0.280468, 0.828413,
		-0.858670, 0.027327, 0.511801,
		33.611008, 35.103069, 22.600000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175846, 34.454212, 22.660519>,  <34.212078, 35.083942, 22.241741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175846, 34.454212, 22.660519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799259, 34.582954, 22.620419>,  <33.573307, 34.660202, 22.596359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799259, 34.582954, 22.620419>,  <34.175846, 34.454212, 22.660519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799259, 34.582954, 22.620419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230686, -0.831952, -0.504619,
		-0.245818, -0.451955, 0.857502,
		-0.941466, 0.321858, -0.100248,
		33.516819, 34.679512, 22.590343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695477, 34.029789, 23.046734>,  <34.175846, 34.454212, 22.660519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695477, 34.029789, 23.046734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444473, 34.206890, 22.790546>,  <33.293873, 34.313152, 22.636833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444473, 34.206890, 22.790546>,  <33.695477, 34.029789, 23.046734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444473, 34.206890, 22.790546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371845, -0.893126, -0.253097,
		-0.684080, 0.079334, 0.725080,
		-0.627509, 0.442756, -0.640469,
		33.256222, 34.339718, 22.598406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032257, 33.769310, 23.234198>,  <33.695477, 34.029789, 23.046734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032257, 33.769310, 23.234198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028328, 33.915886, 22.862041>,  <33.025970, 34.003830, 22.638748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028328, 33.915886, 22.862041>,  <33.032257, 33.769310, 23.234198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028328, 33.915886, 22.862041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315289, -0.884110, -0.344880,
		-0.948945, 0.289956, 0.124214,
		-0.009819, 0.366435, -0.930392,
		33.025383, 34.025818, 22.582924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423725, 33.550972, 23.021288>,  <33.032257, 33.769310, 23.234198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423725, 33.550972, 23.021288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610210, 33.620617, 22.674339>,  <32.722103, 33.662403, 22.466171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610210, 33.620617, 22.674339>,  <32.423725, 33.550972, 23.021288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610210, 33.620617, 22.674339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273690, -0.903957, -0.328566,
		-0.841272, 0.390572, -0.373784,
		0.466213, 0.174113, -0.867369,
		32.750076, 33.672852, 22.414129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962820, 33.587814, 22.440891>,  <32.423725, 33.550972, 23.021288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962820, 33.587814, 22.440891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315285, 33.481873, 22.284225>,  <32.526764, 33.418308, 22.190226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.315285, 33.481873, 22.284225>,  <31.962820, 33.587814, 22.440891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.315285, 33.481873, 22.284225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356065, -0.916736, -0.181143,
		-0.311076, 0.299075, -0.902101,
		0.881163, -0.264858, -0.391665,
		32.579636, 33.402416, 22.166725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880140, 33.104053, 21.950146>,  <31.962820, 33.587814, 22.440891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880140, 33.104053, 21.950146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268787, 33.046703, 22.025406>,  <32.501976, 33.012295, 22.070562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268787, 33.046703, 22.025406>,  <31.880140, 33.104053, 21.950146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268787, 33.046703, 22.025406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108811, -0.977129, -0.182697,
		0.210040, 0.157040, -0.964998,
		0.971619, -0.143376, 0.188149,
		32.560272, 33.003689, 22.081850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038433, 32.587158, 21.532686>,  <31.880140, 33.104053, 21.950146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038433, 32.587158, 21.532686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358685, 32.616142, 21.770592>,  <32.550835, 32.633533, 21.913336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358685, 32.616142, 21.770592>,  <32.038433, 32.587158, 21.532686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358685, 32.616142, 21.770592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185437, -0.973888, -0.130976,
		0.569743, 0.215154, -0.793159,
		0.800628, 0.072459, 0.594764,
		32.598873, 32.637878, 21.949020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609093, 32.307556, 21.214901>,  <32.038433, 32.587158, 21.532686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609093, 32.307556, 21.214901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706573, 32.274807, 21.601456>,  <32.765064, 32.255157, 21.833389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706573, 32.274807, 21.601456>,  <32.609093, 32.307556, 21.214901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706573, 32.274807, 21.601456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199423, -0.970908, -0.132548,
		0.949125, 0.225022, -0.220286,
		0.243704, -0.081874, 0.966388,
		32.779686, 32.250244, 21.891373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164337, 31.910837, 21.202986>,  <32.609093, 32.307556, 21.214901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164337, 31.910837, 21.202986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053829, 31.879280, 21.586121>,  <32.987526, 31.860346, 21.816002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053829, 31.879280, 21.586121>,  <33.164337, 31.910837, 21.202986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053829, 31.879280, 21.586121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443793, -0.894481, 0.054327,
		0.852481, 0.440090, 0.282131,
		-0.276270, -0.078895, 0.957837,
		32.970947, 31.855612, 21.873472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737545, 31.621693, 21.507702>,  <33.164337, 31.910837, 21.202986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737545, 31.621693, 21.507702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452572, 31.543892, 21.777401>,  <33.281590, 31.497211, 21.939220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452572, 31.543892, 21.777401>,  <33.737545, 31.621693, 21.507702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452572, 31.543892, 21.777401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399708, -0.902198, 0.162083,
		0.576782, 0.384976, 0.720497,
		-0.712429, -0.194502, 0.674250,
		33.238842, 31.485540, 21.979675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066528, 31.284735, 22.072170>,  <33.737545, 31.621693, 21.507702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066528, 31.284735, 22.072170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682018, 31.176151, 22.091183>,  <33.451313, 31.111002, 22.102591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682018, 31.176151, 22.091183>,  <34.066528, 31.284735, 22.072170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682018, 31.176151, 22.091183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275023, -0.933879, 0.228543,
		-0.017651, 0.232765, 0.972373,
		-0.961275, -0.271459, 0.047531,
		33.393635, 31.094713, 22.105442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245010, 30.659100, 22.329750>,  <34.066528, 31.284735, 22.072170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245010, 30.659100, 22.329750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856544, 30.632671, 22.238121>,  <33.623466, 30.616816, 22.183144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856544, 30.632671, 22.238121>,  <34.245010, 30.659100, 22.329750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856544, 30.632671, 22.238121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064190, -0.997815, 0.015650,
		-0.229604, 0.000495, 0.973284,
		-0.971165, -0.066068, -0.229070,
		33.565193, 30.612850, 22.169399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906925, 30.334206, 22.934467>,  <34.245010, 30.659100, 22.329750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906925, 30.334206, 22.934467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683590, 30.276005, 22.607765>,  <33.549591, 30.241085, 22.411743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683590, 30.276005, 22.607765>,  <33.906925, 30.334206, 22.934467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683590, 30.276005, 22.607765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056027, -0.988865, 0.137863,
		-0.827721, 0.031213, 0.560271,
		-0.558336, -0.145502, -0.816756,
		33.516090, 30.232353, 22.362738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615475, 29.712452, 23.104980>,  <33.906925, 30.334206, 22.934467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615475, 29.712452, 23.104980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546989, 29.728558, 22.711216>,  <33.505898, 29.738220, 22.474957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546989, 29.728558, 22.711216>,  <33.615475, 29.712452, 23.104980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546989, 29.728558, 22.711216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115304, -0.993117, -0.020566,
		-0.978463, 0.109985, 0.174680,
		-0.171215, 0.040265, -0.984411,
		33.495625, 29.740637, 22.415894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191429, 29.124828, 23.006697>,  <33.615475, 29.712452, 23.104980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191429, 29.124828, 23.006697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304047, 29.218040, 22.634369>,  <33.371616, 29.273968, 22.410973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304047, 29.218040, 22.634369>,  <33.191429, 29.124828, 23.006697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304047, 29.218040, 22.634369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052882, -0.972356, -0.227436,
		-0.958090, 0.014809, -0.286083,
		0.281543, 0.233033, -0.930822,
		33.388508, 29.287951, 22.355122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818295, 28.657730, 22.578512>,  <33.191429, 29.124828, 23.006697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818295, 28.657730, 22.578512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142288, 28.789230, 22.384258>,  <33.336685, 28.868130, 22.267706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.142288, 28.789230, 22.384258>,  <32.818295, 28.657730, 22.578512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142288, 28.789230, 22.384258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111906, -0.899528, -0.422287,
		-0.575671, 0.287702, -0.765396,
		0.809988, 0.328751, -0.485636,
		33.385284, 28.887856, 22.238567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767761, 28.408318, 21.842052>,  <32.818295, 28.657730, 22.578512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767761, 28.408318, 21.842052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150406, 28.489437, 21.925732>,  <33.379993, 28.538109, 21.975939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150406, 28.489437, 21.925732>,  <32.767761, 28.408318, 21.842052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150406, 28.489437, 21.925732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253096, -0.934089, -0.251835,
		0.144340, 0.293856, -0.944889,
		0.956613, 0.202798, 0.209200,
		33.437389, 28.550276, 21.988491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245796, 28.095009, 21.267092>,  <32.767761, 28.408318, 21.842052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245796, 28.095009, 21.267092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488075, 28.161743, 21.578297>,  <33.633442, 28.201784, 21.765018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488075, 28.161743, 21.578297>,  <33.245796, 28.095009, 21.267092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488075, 28.161743, 21.578297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350448, -0.933764, -0.072596,
		0.714367, 0.316623, -0.624043,
		0.605695, 0.166834, 0.778010,
		33.669785, 28.211794, 21.811699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856991, 27.861761, 20.999298>,  <33.245796, 28.095009, 21.267092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856991, 27.861761, 20.999298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861404, 27.855888, 21.399231>,  <33.864052, 27.852365, 21.639191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861404, 27.855888, 21.399231>,  <33.856991, 27.861761, 20.999298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861404, 27.855888, 21.399231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363935, -0.931256, -0.017692,
		0.931359, 0.364069, -0.004937,
		0.011039, -0.014681, 0.999831,
		33.864716, 27.851484, 21.699181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423801, 27.582712, 21.127670>,  <33.856991, 27.861761, 20.999298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423801, 27.582712, 21.127670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236420, 27.523754, 21.476112>,  <34.123993, 27.488379, 21.685179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236420, 27.523754, 21.476112>,  <34.423801, 27.582712, 21.127670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236420, 27.523754, 21.476112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317296, -0.948272, 0.010177,
		0.824547, 0.281166, 0.490987,
		-0.468451, -0.147396, 0.871107,
		34.095886, 27.479536, 21.737444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818813, 27.233025, 21.445959>,  <34.423801, 27.582712, 21.127670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818813, 27.233025, 21.445959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491241, 27.180107, 21.669334>,  <34.294697, 27.148357, 21.803360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491241, 27.180107, 21.669334>,  <34.818813, 27.233025, 21.445959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491241, 27.180107, 21.669334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271220, -0.946760, 0.173450,
		0.505762, 0.293503, 0.811209,
		-0.818929, -0.132292, 0.558440,
		34.245564, 27.140419, 21.836866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036880, 26.803057, 21.923822>,  <34.818813, 27.233025, 21.445959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036880, 26.803057, 21.923822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641376, 26.768326, 21.972523>,  <34.404076, 26.747488, 22.001743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641376, 26.768326, 21.972523>,  <35.036880, 26.803057, 21.923822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641376, 26.768326, 21.972523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090138, -0.995687, 0.021955,
		0.119319, 0.032682, 0.992318,
		-0.988756, -0.086826, 0.121751,
		34.344749, 26.742277, 22.009048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887489, 26.325727, 22.471649>,  <35.036880, 26.803057, 21.923822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887489, 26.325727, 22.471649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569321, 26.335915, 22.229439>,  <34.378422, 26.342028, 22.084112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569321, 26.335915, 22.229439>,  <34.887489, 26.325727, 22.471649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569321, 26.335915, 22.229439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005790, -0.999390, -0.034431,
		-0.606034, -0.023881, 0.795080,
		-0.795418, 0.025470, -0.605526,
		34.330696, 26.343555, 22.047781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387623, 25.881725, 22.705194>,  <34.887489, 26.325727, 22.471649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387623, 25.881725, 22.705194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347870, 25.924141, 22.309441>,  <34.324017, 25.949591, 22.071989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347870, 25.924141, 22.309441>,  <34.387623, 25.881725, 22.705194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347870, 25.924141, 22.309441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019878, -0.994319, -0.104573,
		-0.994851, 0.009274, 0.100928,
		-0.099384, 0.106041, -0.989383,
		34.318054, 25.955954, 22.012627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120121, 25.237514, 22.622871>,  <34.387623, 25.881725, 22.705194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120121, 25.237514, 22.622871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172226, 25.334267, 22.238262>,  <34.203487, 25.392319, 22.007496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172226, 25.334267, 22.238262>,  <34.120121, 25.237514, 22.622871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172226, 25.334267, 22.238262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169112, -0.950154, -0.261930,
		-0.976951, 0.196725, -0.082864,
		0.130261, 0.241880, -0.961523,
		34.211304, 25.406830, 21.949806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595833, 24.899296, 22.354595>,  <34.120121, 25.237514, 22.622871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595833, 24.899296, 22.354595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825150, 24.995869, 22.041405>,  <33.962738, 25.053812, 21.853491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.825150, 24.995869, 22.041405>,  <33.595833, 24.899296, 22.354595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825150, 24.995869, 22.041405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161143, -0.903715, -0.396652,
		-0.803352, 0.353567, -0.479183,
		0.573288, 0.241434, -0.782976,
		33.997135, 25.068298, 21.806513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282612, 24.723930, 21.749718>,  <33.595833, 24.899296, 22.354595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282612, 24.723930, 21.749718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669662, 24.709251, 21.649834>,  <33.901894, 24.700443, 21.589903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669662, 24.709251, 21.649834>,  <33.282612, 24.723930, 21.749718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669662, 24.709251, 21.649834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090474, -0.974057, -0.207432,
		-0.235620, 0.223309, -0.945842,
		0.967625, -0.036699, -0.249710,
		33.959949, 24.698242, 21.574921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316254, 24.258327, 21.098150>,  <33.282612, 24.723930, 21.749718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316254, 24.258327, 21.098150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685432, 24.252850, 21.252022>,  <33.906940, 24.249563, 21.344345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685432, 24.252850, 21.252022>,  <33.316254, 24.258327, 21.098150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685432, 24.252850, 21.252022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068921, -0.977337, -0.200157,
		0.378704, 0.211247, -0.901087,
		0.922948, -0.013697, 0.384680,
		33.962318, 24.248741, 21.367426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564430, 23.749693, 20.745472>,  <33.316254, 24.258327, 21.098150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564430, 23.749693, 20.745472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845699, 23.773693, 21.028866>,  <34.014462, 23.788094, 21.198902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845699, 23.773693, 21.028866>,  <33.564430, 23.749693, 20.745472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845699, 23.773693, 21.028866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210531, -0.969321, -0.126860,
		0.679136, 0.238362, -0.694231,
		0.703172, 0.060002, 0.708484,
		34.056652, 23.791695, 21.241411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246017, 23.510555, 20.519484>,  <33.564430, 23.749693, 20.745472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246017, 23.510555, 20.519484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215805, 23.482037, 20.917320>,  <34.197678, 23.464926, 21.156023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215805, 23.482037, 20.917320>,  <34.246017, 23.510555, 20.519484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215805, 23.482037, 20.917320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011787, -0.997307, -0.072388,
		0.997074, -0.017191, 0.074484,
		-0.075528, -0.071298, 0.994592,
		34.193146, 23.460648, 21.215698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412113, 22.883829, 20.626938>,  <34.246017, 23.510555, 20.519484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412113, 22.883829, 20.626938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304523, 22.940666, 21.007980>,  <34.239967, 22.974770, 21.236607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304523, 22.940666, 21.007980>,  <34.412113, 22.883829, 20.626938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304523, 22.940666, 21.007980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053974, -0.985279, 0.162208,
		0.961633, 0.095046, 0.257349,
		-0.268978, 0.142094, 0.952607,
		34.223831, 22.983295, 21.293762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887280, 22.451958, 21.067886>,  <34.412113, 22.883829, 20.626938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887280, 22.451958, 21.067886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552612, 22.554188, 21.261654>,  <34.351810, 22.615526, 21.377914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552612, 22.554188, 21.261654>,  <34.887280, 22.451958, 21.067886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552612, 22.554188, 21.261654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056997, -0.920279, 0.387090,
		0.544732, 0.296256, 0.784538,
		-0.836671, 0.255576, 0.484420,
		34.301613, 22.630861, 21.406981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965603, 22.241119, 21.685011>,  <34.887280, 22.451958, 21.067886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965603, 22.241119, 21.685011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568069, 22.263287, 21.646580>,  <34.329552, 22.276587, 21.623522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568069, 22.263287, 21.646580>,  <34.965603, 22.241119, 21.685011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568069, 22.263287, 21.646580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086725, -0.928277, 0.361636,
		-0.069145, 0.367737, 0.927356,
		-0.993830, 0.055420, -0.096078,
		34.269920, 22.279913, 21.617756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507381, 22.146645, 22.346142>,  <34.965603, 22.241119, 21.685011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507381, 22.146645, 22.346142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272697, 22.034245, 22.042351>,  <34.131886, 21.966805, 21.860075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272697, 22.034245, 22.042351>,  <34.507381, 22.146645, 22.346142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272697, 22.034245, 22.042351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099395, -0.905785, 0.411914,
		-0.803673, 0.317164, 0.503504,
		-0.586711, -0.280999, -0.759480,
		34.096684, 21.949945, 21.814507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152405, 21.598881, 22.635557>,  <34.507381, 22.146645, 22.346142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152405, 21.598881, 22.635557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058952, 21.533585, 22.252148>,  <34.002880, 21.494408, 22.022102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058952, 21.533585, 22.252148>,  <34.152405, 21.598881, 22.635557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058952, 21.533585, 22.252148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157208, -0.966494, 0.202915,
		-0.959531, 0.198096, 0.200145,
		-0.233636, -0.163239, -0.958523,
		33.988861, 21.484613, 21.964590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489513, 21.124819, 22.642580>,  <34.152405, 21.598881, 22.635557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489513, 21.124819, 22.642580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672089, 21.084255, 22.288998>,  <33.781635, 21.059917, 22.076847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672089, 21.084255, 22.288998>,  <33.489513, 21.124819, 22.642580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672089, 21.084255, 22.288998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135931, -0.973874, 0.181912,
		-0.879310, -0.203189, -0.430730,
		0.456439, -0.101407, -0.883957,
		33.809021, 21.053833, 22.023811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279041, 20.517466, 22.422968>,  <33.489513, 21.124819, 22.642580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279041, 20.517466, 22.422968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613354, 20.573879, 22.210712>,  <33.813942, 20.607727, 22.083359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613354, 20.573879, 22.210712>,  <33.279041, 20.517466, 22.422968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613354, 20.573879, 22.210712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208778, -0.975485, 0.069571,
		-0.507817, -0.168932, -0.844739,
		0.835783, 0.141033, -0.530637,
		33.864090, 20.616190, 22.051521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293739, 20.167675, 21.713341>,  <33.279041, 20.517466, 22.422968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293739, 20.167675, 21.713341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662785, 20.194447, 21.865295>,  <33.884212, 20.210510, 21.956467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662785, 20.194447, 21.865295>,  <33.293739, 20.167675, 21.713341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662785, 20.194447, 21.865295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013134, -0.989711, 0.142477,
		0.385512, -0.126461, -0.913996,
		0.922610, 0.066931, 0.379884,
		33.939568, 20.214525, 21.979261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458801, 19.548645, 21.622658>,  <33.293739, 20.167675, 21.713341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458801, 19.548645, 21.622658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774323, 19.690228, 21.823658>,  <33.963634, 19.775177, 21.944258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774323, 19.690228, 21.823658>,  <33.458801, 19.548645, 21.622658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774323, 19.690228, 21.823658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275292, -0.934408, 0.226045,
		0.549550, -0.039970, -0.834504,
		0.788802, 0.353955, 0.502501,
		34.010963, 19.796413, 21.974407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046005, 19.223289, 21.408592>,  <33.458801, 19.548645, 21.622658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046005, 19.223289, 21.408592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159725, 19.355881, 21.768436>,  <34.227959, 19.435434, 21.984343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159725, 19.355881, 21.768436>,  <34.046005, 19.223289, 21.408592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159725, 19.355881, 21.768436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299339, -0.922111, 0.245169,
		0.910807, 0.199587, -0.361379,
		0.284299, 0.331477, 0.899610,
		34.245014, 19.455324, 22.038319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818043, 19.009296, 21.618948>,  <34.046005, 19.223289, 21.408592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818043, 19.009296, 21.618948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575474, 19.070297, 21.931103>,  <34.429932, 19.106897, 22.118395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575474, 19.070297, 21.931103>,  <34.818043, 19.009296, 21.618948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575474, 19.070297, 21.931103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220607, -0.910638, 0.349386,
		0.763931, 0.384032, 0.518584,
		-0.606418, 0.152504, 0.780385,
		34.393547, 19.116049, 22.165218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237625, 18.870916, 22.259594>,  <34.818043, 19.009296, 21.618948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237625, 18.870916, 22.259594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857643, 18.780048, 22.345360>,  <34.629654, 18.725527, 22.396820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857643, 18.780048, 22.345360>,  <35.237625, 18.870916, 22.259594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857643, 18.780048, 22.345360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309088, -0.782932, 0.539892,
		0.045226, 0.579148, 0.813967,
		-0.949958, -0.227170, 0.214416,
		34.572655, 18.711897, 22.409685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122772, 18.844601, 23.049046>,  <35.237625, 18.870916, 22.259594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122772, 18.844601, 23.049046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862587, 18.606621, 22.860180>,  <34.706478, 18.463833, 22.746861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862587, 18.606621, 22.860180>,  <35.122772, 18.844601, 23.049046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862587, 18.606621, 22.860180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239913, -0.750752, 0.615478,
		-0.720656, 0.287065, 0.631070,
		-0.650459, -0.594950, -0.472163,
		34.667450, 18.428137, 22.718531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796898, 18.621794, 23.627558>,  <35.122772, 18.844601, 23.049046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796898, 18.621794, 23.627558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809143, 18.364784, 23.321297>,  <34.816490, 18.210579, 23.137541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809143, 18.364784, 23.321297>,  <34.796898, 18.621794, 23.627558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809143, 18.364784, 23.321297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170134, -0.751484, 0.637437,
		-0.984945, -0.149779, 0.086308,
		0.030615, -0.642525, -0.765653,
		34.818329, 18.172028, 23.091600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412743, 18.038670, 23.783121>,  <34.796898, 18.621794, 23.627558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412743, 18.038670, 23.783121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718010, 17.951851, 23.539658>,  <34.901169, 17.899759, 23.393579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718010, 17.951851, 23.539658>,  <34.412743, 18.038670, 23.783121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718010, 17.951851, 23.539658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235526, -0.783684, 0.574775,
		-0.601751, -0.582004, -0.546960,
		0.763166, -0.217049, -0.608660,
		34.946960, 17.886736, 23.357059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843006, 17.908449, 23.388737>,  <34.412743, 18.038670, 23.783121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843006, 17.908449, 23.388737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619797, 17.768696, 23.689812>,  <33.485870, 17.684845, 23.870457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619797, 17.768696, 23.689812>,  <33.843006, 17.908449, 23.388737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619797, 17.768696, 23.689812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081320, 0.879656, 0.468606,
		-0.825829, 0.322703, -0.462460,
		-0.558026, -0.349382, 0.752688,
		33.452389, 17.663881, 23.915619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244606, 18.362806, 23.591412>,  <33.843006, 17.908449, 23.388737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244606, 18.362806, 23.591412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377735, 18.171463, 23.916473>,  <33.457611, 18.056656, 24.111509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377735, 18.171463, 23.916473>,  <33.244606, 18.362806, 23.591412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377735, 18.171463, 23.916473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212405, 0.877665, 0.429638,
		-0.918758, 0.029620, 0.393709,
		0.332818, -0.478359, 0.812653,
		33.477581, 18.027956, 24.160269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988785, 18.745882, 24.193228>,  <33.244606, 18.362806, 23.591412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988785, 18.745882, 24.193228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312675, 18.525677, 24.274490>,  <33.507011, 18.393553, 24.323248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312675, 18.525677, 24.274490>,  <32.988785, 18.745882, 24.193228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312675, 18.525677, 24.274490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398835, 0.770266, 0.497615,
		-0.430431, -0.321906, 0.843271,
		0.809728, -0.550515, 0.203159,
		33.555595, 18.360523, 24.335438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107624, 18.575180, 24.906446>,  <32.988785, 18.745882, 24.193228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107624, 18.575180, 24.906446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463272, 18.619453, 24.728809>,  <33.676659, 18.646017, 24.622227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463272, 18.619453, 24.728809>,  <33.107624, 18.575180, 24.906446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463272, 18.619453, 24.728809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123722, 0.876063, 0.466054,
		0.440638, -0.469321, 0.765229,
		0.889118, 0.110686, -0.444092,
		33.730007, 18.652658, 24.595581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656437, 18.759789, 25.319510>,  <33.107624, 18.575180, 24.906446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656437, 18.759789, 25.319510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792007, 18.902966, 24.971485>,  <33.873352, 18.988873, 24.762671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792007, 18.902966, 24.971485>,  <33.656437, 18.759789, 25.319510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792007, 18.902966, 24.971485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081340, 0.932483, 0.351937,
		0.937290, -0.048511, 0.345158,
		0.338926, 0.357942, -0.870061,
		33.893688, 19.010347, 24.710466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487389, 19.400688, 25.347139>,  <33.656437, 18.759789, 25.319510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487389, 19.400688, 25.347139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766388, 19.439674, 25.063168>,  <33.933788, 19.463066, 24.892784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766388, 19.439674, 25.063168>,  <33.487389, 19.400688, 25.347139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766388, 19.439674, 25.063168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072654, 0.995220, 0.065254,
		0.712898, 0.006065, 0.701241,
		0.697494, 0.097467, -0.709931,
		33.975636, 19.468914, 24.850187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953995, 19.894707, 25.564779>,  <33.487389, 19.400688, 25.347139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953995, 19.894707, 25.564779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003071, 19.894695, 25.167801>,  <34.032516, 19.894688, 24.929613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003071, 19.894695, 25.167801>,  <33.953995, 19.894707, 25.564779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003071, 19.894695, 25.167801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151856, 0.988224, -0.018803,
		0.980759, 0.153016, 0.121237,
		0.122687, -0.000030, -0.992445,
		34.039875, 19.894686, 24.870068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479290, 20.334499, 25.404425>,  <33.953995, 19.894707, 25.564779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479290, 20.334499, 25.404425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279022, 20.315063, 25.058716>,  <34.158863, 20.303402, 24.851290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279022, 20.315063, 25.058716>,  <34.479290, 20.334499, 25.404425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279022, 20.315063, 25.058716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033350, 0.996599, -0.075351,
		0.864995, -0.066549, -0.497347,
		-0.500670, -0.048592, -0.864273,
		34.128822, 20.300486, 24.799435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844238, 20.809839, 25.001574>,  <34.479290, 20.334499, 25.404425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844238, 20.809839, 25.001574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478065, 20.759773, 24.848572>,  <34.258362, 20.729734, 24.756771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478065, 20.759773, 24.848572>,  <34.844238, 20.809839, 25.001574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478065, 20.759773, 24.848572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003850, 0.947643, -0.319309,
		0.402444, -0.293780, -0.867025,
		-0.915437, -0.125165, -0.382504,
		34.203434, 20.722223, 24.733820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797909, 21.243378, 24.384218>,  <34.844238, 20.809839, 25.001574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797909, 21.243378, 24.384218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410328, 21.172909, 24.453606>,  <34.177780, 21.130627, 24.495237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410328, 21.172909, 24.453606>,  <34.797909, 21.243378, 24.384218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410328, 21.172909, 24.453606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192715, 0.977694, -0.083518,
		-0.154885, -0.114355, -0.981292,
		-0.968954, -0.176174, 0.173468,
		34.119640, 21.120056, 24.505646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496075, 21.821981, 24.019011>,  <34.797909, 21.243378, 24.384218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496075, 21.821981, 24.019011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198025, 21.687603, 24.249462>,  <34.019196, 21.606976, 24.387733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198025, 21.687603, 24.249462>,  <34.496075, 21.821981, 24.019011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198025, 21.687603, 24.249462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365090, 0.928399, 0.069176,
		-0.558119, -0.158795, -0.814425,
		-0.745126, -0.335947, 0.576131,
		33.974487, 21.586819, 24.422302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936390, 22.184912, 23.794140>,  <34.496075, 21.821981, 24.019011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936390, 22.184912, 23.794140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819626, 22.057430, 24.154854>,  <33.749565, 21.980942, 24.371283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819626, 22.057430, 24.154854>,  <33.936390, 22.184912, 23.794140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819626, 22.057430, 24.154854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373019, 0.906124, 0.199489,
		-0.880706, -0.278149, -0.383393,
		-0.291914, -0.318704, 0.901783,
		33.732052, 21.961819, 24.425388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349319, 22.604904, 23.965626>,  <33.936390, 22.184912, 23.794140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349319, 22.604904, 23.965626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441833, 22.478149, 24.333557>,  <33.497341, 22.402096, 24.554316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441833, 22.478149, 24.333557>,  <33.349319, 22.604904, 23.965626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441833, 22.478149, 24.333557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414114, 0.823472, 0.387819,
		-0.880350, -0.470611, 0.059229,
		0.231286, -0.316889, 0.919830,
		33.511219, 22.383083, 24.609507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762280, 22.624022, 24.401890>,  <33.349319, 22.604904, 23.965626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762280, 22.624022, 24.401890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082478, 22.674770, 24.636192>,  <33.274597, 22.705219, 24.776773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082478, 22.674770, 24.636192>,  <32.762280, 22.624022, 24.401890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082478, 22.674770, 24.636192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342665, 0.898727, 0.273626,
		-0.491718, -0.419754, 0.762902,
		0.800496, 0.126873, 0.585755,
		33.322628, 22.712831, 24.811918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515862, 22.901749, 25.060867>,  <32.762280, 22.624022, 24.401890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515862, 22.901749, 25.060867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907639, 22.976936, 25.090168>,  <33.142704, 23.022049, 25.107748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907639, 22.976936, 25.090168>,  <32.515862, 22.901749, 25.060867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907639, 22.976936, 25.090168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199793, 0.954100, 0.223105,
		-0.027953, -0.233153, 0.972038,
		0.979439, 0.187970, 0.073252,
		33.201469, 23.033327, 25.112144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591396, 23.305468, 25.638393>,  <32.515862, 22.901749, 25.060867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591396, 23.305468, 25.638393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912025, 23.378464, 25.410645>,  <33.104401, 23.422260, 25.273996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.912025, 23.378464, 25.410645>,  <32.591396, 23.305468, 25.638393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912025, 23.378464, 25.410645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148106, 0.983207, 0.106621,
		0.579267, -0.001137, 0.815138,
		0.801570, 0.182489, -0.569371,
		33.152496, 23.433210, 25.239834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001072, 23.899788, 26.038664>,  <32.591396, 23.305468, 25.638393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001072, 23.899788, 26.038664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119785, 23.880562, 25.657169>,  <33.191013, 23.869026, 25.428272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119785, 23.880562, 25.657169>,  <33.001072, 23.899788, 26.038664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119785, 23.880562, 25.657169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157716, 0.982550, -0.098594,
		0.941832, 0.179680, 0.284021,
		0.296780, -0.048065, -0.953735,
		33.208820, 23.866142, 25.371048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436455, 24.486879, 25.957880>,  <33.001072, 23.899788, 26.038664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436455, 24.486879, 25.957880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319183, 24.389820, 25.587978>,  <33.248821, 24.331585, 25.366037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319183, 24.389820, 25.587978>,  <33.436455, 24.486879, 25.957880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319183, 24.389820, 25.587978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018414, 0.968510, -0.248291,
		0.955881, -0.055764, -0.288411,
		-0.293175, -0.242647, -0.924754,
		33.231232, 24.317026, 25.310553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707031, 24.984568, 25.477287>,  <33.436455, 24.486879, 25.957880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707031, 24.984568, 25.477287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444923, 24.829258, 25.218098>,  <33.287659, 24.736073, 25.062584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.444923, 24.829258, 25.218098>,  <33.707031, 24.984568, 25.477287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444923, 24.829258, 25.218098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184611, 0.914092, -0.361046,
		0.732493, -0.116958, -0.670653,
		-0.655266, -0.388274, -0.647974,
		33.248344, 24.712776, 25.023705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786060, 25.362000, 24.899118>,  <33.707031, 24.984568, 25.477287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786060, 25.362000, 24.899118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421791, 25.200405, 24.864559>,  <33.203228, 25.103449, 24.843822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421791, 25.200405, 24.864559>,  <33.786060, 25.362000, 24.899118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421791, 25.200405, 24.864559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348154, 0.863076, -0.365909,
		0.222391, -0.303144, -0.926632,
		-0.910676, -0.403985, -0.086399,
		33.148590, 25.079210, 24.838638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638535, 25.594753, 24.242912>,  <33.786060, 25.362000, 24.899118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638535, 25.594753, 24.242912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299187, 25.500858, 24.432720>,  <33.095577, 25.444521, 24.546606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299187, 25.500858, 24.432720>,  <33.638535, 25.594753, 24.242912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299187, 25.500858, 24.432720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393459, 0.879263, -0.268487,
		-0.354205, -0.414481, -0.838298,
		-0.848368, -0.234737, 0.474521,
		33.044678, 25.430437, 24.575077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232597, 25.952902, 23.889084>,  <33.638535, 25.594753, 24.242912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232597, 25.952902, 23.889084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986973, 25.873886, 24.194740>,  <32.839600, 25.826477, 24.378134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986973, 25.873886, 24.194740>,  <33.232597, 25.952902, 23.889084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986973, 25.873886, 24.194740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335987, 0.941491, -0.026612,
		-0.714173, -0.273082, -0.644502,
		-0.614060, -0.197539, 0.764139,
		32.802753, 25.814625, 24.423983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603031, 26.042366, 23.708723>,  <33.232597, 25.952902, 23.889084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603031, 26.042366, 23.708723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568565, 26.073795, 24.105995>,  <32.547886, 26.092653, 24.344358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568565, 26.073795, 24.105995>,  <32.603031, 26.042366, 23.708723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568565, 26.073795, 24.105995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450300, 0.886178, -0.109172,
		-0.888710, -0.456634, -0.040972,
		-0.086160, 0.078573, 0.993178,
		32.542717, 26.097366, 24.403948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938564, 26.189629, 23.911549>,  <32.603031, 26.042366, 23.708723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938564, 26.189629, 23.911549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167393, 26.332336, 24.206966>,  <32.304691, 26.417961, 24.384216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167393, 26.332336, 24.206966>,  <31.938564, 26.189629, 23.911549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167393, 26.332336, 24.206966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352029, 0.920089, -0.171791,
		-0.740816, -0.161713, 0.651951,
		0.572072, 0.356771, 0.738544,
		32.339016, 26.439367, 24.428530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464283, 26.728857, 24.340197>,  <31.938564, 26.189629, 23.911549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464283, 26.728857, 24.340197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843828, 26.813644, 24.433773>,  <32.071556, 26.864517, 24.489920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.843828, 26.813644, 24.433773>,  <31.464283, 26.728857, 24.340197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843828, 26.813644, 24.433773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213281, 0.976787, -0.019976,
		-0.232744, -0.030941, 0.972046,
		0.948863, 0.211968, 0.233941,
		32.128487, 26.877235, 24.503956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326641, 27.349920, 24.801521>,  <31.464283, 26.728857, 24.340197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326641, 27.349920, 24.801521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719984, 27.331047, 24.731339>,  <31.955990, 27.319723, 24.689228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719984, 27.331047, 24.731339>,  <31.326641, 27.349920, 24.801521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719984, 27.331047, 24.731339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058361, 0.996545, 0.059099,
		0.172062, -0.068355, 0.982712,
		0.983356, -0.047183, -0.175457,
		32.014992, 27.316893, 24.678701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481003, 27.809650, 25.256233>,  <31.326641, 27.349920, 24.801521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481003, 27.809650, 25.256233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802362, 27.782318, 25.019630>,  <31.995178, 27.765919, 24.877668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802362, 27.782318, 25.019630>,  <31.481003, 27.809650, 25.256233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802362, 27.782318, 25.019630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083888, 0.996475, -0.001174,
		0.589502, -0.048677, 0.806299,
		0.803400, -0.068330, -0.591507,
		32.043381, 27.761820, 24.842178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020039, 28.067791, 25.625999>,  <31.481003, 27.809650, 25.256233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020039, 28.067791, 25.625999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082783, 28.109272, 25.233135>,  <32.120430, 28.134161, 24.997417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082783, 28.109272, 25.233135>,  <32.020039, 28.067791, 25.625999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082783, 28.109272, 25.233135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079741, 0.989895, 0.117256,
		0.984396, -0.096712, 0.147008,
		0.156863, 0.103704, -0.982161,
		32.129841, 28.140383, 24.938486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533188, 28.511160, 25.643942>,  <32.020039, 28.067791, 25.625999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533188, 28.511160, 25.643942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410549, 28.544353, 25.264656>,  <32.336967, 28.564270, 25.037085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410549, 28.544353, 25.264656>,  <32.533188, 28.511160, 25.643942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410549, 28.544353, 25.264656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096401, 0.993777, 0.055803,
		0.946945, -0.074300, -0.312688,
		-0.306596, 0.082986, -0.948215,
		32.318569, 28.569250, 24.980192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989777, 29.029011, 25.316479>,  <32.533188, 28.511160, 25.643942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989777, 29.029011, 25.316479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632282, 29.003128, 25.138920>,  <32.417786, 28.987598, 25.032385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632282, 29.003128, 25.138920>,  <32.989777, 29.029011, 25.316479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632282, 29.003128, 25.138920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120624, 0.987761, 0.098880,
		0.432067, 0.141917, -0.890605,
		-0.893738, -0.064705, -0.443898,
		32.364162, 28.983717, 25.005751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995434, 29.532469, 24.768229>,  <32.989777, 29.029011, 25.316479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995434, 29.532469, 24.768229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605297, 29.463772, 24.823666>,  <32.371216, 29.422554, 24.856928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605297, 29.463772, 24.823666>,  <32.995434, 29.532469, 24.768229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605297, 29.463772, 24.823666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182803, 0.980555, -0.071372,
		-0.123639, -0.094947, -0.987774,
		-0.975344, -0.171744, 0.138592,
		32.312695, 29.412249, 24.865244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587471, 29.887827, 24.205624>,  <32.995434, 29.532469, 24.768229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587471, 29.887827, 24.205624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317577, 29.846153, 24.497890>,  <32.155640, 29.821150, 24.673252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317577, 29.846153, 24.497890>,  <32.587471, 29.887827, 24.205624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317577, 29.846153, 24.497890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086313, 0.994332, 0.062072,
		-0.732995, -0.021184, -0.679904,
		-0.674735, -0.104183, 0.730669,
		32.115158, 29.814898, 24.717091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084179, 30.374624, 24.049644>,  <32.587471, 29.887827, 24.205624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084179, 30.374624, 24.049644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995203, 30.303070, 24.433002>,  <31.941818, 30.260138, 24.663017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.995203, 30.303070, 24.433002>,  <32.084179, 30.374624, 24.049644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995203, 30.303070, 24.433002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132725, 0.979427, 0.152007,
		-0.965870, -0.093391, -0.241606,
		-0.222440, -0.178886, 0.958395,
		31.928471, 30.249405, 24.720520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373346, 30.742418, 24.159533>,  <32.084179, 30.374624, 24.049644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373346, 30.742418, 24.159533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592459, 30.687584, 24.489658>,  <31.723927, 30.654684, 24.687733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592459, 30.687584, 24.489658>,  <31.373346, 30.742418, 24.159533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592459, 30.687584, 24.489658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163038, 0.950080, 0.266022,
		-0.820581, -0.280279, 0.498087,
		0.547783, -0.137085, 0.825313,
		31.756794, 30.646458, 24.737253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940683, 31.105288, 24.754271>,  <31.373346, 30.742418, 24.159533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940683, 31.105288, 24.754271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300358, 31.053413, 24.921432>,  <31.516163, 31.022289, 25.021729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300358, 31.053413, 24.921432>,  <30.940683, 31.105288, 24.754271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300358, 31.053413, 24.921432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032581, 0.932576, 0.359499,
		-0.436348, -0.336873, 0.834336,
		0.899187, -0.129684, 0.417904,
		31.570114, 31.014509, 25.046804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871313, 31.365715, 25.440020>,  <30.940683, 31.105288, 24.754271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871313, 31.365715, 25.440020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265497, 31.368034, 25.372093>,  <31.502007, 31.369425, 25.331337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265497, 31.368034, 25.372093>,  <30.871313, 31.365715, 25.440020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265497, 31.368034, 25.372093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043319, 0.957819, 0.284086,
		0.164300, -0.287312, 0.943640,
		0.985459, 0.005797, -0.169815,
		31.561134, 31.369774, 25.321148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227283, 31.644775, 26.122215>,  <30.871313, 31.365715, 25.440020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227283, 31.644775, 26.122215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459181, 31.683826, 25.798645>,  <31.598320, 31.707258, 25.604502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459181, 31.683826, 25.798645>,  <31.227283, 31.644775, 26.122215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459181, 31.683826, 25.798645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104709, 0.975637, 0.192792,
		0.808042, -0.196472, 0.555398,
		0.579745, 0.097629, -0.808928,
		31.633104, 31.713116, 25.555967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786406, 31.967512, 26.440212>,  <31.227283, 31.644775, 26.122215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786406, 31.967512, 26.440212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827120, 32.041161, 26.049164>,  <31.851549, 32.085350, 25.814535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827120, 32.041161, 26.049164>,  <31.786406, 31.967512, 26.440212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827120, 32.041161, 26.049164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081564, 0.977870, 0.192660,
		0.991457, -0.099349, 0.084516,
		0.101787, 0.184120, -0.977619,
		31.857656, 32.096397, 25.755878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392105, 32.520191, 26.421816>,  <31.786406, 31.967512, 26.440212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392105, 32.520191, 26.421816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176270, 32.515102, 26.085083>,  <32.046768, 32.512051, 25.883043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176270, 32.515102, 26.085083>,  <32.392105, 32.520191, 26.421816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176270, 32.515102, 26.085083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037623, 0.999251, 0.009015,
		0.841087, 0.036537, -0.539665,
		-0.539590, -0.012721, -0.841832,
		32.014393, 32.511288, 25.832533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636127, 33.117908, 26.109385>,  <32.392105, 32.520191, 26.421816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636127, 33.117908, 26.109385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278271, 33.053406, 25.942719>,  <32.063557, 33.014706, 25.842718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278271, 33.053406, 25.942719>,  <32.636127, 33.117908, 26.109385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278271, 33.053406, 25.942719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165276, 0.985887, -0.026673,
		0.415087, 0.045002, -0.908668,
		-0.894643, -0.161252, -0.416667,
		32.009876, 33.005032, 25.817719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651260, 33.499317, 25.439066>,  <32.636127, 33.117908, 26.109385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651260, 33.499317, 25.439066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270973, 33.444019, 25.550083>,  <32.042801, 33.410839, 25.616693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270973, 33.444019, 25.550083>,  <32.651260, 33.499317, 25.439066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270973, 33.444019, 25.550083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227133, 0.919835, -0.319866,
		-0.211073, -0.367140, -0.905901,
		-0.950715, -0.138245, 0.277542,
		31.985758, 33.402546, 25.633347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211258, 33.664162, 24.797853>,  <32.651260, 33.499317, 25.439066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211258, 33.664162, 24.797853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981581, 33.684677, 25.124699>,  <31.843775, 33.696987, 25.320807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981581, 33.684677, 25.124699>,  <32.211258, 33.664162, 24.797853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981581, 33.684677, 25.124699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436625, 0.825079, -0.358613,
		-0.692576, -0.562684, -0.451358,
		-0.574192, 0.051293, 0.817112,
		31.809322, 33.700066, 25.369833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517057, 33.538368, 24.610237>,  <32.211258, 33.664162, 24.797853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517057, 33.538368, 24.610237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527790, 33.759743, 24.943222>,  <31.534229, 33.892567, 25.143013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527790, 33.759743, 24.943222>,  <31.517057, 33.538368, 24.610237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527790, 33.759743, 24.943222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466088, 0.743629, -0.479352,
		-0.884331, -0.375139, 0.277900,
		0.026831, 0.553432, 0.832462,
		31.535839, 33.925774, 25.192961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858028, 33.872803, 24.658255>,  <31.517057, 33.538368, 24.610237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858028, 33.872803, 24.658255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078295, 34.101921, 24.901127>,  <31.210455, 34.239391, 25.046850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078295, 34.101921, 24.901127>,  <30.858028, 33.872803, 24.658255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078295, 34.101921, 24.901127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491457, 0.810441, -0.318833,
		-0.674711, -0.122832, 0.727789,
		0.550667, 0.572798, 0.607181,
		31.243496, 34.273762, 25.083281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425526, 34.431725, 24.773525>,  <30.858028, 33.872803, 24.658255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425526, 34.431725, 24.773525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787987, 34.573483, 24.865860>,  <31.005465, 34.658539, 24.921261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787987, 34.573483, 24.865860>,  <30.425526, 34.431725, 24.773525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787987, 34.573483, 24.865860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302000, 0.924268, -0.233506,
		-0.296109, 0.141880, 0.944558,
		0.906154, 0.354399, 0.230836,
		31.059834, 34.679802, 24.935110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706123, 34.271652, 24.448719>,  <30.425526, 34.431725, 24.773525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706123, 34.271652, 24.448719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317572, 34.196159, 24.506416>,  <29.084440, 34.150864, 24.541035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317572, 34.196159, 24.506416>,  <29.706123, 34.271652, 24.448719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317572, 34.196159, 24.506416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220889, -0.941024, 0.256284,
		0.087368, 0.280810, 0.955778,
		-0.971378, -0.188730, 0.144244,
		29.026157, 34.139542, 24.549690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779602, 33.602512, 24.890079>,  <29.706123, 34.271652, 24.448719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779602, 33.602512, 24.890079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424271, 33.632282, 24.708824>,  <29.211071, 33.650143, 24.600071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424271, 33.632282, 24.708824>,  <29.779602, 33.602512, 24.890079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424271, 33.632282, 24.708824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107252, -0.993113, 0.047148,
		-0.446508, 0.090483, 0.890193,
		-0.888329, 0.074423, -0.453137,
		29.157772, 33.654610, 24.572884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.237799, 33.180668, 25.261152>,  <29.779602, 33.602512, 24.890079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.237799, 33.180668, 25.261152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090775, 33.212029, 24.890476>,  <29.002560, 33.230846, 24.668070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090775, 33.212029, 24.890476>,  <29.237799, 33.180668, 25.261152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090775, 33.212029, 24.890476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410848, -0.907623, 0.086166,
		-0.834329, 0.412399, 0.365816,
		-0.367558, 0.078404, -0.926690,
		28.980507, 33.235550, 24.612469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506025, 32.945122, 25.235809>,  <29.237799, 33.180668, 25.261152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506025, 32.945122, 25.235809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635248, 32.903732, 24.859528>,  <28.712782, 32.878899, 24.633759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635248, 32.903732, 24.859528>,  <28.506025, 32.945122, 25.235809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635248, 32.903732, 24.859528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377172, -0.925729, -0.027699,
		-0.867972, 0.363756, -0.338093,
		0.323058, -0.103478, -0.940705,
		28.732166, 32.872688, 24.577316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944424, 32.581444, 24.823017>,  <28.506025, 32.945122, 25.235809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944424, 32.581444, 24.823017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278341, 32.550690, 24.604950>,  <28.478691, 32.532238, 24.474110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.278341, 32.550690, 24.604950>,  <27.944424, 32.581444, 24.823017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278341, 32.550690, 24.604950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172882, -0.976722, -0.126986,
		-0.522716, 0.200257, -0.828653,
		0.834793, -0.076882, -0.545169,
		28.528780, 32.527626, 24.441399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741623, 32.146198, 24.293774>,  <27.944424, 32.581444, 24.823017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741623, 32.146198, 24.293774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139223, 32.111523, 24.320454>,  <28.377783, 32.090717, 24.336462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139223, 32.111523, 24.320454>,  <27.741623, 32.146198, 24.293774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139223, 32.111523, 24.320454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083521, -0.995302, -0.048969,
		0.070631, 0.043105, -0.996570,
		0.993999, -0.086693, 0.066699,
		28.437424, 32.085514, 24.340464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789104, 31.553898, 23.911556>,  <27.741623, 32.146198, 24.293774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789104, 31.553898, 23.911556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158108, 31.597042, 24.059799>,  <28.379509, 31.622929, 24.148745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158108, 31.597042, 24.059799>,  <27.789104, 31.553898, 23.911556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158108, 31.597042, 24.059799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087603, -0.993614, 0.071114,
		0.375910, -0.033137, -0.926063,
		0.922506, 0.107859, 0.370607,
		28.434860, 31.629400, 24.170980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204935, 31.091305, 23.488171>,  <27.789104, 31.553898, 23.911556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204935, 31.091305, 23.488171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400642, 31.157738, 23.830639>,  <28.518066, 31.197598, 24.036119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400642, 31.157738, 23.830639>,  <28.204935, 31.091305, 23.488171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400642, 31.157738, 23.830639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300426, -0.953712, 0.013322,
		0.818755, 0.250698, -0.516518,
		0.489270, 0.166083, 0.856172,
		28.547424, 31.207563, 24.087490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883726, 30.709980, 23.356852>,  <28.204935, 31.091305, 23.488171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883726, 30.709980, 23.356852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776457, 30.765644, 23.738159>,  <28.712095, 30.799042, 23.966944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776457, 30.765644, 23.738159>,  <28.883726, 30.709980, 23.356852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776457, 30.765644, 23.738159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152492, -0.970905, 0.184634,
		0.951226, 0.194880, 0.239148,
		-0.268172, 0.139161, 0.953267,
		28.696005, 30.807392, 24.024139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509197, 30.527330, 23.740059>,  <28.883726, 30.709980, 23.356852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509197, 30.527330, 23.740059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207254, 30.483307, 23.998695>,  <29.026089, 30.456892, 24.153877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.207254, 30.483307, 23.998695>,  <29.509197, 30.527330, 23.740059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207254, 30.483307, 23.998695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296551, -0.936573, 0.186785,
		0.585021, 0.332743, 0.739616,
		-0.754856, -0.110061, 0.646590,
		28.980797, 30.450289, 24.192673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811897, 30.255400, 24.327101>,  <29.509197, 30.527330, 23.740059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811897, 30.255400, 24.327101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428173, 30.149872, 24.367348>,  <29.197939, 30.086555, 24.391495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.428173, 30.149872, 24.367348>,  <29.811897, 30.255400, 24.327101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428173, 30.149872, 24.367348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276841, -0.948917, 0.151380,
		0.055539, 0.173074, 0.983342,
		-0.959310, -0.263822, 0.100615,
		29.140381, 30.070724, 24.397532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783243, 29.854155, 24.901791>,  <29.811897, 30.255400, 24.327101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783243, 29.854155, 24.901791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417871, 29.795288, 24.750008>,  <29.198648, 29.759968, 24.658937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417871, 29.795288, 24.750008>,  <29.783243, 29.854155, 24.901791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417871, 29.795288, 24.750008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006572, -0.926884, 0.375291,
		-0.406944, 0.345295, 0.845676,
		-0.913429, -0.147165, -0.379459,
		29.143843, 29.751139, 24.636169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459167, 29.568617, 25.478706>,  <29.783243, 29.854155, 24.901791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459167, 29.568617, 25.478706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267471, 29.435806, 25.153725>,  <29.152452, 29.356119, 24.958735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267471, 29.435806, 25.153725>,  <29.459167, 29.568617, 25.478706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267471, 29.435806, 25.153725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024272, -0.930342, 0.365888,
		-0.877347, 0.155629, 0.453918,
		-0.479242, -0.332028, -0.812456,
		29.123699, 29.336199, 24.909988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043655, 28.930695, 25.717783>,  <29.459167, 29.568617, 25.478706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043655, 28.930695, 25.717783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066109, 28.909126, 25.318996>,  <29.079580, 28.896185, 25.079725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066109, 28.909126, 25.318996>,  <29.043655, 28.930695, 25.717783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066109, 28.909126, 25.318996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118936, -0.991069, 0.060296,
		-0.991313, -0.121961, -0.049234,
		0.056149, -0.053916, -0.996965,
		29.082949, 28.892950, 25.019907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.628687, 28.387697, 25.643106>,  <29.043655, 28.930695, 25.717783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.628687, 28.387697, 25.643106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842758, 28.426727, 25.307472>,  <28.971201, 28.450146, 25.106092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.842758, 28.426727, 25.307472>,  <28.628687, 28.387697, 25.643106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842758, 28.426727, 25.307472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158528, -0.987260, -0.013698,
		-0.829731, -0.125688, -0.543828,
		0.535178, 0.097577, -0.839085,
		29.003311, 28.456001, 25.055746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434093, 27.841274, 25.286184>,  <28.628687, 28.387697, 25.643106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434093, 27.841274, 25.286184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798685, 27.936718, 25.152157>,  <29.017441, 27.993984, 25.071741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798685, 27.936718, 25.152157>,  <28.434093, 27.841274, 25.286184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798685, 27.936718, 25.152157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275836, -0.958828, 0.067549,
		-0.305156, -0.153993, -0.939769,
		0.911479, 0.238609, -0.335069,
		29.072128, 28.008301, 25.051636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479830, 27.368773, 24.792351>,  <28.434093, 27.841274, 25.286184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479830, 27.368773, 24.792351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854191, 27.497234, 24.850239>,  <29.078808, 27.574310, 24.884972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854191, 27.497234, 24.850239>,  <28.479830, 27.368773, 24.792351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854191, 27.497234, 24.850239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344744, -0.919464, -0.189044,
		0.072352, 0.226818, -0.971246,
		0.935904, 0.321154, 0.144720,
		29.134962, 27.593580, 24.893654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856724, 27.170176, 24.235386>,  <28.479830, 27.368773, 24.792351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856724, 27.170176, 24.235386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118929, 27.230961, 24.531281>,  <29.276253, 27.267431, 24.708817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118929, 27.230961, 24.531281>,  <28.856724, 27.170176, 24.235386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118929, 27.230961, 24.531281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459978, -0.857219, -0.231509,
		0.598935, 0.492019, -0.631818,
		0.655513, 0.151964, 0.739737,
		29.315582, 27.276550, 24.753202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445276, 26.871170, 23.885201>,  <28.856724, 27.170176, 24.235386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445276, 26.871170, 23.885201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560026, 26.883286, 24.268196>,  <29.628876, 26.890554, 24.497993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560026, 26.883286, 24.268196>,  <29.445276, 26.871170, 23.885201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560026, 26.883286, 24.268196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292993, -0.954378, -0.057592,
		0.912063, 0.297060, -0.282661,
		0.286873, 0.030291, 0.957489,
		29.646088, 26.892372, 24.555443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125084, 26.684860, 23.865396>,  <29.445276, 26.871170, 23.885201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125084, 26.684860, 23.865396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992962, 26.604679, 24.234333>,  <29.913689, 26.556570, 24.455696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992962, 26.604679, 24.234333>,  <30.125084, 26.684860, 23.865396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992962, 26.604679, 24.234333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470998, -0.881835, -0.022978,
		0.817960, 0.426832, 0.385688,
		-0.330306, -0.200453, 0.922343,
		29.893869, 26.544542, 24.511036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747578, 26.401100, 24.162003>,  <30.125084, 26.684860, 23.865396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747578, 26.401100, 24.162003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441751, 26.283890, 24.391636>,  <30.258255, 26.213564, 24.529417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441751, 26.283890, 24.391636>,  <30.747578, 26.401100, 24.162003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441751, 26.283890, 24.391636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327775, -0.943677, -0.045141,
		0.554978, 0.153658, 0.817551,
		-0.764567, -0.293025, 0.574085,
		30.212381, 26.195982, 24.563862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076605, 26.068396, 24.733515>,  <30.747578, 26.401100, 24.162003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076605, 26.068396, 24.733515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704454, 25.933487, 24.676033>,  <30.481165, 25.852543, 24.641544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704454, 25.933487, 24.676033>,  <31.076605, 26.068396, 24.733515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704454, 25.933487, 24.676033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344576, -0.938321, -0.028648,
		-0.125177, -0.076170, 0.989206,
		-0.930375, -0.337271, -0.143702,
		30.425343, 25.832306, 24.632923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943829, 25.486830, 25.229170>,  <31.076605, 26.068396, 24.733515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943829, 25.486830, 25.229170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678583, 25.442924, 24.932999>,  <30.519436, 25.416582, 24.755297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678583, 25.442924, 24.932999>,  <30.943829, 25.486830, 25.229170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678583, 25.442924, 24.932999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234890, -0.969737, -0.066609,
		-0.710707, -0.218088, 0.668829,
		-0.663115, -0.109763, -0.740426,
		30.479649, 25.409996, 24.710871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464142, 24.879585, 25.424417>,  <30.943829, 25.486830, 25.229170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464142, 24.879585, 25.424417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398964, 24.935577, 25.033756>,  <30.359858, 24.969173, 24.799358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398964, 24.935577, 25.033756>,  <30.464142, 24.879585, 25.424417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398964, 24.935577, 25.033756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056870, -0.989571, -0.132343,
		-0.984995, 0.033978, 0.169203,
		-0.162941, 0.139980, -0.976655,
		30.350080, 24.977571, 24.740759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941635, 24.304306, 25.101349>,  <30.464142, 24.879585, 25.424417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941635, 24.304306, 25.101349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166395, 24.443405, 24.801125>,  <30.301250, 24.526865, 24.620991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166395, 24.443405, 24.801125>,  <29.941635, 24.304306, 25.101349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166395, 24.443405, 24.801125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087749, -0.927282, -0.363934,
		-0.822537, 0.138634, -0.551555,
		0.561901, 0.347748, -0.750559,
		30.334965, 24.547729, 24.575956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803083, 23.818129, 24.579786>,  <29.941635, 24.304306, 25.101349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803083, 23.818129, 24.579786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118000, 24.006359, 24.420422>,  <30.306950, 24.119297, 24.324802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118000, 24.006359, 24.420422>,  <29.803083, 23.818129, 24.579786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118000, 24.006359, 24.420422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151144, -0.773736, -0.615214,
		-0.597772, 0.424133, -0.680279,
		0.787289, 0.470578, -0.398412,
		30.354187, 24.147532, 24.300898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651508, 23.934752, 23.735233>,  <29.803083, 23.818129, 24.579786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651508, 23.934752, 23.735233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041637, 23.930656, 23.823448>,  <30.275715, 23.928200, 23.876377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041637, 23.930656, 23.823448>,  <29.651508, 23.934752, 23.735233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041637, 23.930656, 23.823448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167031, -0.618995, -0.767428,
		0.144371, 0.785328, -0.602011,
		0.975324, -0.010240, 0.220540,
		30.334234, 23.927584, 23.889610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912302, 23.899204, 23.084541>,  <29.651508, 23.934752, 23.735233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912302, 23.899204, 23.084541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232374, 23.811279, 23.307751>,  <30.424417, 23.758524, 23.441677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.232374, 23.811279, 23.307751>,  <29.912302, 23.899204, 23.084541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232374, 23.811279, 23.307751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264922, -0.705187, -0.657668,
		0.538076, 0.674087, -0.506045,
		0.800182, -0.219813, 0.558025,
		30.472429, 23.745335, 23.475159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496990, 23.901598, 22.630224>,  <29.912302, 23.899204, 23.084541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496990, 23.901598, 22.630224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582251, 23.672684, 22.946972>,  <30.633408, 23.535336, 23.137020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582251, 23.672684, 22.946972>,  <30.496990, 23.901598, 22.630224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582251, 23.672684, 22.946972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208800, -0.765086, -0.609135,
		0.954447, 0.295181, -0.043588,
		0.213154, -0.572286, 0.791868,
		30.646196, 23.500998, 23.184532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091076, 23.556141, 22.448141>,  <30.496990, 23.901598, 22.630224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091076, 23.556141, 22.448141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944651, 23.319462, 22.735443>,  <30.856796, 23.177454, 22.907824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944651, 23.319462, 22.735443>,  <31.091076, 23.556141, 22.448141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944651, 23.319462, 22.735443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310601, -0.805253, -0.505069,
		0.877225, 0.038203, 0.478556,
		-0.366063, -0.591699, 0.718255,
		30.834831, 23.141953, 22.950920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649820, 23.105349, 22.625757>,  <31.091076, 23.556141, 22.448141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649820, 23.105349, 22.625757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297611, 22.942966, 22.723640>,  <31.086287, 22.845537, 22.782370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297611, 22.942966, 22.723640>,  <31.649820, 23.105349, 22.625757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297611, 22.942966, 22.723640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246579, -0.833191, -0.494967,
		0.404823, -0.375489, 0.833743,
		-0.880521, -0.405957, 0.244707,
		31.033455, 22.821178, 22.797052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682753, 22.377531, 22.353449>,  <31.649820, 23.105349, 22.625757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682753, 22.377531, 22.353449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322250, 22.358715, 22.525738>,  <31.105949, 22.347425, 22.629110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322250, 22.358715, 22.525738>,  <31.682753, 22.377531, 22.353449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322250, 22.358715, 22.525738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082836, -0.957045, -0.277853,
		0.425292, -0.286096, 0.858647,
		-0.901257, -0.047042, 0.430723,
		31.051872, 22.344603, 22.654955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569176, 21.745213, 22.789930>,  <31.682753, 22.377531, 22.353449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569176, 21.745213, 22.789930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198915, 21.872353, 22.707813>,  <30.976759, 21.948637, 22.658543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198915, 21.872353, 22.707813>,  <31.569176, 21.745213, 22.789930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198915, 21.872353, 22.707813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262021, -0.929866, -0.258250,
		-0.272978, -0.185258, 0.944014,
		-0.925650, 0.317848, -0.205291,
		30.921221, 21.967707, 22.646225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045050, 21.224937, 23.060221>,  <31.569176, 21.745213, 22.789930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045050, 21.224937, 23.060221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897821, 21.437656, 22.755138>,  <30.809484, 21.565289, 22.572090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897821, 21.437656, 22.755138>,  <31.045050, 21.224937, 23.060221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897821, 21.437656, 22.755138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166175, -0.844706, -0.508780,
		-0.914829, -0.060523, 0.399280,
		-0.368067, 0.531797, -0.762704,
		30.787401, 21.597195, 22.526327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357052, 20.972818, 22.884634>,  <31.045050, 21.224937, 23.060221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357052, 20.972818, 22.884634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506124, 21.143894, 22.555225>,  <30.595568, 21.246540, 22.357580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506124, 21.143894, 22.555225>,  <30.357052, 20.972818, 22.884634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506124, 21.143894, 22.555225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163832, -0.843191, -0.512044,
		-0.913382, 0.325749, -0.244172,
		0.372682, 0.427688, -0.823524,
		30.617929, 21.272202, 22.308168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051579, 20.605103, 22.396835>,  <30.357052, 20.972818, 22.884634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051579, 20.605103, 22.396835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303680, 20.796543, 22.152306>,  <30.454943, 20.911407, 22.005587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303680, 20.796543, 22.152306>,  <30.051579, 20.605103, 22.396835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303680, 20.796543, 22.152306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031631, -0.802572, -0.595717,
		-0.775743, 0.356117, -0.520964,
		0.630256, 0.478601, -0.611325,
		30.492758, 20.940123, 21.968908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810335, 20.572491, 21.705116>,  <30.051579, 20.605103, 22.396835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810335, 20.572491, 21.705116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209755, 20.587975, 21.690125>,  <30.449406, 20.597265, 21.681129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.209755, 20.587975, 21.690125>,  <29.810335, 20.572491, 21.705116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.209755, 20.587975, 21.690125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015874, -0.876083, -0.481898,
		-0.051487, 0.480603, -0.875426,
		0.998548, 0.038708, -0.037477,
		30.509319, 20.599586, 21.678881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889664, 20.451891, 21.087912>,  <29.810335, 20.572491, 21.705116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889664, 20.451891, 21.087912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226036, 20.344799, 21.276020>,  <30.427860, 20.280544, 21.388885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226036, 20.344799, 21.276020>,  <29.889664, 20.451891, 21.087912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226036, 20.344799, 21.276020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132420, -0.944423, -0.300881,
		0.524689, 0.190747, -0.829648,
		0.840932, -0.267731, 0.470270,
		30.478315, 20.264479, 21.417101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979406, 19.742868, 20.827715>,  <29.889664, 20.451891, 21.087912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979406, 19.742868, 20.827715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823544, 19.718281, 20.460152>,  <29.730026, 19.703529, 20.239614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823544, 19.718281, 20.460152>,  <29.979406, 19.742868, 20.827715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823544, 19.718281, 20.460152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140935, 0.989998, -0.006460,
		0.910114, 0.126989, -0.394421,
		-0.389655, -0.061467, -0.918907,
		29.706648, 19.699841, 20.184479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276384, 20.300476, 20.466858>,  <29.979406, 19.742868, 20.827715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276384, 20.300476, 20.466858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960546, 20.223911, 20.233654>,  <29.771044, 20.177973, 20.093733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960546, 20.223911, 20.233654>,  <30.276384, 20.300476, 20.466858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960546, 20.223911, 20.233654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171682, 0.981070, -0.089589,
		0.589120, 0.029353, -0.807512,
		-0.789597, -0.191414, -0.583008,
		29.723667, 20.166487, 20.058752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395397, 20.733431, 19.858820>,  <30.276384, 20.300476, 20.466858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395397, 20.733431, 19.858820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009069, 20.651031, 19.921764>,  <29.777273, 20.601593, 19.959532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.009069, 20.651031, 19.921764>,  <30.395397, 20.733431, 19.858820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009069, 20.651031, 19.921764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214510, 0.975943, -0.038996,
		-0.145542, -0.071419, -0.986771,
		-0.965817, -0.205997, 0.157361,
		29.719324, 20.589233, 19.968973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050449, 21.133879, 19.455263>,  <30.395397, 20.733431, 19.858820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050449, 21.133879, 19.455263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764250, 21.061234, 19.725101>,  <29.592529, 21.017647, 19.887005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764250, 21.061234, 19.725101>,  <30.050449, 21.133879, 19.455263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764250, 21.061234, 19.725101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179643, 0.980978, 0.073559,
		-0.675123, -0.068555, -0.734513,
		-0.715498, -0.181612, 0.674596,
		29.549601, 21.006750, 19.927481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.589462, 21.580200, 19.262850>,  <30.050449, 21.133879, 19.455263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.589462, 21.580200, 19.262850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476587, 21.483894, 19.634312>,  <29.408863, 21.426111, 19.857189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476587, 21.483894, 19.634312>,  <29.589462, 21.580200, 19.262850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476587, 21.483894, 19.634312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329715, 0.933371, 0.141799,
		-0.900921, -0.266178, -0.342770,
		-0.282188, -0.240766, 0.928656,
		29.391932, 21.411665, 19.912909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866079, 21.746880, 19.362907>,  <29.589462, 21.580200, 19.262850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866079, 21.746880, 19.362907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053789, 21.722790, 19.715305>,  <29.166414, 21.708336, 19.926744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.053789, 21.722790, 19.715305>,  <28.866079, 21.746880, 19.362907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.053789, 21.722790, 19.715305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206246, 0.962604, 0.175661,
		-0.858630, -0.264135, 0.439303,
		0.469273, -0.060223, 0.880997,
		29.194571, 21.704723, 19.979605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417715, 22.190060, 19.737469>,  <28.866079, 21.746880, 19.362907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417715, 22.190060, 19.737469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747448, 22.145626, 19.959507>,  <28.945288, 22.118965, 20.092730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747448, 22.145626, 19.959507>,  <28.417715, 22.190060, 19.737469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747448, 22.145626, 19.959507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104603, 0.933785, 0.342205,
		-0.556356, -0.340156, 0.758131,
		0.824334, -0.111085, 0.555098,
		28.994749, 22.112301, 20.126036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.229076, 22.440374, 20.494812>,  <28.417715, 22.190060, 19.737469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.229076, 22.440374, 20.494812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627359, 22.449772, 20.459011>,  <28.866329, 22.455410, 20.437531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627359, 22.449772, 20.459011>,  <28.229076, 22.440374, 20.494812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627359, 22.449772, 20.459011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020421, 0.887604, 0.460154,
		0.090251, -0.460007, 0.883316,
		0.995709, 0.023492, -0.089501,
		28.926073, 22.456820, 20.432161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439299, 22.708134, 21.130775>,  <28.229076, 22.440374, 20.494812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439299, 22.708134, 21.130775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756226, 22.766338, 20.893776>,  <28.946383, 22.801262, 20.751575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.756226, 22.766338, 20.893776>,  <28.439299, 22.708134, 21.130775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.756226, 22.766338, 20.893776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186060, 0.867253, 0.461794,
		0.581044, -0.476129, 0.660067,
		0.792319, 0.145511, -0.592501,
		28.993921, 22.809992, 20.716026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948437, 22.998091, 21.616312>,  <28.439299, 22.708134, 21.130775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948437, 22.998091, 21.616312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036856, 23.095852, 21.238655>,  <29.089907, 23.154509, 21.012060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036856, 23.095852, 21.238655>,  <28.948437, 22.998091, 21.616312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036856, 23.095852, 21.238655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040299, 0.964975, 0.259230,
		0.974431, -0.095349, 0.203454,
		0.221045, 0.244403, -0.944143,
		29.103170, 23.169172, 20.955412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564581, 23.531086, 21.598240>,  <28.948437, 22.998091, 21.616312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564581, 23.531086, 21.598240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366011, 23.574612, 21.253746>,  <29.246868, 23.600727, 21.047050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366011, 23.574612, 21.253746>,  <29.564581, 23.531086, 21.598240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366011, 23.574612, 21.253746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033031, 0.989026, 0.144001,
		0.867451, 0.099933, -0.487382,
		-0.496424, 0.108816, -0.861233,
		29.217083, 23.607256, 20.995377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853167, 24.170557, 21.331503>,  <29.564581, 23.531086, 21.598240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853167, 24.170557, 21.331503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522165, 24.106037, 21.116386>,  <29.323565, 24.067326, 20.987316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522165, 24.106037, 21.116386>,  <29.853167, 24.170557, 21.331503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522165, 24.106037, 21.116386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275210, 0.951412, 0.138110,
		0.489386, 0.262293, -0.831687,
		-0.827503, -0.161299, -0.537793,
		29.273914, 24.057648, 20.955048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817875, 24.769985, 20.937531>,  <29.853167, 24.170557, 21.331503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817875, 24.769985, 20.937531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451185, 24.610626, 20.949516>,  <29.231173, 24.515011, 20.956707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451185, 24.610626, 20.949516>,  <29.817875, 24.769985, 20.937531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451185, 24.610626, 20.949516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382018, 0.896043, 0.226205,
		-0.116970, 0.195920, -0.973619,
		-0.916723, -0.398399, 0.029965,
		29.176168, 24.491106, 20.958506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425655, 25.230394, 20.589010>,  <29.817875, 24.769985, 20.937531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425655, 25.230394, 20.589010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149811, 25.043579, 20.810390>,  <28.984304, 24.931490, 20.943218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149811, 25.043579, 20.810390>,  <29.425655, 25.230394, 20.589010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149811, 25.043579, 20.810390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375297, 0.884097, 0.278433,
		-0.619344, -0.015698, -0.784963,
		-0.689613, -0.467040, 0.553451,
		28.942926, 24.903467, 20.976425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850496, 25.623066, 20.492485>,  <29.425655, 25.230394, 20.589010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850496, 25.623066, 20.492485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742828, 25.414505, 20.816383>,  <28.678228, 25.289368, 21.010721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742828, 25.414505, 20.816383>,  <28.850496, 25.623066, 20.492485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742828, 25.414505, 20.816383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406585, 0.823699, 0.395233,
		-0.873061, -0.222845, -0.433710,
		-0.269170, -0.521403, 0.809745,
		28.662077, 25.258083, 21.059307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204836, 25.811245, 20.517221>,  <28.850496, 25.623066, 20.492485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204836, 25.811245, 20.517221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300232, 25.682087, 20.883579>,  <28.357470, 25.604593, 21.103394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300232, 25.682087, 20.883579>,  <28.204836, 25.811245, 20.517221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300232, 25.682087, 20.883579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537483, 0.741609, 0.401407,
		-0.808847, -0.588010, 0.003318,
		0.238492, -0.322894, 0.915893,
		28.371780, 25.585218, 21.158348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638891, 25.986603, 20.893263>,  <28.204836, 25.811245, 20.517221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638891, 25.986603, 20.893263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917341, 25.909039, 21.169758>,  <28.084412, 25.862499, 21.335655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917341, 25.909039, 21.169758>,  <27.638891, 25.986603, 20.893263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917341, 25.909039, 21.169758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346252, 0.752763, 0.559873,
		-0.628904, -0.629083, 0.456874,
		0.696124, -0.193913, 0.691237,
		28.126179, 25.850864, 21.377129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255665, 25.954035, 21.563454>,  <27.638891, 25.986603, 20.893263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255665, 25.954035, 21.563454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638411, 26.033680, 21.648083>,  <27.868057, 26.081467, 21.698860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638411, 26.033680, 21.648083>,  <27.255665, 25.954035, 21.563454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638411, 26.033680, 21.648083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287792, 0.749373, 0.596336,
		-0.039811, -0.631502, 0.774351,
		0.956865, 0.199112, 0.211575,
		27.925470, 26.093414, 21.711555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.254580, 26.143526, 22.325552>,  <27.255665, 25.954035, 21.563454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.254580, 26.143526, 22.325552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595964, 26.288750, 22.175999>,  <27.800795, 26.375885, 22.086266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595964, 26.288750, 22.175999>,  <27.254580, 26.143526, 22.325552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595964, 26.288750, 22.175999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051935, 0.773094, 0.632162,
		0.518561, -0.520108, 0.678662,
		0.853462, 0.363060, -0.373884,
		27.852003, 26.397669, 22.063833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715424, 26.310629, 22.902895>,  <27.254580, 26.143526, 22.325552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715424, 26.310629, 22.902895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784924, 26.533112, 22.577824>,  <27.826624, 26.666601, 22.382782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784924, 26.533112, 22.577824>,  <27.715424, 26.310629, 22.902895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784924, 26.533112, 22.577824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086407, 0.830657, 0.550039,
		0.980991, -0.025349, 0.192388,
		0.173751, 0.556207, -0.812677,
		27.837049, 26.699974, 22.334021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142376, 26.818563, 23.096275>,  <27.715424, 26.310629, 22.902895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142376, 26.818563, 23.096275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000334, 26.978142, 22.758106>,  <27.915108, 27.073889, 22.555204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.000334, 26.978142, 22.758106>,  <28.142376, 26.818563, 23.096275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.000334, 26.978142, 22.758106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100387, 0.882862, 0.458777,
		0.929420, 0.247785, -0.273461,
		-0.355107, 0.398945, -0.845424,
		27.893803, 27.097826, 22.504478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398539, 27.475485, 23.130476>,  <28.142376, 26.818563, 23.096275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398539, 27.475485, 23.130476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149212, 27.500420, 22.818684>,  <27.999617, 27.515381, 22.631609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149212, 27.500420, 22.818684>,  <28.398539, 27.475485, 23.130476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149212, 27.500420, 22.818684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055781, 0.990734, 0.123835,
		0.779978, 0.120668, -0.614063,
		-0.623316, 0.062336, -0.779482,
		27.962217, 27.519121, 22.584839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714375, 27.967472, 22.621746>,  <28.398539, 27.475485, 23.130476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714375, 27.967472, 22.621746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317095, 27.947880, 22.579491>,  <28.078728, 27.936125, 22.554138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317095, 27.947880, 22.579491>,  <28.714375, 27.967472, 22.621746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317095, 27.947880, 22.579491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050021, 0.998722, 0.007198,
		0.105151, 0.012433, -0.994379,
		-0.993197, -0.048983, -0.105639,
		28.019136, 27.933186, 22.547798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499126, 28.426786, 22.102669>,  <28.714375, 27.967472, 22.621746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499126, 28.426786, 22.102669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150486, 28.349289, 22.282791>,  <27.941301, 28.302792, 22.390865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.150486, 28.349289, 22.282791>,  <28.499126, 28.426786, 22.102669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150486, 28.349289, 22.282791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243985, 0.968178, -0.055698,
		-0.425185, -0.158415, -0.891135,
		-0.871601, -0.193742, 0.450306,
		27.889006, 28.291166, 22.417883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956747, 28.737848, 21.640682>,  <28.499126, 28.426786, 22.102669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956747, 28.737848, 21.640682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780005, 28.693649, 21.996784>,  <27.673958, 28.667130, 22.210445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780005, 28.693649, 21.996784>,  <27.956747, 28.737848, 21.640682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780005, 28.693649, 21.996784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301724, 0.952875, -0.031484,
		-0.844822, -0.282523, -0.454375,
		-0.441857, -0.110497, 0.890254,
		27.647448, 28.660500, 22.263861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.283070, 29.066389, 21.607521>,  <27.956747, 28.737848, 21.640682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.283070, 29.066389, 21.607521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368958, 29.046284, 21.997673>,  <27.420490, 29.034220, 22.231764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.368958, 29.046284, 21.997673>,  <27.283070, 29.066389, 21.607521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368958, 29.046284, 21.997673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387198, 0.912461, 0.132259,
		-0.896646, -0.406064, 0.176461,
		0.214719, -0.050264, 0.975382,
		27.433372, 29.031204, 22.290287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.666597, 29.177862, 21.939058>,  <27.283070, 29.066389, 21.607521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.666597, 29.177862, 21.939058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903622, 29.238537, 22.255505>,  <27.045835, 29.274940, 22.445372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.903622, 29.238537, 22.255505>,  <26.666597, 29.177862, 21.939058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.903622, 29.238537, 22.255505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491450, 0.846228, 0.205853,
		-0.638239, -0.510774, 0.575987,
		0.592561, 0.151686, 0.791115,
		27.081390, 29.284042, 22.492840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.221195, 29.256283, 22.492733>,  <26.666597, 29.177862, 21.939058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.221195, 29.256283, 22.492733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568708, 29.448849, 22.539131>,  <26.777216, 29.564388, 22.566969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568708, 29.448849, 22.539131>,  <26.221195, 29.256283, 22.492733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568708, 29.448849, 22.539131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495174, 0.842690, 0.211366,
		0.004008, -0.241069, 0.970500,
		0.868784, 0.481413, 0.115994,
		26.829344, 29.593273, 22.573929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.160137, 29.684566, 23.033297>,  <26.221195, 29.256283, 22.492733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.160137, 29.684566, 23.033297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478371, 29.837490, 22.845303>,  <26.669310, 29.929245, 22.732506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478371, 29.837490, 22.845303>,  <26.160137, 29.684566, 23.033297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478371, 29.837490, 22.845303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397468, 0.914838, 0.071352,
		0.457240, 0.130038, 0.879785,
		0.795582, 0.382311, -0.469986,
		26.717045, 29.952183, 22.704308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242939, 30.333179, 23.460510>,  <26.160137, 29.684566, 23.033297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242939, 30.333179, 23.460510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470190, 30.387917, 23.135918>,  <26.606541, 30.420759, 22.941162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470190, 30.387917, 23.135918>,  <26.242939, 30.333179, 23.460510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470190, 30.387917, 23.135918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260137, 0.965378, -0.019334,
		0.780741, 0.222081, 0.584057,
		0.568129, 0.136840, -0.811482,
		26.640629, 30.428968, 22.892473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681141, 30.867254, 23.591347>,  <26.242939, 30.333179, 23.460510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681141, 30.867254, 23.591347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658800, 30.870823, 23.191986>,  <26.645395, 30.872963, 22.952370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.658800, 30.870823, 23.191986>,  <26.681141, 30.867254, 23.591347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.658800, 30.870823, 23.191986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207025, 0.978124, 0.020321,
		0.976740, 0.207829, -0.052781,
		-0.055850, 0.008921, -0.998399,
		26.642044, 30.873499, 22.892466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955189, 31.504240, 23.426554>,  <26.681141, 30.867254, 23.591347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955189, 31.504240, 23.426554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745909, 31.397102, 23.102943>,  <26.620340, 31.332819, 22.908777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745909, 31.397102, 23.102943>,  <26.955189, 31.504240, 23.426554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745909, 31.397102, 23.102943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268207, 0.952838, -0.142005,
		0.808905, 0.142689, -0.570362,
		-0.523200, -0.267844, -0.809025,
		26.588949, 31.316750, 22.860235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086563, 31.964455, 22.894917>,  <26.955189, 31.504240, 23.426554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086563, 31.964455, 22.894917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769104, 31.776825, 22.739952>,  <26.578629, 31.664248, 22.646973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769104, 31.776825, 22.739952>,  <27.086563, 31.964455, 22.894917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769104, 31.776825, 22.739952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373846, 0.878410, -0.297715,
		0.479958, -0.091449, -0.872512,
		-0.793649, -0.469076, -0.387412,
		26.531010, 31.636103, 22.623728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868895, 32.279091, 22.230736>,  <27.086563, 31.964455, 22.894917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868895, 32.279091, 22.230736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523708, 32.109161, 22.340141>,  <26.316597, 32.007202, 22.405785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523708, 32.109161, 22.340141>,  <26.868895, 32.279091, 22.230736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523708, 32.109161, 22.340141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501203, 0.788213, -0.357093,
		-0.063888, -0.445247, -0.893126,
		-0.862968, -0.424824, 0.273516,
		26.264818, 31.981714, 22.422195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469021, 32.445881, 21.721470>,  <26.868895, 32.279091, 22.230736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469021, 32.445881, 21.721470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196688, 32.348553, 21.997807>,  <26.033287, 32.290157, 22.163609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.196688, 32.348553, 21.997807>,  <26.469021, 32.445881, 21.721470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.196688, 32.348553, 21.997807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657550, 0.618527, -0.430177,
		-0.322635, -0.747142, -0.581107,
		-0.680833, -0.243317, 0.690842,
		25.992437, 32.275558, 22.205059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.866671, 32.396732, 21.384928>,  <26.469021, 32.445881, 21.721470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.866671, 32.396732, 21.384928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742186, 32.442501, 21.762299>,  <25.667494, 32.469963, 21.988722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.742186, 32.442501, 21.762299>,  <25.866671, 32.396732, 21.384928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.742186, 32.442501, 21.762299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650562, 0.698006, -0.299260,
		-0.692760, -0.706891, -0.142789,
		-0.311212, 0.114422, 0.943427,
		25.648823, 32.476830, 22.045326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.118067, 32.437099, 21.438684>,  <25.866671, 32.396732, 21.384928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.118067, 32.437099, 21.438684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248068, 32.609150, 21.775581>,  <25.326069, 32.712379, 21.977718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.248068, 32.609150, 21.775581>,  <25.118067, 32.437099, 21.438684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.248068, 32.609150, 21.775581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704873, 0.703918, -0.087488,
		-0.630498, -0.565239, 0.531956,
		0.325002, 0.430122, 0.842240,
		25.345568, 32.738186, 22.028254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.541653, 32.655766, 21.702871>,  <25.118067, 32.437099, 21.438684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.541653, 32.655766, 21.702871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798588, 32.864227, 21.927654>,  <24.952749, 32.989304, 22.062525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798588, 32.864227, 21.927654>,  <24.541653, 32.655766, 21.702871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798588, 32.864227, 21.927654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609033, 0.792208, -0.038544,
		-0.465275, -0.317492, 0.826267,
		0.642338, 0.521157, 0.561958,
		24.991289, 33.020573, 22.096241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.195583, 32.977669, 22.266554>,  <24.541653, 32.655766, 21.702871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.195583, 32.977669, 22.266554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524672, 33.197605, 22.208847>,  <24.722124, 33.329567, 22.174223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524672, 33.197605, 22.208847>,  <24.195583, 32.977669, 22.266554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.524672, 33.197605, 22.208847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561997, 0.824877, -0.061131,
		0.085389, 0.131370, 0.987649,
		0.822720, 0.549836, -0.144265,
		24.771488, 33.362556, 22.165567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.149813, 33.676399, 22.703760>,  <24.195583, 32.977669, 22.266554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.149813, 33.676399, 22.703760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403330, 33.741840, 22.401360>,  <24.555439, 33.781105, 22.219919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403330, 33.741840, 22.401360>,  <24.149813, 33.676399, 22.703760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.403330, 33.741840, 22.401360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384564, 0.914670, -0.124456,
		0.671132, 0.369611, 0.642627,
		0.633792, 0.163604, -0.756003,
		24.593468, 33.790920, 22.174559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.436905, 34.431812, 22.812609>,  <24.149813, 33.676399, 22.703760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.436905, 34.431812, 22.812609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424244, 34.268593, 22.447643>,  <24.416647, 34.170662, 22.228664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424244, 34.268593, 22.447643>,  <24.436905, 34.431812, 22.812609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.424244, 34.268593, 22.447643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637157, 0.711575, -0.296126,
		0.770084, 0.571977, -0.282513,
		-0.031652, -0.408048, -0.912412,
		24.414749, 34.146179, 22.173920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.281595, 35.012352, 22.388641>,  <24.436905, 34.431812, 22.812609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.281595, 35.012352, 22.388641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.173796, 34.683750, 22.187641>,  <24.109116, 34.486591, 22.067041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.173796, 34.683750, 22.187641>,  <24.281595, 35.012352, 22.388641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.173796, 34.683750, 22.187641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912876, 0.384087, -0.138329,
		0.306640, 0.421438, -0.853441,
		-0.269499, -0.821502, -0.502498,
		24.092947, 34.437298, 22.036892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.838047, 35.642963, 22.301580>,  <24.281595, 35.012352, 22.388641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.838047, 35.642963, 22.301580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.843161, 35.658527, 22.701244>,  <23.846230, 35.667866, 22.941044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.843161, 35.658527, 22.701244>,  <23.838047, 35.642963, 22.301580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.843161, 35.658527, 22.701244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999703, -0.020222, 0.013579,
		0.020735, -0.999035, 0.038715,
		0.012783, 0.038985, 0.999158,
		23.846996, 35.670200, 23.000992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.376167, 35.990376, 22.740957>,  <23.838047, 35.642963, 22.301580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.376167, 35.990376, 22.740957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.106415, 36.093208, 23.017830>,  <22.944563, 36.154907, 23.183954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.106415, 36.093208, 23.017830>,  <23.376167, 35.990376, 22.740957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.106415, 36.093208, 23.017830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083994, 0.958057, -0.273992,
		-0.733589, -0.126636, -0.667691,
		-0.674383, 0.257080, 0.692183,
		22.904100, 36.170334, 23.225485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.676779, 36.226936, 22.481985>,  <23.376167, 35.990376, 22.740957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.676779, 36.226936, 22.481985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.822002, 36.372513, 22.825085>,  <22.909138, 36.459858, 23.030945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.822002, 36.372513, 22.825085>,  <22.676779, 36.226936, 22.481985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.822002, 36.372513, 22.825085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078273, 0.929221, -0.361141,
		-0.928472, 0.063978, 0.365851,
		0.363061, 0.363945, 0.857748,
		22.930922, 36.481697, 23.082409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.209921, 36.733318, 22.869282>,  <22.676779, 36.226936, 22.481985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.209921, 36.733318, 22.869282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.605417, 36.784519, 22.900272>,  <22.842716, 36.815239, 22.918867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.605417, 36.784519, 22.900272>,  <22.209921, 36.733318, 22.869282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.605417, 36.784519, 22.900272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079734, 0.888921, -0.451068,
		-0.126607, 0.439813, 0.889121,
		0.988743, 0.128002, 0.077475,
		22.902040, 36.822918, 22.923515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.869608, 37.069466, 22.233683>,  <22.209921, 36.733318, 22.869282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.869608, 37.069466, 22.233683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.576281, 37.311028, 22.108757>,  <21.400284, 37.455963, 22.033802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.576281, 37.311028, 22.108757>,  <21.869608, 37.069466, 22.233683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.576281, 37.311028, 22.108757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679784, 0.659142, -0.321597,
		0.011645, -0.448140, -0.893887,
		-0.733320, 0.603905, -0.312314,
		21.356285, 37.492199, 22.015062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.916464, 37.132744, 21.436033>,  <21.869608, 37.069466, 22.233683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.916464, 37.132744, 21.436033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.735952, 37.453609, 21.592430>,  <21.627645, 37.646130, 21.686268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.735952, 37.453609, 21.592430>,  <21.916464, 37.132744, 21.436033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.735952, 37.453609, 21.592430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665205, 0.594450, -0.451809,
		-0.594851, 0.056198, -0.801869,
		-0.451280, 0.802166, 0.390993,
		21.600569, 37.694260, 21.709728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.830936, 37.472328, 20.883467>,  <21.916464, 37.132744, 21.436033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.830936, 37.472328, 20.883467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.800451, 37.744404, 21.175095>,  <21.782160, 37.907646, 21.350071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.800451, 37.744404, 21.175095>,  <21.830936, 37.472328, 20.883467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.800451, 37.744404, 21.175095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553761, 0.636935, -0.536342,
		-0.829181, 0.362853, -0.425202,
		-0.076213, 0.680184, 0.729069,
		21.777588, 37.948460, 21.393816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.781673, 38.069630, 20.528996>,  <21.830936, 37.472328, 20.883467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.781673, 38.069630, 20.528996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908669, 38.168514, 20.895184>,  <21.984865, 38.227844, 21.114897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908669, 38.168514, 20.895184>,  <21.781673, 38.069630, 20.528996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.908669, 38.168514, 20.895184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643787, 0.652636, -0.399506,
		-0.696232, 0.716207, 0.048052,
		0.317490, 0.247213, 0.915470,
		22.003916, 38.242680, 21.169825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.751879, 38.744026, 20.558285>,  <21.781673, 38.069630, 20.528996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.751879, 38.744026, 20.558285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.020065, 38.637272, 20.835194>,  <22.180977, 38.573219, 21.001339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.020065, 38.637272, 20.835194>,  <21.751879, 38.744026, 20.558285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.020065, 38.637272, 20.835194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645705, 0.669459, -0.367273,
		-0.365427, 0.693249, 0.621183,
		0.670468, -0.266890, 0.692273,
		22.221207, 38.557205, 21.042875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.097364, 39.394035, 20.809990>,  <21.751879, 38.744026, 20.558285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.097364, 39.394035, 20.809990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.344299, 39.098160, 20.917141>,  <22.492460, 38.920635, 20.981432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.344299, 39.098160, 20.917141>,  <22.097364, 39.394035, 20.809990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.344299, 39.098160, 20.917141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751052, 0.452805, -0.480508,
		0.234129, 0.497826, 0.835077,
		0.617336, -0.739687, 0.267879,
		22.529501, 38.876255, 20.997505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.769934, 39.766537, 20.868866>,  <22.097364, 39.394035, 20.809990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.769934, 39.766537, 20.868866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.793123, 39.374241, 20.794262>,  <22.807037, 39.138863, 20.749500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.793123, 39.374241, 20.794262>,  <22.769934, 39.766537, 20.868866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.793123, 39.374241, 20.794262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803341, 0.156745, -0.574520,
		0.592690, -0.116524, 0.796957,
		0.057974, -0.980741, -0.186510,
		22.810516, 39.080017, 20.738310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.403730, 39.756142, 20.737413>,  <22.769934, 39.766537, 20.868866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.403730, 39.756142, 20.737413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.318188, 39.379871, 20.632038>,  <23.266863, 39.154110, 20.568813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.318188, 39.379871, 20.632038>,  <23.403730, 39.756142, 20.737413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.318188, 39.379871, 20.632038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829931, -0.032717, -0.556906,
		0.515247, -0.337734, 0.787690,
		-0.213857, -0.940673, -0.263439,
		23.254030, 39.097668, 20.553007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.995819, 39.291237, 20.780411>,  <23.403730, 39.756142, 20.737413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.995819, 39.291237, 20.780411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.775864, 39.096363, 20.509037>,  <23.643890, 38.979439, 20.346212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.775864, 39.096363, 20.509037>,  <23.995819, 39.291237, 20.780411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.775864, 39.096363, 20.509037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792593, -0.048137, -0.607848,
		0.263478, -0.871970, 0.412610,
		-0.549887, -0.487186, -0.678435,
		23.610897, 38.950207, 20.305506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.450748, 38.796772, 20.512695>,  <23.995819, 39.291237, 20.780411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.450748, 38.796772, 20.512695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.165714, 38.874134, 20.242935>,  <23.994694, 38.920551, 20.081079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.165714, 38.874134, 20.242935>,  <24.450748, 38.796772, 20.512695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.165714, 38.874134, 20.242935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700776, 0.149995, -0.697434,
		-0.033731, -0.969585, -0.242418,
		-0.712583, 0.193407, -0.674403,
		23.951939, 38.932156, 20.040615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.813494, 38.586563, 19.993893>,  <24.450748, 38.796772, 20.512695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.813494, 38.586563, 19.993893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507326, 38.771400, 19.814735>,  <24.323626, 38.882301, 19.707241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.507326, 38.771400, 19.814735>,  <24.813494, 38.586563, 19.993893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.507326, 38.771400, 19.814735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550456, 0.109582, -0.827641,
		-0.333365, -0.880036, -0.338237,
		-0.765419, 0.462091, -0.447891,
		24.277700, 38.910027, 19.680368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.695442, 38.276287, 19.214567>,  <24.813494, 38.586563, 19.993893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.695442, 38.276287, 19.214567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531176, 38.640934, 19.221481>,  <24.432615, 38.859722, 19.225630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531176, 38.640934, 19.221481>,  <24.695442, 38.276287, 19.214567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.531176, 38.640934, 19.221481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387894, 0.191833, -0.901520,
		-0.825161, -0.363519, -0.432392,
		-0.410667, 0.911622, 0.017286,
		24.407976, 38.914421, 19.226667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.539528, 38.369022, 18.540051>,  <24.695442, 38.276287, 19.214567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.539528, 38.369022, 18.540051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503860, 38.742374, 18.679108>,  <24.482460, 38.966385, 18.762543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.503860, 38.742374, 18.679108>,  <24.539528, 38.369022, 18.540051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.503860, 38.742374, 18.679108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388629, 0.353972, -0.850689,
		-0.917070, 0.059248, -0.394301,
		-0.089170, 0.933377, 0.347643,
		24.477110, 39.022388, 18.783400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.294567, 38.654202, 17.978104>,  <24.539528, 38.369022, 18.540051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.294567, 38.654202, 17.978104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457859, 38.954723, 18.185524>,  <24.555834, 39.135036, 18.309977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.457859, 38.954723, 18.185524>,  <24.294567, 38.654202, 17.978104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.457859, 38.954723, 18.185524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323056, 0.412382, -0.851808,
		-0.853805, 0.515254, -0.074366,
		0.408230, 0.751302, 0.518549,
		24.580328, 39.180115, 18.341089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.025805, 39.274216, 17.613712>,  <24.294567, 38.654202, 17.978104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.025805, 39.274216, 17.613712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335577, 39.433319, 17.810505>,  <24.521441, 39.528782, 17.928579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335577, 39.433319, 17.810505>,  <24.025805, 39.274216, 17.613712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.335577, 39.433319, 17.810505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169398, 0.618877, -0.767004,
		-0.609557, 0.677333, 0.411899,
		0.774432, 0.397758, 0.491980,
		24.567907, 39.552647, 17.958099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.027811, 40.055233, 17.546747>,  <24.025805, 39.274216, 17.613712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.027811, 40.055233, 17.546747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402916, 39.944386, 17.630466>,  <24.627979, 39.877876, 17.680698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.402916, 39.944386, 17.630466>,  <24.027811, 40.055233, 17.546747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.402916, 39.944386, 17.630466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337885, 0.588854, -0.734224,
		0.080220, 0.759247, 0.645840,
		0.937762, -0.277119, 0.209300,
		24.684244, 39.861248, 17.693256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.346746, 40.552959, 17.260300>,  <24.027811, 40.055233, 17.546747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.346746, 40.552959, 17.260300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.655567, 40.312981, 17.344200>,  <24.840860, 40.168991, 17.394541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.655567, 40.312981, 17.344200>,  <24.346746, 40.552959, 17.260300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.655567, 40.312981, 17.344200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524806, 0.415643, -0.742846,
		0.358489, 0.683594, 0.635755,
		0.772052, -0.599950, 0.209751,
		24.887182, 40.132996, 17.407125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039549, 40.992096, 17.258875>,  <24.346746, 40.552959, 17.260300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039549, 40.992096, 17.258875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141760, 40.611233, 17.191814>,  <25.203087, 40.382717, 17.151579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141760, 40.611233, 17.191814>,  <25.039549, 40.992096, 17.258875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141760, 40.611233, 17.191814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454644, 0.271379, -0.848323,
		0.853232, 0.140548, 0.502236,
		0.255526, -0.952155, -0.167650,
		25.218418, 40.325584, 17.141520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.743612, 41.045956, 17.032543>,  <25.039549, 40.992096, 17.258875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.743612, 41.045956, 17.032543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586491, 40.701481, 16.903511>,  <25.492218, 40.494797, 16.826092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586491, 40.701481, 16.903511>,  <25.743612, 41.045956, 17.032543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586491, 40.701481, 16.903511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525793, 0.077473, -0.847077,
		0.754485, -0.502346, 0.422376,
		-0.392803, -0.861189, -0.322582,
		25.468649, 40.443123, 16.806736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317802, 40.572739, 16.849714>,  <25.743612, 41.045956, 17.032543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317802, 40.572739, 16.849714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005283, 40.446075, 16.634567>,  <25.817772, 40.370079, 16.505478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.005283, 40.446075, 16.634567>,  <26.317802, 40.572739, 16.849714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.005283, 40.446075, 16.634567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548146, 0.064040, -0.833927,
		0.298514, -0.946376, 0.123540,
		-0.781297, -0.316657, -0.537869,
		25.770893, 40.351078, 16.473207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.647045, 40.432735, 16.243242>,  <26.317802, 40.572739, 16.849714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.647045, 40.432735, 16.243242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270027, 40.349567, 16.138645>,  <26.043816, 40.299667, 16.075888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270027, 40.349567, 16.138645>,  <26.647045, 40.432735, 16.243242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270027, 40.349567, 16.138645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276637, -0.046926, -0.959828,
		0.187299, -0.977019, 0.101749,
		-0.942545, -0.207922, -0.261491,
		25.987263, 40.287189, 16.060198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619474, 39.674614, 15.961486>,  <26.647045, 40.432735, 16.243242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619474, 39.674614, 15.961486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355961, 39.929905, 15.802154>,  <26.197853, 40.083080, 15.706554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.355961, 39.929905, 15.802154>,  <26.619474, 39.674614, 15.961486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.355961, 39.929905, 15.802154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454018, -0.084914, -0.886937,
		-0.599892, -0.765150, -0.233826,
		-0.658785, 0.638228, -0.398331,
		26.158325, 40.121372, 15.682654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478928, 39.448914, 15.306263>,  <26.619474, 39.674614, 15.961486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478928, 39.448914, 15.306263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405283, 39.842068, 15.308755>,  <26.361097, 40.077961, 15.310250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405283, 39.842068, 15.308755>,  <26.478928, 39.448914, 15.306263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405283, 39.842068, 15.308755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560028, 0.110106, -0.821125,
		-0.807758, -0.147689, -0.570715,
		-0.184110, 0.982886, 0.006229,
		26.350050, 40.136932, 15.310624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184320, 39.744373, 14.702214>,  <26.478928, 39.448914, 15.306263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184320, 39.744373, 14.702214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409107, 40.018505, 14.887479>,  <26.543980, 40.182983, 14.998637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409107, 40.018505, 14.887479>,  <26.184320, 39.744373, 14.702214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409107, 40.018505, 14.887479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515765, 0.147436, -0.843949,
		-0.646669, 0.713152, -0.270614,
		0.561966, 0.685329, 0.463161,
		26.577698, 40.224102, 15.026427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.733315, 40.119663, 14.212788>,  <26.184320, 39.744373, 14.702214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.733315, 40.119663, 14.212788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739376, 40.096420, 13.813510>,  <25.743013, 40.082474, 13.573943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739376, 40.096420, 13.813510>,  <25.733315, 40.119663, 14.212788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739376, 40.096420, 13.813510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741564, -0.670308, 0.027764,
		-0.670711, 0.739805, -0.053247,
		0.015152, -0.058108, -0.998195,
		25.743921, 40.078987, 13.514051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126110, 40.366451, 13.855257>,  <25.733315, 40.119663, 14.212788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126110, 40.366451, 13.855257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284990, 40.053383, 13.663568>,  <25.380320, 39.865543, 13.548553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284990, 40.053383, 13.663568>,  <25.126110, 40.366451, 13.855257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284990, 40.053383, 13.663568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770031, -0.568317, 0.289943,
		-0.499281, 0.253851, -0.828419,
		0.397202, -0.782672, -0.479223,
		25.404150, 39.818581, 13.519800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.653904, 40.081085, 13.310513>,  <25.126110, 40.366451, 13.855257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.653904, 40.081085, 13.310513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898451, 39.810867, 13.475377>,  <25.045179, 39.648739, 13.574296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898451, 39.810867, 13.475377>,  <24.653904, 40.081085, 13.310513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898451, 39.810867, 13.475377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775505, -0.407753, 0.482005,
		-0.157553, -0.614315, -0.773171,
		0.611366, -0.675540, 0.412162,
		25.081861, 39.608204, 13.599026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.756048, 39.445301, 12.878709>,  <24.653904, 40.081085, 13.310513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.756048, 39.445301, 12.878709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.761143, 39.471115, 13.277843>,  <24.764198, 39.486603, 13.517323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.761143, 39.471115, 13.277843>,  <24.756048, 39.445301, 12.878709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.761143, 39.471115, 13.277843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937650, -0.345881, 0.034337,
		0.347347, -0.936056, 0.056108,
		0.012734, 0.064537, 0.997834,
		24.764963, 39.490475, 13.577192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.254820, 38.950600, 13.188269>,  <24.756048, 39.445301, 12.878709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.254820, 38.950600, 13.188269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.441082, 38.664112, 13.396188>,  <24.552839, 38.492218, 13.520940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.441082, 38.664112, 13.396188>,  <24.254820, 38.950600, 13.188269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.441082, 38.664112, 13.396188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826772, -0.142604, 0.544162,
		-0.315615, -0.683147, -0.658557,
		0.465655, -0.716222, 0.519799,
		24.580778, 38.449245, 13.552128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.765295, 38.798103, 13.537155>,  <24.254820, 38.950600, 13.188269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.765295, 38.798103, 13.537155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.017025, 38.538532, 13.708196>,  <24.168062, 38.382790, 13.810821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.017025, 38.538532, 13.708196>,  <23.765295, 38.798103, 13.537155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.017025, 38.538532, 13.708196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768133, -0.435871, 0.469029,
		-0.117985, -0.623628, -0.772767,
		0.629326, -0.648926, 0.427603,
		24.205822, 38.343853, 13.836476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.725018, 38.079620, 13.360080>,  <23.765295, 38.798103, 13.537155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.725018, 38.079620, 13.360080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.856733, 38.143036, 13.732409>,  <23.935762, 38.181084, 13.955808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.856733, 38.143036, 13.732409>,  <23.725018, 38.079620, 13.360080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.856733, 38.143036, 13.732409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903639, -0.233017, 0.359361,
		0.273870, -0.959463, 0.066529,
		0.329291, 0.158536, 0.930824,
		23.955521, 38.190598, 14.011657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.479034, 37.563026, 13.737418>,  <23.725018, 38.079620, 13.360080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.479034, 37.563026, 13.737418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.533052, 37.875149, 13.981673>,  <23.565464, 38.062424, 14.128226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.533052, 37.875149, 13.981673>,  <23.479034, 37.563026, 13.737418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.533052, 37.875149, 13.981673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896836, -0.165744, 0.410139,
		0.421245, -0.603030, 0.677427,
		0.135047, 0.780310, 0.610638,
		23.573566, 38.109241, 14.164865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.373995, 37.333344, 14.318381>,  <23.479034, 37.563026, 13.737418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.373995, 37.333344, 14.318381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.287807, 37.723763, 14.330405>,  <23.236095, 37.958015, 14.337620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.287807, 37.723763, 14.330405>,  <23.373995, 37.333344, 14.318381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.287807, 37.723763, 14.330405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804797, -0.194929, 0.560629,
		0.553060, 0.096604, 0.827522,
		-0.215467, 0.976048, 0.030061,
		23.223167, 38.016579, 14.339423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.272467, 37.452587, 14.992328>,  <23.373995, 37.333344, 14.318381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.272467, 37.452587, 14.992328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.101313, 37.767838, 14.815343>,  <22.998621, 37.956989, 14.709152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.101313, 37.767838, 14.815343>,  <23.272467, 37.452587, 14.992328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.101313, 37.767838, 14.815343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701677, 0.018913, 0.712244,
		0.569706, 0.615224, 0.544917,
		-0.427884, 0.788126, -0.442463,
		22.972948, 38.004276, 14.682604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.343605, 37.988525, 15.426142>,  <23.272467, 37.452587, 14.992328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.343605, 37.988525, 15.426142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.029787, 38.062023, 15.189252>,  <22.841497, 38.106121, 15.047118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.029787, 38.062023, 15.189252>,  <23.343605, 37.988525, 15.426142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.029787, 38.062023, 15.189252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554074, 0.221039, 0.802586,
		0.278378, 0.957799, -0.071605,
		-0.784543, 0.183748, -0.592224,
		22.794424, 38.117149, 15.011584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.050516, 38.589523, 15.697874>,  <23.343605, 37.988525, 15.426142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.050516, 38.589523, 15.697874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.743425, 38.432831, 15.495036>,  <22.559172, 38.338814, 15.373334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.743425, 38.432831, 15.495036>,  <23.050516, 38.589523, 15.697874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.743425, 38.432831, 15.495036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554112, 0.008427, 0.832399,
		-0.321804, 0.920041, -0.223532,
		-0.767725, -0.391731, -0.507094,
		22.513107, 38.315311, 15.342908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.537640, 39.003769, 15.849976>,  <23.050516, 38.589523, 15.697874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.537640, 39.003769, 15.849976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.350109, 38.678635, 15.711698>,  <22.237591, 38.483555, 15.628731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.350109, 38.678635, 15.711698>,  <22.537640, 39.003769, 15.849976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.350109, 38.678635, 15.711698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623202, 0.027040, 0.781594,
		-0.625957, 0.581870, -0.519235,
		-0.468826, -0.812832, -0.345696,
		22.209461, 38.434784, 15.607988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.802401, 39.172455, 15.907411>,  <22.537640, 39.003769, 15.849976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.802401, 39.172455, 15.907411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.822128, 38.776096, 15.857297>,  <21.833965, 38.538280, 15.827229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.822128, 38.776096, 15.857297>,  <21.802401, 39.172455, 15.907411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.822128, 38.776096, 15.857297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705965, -0.123316, 0.697429,
		-0.706528, 0.054051, -0.705618,
		0.049317, -0.990894, -0.125285,
		21.836924, 38.478828, 15.819712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.154743, 39.017811, 15.988642>,  <21.802401, 39.172455, 15.907411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.154743, 39.017811, 15.988642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.359434, 38.678005, 16.039963>,  <21.482248, 38.474121, 16.070755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.359434, 38.678005, 16.039963>,  <21.154743, 39.017811, 15.988642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.359434, 38.678005, 16.039963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419303, -0.116603, 0.900327,
		-0.749879, -0.514521, -0.415873,
		0.511729, -0.849513, 0.128302,
		21.512953, 38.423153, 16.078453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.737171, 38.515850, 16.163269>,  <21.154743, 39.017811, 15.988642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.737171, 38.515850, 16.163269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.063833, 38.334148, 16.305664>,  <21.259830, 38.225128, 16.391102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.063833, 38.334148, 16.305664>,  <20.737171, 38.515850, 16.163269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.063833, 38.334148, 16.305664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479719, -0.191371, 0.856299,
		-0.320855, -0.870073, -0.374200,
		0.816653, -0.454258, 0.355987,
		21.308828, 38.197872, 16.412460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.441673, 38.025822, 16.484428>,  <20.737171, 38.515850, 16.163269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.441673, 38.025822, 16.484428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812325, 38.018604, 16.634647>,  <21.034716, 38.014275, 16.724779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.812325, 38.018604, 16.634647>,  <20.441673, 38.025822, 16.484428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.812325, 38.018604, 16.634647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352879, -0.386454, 0.852132,
		0.129758, -0.922132, -0.364466,
		0.926628, -0.018041, 0.375547,
		21.090313, 38.013191, 16.747311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.365763, 37.480988, 16.999989>,  <20.441673, 38.025822, 16.484428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.365763, 37.480988, 16.999989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.711174, 37.670712, 17.068516>,  <20.918421, 37.784546, 17.109632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.711174, 37.670712, 17.068516>,  <20.365763, 37.480988, 16.999989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.711174, 37.670712, 17.068516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009765, -0.323923, 0.946033,
		0.504210, -0.818597, -0.275084,
		0.863526, 0.474313, 0.171319,
		20.970232, 37.813004, 17.119911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.746868, 36.991432, 17.326817>,  <20.365763, 37.480988, 16.999989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.746868, 36.991432, 17.326817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.831480, 37.364487, 17.443737>,  <20.882246, 37.588322, 17.513889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.831480, 37.364487, 17.443737>,  <20.746868, 36.991432, 17.326817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.831480, 37.364487, 17.443737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033814, -0.291905, 0.955849,
		0.976787, -0.212073, -0.030210,
		0.211528, 0.932640, 0.292300,
		20.894939, 37.644279, 17.531427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.175106, 36.882961, 18.009203>,  <20.746868, 36.991432, 17.326817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.175106, 36.882961, 18.009203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.034582, 37.257225, 17.995796>,  <20.950268, 37.481785, 17.987753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.034582, 37.257225, 17.995796>,  <21.175106, 36.882961, 18.009203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034582, 37.257225, 17.995796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206199, -0.042404, 0.977591,
		0.913271, 0.350347, 0.207829,
		-0.351309, 0.935660, -0.033515,
		20.929190, 37.537922, 17.985743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.486629, 37.087547, 18.616209>,  <21.175106, 36.882961, 18.009203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.486629, 37.087547, 18.616209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.217888, 37.365643, 18.514023>,  <21.056643, 37.532497, 18.452711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.217888, 37.365643, 18.514023>,  <21.486629, 37.087547, 18.616209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.217888, 37.365643, 18.514023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123998, 0.234462, 0.964185,
		0.730231, 0.679468, -0.071316,
		-0.671853, 0.695234, -0.255465,
		21.016333, 37.574211, 18.437384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.542137, 37.485031, 19.147741>,  <21.486629, 37.087547, 18.616209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.542137, 37.485031, 19.147741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180922, 37.578903, 19.003826>,  <20.964191, 37.635227, 18.917477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180922, 37.578903, 19.003826>,  <21.542137, 37.485031, 19.147741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.180922, 37.578903, 19.003826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355922, 0.060153, 0.932578,
		0.240498, 0.970210, 0.029206,
		-0.903039, 0.234679, -0.359786,
		20.910009, 37.649307, 18.895891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.451422, 38.117619, 19.496132>,  <21.542137, 37.485031, 19.147741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.451422, 38.117619, 19.496132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105436, 37.984417, 19.345959>,  <20.897844, 37.904495, 19.255856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105436, 37.984417, 19.345959>,  <21.451422, 38.117619, 19.496132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105436, 37.984417, 19.345959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395193, -0.009093, 0.918553,
		-0.309292, 0.942883, -0.123734,
		-0.864963, -0.333000, -0.375433,
		20.845947, 37.884518, 19.233330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.875446, 38.580055, 19.768364>,  <21.451422, 38.117619, 19.496132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.875446, 38.580055, 19.768364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.703880, 38.231441, 19.673321>,  <20.600941, 38.022274, 19.616295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.703880, 38.231441, 19.673321>,  <20.875446, 38.580055, 19.768364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.703880, 38.231441, 19.673321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384082, -0.062130, 0.921206,
		-0.817626, 0.486382, -0.308093,
		-0.428916, -0.871535, -0.237610,
		20.575205, 37.969982, 19.602037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.216463, 38.622860, 20.254377>,  <20.875446, 38.580055, 19.768364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.216463, 38.622860, 20.254377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.266193, 38.246624, 20.127995>,  <20.296032, 38.020882, 20.052166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.266193, 38.246624, 20.127995>,  <20.216463, 38.622860, 20.254377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.266193, 38.246624, 20.127995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239557, -0.337460, 0.910348,
		-0.962889, -0.037492, -0.267281,
		0.124327, -0.940593, -0.315955,
		20.303492, 37.964447, 20.033209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.574644, 38.335205, 20.298676>,  <20.216463, 38.622860, 20.254377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.574644, 38.335205, 20.298676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867327, 38.064594, 20.331924>,  <20.042936, 37.902225, 20.351873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.867327, 38.064594, 20.331924>,  <19.574644, 38.335205, 20.298676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.867327, 38.064594, 20.331924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298840, -0.208801, 0.931180,
		-0.612617, -0.706192, -0.354956,
		0.731708, -0.676532, 0.083123,
		20.086840, 37.861633, 20.356861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.239439, 37.868298, 20.601414>,  <19.574644, 38.335205, 20.298676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.239439, 37.868298, 20.601414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.624456, 37.776314, 20.658867>,  <19.855467, 37.721123, 20.693338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.624456, 37.776314, 20.658867>,  <19.239439, 37.868298, 20.601414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.624456, 37.776314, 20.658867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209580, -0.294966, 0.932240,
		-0.172006, -0.927424, -0.332112,
		0.962544, -0.229954, 0.143633,
		19.913219, 37.707325, 20.701956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.234100, 37.193703, 20.754395>,  <19.239439, 37.868298, 20.601414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.234100, 37.193703, 20.754395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.589041, 37.333660, 20.874519>,  <19.802006, 37.417633, 20.946594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.589041, 37.333660, 20.874519>,  <19.234100, 37.193703, 20.754395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.589041, 37.333660, 20.874519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171347, -0.354438, 0.919246,
		0.428077, -0.867151, -0.254558,
		0.887350, 0.349890, 0.300310,
		19.855246, 37.438625, 20.964613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.503126, 36.677349, 21.010061>,  <19.234100, 37.193703, 20.754395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.503126, 36.677349, 21.010061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.676712, 36.992271, 21.185249>,  <19.780865, 37.181225, 21.290361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.676712, 36.992271, 21.185249>,  <19.503126, 36.677349, 21.010061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.676712, 36.992271, 21.185249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276825, -0.346085, 0.896433,
		0.857345, -0.510263, 0.067758,
		0.433967, 0.787310, 0.437968,
		19.806902, 37.228466, 21.316639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.982805, 36.488331, 21.525246>,  <19.503126, 36.677349, 21.010061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.982805, 36.488331, 21.525246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.758659, 36.815899, 21.574837>,  <19.624172, 37.012440, 21.604591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.758659, 36.815899, 21.574837>,  <19.982805, 36.488331, 21.525246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.758659, 36.815899, 21.574837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259493, -0.315738, 0.912674,
		0.786547, 0.479257, 0.389430,
		-0.560363, 0.818916, 0.123979,
		19.590551, 37.061573, 21.612030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.984684, 36.562252, 22.241440>,  <19.982805, 36.488331, 21.525246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.984684, 36.562252, 22.241440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.694225, 36.807079, 22.116165>,  <19.519951, 36.953976, 22.041000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.694225, 36.807079, 22.116165>,  <19.984684, 36.562252, 22.241440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.694225, 36.807079, 22.116165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556729, -0.256153, 0.790214,
		0.403443, 0.748169, 0.526761,
		-0.726145, 0.612070, -0.313184,
		19.476381, 36.990700, 22.022209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.735485, 37.019974, 22.848764>,  <19.984684, 36.562252, 22.241440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.735485, 37.019974, 22.848764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.449619, 36.964504, 22.574532>,  <19.278099, 36.931221, 22.409992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.449619, 36.964504, 22.574532>,  <19.735485, 37.019974, 22.848764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.449619, 36.964504, 22.574532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698300, 0.084839, 0.710760,
		-0.040399, 0.986697, -0.157467,
		-0.714664, -0.138673, -0.685584,
		19.235220, 36.922901, 22.368856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.197878, 37.538166, 22.909864>,  <19.735485, 37.019974, 22.848764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.197878, 37.538166, 22.909864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.020987, 37.226883, 22.731506>,  <18.914852, 37.040112, 22.624491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.020987, 37.226883, 22.731506>,  <19.197878, 37.538166, 22.909864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.020987, 37.226883, 22.731506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766491, 0.069749, 0.638457,
		-0.465753, 0.624119, -0.627335,
		-0.442229, -0.778210, -0.445896,
		18.888317, 36.993420, 22.597738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.502422, 37.781418, 22.624580>,  <19.197878, 37.538166, 22.909864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.502422, 37.781418, 22.624580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.496021, 37.382950, 22.658966>,  <18.492180, 37.143867, 22.679598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.496021, 37.382950, 22.658966>,  <18.502422, 37.781418, 22.624580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.496021, 37.382950, 22.658966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814252, 0.062879, 0.577096,
		-0.580291, -0.060760, -0.812139,
		-0.016002, -0.996170, 0.085962,
		18.491220, 37.084099, 22.684755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.030861, 26.465191, 19.365623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.383413, 26.493221, 19.552494>,  <31.594946, 26.510040, 19.664616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.383413, 26.493221, 19.552494>,  <31.030861, 26.465191, 19.365623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383413, 26.493221, 19.552494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020058, 0.993596, -0.111199,
		-0.471977, 0.088638, 0.877144,
		0.881383, 0.070077, 0.467177,
		31.647827, 26.514244, 19.692648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984663, 26.921677, 19.919086>,  <31.030861, 26.465191, 19.365623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984663, 26.921677, 19.919086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.376360, 26.917919, 19.838097>,  <31.611378, 26.915665, 19.789503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.376360, 26.917919, 19.838097>,  <30.984663, 26.921677, 19.919086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376360, 26.917919, 19.838097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006119, 0.999840, -0.016805,
		0.202601, 0.015217, 0.979143,
		0.979242, -0.009396, -0.202476,
		31.670132, 26.915100, 19.777353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.210173, 27.496344, 20.299410>,  <30.984663, 26.921677, 19.919086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.210173, 27.496344, 20.299410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.505344, 27.423943, 20.039349>,  <31.682447, 27.380503, 19.883312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.505344, 27.423943, 20.039349>,  <31.210173, 27.496344, 20.299410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505344, 27.423943, 20.039349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208379, 0.977400, -0.035597,
		0.641901, -0.109210, 0.758970,
		0.737930, -0.181003, -0.650152,
		31.726723, 27.369642, 19.844303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882170, 27.780376, 20.541376>,  <31.210173, 27.496344, 20.299410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882170, 27.780376, 20.541376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.923094, 27.758499, 20.144077>,  <31.947649, 27.745373, 19.905699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.923094, 27.758499, 20.144077>,  <31.882170, 27.780376, 20.541376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923094, 27.758499, 20.144077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172064, 0.984410, -0.036481,
		0.979758, -0.167170, 0.110127,
		0.102312, -0.054692, -0.993248,
		31.953787, 27.742092, 19.846104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568676, 28.102528, 20.365993>,  <31.882170, 27.780376, 20.541376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568676, 28.102528, 20.365993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.348610, 28.127998, 20.032944>,  <32.216572, 28.143280, 19.833115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.348610, 28.127998, 20.032944>,  <32.568676, 28.102528, 20.365993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348610, 28.127998, 20.032944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103037, 0.994646, 0.007984,
		0.828674, -0.081399, -0.553781,
		-0.550166, 0.063676, -0.832624,
		32.183559, 28.147100, 19.783157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915482, 28.510139, 20.068386>,  <32.568676, 28.102528, 20.365993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915482, 28.510139, 20.068386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.554993, 28.551003, 19.899929>,  <32.338699, 28.575520, 19.798855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.554993, 28.551003, 19.899929>,  <32.915482, 28.510139, 20.068386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554993, 28.551003, 19.899929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091660, 0.994766, 0.045154,
		0.423553, 0.002092, -0.905869,
		-0.901222, 0.102157, -0.421144,
		32.284626, 28.581650, 19.773586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040806, 29.067968, 19.648430>,  <32.915482, 28.510139, 20.068386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040806, 29.067968, 19.648430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.640987, 29.059830, 19.657318>,  <32.401096, 29.054947, 19.662651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.640987, 29.059830, 19.657318>,  <33.040806, 29.067968, 19.648430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.640987, 29.059830, 19.657318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020714, 0.999649, -0.016515,
		-0.021877, -0.016968, -0.999617,
		-0.999546, -0.020344, 0.022221,
		32.341125, 29.053726, 19.663984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750454, 29.647522, 19.255859>,  <33.040806, 29.067968, 19.648430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750454, 29.647522, 19.255859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.450569, 29.533386, 19.494698>,  <32.270638, 29.464905, 19.638000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.450569, 29.533386, 19.494698>,  <32.750454, 29.647522, 19.255859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450569, 29.533386, 19.494698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229219, 0.958382, 0.170182,
		-0.620804, -0.009278, -0.783911,
		-0.749708, -0.285337, 0.597094,
		32.225658, 29.447784, 19.673826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390419, 30.235266, 19.258894>,  <32.750454, 29.647522, 19.255859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390419, 30.235266, 19.258894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.233650, 30.063404, 19.584297>,  <32.139591, 29.960287, 19.779539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.233650, 30.063404, 19.584297>,  <32.390419, 30.235266, 19.258894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233650, 30.063404, 19.584297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504016, 0.840018, 0.200840,
		-0.769655, -0.331309, -0.545771,
		-0.391917, -0.429655, 0.813509,
		32.116074, 29.934507, 19.828350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737671, 30.406342, 19.240040>,  <32.390419, 30.235266, 19.258894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737671, 30.406342, 19.240040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.818445, 30.333828, 19.625031>,  <31.866909, 30.290319, 19.856024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.818445, 30.333828, 19.625031>,  <31.737671, 30.406342, 19.240040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818445, 30.333828, 19.625031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489586, 0.832442, 0.259512,
		-0.848250, -0.523619, 0.079346,
		0.201936, -0.181284, 0.962475,
		31.879026, 30.279442, 19.913773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075819, 30.429543, 19.567003>,  <31.737671, 30.406342, 19.240040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075819, 30.429543, 19.567003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.335657, 30.489189, 19.865208>,  <31.491560, 30.524977, 20.044130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.335657, 30.489189, 19.865208>,  <31.075819, 30.429543, 19.567003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335657, 30.489189, 19.865208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557050, 0.760693, 0.333229,
		-0.517416, -0.631752, 0.577209,
		0.649597, 0.149117, 0.745512,
		31.530537, 30.533924, 20.088861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751989, 30.443773, 20.243395>,  <31.075819, 30.429543, 19.567003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751989, 30.443773, 20.243395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.093975, 30.645905, 20.290176>,  <31.299168, 30.767183, 20.318245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.093975, 30.645905, 20.290176>,  <30.751989, 30.443773, 20.243395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093975, 30.645905, 20.290176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511183, 0.782697, 0.355074,
		0.087889, -0.363360, 0.927494,
		0.854966, 0.505326, 0.116953,
		31.350466, 30.797503, 20.325262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625389, 30.902918, 20.635469>,  <30.751989, 30.443773, 20.243395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625389, 30.902918, 20.635469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.968042, 31.092918, 20.554920>,  <31.173634, 31.206919, 20.506590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.968042, 31.092918, 20.554920>,  <30.625389, 30.902918, 20.635469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968042, 31.092918, 20.554920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408838, 0.863058, 0.296620,
		0.314692, -0.171765, 0.933523,
		0.856633, 0.475003, -0.201373,
		31.225033, 31.235420, 20.494509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671751, 31.433386, 21.036285>,  <30.625389, 30.902918, 20.635469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671751, 31.433386, 21.036285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.991751, 31.579571, 20.845943>,  <31.183750, 31.667282, 20.731739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.991751, 31.579571, 20.845943>,  <30.671751, 31.433386, 21.036285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991751, 31.579571, 20.845943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316906, 0.930811, 0.182100,
		0.509482, 0.005121, 0.860466,
		0.799999, 0.365464, -0.475854,
		31.231750, 31.689209, 20.703188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011728, 31.877798, 21.450001>,  <30.671751, 31.433386, 21.036285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011728, 31.877798, 21.450001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.112408, 32.009506, 21.085972>,  <31.172815, 32.088531, 20.867556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.112408, 32.009506, 21.085972>,  <31.011728, 31.877798, 21.450001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112408, 32.009506, 21.085972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295525, 0.921582, 0.251699,
		0.921582, 0.205596, 0.329269,
		-0.251699, -0.329269, 0.910071,
		31.187918, 32.108288, 20.812950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257380, 32.531216, 21.581835>,  <31.011728, 31.877798, 21.450001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257380, 32.531216, 21.581835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.148499, 32.522335, 21.197041>,  <31.083170, 32.517006, 20.966164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.148499, 32.522335, 21.197041>,  <31.257380, 32.531216, 21.581835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148499, 32.522335, 21.197041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375589, 0.922882, 0.084981,
		0.885911, 0.384442, -0.259550,
		-0.272204, -0.022198, -0.961983,
		31.066837, 32.515675, 20.908445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280327, 33.233784, 21.330889>,  <31.257380, 32.531216, 21.581835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280327, 33.233784, 21.330889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.027109, 33.051365, 21.080681>,  <30.875179, 32.941914, 20.930557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.027109, 33.051365, 21.080681>,  <31.280327, 33.233784, 21.330889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027109, 33.051365, 21.080681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541010, 0.838587, -0.063874,
		0.553681, 0.297977, -0.777591,
		-0.633045, -0.456050, -0.625518,
		30.837196, 32.914551, 20.893024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124369, 33.705276, 20.876570>,  <31.280327, 33.233784, 21.330889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124369, 33.705276, 20.876570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.822777, 33.445740, 20.835541>,  <30.641821, 33.290020, 20.810923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.822777, 33.445740, 20.835541>,  <31.124369, 33.705276, 20.876570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822777, 33.445740, 20.835541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617136, 0.753156, -0.227812,
		0.225067, -0.108464, -0.968287,
		-0.753981, -0.648838, -0.102573,
		30.596582, 33.251087, 20.804770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808933, 33.948467, 20.303385>,  <31.124369, 33.705276, 20.876570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808933, 33.948467, 20.303385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.555353, 33.726627, 20.518986>,  <30.403206, 33.593521, 20.648346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.555353, 33.726627, 20.518986>,  <30.808933, 33.948467, 20.303385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555353, 33.726627, 20.518986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598722, 0.793105, 0.111874,
		-0.489531, -0.251791, -0.834842,
		-0.633949, -0.554604, 0.539003,
		30.365170, 33.560246, 20.680687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152975, 34.195671, 20.136095>,  <30.808933, 33.948467, 20.303385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152975, 34.195671, 20.136095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.070702, 33.963631, 20.451355>,  <30.021338, 33.824406, 20.640511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.070702, 33.963631, 20.451355>,  <30.152975, 34.195671, 20.136095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070702, 33.963631, 20.451355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843687, 0.513197, 0.157548,
		-0.495870, -0.632548, -0.594976,
		-0.205683, -0.580097, 0.788151,
		30.008997, 33.789600, 20.687799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415508, 34.121941, 20.102100>,  <30.152975, 34.195671, 20.136095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415508, 34.121941, 20.102100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.524750, 34.068142, 20.483116>,  <29.590294, 34.035862, 20.711725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.524750, 34.068142, 20.483116>,  <29.415508, 34.121941, 20.102100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524750, 34.068142, 20.483116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716955, 0.631740, 0.294756,
		-0.641398, -0.763424, 0.076104,
		0.273101, -0.134493, 0.952538,
		29.606680, 34.027794, 20.768877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746315, 34.073078, 20.535061>,  <29.415508, 34.121941, 20.102100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746315, 34.073078, 20.535061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.054930, 34.177597, 20.767078>,  <29.240099, 34.240311, 20.906288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.054930, 34.177597, 20.767078>,  <28.746315, 34.073078, 20.535061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054930, 34.177597, 20.767078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462475, 0.856459, 0.229336,
		-0.436858, -0.445198, 0.781636,
		0.771539, 0.261300, 0.580044,
		29.286392, 34.255985, 20.941092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434811, 34.605145, 20.997126>,  <28.746315, 34.073078, 20.535061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434811, 34.605145, 20.997126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.831768, 34.615189, 21.045338>,  <29.069942, 34.621216, 21.074265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.831768, 34.615189, 21.045338>,  <28.434811, 34.605145, 20.997126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831768, 34.615189, 21.045338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062957, 0.944814, 0.321500,
		-0.105804, -0.326642, 0.939207,
		0.992392, 0.025113, 0.120530,
		29.129486, 34.622723, 21.081497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391848, 33.938915, 21.319485>,  <28.434811, 34.605145, 20.997126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391848, 33.938915, 21.319485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.118132, 33.963142, 21.028809>,  <27.953901, 33.977676, 20.854403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.118132, 33.963142, 21.028809>,  <28.391848, 33.938915, 21.319485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118132, 33.963142, 21.028809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069550, -0.997423, -0.017635,
		-0.725885, 0.038474, 0.686739,
		-0.684291, 0.060563, -0.726690,
		27.912844, 33.981312, 20.810802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864519, 33.433617, 21.533928>,  <28.391848, 33.938915, 21.319485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864519, 33.433617, 21.533928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.794334, 33.511929, 21.147999>,  <27.752224, 33.558914, 20.916441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.794334, 33.511929, 21.147999>,  <27.864519, 33.433617, 21.533928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794334, 33.511929, 21.147999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105915, -0.978093, -0.179207,
		-0.978775, 0.070749, 0.192339,
		-0.175447, 0.195775, -0.964827,
		27.741695, 33.570660, 20.858551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281898, 33.126022, 21.273357>,  <27.864519, 33.433617, 21.533928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281898, 33.126022, 21.273357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.470823, 33.171955, 20.923790>,  <27.584179, 33.199516, 20.714050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.470823, 33.171955, 20.923790>,  <27.281898, 33.126022, 21.273357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470823, 33.171955, 20.923790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333258, -0.894614, -0.297665,
		-0.816003, 0.431831, -0.384267,
		0.472311, 0.114836, -0.873919,
		27.612516, 33.206406, 20.661613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003447, 32.681015, 20.896973>,  <27.281898, 33.126022, 21.273357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003447, 32.681015, 20.896973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.301441, 32.759602, 20.641975>,  <27.480238, 32.806751, 20.488977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.301441, 32.759602, 20.641975>,  <27.003447, 32.681015, 20.896973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301441, 32.759602, 20.641975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086401, -0.919180, -0.384245,
		-0.661461, 0.341336, -0.667801,
		0.744986, 0.196465, -0.637494,
		27.524937, 32.818542, 20.450727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773575, 32.456261, 20.235876>,  <27.003447, 32.681015, 20.896973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773575, 32.456261, 20.235876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.173426, 32.465115, 20.229488>,  <27.413336, 32.470428, 20.225657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.173426, 32.465115, 20.229488>,  <26.773575, 32.456261, 20.235876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173426, 32.465115, 20.229488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015884, -0.947541, -0.319241,
		-0.022198, 0.318868, -0.947539,
		0.999627, 0.022138, -0.015968,
		27.473314, 32.471756, 20.224697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.937086, 32.216347, 19.566725>,  <26.773575, 32.456261, 20.235876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.937086, 32.216347, 19.566725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.272015, 32.187080, 19.783443>,  <27.472971, 32.169521, 19.913475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.272015, 32.187080, 19.783443>,  <26.937086, 32.216347, 19.566725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272015, 32.187080, 19.783443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133409, -0.933701, -0.332270,
		0.530187, 0.350497, -0.772045,
		0.837319, -0.073168, 0.541795,
		27.523211, 32.165131, 19.945982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500202, 32.063156, 19.075520>,  <26.937086, 32.216347, 19.566725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500202, 32.063156, 19.075520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.575541, 31.931004, 19.445465>,  <27.620743, 31.851713, 19.667433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.575541, 31.931004, 19.445465>,  <27.500202, 32.063156, 19.075520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575541, 31.931004, 19.445465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182872, -0.913452, -0.363543,
		0.964927, 0.237603, -0.111626,
		0.188344, -0.330379, 0.924866,
		27.632044, 31.831890, 19.722925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218679, 31.814045, 19.020092>,  <27.500202, 32.063156, 19.075520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218679, 31.814045, 19.020092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.074570, 31.640125, 19.350220>,  <27.988104, 31.535774, 19.548296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.074570, 31.640125, 19.350220>,  <28.218679, 31.814045, 19.020092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074570, 31.640125, 19.350220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368858, -0.879029, -0.302079,
		0.856824, 0.195594, 0.477070,
		-0.360274, -0.434800, 0.825319,
		27.966488, 31.509686, 19.597816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714159, 31.347420, 19.214548>,  <28.218679, 31.814045, 19.020092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714159, 31.347420, 19.214548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.395433, 31.213581, 19.415798>,  <28.204199, 31.133278, 19.536549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.395433, 31.213581, 19.415798>,  <28.714159, 31.347420, 19.214548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395433, 31.213581, 19.415798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337964, -0.937043, -0.087922,
		0.500869, 0.099981, 0.859729,
		-0.796812, -0.334595, 0.503126,
		28.156389, 31.113203, 19.566736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996603, 30.830048, 19.658621>,  <28.714159, 31.347420, 19.214548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996603, 30.830048, 19.658621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.605928, 30.744209, 19.660763>,  <28.371523, 30.692707, 19.662048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.605928, 30.744209, 19.660763>,  <28.996603, 30.830048, 19.658621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605928, 30.744209, 19.660763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211862, -0.967667, -0.136877,
		0.034553, -0.132552, 0.990574,
		-0.976688, -0.214595, 0.005353,
		28.312922, 30.679831, 19.662369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927620, 30.225885, 19.981926>,  <28.996603, 30.830048, 19.658621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927620, 30.225885, 19.981926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.595667, 30.260220, 19.761410>,  <28.396494, 30.280819, 19.629099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.595667, 30.260220, 19.761410>,  <28.927620, 30.225885, 19.981926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.595667, 30.260220, 19.761410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131597, -0.930103, -0.342913,
		-0.542193, -0.357127, 0.760583,
		-0.829885, 0.085835, -0.551292,
		28.346701, 30.285971, 19.596022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464874, 29.712748, 20.169434>,  <28.927620, 30.225885, 19.981926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464874, 29.712748, 20.169434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.413303, 29.818344, 19.787086>,  <28.382360, 29.881702, 19.557678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.413303, 29.818344, 19.787086>,  <28.464874, 29.712748, 20.169434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413303, 29.818344, 19.787086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258614, -0.921608, -0.289410,
		-0.957338, -0.284514, 0.050550,
		-0.128929, 0.263990, -0.955870,
		28.374624, 29.897541, 19.500326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897085, 29.310228, 19.859480>,  <28.464874, 29.712748, 20.169434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897085, 29.310228, 19.859480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.158169, 29.437332, 19.584381>,  <28.314819, 29.513596, 19.419321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.158169, 29.437332, 19.584381>,  <27.897085, 29.310228, 19.859480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158169, 29.437332, 19.584381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153714, -0.944453, -0.290484,
		-0.741849, 0.083886, -0.665299,
		0.652711, 0.317761, -0.687747,
		28.353983, 29.532660, 19.378057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616865, 29.118996, 19.262892>,  <27.897085, 29.310228, 19.859480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616865, 29.118996, 19.262892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.012749, 29.150539, 19.215130>,  <28.250278, 29.169466, 19.186474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.012749, 29.150539, 19.215130>,  <27.616865, 29.118996, 19.262892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012749, 29.150539, 19.215130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044921, -0.963479, -0.263991,
		-0.135861, 0.255911, -0.957106,
		0.989709, 0.078861, -0.119404,
		28.309662, 29.174198, 19.179308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721785, 28.596420, 18.806646>,  <27.616865, 29.118996, 19.262892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721785, 28.596420, 18.806646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.090977, 28.712040, 18.908279>,  <28.312492, 28.781412, 18.969259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.090977, 28.712040, 18.908279>,  <27.721785, 28.596420, 18.806646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090977, 28.712040, 18.908279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351550, -0.901885, -0.251029,
		0.156594, 0.321018, -0.934037,
		0.922979, 0.289051, 0.254083,
		28.367870, 28.798756, 18.984505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129826, 28.446169, 18.203600>,  <27.721785, 28.596420, 18.806646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129826, 28.446169, 18.203600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.377331, 28.454269, 18.517727>,  <28.525833, 28.459129, 18.706203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.377331, 28.454269, 18.517727>,  <28.129826, 28.446169, 18.203600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.377331, 28.454269, 18.517727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367252, -0.891160, -0.266382,
		0.694450, 0.453236, -0.558853,
		0.618761, 0.020251, 0.785318,
		28.562960, 28.460344, 18.753323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.732946, 28.189869, 17.879438>,  <28.129826, 28.446169, 18.203600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.732946, 28.189869, 17.879438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.736696, 28.136753, 18.275879>,  <28.738945, 28.104883, 18.513742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.736696, 28.136753, 18.275879>,  <28.732946, 28.189869, 17.879438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736696, 28.136753, 18.275879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386666, -0.913564, -0.126059,
		0.922172, 0.384406, 0.042783,
		0.009373, -0.132790, 0.991100,
		28.739508, 28.096916, 18.573210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.569893, 28.032158, 17.995264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.348251, 27.901985, 18.301743>,  <29.215265, 27.823881, 18.485630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.348251, 27.901985, 18.301743>,  <29.569893, 28.032158, 17.995264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348251, 27.901985, 18.301743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555151, -0.830316, 0.048812,
		0.620302, 0.452403, 0.640747,
		-0.554106, -0.325433, 0.766199,
		29.182020, 27.804356, 18.531603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037256, 27.730892, 18.424395>,  <29.569893, 28.032158, 17.995264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037256, 27.730892, 18.424395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.684942, 27.570942, 18.525837>,  <29.473553, 27.474972, 18.586702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.684942, 27.570942, 18.525837>,  <30.037256, 27.730892, 18.424395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684942, 27.570942, 18.525837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430690, -0.899112, 0.078129,
		0.196779, 0.178041, 0.964147,
		-0.880786, -0.399874, 0.253607,
		29.420706, 27.450979, 18.601919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194201, 27.391041, 19.016798>,  <30.037256, 27.730892, 18.424395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194201, 27.391041, 19.016798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.853403, 27.224792, 18.889446>,  <29.648924, 27.125044, 18.813036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.853403, 27.224792, 18.889446>,  <30.194201, 27.391041, 19.016798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853403, 27.224792, 18.889446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414356, -0.907003, 0.075189,
		-0.320021, -0.067862, 0.944977,
		-0.851995, -0.415619, -0.318380,
		29.597805, 27.100107, 18.793932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949469, 26.762869, 19.456081>,  <30.194201, 27.391041, 19.016798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949469, 26.762869, 19.456081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.741690, 26.699993, 19.120113>,  <29.617022, 26.662268, 18.918533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.741690, 26.699993, 19.120113>,  <29.949469, 26.762869, 19.456081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741690, 26.699993, 19.120113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400436, -0.913104, -0.076762,
		-0.754867, -0.376208, 0.537256,
		-0.519449, -0.157191, -0.839919,
		29.585855, 26.652836, 18.868137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637039, 26.116640, 19.640392>,  <29.949469, 26.762869, 19.456081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637039, 26.116640, 19.640392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.641981, 26.175861, 19.244831>,  <29.644947, 26.211393, 19.007494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.641981, 26.175861, 19.244831>,  <29.637039, 26.116640, 19.640392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641981, 26.175861, 19.244831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252296, -0.957441, -0.140190,
		-0.967571, -0.247764, -0.049182,
		0.012355, 0.148053, -0.988902,
		29.645687, 26.220278, 18.948160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071350, 25.768837, 19.365528>,  <29.637039, 26.116640, 19.640392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071350, 25.768837, 19.365528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.341330, 25.833317, 19.077511>,  <29.503317, 25.872004, 18.904701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.341330, 25.833317, 19.077511>,  <29.071350, 25.768837, 19.365528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341330, 25.833317, 19.077511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076013, -0.985843, -0.149451,
		-0.733940, 0.046138, -0.677645,
		0.674947, 0.161198, -0.720043,
		29.543814, 25.881676, 18.861498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863142, 25.386274, 18.745077>,  <29.071350, 25.768837, 19.365528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863142, 25.386274, 18.745077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.256401, 25.443508, 18.699562>,  <29.492357, 25.477848, 18.672253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.256401, 25.443508, 18.699562>,  <28.863142, 25.386274, 18.745077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256401, 25.443508, 18.699562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110266, -0.960584, -0.255187,
		-0.145816, 0.238340, -0.960173,
		0.983148, 0.143085, -0.113788,
		29.551346, 25.486433, 18.665426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030088, 25.022467, 18.103596>,  <28.863142, 25.386274, 18.745077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030088, 25.022467, 18.103596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.381886, 25.080132, 18.285019>,  <29.592964, 25.114731, 18.393873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.381886, 25.080132, 18.285019>,  <29.030088, 25.022467, 18.103596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381886, 25.080132, 18.285019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241508, -0.956384, -0.164325,
		0.410085, 0.254060, -0.875947,
		0.879490, 0.144161, 0.453557,
		29.645733, 25.123381, 18.421085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520887, 24.720896, 17.612352>,  <29.030088, 25.022467, 18.103596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520887, 24.720896, 17.612352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.717365, 24.743515, 17.960037>,  <29.835253, 24.757086, 18.168648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.717365, 24.743515, 17.960037>,  <29.520887, 24.720896, 17.612352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717365, 24.743515, 17.960037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467400, -0.859171, -0.208236,
		0.735027, 0.508555, -0.448450,
		0.491195, 0.056547, 0.869212,
		29.864723, 24.760479, 18.220800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203770, 24.641621, 17.448137>,  <29.520887, 24.720896, 17.612352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203770, 24.641621, 17.448137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.158054, 24.525051, 17.828033>,  <30.130625, 24.455111, 18.055971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.158054, 24.525051, 17.828033>,  <30.203770, 24.641621, 17.448137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158054, 24.525051, 17.828033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511957, -0.836565, -0.195087,
		0.851374, 0.463931, 0.244806,
		-0.114289, -0.291422, 0.949743,
		30.123768, 24.437624, 18.112957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923443, 24.432751, 17.633848>,  <30.203770, 24.641621, 17.448137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923443, 24.432751, 17.633848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.642181, 24.253227, 17.854446>,  <30.473425, 24.145514, 17.986805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.642181, 24.253227, 17.854446>,  <30.923443, 24.432751, 17.633848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642181, 24.253227, 17.854446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455039, -0.880026, -0.135993,
		0.546364, 0.155327, 0.823019,
		-0.703155, -0.448807, 0.551494,
		30.431234, 24.118586, 18.019896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257397, 23.836037, 17.755241>,  <30.923443, 24.432751, 17.633848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257397, 23.836037, 17.755241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.906557, 23.756939, 17.930325>,  <30.696053, 23.709480, 18.035376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.906557, 23.756939, 17.930325>,  <31.257397, 23.836037, 17.755241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906557, 23.756939, 17.930325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210883, -0.977328, -0.018955,
		0.431534, 0.075680, 0.898917,
		-0.877101, -0.197746, 0.437710,
		30.643427, 23.697615, 18.061638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310654, 23.447044, 18.326660>,  <31.257397, 23.836037, 17.755241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310654, 23.447044, 18.326660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.934368, 23.363163, 18.220013>,  <30.708597, 23.312834, 18.156025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.934368, 23.363163, 18.220013>,  <31.310654, 23.447044, 18.326660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934368, 23.363163, 18.220013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213376, -0.976848, 0.015467,
		-0.263687, -0.042339, 0.963679,
		-0.940712, -0.209704, -0.266616,
		30.652155, 23.300251, 18.140028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186951, 22.864628, 18.676777>,  <31.310654, 23.447044, 18.326660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186951, 22.864628, 18.676777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.897398, 22.852604, 18.401070>,  <30.723667, 22.845390, 18.235645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.897398, 22.852604, 18.401070>,  <31.186951, 22.864628, 18.676777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897398, 22.852604, 18.401070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079663, -0.996010, -0.040226,
		-0.685310, -0.084028, 0.723388,
		-0.723881, -0.030060, -0.689269,
		30.680233, 22.843586, 18.194288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647610, 22.327400, 18.866171>,  <31.186951, 22.864628, 18.676777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647610, 22.327400, 18.866171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.616674, 22.383411, 18.471321>,  <30.598112, 22.417017, 18.234411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.616674, 22.383411, 18.471321>,  <30.647610, 22.327400, 18.866171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616674, 22.383411, 18.471321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187448, -0.970389, -0.152339,
		-0.979225, -0.196816, 0.048801,
		-0.077339, 0.140026, -0.987123,
		30.593473, 22.425419, 18.175184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979059, 21.890451, 18.624674>,  <30.647610, 22.327400, 18.866171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979059, 21.890451, 18.624674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.196877, 21.953419, 18.295143>,  <30.327566, 21.991199, 18.097424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.196877, 21.953419, 18.295143>,  <29.979059, 21.890451, 18.624674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196877, 21.953419, 18.295143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130177, -0.986189, -0.102400,
		-0.828570, -0.051482, -0.557513,
		0.544542, 0.157420, -0.823828,
		30.360239, 22.000645, 18.047995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746367, 21.397228, 18.247549>,  <29.979059, 21.890451, 18.624674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746367, 21.397228, 18.247549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.097836, 21.507683, 18.091763>,  <30.308718, 21.573956, 17.998291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.097836, 21.507683, 18.091763>,  <29.746367, 21.397228, 18.247549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097836, 21.507683, 18.091763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198528, -0.953220, -0.227944,
		-0.434190, 0.122968, -0.892389,
		0.878673, 0.276135, -0.389466,
		30.361437, 21.590523, 17.974922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751101, 20.988544, 17.720194>,  <29.746367, 21.397228, 18.247549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751101, 20.988544, 17.720194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.131893, 21.105846, 17.755371>,  <30.360369, 21.176228, 17.776478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.131893, 21.105846, 17.755371>,  <29.751101, 20.988544, 17.720194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131893, 21.105846, 17.755371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304940, -0.882670, -0.357638,
		-0.027255, 0.367281, -0.929710,
		0.951981, 0.293254, 0.087942,
		30.417488, 21.193823, 17.781754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083357, 20.777790, 17.108351>,  <29.751101, 20.988544, 17.720194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083357, 20.777790, 17.108351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.375650, 20.833778, 17.375614>,  <30.551027, 20.867373, 17.535973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.375650, 20.833778, 17.375614>,  <30.083357, 20.777790, 17.108351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375650, 20.833778, 17.375614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395745, -0.884369, -0.247542,
		0.556250, 0.445308, -0.701632,
		0.730734, 0.139972, 0.668159,
		30.594872, 20.875771, 17.576061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683527, 20.440100, 16.742344>,  <30.083357, 20.777790, 17.108351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683527, 20.440100, 16.742344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.766283, 20.450596, 17.133549>,  <30.815937, 20.456894, 17.368271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.766283, 20.450596, 17.133549>,  <30.683527, 20.440100, 16.742344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766283, 20.450596, 17.133549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373169, -0.926185, -0.054091,
		0.904401, 0.376155, -0.201412,
		0.206891, 0.026240, 0.978012,
		30.828350, 20.458467, 17.426952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312576, 20.138317, 16.803280>,  <30.683527, 20.440100, 16.742344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312576, 20.138317, 16.803280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.181862, 20.141056, 17.181309>,  <31.103434, 20.142698, 17.408127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.181862, 20.141056, 17.181309>,  <31.312576, 20.138317, 16.803280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181862, 20.141056, 17.181309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270646, -0.957417, 0.100518,
		0.905518, 0.288628, 0.311015,
		-0.326784, 0.006846, 0.945074,
		31.083826, 20.143110, 17.464830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856354, 19.939688, 17.270367>,  <31.312576, 20.138317, 16.803280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856354, 19.939688, 17.270367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517735, 19.848110, 17.462593>,  <31.314564, 19.793163, 17.577929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517735, 19.848110, 17.462593>,  <31.856354, 19.939688, 17.270367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517735, 19.848110, 17.462593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308258, -0.946850, 0.091931,
		0.433976, 0.225962, 0.872127,
		-0.846547, -0.228945, 0.480565,
		31.263771, 19.779427, 17.606762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917368, 19.518076, 17.935188>,  <31.856354, 19.939688, 17.270367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917368, 19.518076, 17.935188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.564743, 19.426155, 17.770245>,  <31.353168, 19.371002, 17.671278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.564743, 19.426155, 17.770245>,  <31.917368, 19.518076, 17.935188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564743, 19.426155, 17.770245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186563, -0.972004, 0.142841,
		-0.433642, 0.048992, 0.899753,
		-0.881561, -0.229802, -0.412361,
		31.300274, 19.357214, 17.646536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232979, 18.914600, 18.377934>,  <31.917368, 19.518076, 17.935188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232979, 18.914600, 18.377934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.530956, 18.964188, 18.115730>,  <32.709743, 18.993940, 17.958408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.530956, 18.964188, 18.115730>,  <32.232979, 18.914600, 18.377934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530956, 18.964188, 18.115730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666469, 0.181883, -0.723006,
		0.029596, 0.975474, 0.218114,
		0.744945, 0.123968, -0.655506,
		32.754440, 19.001379, 17.919079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363701, 18.599613, 19.125874>,  <32.232979, 18.914600, 18.377934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363701, 18.599613, 19.125874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753010, 18.646942, 19.204613>,  <32.986595, 18.675339, 19.251856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.753010, 18.646942, 19.204613>,  <32.363701, 18.599613, 19.125874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753010, 18.646942, 19.204613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177131, 0.932279, 0.315403,
		-0.146198, -0.341840, 0.928316,
		0.973268, 0.118322, 0.196848,
		33.044991, 18.682438, 19.263668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342144, 18.923342, 19.785666>,  <32.363701, 18.599613, 19.125874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342144, 18.923342, 19.785666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.704166, 19.001057, 19.634338>,  <32.921379, 19.047686, 19.543543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.704166, 19.001057, 19.634338>,  <32.342144, 18.923342, 19.785666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704166, 19.001057, 19.634338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033262, 0.919162, 0.392472,
		0.423987, -0.342626, 0.838357,
		0.905057, 0.194289, -0.378316,
		32.975685, 19.059343, 19.520844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635723, 19.315516, 20.276604>,  <32.342144, 18.923342, 19.785666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635723, 19.315516, 20.276604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835285, 19.402180, 19.940948>,  <32.955021, 19.454178, 19.739555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835285, 19.402180, 19.940948>,  <32.635723, 19.315516, 20.276604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835285, 19.402180, 19.940948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056882, 0.974345, 0.217751,
		0.864788, -0.060905, 0.498430,
		0.498905, 0.216660, -0.839138,
		32.984955, 19.467178, 19.689207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122437, 19.850739, 20.520052>,  <32.635723, 19.315516, 20.276604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122437, 19.850739, 20.520052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.102665, 19.889889, 20.122463>,  <33.090801, 19.913378, 19.883911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.102665, 19.889889, 20.122463>,  <33.122437, 19.850739, 20.520052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102665, 19.889889, 20.122463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116601, 0.988947, 0.091581,
		0.991948, -0.111371, -0.060294,
		-0.049428, 0.097874, -0.993971,
		33.087837, 19.919250, 19.824272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629501, 20.362022, 20.302645>,  <33.122437, 19.850739, 20.520052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629501, 20.362022, 20.302645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352837, 20.334156, 20.015102>,  <33.186840, 20.317436, 19.842577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352837, 20.334156, 20.015102>,  <33.629501, 20.362022, 20.302645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352837, 20.334156, 20.015102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070596, 0.997092, -0.028706,
		0.718767, 0.030894, -0.694564,
		-0.691657, -0.069666, -0.718858,
		33.145340, 20.313255, 19.799444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841648, 20.933903, 19.781193>,  <33.629501, 20.362022, 20.302645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841648, 20.933903, 19.781193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.456211, 20.849232, 19.715851>,  <33.224949, 20.798429, 19.676645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.456211, 20.849232, 19.715851>,  <33.841648, 20.933903, 19.781193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456211, 20.849232, 19.715851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188198, 0.970917, -0.147992,
		0.189932, -0.111861, -0.975404,
		-0.963591, -0.211678, -0.163356,
		33.167133, 20.785728, 19.666843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614311, 21.229540, 19.191193>,  <33.841648, 20.933903, 19.781193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614311, 21.229540, 19.191193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267395, 21.172020, 19.381824>,  <33.059246, 21.137508, 19.496202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.267395, 21.172020, 19.381824>,  <33.614311, 21.229540, 19.191193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267395, 21.172020, 19.381824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222390, 0.968445, -0.112504,
		-0.445362, -0.203560, -0.871904,
		-0.867292, -0.143798, 0.476578,
		33.007206, 21.128881, 19.524797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204983, 21.730194, 18.910372>,  <33.614311, 21.229540, 19.191193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204983, 21.730194, 18.910372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.975391, 21.637653, 19.224575>,  <32.837635, 21.582129, 19.413097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.975391, 21.637653, 19.224575>,  <33.204983, 21.730194, 18.910372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975391, 21.637653, 19.224575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302713, 0.951255, 0.058975,
		-0.760862, -0.203933, -0.616036,
		-0.573980, -0.231354, 0.785507,
		32.803196, 21.568247, 19.460228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538994, 21.918308, 18.808119>,  <33.204983, 21.730194, 18.910372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538994, 21.918308, 18.808119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.564457, 21.930332, 19.207127>,  <32.579735, 21.937548, 19.446531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.564457, 21.930332, 19.207127>,  <32.538994, 21.918308, 18.808119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564457, 21.930332, 19.207127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417218, 0.908806, -0.000761,
		-0.906574, -0.416135, 0.070397,
		0.063661, 0.030060, 0.997519,
		32.583557, 21.939350, 19.506382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903107, 22.108276, 19.052870>,  <32.538994, 21.918308, 18.808119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903107, 22.108276, 19.052870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.157738, 22.200069, 19.347382>,  <32.310516, 22.255144, 19.524090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.157738, 22.200069, 19.347382>,  <31.903107, 22.108276, 19.052870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157738, 22.200069, 19.347382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449424, 0.886226, 0.112349,
		-0.626730, -0.402421, 0.667284,
		0.636575, 0.229481, 0.736282,
		32.348709, 22.268913, 19.568266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513109, 22.459480, 19.485756>,  <31.903107, 22.108276, 19.052870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513109, 22.459480, 19.485756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.874578, 22.572472, 19.614491>,  <32.091461, 22.640266, 19.691730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.874578, 22.572472, 19.614491>,  <31.513109, 22.459480, 19.485756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874578, 22.572472, 19.614491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330476, 0.937996, 0.104643,
		-0.272320, -0.200922, 0.940995,
		0.903675, 0.282480, 0.321835,
		32.145679, 22.657215, 19.711040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390690, 23.060375, 19.800251>,  <31.513109, 22.459480, 19.485756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390690, 23.060375, 19.800251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.789583, 23.083057, 19.819473>,  <32.028919, 23.096666, 19.831007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.789583, 23.083057, 19.819473>,  <31.390690, 23.060375, 19.800251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789583, 23.083057, 19.819473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061784, 0.991803, 0.111841,
		-0.041320, -0.114501, 0.992563,
		0.997234, 0.056704, 0.048056,
		32.088753, 23.100069, 19.833891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551155, 23.502745, 20.375256>,  <31.390690, 23.060375, 19.800251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551155, 23.502745, 20.375256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.889078, 23.479050, 20.162544>,  <32.091831, 23.464832, 20.034918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.889078, 23.479050, 20.162544>,  <31.551155, 23.502745, 20.375256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889078, 23.479050, 20.162544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096667, 0.994396, 0.042798,
		0.526263, -0.087561, 0.845801,
		0.844809, -0.059238, -0.531778,
		32.142521, 23.461279, 20.003010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012482, 23.873714, 20.775774>,  <31.551155, 23.502745, 20.375256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012482, 23.873714, 20.775774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.110592, 23.863544, 20.388126>,  <32.169456, 23.857443, 20.155537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.110592, 23.863544, 20.388126>,  <32.012482, 23.873714, 20.775774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110592, 23.863544, 20.388126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103582, 0.994621, 0.000120,
		0.963905, -0.100413, 0.246586,
		0.245271, -0.025426, -0.969121,
		32.184174, 23.855917, 20.097389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509693, 24.410610, 20.697803>,  <32.012482, 23.873714, 20.775774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509693, 24.410610, 20.697803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.373810, 24.301876, 20.337646>,  <32.292278, 24.236635, 20.121553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.373810, 24.301876, 20.337646>,  <32.509693, 24.410610, 20.697803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373810, 24.301876, 20.337646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006751, 0.956593, -0.291348,
		0.940507, -0.105051, -0.323127,
		-0.339707, -0.271833, -0.900392,
		32.271896, 24.220325, 20.067530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025043, 24.623610, 20.208765>,  <32.509693, 24.410610, 20.697803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025043, 24.623610, 20.208765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.657791, 24.601074, 20.051861>,  <32.437439, 24.587553, 19.957718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.657791, 24.601074, 20.051861>,  <33.025043, 24.623610, 20.208765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657791, 24.601074, 20.051861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038674, 0.972379, -0.230182,
		0.394394, -0.226506, -0.890589,
		-0.918127, -0.056340, -0.392261,
		32.382355, 24.584171, 19.934183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027348, 25.050940, 19.716400>,  <33.025043, 24.623610, 20.208765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027348, 25.050940, 19.716400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.631046, 24.997829, 19.727551>,  <32.393265, 24.965963, 19.734241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.631046, 24.997829, 19.727551>,  <33.027348, 25.050940, 19.716400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631046, 24.997829, 19.727551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134273, 0.930224, -0.341546,
		0.019416, -0.342132, -0.939451,
		-0.990754, -0.132775, 0.027878,
		32.333820, 24.957996, 19.735914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813091, 25.364908, 19.073732>,  <33.027348, 25.050940, 19.716400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813091, 25.364908, 19.073732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.517143, 25.356190, 19.342693>,  <32.339577, 25.350958, 19.504070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.517143, 25.356190, 19.342693>,  <32.813091, 25.364908, 19.073732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517143, 25.356190, 19.342693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221640, 0.951574, -0.213030,
		-0.635196, -0.306645, -0.708869,
		-0.739866, -0.021798, 0.672401,
		32.295185, 25.349651, 19.544415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312229, 25.757538, 18.742186>,  <32.813091, 25.364908, 19.073732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312229, 25.757538, 18.742186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.209267, 25.741280, 19.128365>,  <32.147488, 25.731525, 19.360073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.209267, 25.741280, 19.128365>,  <32.312229, 25.757538, 18.742186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209267, 25.741280, 19.128365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031306, 0.998941, 0.033707,
		-0.965796, -0.021548, -0.258405,
		-0.257405, -0.040644, 0.965448,
		32.132046, 25.729086, 19.417999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805054, 26.181913, 18.776278>,  <32.312229, 25.757538, 18.742186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805054, 26.181913, 18.776278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952040, 26.176086, 19.148247>,  <32.040230, 26.172590, 19.371429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952040, 26.176086, 19.148247>,  <31.805054, 26.181913, 18.776278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952040, 26.176086, 19.148247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106121, 0.992690, 0.057484,
		-0.923964, -0.119808, 0.363231,
		0.367463, -0.014567, 0.929924,
		32.062279, 26.171717, 19.427223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.204388, 40.832554, 15.102787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.468891, 40.594746, 15.285779>,  <25.627592, 40.452061, 15.395575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.468891, 40.594746, 15.285779>,  <25.204388, 40.832554, 15.102787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468891, 40.594746, 15.285779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529541, 0.062020, 0.846014,
		-0.531342, -0.801688, -0.273810,
		0.661257, -0.594517, 0.457481,
		25.667269, 40.416389, 15.423023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836962, 40.292240, 15.470264>,  <25.204388, 40.832554, 15.102787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836962, 40.292240, 15.470264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.186213, 40.286545, 15.665179>,  <25.395763, 40.283127, 15.782128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.186213, 40.286545, 15.665179>,  <24.836962, 40.292240, 15.470264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186213, 40.286545, 15.665179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486162, -0.099285, 0.868210,
		0.036019, -0.994957, -0.093610,
		0.873126, -0.014237, 0.487286,
		25.448151, 40.282272, 15.811365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.774960, 39.826752, 15.963752>,  <24.836962, 40.292240, 15.470264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.774960, 39.826752, 15.963752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.115845, 39.967667, 16.118477>,  <25.320375, 40.052216, 16.211311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.115845, 39.967667, 16.118477>,  <24.774960, 39.826752, 15.963752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.115845, 39.967667, 16.118477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253347, -0.369002, 0.894233,
		0.457763, -0.860075, -0.225217,
		0.852214, 0.352289, 0.386813,
		25.371510, 40.073353, 16.234520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190258, 39.291035, 16.350906>,  <24.774960, 39.826752, 15.963752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190258, 39.291035, 16.350906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.250692, 39.661514, 16.489079>,  <25.286953, 39.883804, 16.571981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.250692, 39.661514, 16.489079>,  <25.190258, 39.291035, 16.350906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250692, 39.661514, 16.489079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292969, -0.291786, 0.910511,
		0.944110, -0.238764, 0.227264,
		0.151085, 0.926203, 0.345428,
		25.296019, 39.939377, 16.592707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508154, 39.119446, 16.889072>,  <25.190258, 39.291035, 16.350906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508154, 39.119446, 16.889072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.430729, 39.505142, 16.961479>,  <25.384274, 39.736561, 17.004923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.430729, 39.505142, 16.961479>,  <25.508154, 39.119446, 16.889072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430729, 39.505142, 16.961479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395995, -0.245595, 0.884800,
		0.897620, 0.099584, 0.429374,
		-0.193564, 0.964244, 0.181016,
		25.372660, 39.794415, 17.015783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693460, 39.202549, 17.614969>,  <25.508154, 39.119446, 16.889072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693460, 39.202549, 17.614969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.442432, 39.504742, 17.539711>,  <25.291817, 39.686058, 17.494556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.442432, 39.504742, 17.539711>,  <25.693460, 39.202549, 17.614969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.442432, 39.504742, 17.539711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373821, -0.080410, 0.924009,
		0.682947, 0.650212, 0.332879,
		-0.627568, 0.755486, -0.188147,
		25.254162, 39.731388, 17.483267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886082, 39.635979, 18.087708>,  <25.693460, 39.202549, 17.614969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886082, 39.635979, 18.087708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.511013, 39.697052, 17.962833>,  <25.285973, 39.733696, 17.887909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.511013, 39.697052, 17.962833>,  <25.886082, 39.635979, 18.087708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.511013, 39.697052, 17.962833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320668, -0.033881, 0.946586,
		0.133955, 0.987694, 0.080731,
		-0.937672, 0.152687, -0.312183,
		25.229712, 39.742859, 17.869179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.616716, 40.118668, 18.571363>,  <25.886082, 39.635979, 18.087708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.616716, 40.118668, 18.571363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.291843, 39.929646, 18.434509>,  <25.096920, 39.816235, 18.352396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.291843, 39.929646, 18.434509>,  <25.616716, 40.118668, 18.571363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.291843, 39.929646, 18.434509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341750, -0.089930, 0.935478,
		-0.472829, 0.876703, -0.088455,
		-0.812182, -0.472551, -0.342135,
		25.048189, 39.787880, 18.331869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169128, 40.123718, 19.118269>,  <25.616716, 40.118668, 18.571363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169128, 40.123718, 19.118269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.983889, 39.861038, 18.880180>,  <24.872746, 39.703430, 18.737328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.983889, 39.861038, 18.880180>,  <25.169128, 40.123718, 19.118269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.983889, 39.861038, 18.880180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589032, -0.273767, 0.760325,
		-0.662256, 0.702708, -0.260036,
		-0.463097, -0.656699, -0.595221,
		24.844959, 39.664028, 18.701614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.627792, 40.181225, 19.431339>,  <25.169128, 40.123718, 19.118269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.627792, 40.181225, 19.431339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.583679, 39.834690, 19.236488>,  <24.557211, 39.626770, 19.119577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.583679, 39.834690, 19.236488>,  <24.627792, 40.181225, 19.431339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.583679, 39.834690, 19.236488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750757, -0.248563, 0.612030,
		-0.651308, 0.433209, -0.623000,
		-0.110282, -0.866341, -0.487126,
		24.550594, 39.574787, 19.090351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.917252, 40.101109, 19.331306>,  <24.627792, 40.181225, 19.431339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.917252, 40.101109, 19.331306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.071712, 39.733707, 19.297272>,  <24.164389, 39.513268, 19.276850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.071712, 39.733707, 19.297272>,  <23.917252, 40.101109, 19.331306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.071712, 39.733707, 19.297272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674412, -0.344053, 0.653296,
		-0.629329, -0.194887, -0.752306,
		0.386152, -0.918502, -0.085088,
		24.187559, 39.458157, 19.271746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.329899, 39.600445, 19.114529>,  <23.917252, 40.101109, 19.331306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.329899, 39.600445, 19.114529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.626335, 39.401779, 19.295242>,  <23.804195, 39.282578, 19.403671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.626335, 39.401779, 19.295242>,  <23.329899, 39.600445, 19.114529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.626335, 39.401779, 19.295242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670340, -0.509409, 0.539580,
		-0.037848, -0.702726, -0.710453,
		0.741088, -0.496667, 0.451785,
		23.848661, 39.252777, 19.430779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.252531, 38.852127, 19.040325>,  <23.329899, 39.600445, 19.114529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.252531, 38.852127, 19.040325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.434263, 38.919441, 19.390244>,  <23.543303, 38.959831, 19.600195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.434263, 38.919441, 19.390244>,  <23.252531, 38.852127, 19.040325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.434263, 38.919441, 19.390244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762361, -0.434570, 0.479535,
		0.460859, -0.884776, -0.069142,
		0.454328, 0.168287, 0.874795,
		23.570562, 38.969929, 19.652681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.998478, 38.293869, 19.451788>,  <23.252531, 38.852127, 19.040325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.998478, 38.293869, 19.451788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.187025, 38.506634, 19.733181>,  <23.300154, 38.634293, 19.902016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.187025, 38.506634, 19.733181>,  <22.998478, 38.293869, 19.451788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.187025, 38.506634, 19.733181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643869, -0.337555, 0.686651,
		0.602700, -0.776614, 0.183368,
		0.471366, 0.531909, 0.703481,
		23.328436, 38.666206, 19.944225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.918526, 37.950790, 20.053091>,  <22.998478, 38.293869, 19.451788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.918526, 37.950790, 20.053091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.011396, 38.308311, 20.206562>,  <23.067120, 38.522823, 20.298645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.011396, 38.308311, 20.206562>,  <22.918526, 37.950790, 20.053091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.011396, 38.308311, 20.206562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457941, -0.247557, 0.853818,
		0.858128, -0.373938, 0.351832,
		0.232177, 0.893804, 0.383678,
		23.081049, 38.576454, 20.321665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.341463, 37.940594, 20.695395>,  <22.918526, 37.950790, 20.053091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.341463, 37.940594, 20.695395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.101830, 38.260868, 20.695023>,  <22.958050, 38.453033, 20.694799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.101830, 38.260868, 20.695023>,  <23.341463, 37.940594, 20.695395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.101830, 38.260868, 20.695023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358102, -0.266899, 0.894722,
		0.716143, 0.536346, 0.446622,
		-0.599084, 0.800686, -0.000929,
		22.922104, 38.501076, 20.694744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.362335, 38.012104, 21.424122>,  <23.341463, 37.940594, 20.695395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.362335, 38.012104, 21.424122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.095448, 38.257191, 21.254700>,  <22.935316, 38.404243, 21.153048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.095448, 38.257191, 21.254700>,  <23.362335, 38.012104, 21.424122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.095448, 38.257191, 21.254700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639035, -0.178717, 0.748127,
		0.382694, 0.769830, 0.510791,
		-0.667218, 0.612717, -0.423554,
		22.895283, 38.441006, 21.127634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.954668, 38.304359, 22.091230>,  <23.362335, 38.012104, 21.424122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.954668, 38.304359, 22.091230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.729267, 38.371891, 21.767757>,  <22.594027, 38.412411, 21.573673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.729267, 38.371891, 21.767757>,  <22.954668, 38.304359, 22.091230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.729267, 38.371891, 21.767757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784639, -0.415654, 0.459972,
		-0.258475, 0.893717, 0.366690,
		-0.563500, 0.168828, -0.808681,
		22.560217, 38.422539, 21.525154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.423958, 38.649624, 22.377422>,  <22.954668, 38.304359, 22.091230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.423958, 38.649624, 22.377422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.298801, 38.540230, 22.013596>,  <22.223707, 38.474594, 21.795300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.298801, 38.540230, 22.013596>,  <22.423958, 38.649624, 22.377422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.298801, 38.540230, 22.013596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791909, -0.453607, 0.408804,
		-0.524386, 0.848203, -0.074644,
		-0.312889, -0.273482, -0.909565,
		22.204935, 38.458183, 21.740726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.694916, 38.831333, 22.335276>,  <22.423958, 38.649624, 22.377422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.694916, 38.831333, 22.335276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.750551, 38.553837, 22.052608>,  <21.783932, 38.387341, 21.883007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.750551, 38.553837, 22.052608>,  <21.694916, 38.831333, 22.335276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.750551, 38.553837, 22.052608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859608, -0.438876, 0.261654,
		-0.491660, 0.571066, -0.657385,
		0.139088, -0.693738, -0.706670,
		21.792278, 38.345715, 21.840609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.912014, 38.689491, 22.124752>,  <21.694916, 38.831333, 22.335276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.912014, 38.689491, 22.124752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.155027, 38.386089, 22.030457>,  <21.300835, 38.204048, 21.973879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.155027, 38.386089, 22.030457>,  <20.912014, 38.689491, 22.124752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.155027, 38.386089, 22.030457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707433, -0.651666, 0.273626,
		-0.361169, 0.000531, -0.932500,
		0.607533, -0.758506, -0.235737,
		21.337288, 38.158539, 21.959736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.596264, 38.199570, 21.648272>,  <20.912014, 38.689491, 22.124752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.596264, 38.199570, 21.648272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.331249, 37.909489, 21.573307>,  <20.172241, 37.735439, 21.528328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.331249, 37.909489, 21.573307>,  <20.596264, 38.199570, 21.648272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.331249, 37.909489, 21.573307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443436, -0.178108, -0.878432,
		0.603664, -0.665097, 0.439585,
		-0.662536, -0.725206, -0.187411,
		20.132488, 37.691929, 21.517084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.995117, 37.716717, 21.433804>,  <20.596264, 38.199570, 21.648272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.995117, 37.716717, 21.433804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.627155, 37.650688, 21.291523>,  <20.406378, 37.611073, 21.206154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.627155, 37.650688, 21.291523>,  <20.995117, 37.716717, 21.433804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.627155, 37.650688, 21.291523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383646, -0.191097, -0.903492,
		0.081166, -0.967592, 0.239120,
		-0.919906, -0.165071, -0.355702,
		20.351183, 37.601166, 21.184813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.142843, 37.309639, 20.816330>,  <20.995117, 37.716717, 21.433804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.142843, 37.309639, 20.816330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.769945, 37.451977, 20.790112>,  <20.546206, 37.537380, 20.774380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.769945, 37.451977, 20.790112>,  <21.142843, 37.309639, 20.816330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.769945, 37.451977, 20.790112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066218, -0.010311, -0.997752,
		-0.355718, -0.934489, -0.013951,
		-0.932244, 0.355842, -0.065548,
		20.490273, 37.558731, 20.770447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.856865, 36.848534, 20.330084>,  <21.142843, 37.309639, 20.816330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.856865, 36.848534, 20.330084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.616003, 37.167831, 20.335869>,  <20.471485, 37.359409, 20.339340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.616003, 37.167831, 20.335869>,  <20.856865, 36.848534, 20.330084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.616003, 37.167831, 20.335869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113419, 0.103460, -0.988146,
		-0.790282, -0.593377, -0.152836,
		-0.602155, 0.798248, 0.014462,
		20.435356, 37.407307, 20.340208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.551235, 36.736717, 19.693602>,  <20.856865, 36.848534, 20.330084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.551235, 36.736717, 19.693602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.437107, 37.106503, 19.794758>,  <20.368629, 37.328373, 19.855452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.437107, 37.106503, 19.794758>,  <20.551235, 36.736717, 19.693602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.437107, 37.106503, 19.794758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143894, 0.219549, -0.964932,
		-0.947569, -0.311704, 0.070383,
		-0.285321, 0.924467, 0.252890,
		20.351511, 37.383842, 19.870625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.947489, 36.842201, 19.265556>,  <20.551235, 36.736717, 19.693602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.947489, 36.842201, 19.265556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.140629, 37.179962, 19.358364>,  <20.256514, 37.382618, 19.414049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.140629, 37.179962, 19.358364>,  <19.947489, 36.842201, 19.265556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.140629, 37.179962, 19.358364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051746, 0.236979, -0.970136,
		-0.874173, 0.480437, 0.070731,
		0.482851, 0.844406, 0.232022,
		20.285484, 37.433285, 19.427971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.684561, 37.237915, 18.773500>,  <19.947489, 36.842201, 19.265556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.684561, 37.237915, 18.773500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.012968, 37.423496, 18.906570>,  <20.210012, 37.534843, 18.986412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.012968, 37.423496, 18.906570>,  <19.684561, 37.237915, 18.773500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.012968, 37.423496, 18.906570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165407, 0.364416, -0.916429,
		-0.546414, 0.807432, 0.222451,
		0.821019, 0.463954, 0.332677,
		20.259274, 37.562683, 19.006374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.698725, 37.884628, 18.444977>,  <19.684561, 37.237915, 18.773500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.698725, 37.884628, 18.444977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.073055, 37.812340, 18.566021>,  <20.297653, 37.768967, 18.638647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.073055, 37.812340, 18.566021>,  <19.698725, 37.884628, 18.444977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.073055, 37.812340, 18.566021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338950, 0.225955, -0.913267,
		0.096668, 0.957228, 0.272709,
		0.935825, -0.180718, 0.302609,
		20.353804, 37.758125, 18.656803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.069599, 38.439087, 18.147902>,  <19.698725, 37.884628, 18.444977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.069599, 38.439087, 18.147902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.359646, 38.176659, 18.231586>,  <20.533674, 38.019199, 18.281797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.359646, 38.176659, 18.231586>,  <20.069599, 38.439087, 18.147902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.359646, 38.176659, 18.231586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477563, 0.260218, -0.839178,
		0.496123, 0.708415, 0.502006,
		0.725117, -0.656075, 0.209213,
		20.577181, 37.979836, 18.294350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.692299, 38.806572, 18.073746>,  <20.069599, 38.439087, 18.147902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.692299, 38.806572, 18.073746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.745903, 38.412834, 18.027939>,  <20.778065, 38.176594, 18.000454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.745903, 38.412834, 18.027939>,  <20.692299, 38.806572, 18.073746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.745903, 38.412834, 18.027939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501763, 0.167051, -0.848721,
		0.854562, 0.056277, 0.516292,
		0.134010, -0.984341, -0.114517,
		20.786106, 38.117531, 17.993584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.348373, 38.821907, 17.824421>,  <20.692299, 38.806572, 18.073746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.348373, 38.821907, 17.824421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.209612, 38.457748, 17.734238>,  <21.126354, 38.239254, 17.680128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.209612, 38.457748, 17.734238>,  <21.348373, 38.821907, 17.824421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.209612, 38.457748, 17.734238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705384, -0.094822, -0.702454,
		0.618135, -0.402718, 0.675076,
		-0.346903, -0.910399, -0.225458,
		21.105541, 38.184628, 17.666599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.884840, 38.566891, 17.620487>,  <21.348373, 38.821907, 17.824421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.884840, 38.566891, 17.620487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.617708, 38.320671, 17.453106>,  <21.457428, 38.172939, 17.352676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.617708, 38.320671, 17.453106>,  <21.884840, 38.566891, 17.620487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.617708, 38.320671, 17.453106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527339, 0.005462, -0.849638,
		0.525277, -0.788082, 0.320954,
		-0.667831, -0.615547, -0.418455,
		21.417358, 38.136005, 17.327570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.262253, 38.099110, 17.254431>,  <21.884840, 38.566891, 17.620487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.262253, 38.099110, 17.254431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.904255, 38.056896, 17.081066>,  <21.689457, 38.031570, 16.977047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.904255, 38.056896, 17.081066>,  <22.262253, 38.099110, 17.254431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.904255, 38.056896, 17.081066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434114, 0.017448, -0.900689,
		0.102616, -0.994263, 0.030198,
		-0.894994, -0.105534, -0.433414,
		21.635756, 38.025238, 16.951042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.378407, 37.612663, 16.775499>,  <22.262253, 38.099110, 17.254431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.378407, 37.612663, 16.775499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.050148, 37.800598, 16.645393>,  <21.853193, 37.913357, 16.567329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.050148, 37.800598, 16.645393>,  <22.378407, 37.612663, 16.775499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.050148, 37.800598, 16.645393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353510, -0.029803, -0.934956,
		-0.448968, -0.882252, -0.141633,
		-0.820645, 0.469834, -0.325265,
		21.803955, 37.941547, 16.547813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.147627, 37.221100, 16.228735>,  <22.378407, 37.612663, 16.775499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.147627, 37.221100, 16.228735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.969923, 37.576057, 16.179474>,  <21.863300, 37.789032, 16.149918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.969923, 37.576057, 16.179474>,  <22.147627, 37.221100, 16.228735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.969923, 37.576057, 16.179474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359475, 0.050655, -0.931779,
		-0.820617, -0.458221, -0.341499,
		-0.444259, 0.887394, -0.123151,
		21.836645, 37.842274, 16.142529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.700293, 37.191185, 15.695099>,  <22.147627, 37.221100, 16.228735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.700293, 37.191185, 15.695099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.742552, 37.586784, 15.736508>,  <21.767908, 37.824142, 15.761354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.742552, 37.586784, 15.736508>,  <21.700293, 37.191185, 15.695099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.742552, 37.586784, 15.736508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454648, 0.044547, -0.889556,
		-0.884383, 0.141048, -0.444941,
		0.105649, 0.989000, 0.103524,
		21.774246, 37.883484, 15.767566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.471220, 37.445740, 15.146785>,  <21.700293, 37.191185, 15.695099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.471220, 37.445740, 15.146785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.703634, 37.743179, 15.279124>,  <21.843082, 37.921642, 15.358528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.703634, 37.743179, 15.279124>,  <21.471220, 37.445740, 15.146785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.703634, 37.743179, 15.279124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462257, 0.033065, -0.886129,
		-0.669862, 0.667811, -0.324520,
		0.581036, 0.743596, 0.330849,
		21.877945, 37.966259, 15.378379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.568562, 37.858219, 14.581937>,  <21.471220, 37.445740, 15.146785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.568562, 37.858219, 14.581937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.865076, 37.980450, 14.820975>,  <22.042984, 38.053787, 14.964398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.865076, 37.980450, 14.820975>,  <21.568562, 37.858219, 14.581937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.865076, 37.980450, 14.820975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586396, 0.138326, -0.798126,
		-0.326548, 0.942068, -0.076647,
		0.741287, 0.305572, 0.597595,
		22.087461, 38.072121, 15.000254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.800577, 38.423626, 14.245396>,  <21.568562, 37.858219, 14.581937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.800577, 38.423626, 14.245396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.101158, 38.320446, 14.488305>,  <22.281507, 38.258537, 14.634050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.101158, 38.320446, 14.488305>,  <21.800577, 38.423626, 14.245396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.101158, 38.320446, 14.488305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659717, 0.280360, -0.697260,
		0.009603, 0.924586, 0.380851,
		0.751452, -0.257950, 0.607274,
		22.326593, 38.243061, 14.670487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.341547, 39.048492, 14.264292>,  <21.800577, 38.423626, 14.245396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.341547, 39.048492, 14.264292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.548298, 38.734188, 14.400182>,  <22.672348, 38.545605, 14.481716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.548298, 38.734188, 14.400182>,  <22.341547, 39.048492, 14.264292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.548298, 38.734188, 14.400182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662341, 0.115651, -0.740222,
		0.542351, 0.607616, 0.580222,
		0.516875, -0.785765, 0.339725,
		22.703360, 38.498459, 14.502099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.122841, 39.245342, 14.298866>,  <22.341547, 39.048492, 14.264292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.122841, 39.245342, 14.298866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.080952, 38.849247, 14.262065>,  <23.055819, 38.611591, 14.239985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.080952, 38.849247, 14.262065>,  <23.122841, 39.245342, 14.298866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.080952, 38.849247, 14.262065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729500, -0.013612, -0.683846,
		0.675917, -0.138730, 0.723803,
		-0.104722, -0.990237, -0.092003,
		23.049536, 38.552177, 14.234464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.257631, 30.175020, 18.920918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567369, 30.189034, 19.173634>,  <27.753212, 30.197441, 19.325264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.567369, 30.189034, 19.173634>,  <27.257631, 30.175020, 18.920918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.567369, 30.189034, 19.173634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200305, 0.960690, 0.192230,
		-0.600222, -0.275404, 0.750924,
		0.774346, 0.035033, 0.631792,
		27.799673, 30.199543, 19.363171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059944, 30.423891, 19.482594>,  <27.257631, 30.175020, 18.920918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059944, 30.423891, 19.482594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448135, 30.506748, 19.532013>,  <27.681049, 30.556463, 19.561665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448135, 30.506748, 19.532013>,  <27.059944, 30.423891, 19.482594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448135, 30.506748, 19.532013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240200, 0.876435, 0.417333,
		-0.021837, -0.434689, 0.900316,
		0.970478, 0.207142, 0.123551,
		27.739279, 30.568892, 19.569078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.149172, 30.693417, 20.177908>,  <27.059944, 30.423891, 19.482594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.149172, 30.693417, 20.177908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477060, 30.826946, 19.991737>,  <27.673794, 30.907064, 19.880035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477060, 30.826946, 19.991737>,  <27.149172, 30.693417, 20.177908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477060, 30.826946, 19.991737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110318, 0.889397, 0.443625,
		0.562040, -0.312304, 0.765883,
		0.819720, 0.333826, -0.465424,
		27.722977, 30.927094, 19.852110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581293, 30.862112, 20.691431>,  <27.149172, 30.693417, 20.177908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581293, 30.862112, 20.691431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665632, 31.077965, 20.365402>,  <27.716236, 31.207478, 20.169785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665632, 31.077965, 20.365402>,  <27.581293, 30.862112, 20.691431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665632, 31.077965, 20.365402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007949, 0.834734, 0.550595,
		0.977487, -0.109612, 0.180290,
		0.210846, 0.539633, -0.815071,
		27.728886, 31.239855, 20.120880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969439, 31.457222, 20.934647>,  <27.581293, 30.862112, 20.691431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969439, 31.457222, 20.934647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856241, 31.566227, 20.566811>,  <27.788322, 31.631630, 20.346109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856241, 31.566227, 20.566811>,  <27.969439, 31.457222, 20.934647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856241, 31.566227, 20.566811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076479, 0.962145, 0.261589,
		0.956067, 0.003699, -0.293124,
		-0.282995, 0.272514, -0.919592,
		27.771343, 31.647982, 20.290934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.502758, 31.987547, 20.767044>,  <27.969439, 31.457222, 20.934647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.502758, 31.987547, 20.767044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213556, 32.054859, 20.499031>,  <28.040035, 32.095245, 20.338223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213556, 32.054859, 20.499031>,  <28.502758, 31.987547, 20.767044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213556, 32.054859, 20.499031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192120, 0.980597, 0.038973,
		0.663591, -0.100549, -0.741307,
		-0.723005, 0.168282, -0.670033,
		27.996655, 32.105343, 20.298021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.781092, 32.577423, 20.270348>,  <28.502758, 31.987547, 20.767044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.781092, 32.577423, 20.270348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382456, 32.554462, 20.246651>,  <28.143274, 32.540684, 20.232433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382456, 32.554462, 20.246651>,  <28.781092, 32.577423, 20.270348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382456, 32.554462, 20.246651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056056, 0.998135, -0.024178,
		0.060519, -0.020775, -0.997951,
		-0.996592, -0.057404, -0.059242,
		28.083479, 32.537243, 20.228878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587084, 33.028854, 19.809715>,  <28.781092, 32.577423, 20.270348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587084, 33.028854, 19.809715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261110, 32.963829, 20.032230>,  <28.065527, 32.924812, 20.165739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261110, 32.963829, 20.032230>,  <28.587084, 33.028854, 19.809715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261110, 32.963829, 20.032230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151556, 0.986230, 0.066190,
		-0.559387, -0.030368, -0.828350,
		-0.814934, -0.162567, 0.556287,
		28.016630, 32.915058, 20.199116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060865, 33.403580, 19.520708>,  <28.587084, 33.028854, 19.809715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060865, 33.403580, 19.520708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928682, 33.328266, 19.890648>,  <27.849373, 33.283077, 20.112612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.928682, 33.328266, 19.890648>,  <28.060865, 33.403580, 19.520708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928682, 33.328266, 19.890648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423350, 0.905363, 0.033051,
		-0.843548, -0.380613, -0.378892,
		-0.330456, -0.188284, 0.924850,
		27.829546, 33.271782, 20.168102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359859, 33.569881, 19.588465>,  <28.060865, 33.403580, 19.520708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359859, 33.569881, 19.588465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544294, 33.604843, 19.941681>,  <27.654955, 33.625820, 20.153610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544294, 33.604843, 19.941681>,  <27.359859, 33.569881, 19.588465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544294, 33.604843, 19.941681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242864, 0.969570, 0.030843,
		-0.853474, -0.228680, 0.468282,
		0.461086, 0.087406, 0.883040,
		27.682619, 33.631065, 20.206593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082155, 34.165531, 19.867146>,  <27.359859, 33.569881, 19.588465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082155, 34.165531, 19.867146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364981, 34.094269, 20.140881>,  <27.534676, 34.051510, 20.305122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364981, 34.094269, 20.140881>,  <27.082155, 34.165531, 19.867146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.364981, 34.094269, 20.140881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138404, 0.983892, 0.113140,
		-0.693472, 0.014718, 0.720334,
		0.707065, -0.178157, 0.684338,
		27.577101, 34.040821, 20.346182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892254, 34.361084, 20.555294>,  <27.082155, 34.165531, 19.867146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892254, 34.361084, 20.555294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286299, 34.389839, 20.492832>,  <27.522726, 34.407093, 20.455355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286299, 34.389839, 20.492832>,  <26.892254, 34.361084, 20.555294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.286299, 34.389839, 20.492832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088542, 0.990787, -0.102472,
		0.147348, 0.114773, 0.982403,
		0.985113, 0.071885, -0.156153,
		27.581833, 34.411404, 20.445986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307358, 34.045601, 20.253881>,  <26.892254, 34.361084, 20.555294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307358, 34.045601, 20.253881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190784, 34.237953, 20.584656>,  <26.120840, 34.353363, 20.783119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190784, 34.237953, 20.584656>,  <26.307358, 34.045601, 20.253881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.190784, 34.237953, 20.584656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877435, -0.478702, -0.030855,
		0.381018, -0.734574, 0.561450,
		-0.291433, 0.480880, 0.826935,
		26.103355, 34.382217, 20.832737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074089, 33.758492, 20.928415>,  <26.307358, 34.045601, 20.253881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074089, 33.758492, 20.928415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858723, 34.093719, 20.893219>,  <25.729504, 34.294857, 20.872101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858723, 34.093719, 20.893219>,  <26.074089, 33.758492, 20.928415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.858723, 34.093719, 20.893219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842474, -0.537652, 0.034182,
		-0.018661, 0.092534, 0.995535,
		-0.538414, 0.838074, -0.087991,
		25.697199, 34.345142, 20.866821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528521, 34.021957, 21.321886>,  <26.074089, 33.758492, 20.928415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528521, 34.021957, 21.321886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234571, 33.942593, 21.581299>,  <25.058201, 33.894974, 21.736946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234571, 33.942593, 21.581299>,  <25.528521, 34.021957, 21.321886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234571, 33.942593, 21.581299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553170, -0.728600, 0.403912,
		0.392379, 0.655572, 0.645185,
		-0.734875, -0.198410, 0.648531,
		25.014109, 33.883068, 21.775858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854965, 34.079288, 22.057402>,  <25.528521, 34.021957, 21.321886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854965, 34.079288, 22.057402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524544, 33.854103, 22.046719>,  <25.326292, 33.718994, 22.040308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524544, 33.854103, 22.046719>,  <25.854965, 34.079288, 22.057402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.524544, 33.854103, 22.046719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497550, -0.750692, 0.434633,
		-0.264732, 0.345741, 0.900212,
		-0.826052, -0.562961, -0.026709,
		25.276728, 33.685215, 22.038706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902641, 33.739571, 22.709421>,  <25.854965, 34.079288, 22.057402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902641, 33.739571, 22.709421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633589, 33.509556, 22.523129>,  <25.472158, 33.371548, 22.411354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633589, 33.509556, 22.523129>,  <25.902641, 33.739571, 22.709421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633589, 33.509556, 22.523129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482008, -0.818020, 0.313866,
		-0.561460, -0.013371, 0.827396,
		-0.672630, -0.575034, -0.465731,
		25.431801, 33.337044, 22.383410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831793, 33.242947, 23.169373>,  <25.902641, 33.739571, 22.709421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831793, 33.242947, 23.169373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653374, 33.085487, 22.847855>,  <25.546322, 32.991013, 22.654943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.653374, 33.085487, 22.847855>,  <25.831793, 33.242947, 23.169373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.653374, 33.085487, 22.847855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341983, -0.904899, 0.253386,
		-0.827097, -0.161862, 0.538248,
		-0.446047, -0.393647, -0.803794,
		25.519560, 32.967392, 22.606716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.314531, 32.723885, 23.362909>,  <25.831793, 33.242947, 23.169373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.314531, 32.723885, 23.362909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438374, 32.640305, 22.991859>,  <25.512678, 32.590157, 22.769230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438374, 32.640305, 22.991859>,  <25.314531, 32.723885, 23.362909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438374, 32.640305, 22.991859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348035, -0.882960, 0.315045,
		-0.884887, -0.420382, -0.200634,
		0.309591, -0.208951, -0.927627,
		25.531254, 32.577621, 22.713572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.225458, 31.972589, 23.265722>,  <25.314531, 32.723885, 23.362909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.225458, 31.972589, 23.265722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.473038, 32.077484, 22.969578>,  <25.621586, 32.140423, 22.791891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.473038, 32.077484, 22.969578>,  <25.225458, 31.972589, 23.265722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473038, 32.077484, 22.969578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396895, -0.917839, 0.006707,
		-0.677775, -0.297998, -0.672174,
		0.618947, 0.262237, -0.740363,
		25.658722, 32.156155, 22.747469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246138, 31.428572, 22.899818>,  <25.225458, 31.972589, 23.265722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246138, 31.428572, 22.899818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560028, 31.621021, 22.743500>,  <25.748363, 31.736492, 22.649708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.560028, 31.621021, 22.743500>,  <25.246138, 31.428572, 22.899818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.560028, 31.621021, 22.743500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498830, -0.864437, -0.062583,
		-0.367929, -0.145830, -0.918347,
		0.784727, 0.481125, -0.390796,
		25.795446, 31.765358, 22.626261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393633, 31.080517, 22.173800>,  <25.246138, 31.428572, 22.899818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393633, 31.080517, 22.173800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729986, 31.250801, 22.307480>,  <25.931797, 31.352972, 22.387688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729986, 31.250801, 22.307480>,  <25.393633, 31.080517, 22.173800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729986, 31.250801, 22.307480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429390, -0.900641, 0.066862,
		0.329460, 0.087280, -0.940127,
		0.840881, 0.425709, 0.334202,
		25.982250, 31.378513, 22.407740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981979, 30.738064, 21.858389>,  <25.393633, 31.080517, 22.173800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981979, 30.738064, 21.858389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170330, 30.950348, 22.140274>,  <26.283340, 31.077719, 22.309404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170330, 30.950348, 22.140274>,  <25.981979, 30.738064, 21.858389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170330, 30.950348, 22.140274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674304, -0.731597, 0.100398,
		0.568847, 0.427914, -0.702355,
		0.470879, 0.530712, 0.704711,
		26.311594, 31.109562, 22.351686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695143, 30.824656, 21.593927>,  <25.981979, 30.738064, 21.858389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695143, 30.824656, 21.593927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672155, 30.837944, 21.993046>,  <26.658363, 30.845917, 22.232517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.672155, 30.837944, 21.993046>,  <26.695143, 30.824656, 21.593927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672155, 30.837944, 21.993046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519558, -0.852443, 0.058305,
		0.852500, 0.521763, 0.031731,
		-0.057470, 0.033219, 0.997794,
		26.654915, 30.847910, 22.292385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.316273, 30.642664, 21.814516>,  <26.695143, 30.824656, 21.593927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.316273, 30.642664, 21.814516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117786, 30.572681, 22.154671>,  <26.998695, 30.530691, 22.358765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117786, 30.572681, 22.154671>,  <27.316273, 30.642664, 21.814516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117786, 30.572681, 22.154671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554338, -0.817686, 0.155237,
		0.668190, 0.548433, 0.502735,
		-0.496217, -0.174957, 0.850388,
		26.968922, 30.520195, 22.409786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811428, 30.485796, 22.305292>,  <27.316273, 30.642664, 21.814516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811428, 30.485796, 22.305292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470648, 30.319901, 22.433147>,  <27.266180, 30.220364, 22.509861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470648, 30.319901, 22.433147>,  <27.811428, 30.485796, 22.305292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470648, 30.319901, 22.433147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490187, -0.846344, 0.208372,
		0.184106, 0.334206, 0.924344,
		-0.851952, -0.414738, 0.319641,
		27.215063, 30.195478, 22.529039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964891, 30.207739, 22.874893>,  <27.811428, 30.485796, 22.305292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964891, 30.207739, 22.874893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624680, 30.022961, 22.774330>,  <27.420551, 29.912094, 22.713993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624680, 30.022961, 22.774330>,  <27.964891, 30.207739, 22.874893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624680, 30.022961, 22.774330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445364, -0.886878, 0.122875,
		-0.279729, -0.007459, 0.960050,
		-0.850531, -0.461943, -0.251408,
		27.369520, 29.884378, 22.698908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973383, 29.684690, 23.341543>,  <27.964891, 30.207739, 22.874893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973383, 29.684690, 23.341543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696791, 29.555664, 23.082993>,  <27.530834, 29.478249, 22.927862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696791, 29.555664, 23.082993>,  <27.973383, 29.684690, 23.341543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696791, 29.555664, 23.082993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420036, -0.907500, 0.003529,
		-0.587727, -0.269062, 0.763010,
		-0.691482, -0.322566, -0.646378,
		27.489346, 29.458895, 22.889080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963652, 29.523413, 24.119968>,  <27.973383, 29.684690, 23.341543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963652, 29.523413, 24.119968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317696, 29.577080, 24.298218>,  <28.530123, 29.609280, 24.405167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317696, 29.577080, 24.298218>,  <27.963652, 29.523413, 24.119968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317696, 29.577080, 24.298218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229359, 0.958935, 0.166848,
		-0.404938, -0.249886, 0.879535,
		0.885110, 0.134166, 0.445623,
		28.583229, 29.617331, 24.431904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885214, 29.931290, 24.726496>,  <27.963652, 29.523413, 24.119968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885214, 29.931290, 24.726496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274788, 29.967194, 24.643173>,  <28.508533, 29.988737, 24.593180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274788, 29.967194, 24.643173>,  <27.885214, 29.931290, 24.726496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274788, 29.967194, 24.643173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100273, 0.994138, -0.040444,
		0.203456, 0.060277, 0.977227,
		0.973936, 0.089761, -0.208307,
		28.566969, 29.994122, 24.580681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177223, 30.376005, 25.173340>,  <27.885214, 29.931290, 24.726496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177223, 30.376005, 25.173340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426430, 30.394825, 24.861023>,  <28.575954, 30.406116, 24.673634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426430, 30.394825, 24.861023>,  <28.177223, 30.376005, 25.173340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426430, 30.394825, 24.861023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047853, 0.998612, 0.021995,
		0.780743, 0.023660, 0.624404,
		0.623017, 0.047052, -0.780792,
		28.613335, 30.408941, 24.626785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672926, 30.833603, 25.317055>,  <28.177223, 30.376005, 25.173340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672926, 30.833603, 25.317055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662449, 30.841507, 24.917271>,  <28.656162, 30.846249, 24.677401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.662449, 30.841507, 24.917271>,  <28.672926, 30.833603, 25.317055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.662449, 30.841507, 24.917271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018431, 0.999644, 0.019278,
		0.999487, -0.017916, -0.026550,
		-0.026195, 0.019758, -0.999462,
		28.654591, 30.847435, 24.617432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255138, 31.246115, 25.169977>,  <28.672926, 30.833603, 25.317055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255138, 31.246115, 25.169977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009157, 31.244537, 24.854557>,  <28.861568, 31.243591, 24.665304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009157, 31.244537, 24.854557>,  <29.255138, 31.246115, 25.169977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009157, 31.244537, 24.854557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001410, 0.999992, -0.003901,
		0.788561, -0.001287, -0.614955,
		-0.614955, -0.003943, -0.788552,
		28.824671, 31.243355, 24.617990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607773, 31.632090, 24.751291>,  <29.255138, 31.246115, 25.169977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607773, 31.632090, 24.751291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238550, 31.642906, 24.597805>,  <29.017017, 31.649397, 24.505713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238550, 31.642906, 24.597805>,  <29.607773, 31.632090, 24.751291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238550, 31.642906, 24.597805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124471, 0.964857, -0.231424,
		0.363974, -0.261379, -0.893982,
		-0.923055, 0.027043, -0.383717,
		28.961634, 31.651020, 24.482691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732218, 32.025642, 24.228714>,  <29.607773, 31.632090, 24.751291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732218, 32.025642, 24.228714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333519, 32.030464, 24.260578>,  <29.094299, 32.033356, 24.279697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333519, 32.030464, 24.260578>,  <29.732218, 32.025642, 24.228714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333519, 32.030464, 24.260578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006640, 0.973092, -0.230319,
		-0.080294, -0.230099, -0.969849,
		-0.996749, 0.012054, 0.079661,
		29.034494, 32.034081, 24.284477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505169, 32.365273, 23.616199>,  <29.732218, 32.025642, 24.228714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505169, 32.365273, 23.616199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197157, 32.412895, 23.866920>,  <29.012350, 32.441471, 24.017353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197157, 32.412895, 23.866920>,  <29.505169, 32.365273, 23.616199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197157, 32.412895, 23.866920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008959, 0.984355, -0.175968,
		-0.637948, -0.129885, -0.759047,
		-0.770028, 0.119059, 0.626803,
		28.966148, 32.448612, 24.054962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986296, 32.817528, 23.338039>,  <29.505169, 32.365273, 23.616199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986296, 32.817528, 23.338039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900930, 32.826462, 23.728722>,  <28.849712, 32.831821, 23.963131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900930, 32.826462, 23.728722>,  <28.986296, 32.817528, 23.338039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900930, 32.826462, 23.728722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082255, 0.996600, -0.004817,
		-0.973493, 0.079311, -0.214524,
		-0.213412, 0.022335, 0.976707,
		28.836906, 32.833164, 24.021734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372528, 33.372799, 23.434830>,  <28.986296, 32.817528, 23.338039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372528, 33.372799, 23.434830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565168, 33.331039, 23.782890>,  <28.680752, 33.305984, 23.991726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565168, 33.331039, 23.782890>,  <28.372528, 33.372799, 23.434830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565168, 33.331039, 23.782890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005247, 0.993205, 0.116256,
		-0.876376, -0.051423, 0.478874,
		0.481599, -0.104397, 0.870152,
		28.709648, 33.299721, 24.043936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012913, 33.733173, 23.879976>,  <28.372528, 33.372799, 23.434830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012913, 33.733173, 23.879976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379423, 33.705627, 24.037811>,  <28.599329, 33.689102, 24.132511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379423, 33.705627, 24.037811>,  <28.012913, 33.733173, 23.879976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379423, 33.705627, 24.037811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033802, 0.994891, 0.095131,
		-0.399120, -0.073828, 0.913921,
		0.916275, -0.068861, 0.394585,
		28.654306, 33.684971, 24.156187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999531, 34.023438, 24.513771>,  <28.012913, 33.733173, 23.879976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999531, 34.023438, 24.513771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382290, 34.034431, 24.398125>,  <28.611946, 34.041027, 24.328737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382290, 34.034431, 24.398125>,  <27.999531, 34.023438, 24.513771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382290, 34.034431, 24.398125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054599, 0.960737, 0.272035,
		0.285243, -0.276096, 0.917827,
		0.956899, 0.027484, -0.289118,
		28.669359, 34.042675, 24.311390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.148365, 25.820103, 25.251268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.465973, 25.919941, 25.029552>,  <29.656538, 25.979843, 24.896523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.465973, 25.919941, 25.029552>,  <29.148365, 25.820103, 25.251268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465973, 25.919941, 25.029552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135485, 0.961547, 0.238896,
		0.592605, -0.114589, 0.797301,
		0.794018, 0.249593, -0.554292,
		29.704178, 25.994820, 24.863264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550810, 26.218948, 25.697458>,  <29.148365, 25.820103, 25.251268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550810, 26.218948, 25.697458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.644611, 26.330585, 25.324982>,  <29.700891, 26.397568, 25.101496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.644611, 26.330585, 25.324982>,  <29.550810, 26.218948, 25.697458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644611, 26.330585, 25.324982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252523, 0.942507, 0.218890,
		0.938746, 0.183819, 0.291490,
		0.234495, 0.279090, -0.931193,
		29.714962, 26.414312, 25.045624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901937, 26.910154, 25.797256>,  <29.550810, 26.218948, 25.697458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901937, 26.910154, 25.797256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.836342, 26.931667, 25.403259>,  <29.796984, 26.944574, 25.166861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.836342, 26.931667, 25.403259>,  <29.901937, 26.910154, 25.797256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836342, 26.931667, 25.403259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204778, 0.974905, 0.087323,
		0.964973, 0.216026, -0.148860,
		-0.163989, 0.053781, -0.984995,
		29.787146, 26.947802, 25.107761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341209, 27.428425, 25.518274>,  <29.901937, 26.910154, 25.797256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.341209, 27.428425, 25.518274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.014631, 27.371529, 25.294422>,  <29.818686, 27.337391, 25.160110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.014631, 27.371529, 25.294422>,  <30.341209, 27.428425, 25.518274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014631, 27.371529, 25.294422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194606, 0.980265, 0.034761,
		0.543643, 0.137288, -0.828012,
		-0.816444, -0.142239, -0.559632,
		29.769697, 27.328857, 25.126534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320890, 28.060118, 25.158794>,  <30.341209, 27.428425, 25.518274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320890, 28.060118, 25.158794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.971062, 27.915779, 25.029232>,  <29.761164, 27.829176, 24.951494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.971062, 27.915779, 25.029232>,  <30.320890, 28.060118, 25.158794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971062, 27.915779, 25.029232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357995, 0.931050, -0.070613,
		0.327054, 0.054201, -0.943450,
		-0.874571, -0.360845, -0.323907,
		29.708691, 27.807526, 24.932060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192366, 28.453505, 24.632410>,  <30.320890, 28.060118, 25.158794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192366, 28.453505, 24.632410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.837347, 28.309364, 24.747238>,  <29.624336, 28.222881, 24.816135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.837347, 28.309364, 24.747238>,  <30.192366, 28.453505, 24.632410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837347, 28.309364, 24.747238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402157, 0.909971, -0.101110,
		-0.224792, -0.205188, -0.952558,
		-0.887546, -0.360349, 0.287072,
		29.571083, 28.201260, 24.833359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775801, 28.420662, 23.958555>,  <30.192366, 28.453505, 24.632410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775801, 28.420662, 23.958555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.540215, 28.437485, 24.281380>,  <29.398863, 28.447578, 24.475075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.540215, 28.437485, 24.281380>,  <29.775801, 28.420662, 23.958555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540215, 28.437485, 24.281380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457048, 0.806268, -0.375551,
		-0.666503, -0.590053, -0.455643,
		-0.588965, 0.042055, 0.807063,
		29.363525, 28.450102, 24.523499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177271, 28.709970, 23.756992>,  <29.775801, 28.420662, 23.958555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177271, 28.709970, 23.756992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.132416, 28.782429, 24.147808>,  <29.105503, 28.825905, 24.382298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.132416, 28.782429, 24.147808>,  <29.177271, 28.709970, 23.756992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132416, 28.782429, 24.147808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412534, 0.886020, -0.211621,
		-0.904014, -0.426794, -0.024628,
		-0.112139, 0.181148, 0.977041,
		29.098774, 28.836773, 24.440920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443857, 28.982876, 23.833475>,  <29.177271, 28.709970, 23.756992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443857, 28.982876, 23.833475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.625690, 29.113846, 24.164810>,  <28.734791, 29.192429, 24.363611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.625690, 29.113846, 24.164810>,  <28.443857, 28.982876, 23.833475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625690, 29.113846, 24.164810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450898, 0.886611, -0.103012,
		-0.768143, -0.326668, 0.550677,
		0.454585, 0.327427, 0.828338,
		28.762066, 29.212074, 24.413311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740553, 29.015987, 23.555614>,  <28.443857, 28.982876, 23.833475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740553, 29.015987, 23.555614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.630058, 29.005817, 23.171314>,  <27.563761, 28.999716, 22.940733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.630058, 29.005817, 23.171314>,  <27.740553, 29.015987, 23.555614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630058, 29.005817, 23.171314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188289, -0.981710, -0.028159,
		-0.942465, -0.188678, 0.275974,
		-0.276239, -0.025424, -0.960753,
		27.547186, 28.998190, 22.883089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141451, 28.593630, 23.457361>,  <27.740553, 29.015987, 23.555614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141451, 28.593630, 23.457361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.327250, 28.623997, 23.104435>,  <27.438728, 28.642218, 22.892679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.327250, 28.623997, 23.104435>,  <27.141451, 28.593630, 23.457361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327250, 28.623997, 23.104435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069444, -0.990128, -0.121754,
		-0.882849, 0.117825, -0.454637,
		0.464494, 0.075919, -0.882316,
		27.466599, 28.646772, 22.839741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709734, 28.223251, 22.979691>,  <27.141451, 28.593630, 23.457361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709734, 28.223251, 22.979691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.083603, 28.239204, 22.838387>,  <27.307924, 28.248775, 22.753605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.083603, 28.239204, 22.838387>,  <26.709734, 28.223251, 22.979691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083603, 28.239204, 22.838387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087495, -0.937316, -0.337318,
		-0.344569, 0.346191, -0.872596,
		0.934675, 0.039882, -0.353260,
		27.364006, 28.251169, 22.732409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.699966, 27.794319, 22.356428>,  <26.709734, 28.223251, 22.979691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.699966, 27.794319, 22.356428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.089636, 27.831310, 22.438831>,  <27.323437, 27.853504, 22.488274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.089636, 27.831310, 22.438831>,  <26.699966, 27.794319, 22.356428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089636, 27.831310, 22.438831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176849, -0.879718, -0.441385,
		0.140410, 0.466416, -0.873350,
		0.974171, 0.092476, 0.206006,
		27.381887, 27.859053, 22.500633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050993, 27.794008, 21.714655>,  <26.699966, 27.794319, 22.356428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050993, 27.794008, 21.714655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.335098, 27.685760, 21.974590>,  <27.505562, 27.620811, 22.130552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.335098, 27.685760, 21.974590>,  <27.050993, 27.794008, 21.714655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335098, 27.685760, 21.974590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170965, -0.829194, -0.532173,
		0.682860, 0.489083, -0.542679,
		0.710263, -0.270620, 0.649839,
		27.548178, 27.604574, 22.169542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638596, 27.563770, 21.292879>,  <27.050993, 27.794008, 21.714655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638596, 27.563770, 21.292879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.707470, 27.432625, 21.664440>,  <27.748795, 27.353937, 21.887377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.707470, 27.432625, 21.664440>,  <27.638596, 27.563770, 21.292879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707470, 27.432625, 21.664440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357931, -0.857708, -0.369084,
		0.917736, 0.396032, -0.030331,
		0.172184, -0.327865, 0.928901,
		27.759125, 27.334265, 21.943111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274307, 27.284508, 21.294477>,  <27.638596, 27.563770, 21.292879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274307, 27.284508, 21.294477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.127039, 27.118462, 21.627254>,  <28.038679, 27.018835, 21.826921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.127039, 27.118462, 21.627254>,  <28.274307, 27.284508, 21.294477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.127039, 27.118462, 21.627254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492729, -0.845924, -0.204036,
		0.788460, 0.334804, 0.515982,
		-0.368169, -0.415114, 0.831945,
		28.016588, 26.993927, 21.876839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864206, 27.038992, 21.723526>,  <28.274307, 27.284508, 21.294477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864206, 27.038992, 21.723526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.536465, 26.825912, 21.808281>,  <28.339821, 26.698065, 21.859135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.536465, 26.825912, 21.808281>,  <28.864206, 27.038992, 21.723526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536465, 26.825912, 21.808281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483757, -0.840767, -0.243084,
		0.307640, -0.096669, 0.946580,
		-0.819352, -0.532697, 0.211889,
		28.290659, 26.666103, 21.871847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.154867, 26.386894, 21.990721>,  <28.864206, 27.038992, 21.723526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.154867, 26.386894, 21.990721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.776751, 26.292797, 21.900314>,  <28.549881, 26.236340, 21.846071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.776751, 26.292797, 21.900314>,  <29.154867, 26.386894, 21.990721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776751, 26.292797, 21.900314> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306884, -0.876246, -0.371504,
		-0.110653, -0.420541, 0.900501,
		-0.945293, -0.235241, -0.226016,
		28.493162, 26.222225, 21.832510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084885, 25.653368, 22.256758>,  <29.154867, 26.386894, 21.990721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084885, 25.653368, 22.256758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.797716, 25.717930, 21.985897>,  <28.625414, 25.756666, 21.823380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.797716, 25.717930, 21.985897>,  <29.084885, 25.653368, 22.256758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797716, 25.717930, 21.985897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075829, -0.948828, -0.306554,
		-0.691980, -0.271430, 0.668946,
		-0.717923, 0.161404, -0.677152,
		28.582338, 25.766352, 21.782751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591110, 25.106802, 22.329121>,  <29.084885, 25.653368, 22.256758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591110, 25.106802, 22.329121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.544497, 25.264400, 21.964443>,  <28.516529, 25.358959, 21.745636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.544497, 25.264400, 21.964443>,  <28.591110, 25.106802, 22.329121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544497, 25.264400, 21.964443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005160, -0.918176, -0.396139,
		-0.993174, -0.041459, 0.109031,
		-0.116533, 0.393997, -0.911694,
		28.509537, 25.382599, 21.690935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159218, 24.645893, 22.043251>,  <28.591110, 25.106802, 22.329121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159218, 24.645893, 22.043251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.326599, 24.831707, 21.731071>,  <28.427029, 24.943195, 21.543762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.326599, 24.831707, 21.731071>,  <28.159218, 24.645893, 22.043251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326599, 24.831707, 21.731071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044803, -0.868814, -0.493107,
		-0.907132, 0.171376, -0.384371,
		0.418454, 0.464534, -0.780451,
		28.452135, 24.971067, 21.496937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064272, 24.124907, 21.560705>,  <28.159218, 24.645893, 22.043251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064272, 24.124907, 21.560705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.316334, 24.373631, 21.374691>,  <28.467571, 24.522865, 21.263083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.316334, 24.373631, 21.374691>,  <28.064272, 24.124907, 21.560705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316334, 24.373631, 21.374691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322693, -0.754462, -0.571539,
		-0.706240, 0.210094, -0.676081,
		0.630154, 0.621810, -0.465035,
		28.505381, 24.560173, 21.235180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926062, 24.069403, 20.889816>,  <28.064272, 24.124907, 21.560705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.926062, 24.069403, 20.889816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.302828, 24.203735, 20.891319>,  <28.528887, 24.284336, 20.892221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.302828, 24.203735, 20.891319>,  <27.926062, 24.069403, 20.889816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302828, 24.203735, 20.891319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255763, -0.709996, -0.656118,
		-0.217677, 0.618968, -0.754649,
		0.941914, 0.335833, 0.003759,
		28.585402, 24.304485, 20.892447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.823769, 25.212898, 20.772249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550083, 25.179321, 21.062023>,  <34.385872, 25.159176, 21.235888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.550083, 25.179321, 21.062023>,  <34.823769, 25.212898, 20.772249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550083, 25.179321, 21.062023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068791, 0.996353, 0.050478,
		-0.726032, -0.015297, -0.687491,
		-0.684211, -0.083942, 0.724437,
		34.344818, 25.154139, 21.279354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326054, 25.827038, 20.688078>,  <34.823769, 25.212898, 20.772249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326054, 25.827038, 20.688078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.261887, 25.709057, 21.064857>,  <34.223385, 25.638268, 21.290926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.261887, 25.709057, 21.064857>,  <34.326054, 25.827038, 20.688078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261887, 25.709057, 21.064857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138517, 0.951592, 0.274383,
		-0.977281, -0.086459, -0.193512,
		-0.160422, -0.294954, 0.941948,
		34.213760, 25.620571, 21.347443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866135, 26.226875, 20.921837>,  <34.326054, 25.827038, 20.688078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866135, 26.226875, 20.921837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.972847, 26.088284, 21.281567>,  <34.036873, 26.005129, 21.497404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.972847, 26.088284, 21.281567>,  <33.866135, 26.226875, 20.921837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972847, 26.088284, 21.281567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329657, 0.844049, 0.422974,
		-0.905624, -0.409309, 0.110957,
		0.266780, -0.346478, 0.899323,
		34.052879, 25.984341, 21.551363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273010, 26.197315, 21.346228>,  <33.866135, 26.226875, 20.921837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273010, 26.197315, 21.346228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.597343, 26.245754, 21.575275>,  <33.791943, 26.274817, 21.712704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.597343, 26.245754, 21.575275>,  <33.273010, 26.197315, 21.346228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597343, 26.245754, 21.575275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319607, 0.911220, 0.259862,
		-0.490314, -0.393717, 0.777547,
		0.810829, 0.121096, 0.572618,
		33.840591, 26.282084, 21.747061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034447, 26.381105, 21.926275>,  <33.273010, 26.197315, 21.346228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034447, 26.381105, 21.926275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412296, 26.505665, 21.967670>,  <33.639008, 26.580400, 21.992508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412296, 26.505665, 21.967670>,  <33.034447, 26.381105, 21.926275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412296, 26.505665, 21.967670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320608, 0.943035, 0.088863,
		-0.069922, -0.117122, 0.990653,
		0.944628, 0.311397, 0.103489,
		33.695686, 26.599085, 21.998716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196720, 26.911318, 22.584785>,  <33.034447, 26.381105, 21.926275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196720, 26.911318, 22.584785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.521721, 26.976433, 22.360878>,  <33.716721, 27.015503, 22.226534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.521721, 26.976433, 22.360878>,  <33.196720, 26.911318, 22.584785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521721, 26.976433, 22.360878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100530, 0.984961, 0.140521,
		0.574226, -0.057899, 0.816647,
		0.812501, 0.162789, -0.559770,
		33.765472, 27.025269, 22.192947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618576, 27.379322, 23.009180>,  <33.196720, 26.911318, 22.584785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618576, 27.379322, 23.009180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.751202, 27.413578, 22.633366>,  <33.830776, 27.434132, 22.407877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.751202, 27.413578, 22.633366>,  <33.618576, 27.379322, 23.009180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751202, 27.413578, 22.633366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014761, 0.996221, 0.085595,
		0.943316, -0.014512, 0.331577,
		0.331566, 0.085638, -0.939537,
		33.850670, 27.439270, 22.351505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028713, 27.900856, 23.014078>,  <33.618576, 27.379322, 23.009180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028713, 27.900856, 23.014078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.977962, 27.867397, 22.618725>,  <33.947510, 27.847322, 22.381512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.977962, 27.867397, 22.618725>,  <34.028713, 27.900856, 23.014078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977962, 27.867397, 22.618725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136460, 0.985492, -0.100917,
		0.982487, -0.147679, -0.113619,
		-0.126874, -0.083646, -0.988386,
		33.939899, 27.842304, 22.322208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466034, 28.301443, 22.792959>,  <34.028713, 27.900856, 23.014078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466034, 28.301443, 22.792959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.202003, 28.284866, 22.492935>,  <34.043587, 28.274921, 22.312922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.202003, 28.284866, 22.492935>,  <34.466034, 28.301443, 22.792959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202003, 28.284866, 22.492935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007013, 0.998774, -0.049011,
		0.751169, -0.027090, -0.659554,
		-0.660072, -0.041441, -0.750058,
		34.003983, 28.272434, 22.267918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720833, 28.668900, 22.263203>,  <34.466034, 28.301443, 22.792959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720833, 28.668900, 22.263203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325172, 28.646854, 22.208733>,  <34.087776, 28.633627, 22.176050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.325172, 28.646854, 22.208733>,  <34.720833, 28.668900, 22.263203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325172, 28.646854, 22.208733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055926, 0.998433, 0.002148,
		0.135842, 0.009741, -0.990682,
		-0.989151, -0.055113, -0.136174,
		34.028427, 28.630320, 22.167881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594257, 29.185167, 21.790781>,  <34.720833, 28.668900, 22.263203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594257, 29.185167, 21.790781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.225311, 29.098907, 21.918995>,  <34.003944, 29.047152, 21.995922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.225311, 29.098907, 21.918995>,  <34.594257, 29.185167, 21.790781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225311, 29.098907, 21.918995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251765, 0.964851, -0.075342,
		-0.293019, -0.150191, -0.944236,
		-0.922363, -0.215649, 0.320533,
		33.948601, 29.034212, 22.015154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148933, 29.557161, 21.351648>,  <34.594257, 29.185167, 21.790781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148933, 29.557161, 21.351648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.896767, 29.469517, 21.649525>,  <33.745468, 29.416929, 21.828251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.896767, 29.469517, 21.649525>,  <34.148933, 29.557161, 21.351648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896767, 29.469517, 21.649525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454225, 0.882076, -0.124985,
		-0.629489, -0.417050, -0.655601,
		-0.630415, -0.219113, 0.744692,
		33.707642, 29.403782, 21.872932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367516, 29.762728, 21.131210>,  <34.148933, 29.557161, 21.351648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367516, 29.762728, 21.131210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.408504, 29.768074, 21.529068>,  <33.433098, 29.771282, 21.767782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.408504, 29.768074, 21.529068>,  <33.367516, 29.762728, 21.131210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408504, 29.768074, 21.529068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459297, 0.887578, 0.035392,
		-0.882353, -0.460464, 0.097089,
		0.102471, 0.013364, 0.994646,
		33.439247, 29.772083, 21.827461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736244, 29.857510, 21.355698>,  <33.367516, 29.762728, 21.131210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736244, 29.857510, 21.355698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.997272, 29.989544, 21.628517>,  <33.153889, 30.068764, 21.792210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.997272, 29.989544, 21.628517>,  <32.736244, 29.857510, 21.355698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997272, 29.989544, 21.628517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444433, 0.895774, -0.008294,
		-0.613701, -0.297713, 0.731258,
		0.652572, 0.330085, 0.682051,
		33.193043, 30.088570, 21.833132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071198, 30.010368, 21.155764>,  <32.736244, 29.857510, 21.355698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071198, 30.010368, 21.155764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984133, 30.080292, 20.771667>,  <31.931894, 30.122246, 20.541210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984133, 30.080292, 20.771667>,  <32.071198, 30.010368, 21.155764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984133, 30.080292, 20.771667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186820, -0.958178, -0.216780,
		-0.957981, -0.226574, 0.175888,
		-0.217649, 0.174812, -0.960245,
		31.918835, 30.132734, 20.483595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753284, 29.323423, 20.916365>,  <32.071198, 30.010368, 21.155764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753284, 29.323423, 20.916365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.860682, 29.511505, 20.580074>,  <31.925119, 29.624353, 20.378300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.860682, 29.511505, 20.580074>,  <31.753284, 29.323423, 20.916365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860682, 29.511505, 20.580074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192069, -0.881379, -0.431603,
		-0.943940, -0.045596, -0.326954,
		0.268491, 0.470205, -0.840726,
		31.941229, 29.652567, 20.327856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197870, 29.197706, 20.450573>,  <31.753284, 29.323423, 20.916365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197870, 29.197706, 20.450573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.513317, 29.284363, 20.220390>,  <31.702585, 29.336357, 20.082281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.513317, 29.284363, 20.220390>,  <31.197870, 29.197706, 20.450573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513317, 29.284363, 20.220390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073541, -0.895928, -0.438069,
		-0.610469, 0.387789, -0.690613,
		0.788618, 0.216639, -0.575455,
		31.749903, 29.349354, 20.047754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047546, 28.989887, 19.839880>,  <31.197870, 29.197706, 20.450573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047546, 28.989887, 19.839880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.443758, 29.005821, 19.787319>,  <31.681484, 29.015383, 19.755783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.443758, 29.005821, 19.787319>,  <31.047546, 28.989887, 19.839880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443758, 29.005821, 19.787319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016666, -0.915037, -0.403027,
		-0.136294, 0.401399, -0.905706,
		0.990528, 0.039836, -0.131404,
		31.740917, 29.017773, 19.747898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096292, 28.617796, 19.259136>,  <31.047546, 28.989887, 19.839880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096292, 28.617796, 19.259136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.472267, 28.596676, 19.394032>,  <31.697851, 28.584003, 19.474968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.472267, 28.596676, 19.394032>,  <31.096292, 28.617796, 19.259136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472267, 28.596676, 19.394032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054718, -0.951882, -0.301539,
		0.336933, 0.301881, -0.891821,
		0.939937, -0.052799, 0.337239,
		31.754248, 28.580835, 19.495203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463854, 28.186470, 18.689995>,  <31.096292, 28.617796, 19.259136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463854, 28.186470, 18.689995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.683632, 28.173206, 19.023945>,  <31.815498, 28.165247, 19.224314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.683632, 28.173206, 19.023945>,  <31.463854, 28.186470, 18.689995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683632, 28.173206, 19.023945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081085, -0.992380, -0.092780,
		0.831587, 0.118673, -0.542567,
		0.549443, -0.033160, 0.834873,
		31.848465, 28.163258, 19.274406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183571, 27.779387, 18.556877>,  <31.463854, 28.186470, 18.689995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183571, 27.779387, 18.556877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.097275, 27.758087, 18.946877>,  <32.045498, 27.745308, 19.180876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.097275, 27.758087, 18.946877>,  <32.183571, 27.779387, 18.556877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097275, 27.758087, 18.946877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151530, -0.988241, -0.020442,
		0.964621, 0.143331, 0.221275,
		-0.215743, -0.053248, 0.974997,
		32.032551, 27.742113, 19.239376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580524, 27.175097, 18.840681>,  <32.183571, 27.779387, 18.556877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580524, 27.175097, 18.840681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.350826, 27.246685, 19.160233>,  <32.213005, 27.289639, 19.351963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.350826, 27.246685, 19.160233>,  <32.580524, 27.175097, 18.840681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350826, 27.246685, 19.160233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287817, -0.869387, 0.401655,
		0.766421, 0.460580, 0.447732,
		-0.574247, 0.178973, 0.798880,
		32.178551, 27.300377, 19.399897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951679, 27.096684, 19.512077>,  <32.580524, 27.175097, 18.840681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951679, 27.096684, 19.512077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.565331, 27.015102, 19.575951>,  <32.333523, 26.966154, 19.614275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.565331, 27.015102, 19.575951>,  <32.951679, 27.096684, 19.512077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565331, 27.015102, 19.575951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254479, -0.862159, 0.438088,
		0.048326, 0.463773, 0.884635,
		-0.965870, -0.203951, 0.159685,
		32.275570, 26.953917, 19.623856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786446, 26.741198, 20.253824>,  <32.951679, 27.096684, 19.512077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786446, 26.741198, 20.253824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.445267, 26.639549, 20.071442>,  <32.240559, 26.578560, 19.962011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.445267, 26.639549, 20.071442>,  <32.786446, 26.741198, 20.253824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445267, 26.639549, 20.071442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118507, -0.944959, 0.304972,
		-0.508360, 0.206093, 0.836120,
		-0.852952, -0.254122, -0.455956,
		32.189381, 26.563313, 19.934654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361210, 26.230288, 20.674940>,  <32.786446, 26.741198, 20.253824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361210, 26.230288, 20.674940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.268162, 26.201393, 20.286987>,  <32.212334, 26.184057, 20.054216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.268162, 26.201393, 20.286987>,  <32.361210, 26.230288, 20.674940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268162, 26.201393, 20.286987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021624, -0.997376, 0.069095,
		-0.972327, -0.004900, 0.233572,
		-0.232620, -0.072234, -0.969882,
		32.198376, 26.179724, 19.996023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869276, 25.704775, 20.700991>,  <32.361210, 26.230288, 20.674940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869276, 25.704775, 20.700991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.985182, 25.751976, 20.321072>,  <32.054726, 25.780296, 20.093121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.985182, 25.751976, 20.321072>,  <31.869276, 25.704775, 20.700991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985182, 25.751976, 20.321072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214732, -0.959057, -0.184663,
		-0.932699, 0.257460, -0.252560,
		0.289762, 0.118003, -0.949796,
		32.072109, 25.787376, 20.036133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380083, 25.307011, 20.472395>,  <31.869276, 25.704775, 20.700991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380083, 25.307011, 20.472395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.639986, 25.339909, 20.170124>,  <31.795929, 25.359648, 19.988762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.639986, 25.339909, 20.170124>,  <31.380083, 25.307011, 20.472395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.639986, 25.339909, 20.170124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104956, -0.974901, -0.196347,
		-0.752859, 0.206891, -0.624819,
		0.649759, 0.082243, -0.755678,
		31.834913, 25.364582, 19.943420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036602, 25.035156, 19.788717>,  <31.380083, 25.307011, 20.472395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036602, 25.035156, 19.788717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434261, 25.007683, 19.822071>,  <31.672857, 24.991198, 19.842083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434261, 25.007683, 19.822071>,  <31.036602, 25.035156, 19.788717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434261, 25.007683, 19.822071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054820, -0.985842, -0.158461,
		0.093090, 0.152962, -0.983838,
		0.994147, -0.068685, 0.083387,
		31.732506, 24.987078, 19.847088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839153, 25.231733, 19.035866>,  <31.036602, 25.035156, 19.788717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839153, 25.231733, 19.035866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.486702, 25.209251, 18.848057>,  <30.275230, 25.195763, 18.735371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.486702, 25.209251, 18.848057>,  <30.839153, 25.231733, 19.035866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486702, 25.209251, 18.848057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037108, 0.981632, -0.187142,
		0.471416, -0.182319, -0.862859,
		-0.881130, -0.056203, -0.469523,
		30.222363, 25.192390, 18.707199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804621, 25.749176, 18.411699>,  <30.839153, 25.231733, 19.035866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804621, 25.749176, 18.411699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.421440, 25.678429, 18.502075>,  <30.191532, 25.635981, 18.556301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.421440, 25.678429, 18.502075>,  <30.804621, 25.749176, 18.411699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421440, 25.678429, 18.502075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239194, 0.927171, -0.288340,
		-0.158487, -0.330259, -0.930490,
		-0.957950, -0.176870, 0.225941,
		30.134056, 25.625368, 18.569857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383751, 26.108625, 17.860975>,  <30.804621, 25.749176, 18.411699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383751, 26.108625, 17.860975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.128601, 26.044525, 18.162289>,  <29.975512, 26.006065, 18.343077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.128601, 26.044525, 18.162289>,  <30.383751, 26.108625, 17.860975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128601, 26.044525, 18.162289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283964, 0.958135, -0.036627,
		-0.715877, -0.237269, -0.656676,
		-0.637875, -0.160252, 0.753283,
		29.937239, 25.996450, 18.388273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714300, 26.435619, 17.672972>,  <30.383751, 26.108625, 17.860975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714300, 26.435619, 17.672972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.675097, 26.362930, 18.064354>,  <29.651575, 26.319317, 18.299183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.675097, 26.362930, 18.064354>,  <29.714300, 26.435619, 17.672972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675097, 26.362930, 18.064354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437842, 0.890793, 0.121584,
		-0.893694, -0.416492, -0.166869,
		-0.098007, -0.181721, 0.978454,
		29.645695, 26.308414, 18.357891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966433, 26.555138, 17.766666>,  <29.714300, 26.435619, 17.672972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966433, 26.555138, 17.766666> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.153372, 26.578972, 18.119492>,  <29.265535, 26.593273, 18.331186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.153372, 26.578972, 18.119492>,  <28.966433, 26.555138, 17.766666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153372, 26.578972, 18.119492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529799, 0.817604, 0.225472,
		-0.707744, -0.572690, 0.413673,
		0.467346, 0.059587, 0.882064,
		29.293575, 26.596848, 18.384111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447519, 26.667284, 18.304300>,  <28.966433, 26.555138, 17.766666>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447519, 26.667284, 18.304300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.803301, 26.785374, 18.443851>,  <29.016769, 26.856228, 18.527582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.803301, 26.785374, 18.443851>,  <28.447519, 26.667284, 18.304300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803301, 26.785374, 18.443851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413943, 0.843951, 0.341172,
		-0.193713, -0.447872, 0.872861,
		0.889453, 0.295225, 0.348878,
		29.070137, 26.873941, 18.548515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299068, 27.081308, 19.014256>,  <28.447519, 26.667284, 18.304300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299068, 27.081308, 19.014256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.661505, 27.194244, 18.888218>,  <28.878967, 27.262005, 18.812595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.661505, 27.194244, 18.888218>,  <28.299068, 27.081308, 19.014256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661505, 27.194244, 18.888218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212318, 0.947631, 0.238571,
		0.365950, -0.149267, 0.918586,
		0.906091, 0.282338, -0.315094,
		28.933332, 27.278946, 18.793690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585629, 27.391836, 19.579603>,  <28.299068, 27.081308, 19.014256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585629, 27.391836, 19.579603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.762604, 27.515961, 19.243042>,  <28.868788, 27.590435, 19.041105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.762604, 27.515961, 19.243042>,  <28.585629, 27.391836, 19.579603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762604, 27.515961, 19.243042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275299, 0.939921, 0.201887,
		0.853499, 0.142315, 0.501284,
		0.442436, 0.310313, -0.841401,
		28.895334, 27.609055, 18.990622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872534, 27.969507, 19.856150>,  <28.585629, 27.391836, 19.579603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872534, 27.969507, 19.856150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.859875, 28.011860, 19.458599>,  <28.852280, 28.037271, 19.220070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.859875, 28.011860, 19.458599>,  <28.872534, 27.969507, 19.856150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859875, 28.011860, 19.458599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245448, 0.963101, 0.110418,
		0.968893, 0.247440, -0.004493,
		-0.031649, 0.105881, -0.993875,
		28.850380, 28.043625, 19.160437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331579, 28.420334, 19.769548>,  <28.872534, 27.969507, 19.856150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331579, 28.420334, 19.769548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.080511, 28.436260, 19.458565>,  <28.929871, 28.445816, 19.271975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.080511, 28.436260, 19.458565>,  <29.331579, 28.420334, 19.769548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080511, 28.436260, 19.458565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086332, 0.988971, 0.120344,
		0.773678, 0.142655, -0.617310,
		-0.627669, 0.039814, -0.777461,
		28.892210, 28.448204, 19.225327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592901, 29.025480, 19.453381>,  <29.331579, 28.420334, 19.769548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592901, 29.025480, 19.453381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.218311, 28.958267, 19.330235>,  <28.993557, 28.917938, 19.256348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.218311, 28.958267, 19.330235>,  <29.592901, 29.025480, 19.453381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218311, 28.958267, 19.330235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174585, 0.984622, -0.006352,
		0.304196, 0.047800, -0.951409,
		-0.936475, -0.168034, -0.307864,
		28.937368, 28.907858, 19.237875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554974, 29.520365, 18.965788>,  <29.592901, 29.025480, 19.453381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554974, 29.520365, 18.965788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.181728, 29.393318, 19.033218>,  <28.957781, 29.317089, 19.073677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.181728, 29.393318, 19.033218>,  <29.554974, 29.520365, 18.965788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181728, 29.393318, 19.033218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321631, 0.946858, 0.003678,
		-0.160786, -0.050788, -0.985682,
		-0.933114, -0.317618, 0.168577,
		28.901794, 29.298033, 19.083792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199228, 29.857883, 18.432112>,  <29.554974, 29.520365, 18.965788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199228, 29.857883, 18.432112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.960850, 29.743259, 18.732174>,  <28.817823, 29.674484, 18.912210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.960850, 29.743259, 18.732174>,  <29.199228, 29.857883, 18.432112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960850, 29.743259, 18.732174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289787, 0.947958, 0.131906,
		-0.748915, -0.138776, -0.647972,
		-0.595945, -0.286561, 0.750155,
		28.782066, 29.657291, 18.957220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541338, 30.180033, 18.405710>,  <29.199228, 29.857883, 18.432112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541338, 30.180033, 18.405710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.653772, 30.099693, 18.781082>,  <28.721233, 30.051491, 19.006306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.653772, 30.099693, 18.781082>,  <28.541338, 30.180033, 18.405710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.653772, 30.099693, 18.781082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095067, 0.967218, 0.235484,
		-0.954962, -0.155405, 0.252778,
		0.281087, -0.200847, 0.938430,
		28.738098, 30.039438, 19.062611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.543037, 36.506916, 29.181894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.743866, 36.199535, 29.340595>,  <38.864361, 36.015106, 29.435816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.743866, 36.199535, 29.340595>,  <38.543037, 36.506916, 29.181894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743866, 36.199535, 29.340595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480352, -0.133707, -0.866825,
		0.719158, 0.625788, 0.301995,
		0.502070, -0.768448, 0.396754,
		38.894485, 35.969002, 29.459621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078480, 36.581734, 28.866924>,  <38.543037, 36.506916, 29.181894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078480, 36.581734, 28.866924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.126884, 36.202324, 28.983990>,  <39.155926, 35.974678, 29.054230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.126884, 36.202324, 28.983990>,  <39.078480, 36.581734, 28.866924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126884, 36.202324, 28.983990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310800, -0.243802, -0.918675,
		0.942741, 0.202127, 0.265300,
		0.121009, -0.948528, 0.292663,
		39.163189, 35.917767, 29.071789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644627, 36.360794, 28.747511>,  <39.078480, 36.581734, 28.866924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644627, 36.360794, 28.747511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.467182, 36.002907, 28.768284>,  <39.360718, 35.788174, 28.780748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.467182, 36.002907, 28.768284>,  <39.644627, 36.360794, 28.747511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467182, 36.002907, 28.768284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392407, -0.246004, -0.886284,
		0.805748, -0.372783, 0.460221,
		-0.443607, -0.894715, 0.051934,
		39.334099, 35.734493, 28.783865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044369, 35.944283, 28.447943>,  <39.644627, 36.360794, 28.747511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044369, 35.944283, 28.447943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.717186, 35.714203, 28.444126>,  <39.520878, 35.576153, 28.441835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.717186, 35.714203, 28.444126>,  <40.044369, 35.944283, 28.447943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717186, 35.714203, 28.444126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306810, -0.422143, -0.853031,
		0.486636, -0.700670, 0.521772,
		-0.817957, -0.575201, -0.009542,
		39.471798, 35.541641, 28.441263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245720, 35.230453, 28.358109>,  <40.044369, 35.944283, 28.447943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245720, 35.230453, 28.358109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.865902, 35.265560, 28.237663>,  <39.638012, 35.286625, 28.165396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.865902, 35.265560, 28.237663>,  <40.245720, 35.230453, 28.358109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865902, 35.265560, 28.237663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220599, -0.495575, -0.840084,
		-0.222954, -0.864120, 0.451208,
		-0.949541, 0.087764, -0.301114,
		39.581039, 35.291889, 28.147329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086487, 34.560741, 28.178944>,  <40.245720, 35.230453, 28.358109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086487, 34.560741, 28.178944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.836750, 34.822704, 28.008629>,  <39.686909, 34.979881, 27.906441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.836750, 34.822704, 28.008629>,  <40.086487, 34.560741, 28.178944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836750, 34.822704, 28.008629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032467, -0.522846, -0.851809,
		-0.780480, -0.545640, 0.305169,
		-0.624337, 0.654912, -0.425786,
		39.649448, 35.019176, 27.880894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693253, 34.205853, 27.620979>,  <40.086487, 34.560741, 28.178944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693253, 34.205853, 27.620979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.607349, 34.582420, 27.516972>,  <39.555809, 34.808361, 27.454567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.607349, 34.582420, 27.516972>,  <39.693253, 34.205853, 27.620979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607349, 34.582420, 27.516972> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014769, -0.263069, -0.964664,
		-0.976556, -0.211010, 0.042592,
		-0.214758, 0.941419, -0.260018,
		39.542923, 34.864845, 27.438967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028820, 34.172810, 27.295788>,  <39.693253, 34.205853, 27.620979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028820, 34.172810, 27.295788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.194309, 34.510159, 27.158646>,  <39.293602, 34.712570, 27.076361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.194309, 34.510159, 27.158646>,  <39.028820, 34.172810, 27.295788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194309, 34.510159, 27.158646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265597, -0.248405, -0.931533,
		-0.870800, 0.476457, 0.121227,
		0.413722, 0.843376, -0.342857,
		39.318424, 34.763172, 27.055788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504581, 34.506840, 26.808403>,  <39.028820, 34.172810, 27.295788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504581, 34.506840, 26.808403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.879196, 34.626949, 26.736031>,  <39.103966, 34.699017, 26.692608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.879196, 34.626949, 26.736031>,  <38.504581, 34.506840, 26.808403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879196, 34.626949, 26.736031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137644, -0.159707, -0.977521,
		-0.322423, 0.940387, -0.108240,
		0.936535, 0.300277, -0.180931,
		39.160156, 34.717033, 26.681751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499664, 34.852165, 26.105642>,  <38.504581, 34.506840, 26.808403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499664, 34.852165, 26.105642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.877415, 34.736649, 26.168587>,  <39.104065, 34.667339, 26.206352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.877415, 34.736649, 26.168587>,  <38.499664, 34.852165, 26.105642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877415, 34.736649, 26.168587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099357, -0.205590, -0.973581,
		0.313510, 0.935058, -0.165461,
		0.944373, -0.288788, 0.157359,
		39.160725, 34.650013, 26.215794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926273, 35.185505, 25.544765>,  <38.499664, 34.852165, 26.105642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926273, 35.185505, 25.544765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.189198, 34.944603, 25.725975>,  <39.346951, 34.800060, 25.834702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.189198, 34.944603, 25.725975>,  <38.926273, 35.185505, 25.544765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189198, 34.944603, 25.725975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503080, -0.096926, -0.858788,
		0.561119, 0.792398, 0.239272,
		0.657310, -0.602255, 0.453026,
		39.386391, 34.763927, 25.861883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601643, 35.419037, 25.410347>,  <38.926273, 35.185505, 25.544765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601643, 35.419037, 25.410347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.616154, 35.022610, 25.461685>,  <39.624863, 34.784756, 25.492489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.616154, 35.022610, 25.461685>,  <39.601643, 35.419037, 25.410347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616154, 35.022610, 25.461685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427765, -0.100668, -0.898267,
		0.903162, 0.087491, 0.420291,
		0.036280, -0.991066, 0.128345,
		39.627037, 34.725288, 25.500189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369362, 35.165039, 25.243130>,  <39.601643, 35.419037, 25.410347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369362, 35.165039, 25.243130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.084702, 34.888077, 25.195591>,  <39.913906, 34.721901, 25.167068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.084702, 34.888077, 25.195591>,  <40.369362, 35.165039, 25.243130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084702, 34.888077, 25.195591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288104, -0.133350, -0.948269,
		0.640736, -0.709080, 0.294384,
		-0.711655, -0.692404, -0.118847,
		39.871204, 34.680355, 25.159937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657711, 34.829292, 24.834869>,  <40.369362, 35.165039, 25.243130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657711, 34.829292, 24.834869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.307323, 34.636589, 24.825233>,  <40.097092, 34.520966, 24.819452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.307323, 34.636589, 24.825233>,  <40.657711, 34.829292, 24.834869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307323, 34.636589, 24.825233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200577, -0.318371, -0.926503,
		0.438685, -0.816422, 0.375515,
		-0.875970, -0.481763, -0.024091,
		40.044533, 34.492062, 24.818007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720364, 34.150761, 24.818151>,  <40.657711, 34.829292, 24.834869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720364, 34.150761, 24.818151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.376202, 34.269020, 24.652119>,  <40.169704, 34.339977, 24.552498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.376202, 34.269020, 24.652119>,  <40.720364, 34.150761, 24.818151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376202, 34.269020, 24.652119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316049, -0.329383, -0.889730,
		-0.399769, -0.896715, 0.189964,
		-0.860405, 0.295649, -0.415083,
		40.118080, 34.357716, 24.527594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704533, 33.722286, 24.203466>,  <40.720364, 34.150761, 24.818151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704533, 33.722286, 24.203466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.419460, 33.997108, 24.146828>,  <40.248417, 34.162003, 24.112844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.419460, 33.997108, 24.146828>,  <40.704533, 33.722286, 24.203466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419460, 33.997108, 24.146828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199070, 0.004526, -0.979975,
		-0.672653, -0.726594, -0.139997,
		-0.712677, 0.687052, -0.141598,
		40.205658, 34.203224, 24.104349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503887, 33.522732, 23.484324>,  <40.704533, 33.722286, 24.203466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503887, 33.522732, 23.484324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.355026, 33.885132, 23.564980>,  <40.265709, 34.102573, 23.613373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.355026, 33.885132, 23.564980>,  <40.503887, 33.522732, 23.484324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355026, 33.885132, 23.564980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003443, 0.218593, -0.975810,
		-0.928164, -0.362458, -0.084470,
		-0.372155, 0.906003, 0.201642,
		40.243382, 34.156933, 23.625473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866074, 33.687038, 22.995632>,  <40.503887, 33.522732, 23.484324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866074, 33.687038, 22.995632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.010612, 34.039856, 23.116577>,  <40.097336, 34.251549, 23.189144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.010612, 34.039856, 23.116577>,  <39.866074, 33.687038, 22.995632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010612, 34.039856, 23.116577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122269, 0.366298, -0.922430,
		-0.924381, 0.296345, 0.240207,
		0.361344, 0.882047, 0.302365,
		40.119015, 34.304470, 23.207287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413456, 34.219913, 22.679842>,  <39.866074, 33.687038, 22.995632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413456, 34.219913, 22.679842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.764587, 34.393963, 22.759933>,  <39.975266, 34.498394, 22.807989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.764587, 34.393963, 22.759933>,  <39.413456, 34.219913, 22.679842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764587, 34.393963, 22.759933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024637, 0.376463, -0.926104,
		-0.478348, 0.817890, 0.319748,
		0.877825, 0.435122, 0.200230,
		40.027935, 34.524498, 22.820004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325565, 34.832127, 22.267424>,  <39.413456, 34.219913, 22.679842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325565, 34.832127, 22.267424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.714169, 34.808849, 22.359322>,  <39.947330, 34.794884, 22.414461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.714169, 34.808849, 22.359322>,  <39.325565, 34.832127, 22.267424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714169, 34.808849, 22.359322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237000, 0.243816, -0.940417,
		-0.001286, 0.968074, 0.250662,
		0.971509, -0.058197, 0.229747,
		40.005623, 34.791389, 22.428246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675816, 35.433434, 22.153708>,  <39.325565, 34.832127, 22.267424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.675816, 35.433434, 22.153708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.983158, 35.177593, 22.144409>,  <40.167564, 35.024090, 22.138830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.983158, 35.177593, 22.144409>,  <39.675816, 35.433434, 22.153708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983158, 35.177593, 22.144409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359088, 0.460875, -0.811573,
		0.529793, 0.615232, 0.583789,
		0.768359, -0.639596, -0.023246,
		40.213665, 34.985714, 22.137436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942410, 35.201221, 21.760250>,  <39.675816, 35.433434, 22.153708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942410, 35.201221, 21.760250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.559780, 35.263496, 21.661671>,  <38.330204, 35.300861, 21.602524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.559780, 35.263496, 21.661671>,  <38.942410, 35.201221, 21.760250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559780, 35.263496, 21.661671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265735, -0.118185, 0.956774,
		0.119835, 0.980710, 0.154425,
		-0.956569, 0.155691, -0.246447,
		38.272808, 35.310204, 21.587736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538311, 35.857639, 22.048649>,  <38.942410, 35.201221, 21.760250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538311, 35.857639, 22.048649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.245205, 35.600544, 21.959263>,  <38.069340, 35.446285, 21.905632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.245205, 35.600544, 21.959263>,  <38.538311, 35.857639, 22.048649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245205, 35.600544, 21.959263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254923, -0.045192, 0.965905,
		-0.630925, 0.764750, -0.130734,
		-0.732767, -0.642740, -0.223465,
		38.025375, 35.407722, 21.892223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812672, 36.124802, 22.263136>,  <38.538311, 35.857639, 22.048649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812672, 36.124802, 22.263136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.766277, 35.728798, 22.231068>,  <37.738441, 35.491196, 22.211826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.766277, 35.728798, 22.231068>,  <37.812672, 36.124802, 22.263136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766277, 35.728798, 22.231068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321813, -0.038905, 0.946004,
		-0.939672, 0.135526, -0.314085,
		-0.115988, -0.990010, -0.080172,
		37.731480, 35.431793, 22.207016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145321, 35.850601, 22.571070>,  <37.812672, 36.124802, 22.263136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145321, 35.850601, 22.571070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.416737, 35.557301, 22.588615>,  <37.579586, 35.381321, 22.599142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.416737, 35.557301, 22.588615>,  <37.145321, 35.850601, 22.571070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416737, 35.557301, 22.588615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209452, -0.135895, 0.968330,
		-0.704070, -0.666237, -0.245792,
		0.678539, -0.733254, 0.043865,
		37.620296, 35.337326, 22.601774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866428, 35.426044, 22.975241>,  <37.145321, 35.850601, 22.571070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866428, 35.426044, 22.975241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.233589, 35.271255, 23.010365>,  <37.453884, 35.178383, 23.031439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.233589, 35.271255, 23.010365>,  <36.866428, 35.426044, 22.975241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233589, 35.271255, 23.010365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121496, -0.063422, 0.990564,
		-0.377751, -0.919908, -0.105230,
		0.917901, -0.386972, 0.087807,
		37.508961, 35.155163, 23.036707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750938, 34.868179, 23.400618>,  <36.866428, 35.426044, 22.975241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750938, 34.868179, 23.400618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.142502, 34.949905, 23.400978>,  <37.377438, 34.998940, 23.401194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.142502, 34.949905, 23.400978>,  <36.750938, 34.868179, 23.400618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142502, 34.949905, 23.400978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010415, -0.054302, 0.998470,
		0.204048, -0.977399, -0.055284,
		0.978906, 0.204312, 0.000901,
		37.436172, 35.011200, 23.401249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135117, 34.254196, 23.607618>,  <36.750938, 34.868179, 23.400618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135117, 34.254196, 23.607618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.347977, 34.578617, 23.704784>,  <37.475693, 34.773270, 23.763084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.347977, 34.578617, 23.704784>,  <37.135117, 34.254196, 23.607618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347977, 34.578617, 23.704784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001955, -0.285737, 0.958306,
		0.846651, -0.510433, -0.150467,
		0.532146, 0.811056, 0.242917,
		37.507622, 34.821934, 23.777660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652672, 34.038433, 24.117443>,  <37.135117, 34.254196, 23.607618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652672, 34.038433, 24.117443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.646332, 34.437550, 24.143238>,  <37.642529, 34.677021, 24.158716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.646332, 34.437550, 24.143238>,  <37.652672, 34.038433, 24.117443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646332, 34.437550, 24.143238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237758, -0.066409, 0.969051,
		0.971195, 0.000029, 0.238286,
		-0.015852, 0.997792, 0.064489,
		37.641575, 34.736889, 24.162584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039013, 34.142353, 24.759634>,  <37.652672, 34.038433, 24.117443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039013, 34.142353, 24.759634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.837498, 34.482838, 24.700798>,  <37.716591, 34.687130, 24.665497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.837498, 34.482838, 24.700798>,  <38.039013, 34.142353, 24.759634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837498, 34.482838, 24.700798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271588, 0.005562, 0.962398,
		0.820024, 0.524790, 0.228377,
		-0.503786, 0.851214, -0.147088,
		37.686363, 34.738201, 24.656672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233959, 34.657791, 25.313190>,  <38.039013, 34.142353, 24.759634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233959, 34.657791, 25.313190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.881958, 34.759586, 25.152779>,  <37.670757, 34.820663, 25.056532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.881958, 34.759586, 25.152779>,  <38.233959, 34.657791, 25.313190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881958, 34.759586, 25.152779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437791, -0.107170, 0.892667,
		0.184195, 0.961119, 0.205723,
		-0.880006, 0.254488, -0.401029,
		37.617954, 34.835934, 25.032471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977448, 35.200485, 25.768517>,  <38.233959, 34.657791, 25.313190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977448, 35.200485, 25.768517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.675091, 35.042202, 25.559887>,  <37.493675, 34.947231, 25.434710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.675091, 35.042202, 25.559887>,  <37.977448, 35.200485, 25.768517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675091, 35.042202, 25.559887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495519, -0.174877, 0.850811,
		-0.427887, 0.901571, -0.063894,
		-0.755893, -0.395712, -0.521573,
		37.448322, 34.923489, 25.403416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459389, 35.639393, 25.926332>,  <37.977448, 35.200485, 25.768517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459389, 35.639393, 25.926332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.313732, 35.285671, 25.809437>,  <37.226337, 35.073437, 25.739300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.313732, 35.285671, 25.809437>,  <37.459389, 35.639393, 25.926332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313732, 35.285671, 25.809437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528116, -0.062399, 0.846877,
		-0.767132, 0.462723, -0.444293,
		-0.364146, -0.884304, -0.292239,
		37.204487, 35.020378, 25.721766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728058, 35.648830, 25.899553>,  <37.459389, 35.639393, 25.926332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728058, 35.648830, 25.899553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.814316, 35.261635, 25.950912>,  <36.866070, 35.029316, 25.981728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.814316, 35.261635, 25.950912>,  <36.728058, 35.648830, 25.899553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814316, 35.261635, 25.950912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629985, -0.037454, 0.775703,
		-0.746067, -0.248164, -0.617898,
		0.215644, -0.967994, 0.128396,
		36.879009, 34.971237, 25.989431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118729, 35.419834, 26.047920>,  <36.728058, 35.648830, 25.899553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118729, 35.419834, 26.047920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.370865, 35.136486, 26.174965>,  <36.522148, 34.966476, 26.251192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.370865, 35.136486, 26.174965>,  <36.118729, 35.419834, 26.047920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370865, 35.136486, 26.174965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506514, -0.065230, 0.859761,
		-0.588312, -0.702819, -0.399917,
		0.630343, -0.708371, 0.317612,
		36.559967, 34.923973, 26.270248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661133, 34.980614, 26.308517>,  <36.118729, 35.419834, 26.047920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661133, 34.980614, 26.308517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.027683, 34.883892, 26.436138>,  <36.247612, 34.825859, 26.512711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.027683, 34.883892, 26.436138>,  <35.661133, 34.980614, 26.308517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027683, 34.883892, 26.436138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357955, -0.138060, 0.923476,
		-0.179257, -0.960452, -0.213071,
		0.916371, -0.241810, 0.319050,
		36.302593, 34.811352, 26.531853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486835, 34.591843, 26.906683>,  <35.661133, 34.980614, 26.308517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486835, 34.591843, 26.906683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.874981, 34.680000, 26.946323>,  <36.107868, 34.732895, 26.970108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.874981, 34.680000, 26.946323>,  <35.486835, 34.591843, 26.906683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874981, 34.680000, 26.946323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100628, -0.004307, 0.994915,
		0.219703, -0.975401, 0.017998,
		0.970363, 0.220397, 0.099099,
		36.166088, 34.746120, 26.976053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856602, 34.120533, 27.468443>,  <35.486835, 34.591843, 26.906683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856602, 34.120533, 27.468443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.090420, 34.444515, 27.449356>,  <36.230713, 34.638905, 27.437904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.090420, 34.444515, 27.449356>,  <35.856602, 34.120533, 27.468443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090420, 34.444515, 27.449356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051147, 0.021907, 0.998451,
		0.809746, -0.586082, -0.028622,
		0.584547, 0.809956, -0.047715,
		36.265785, 34.687500, 27.435041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345943, 34.090660, 28.070683>,  <35.856602, 34.120533, 27.468443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345943, 34.090660, 28.070683> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.348999, 34.476990, 27.967045>,  <36.350834, 34.708786, 27.904861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.348999, 34.476990, 27.967045>,  <36.345943, 34.090660, 28.070683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348999, 34.476990, 27.967045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074790, 0.258928, 0.962997,
		0.997170, 0.012020, 0.074212,
		0.007640, 0.965822, -0.259094,
		36.351292, 34.766735, 27.889317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859177, 34.314980, 28.453638>,  <36.345943, 34.090660, 28.070683>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859177, 34.314980, 28.453638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.629269, 34.620827, 28.337025>,  <36.491322, 34.804337, 28.267056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.629269, 34.620827, 28.337025>,  <36.859177, 34.314980, 28.453638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629269, 34.620827, 28.337025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124399, 0.270479, 0.954655,
		0.808802, 0.584976, -0.060346,
		-0.574773, 0.764620, -0.291535,
		36.456837, 34.850212, 28.249565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195705, 34.961823, 28.629406>,  <36.859177, 34.314980, 28.453638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195705, 34.961823, 28.629406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.800766, 35.023727, 28.615578>,  <36.563805, 35.060871, 28.607281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.800766, 35.023727, 28.615578>,  <37.195705, 34.961823, 28.629406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800766, 35.023727, 28.615578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008739, 0.270777, 0.962602,
		0.158336, 0.950120, -0.268703,
		-0.987347, 0.154763, -0.034570,
		36.504562, 35.070156, 28.605207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183422, 35.553005, 29.034973>,  <37.195705, 34.961823, 28.629406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183422, 35.553005, 29.034973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.818089, 35.390400, 29.025471>,  <36.598888, 35.292835, 29.019770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.818089, 35.390400, 29.025471>,  <37.183422, 35.553005, 29.034973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818089, 35.390400, 29.025471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095847, 0.157909, 0.982791,
		-0.395770, 0.899894, -0.183187,
		-0.913334, -0.406517, -0.023756,
		36.544086, 35.268444, 29.018343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.182816, 23.891857, 20.244473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.497719, 23.938816, 20.486610>,  <28.686661, 23.966991, 20.631893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.497719, 23.938816, 20.486610>,  <28.182816, 23.891857, 20.244473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497719, 23.938816, 20.486610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398664, -0.845839, -0.354433,
		0.470414, 0.520360, -0.712696,
		0.787259, 0.117396, 0.605344,
		28.733896, 23.974035, 20.668213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656731, 23.780502, 19.826387>,  <28.182816, 23.891857, 20.244473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656731, 23.780502, 19.826387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.834225, 23.725536, 20.180611>,  <28.940722, 23.692556, 20.393145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.834225, 23.725536, 20.180611>,  <28.656731, 23.780502, 19.826387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834225, 23.725536, 20.180611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428334, -0.835469, -0.344270,
		0.787166, 0.532080, -0.311867,
		0.443734, -0.137414, 0.885560,
		28.967344, 23.684313, 20.446280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233875, 23.341345, 19.663988>,  <28.656731, 23.780502, 19.826387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233875, 23.341345, 19.663988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.215204, 23.302399, 20.061649>,  <29.204002, 23.279032, 20.300245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.215204, 23.302399, 20.061649>,  <29.233875, 23.341345, 19.663988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215204, 23.302399, 20.061649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403484, -0.912274, -0.070402,
		0.913795, 0.397839, 0.081867,
		-0.046677, -0.097365, 0.994154,
		29.201200, 23.273190, 20.359896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884893, 23.072559, 19.847710>,  <29.233875, 23.341345, 19.663988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884893, 23.072559, 19.847710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.623903, 22.975739, 20.134956>,  <29.467310, 22.917646, 20.307304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.623903, 22.975739, 20.134956>,  <29.884893, 23.072559, 19.847710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623903, 22.975739, 20.134956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167185, -0.970246, -0.175132,
		0.739140, 0.005789, 0.673527,
		-0.652474, -0.242051, 0.718115,
		29.428162, 22.903124, 20.350391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234840, 22.512211, 20.304369>,  <29.884893, 23.072559, 19.847710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234840, 22.512211, 20.304369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.843037, 22.498524, 20.383759>,  <29.607954, 22.490311, 20.431393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.843037, 22.498524, 20.383759>,  <30.234840, 22.512211, 20.304369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843037, 22.498524, 20.383759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048513, -0.996531, 0.067616,
		0.195473, 0.075859, 0.977771,
		-0.979508, -0.034218, 0.198475,
		29.549185, 22.488258, 20.443300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131754, 22.026640, 20.767876>,  <30.234840, 22.512211, 20.304369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131754, 22.026640, 20.767876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.777172, 22.050152, 20.584248>,  <29.564423, 22.064259, 20.474072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.777172, 22.050152, 20.584248>,  <30.131754, 22.026640, 20.767876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777172, 22.050152, 20.584248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057200, -0.998212, -0.017360,
		-0.459270, 0.010870, 0.888230,
		-0.886453, 0.058779, -0.459071,
		29.511236, 22.067785, 20.446526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656393, 21.601728, 21.210663>,  <30.131754, 22.026640, 20.767876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656393, 21.601728, 21.210663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.513988, 21.638309, 20.838665>,  <29.428545, 21.660257, 20.615465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.513988, 21.638309, 20.838665>,  <29.656393, 21.601728, 21.210663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513988, 21.638309, 20.838665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087611, -0.994083, -0.064214,
		-0.930365, 0.058616, 0.361919,
		-0.356013, 0.091451, -0.929995,
		29.407185, 21.665745, 20.559666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.165918, 21.045446, 21.175665>,  <29.656393, 21.601728, 21.210663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.165918, 21.045446, 21.175665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.238468, 21.137127, 20.793133>,  <29.281998, 21.192135, 20.563614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.238468, 21.137127, 20.793133>,  <29.165918, 21.045446, 21.175665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238468, 21.137127, 20.793133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075208, -0.966380, -0.245874,
		-0.980534, 0.116519, -0.158038,
		0.181374, 0.229202, -0.956332,
		29.292881, 21.205887, 20.506233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727226, 20.682392, 20.865866>,  <29.165918, 21.045446, 21.175665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727226, 20.682392, 20.865866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.965363, 20.790886, 20.563343>,  <29.108244, 20.855982, 20.381830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.965363, 20.790886, 20.563343>,  <28.727226, 20.682392, 20.865866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965363, 20.790886, 20.563343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078434, -0.917182, -0.390672,
		-0.799635, 0.291903, -0.524763,
		0.595342, 0.271236, -0.756306,
		29.143965, 20.872257, 20.336451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459169, 20.352198, 20.242941>,  <28.727226, 20.682392, 20.865866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459169, 20.352198, 20.242941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.841360, 20.427460, 20.152020>,  <29.070675, 20.472616, 20.097467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.841360, 20.427460, 20.152020>,  <28.459169, 20.352198, 20.242941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841360, 20.427460, 20.152020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102383, -0.933864, -0.342661,
		-0.276742, 0.304133, -0.911547,
		0.955475, 0.188156, -0.227301,
		29.128002, 20.483906, 20.083830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552099, 20.042864, 19.545292>,  <28.459169, 20.352198, 20.242941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552099, 20.042864, 19.545292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.909191, 20.070786, 19.723354>,  <29.123446, 20.087538, 19.830193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.909191, 20.070786, 19.723354>,  <28.552099, 20.042864, 19.545292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909191, 20.070786, 19.723354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137833, -0.982876, -0.122297,
		0.428996, 0.170535, -0.887063,
		0.892729, 0.069802, 0.445155,
		29.177010, 20.091726, 19.856901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013065, 19.709660, 19.160353>,  <28.552099, 20.042864, 19.545292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013065, 19.709660, 19.160353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.220982, 19.711693, 19.502064>,  <29.345732, 19.712912, 19.707090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.220982, 19.711693, 19.502064>,  <29.013065, 19.709660, 19.160353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220982, 19.711693, 19.502064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153670, -0.984227, -0.087647,
		0.840359, 0.176836, -0.512373,
		0.519791, 0.005081, 0.854278,
		29.376919, 19.713217, 19.758347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955383, 19.693678, 19.173140>,  <29.013065, 19.709660, 19.160353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955383, 19.693678, 19.173140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.659948, 19.525314, 19.383785>,  <29.482687, 19.424297, 19.510172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.659948, 19.525314, 19.383785>,  <29.955383, 19.693678, 19.173140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659948, 19.525314, 19.383785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357274, -0.906814, -0.223706,
		0.571701, 0.022919, 0.820142,
		-0.738589, -0.420908, 0.526614,
		29.438372, 19.399042, 19.541769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468969, 19.256382, 18.852871>,  <29.955383, 19.693678, 19.173140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468969, 19.256382, 18.852871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.539995, 19.591740, 19.059002>,  <30.582611, 19.792955, 19.182680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.539995, 19.591740, 19.059002>,  <30.468969, 19.256382, 18.852871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539995, 19.591740, 19.059002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629048, -0.306012, 0.714601,
		0.756815, -0.451054, 0.473055,
		0.177564, 0.838395, 0.515329,
		30.593264, 19.843258, 19.213600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148375, 19.595901, 18.237793>,  <30.468969, 19.256382, 18.852871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148375, 19.595901, 18.237793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.499949, 19.645260, 18.053513>,  <30.710894, 19.674875, 17.942944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.499949, 19.645260, 18.053513>,  <30.148375, 19.595901, 18.237793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499949, 19.645260, 18.053513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051061, 0.984745, 0.166345,
		0.474200, -0.122683, 0.871827,
		0.878935, 0.123397, -0.460702,
		30.763630, 19.682280, 17.915302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572220, 20.013096, 18.626654>,  <30.148375, 19.595901, 18.237793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572220, 20.013096, 18.626654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.750034, 20.078426, 18.274357>,  <30.856724, 20.117624, 18.062979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.750034, 20.078426, 18.274357>,  <30.572220, 20.013096, 18.626654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750034, 20.078426, 18.274357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024044, 0.985059, 0.170533,
		0.895437, -0.054632, 0.441824,
		0.444539, 0.163325, -0.880744,
		30.883396, 20.127424, 18.010134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091612, 20.576199, 18.730249>,  <30.572220, 20.013096, 18.626654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091612, 20.576199, 18.730249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.007116, 20.526817, 18.342407>,  <30.956419, 20.497189, 18.109701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.007116, 20.526817, 18.342407>,  <31.091612, 20.576199, 18.730249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007116, 20.526817, 18.342407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110331, 0.988663, -0.101843,
		0.971188, 0.085465, -0.222465,
		-0.211239, -0.123453, -0.969607,
		30.943745, 20.489782, 18.051525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431263, 21.133148, 18.554150>,  <31.091612, 20.576199, 18.730249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431263, 21.133148, 18.554150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.191971, 21.054226, 18.243488>,  <31.048395, 21.006872, 18.057091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.191971, 21.054226, 18.243488>,  <31.431263, 21.133148, 18.554150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191971, 21.054226, 18.243488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120420, 0.980342, -0.156298,
		0.792225, 0.000023, -0.610229,
		-0.598229, -0.197307, -0.776654,
		31.012503, 20.995033, 18.010492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622046, 21.612919, 17.983761>,  <31.431263, 21.133148, 18.554150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622046, 21.612919, 17.983761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.247761, 21.481453, 17.932503>,  <31.023190, 21.402573, 17.901749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.247761, 21.481453, 17.932503>,  <31.622046, 21.612919, 17.983761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247761, 21.481453, 17.932503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310686, 0.939859, -0.141914,
		0.167078, -0.092978, -0.981550,
		-0.935713, -0.328665, -0.128143,
		30.967047, 21.382853, 17.894060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478277, 21.873264, 17.418005>,  <31.622046, 21.612919, 17.983761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478277, 21.873264, 17.418005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.123367, 21.785595, 17.580341>,  <30.910421, 21.732994, 17.677744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.123367, 21.785595, 17.580341>,  <31.478277, 21.873264, 17.418005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123367, 21.785595, 17.580341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266113, 0.961926, -0.062305,
		-0.376735, -0.163281, -0.911817,
		-0.887274, -0.219174, 0.405842,
		30.857185, 21.719843, 17.702093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029375, 22.221920, 16.948717>,  <31.478277, 21.873264, 17.418005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029375, 22.221920, 16.948717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.833046, 22.167500, 17.292946>,  <30.715248, 22.134848, 17.499483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.833046, 22.167500, 17.292946>,  <31.029375, 22.221920, 16.948717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833046, 22.167500, 17.292946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221569, 0.974750, 0.027728,
		-0.842614, -0.177066, -0.508575,
		-0.490824, -0.136049, 0.860571,
		30.685799, 22.126684, 17.551117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.301634, 22.525448, 16.903708>,  <31.029375, 22.221920, 16.948717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.301634, 22.525448, 16.903708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.401617, 22.508831, 17.290653>,  <30.461607, 22.498861, 17.522821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.401617, 22.508831, 17.290653>,  <30.301634, 22.525448, 16.903708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.401617, 22.508831, 17.290653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279351, 0.953501, 0.113131,
		-0.927083, -0.298512, 0.226732,
		0.249960, -0.041544, 0.967365,
		30.476604, 22.496368, 17.580862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703520, 22.833071, 17.294617>,  <30.301634, 22.525448, 16.903708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703520, 22.833071, 17.294617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.997169, 22.846432, 17.565895>,  <30.173359, 22.854448, 17.728662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.997169, 22.846432, 17.565895>,  <29.703520, 22.833071, 17.294617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997169, 22.846432, 17.565895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453049, 0.768061, 0.452581,
		-0.505778, -0.639505, 0.578984,
		0.734123, 0.033403, 0.678195,
		30.217405, 22.856453, 17.769354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413694, 23.033936, 17.823303>,  <29.703520, 22.833071, 17.294617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413694, 23.033936, 17.823303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.792152, 23.129650, 17.910526>,  <30.019228, 23.187078, 17.962860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.792152, 23.129650, 17.910526>,  <29.413694, 23.033936, 17.823303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792152, 23.129650, 17.910526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317463, 0.817750, 0.480107,
		-0.063437, -0.523477, 0.849675,
		0.946146, 0.239284, 0.218060,
		30.075996, 23.201435, 17.975945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375624, 23.427017, 18.440741>,  <29.413694, 23.033936, 17.823303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375624, 23.427017, 18.440741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.755724, 23.492813, 18.334938>,  <29.983784, 23.532291, 18.271456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.755724, 23.492813, 18.334938>,  <29.375624, 23.427017, 18.440741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755724, 23.492813, 18.334938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029177, 0.892462, 0.450177,
		0.310112, -0.420064, 0.852864,
		0.950252, 0.164490, -0.264507,
		30.040800, 23.542160, 18.255587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757084, 23.487188, 18.963511>,  <29.375624, 23.427017, 18.440741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757084, 23.487188, 18.963511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.941065, 23.695595, 18.675903>,  <30.051453, 23.820639, 18.503340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.941065, 23.695595, 18.675903>,  <29.757084, 23.487188, 18.963511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941065, 23.695595, 18.675903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157085, 0.844729, 0.511623,
		0.873940, -0.122373, 0.470377,
		0.459950, 0.521017, -0.719019,
		30.079050, 23.851900, 18.460197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042500, 23.990780, 19.357969>,  <29.757084, 23.487188, 18.963511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042500, 23.990780, 19.357969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.063076, 24.132599, 18.984520>,  <30.075422, 24.217690, 18.760450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.063076, 24.132599, 18.984520>,  <30.042500, 23.990780, 19.357969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063076, 24.132599, 18.984520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033331, 0.934949, 0.353214,
		0.998120, 0.012948, 0.059913,
		0.051442, 0.354547, -0.933622,
		30.078508, 24.238962, 18.704433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526731, 24.553907, 19.340200>,  <30.042500, 23.990780, 19.357969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526731, 24.553907, 19.340200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.293472, 24.637733, 19.026253>,  <30.153517, 24.688030, 18.837885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.293472, 24.637733, 19.026253>,  <30.526731, 24.553907, 19.340200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293472, 24.637733, 19.026253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257967, 0.963917, 0.065708,
		0.770317, -0.164152, -0.616169,
		-0.583150, 0.209568, -0.784868,
		30.118526, 24.700603, 18.790792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280220, 24.495613, 19.273457>,  <30.526731, 24.553907, 19.340200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280220, 24.495613, 19.273457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.616329, 24.526909, 19.488052>,  <31.817995, 24.545687, 19.616810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.616329, 24.526909, 19.488052>,  <31.280220, 24.495613, 19.273457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616329, 24.526909, 19.488052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296337, -0.894918, -0.333626,
		0.454012, 0.439319, -0.775159,
		0.840272, 0.078238, 0.536490,
		31.868410, 24.550381, 19.649000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828987, 24.213694, 18.831406>,  <31.280220, 24.495613, 19.273457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828987, 24.213694, 18.831406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.947485, 24.187988, 19.212585>,  <32.018585, 24.172565, 19.441294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.947485, 24.187988, 19.212585>,  <31.828987, 24.213694, 18.831406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947485, 24.187988, 19.212585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292286, -0.943767, -0.154508,
		0.909290, 0.324305, -0.260804,
		0.296246, -0.064264, 0.952947,
		32.036358, 24.168709, 19.498470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436508, 23.791807, 18.808592>,  <31.828987, 24.213694, 18.831406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436508, 23.791807, 18.808592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382771, 23.820244, 19.203945>,  <32.350529, 23.837307, 19.441156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.382771, 23.820244, 19.203945>,  <32.436508, 23.791807, 18.808592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382771, 23.820244, 19.203945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280865, -0.953789, 0.106781,
		0.950298, 0.291947, 0.108169,
		-0.134345, 0.071093, 0.988381,
		32.342468, 23.841572, 19.500460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091579, 23.573723, 19.155542>,  <32.436508, 23.791807, 18.808592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091579, 23.573723, 19.155542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787014, 23.525566, 19.410339>,  <32.604275, 23.496672, 19.563217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787014, 23.525566, 19.410339>,  <33.091579, 23.573723, 19.155542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787014, 23.525566, 19.410339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274158, -0.950210, 0.148117,
		0.587447, 0.287415, 0.756505,
		-0.761409, -0.120391, 0.636995,
		32.558590, 23.489449, 19.601439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392937, 23.177603, 19.709126>,  <33.091579, 23.573723, 19.155542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392937, 23.177603, 19.709126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994446, 23.159599, 19.738811>,  <32.755352, 23.148796, 19.756624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.994446, 23.159599, 19.738811>,  <33.392937, 23.177603, 19.709126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994446, 23.159599, 19.738811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058708, -0.979208, 0.194178,
		0.063934, 0.197802, 0.978155,
		-0.996226, -0.045011, 0.074217,
		32.695580, 23.146095, 19.761076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219402, 22.887091, 20.368866>,  <33.392937, 23.177603, 19.709126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219402, 22.887091, 20.368866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905491, 22.822426, 20.129539>,  <32.717144, 22.783627, 19.985943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.905491, 22.822426, 20.129539>,  <33.219402, 22.887091, 20.368866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905491, 22.822426, 20.129539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050433, -0.978837, 0.198328,
		-0.617716, 0.125469, 0.776327,
		-0.784782, -0.161663, -0.598316,
		32.670055, 22.773928, 19.950045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902172, 22.367670, 20.715149>,  <33.219402, 22.887091, 20.368866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902172, 22.367670, 20.715149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711163, 22.341187, 20.364700>,  <32.596558, 22.325296, 20.154430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711163, 22.341187, 20.364700>,  <32.902172, 22.367670, 20.715149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711163, 22.341187, 20.364700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001418, -0.997214, 0.074585,
		-0.878619, 0.034374, 0.476285,
		-0.477521, -0.066207, -0.876122,
		32.567905, 22.321323, 20.101864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003025, 22.373220, 21.442589>,  <32.902172, 22.367670, 20.715149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003025, 22.373220, 21.442589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.399418, 22.333065, 21.478081>,  <33.637253, 22.308971, 21.499376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.399418, 22.333065, 21.478081>,  <33.003025, 22.373220, 21.442589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399418, 22.333065, 21.478081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102804, 0.994435, -0.023051,
		-0.085920, 0.031965, 0.995789,
		0.990984, -0.100391, 0.088728,
		33.696712, 22.302948, 21.504700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091682, 22.835970, 21.939102>,  <33.003025, 22.373220, 21.442589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091682, 22.835970, 21.939102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448242, 22.791286, 21.763409>,  <33.662178, 22.764477, 21.657991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448242, 22.791286, 21.763409>,  <33.091682, 22.835970, 21.939102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448242, 22.791286, 21.763409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180072, 0.976664, 0.117057,
		0.415909, -0.183438, 0.890713,
		0.891400, -0.111708, -0.439235,
		33.715664, 22.757774, 21.631638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549793, 23.205160, 22.411737>,  <33.091682, 22.835970, 21.939102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549793, 23.205160, 22.411737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758476, 23.139919, 22.076782>,  <33.883686, 23.100775, 21.875809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758476, 23.139919, 22.076782>,  <33.549793, 23.205160, 22.411737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758476, 23.139919, 22.076782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254113, 0.966710, -0.029971,
		0.814398, -0.197155, 0.545789,
		0.521711, -0.163100, -0.837387,
		33.914989, 23.090990, 21.825565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255791, 23.379501, 22.509981>,  <33.549793, 23.205160, 22.411737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255791, 23.379501, 22.509981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.216316, 23.407700, 22.112934>,  <34.192631, 23.424620, 21.874706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.216316, 23.407700, 22.112934>,  <34.255791, 23.379501, 22.509981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216316, 23.407700, 22.112934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360618, 0.932220, 0.030356,
		0.927478, -0.354960, -0.117418,
		-0.098684, 0.070498, -0.992618,
		34.186710, 23.428848, 21.815149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773972, 23.821730, 22.304029>,  <34.255791, 23.379501, 22.509981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773972, 23.821730, 22.304029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.559692, 23.822067, 21.966267>,  <34.431126, 23.822269, 21.763609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.559692, 23.822067, 21.966267>,  <34.773972, 23.821730, 22.304029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559692, 23.822067, 21.966267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205283, 0.970129, -0.129262,
		0.819076, -0.242589, -0.519871,
		-0.535700, 0.000845, -0.844408,
		34.398983, 23.822321, 21.712944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138039, 24.212183, 21.808794>,  <34.773972, 23.821730, 22.304029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138039, 24.212183, 21.808794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754879, 24.236092, 21.696472>,  <34.524982, 24.250437, 21.629078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754879, 24.236092, 21.696472>,  <35.138039, 24.212183, 21.808794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754879, 24.236092, 21.696472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099016, 0.986856, -0.127713,
		0.269482, -0.150140, -0.951229,
		-0.957901, 0.059771, -0.280806,
		34.467510, 24.254023, 21.612230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192757, 24.712231, 21.221445>,  <35.138039, 24.212183, 21.808794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192757, 24.712231, 21.221445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.807125, 24.693306, 21.325989>,  <34.575745, 24.681952, 21.388716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.807125, 24.693306, 21.325989>,  <35.192757, 24.712231, 21.221445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807125, 24.693306, 21.325989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072826, 0.993383, -0.088805,
		-0.255431, -0.104649, -0.961147,
		-0.964080, -0.047313, 0.261362,
		34.517902, 24.679111, 21.404398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.580791, 20.023582, 21.869432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.302177, 20.194721, 21.639030>,  <31.135008, 20.297405, 21.500790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.302177, 20.194721, 21.639030>,  <31.580791, 20.023582, 21.869432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302177, 20.194721, 21.639030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094315, 0.850402, 0.517612,
		0.711295, 0.306210, -0.632688,
		-0.696537, 0.427847, -0.576007,
		31.093216, 20.323074, 21.466228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783384, 20.714445, 21.592272>,  <31.580791, 20.023582, 21.869432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783384, 20.714445, 21.592272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.384752, 20.689426, 21.613869>,  <31.145573, 20.674416, 21.626827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.384752, 20.689426, 21.613869>,  <31.783384, 20.714445, 21.592272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384752, 20.689426, 21.613869> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035624, 0.914844, 0.402234,
		-0.074553, 0.398935, -0.913944,
		-0.996580, -0.062546, 0.053992,
		31.085777, 20.670662, 21.630066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533545, 21.361254, 21.367373>,  <31.783384, 20.714445, 21.592272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533545, 21.361254, 21.367373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.192089, 21.244907, 21.540207>,  <30.987215, 21.175098, 21.643908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.192089, 21.244907, 21.540207>,  <31.533545, 21.361254, 21.367373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192089, 21.244907, 21.540207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125660, 0.920052, 0.371098,
		-0.505481, 0.262488, -0.821942,
		-0.853638, -0.290868, 0.432085,
		30.935997, 21.157646, 21.669832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101480, 21.921303, 21.344749>,  <31.533545, 21.361254, 21.367373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101480, 21.921303, 21.344749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.917160, 21.725338, 21.640762>,  <30.806568, 21.607759, 21.818369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.917160, 21.725338, 21.640762>,  <31.101480, 21.921303, 21.344749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.917160, 21.725338, 21.640762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240861, 0.871574, 0.427018,
		-0.854194, 0.018526, -0.519624,
		-0.460802, -0.489914, 0.740031,
		30.778919, 21.578363, 21.862772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421503, 22.312302, 21.513224>,  <31.101480, 21.921303, 21.344749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421503, 22.312302, 21.513224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.521570, 22.077621, 21.821301>,  <30.581612, 21.936813, 22.006147>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.521570, 22.077621, 21.821301>,  <30.421503, 22.312302, 21.513224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521570, 22.077621, 21.821301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119885, 0.770594, 0.625949,
		-0.960751, -0.248928, 0.122442,
		0.250169, -0.586702, 0.770192,
		30.596621, 21.901611, 22.052359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841396, 22.298712, 22.074903>,  <30.421503, 22.312302, 21.513224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841396, 22.298712, 22.074903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.193544, 22.219276, 22.247189>,  <30.404833, 22.171616, 22.350559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.193544, 22.219276, 22.247189>,  <29.841396, 22.298712, 22.074903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193544, 22.219276, 22.247189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145997, 0.750559, 0.644474,
		-0.451261, -0.630257, 0.631775,
		0.880368, -0.198589, 0.430714,
		30.457655, 22.159700, 22.376402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772076, 22.382330, 22.780293>,  <29.841396, 22.298712, 22.074903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772076, 22.382330, 22.780293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.170580, 22.367973, 22.748859>,  <30.409683, 22.359360, 22.730000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.170580, 22.367973, 22.748859>,  <29.772076, 22.382330, 22.780293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170580, 22.367973, 22.748859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082839, 0.655048, 0.751033,
		0.024521, -0.754734, 0.655572,
		0.996261, -0.035891, -0.078584,
		30.469458, 22.357206, 22.725285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.002008, 22.331678, 23.428030>,  <29.772076, 22.382330, 22.780293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.002008, 22.331678, 23.428030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.328369, 22.459866, 23.235527>,  <30.524185, 22.536777, 23.120026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.328369, 22.459866, 23.235527>,  <30.002008, 22.331678, 23.428030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328369, 22.459866, 23.235527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179247, 0.651144, 0.737484,
		0.549706, -0.687977, 0.473826,
		0.815901, 0.320468, -0.481255,
		30.573139, 22.556005, 23.091150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497942, 22.429266, 23.961405>,  <30.002008, 22.331678, 23.428030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497942, 22.429266, 23.961405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.599474, 22.645519, 23.640583>,  <30.660393, 22.775270, 23.448090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.599474, 22.645519, 23.640583>,  <30.497942, 22.429266, 23.961405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599474, 22.645519, 23.640583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090445, 0.812310, 0.576170,
		0.963011, -0.218791, 0.157290,
		0.253829, 0.540632, -0.802053,
		30.675623, 22.807709, 23.399967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200970, 22.759792, 24.050686>,  <30.497942, 22.429266, 23.961405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200970, 22.759792, 24.050686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.996216, 22.987282, 23.793152>,  <30.873363, 23.123775, 23.638632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.996216, 22.987282, 23.793152>,  <31.200970, 22.759792, 24.050686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996216, 22.987282, 23.793152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095535, 0.782510, 0.615265,
		0.853725, 0.253436, -0.454888,
		-0.511885, 0.568725, -0.643836,
		30.842649, 23.157900, 23.600000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398516, 23.441355, 24.343861>,  <31.200970, 22.759792, 24.050686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398516, 23.441355, 24.343861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.105537, 23.506664, 24.079479>,  <30.929750, 23.545851, 23.920851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.105537, 23.506664, 24.079479>,  <31.398516, 23.441355, 24.343861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105537, 23.506664, 24.079479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225121, 0.858126, 0.461454,
		0.642528, 0.486786, -0.591775,
		-0.732447, 0.163276, -0.660956,
		30.885803, 23.555647, 23.881193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586164, 24.097906, 24.180868>,  <31.398516, 23.441355, 24.343861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586164, 24.097906, 24.180868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.212372, 24.071396, 24.040951>,  <30.988096, 24.055490, 23.957001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.212372, 24.071396, 24.040951>,  <31.586164, 24.097906, 24.180868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212372, 24.071396, 24.040951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266241, 0.782376, 0.563031,
		0.236356, 0.619270, -0.748759,
		-0.934479, -0.066275, -0.349794,
		30.932028, 24.051514, 23.936012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378906, 24.136286, 24.282406>,  <31.586164, 24.097906, 24.180868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378906, 24.136286, 24.282406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.646126, 24.316658, 24.519173>,  <32.806458, 24.424881, 24.661234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.646126, 24.316658, 24.519173>,  <32.378906, 24.136286, 24.282406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646126, 24.316658, 24.519173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398068, -0.888645, 0.227709,
		0.628686, 0.083502, -0.773163,
		0.668053, 0.450929, 0.591919,
		32.846542, 24.451937, 24.696749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047119, 24.068453, 24.043991>,  <32.378906, 24.136286, 24.282406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047119, 24.068453, 24.043991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.079292, 24.124447, 24.438744>,  <33.098598, 24.158043, 24.675594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.079292, 24.124447, 24.438744>,  <33.047119, 24.068453, 24.043991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079292, 24.124447, 24.438744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369383, -0.923780, 0.100928,
		0.925790, 0.356419, -0.126012,
		0.080435, 0.139984, 0.986881,
		33.103424, 24.166443, 24.734808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779961, 23.864269, 24.187511>,  <33.047119, 24.068453, 24.043991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779961, 23.864269, 24.187511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.592003, 23.869648, 24.540558>,  <33.479229, 23.872875, 24.752386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.592003, 23.869648, 24.540558>,  <33.779961, 23.864269, 24.187511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592003, 23.869648, 24.540558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398769, -0.888808, 0.225842,
		0.787514, 0.458083, 0.412288,
		-0.469899, 0.013446, 0.882618,
		33.451035, 23.873682, 24.805344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263123, 23.673298, 24.620632>,  <33.779961, 23.864269, 24.187511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263123, 23.673298, 24.620632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.921978, 23.595802, 24.814575>,  <33.717289, 23.549305, 24.930941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.921978, 23.595802, 24.814575>,  <34.263123, 23.673298, 24.620632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921978, 23.595802, 24.814575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287066, -0.949657, 0.125482,
		0.436138, 0.246205, 0.865544,
		-0.852864, -0.193741, 0.484859,
		33.666119, 23.537680, 24.960033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442303, 23.282869, 25.159245>,  <34.263123, 23.673298, 24.620632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442303, 23.282869, 25.159245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051865, 23.200672, 25.130913>,  <33.817604, 23.151354, 25.113914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.051865, 23.200672, 25.130913>,  <34.442303, 23.282869, 25.159245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051865, 23.200672, 25.130913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200769, -0.977243, 0.068472,
		-0.083287, 0.052615, 0.995136,
		-0.976092, -0.205495, -0.070829,
		33.759037, 23.139023, 25.109665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358223, 22.622604, 25.542852>,  <34.442303, 23.282869, 25.159245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358223, 22.622604, 25.542852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.037216, 22.663033, 25.307652>,  <33.844612, 22.687290, 25.166531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.037216, 22.663033, 25.307652>,  <34.358223, 22.622604, 25.542852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037216, 22.663033, 25.307652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024585, -0.979107, -0.201854,
		-0.596118, -0.176448, 0.783268,
		-0.802520, 0.101073, -0.588002,
		33.796459, 22.693354, 25.131250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987629, 22.106972, 25.751001>,  <34.358223, 22.622604, 25.542852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987629, 22.106972, 25.751001> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.832428, 22.158661, 25.385979>,  <33.739307, 22.189674, 25.166965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.832428, 22.158661, 25.385979>,  <33.987629, 22.106972, 25.751001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832428, 22.158661, 25.385979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175292, -0.982396, -0.064582,
		-0.904835, 0.134906, 0.403824,
		-0.388002, 0.129223, -0.912554,
		33.716026, 22.197428, 25.112213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435673, 21.617525, 25.661388>,  <33.987629, 22.106972, 25.751001>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435673, 21.617525, 25.661388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.547413, 21.729805, 25.294090>,  <33.614456, 21.797173, 25.073711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.547413, 21.729805, 25.294090>,  <33.435673, 21.617525, 25.661388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547413, 21.729805, 25.294090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016624, -0.957586, -0.287668,
		-0.960046, 0.065095, -0.272166,
		0.279348, 0.280698, -0.918245,
		33.631218, 21.814014, 25.018618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082264, 21.158833, 25.361715>,  <33.435673, 21.617525, 25.661388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082264, 21.158833, 25.361715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.375317, 21.282558, 25.119202>,  <33.551147, 21.356794, 24.973694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.375317, 21.282558, 25.119202>,  <33.082264, 21.158833, 25.361715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375317, 21.282558, 25.119202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087782, -0.926270, -0.366493,
		-0.674944, 0.215283, -0.705765,
		0.732629, 0.309316, -0.606282,
		33.595104, 21.375353, 24.937317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942669, 20.791407, 24.817493>,  <33.082264, 21.158833, 25.361715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942669, 20.791407, 24.817493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.313957, 20.896236, 24.711876>,  <33.536732, 20.959135, 24.648506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.313957, 20.896236, 24.711876>,  <32.942669, 20.791407, 24.817493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313957, 20.896236, 24.711876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166137, -0.927057, -0.336101,
		-0.332866, 0.268110, -0.904056,
		0.928223, 0.262074, -0.264043,
		33.592422, 20.974859, 24.632664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070404, 20.527935, 24.089455>,  <32.942669, 20.791407, 24.817493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070404, 20.527935, 24.089455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.390430, 20.590500, 24.321117>,  <33.582447, 20.628038, 24.460115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.390430, 20.590500, 24.321117>,  <33.070404, 20.527935, 24.089455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390430, 20.590500, 24.321117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286106, -0.948032, -0.139206,
		0.527288, 0.277075, -0.803242,
		0.800069, 0.156410, 0.579159,
		33.630451, 20.637423, 24.494865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590733, 20.308702, 23.632626>,  <33.070404, 20.527935, 24.089455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590733, 20.308702, 23.632626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.745579, 20.291264, 24.001026>,  <33.838486, 20.280800, 24.222067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.745579, 20.291264, 24.001026>,  <33.590733, 20.308702, 23.632626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745579, 20.291264, 24.001026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219304, -0.965862, -0.137899,
		0.895571, 0.255362, -0.364339,
		0.387115, -0.043597, 0.921000,
		33.861713, 20.278185, 24.277327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163433, 19.805458, 23.570951>,  <33.590733, 20.308702, 23.632626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163433, 19.805458, 23.570951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.125710, 19.842270, 23.967464>,  <34.103073, 19.864357, 24.205372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.125710, 19.842270, 23.967464>,  <34.163433, 19.805458, 23.570951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125710, 19.842270, 23.967464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322116, -0.939336, 0.117852,
		0.941991, 0.330422, 0.058946,
		-0.094311, 0.092028, 0.991280,
		34.097416, 19.869879, 24.264849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788403, 19.722980, 23.906307>,  <34.163433, 19.805458, 23.570951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788403, 19.722980, 23.906307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.531704, 19.616066, 24.193840>,  <34.377686, 19.551918, 24.366360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.531704, 19.616066, 24.193840>,  <34.788403, 19.722980, 23.906307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531704, 19.616066, 24.193840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550815, -0.812829, 0.189507,
		0.533635, 0.517559, 0.668854,
		-0.641745, -0.267287, 0.718833,
		34.339180, 19.535879, 24.409491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759830, 19.900930, 23.141787>,  <34.788403, 19.722980, 23.906307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759830, 19.900930, 23.141787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.635651, 19.764313, 22.786942>,  <34.561142, 19.682343, 22.574036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.635651, 19.764313, 22.786942>,  <34.759830, 19.900930, 23.141787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635651, 19.764313, 22.786942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046205, 0.926697, -0.372957,
		0.949467, -0.156773, -0.271911,
		-0.310449, -0.341547, -0.887112,
		34.542515, 19.661848, 22.520807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082508, 20.136051, 22.661818>,  <34.759830, 19.900930, 23.141787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082508, 20.136051, 22.661818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.766884, 20.020569, 22.444920>,  <34.577507, 19.951281, 22.314781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.766884, 20.020569, 22.444920>,  <35.082508, 20.136051, 22.661818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766884, 20.020569, 22.444920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147723, 0.945959, -0.288687,
		0.596288, -0.147690, -0.789068,
		-0.789062, -0.288704, -0.542247,
		34.530167, 19.933958, 22.282246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139488, 20.653500, 22.078657>,  <35.082508, 20.136051, 22.661818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139488, 20.653500, 22.078657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.792042, 20.458981, 22.040653>,  <34.583576, 20.342270, 22.017851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.792042, 20.458981, 22.040653>,  <35.139488, 20.653500, 22.078657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792042, 20.458981, 22.040653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408180, 0.810981, -0.419164,
		0.280890, -0.325310, -0.902925,
		-0.868613, -0.486295, -0.095012,
		34.531456, 20.313091, 22.012150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944771, 20.768150, 21.384373>,  <35.139488, 20.653500, 22.078657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944771, 20.768150, 21.384373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.604763, 20.721310, 21.589802>,  <34.400761, 20.693205, 21.713060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.604763, 20.721310, 21.589802>,  <34.944771, 20.768150, 21.384373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604763, 20.721310, 21.589802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412162, 0.754986, -0.510018,
		-0.328017, -0.645200, -0.690016,
		-0.850016, -0.117104, 0.513575,
		34.349758, 20.686178, 21.743874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388721, 20.939505, 20.886251>,  <34.944771, 20.768150, 21.384373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388721, 20.939505, 20.886251> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.246456, 20.989723, 21.256710>,  <34.161098, 21.019854, 21.478985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.246456, 20.989723, 21.256710>,  <34.388721, 20.939505, 20.886251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246456, 20.989723, 21.256710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442722, 0.850076, -0.285249,
		-0.823105, -0.511477, -0.246758,
		-0.355662, 0.125545, 0.926144,
		34.139759, 21.027386, 21.534554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775490, 21.192823, 20.718943>,  <34.388721, 20.939505, 20.886251>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775490, 21.192823, 20.718943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.842644, 21.307335, 21.096272>,  <33.882935, 21.376041, 21.322670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.842644, 21.307335, 21.096272>,  <33.775490, 21.192823, 20.718943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842644, 21.307335, 21.096272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198313, 0.947150, -0.252147,
		-0.965654, -0.144742, 0.215783,
		0.167882, 0.286279, 0.943324,
		33.893009, 21.393219, 21.379269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342831, 21.758636, 20.806288>,  <33.775490, 21.192823, 20.718943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342831, 21.758636, 20.806288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.586212, 21.800549, 21.120945>,  <33.732243, 21.825695, 21.309740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.586212, 21.800549, 21.120945>,  <33.342831, 21.758636, 20.806288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586212, 21.800549, 21.120945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079171, 0.994315, -0.071204,
		-0.789631, -0.018955, 0.613289,
		0.608453, 0.104780, 0.786642,
		33.768749, 21.831982, 21.356937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540070, 21.752363, 20.833340>,  <33.342831, 21.758636, 20.806288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540070, 21.752363, 20.833340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.515377, 21.813946, 20.438881>,  <32.500561, 21.850895, 20.202206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.515377, 21.813946, 20.438881>,  <32.540070, 21.752363, 20.833340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515377, 21.813946, 20.438881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144997, -0.976167, -0.161473,
		-0.987504, -0.152956, 0.037933,
		-0.061727, 0.153955, -0.986148,
		32.496861, 21.860132, 20.143036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120911, 21.240417, 20.535603>,  <32.540070, 21.752363, 20.833340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120911, 21.240417, 20.535603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.348557, 21.364883, 20.231159>,  <32.485142, 21.439564, 20.048492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.348557, 21.364883, 20.231159>,  <32.120911, 21.240417, 20.535603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348557, 21.364883, 20.231159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266243, -0.945500, -0.187467,
		-0.777963, -0.095951, -0.620940,
		0.569111, 0.311164, -0.761111,
		32.519291, 21.458233, 20.002827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777805, 21.027662, 19.919546>,  <32.120911, 21.240417, 20.535603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777805, 21.027662, 19.919546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.175682, 21.046890, 19.883156>,  <32.414410, 21.058428, 19.861322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.175682, 21.046890, 19.883156>,  <31.777805, 21.027662, 19.919546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175682, 21.046890, 19.883156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030426, -0.982037, -0.186217,
		-0.098291, 0.182461, -0.978288,
		0.994693, 0.048069, -0.090974,
		32.474091, 21.061312, 19.855864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892162, 20.513142, 19.384838>,  <31.777805, 21.027662, 19.919546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892162, 20.513142, 19.384838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.269234, 20.603165, 19.483391>,  <32.495476, 20.657179, 19.542522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.269234, 20.603165, 19.483391>,  <31.892162, 20.513142, 19.384838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269234, 20.603165, 19.483391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269788, -0.948540, -0.165790,
		0.196393, 0.222758, -0.954887,
		0.942679, 0.225057, 0.246384,
		32.552036, 20.670681, 19.557306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332710, 20.312811, 18.780373>,  <31.892162, 20.513142, 19.384838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332710, 20.312811, 18.780373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.571632, 20.301907, 19.100994>,  <32.714985, 20.295364, 19.293367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.571632, 20.301907, 19.100994>,  <32.332710, 20.312811, 18.780373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571632, 20.301907, 19.100994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302129, -0.918146, -0.256369,
		0.742932, 0.395302, -0.540174,
		0.597302, -0.027262, 0.801553,
		32.750824, 20.293728, 19.341459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940762, 19.998476, 18.502457>,  <32.332710, 20.312811, 18.780373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940762, 19.998476, 18.502457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.965343, 19.972275, 18.900841>,  <32.980091, 19.956554, 19.139872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.965343, 19.972275, 18.900841>,  <32.940762, 19.998476, 18.502457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965343, 19.972275, 18.900841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519592, -0.849875, -0.087956,
		0.852202, 0.522897, -0.018194,
		0.061454, -0.065503, 0.995958,
		32.983780, 19.952623, 19.199629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605999, 19.817991, 18.628315>,  <32.940762, 19.998476, 18.502457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605999, 19.817991, 18.628315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.418629, 19.696873, 18.960312>,  <33.306206, 19.624203, 19.159510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.418629, 19.696873, 18.960312>,  <33.605999, 19.817991, 18.628315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418629, 19.696873, 18.960312> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501526, -0.864538, -0.032349,
		0.727357, 0.401110, 0.556833,
		-0.468427, -0.302795, 0.829994,
		33.278099, 19.606033, 19.209311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117092, 19.438591, 19.080839>,  <33.605999, 19.817991, 18.628315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117092, 19.438591, 19.080839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.761219, 19.323864, 19.222935>,  <33.547695, 19.255028, 19.308193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.761219, 19.323864, 19.222935>,  <34.117092, 19.438591, 19.080839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761219, 19.323864, 19.222935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260654, -0.957873, -0.120576,
		0.374859, -0.014680, 0.926966,
		-0.889686, -0.286816, 0.355241,
		33.494312, 19.237820, 19.329508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297241, 18.891953, 19.563517>,  <34.117092, 19.438591, 19.080839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297241, 18.891953, 19.563517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.914352, 18.834934, 19.462795>,  <33.684620, 18.800724, 19.402363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.914352, 18.834934, 19.462795>,  <34.297241, 18.891953, 19.563517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914352, 18.834934, 19.462795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217932, -0.927629, -0.303330,
		-0.190344, -0.345231, 0.919013,
		-0.957223, -0.142546, -0.251805,
		33.627186, 18.792171, 19.387253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.200331, 34.551212, 21.781591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901522, 34.452724, 21.534584>,  <29.722237, 34.393631, 21.386379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901522, 34.452724, 21.534584>,  <30.200331, 34.551212, 21.781591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901522, 34.452724, 21.534584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439544, -0.879810, -0.180927,
		-0.498753, -0.406584, 0.765463,
		-0.747025, -0.246217, -0.617520,
		29.677414, 34.378860, 21.349327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227596, 33.839989, 21.888796>,  <30.200331, 34.551212, 21.781591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227596, 33.839989, 21.888796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998068, 33.878227, 21.563442>,  <29.860352, 33.901169, 21.368231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998068, 33.878227, 21.563442>,  <30.227596, 33.839989, 21.888796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998068, 33.878227, 21.563442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337271, -0.877454, -0.341062,
		-0.746311, -0.470038, 0.471257,
		-0.573818, 0.095597, -0.813384,
		29.825922, 33.906906, 21.319427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754683, 33.191444, 21.817015>,  <30.227596, 33.839989, 21.888796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754683, 33.191444, 21.817015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818384, 33.368847, 21.464211>,  <29.856606, 33.475288, 21.252527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818384, 33.368847, 21.464211>,  <29.754683, 33.191444, 21.817015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818384, 33.368847, 21.464211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550520, -0.781504, -0.293563,
		-0.819491, -0.438814, -0.368615,
		0.159254, 0.443502, -0.882011,
		29.866159, 33.501896, 21.199608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457121, 32.811413, 21.225845>,  <29.754683, 33.191444, 21.817015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457121, 32.811413, 21.225845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760252, 33.024590, 21.075291>,  <29.942131, 33.152496, 20.984957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760252, 33.024590, 21.075291>,  <29.457121, 32.811413, 21.225845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760252, 33.024590, 21.075291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441521, -0.843620, -0.305556,
		-0.480373, 0.065376, -0.874625,
		0.757827, 0.532946, -0.376388,
		29.987600, 33.184475, 20.962374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627634, 32.391289, 20.641104>,  <29.457121, 32.811413, 21.225845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627634, 32.391289, 20.641104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928030, 32.650433, 20.692162>,  <30.108267, 32.805920, 20.722795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.928030, 32.650433, 20.692162>,  <29.627634, 32.391289, 20.641104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928030, 32.650433, 20.692162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645413, -0.679362, -0.349155,
		-0.139487, 0.344595, -0.928330,
		0.750990, 0.647859, 0.127644,
		30.153326, 32.844791, 20.730455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033342, 32.404499, 20.001848>,  <29.627634, 32.391289, 20.641104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033342, 32.404499, 20.001848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286751, 32.562077, 20.268219>,  <30.438795, 32.656624, 20.428041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.286751, 32.562077, 20.268219>,  <30.033342, 32.404499, 20.001848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286751, 32.562077, 20.268219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729751, -0.590252, -0.345060,
		0.257128, 0.704563, -0.661420,
		0.633521, 0.393947, 0.665926,
		30.476807, 32.680260, 20.467997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706570, 32.531483, 19.632721>,  <30.033342, 32.404499, 20.001848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706570, 32.531483, 19.632721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816011, 32.504330, 20.016499>,  <30.881678, 32.488037, 20.246765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816011, 32.504330, 20.016499>,  <30.706570, 32.531483, 19.632721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816011, 32.504330, 20.016499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774511, -0.575924, -0.261618,
		0.570327, 0.814680, -0.104998,
		0.273605, -0.067886, 0.959443,
		30.898092, 32.483963, 20.304331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511017, 32.557713, 19.643135>,  <30.706570, 32.531483, 19.632721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511017, 32.557713, 19.643135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400536, 32.407852, 19.997162>,  <31.334246, 32.317936, 20.209578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400536, 32.407852, 19.997162>,  <31.511017, 32.557713, 19.643135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400536, 32.407852, 19.997162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690350, -0.718041, -0.088510,
		0.668676, 0.586561, 0.456967,
		-0.276205, -0.374651, 0.885069,
		31.317675, 32.295456, 20.262682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090519, 32.141262, 19.811455>,  <31.511017, 32.557713, 19.643135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090519, 32.141262, 19.811455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800467, 32.010014, 20.053619>,  <31.626436, 31.931265, 20.198919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.800467, 32.010014, 20.053619>,  <32.090519, 32.141262, 19.811455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800467, 32.010014, 20.053619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503594, -0.852317, 0.141240,
		0.469661, 0.407300, 0.783279,
		-0.725129, -0.328120, 0.605413,
		31.582928, 31.911577, 20.235243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412861, 31.760571, 20.246143>,  <32.090519, 32.141262, 19.811455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412861, 31.760571, 20.246143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048294, 31.610630, 20.314041>,  <31.829556, 31.520666, 20.354780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048294, 31.610630, 20.314041>,  <32.412861, 31.760571, 20.246143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048294, 31.610630, 20.314041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395386, -0.912040, 0.108872,
		0.114005, 0.166342, 0.979456,
		-0.911413, -0.374851, 0.169746,
		31.774870, 31.498175, 20.364965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483967, 31.284943, 20.733803>,  <32.412861, 31.760571, 20.246143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483967, 31.284943, 20.733803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134258, 31.145599, 20.598572>,  <31.924433, 31.061995, 20.517433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.134258, 31.145599, 20.598572>,  <32.483967, 31.284943, 20.733803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134258, 31.145599, 20.598572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339296, -0.936588, 0.087640,
		-0.347169, -0.038087, 0.937029,
		-0.874272, -0.348356, -0.338077,
		31.871977, 31.041092, 20.497149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278355, 30.749931, 21.146608>,  <32.483967, 31.284943, 20.733803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278355, 30.749931, 21.146608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069801, 30.672596, 20.814156>,  <31.944670, 30.626194, 20.614683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069801, 30.672596, 20.814156>,  <32.278355, 30.749931, 21.146608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069801, 30.672596, 20.814156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329308, -0.944133, 0.013044,
		-0.787221, -0.266897, 0.555923,
		-0.521383, -0.193338, -0.831132,
		31.913387, 30.614595, 20.564816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323006, 30.389191, 21.770342>,  <32.278355, 30.749931, 21.146608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323006, 30.389191, 21.770342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689545, 30.480831, 21.901684>,  <32.909470, 30.535816, 21.980490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689545, 30.480831, 21.901684>,  <32.323006, 30.389191, 21.770342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689545, 30.480831, 21.901684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323477, 0.906910, 0.269956,
		-0.235941, -0.353589, 0.905155,
		0.916349, 0.229103, 0.328356,
		32.964451, 30.549562, 22.000191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214924, 30.641594, 22.384756>,  <32.323006, 30.389191, 21.770342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214924, 30.641594, 22.384756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565197, 30.810333, 22.290760>,  <32.775360, 30.911577, 22.234362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.565197, 30.810333, 22.290760>,  <32.214924, 30.641594, 22.384756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565197, 30.810333, 22.290760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369078, 0.898508, 0.237622,
		0.311381, -0.121352, 0.942505,
		0.875684, 0.421849, -0.234990,
		32.827904, 30.936888, 22.220263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257671, 31.329220, 22.842545>,  <32.214924, 30.641594, 22.384756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257671, 31.329220, 22.842545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579308, 31.360558, 22.606815>,  <32.772289, 31.379360, 22.465378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579308, 31.360558, 22.606815>,  <32.257671, 31.329220, 22.842545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579308, 31.360558, 22.606815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034957, 0.995795, 0.084684,
		0.593480, -0.047492, 0.803446,
		0.804089, 0.078344, -0.589324,
		32.820534, 31.384060, 22.430017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671768, 31.810474, 23.092979>,  <32.257671, 31.329220, 22.842545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671768, 31.810474, 23.092979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766651, 31.810459, 22.704395>,  <32.823582, 31.810450, 22.471245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766651, 31.810459, 22.704395>,  <32.671768, 31.810474, 23.092979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766651, 31.810459, 22.704395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046137, 0.998871, -0.011304,
		0.970364, 0.047501, 0.236934,
		0.237204, -0.000038, -0.971460,
		32.837811, 31.810448, 22.412958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331875, 32.077747, 23.045784>,  <32.671768, 31.810474, 23.092979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331875, 32.077747, 23.045784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167469, 32.139816, 22.686455>,  <33.068825, 32.177059, 22.470858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167469, 32.139816, 22.686455>,  <33.331875, 32.077747, 23.045784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167469, 32.139816, 22.686455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099846, 0.987141, 0.124830,
		0.906143, -0.038387, -0.421226,
		-0.411018, 0.155171, -0.898324,
		33.044163, 32.186367, 22.416958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643604, 32.664268, 22.786362>,  <33.331875, 32.077747, 23.045784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643604, 32.664268, 22.786362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337543, 32.642464, 22.529747>,  <33.153908, 32.629383, 22.375778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337543, 32.642464, 22.529747>,  <33.643604, 32.664268, 22.786362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337543, 32.642464, 22.529747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026762, 0.992856, -0.116276,
		0.643292, -0.106138, -0.758228,
		-0.765153, -0.054508, -0.641537,
		33.107998, 32.626110, 22.337286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904369, 32.885353, 22.059891>,  <33.643604, 32.664268, 22.786362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904369, 32.885353, 22.059891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505783, 32.907715, 22.084988>,  <33.266632, 32.921131, 22.100046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.505783, 32.907715, 22.084988>,  <33.904369, 32.885353, 22.059891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505783, 32.907715, 22.084988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033383, 0.948513, -0.314973,
		-0.077123, -0.311765, -0.947024,
		-0.996463, 0.055906, 0.062745,
		33.206844, 32.924488, 22.103811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692795, 33.390694, 21.524637>,  <33.904369, 32.885353, 22.059891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692795, 33.390694, 21.524637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408871, 33.344372, 21.802563>,  <33.238518, 33.316578, 21.969318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.408871, 33.344372, 21.802563>,  <33.692795, 33.390694, 21.524637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408871, 33.344372, 21.802563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118850, 0.991940, 0.043920,
		-0.694298, -0.051404, -0.717850,
		-0.709806, -0.115809, 0.694812,
		33.195930, 33.309628, 22.011005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295254, 33.963089, 21.307777>,  <33.692795, 33.390694, 21.524637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295254, 33.963089, 21.307777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161728, 33.855015, 21.669014>,  <33.081612, 33.790173, 21.885756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161728, 33.855015, 21.669014>,  <33.295254, 33.963089, 21.307777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161728, 33.855015, 21.669014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297846, 0.939193, 0.170890,
		-0.894348, -0.211937, -0.393986,
		-0.333811, -0.270182, 0.903090,
		33.061584, 33.773960, 21.939941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768188, 34.403236, 21.365715>,  <33.295254, 33.963089, 21.307777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768188, 34.403236, 21.365715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872803, 34.293777, 21.735950>,  <32.935570, 34.228104, 21.958092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872803, 34.293777, 21.735950>,  <32.768188, 34.403236, 21.365715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872803, 34.293777, 21.735950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108597, 0.944536, 0.309933,
		-0.959066, -0.181574, 0.217309,
		0.261532, -0.273647, 0.925591,
		32.951263, 34.211685, 22.013628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457180, 34.881176, 21.748728>,  <32.768188, 34.403236, 21.365715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457180, 34.881176, 21.748728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714046, 34.713558, 22.005486>,  <32.868164, 34.612988, 22.159540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714046, 34.713558, 22.005486>,  <32.457180, 34.881176, 21.748728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714046, 34.713558, 22.005486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026546, 0.824701, 0.564945,
		-0.766108, -0.379827, 0.518470,
		0.642164, -0.419046, 0.641893,
		32.906696, 34.587845, 22.198053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303654, 35.174644, 22.437731>,  <32.457180, 34.881176, 21.748728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303654, 35.174644, 22.437731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674282, 35.028732, 22.474411>,  <32.896660, 34.941185, 22.496418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674282, 35.028732, 22.474411>,  <32.303654, 35.174644, 22.437731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674282, 35.028732, 22.474411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239293, 0.759786, 0.604536,
		-0.290195, -0.538200, 0.791282,
		0.926567, -0.364782, 0.091699,
		32.952251, 34.919296, 22.501921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403831, 35.181744, 23.152065>,  <32.303654, 35.174644, 22.437731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403831, 35.181744, 23.152065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766685, 35.165379, 22.984528>,  <32.984398, 35.155560, 22.884005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766685, 35.165379, 22.984528>,  <32.403831, 35.181744, 23.152065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766685, 35.165379, 22.984528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288921, 0.784200, 0.549140,
		0.305989, -0.619158, 0.723197,
		0.907136, -0.040916, -0.418844,
		33.038826, 35.153103, 22.858873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920147, 35.061577, 23.714424>,  <32.403831, 35.181744, 23.152065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920147, 35.061577, 23.714424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098167, 35.252781, 23.411522>,  <33.204979, 35.367504, 23.229780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098167, 35.252781, 23.411522>,  <32.920147, 35.061577, 23.714424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098167, 35.252781, 23.411522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247637, 0.746947, 0.617047,
		0.860585, -0.462141, 0.214055,
		0.445050, 0.478013, -0.757254,
		33.231682, 35.396183, 23.184345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698517, 35.494732, 24.337902>,  <32.920147, 35.061577, 23.714424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698517, 35.494732, 24.337902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643803, 35.496403, 23.941666>,  <32.610973, 35.497406, 23.703924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643803, 35.496403, 23.941666>,  <32.698517, 35.494732, 24.337902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643803, 35.496403, 23.941666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876813, -0.465846, 0.119111,
		-0.460966, 0.884856, 0.067380,
		-0.136785, 0.004174, -0.990592,
		32.602768, 35.497654, 23.644487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114586, 35.174061, 24.687588>,  <32.698517, 35.494732, 24.337902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114586, 35.174061, 24.687588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757113, 35.239876, 24.854561>,  <31.542627, 35.279366, 24.954744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757113, 35.239876, 24.854561>,  <32.114586, 35.174061, 24.687588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757113, 35.239876, 24.854561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101603, -0.831960, 0.545453,
		0.437037, 0.529877, 0.726793,
		-0.893686, 0.164539, 0.417435,
		31.489006, 35.289238, 24.979792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120396, 35.236687, 25.479351>,  <32.114586, 35.174061, 24.687588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120396, 35.236687, 25.479351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788759, 35.063072, 25.338371>,  <31.589777, 34.958904, 25.253784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788759, 35.063072, 25.338371>,  <32.120396, 35.236687, 25.479351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788759, 35.063072, 25.338371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198952, -0.818134, 0.539513,
		-0.522517, 0.377185, 0.764661,
		-0.829092, -0.434036, -0.352448,
		31.540031, 34.932861, 25.232637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774170, 34.952713, 26.004639>,  <32.120396, 35.236687, 25.479351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774170, 34.952713, 26.004639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609171, 34.728168, 25.717663>,  <31.510172, 34.593441, 25.545477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609171, 34.728168, 25.717663>,  <31.774170, 34.952713, 26.004639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609171, 34.728168, 25.717663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021840, -0.793432, 0.608267,
		-0.910697, 0.235240, 0.339548,
		-0.412497, -0.561363, -0.717438,
		31.485422, 34.559761, 25.502432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504692, 34.448750, 26.403475>,  <31.774170, 34.952713, 26.004639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504692, 34.448750, 26.403475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489508, 34.296539, 26.033878>,  <31.480396, 34.205212, 25.812120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489508, 34.296539, 26.033878>,  <31.504692, 34.448750, 26.403475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489508, 34.296539, 26.033878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029189, -0.923840, 0.381665,
		-0.998853, 0.041459, 0.023964,
		-0.037963, -0.380528, -0.923990,
		31.478119, 34.182381, 25.756681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051050, 33.745850, 26.392473>,  <31.504692, 34.448750, 26.403475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051050, 33.745850, 26.392473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282124, 33.760284, 26.066288>,  <31.420769, 33.768944, 25.870577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282124, 33.760284, 26.066288>,  <31.051050, 33.745850, 26.392473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282124, 33.760284, 26.066288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036688, -0.996865, -0.070106,
		-0.815435, 0.070417, -0.574550,
		0.577685, 0.036088, -0.815461,
		31.455429, 33.771111, 25.821650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683561, 33.197617, 25.835772>,  <31.051050, 33.745850, 26.392473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683561, 33.197617, 25.835772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070097, 33.256546, 25.751408>,  <31.302019, 33.291904, 25.700790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.070097, 33.256546, 25.751408>,  <30.683561, 33.197617, 25.835772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.070097, 33.256546, 25.751408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148108, -0.988896, -0.012165,
		-0.210359, -0.019481, -0.977430,
		0.966340, 0.147325, -0.210908,
		31.359999, 33.300743, 25.688135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848892, 32.705727, 25.272230>,  <30.683561, 33.197617, 25.835772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848892, 32.705727, 25.272230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210632, 32.797409, 25.416241>,  <31.427675, 32.852417, 25.502647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210632, 32.797409, 25.416241>,  <30.848892, 32.705727, 25.272230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210632, 32.797409, 25.416241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305135, -0.937027, -0.169922,
		0.298408, 0.263525, -0.917337,
		0.904348, 0.229206, 0.360027,
		31.481937, 32.866169, 25.524248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421049, 32.679340, 24.693113>,  <30.848892, 32.705727, 25.272230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421049, 32.679340, 24.693113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599432, 32.622776, 25.046638>,  <31.706463, 32.588837, 25.258753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599432, 32.622776, 25.046638>,  <31.421049, 32.679340, 24.693113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599432, 32.622776, 25.046638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230897, -0.935843, -0.266243,
		0.864759, 0.322803, -0.384696,
		0.445958, -0.141411, 0.883812,
		31.733219, 32.580353, 25.311783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081112, 32.441872, 24.562311>,  <31.421049, 32.679340, 24.693113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081112, 32.441872, 24.562311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009121, 32.302074, 24.930107>,  <31.965927, 32.218197, 25.150785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009121, 32.302074, 24.930107>,  <32.081112, 32.441872, 24.562311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009121, 32.302074, 24.930107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228171, -0.924092, -0.306581,
		0.956842, 0.154623, 0.246059,
		-0.179977, -0.349493, 0.919491,
		31.955128, 32.197227, 25.205954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583389, 31.811428, 24.620298>,  <32.081112, 32.441872, 24.562311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583389, 31.811428, 24.620298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305370, 31.793510, 24.907326>,  <32.138557, 31.782759, 25.079542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305370, 31.793510, 24.907326>,  <32.583389, 31.811428, 24.620298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305370, 31.793510, 24.907326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121846, -0.990959, 0.056161,
		0.708564, 0.126467, 0.694222,
		-0.695048, -0.044795, 0.717567,
		32.096855, 31.780071, 25.122595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822250, 31.383640, 25.103735>,  <32.583389, 31.811428, 24.620298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822250, 31.383640, 25.103735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428627, 31.364803, 25.172344>,  <32.192455, 31.353502, 25.213511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428627, 31.364803, 25.172344>,  <32.822250, 31.383640, 25.103735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428627, 31.364803, 25.172344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055448, -0.997480, 0.044261,
		0.169006, 0.053066, 0.984185,
		-0.984054, -0.047090, 0.171523,
		32.133411, 31.350676, 25.223801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679455, 30.838991, 25.725876>,  <32.822250, 31.383640, 25.103735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679455, 30.838991, 25.725876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350876, 30.877483, 25.501034>,  <32.153728, 30.900578, 25.366129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350876, 30.877483, 25.501034>,  <32.679455, 30.838991, 25.725876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350876, 30.877483, 25.501034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006538, -0.987185, -0.159445,
		-0.570243, -0.127301, 0.811552,
		-0.821450, 0.096229, -0.562104,
		32.104443, 30.906351, 25.332403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164150, 30.385916, 25.962179>,  <32.679455, 30.838991, 25.725876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164150, 30.385916, 25.962179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044151, 30.469769, 25.589931>,  <31.972153, 30.520081, 25.366583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044151, 30.469769, 25.589931>,  <32.164150, 30.385916, 25.962179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044151, 30.469769, 25.589931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307291, -0.944791, -0.113767,
		-0.903091, 0.251842, 0.347852,
		-0.299996, 0.209633, -0.930621,
		31.954153, 30.532658, 25.310745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690372, 29.945803, 25.942556>,  <32.164150, 30.385916, 25.962179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690372, 29.945803, 25.942556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752012, 30.048626, 25.560944>,  <31.788996, 30.110319, 25.331976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752012, 30.048626, 25.560944>,  <31.690372, 29.945803, 25.942556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752012, 30.048626, 25.560944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113962, -0.954496, -0.275590,
		-0.981461, 0.151192, -0.117793,
		0.154100, 0.257057, -0.954031,
		31.798243, 30.125744, 25.274734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226830, 29.488386, 25.565834>,  <31.690372, 29.945803, 25.942556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226830, 29.488386, 25.565834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499868, 29.597717, 25.294731>,  <31.663691, 29.663315, 25.132069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499868, 29.597717, 25.294731>,  <31.226830, 29.488386, 25.565834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499868, 29.597717, 25.294731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112065, -0.877306, -0.466665,
		-0.722153, 0.394496, -0.568214,
		0.682595, 0.273327, -0.677758,
		31.704647, 29.679716, 25.091404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040998, 29.138655, 24.970848>,  <31.226830, 29.488386, 25.565834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040998, 29.138655, 24.970848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423727, 29.240311, 24.914417>,  <31.653364, 29.301304, 24.880558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423727, 29.240311, 24.914417>,  <31.040998, 29.138655, 24.970848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423727, 29.240311, 24.914417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136523, -0.821409, -0.553759,
		-0.256615, 0.510589, -0.820639,
		0.956823, 0.254139, -0.141078,
		31.710773, 29.316553, 24.872093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270655, 28.987362, 24.260944>,  <31.040998, 29.138655, 24.970848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270655, 28.987362, 24.260944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605309, 28.990818, 24.480022>,  <31.806101, 28.992891, 24.611469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605309, 28.990818, 24.480022>,  <31.270655, 28.987362, 24.260944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605309, 28.990818, 24.480022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286410, -0.859205, -0.423954,
		0.466920, 0.511559, -0.721314,
		0.836634, 0.008639, 0.547695,
		31.856298, 28.993410, 24.644331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799480, 28.687630, 23.846573>,  <31.270655, 28.987362, 24.260944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799480, 28.687630, 23.846573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933359, 28.635891, 24.219936>,  <32.013687, 28.604847, 24.443954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933359, 28.635891, 24.219936>,  <31.799480, 28.687630, 23.846573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933359, 28.635891, 24.219936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297236, -0.925476, -0.234829,
		0.894220, 0.356038, -0.271306,
		0.334695, -0.129347, 0.933407,
		32.033768, 28.597086, 24.499958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259418, 28.237827, 23.650038>,  <31.799480, 28.687630, 23.846573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259418, 28.237827, 23.650038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256695, 28.205242, 24.048698>,  <32.255062, 28.185692, 24.287895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256695, 28.205242, 24.048698>,  <32.259418, 28.237827, 23.650038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256695, 28.205242, 24.048698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268999, -0.960087, -0.076637,
		0.963116, 0.267577, 0.028448,
		-0.006806, -0.081463, 0.996653,
		32.254654, 28.180803, 24.347694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860210, 27.855780, 23.824867>,  <32.259418, 28.237827, 23.650038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860210, 27.855780, 23.824867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644863, 27.817707, 24.159794>,  <32.515656, 27.794865, 24.360750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644863, 27.817707, 24.159794>,  <32.860210, 27.855780, 23.824867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644863, 27.817707, 24.159794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300857, -0.949831, 0.085472,
		0.787176, 0.297929, 0.539993,
		-0.538367, -0.095179, 0.837318,
		32.483353, 27.789154, 24.410990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251198, 27.490143, 24.357262>,  <32.860210, 27.855780, 23.824867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251198, 27.490143, 24.357262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872601, 27.421806, 24.466778>,  <32.645443, 27.380804, 24.532488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872601, 27.421806, 24.466778>,  <33.251198, 27.490143, 24.357262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872601, 27.421806, 24.466778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245609, -0.931667, 0.267718,
		0.209344, 0.320638, 0.923778,
		-0.946494, -0.170843, 0.273791,
		32.588654, 27.370554, 24.548916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282642, 27.175945, 24.969696>,  <33.251198, 27.490143, 24.357262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282642, 27.175945, 24.969696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926952, 27.084469, 24.811211>,  <32.713539, 27.029583, 24.716120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926952, 27.084469, 24.811211>,  <33.282642, 27.175945, 24.969696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926952, 27.084469, 24.811211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160188, -0.966904, 0.198584,
		-0.428517, 0.113116, 0.896425,
		-0.889220, -0.228693, -0.396215,
		32.660187, 27.015862, 24.692347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046921, 26.751646, 25.450083>,  <33.282642, 27.175945, 24.969696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046921, 26.751646, 25.450083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834373, 26.664455, 25.122635>,  <32.706844, 26.612141, 24.926167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834373, 26.664455, 25.122635>,  <33.046921, 26.751646, 25.450083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834373, 26.664455, 25.122635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083289, -0.975091, 0.205576,
		-0.843037, 0.041054, 0.536287,
		-0.531368, -0.217975, -0.818618,
		32.674965, 26.599064, 24.877050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683979, 26.131453, 25.695129>,  <33.046921, 26.751646, 25.450083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683979, 26.131453, 25.695129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596783, 26.121681, 25.304871>,  <32.544464, 26.115818, 25.070715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596783, 26.121681, 25.304871>,  <32.683979, 26.131453, 25.695129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596783, 26.121681, 25.304871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232773, -0.972137, -0.027670,
		-0.947785, -0.233136, 0.217605,
		-0.217993, -0.024427, -0.975645,
		32.531384, 26.114353, 25.012177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219612, 25.669796, 25.565102>,  <32.683979, 26.131453, 25.695129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219612, 25.669796, 25.565102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403580, 25.705715, 25.211739>,  <32.513962, 25.727266, 24.999720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403580, 25.705715, 25.211739>,  <32.219612, 25.669796, 25.565102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403580, 25.705715, 25.211739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073159, -0.995323, -0.063085,
		-0.884943, -0.035615, -0.464336,
		0.459918, 0.089797, -0.883409,
		32.541553, 25.732655, 24.946716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935778, 25.103447, 25.090139>,  <32.219612, 25.669796, 25.565102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935778, 25.103447, 25.090139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301167, 25.201153, 24.959969>,  <32.520401, 25.259775, 24.881866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301167, 25.201153, 24.959969>,  <31.935778, 25.103447, 25.090139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301167, 25.201153, 24.959969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197972, -0.965527, -0.169012,
		-0.355490, 0.089963, -0.930341,
		0.913474, 0.244263, -0.325425,
		32.575207, 25.274431, 24.862341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953983, 24.655310, 24.614958>,  <31.935778, 25.103447, 25.090139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953983, 24.655310, 24.614958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331638, 24.776497, 24.666824>,  <32.558231, 24.849209, 24.697945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331638, 24.776497, 24.666824>,  <31.953983, 24.655310, 24.614958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331638, 24.776497, 24.666824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282274, -0.946525, 0.156242,
		0.170068, -0.110913, -0.979171,
		0.944139, 0.302966, 0.129666,
		32.614880, 24.867386, 24.705725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415573, 24.775267, 23.944654>,  <31.953983, 24.655310, 24.614958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415573, 24.775267, 23.944654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081757, 24.572514, 24.031010>,  <30.881466, 24.450861, 24.082823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081757, 24.572514, 24.031010>,  <31.415573, 24.775267, 23.944654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081757, 24.572514, 24.031010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460516, 0.856882, 0.231688,
		-0.302430, 0.093933, -0.948532,
		-0.834542, -0.506883, 0.215889,
		30.831394, 24.420448, 24.095776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862169, 25.138651, 23.596470>,  <31.415573, 24.775267, 23.944654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862169, 25.138651, 23.596470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666517, 24.923466, 23.871090>,  <30.549126, 24.794355, 24.035862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666517, 24.923466, 23.871090>,  <30.862169, 25.138651, 23.596470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666517, 24.923466, 23.871090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512860, 0.814075, 0.272501,
		-0.705498, -0.218815, -0.674087,
		-0.489130, -0.537961, 0.686549,
		30.519779, 24.762077, 24.077055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159069, 25.179911, 23.444723>,  <30.862169, 25.138651, 23.596470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159069, 25.179911, 23.444723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233704, 25.114899, 23.832283>,  <30.278484, 25.075891, 24.064819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233704, 25.114899, 23.832283>,  <30.159069, 25.179911, 23.444723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233704, 25.114899, 23.832283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447636, 0.863835, 0.231109,
		-0.874532, -0.476837, 0.088428,
		0.186588, -0.162529, 0.968901,
		30.289680, 25.066139, 24.122953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532848, 25.321930, 23.857103>,  <30.159069, 25.179911, 23.444723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532848, 25.321930, 23.857103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828321, 25.338848, 24.126194>,  <30.005606, 25.348999, 24.287647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.828321, 25.338848, 24.126194>,  <29.532848, 25.321930, 23.857103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828321, 25.338848, 24.126194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472477, 0.744295, 0.472006,
		-0.480743, -0.666510, 0.569781,
		0.738682, 0.042295, 0.672726,
		30.049927, 25.351536, 24.328012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.179474, 25.366013, 24.533413>,  <29.532848, 25.321930, 23.857103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.179474, 25.366013, 24.533413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551035, 25.509773, 24.569115>,  <29.773972, 25.596029, 24.590536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551035, 25.509773, 24.569115>,  <29.179474, 25.366013, 24.533413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551035, 25.509773, 24.569115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367017, 0.861355, 0.351234,
		0.049355, -0.359021, 0.932024,
		0.928904, 0.359404, 0.089254,
		29.829706, 25.617594, 24.595890>
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
