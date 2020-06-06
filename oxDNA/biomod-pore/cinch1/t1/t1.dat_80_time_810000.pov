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
	<42.985065, 32.414753, 23.295902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859852, 32.102657, 23.079296>,  <42.784721, 31.915401, 22.949331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859852, 32.102657, 23.079296>,  <42.985065, 32.414753, 23.295902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859852, 32.102657, 23.079296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714186, 0.569235, -0.407321,
		0.626056, 0.259237, -0.735425,
		-0.313037, -0.780236, -0.541516,
		42.765942, 31.868587, 22.916842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992264, 32.443310, 22.589808>,  <42.985065, 32.414753, 23.295902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992264, 32.443310, 22.589808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702286, 32.197857, 22.714973>,  <42.528301, 32.050587, 22.790073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.702286, 32.197857, 22.714973>,  <42.992264, 32.443310, 22.589808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702286, 32.197857, 22.714973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688209, 0.626276, -0.366261,
		0.028778, -0.480869, -0.876320,
		-0.724942, -0.613631, 0.312915,
		42.484802, 32.013767, 22.808847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.614788, 32.394409, 21.921795>,  <42.992264, 32.443310, 22.589808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.614788, 32.394409, 21.921795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384609, 32.361378, 22.247257>,  <42.246502, 32.341560, 22.442535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.384609, 32.361378, 22.247257>,  <42.614788, 32.394409, 21.921795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.384609, 32.361378, 22.247257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724128, 0.513865, -0.459979,
		-0.380126, -0.853887, -0.355501,
		-0.575450, -0.082578, 0.813658,
		42.211975, 32.336605, 22.491354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943729, 32.112637, 21.920216>,  <42.614788, 32.394409, 21.921795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943729, 32.112637, 21.920216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949745, 32.400940, 22.197426>,  <41.953354, 32.573921, 22.363752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.949745, 32.400940, 22.197426>,  <41.943729, 32.112637, 21.920216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.949745, 32.400940, 22.197426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755020, 0.462588, -0.464712,
		-0.655530, -0.516256, 0.551145,
		0.015043, 0.720758, 0.693024,
		41.954258, 32.617168, 22.405333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238350, 32.410618, 21.982876>,  <41.943729, 32.112637, 21.920216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238350, 32.410618, 21.982876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485760, 32.685284, 22.135674>,  <41.634205, 32.850082, 22.227352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485760, 32.685284, 22.135674>,  <41.238350, 32.410618, 21.982876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485760, 32.685284, 22.135674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592977, 0.726871, -0.346464,
		-0.515564, -0.012217, 0.856764,
		0.618524, 0.686666, 0.381993,
		41.671318, 32.891285, 22.250271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558304, 32.164543, 21.969908>,  <41.238350, 32.410618, 21.982876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558304, 32.164543, 21.969908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226746, 31.941727, 21.949352>,  <40.027813, 31.808037, 21.937019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226746, 31.941727, 21.949352>,  <40.558304, 32.164543, 21.969908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226746, 31.941727, 21.949352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431575, -0.695225, 0.574809,
		-0.355921, 0.454276, 0.816672,
		-0.828893, -0.557042, -0.051391,
		39.978077, 31.774614, 21.933935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306370, 32.030861, 22.604475>,  <40.558304, 32.164543, 21.969908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306370, 32.030861, 22.604475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194077, 31.738686, 22.355431>,  <40.126701, 31.563379, 22.206003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194077, 31.738686, 22.355431>,  <40.306370, 32.030861, 22.604475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194077, 31.738686, 22.355431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349946, -0.681943, 0.642255,
		-0.893715, -0.037578, 0.447059,
		-0.280733, -0.730440, -0.622613,
		40.109856, 31.519554, 22.168646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891190, 31.560165, 22.969725>,  <40.306370, 32.030861, 22.604475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891190, 31.560165, 22.969725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976112, 31.315720, 22.664711>,  <40.027065, 31.169052, 22.481703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976112, 31.315720, 22.664711>,  <39.891190, 31.560165, 22.969725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976112, 31.315720, 22.664711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397190, -0.658994, 0.638723,
		-0.892841, -0.438479, 0.102818,
		0.212310, -0.611116, -0.762536,
		40.039806, 31.132385, 22.435949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470901, 30.845987, 23.071354>,  <39.891190, 31.560165, 22.969725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470901, 30.845987, 23.071354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803444, 30.810345, 22.851936>,  <40.002972, 30.788960, 22.720285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803444, 30.810345, 22.851936>,  <39.470901, 30.845987, 23.071354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803444, 30.810345, 22.851936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294706, -0.766150, 0.571107,
		-0.471155, -0.636455, -0.610687,
		0.831361, -0.089107, -0.548543,
		40.052853, 30.783613, 22.687374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550781, 30.173273, 23.026531>,  <39.470901, 30.845987, 23.071354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550781, 30.173273, 23.026531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912968, 30.311790, 22.928383>,  <40.130280, 30.394901, 22.869493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912968, 30.311790, 22.928383>,  <39.550781, 30.173273, 23.026531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912968, 30.311790, 22.928383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418477, -0.824822, 0.380192,
		-0.070728, -0.446933, -0.891767,
		0.905469, 0.346293, -0.245369,
		40.184608, 30.415678, 22.854773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815876, 29.542282, 22.745754>,  <39.550781, 30.173273, 23.026531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815876, 29.542282, 22.745754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133297, 29.766773, 22.839813>,  <40.323750, 29.901466, 22.896248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133297, 29.766773, 22.839813>,  <39.815876, 29.542282, 22.745754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133297, 29.766773, 22.839813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465151, -0.808632, 0.360206,
		0.392303, -0.176466, -0.902750,
		0.793557, 0.561225, 0.235145,
		40.371365, 29.935141, 22.910357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399399, 29.046497, 22.768730>,  <39.815876, 29.542282, 22.745754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399399, 29.046497, 22.768730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532356, 29.372944, 22.957821>,  <40.612133, 29.568811, 23.071276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532356, 29.372944, 22.957821>,  <40.399399, 29.046497, 22.768730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532356, 29.372944, 22.957821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588649, -0.571135, 0.572098,
		0.736888, 0.088105, -0.670249,
		0.332398, 0.816114, 0.472726,
		40.632076, 29.617779, 23.099638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148918, 28.974836, 22.893866>,  <40.399399, 29.046497, 22.768730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148918, 28.974836, 22.893866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034264, 29.255047, 23.155277>,  <40.965469, 29.423174, 23.312124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034264, 29.255047, 23.155277>,  <41.148918, 28.974836, 22.893866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034264, 29.255047, 23.155277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459489, -0.498054, 0.735400,
		0.840660, 0.511082, -0.179123,
		-0.286637, 0.700526, 0.653531,
		40.948273, 29.465204, 23.351336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744892, 29.285027, 23.183043>,  <41.148918, 28.974836, 22.893866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744892, 29.285027, 23.183043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436684, 29.329578, 23.434086>,  <41.251759, 29.356310, 23.584711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.436684, 29.329578, 23.434086>,  <41.744892, 29.285027, 23.183043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436684, 29.329578, 23.434086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569769, -0.321071, 0.756490,
		0.285764, 0.940483, 0.183932,
		-0.770521, 0.111379, 0.627609,
		41.205528, 29.362991, 23.622368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096771, 29.518442, 23.869473>,  <41.744892, 29.285027, 23.183043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096771, 29.518442, 23.869473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726738, 29.400517, 23.965229>,  <41.504719, 29.329762, 24.022682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726738, 29.400517, 23.965229>,  <42.096771, 29.518442, 23.869473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726738, 29.400517, 23.965229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320432, -0.267613, 0.908684,
		-0.203829, 0.917316, 0.342032,
		-0.925082, -0.294814, 0.239390,
		41.449215, 29.312073, 24.037046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895458, 29.807238, 24.501005>,  <42.096771, 29.518442, 23.869473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895458, 29.807238, 24.501005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676910, 29.472881, 24.479973>,  <41.545780, 29.272268, 24.467354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676910, 29.472881, 24.479973>,  <41.895458, 29.807238, 24.501005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676910, 29.472881, 24.479973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448117, -0.344789, 0.824810,
		-0.707579, 0.427092, 0.562960,
		-0.546372, -0.835891, -0.052578,
		41.513000, 29.222115, 24.464199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909081, 29.607357, 25.169588>,  <41.895458, 29.807238, 24.501005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909081, 29.607357, 25.169588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705837, 29.296745, 25.020550>,  <41.583893, 29.110378, 24.931128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705837, 29.296745, 25.020550>,  <41.909081, 29.607357, 25.169588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705837, 29.296745, 25.020550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254230, -0.548543, 0.796535,
		-0.822917, 0.310002, 0.476136,
		-0.508108, -0.776531, -0.372594,
		41.553406, 29.063786, 24.908772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337948, 29.374411, 25.619247>,  <41.909081, 29.607357, 25.169588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337948, 29.374411, 25.619247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439201, 29.054962, 25.400845>,  <41.499954, 28.863293, 25.269802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439201, 29.054962, 25.400845>,  <41.337948, 29.374411, 25.619247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439201, 29.054962, 25.400845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368572, -0.442214, 0.817680,
		-0.894471, -0.408226, 0.182411,
		0.253134, -0.798623, -0.546008,
		41.515141, 28.815376, 25.237041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001862, 28.646624, 25.860331>,  <41.337948, 29.374411, 25.619247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001862, 28.646624, 25.860331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326950, 28.550213, 25.648144>,  <41.522003, 28.492367, 25.520832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326950, 28.550213, 25.648144>,  <41.001862, 28.646624, 25.860331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326950, 28.550213, 25.648144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325638, -0.567077, 0.756561,
		-0.483167, -0.787611, -0.382386,
		0.812717, -0.241025, -0.530468,
		41.570766, 28.477905, 25.489002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124401, 27.923206, 26.037027>,  <41.001862, 28.646624, 25.860331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124401, 27.923206, 26.037027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461983, 28.059898, 25.871639>,  <41.664532, 28.141914, 25.772408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461983, 28.059898, 25.871639>,  <41.124401, 27.923206, 26.037027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461983, 28.059898, 25.871639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533349, -0.616826, 0.578848,
		-0.057228, -0.709046, -0.702836,
		0.843957, 0.341730, -0.413469,
		41.715172, 28.162416, 25.747599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519424, 27.360359, 25.857473>,  <41.124401, 27.923206, 26.037027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519424, 27.360359, 25.857473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756702, 27.675724, 25.922619>,  <41.899071, 27.864943, 25.961706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756702, 27.675724, 25.922619>,  <41.519424, 27.360359, 25.857473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756702, 27.675724, 25.922619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497341, -0.517962, 0.695965,
		0.633063, -0.331847, -0.699363,
		0.593198, 0.788411, 0.162862,
		41.934662, 27.912247, 25.971478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128044, 27.132090, 25.788076>,  <41.519424, 27.360359, 25.857473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128044, 27.132090, 25.788076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192467, 27.458435, 26.010220>,  <42.231121, 27.654243, 26.143505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.192467, 27.458435, 26.010220>,  <42.128044, 27.132090, 25.788076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.192467, 27.458435, 26.010220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484307, -0.555631, 0.675811,
		0.859946, 0.160119, -0.484619,
		0.161059, 0.815865, 0.555359,
		42.240784, 27.703194, 26.176826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823009, 27.194046, 26.008377>,  <42.128044, 27.132090, 25.788076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823009, 27.194046, 26.008377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635536, 27.415787, 26.283485>,  <42.523052, 27.548832, 26.448551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.635536, 27.415787, 26.283485>,  <42.823009, 27.194046, 26.008377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.635536, 27.415787, 26.283485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516832, -0.459333, 0.722425,
		0.716395, 0.694050, -0.071226,
		-0.468682, 0.554354, 0.687771,
		42.494930, 27.582092, 26.489817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258213, 27.215591, 26.535208>,  <42.823009, 27.194046, 26.008377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258213, 27.215591, 26.535208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943306, 27.351467, 26.741051>,  <42.754360, 27.432993, 26.864557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943306, 27.351467, 26.741051>,  <43.258213, 27.215591, 26.535208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943306, 27.351467, 26.741051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415169, -0.325038, 0.849697,
		0.455901, 0.882588, 0.114863,
		-0.787267, 0.339690, 0.514608,
		42.707127, 27.453375, 26.895433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446270, 27.756889, 27.110434>,  <43.258213, 27.215591, 26.535208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446270, 27.756889, 27.110434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105858, 27.562813, 27.190765>,  <42.901611, 27.446367, 27.238964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105858, 27.562813, 27.190765>,  <43.446270, 27.756889, 27.110434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105858, 27.562813, 27.190765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465883, -0.521189, 0.715063,
		-0.242271, 0.702105, 0.669592,
		-0.851033, -0.485191, 0.200830,
		42.850548, 27.417255, 27.251015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560055, 27.756172, 27.772623>,  <43.446270, 27.756889, 27.110434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560055, 27.756172, 27.772623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267498, 27.492889, 27.701267>,  <43.091965, 27.334919, 27.658455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267498, 27.492889, 27.701267>,  <43.560055, 27.756172, 27.772623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267498, 27.492889, 27.701267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451318, -0.663288, 0.596960,
		-0.511247, 0.356104, 0.782187,
		-0.731395, -0.658209, -0.178388,
		43.048080, 27.295427, 27.647751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367748, 27.466541, 28.427996>,  <43.560055, 27.756172, 27.772623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367748, 27.466541, 28.427996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299305, 27.219437, 28.120987>,  <43.258240, 27.071173, 27.936781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299305, 27.219437, 28.120987>,  <43.367748, 27.466541, 28.427996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299305, 27.219437, 28.120987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292917, -0.775683, 0.559031,
		-0.940703, -0.129165, 0.313679,
		-0.171108, -0.617764, -0.767522,
		43.247974, 27.034107, 27.890730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942394, 27.943026, 28.491526>,  <43.367748, 27.466541, 28.427996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942394, 27.943026, 28.491526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862923, 27.963318, 28.883026>,  <42.815239, 27.975494, 29.117926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.862923, 27.963318, 28.883026>,  <42.942394, 27.943026, 28.491526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.862923, 27.963318, 28.883026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379055, 0.916965, -0.124473,
		-0.903795, -0.395730, -0.162948,
		-0.198675, 0.050732, 0.978752,
		42.803322, 27.978537, 29.176651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135078, 28.064651, 28.821062>,  <42.942394, 27.943026, 28.491526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135078, 28.064651, 28.821062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433990, 28.206509, 29.045845>,  <42.613338, 28.291622, 29.180716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433990, 28.206509, 29.045845>,  <42.135078, 28.064651, 28.821062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433990, 28.206509, 29.045845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300108, 0.934637, -0.190756,
		-0.592879, -0.026100, 0.804869,
		0.747281, 0.354643, 0.561960,
		42.658176, 28.312902, 29.214434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517670, 27.722647, 28.925167>,  <42.135078, 28.064651, 28.821062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517670, 27.722647, 28.925167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416740, 27.388668, 28.729534>,  <41.356182, 27.188282, 28.612154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416740, 27.388668, 28.729534>,  <41.517670, 27.722647, 28.925167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416740, 27.388668, 28.729534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408932, -0.550092, 0.728129,
		-0.876989, -0.016280, 0.480235,
		-0.252320, -0.834945, -0.489082,
		41.341045, 27.138184, 28.582809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961559, 27.138908, 29.222614>,  <41.517670, 27.722647, 28.925167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961559, 27.138908, 29.222614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256390, 26.987625, 28.998585>,  <41.433289, 26.896856, 28.864166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256390, 26.987625, 28.998585>,  <40.961559, 27.138908, 29.222614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256390, 26.987625, 28.998585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367279, -0.471499, 0.801745,
		-0.567300, -0.796648, -0.208622,
		0.737073, -0.378207, -0.560074,
		41.477512, 26.874163, 28.830563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962540, 26.452564, 29.269455>,  <40.961559, 27.138908, 29.222614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962540, 26.452564, 29.269455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338360, 26.556786, 29.180592>,  <41.563850, 26.619318, 29.127274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338360, 26.556786, 29.180592>,  <40.962540, 26.452564, 29.269455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338360, 26.556786, 29.180592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323237, -0.460862, 0.826513,
		0.112968, -0.848361, -0.517224,
		0.939551, 0.260555, -0.222159,
		41.620224, 26.634953, 29.113943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486809, 26.118610, 28.741653>,  <40.962540, 26.452564, 29.269455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486809, 26.118610, 28.741653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141171, 25.935188, 28.658638>,  <39.933788, 25.825134, 28.608829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141171, 25.935188, 28.658638>,  <40.486809, 26.118610, 28.741653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141171, 25.935188, 28.658638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164466, 0.646921, -0.744610,
		0.475706, -0.609279, -0.634416,
		-0.864092, -0.458555, -0.207538,
		39.881943, 25.797621, 28.596376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400330, 25.904747, 27.969229>,  <40.486809, 26.118610, 28.741653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400330, 25.904747, 27.969229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040668, 25.964523, 28.133759>,  <39.824871, 26.000389, 28.232477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040668, 25.964523, 28.133759>,  <40.400330, 25.904747, 27.969229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040668, 25.964523, 28.133759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185138, 0.721750, -0.666934,
		-0.396539, -0.675829, -0.621298,
		-0.899155, 0.149439, 0.411324,
		39.770924, 26.009356, 28.257156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828899, 25.753729, 27.482435>,  <40.400330, 25.904747, 27.969229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828899, 25.753729, 27.482435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716274, 26.036762, 27.741680>,  <39.648701, 26.206583, 27.897226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716274, 26.036762, 27.741680>,  <39.828899, 25.753729, 27.482435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716274, 26.036762, 27.741680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195742, 0.618880, -0.760706,
		-0.939366, -0.341049, -0.035749,
		-0.281562, 0.707583, 0.648112,
		39.631805, 26.249037, 27.936113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042408, 26.052166, 27.337442>,  <39.828899, 25.753729, 27.482435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042408, 26.052166, 27.337442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308460, 26.314072, 27.481049>,  <39.468090, 26.471214, 27.567211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308460, 26.314072, 27.481049>,  <39.042408, 26.052166, 27.337442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308460, 26.314072, 27.481049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210863, 0.625903, -0.750855,
		-0.716339, 0.423712, 0.554371,
		0.665128, 0.654763, 0.359013,
		39.507999, 26.510500, 27.588753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790100, 26.695808, 27.719168>,  <39.042408, 26.052166, 27.337442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790100, 26.695808, 27.719168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133541, 26.791561, 27.537842>,  <39.339607, 26.849012, 27.429047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133541, 26.791561, 27.537842>,  <38.790100, 26.695808, 27.719168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133541, 26.791561, 27.537842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512085, 0.441622, -0.736708,
		0.023841, 0.864677, 0.501762,
		0.858604, 0.239381, -0.453317,
		39.391121, 26.863375, 27.401846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812817, 27.428303, 27.566450>,  <38.790100, 26.695808, 27.719168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812817, 27.428303, 27.566450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056465, 27.270523, 27.291241>,  <39.202656, 27.175856, 27.126116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056465, 27.270523, 27.291241>,  <38.812817, 27.428303, 27.566450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056465, 27.270523, 27.291241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460029, 0.530940, -0.711671,
		0.646018, 0.750007, 0.141951,
		0.609126, -0.394451, -0.688022,
		39.239204, 27.152187, 27.084833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731930, 27.801506, 26.957859>,  <38.812817, 27.428303, 27.566450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731930, 27.801506, 26.957859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938217, 27.492260, 26.810169>,  <39.061989, 27.306713, 26.721556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938217, 27.492260, 26.810169>,  <38.731930, 27.801506, 26.957859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938217, 27.492260, 26.810169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251264, 0.275527, -0.927875,
		0.819084, 0.571297, -0.052161,
		0.515720, -0.773114, -0.369226,
		39.092934, 27.260326, 26.699402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180466, 28.020590, 26.405430>,  <38.731930, 27.801506, 26.957859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180466, 28.020590, 26.405430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194897, 27.633877, 26.304214>,  <39.203556, 27.401848, 26.243486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194897, 27.633877, 26.304214>,  <39.180466, 28.020590, 26.405430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194897, 27.633877, 26.304214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077085, 0.249755, -0.965236,
		0.996372, 0.054327, -0.065514,
		0.036076, -0.966784, -0.253036,
		39.205719, 27.343842, 26.228304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668152, 27.964901, 25.956823>,  <39.180466, 28.020590, 26.405430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668152, 27.964901, 25.956823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403156, 27.673164, 25.888515>,  <39.244160, 27.498121, 25.847530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403156, 27.673164, 25.888515>,  <39.668152, 27.964901, 25.956823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403156, 27.673164, 25.888515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112333, 0.322131, -0.940007,
		0.740598, -0.603563, -0.295339,
		-0.662491, -0.729344, -0.170770,
		39.204411, 27.454361, 25.837284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786266, 27.664564, 25.326706>,  <39.668152, 27.964901, 25.956823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786266, 27.664564, 25.326706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401493, 27.591209, 25.407745>,  <39.170628, 27.547197, 25.456369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401493, 27.591209, 25.407745>,  <39.786266, 27.664564, 25.326706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401493, 27.591209, 25.407745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247056, 0.266759, -0.931559,
		0.116789, -0.946155, -0.301912,
		-0.961937, -0.183385, 0.202599,
		39.112911, 27.536194, 25.468525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540684, 27.464127, 24.719679>,  <39.786266, 27.664564, 25.326706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540684, 27.464127, 24.719679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187038, 27.509594, 24.900970>,  <38.974850, 27.536875, 25.009745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187038, 27.509594, 24.900970>,  <39.540684, 27.464127, 24.719679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187038, 27.509594, 24.900970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412516, 0.265708, -0.871338,
		-0.219470, -0.957329, -0.188027,
		-0.884117, 0.113668, 0.453228,
		38.921803, 27.543695, 25.036940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047009, 27.096159, 24.220888>,  <39.540684, 27.464127, 24.719679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047009, 27.096159, 24.220888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842945, 27.349026, 24.454163>,  <38.720509, 27.500746, 24.594128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.842945, 27.349026, 24.454163>,  <39.047009, 27.096159, 24.220888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842945, 27.349026, 24.454163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366898, 0.453314, -0.812338,
		-0.777900, -0.628388, 0.000681,
		-0.510154, 0.632168, 0.583187,
		38.689899, 27.538675, 24.629118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417568, 27.123812, 23.974741>,  <39.047009, 27.096159, 24.220888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417568, 27.123812, 23.974741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409843, 27.469391, 24.176025>,  <38.405209, 27.676739, 24.296795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409843, 27.469391, 24.176025>,  <38.417568, 27.123812, 23.974741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409843, 27.469391, 24.176025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381112, 0.458942, -0.802575,
		-0.924327, -0.207280, 0.320398,
		-0.019313, 0.863949, 0.503209,
		38.404049, 27.728575, 24.326988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779266, 27.356279, 23.807554>,  <38.417568, 27.123812, 23.974741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779266, 27.356279, 23.807554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984020, 27.664547, 23.959366>,  <38.106873, 27.849506, 24.050453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.984020, 27.664547, 23.959366>,  <37.779266, 27.356279, 23.807554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984020, 27.664547, 23.959366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387288, 0.601387, -0.698815,
		-0.766797, 0.210728, 0.606313,
		0.511889, 0.770667, 0.379529,
		38.137589, 27.895746, 24.073225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307701, 27.918985, 23.860233>,  <37.779266, 27.356279, 23.807554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307701, 27.918985, 23.860233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667202, 28.094196, 23.852425>,  <37.882900, 28.199322, 23.847740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.667202, 28.094196, 23.852425>,  <37.307701, 27.918985, 23.860233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667202, 28.094196, 23.852425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334274, 0.655700, -0.676992,
		-0.283739, 0.614973, 0.735731,
		0.898751, 0.438026, -0.019522,
		37.936829, 28.225603, 23.846567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240135, 28.650833, 23.972418>,  <37.307701, 27.918985, 23.860233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240135, 28.650833, 23.972418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589054, 28.601860, 23.783058>,  <37.798405, 28.572477, 23.669443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589054, 28.601860, 23.783058>,  <37.240135, 28.650833, 23.972418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589054, 28.601860, 23.783058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254775, 0.712545, -0.653735,
		0.417356, 0.690862, 0.590359,
		0.872298, -0.122431, -0.473399,
		37.850742, 28.565130, 23.641039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408577, 29.343067, 23.688309>,  <37.240135, 28.650833, 23.972418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408577, 29.343067, 23.688309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673508, 29.110027, 23.499882>,  <37.832466, 28.970203, 23.386826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.673508, 29.110027, 23.499882>,  <37.408577, 29.343067, 23.688309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673508, 29.110027, 23.499882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032161, 0.606058, -0.794770,
		0.748526, 0.541546, 0.382671,
		0.662326, -0.582599, -0.471066,
		37.872204, 28.935247, 23.358562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966290, 29.790659, 23.500345>,  <37.408577, 29.343067, 23.688309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966290, 29.790659, 23.500345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938713, 29.467949, 23.265617>,  <37.922169, 29.274323, 23.124781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938713, 29.467949, 23.265617>,  <37.966290, 29.790659, 23.500345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938713, 29.467949, 23.265617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056514, 0.584117, -0.809700,
		0.996019, -0.088985, 0.005324,
		-0.068941, -0.806777, -0.586820,
		37.918030, 29.225916, 23.089571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430229, 29.968409, 22.993307>,  <37.966290, 29.790659, 23.500345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430229, 29.968409, 22.993307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249523, 29.649399, 22.833374>,  <38.141098, 29.457993, 22.737415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249523, 29.649399, 22.833374>,  <38.430229, 29.968409, 22.993307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249523, 29.649399, 22.833374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007016, 0.444982, -0.895512,
		0.892109, -0.407367, -0.195432,
		-0.451766, -0.797523, -0.399831,
		38.113995, 29.410141, 22.713425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804379, 29.886240, 22.355358>,  <38.430229, 29.968409, 22.993307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804379, 29.886240, 22.355358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433720, 29.739845, 22.320984>,  <38.211327, 29.652008, 22.300360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433720, 29.739845, 22.320984>,  <38.804379, 29.886240, 22.355358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433720, 29.739845, 22.320984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086051, 0.429007, -0.899193,
		0.365956, -0.825839, -0.429030,
		-0.926646, -0.365984, -0.085933,
		38.155727, 29.630049, 22.295204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802460, 29.714264, 21.678753>,  <38.804379, 29.886240, 22.355358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802460, 29.714264, 21.678753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420231, 29.695690, 21.795177>,  <38.190891, 29.684546, 21.865032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420231, 29.695690, 21.795177>,  <38.802460, 29.714264, 21.678753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420231, 29.695690, 21.795177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287637, 0.362459, -0.886503,
		-0.064333, -0.930842, -0.359714,
		-0.955576, -0.046436, 0.291062,
		38.133556, 29.681759, 21.882496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473385, 29.306316, 21.141760>,  <38.802460, 29.714264, 21.678753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473385, 29.306316, 21.141760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234684, 29.572533, 21.321064>,  <38.091461, 29.732262, 21.428646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.234684, 29.572533, 21.321064>,  <38.473385, 29.306316, 21.141760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234684, 29.572533, 21.321064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089158, 0.500180, -0.861319,
		-0.797455, -0.553963, -0.239147,
		-0.596755, 0.665541, 0.448260,
		38.055656, 29.772196, 21.455542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094131, 29.528519, 20.648430>,  <38.473385, 29.306316, 21.141760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094131, 29.528519, 20.648430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985992, 29.809662, 20.911610>,  <37.921108, 29.978348, 21.069517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985992, 29.809662, 20.911610>,  <38.094131, 29.528519, 20.648430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985992, 29.809662, 20.911610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045834, 0.673228, -0.738014,
		-0.961671, -0.229678, -0.149792,
		-0.270350, 0.702860, 0.657950,
		37.904888, 30.020519, 21.108995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443535, 29.802591, 20.335365>,  <38.094131, 29.528519, 20.648430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443535, 29.802591, 20.335365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577629, 30.080959, 20.589394>,  <37.658085, 30.247980, 20.741810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577629, 30.080959, 20.589394>,  <37.443535, 29.802591, 20.335365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577629, 30.080959, 20.589394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202255, 0.711520, -0.672928,
		-0.920167, 0.097145, 0.379283,
		0.335239, 0.695918, 0.635069,
		37.678200, 30.289734, 20.779915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020672, 30.257202, 20.227415>,  <37.443535, 29.802591, 20.335365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020672, 30.257202, 20.227415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330368, 30.449806, 20.391705>,  <37.516186, 30.565369, 20.490278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.330368, 30.449806, 20.391705>,  <37.020672, 30.257202, 20.227415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330368, 30.449806, 20.391705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030067, 0.620249, -0.783828,
		-0.632174, 0.619223, 0.465746,
		0.774243, 0.481512, 0.410723,
		37.562641, 30.594259, 20.514921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838192, 30.963305, 20.265972>,  <37.020672, 30.257202, 20.227415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838192, 30.963305, 20.265972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237885, 30.949982, 20.274303>,  <37.477699, 30.941988, 20.279303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237885, 30.949982, 20.274303>,  <36.838192, 30.963305, 20.265972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237885, 30.949982, 20.274303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035792, 0.553405, -0.832143,
		0.016188, 0.832246, 0.554170,
		0.999228, -0.033306, 0.020829,
		37.537651, 30.939989, 20.280552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160191, 31.592104, 20.369743>,  <36.838192, 30.963305, 20.265972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160191, 31.592104, 20.369743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424614, 31.387199, 20.150436>,  <37.583267, 31.264257, 20.018852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424614, 31.387199, 20.150436>,  <37.160191, 31.592104, 20.369743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424614, 31.387199, 20.150436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171960, 0.607816, -0.775235,
		0.730367, 0.606753, 0.313712,
		0.661056, -0.512260, -0.548266,
		37.622932, 31.233521, 19.985956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657593, 32.148464, 20.092875>,  <37.160191, 31.592104, 20.369743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657593, 32.148464, 20.092875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535397, 31.831310, 19.881966>,  <37.462078, 31.641018, 19.755421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535397, 31.831310, 19.881966>,  <37.657593, 32.148464, 20.092875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535397, 31.831310, 19.881966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474436, 0.606857, -0.637680,
		0.825582, 0.055351, -0.561560,
		-0.305491, -0.792881, -0.527271,
		37.443748, 31.593447, 19.723783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923691, 32.012989, 19.379116>,  <37.657593, 32.148464, 20.092875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923691, 32.012989, 19.379116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544388, 31.886036, 19.375668>,  <37.316807, 31.809864, 19.373598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544388, 31.886036, 19.375668>,  <37.923691, 32.012989, 19.379116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544388, 31.886036, 19.375668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261152, 0.795124, -0.547338,
		0.180572, -0.516765, -0.836867,
		-0.948258, -0.317383, -0.008623,
		37.259911, 31.790821, 19.373081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592422, 31.982351, 18.651974>,  <37.923691, 32.012989, 19.379116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592422, 31.982351, 18.651974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297302, 32.022663, 18.918953>,  <37.120228, 32.046848, 19.079142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297302, 32.022663, 18.918953>,  <37.592422, 31.982351, 18.651974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297302, 32.022663, 18.918953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430023, 0.692004, -0.579836,
		-0.520314, -0.714824, -0.467226,
		-0.737803, 0.100779, 0.667450,
		37.075962, 32.052898, 19.119188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783482, 31.816837, 18.439697>,  <37.592422, 31.982351, 18.651974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783482, 31.816837, 18.439697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871044, 32.103436, 18.704639>,  <36.923580, 32.275394, 18.863605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871044, 32.103436, 18.704639>,  <36.783482, 31.816837, 18.439697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871044, 32.103436, 18.704639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541603, 0.653871, -0.528317,
		-0.811632, -0.243082, 0.531192,
		0.218907, 0.716494, 0.662356,
		36.936718, 32.318382, 18.903347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123154, 32.212471, 18.541903>,  <36.783482, 31.816837, 18.439697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123154, 32.212471, 18.541903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448463, 32.437576, 18.601074>,  <36.643650, 32.572639, 18.636578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448463, 32.437576, 18.601074>,  <36.123154, 32.212471, 18.541903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448463, 32.437576, 18.601074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403709, 0.728796, -0.553060,
		-0.419053, 0.390068, 0.819903,
		0.813273, 0.562764, 0.147930,
		36.692444, 32.606407, 18.645452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102924, 31.496122, 18.868959>,  <36.123154, 32.212471, 18.541903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102924, 31.496122, 18.868959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801674, 31.584614, 19.116787>,  <35.620926, 31.637709, 19.265484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801674, 31.584614, 19.116787>,  <36.102924, 31.496122, 18.868959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801674, 31.584614, 19.116787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137246, -0.973877, 0.180907,
		0.643404, 0.051212, 0.763812,
		-0.753123, 0.221226, 0.619568,
		35.575737, 31.650982, 19.302658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225876, 31.036722, 19.433044>,  <36.102924, 31.496122, 18.868959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225876, 31.036722, 19.433044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836700, 31.128643, 19.442677>,  <35.603195, 31.183796, 19.448456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836700, 31.128643, 19.442677>,  <36.225876, 31.036722, 19.433044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836700, 31.128643, 19.442677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211072, -0.926332, 0.312020,
		0.094011, 0.298493, 0.949770,
		-0.972939, 0.229803, 0.024082,
		35.544819, 31.197584, 19.449902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920307, 30.657415, 19.982653>,  <36.225876, 31.036722, 19.433044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920307, 30.657415, 19.982653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598602, 30.763054, 19.769703>,  <35.405579, 30.826437, 19.641933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598602, 30.763054, 19.769703>,  <35.920307, 30.657415, 19.982653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598602, 30.763054, 19.769703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414642, -0.891118, 0.184338,
		-0.425724, 0.369000, 0.826195,
		-0.804258, 0.264098, -0.532374,
		35.357327, 30.842283, 19.609991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358162, 30.413990, 20.481995>,  <35.920307, 30.657415, 19.982653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358162, 30.413990, 20.481995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208561, 30.498665, 20.120815>,  <35.118801, 30.549469, 19.904108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208561, 30.498665, 20.120815>,  <35.358162, 30.413990, 20.481995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208561, 30.498665, 20.120815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585548, -0.808910, 0.052893,
		-0.719206, 0.548501, 0.426485,
		-0.374001, 0.211686, -0.902946,
		35.096359, 30.562170, 19.849932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604679, 30.588911, 20.597351>,  <35.358162, 30.413990, 20.481995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604679, 30.588911, 20.597351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677860, 30.467232, 20.223400>,  <34.721767, 30.394224, 19.999029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677860, 30.467232, 20.223400>,  <34.604679, 30.588911, 20.597351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677860, 30.467232, 20.223400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729763, -0.679214, 0.078194,
		-0.658767, 0.667932, -0.346255,
		0.182953, -0.304196, -0.934876,
		34.732746, 30.375973, 19.942938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855053, 30.614119, 20.278360>,  <34.604679, 30.588911, 20.597351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855053, 30.614119, 20.278360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124508, 30.372044, 20.108673>,  <34.286182, 30.226799, 20.006861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124508, 30.372044, 20.108673>,  <33.855053, 30.614119, 20.278360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124508, 30.372044, 20.108673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602699, -0.782048, 0.158604,
		-0.427742, 0.148832, -0.891564,
		0.673640, -0.605186, -0.424216,
		34.326599, 30.190487, 19.981409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430965, 30.179682, 20.031879>,  <33.855053, 30.614119, 20.278360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430965, 30.179682, 20.031879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770016, 29.972908, 19.984032>,  <33.973446, 29.848845, 19.955324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770016, 29.972908, 19.984032>,  <33.430965, 30.179682, 20.031879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770016, 29.972908, 19.984032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483014, -0.845061, 0.229281,
		-0.219607, -0.136567, -0.965982,
		0.847626, -0.516935, -0.119617,
		34.024303, 29.817827, 19.948147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186481, 29.554974, 19.708256>,  <33.430965, 30.179682, 20.031879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186481, 29.554974, 19.708256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536831, 29.489403, 19.889797>,  <33.747040, 29.450060, 19.998722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536831, 29.489403, 19.889797>,  <33.186481, 29.554974, 19.708256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536831, 29.489403, 19.889797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301335, -0.920406, 0.249096,
		0.376896, -0.354937, -0.855552,
		0.875869, -0.163925, 0.453852,
		33.799591, 29.440226, 20.025953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391941, 28.893656, 19.539484>,  <33.186481, 29.554974, 19.708256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391941, 28.893656, 19.539484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598934, 28.977268, 19.871391>,  <33.723129, 29.027435, 20.070536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598934, 28.977268, 19.871391>,  <33.391941, 28.893656, 19.539484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598934, 28.977268, 19.871391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319196, -0.852556, 0.413837,
		0.793929, -0.479014, -0.374464,
		0.517486, 0.209030, 0.829768,
		33.754181, 29.039978, 20.120321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654194, 28.243130, 19.799997>,  <33.391941, 28.893656, 19.539484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654194, 28.243130, 19.799997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663223, 28.462803, 20.134155>,  <33.668640, 28.594606, 20.334650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663223, 28.462803, 20.134155>,  <33.654194, 28.243130, 19.799997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663223, 28.462803, 20.134155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422536, -0.752069, 0.505822,
		0.906065, -0.364403, 0.215074,
		0.022573, 0.549184, 0.835396,
		33.669994, 28.627558, 20.384773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865631, 27.743614, 20.239315>,  <33.654194, 28.243130, 19.799997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865631, 27.743614, 20.239315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743156, 28.041107, 20.477009>,  <33.669674, 28.219603, 20.619625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743156, 28.041107, 20.477009>,  <33.865631, 27.743614, 20.239315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743156, 28.041107, 20.477009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304092, -0.667921, 0.679271,
		0.902097, 0.027280, 0.430669,
		-0.306183, 0.743732, 0.594234,
		33.651302, 28.264227, 20.655279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914360, 27.478756, 20.942226>,  <33.865631, 27.743614, 20.239315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914360, 27.478756, 20.942226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666527, 27.786243, 21.005707>,  <33.517826, 27.970736, 21.043795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666527, 27.786243, 21.005707>,  <33.914360, 27.478756, 20.942226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666527, 27.786243, 21.005707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410510, -0.489673, 0.769222,
		0.669026, 0.411451, 0.618961,
		-0.619585, 0.768719, 0.158699,
		33.480652, 28.016859, 21.053316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109528, 27.753099, 21.656132>,  <33.914360, 27.478756, 20.942226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109528, 27.753099, 21.656132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736618, 27.832935, 21.535442>,  <33.512875, 27.880836, 21.463028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736618, 27.832935, 21.535442>,  <34.109528, 27.753099, 21.656132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736618, 27.832935, 21.535442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360558, -0.444572, 0.819972,
		0.029522, 0.873223, 0.486425,
		-0.932270, 0.199592, -0.301723,
		33.456936, 27.892813, 21.444925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684364, 28.026558, 22.191019>,  <34.109528, 27.753099, 21.656132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684364, 28.026558, 22.191019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410107, 27.863491, 21.949791>,  <33.245552, 27.765652, 21.805054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.410107, 27.863491, 21.949791>,  <33.684364, 28.026558, 22.191019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410107, 27.863491, 21.949791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512608, -0.317817, 0.797638,
		-0.516837, 0.856037, 0.008937,
		-0.685648, -0.407667, -0.603071,
		33.204411, 27.741190, 21.768869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121197, 28.134159, 22.577394>,  <33.684364, 28.026558, 22.191019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121197, 28.134159, 22.577394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047554, 27.827518, 22.331329>,  <33.003368, 27.643534, 22.183691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047554, 27.827518, 22.331329>,  <33.121197, 28.134159, 22.577394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047554, 27.827518, 22.331329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422999, -0.503145, 0.753603,
		-0.887230, 0.398955, -0.231641,
		-0.184104, -0.766603, -0.615162,
		32.992321, 27.597538, 22.146780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483170, 27.872648, 22.724947>,  <33.121197, 28.134159, 22.577394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483170, 27.872648, 22.724947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672806, 27.566570, 22.550724>,  <32.786587, 27.382923, 22.446190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672806, 27.566570, 22.550724>,  <32.483170, 27.872648, 22.724947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672806, 27.566570, 22.550724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468364, -0.638063, 0.611155,
		-0.745567, -0.085746, -0.660892,
		0.474095, -0.765195, -0.435558,
		32.815033, 27.337011, 22.420057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095039, 27.285755, 22.800200>,  <32.483170, 27.872648, 22.724947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095039, 27.285755, 22.800200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422512, 27.083420, 22.691471>,  <32.618996, 26.962019, 22.626234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422512, 27.083420, 22.691471>,  <32.095039, 27.285755, 22.800200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422512, 27.083420, 22.691471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306059, -0.784876, 0.538792,
		-0.485885, -0.357908, -0.797382,
		0.818684, -0.505837, -0.271819,
		32.668118, 26.931669, 22.609926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888033, 26.582371, 22.727003>,  <32.095039, 27.285755, 22.800200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888033, 26.582371, 22.727003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280468, 26.573555, 22.803921>,  <32.515930, 26.568266, 22.850071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280468, 26.573555, 22.803921>,  <31.888033, 26.582371, 22.727003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280468, 26.573555, 22.803921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154774, -0.685910, 0.711036,
		0.116226, -0.727352, -0.676351,
		0.981089, -0.022041, 0.192296,
		32.574795, 26.566942, 22.861610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071129, 25.866814, 22.772974>,  <31.888033, 26.582371, 22.727003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071129, 25.866814, 22.772974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386269, 26.053989, 22.933140>,  <32.575352, 26.166294, 23.029240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386269, 26.053989, 22.933140>,  <32.071129, 25.866814, 22.772974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386269, 26.053989, 22.933140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058254, -0.590624, 0.804842,
		0.613111, -0.657417, -0.438062,
		0.787846, 0.467938, 0.400415,
		32.622623, 26.194370, 23.053265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551041, 25.294106, 22.959988>,  <32.071129, 25.866814, 22.772974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551041, 25.294106, 22.959988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660751, 25.612865, 23.175293>,  <32.726578, 25.804121, 23.304476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660751, 25.612865, 23.175293>,  <32.551041, 25.294106, 22.959988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660751, 25.612865, 23.175293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137315, -0.586444, 0.798266,
		0.951798, -0.145031, -0.270272,
		0.274272, 0.796900, 0.538261,
		32.743034, 25.851936, 23.336771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172775, 25.111574, 23.279467>,  <32.551041, 25.294106, 22.959988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172775, 25.111574, 23.279467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989086, 25.402237, 23.483852>,  <32.878872, 25.576635, 23.606483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989086, 25.402237, 23.483852>,  <33.172775, 25.111574, 23.279467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989086, 25.402237, 23.483852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148830, -0.504134, 0.850705,
		0.875765, 0.466709, 0.123361,
		-0.459222, 0.726658, 0.510963,
		32.851318, 25.620234, 23.637142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631432, 25.103374, 23.836239>,  <33.172775, 25.111574, 23.279467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631432, 25.103374, 23.836239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293747, 25.296196, 23.929985>,  <33.091137, 25.411888, 23.986233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293747, 25.296196, 23.929985>,  <33.631432, 25.103374, 23.836239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293747, 25.296196, 23.929985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068534, -0.530729, 0.844766,
		0.531607, 0.697101, 0.481087,
		-0.844214, 0.482054, 0.234364,
		33.040482, 25.440813, 24.000294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763912, 25.366335, 24.500332>,  <33.631432, 25.103374, 23.836239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763912, 25.366335, 24.500332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367805, 25.331249, 24.457108>,  <33.130142, 25.310198, 24.431173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367805, 25.331249, 24.457108>,  <33.763912, 25.366335, 24.500332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367805, 25.331249, 24.457108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072276, -0.339442, 0.937846,
		-0.118943, 0.936528, 0.329798,
		-0.990267, -0.087714, -0.108062,
		33.070724, 25.304935, 24.424688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601288, 25.390381, 25.146767>,  <33.763912, 25.366335, 24.500332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601288, 25.390381, 25.146767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257519, 25.261002, 24.988384>,  <33.051258, 25.183374, 24.893354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257519, 25.261002, 24.988384>,  <33.601288, 25.390381, 25.146767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257519, 25.261002, 24.988384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158140, -0.568306, 0.807477,
		-0.486200, 0.756578, 0.437263,
		-0.859419, -0.323447, -0.395956,
		32.999695, 25.163967, 24.869596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056763, 25.490273, 25.763708>,  <33.601288, 25.390381, 25.146767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056763, 25.490273, 25.763708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959743, 25.209469, 25.495872>,  <32.901531, 25.040987, 25.335171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959743, 25.209469, 25.495872>,  <33.056763, 25.490273, 25.763708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959743, 25.209469, 25.495872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366122, -0.572926, 0.733287,
		-0.898401, 0.423009, -0.118060,
		-0.242547, -0.702011, -0.669591,
		32.886978, 24.998865, 25.294994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463451, 25.279722, 26.116362>,  <33.056763, 25.490273, 25.763708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463451, 25.279722, 26.116362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555332, 25.006462, 25.839077>,  <32.610462, 24.842506, 25.672707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555332, 25.006462, 25.839077>,  <32.463451, 25.279722, 26.116362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555332, 25.006462, 25.839077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191071, -0.730051, 0.656139,
		-0.954321, -0.018263, -0.298223,
		0.229701, -0.683149, -0.693213,
		32.624241, 24.801517, 25.631113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906013, 24.743307, 26.144943>,  <32.463451, 25.279722, 26.116362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906013, 24.743307, 26.144943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218426, 24.575222, 25.960155>,  <32.405872, 24.474371, 25.849283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218426, 24.575222, 25.960155>,  <31.906013, 24.743307, 26.144943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218426, 24.575222, 25.960155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064951, -0.790397, 0.609142,
		-0.621104, -0.445754, -0.644618,
		0.781032, -0.420210, -0.461966,
		32.452736, 24.449160, 25.821566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752748, 24.024475, 25.923456>,  <31.906013, 24.743307, 26.144943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752748, 24.024475, 25.923456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151852, 24.039150, 25.945850>,  <32.391312, 24.047955, 25.959288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.151852, 24.039150, 25.945850>,  <31.752748, 24.024475, 25.923456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151852, 24.039150, 25.945850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008268, -0.897573, 0.440788,
		0.066423, -0.439336, -0.895864,
		0.997757, 0.036686, 0.055987,
		32.451180, 24.050156, 25.962646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981094, 23.331137, 25.704927>,  <31.752748, 24.024475, 25.923456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981094, 23.331137, 25.704927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317032, 23.449097, 25.887222>,  <32.518593, 23.519873, 25.996599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317032, 23.449097, 25.887222>,  <31.981094, 23.331137, 25.704927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317032, 23.449097, 25.887222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125043, -0.922082, 0.366236,
		0.528230, -0.250594, -0.811280,
		0.839843, 0.294902, 0.455737,
		32.568985, 23.537567, 26.023943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457153, 22.824966, 25.564550>,  <31.981094, 23.331137, 25.704927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457153, 22.824966, 25.564550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553513, 23.006523, 25.907700>,  <32.611328, 23.115458, 26.113588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553513, 23.006523, 25.907700>,  <32.457153, 22.824966, 25.564550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553513, 23.006523, 25.907700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163231, -0.890262, 0.425193,
		0.956725, 0.037602, -0.288554,
		0.240900, 0.453894, 0.857874,
		32.625782, 23.142691, 26.165062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151852, 22.542011, 25.781242>,  <32.457153, 22.824966, 25.564550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151852, 22.542011, 25.781242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994228, 22.692390, 26.116714>,  <32.899654, 22.782618, 26.317997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994228, 22.692390, 26.116714>,  <33.151852, 22.542011, 25.781242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994228, 22.692390, 26.116714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157013, -0.871563, 0.464463,
		0.905576, 0.314708, 0.284415,
		-0.394056, 0.375949, 0.838679,
		32.876011, 22.805176, 26.368319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562302, 22.278654, 26.350962>,  <33.151852, 22.542011, 25.781242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562302, 22.278654, 26.350962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252739, 22.396854, 26.575016>,  <33.067001, 22.467775, 26.709448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252739, 22.396854, 26.575016>,  <33.562302, 22.278654, 26.350962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252739, 22.396854, 26.575016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029162, -0.900157, 0.434589,
		0.632630, 0.319995, 0.705253,
		-0.773905, 0.295501, 0.560135,
		33.020569, 22.485504, 26.743057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687164, 22.126411, 27.020164>,  <33.562302, 22.278654, 26.350962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687164, 22.126411, 27.020164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289154, 22.165218, 27.029240>,  <33.050346, 22.188501, 27.034685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.289154, 22.165218, 27.029240>,  <33.687164, 22.126411, 27.020164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289154, 22.165218, 27.029240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061168, -0.774570, 0.629524,
		0.078646, 0.625004, 0.776650,
		-0.995024, 0.097016, 0.022687,
		32.990646, 22.194323, 27.036045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476318, 22.002214, 27.685476>,  <33.687164, 22.126411, 27.020164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476318, 22.002214, 27.685476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133644, 21.923962, 27.494556>,  <32.928040, 21.877010, 27.380005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.133644, 21.923962, 27.494556>,  <33.476318, 22.002214, 27.685476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133644, 21.923962, 27.494556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158296, -0.780947, 0.604205,
		-0.490947, 0.593170, 0.638060,
		-0.856687, -0.195631, -0.477300,
		32.876637, 21.865273, 27.351366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939453, 21.951187, 28.320349>,  <33.476318, 22.002214, 27.685476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939453, 21.951187, 28.320349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821289, 21.752407, 27.993969>,  <32.750389, 21.633139, 27.798141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821289, 21.752407, 27.993969>,  <32.939453, 21.951187, 28.320349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821289, 21.752407, 27.993969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540357, -0.617419, 0.571671,
		-0.787876, 0.609780, -0.086140,
		-0.295409, -0.496952, -0.815949,
		32.732666, 21.603321, 27.749184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328045, 21.777491, 28.538786>,  <32.939453, 21.951187, 28.320349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328045, 21.777491, 28.538786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427624, 21.532993, 28.238277>,  <32.487373, 21.386295, 28.057972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427624, 21.532993, 28.238277>,  <32.328045, 21.777491, 28.538786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427624, 21.532993, 28.238277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454619, -0.758676, 0.466618,
		-0.855187, 0.225377, -0.466755,
		0.248951, -0.611241, -0.751270,
		32.502308, 21.349621, 28.012896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814646, 21.287468, 28.509764>,  <32.328045, 21.777491, 28.538786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814646, 21.287468, 28.509764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091293, 21.105534, 28.285339>,  <32.257282, 20.996374, 28.150684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091293, 21.105534, 28.285339>,  <31.814646, 21.287468, 28.509764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091293, 21.105534, 28.285339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220209, -0.872614, 0.435950,
		-0.687873, -0.177962, -0.703677,
		0.691621, -0.454834, -0.561059,
		32.298779, 20.969084, 28.117022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563793, 20.657890, 28.273603>,  <31.814646, 21.287468, 28.509764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563793, 20.657890, 28.273603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960833, 20.625729, 28.310017>,  <32.199055, 20.606432, 28.331865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960833, 20.625729, 28.310017>,  <31.563793, 20.657890, 28.273603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960833, 20.625729, 28.310017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116879, -0.836140, 0.535919,
		0.033028, -0.542592, -0.839347,
		0.992597, -0.080402, 0.091033,
		32.258610, 20.601608, 28.337326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677660, 19.999487, 28.208601>,  <31.563793, 20.657890, 28.273603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677660, 19.999487, 28.208601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035347, 20.107048, 28.351746>,  <32.249958, 20.171585, 28.437632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035347, 20.107048, 28.351746>,  <31.677660, 19.999487, 28.208601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035347, 20.107048, 28.351746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066460, -0.870353, 0.487924,
		0.442670, -0.412527, -0.796157,
		0.894219, 0.268902, 0.357862,
		32.303612, 20.187719, 28.459105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171909, 19.447308, 28.089567>,  <31.677660, 19.999487, 28.208601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171909, 19.447308, 28.089567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326336, 19.660995, 28.390381>,  <32.418991, 19.789209, 28.570869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326336, 19.660995, 28.390381>,  <32.171909, 19.447308, 28.089567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326336, 19.660995, 28.390381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198603, -0.844259, 0.497779,
		0.900837, -0.042820, -0.432041,
		0.386070, 0.534222, 0.752035,
		32.442158, 19.821262, 28.615992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666779, 19.102318, 28.328354>,  <32.171909, 19.447308, 28.089567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666779, 19.102318, 28.328354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606628, 19.334789, 28.648258>,  <32.570538, 19.474272, 28.840200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606628, 19.334789, 28.648258>,  <32.666779, 19.102318, 28.328354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606628, 19.334789, 28.648258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155568, -0.784970, 0.599683,
		0.976312, 0.214597, 0.027631,
		-0.150379, 0.581180, 0.799760,
		32.561516, 19.509144, 28.888186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118099, 18.790981, 28.758591>,  <32.666779, 19.102318, 28.328354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118099, 18.790981, 28.758591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866924, 19.009247, 28.980560>,  <32.716217, 19.140205, 29.113743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.866924, 19.009247, 28.980560>,  <33.118099, 18.790981, 28.758591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866924, 19.009247, 28.980560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058511, -0.744114, 0.665485,
		0.776058, 0.385417, 0.499188,
		-0.627942, 0.545663, 0.554925,
		32.678543, 19.172945, 29.147038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268368, 18.548658, 29.422867>,  <33.118099, 18.790981, 28.758591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268368, 18.548658, 29.422867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899483, 18.703304, 29.425575>,  <32.678150, 18.796091, 29.427200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.899483, 18.703304, 29.425575>,  <33.268368, 18.548658, 29.422867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899483, 18.703304, 29.425575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265101, -0.644912, 0.716806,
		0.281493, 0.659256, 0.697240,
		-0.922216, 0.386615, 0.006769,
		32.622818, 18.819288, 29.427607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238792, 18.058891, 30.010279>,  <33.268368, 18.548658, 29.422867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238792, 18.058891, 30.010279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885529, 18.201221, 29.888023>,  <32.673569, 18.286619, 29.814671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.885529, 18.201221, 29.888023>,  <33.238792, 18.058891, 30.010279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885529, 18.201221, 29.888023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467688, -0.617954, 0.631982,
		0.036004, 0.701086, 0.712168,
		-0.883160, 0.355826, -0.305640,
		32.620579, 18.307970, 29.796331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841423, 18.331833, 30.635918>,  <33.238792, 18.058891, 30.010279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841423, 18.331833, 30.635918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617386, 18.212574, 30.326752>,  <32.482964, 18.141018, 30.141253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617386, 18.212574, 30.326752>,  <32.841423, 18.331833, 30.635918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617386, 18.212574, 30.326752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479127, -0.644536, 0.595828,
		-0.675818, 0.704046, 0.218151,
		-0.560096, -0.298149, -0.772916,
		32.449356, 18.123129, 30.094877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154919, 18.460609, 30.734768>,  <32.841423, 18.331833, 30.635918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154919, 18.460609, 30.734768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158722, 18.178112, 30.451607>,  <32.161003, 18.008614, 30.281710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158722, 18.178112, 30.451607>,  <32.154919, 18.460609, 30.734768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158722, 18.178112, 30.451607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694125, -0.514251, 0.503723,
		-0.719792, 0.486586, -0.495110,
		0.009506, -0.706244, -0.707905,
		32.161575, 17.966238, 30.239235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461796, 18.158522, 30.969685>,  <32.154919, 18.460609, 30.734768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461796, 18.158522, 30.969685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520823, 17.959606, 30.627708>,  <31.556238, 17.840258, 30.422522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.520823, 17.959606, 30.627708>,  <31.461796, 18.158522, 30.969685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520823, 17.959606, 30.627708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476041, -0.793407, 0.379329,
		-0.866954, 0.351011, -0.353812,
		0.147568, -0.497290, -0.854943,
		31.565092, 17.810419, 30.371225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629770, 18.423338, 31.645943>,  <31.461796, 18.158522, 30.969685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629770, 18.423338, 31.645943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293753, 18.640247, 31.652500>,  <31.092142, 18.770393, 31.656435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293753, 18.640247, 31.652500>,  <31.629770, 18.423338, 31.645943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293753, 18.640247, 31.652500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541497, 0.836216, 0.086735,
		0.033324, 0.081739, -0.996096,
		-0.840042, 0.542274, 0.016395,
		31.041740, 18.802929, 31.657419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588329, 19.081722, 31.259439>,  <31.629770, 18.423338, 31.645943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588329, 19.081722, 31.259439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324934, 19.116730, 31.558434>,  <31.166897, 19.137735, 31.737831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.324934, 19.116730, 31.558434>,  <31.588329, 19.081722, 31.259439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324934, 19.116730, 31.558434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229392, 0.969294, 0.088588,
		-0.716781, 0.229801, -0.658343,
		-0.658486, 0.087520, 0.747487,
		31.127388, 19.142986, 31.782681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005741, 19.632936, 31.094437>,  <31.588329, 19.081722, 31.259439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005741, 19.632936, 31.094437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105146, 19.597599, 31.480274>,  <31.164789, 19.576397, 31.711777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105146, 19.597599, 31.480274>,  <31.005741, 19.632936, 31.094437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105146, 19.597599, 31.480274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362431, 0.931976, -0.008020,
		-0.898268, 0.351591, 0.263624,
		0.248511, -0.088342, 0.964592,
		31.179699, 19.571096, 31.769651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786037, 20.135735, 31.518337>,  <31.005741, 19.632936, 31.094437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786037, 20.135735, 31.518337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141674, 20.008457, 31.649956>,  <31.355055, 19.932091, 31.728926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141674, 20.008457, 31.649956>,  <30.786037, 20.135735, 31.518337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141674, 20.008457, 31.649956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332760, 0.942926, 0.012702,
		-0.314307, 0.098200, 0.944229,
		0.889090, -0.318194, 0.329045,
		31.408401, 19.912998, 31.748669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958866, 20.570644, 32.029373>,  <30.786037, 20.135735, 31.518337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958866, 20.570644, 32.029373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261578, 20.426697, 31.811096>,  <31.443205, 20.340328, 31.680130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261578, 20.426697, 31.811096>,  <30.958866, 20.570644, 32.029373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261578, 20.426697, 31.811096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247506, 0.930410, -0.270331,
		0.604999, 0.069520, 0.793186,
		0.756781, -0.359868, -0.545690,
		31.488611, 20.318737, 31.647388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679056, 20.822071, 32.222279>,  <30.958866, 20.570644, 32.029373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679056, 20.822071, 32.222279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719675, 20.733120, 31.834415>,  <31.744047, 20.679750, 31.601698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719675, 20.733120, 31.834415>,  <31.679056, 20.822071, 32.222279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719675, 20.733120, 31.834415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424438, 0.891220, -0.159938,
		0.899745, -0.395318, 0.184888,
		0.101549, -0.222377, -0.969658,
		31.750139, 20.666407, 31.543518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293060, 21.094667, 31.973133>,  <31.679056, 20.822071, 32.222279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293060, 21.094667, 31.973133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103146, 21.029964, 31.627090>,  <31.989197, 20.991142, 31.419464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103146, 21.029964, 31.627090>,  <32.293060, 21.094667, 31.973133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103146, 21.029964, 31.627090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423296, 0.819836, -0.385604,
		0.771621, -0.549276, -0.320775,
		-0.474786, -0.161757, -0.865109,
		31.960711, 20.981438, 31.367558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811230, 21.193167, 31.301640>,  <32.293060, 21.094667, 31.973133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811230, 21.193167, 31.301640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445789, 21.245205, 31.147545>,  <32.226524, 21.276428, 31.055088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445789, 21.245205, 31.147545>,  <32.811230, 21.193167, 31.301640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445789, 21.245205, 31.147545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317238, 0.820705, -0.475187,
		0.254343, -0.556343, -0.791070,
		-0.913602, 0.130097, -0.385234,
		32.171707, 21.284235, 31.031975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960701, 21.632803, 30.892855>,  <32.811230, 21.193167, 31.301640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960701, 21.632803, 30.892855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563919, 21.652008, 30.846001>,  <32.325851, 21.663532, 30.817888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563919, 21.652008, 30.846001>,  <32.960701, 21.632803, 30.892855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563919, 21.652008, 30.846001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102945, 0.844450, -0.525649,
		0.073675, -0.533478, -0.842599,
		-0.991955, 0.048015, -0.117133,
		32.266335, 21.666412, 30.810860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893436, 21.981659, 30.221077>,  <32.960701, 21.632803, 30.892855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893436, 21.981659, 30.221077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521927, 22.012924, 30.366001>,  <32.299023, 22.031683, 30.452955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.521927, 22.012924, 30.366001>,  <32.893436, 21.981659, 30.221077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521927, 22.012924, 30.366001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129827, 0.846976, -0.515534,
		-0.347164, -0.525853, -0.776502,
		-0.928774, 0.078164, 0.362309,
		32.243294, 22.036373, 30.474693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422676, 22.157845, 29.642675>,  <32.893436, 21.981659, 30.221077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422676, 22.157845, 29.642675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250507, 22.297600, 29.975582>,  <32.147205, 22.381453, 30.175325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250507, 22.297600, 29.975582>,  <32.422676, 22.157845, 29.642675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250507, 22.297600, 29.975582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159019, 0.878275, -0.450940,
		-0.888511, -0.326440, -0.322468,
		-0.430420, 0.349386, 0.832267,
		32.121380, 22.402416, 30.225262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853613, 22.489656, 29.453472>,  <32.422676, 22.157845, 29.642675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853613, 22.489656, 29.453472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893824, 22.653145, 29.816315>,  <31.917950, 22.751238, 30.034019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893824, 22.653145, 29.816315>,  <31.853613, 22.489656, 29.453472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893824, 22.653145, 29.816315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199512, 0.901487, -0.384078,
		-0.974725, -0.142369, 0.172168,
		0.100526, 0.408720, 0.907106,
		31.923981, 22.775761, 30.088448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211948, 22.774569, 29.611336>,  <31.853613, 22.489656, 29.453472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211948, 22.774569, 29.611336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454952, 23.000675, 29.834549>,  <31.600756, 23.136339, 29.968477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454952, 23.000675, 29.834549>,  <31.211948, 22.774569, 29.611336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454952, 23.000675, 29.834549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194980, 0.787169, -0.585104,
		-0.770008, 0.246652, 0.588431,
		0.607512, 0.565267, 0.558034,
		31.637205, 23.170256, 30.001959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918652, 23.426798, 29.608976>,  <31.211948, 22.774569, 29.611336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918652, 23.426798, 29.608976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298733, 23.493214, 29.714462>,  <31.526781, 23.533064, 29.777754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298733, 23.493214, 29.714462>,  <30.918652, 23.426798, 29.608976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298733, 23.493214, 29.714462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034915, 0.897633, -0.439358,
		-0.309671, 0.408272, 0.858731,
		0.950203, 0.166039, 0.263716,
		31.583794, 23.543026, 29.793577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946278, 24.086163, 29.800131>,  <30.918652, 23.426798, 29.608976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946278, 24.086163, 29.800131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330132, 24.002018, 29.725460>,  <31.560444, 23.951530, 29.680658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330132, 24.002018, 29.725460>,  <30.946278, 24.086163, 29.800131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330132, 24.002018, 29.725460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155612, 0.950027, -0.270616,
		0.234275, 0.230643, 0.944415,
		0.959635, -0.210361, -0.186677,
		31.618023, 23.938910, 29.669456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238237, 24.687641, 29.942976>,  <30.946278, 24.086163, 29.800131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238237, 24.687641, 29.942976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506809, 24.497074, 29.715923>,  <31.667953, 24.382734, 29.579691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506809, 24.497074, 29.715923>,  <31.238237, 24.687641, 29.942976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506809, 24.497074, 29.715923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149786, 0.837404, -0.525659,
		0.725772, 0.267920, 0.633620,
		0.671431, -0.476416, -0.567634,
		31.708239, 24.354149, 29.545633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891714, 25.074224, 29.975306>,  <31.238237, 24.687641, 29.942976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891714, 25.074224, 29.975306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840410, 24.888134, 29.624966>,  <31.809628, 24.776480, 29.414761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840410, 24.888134, 29.624966>,  <31.891714, 25.074224, 29.975306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840410, 24.888134, 29.624966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219683, 0.847878, -0.482538,
		0.967103, -0.254301, -0.006548,
		-0.128262, -0.465225, -0.875850,
		31.801931, 24.748566, 29.362211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254398, 25.536663, 29.546753>,  <31.891714, 25.074224, 29.975306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254398, 25.536663, 29.546753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102249, 25.310184, 29.254250>,  <32.010960, 25.174297, 29.078749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102249, 25.310184, 29.254250>,  <32.254398, 25.536663, 29.546753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102249, 25.310184, 29.254250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019059, 0.795322, -0.605888,
		0.924636, -0.216528, -0.313311,
		-0.380374, -0.566197, -0.731256,
		31.988136, 25.140326, 29.034872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681622, 25.728369, 29.028873>,  <32.254398, 25.536663, 29.546753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681622, 25.728369, 29.028873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379436, 25.532864, 28.854340>,  <32.198128, 25.415560, 28.749619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379436, 25.532864, 28.854340>,  <32.681622, 25.728369, 29.028873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379436, 25.532864, 28.854340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108110, 0.563844, -0.818775,
		0.646216, -0.665722, -0.373120,
		-0.755458, -0.488768, -0.436337,
		32.152798, 25.386234, 28.723438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887901, 25.553556, 28.319405>,  <32.681622, 25.728369, 29.028873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887901, 25.553556, 28.319405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488155, 25.546246, 28.331684>,  <32.248310, 25.541859, 28.339052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488155, 25.546246, 28.331684>,  <32.887901, 25.553556, 28.319405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488155, 25.546246, 28.331684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034792, 0.693112, -0.719990,
		-0.008119, -0.720598, -0.693305,
		-0.999361, -0.018276, 0.030699,
		32.188347, 25.540762, 28.340893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608421, 25.323349, 27.602964>,  <32.887901, 25.553556, 28.319405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608421, 25.323349, 27.602964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345772, 25.552502, 27.799191>,  <32.188183, 25.689993, 27.916927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345772, 25.552502, 27.799191>,  <32.608421, 25.323349, 27.602964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345772, 25.552502, 27.799191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003959, 0.647803, -0.761798,
		-0.754210, -0.502155, -0.423093,
		-0.656621, 0.572881, 0.490567,
		32.148785, 25.724365, 27.946362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198776, 25.410883, 27.159376>,  <32.608421, 25.323349, 27.602964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198776, 25.410883, 27.159376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108753, 25.709675, 27.409615>,  <32.054737, 25.888950, 27.559757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108753, 25.709675, 27.409615>,  <32.198776, 25.410883, 27.159376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108753, 25.709675, 27.409615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045614, 0.633286, -0.772572,
		-0.973276, -0.202411, -0.108455,
		-0.225061, 0.746979, 0.625595,
		32.041237, 25.933769, 27.597294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686665, 25.714424, 26.813765>,  <32.198776, 25.410883, 27.159376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686665, 25.714424, 26.813765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824907, 25.980526, 27.078487>,  <31.907854, 26.140186, 27.237322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824907, 25.980526, 27.078487>,  <31.686665, 25.714424, 26.813765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824907, 25.980526, 27.078487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209453, 0.742164, -0.636649,
		-0.914704, 0.081414, 0.395838,
		0.345609, 0.665255, 0.661809,
		31.928591, 26.180103, 27.277031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233889, 26.230097, 26.890919>,  <31.686665, 25.714424, 26.813765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233889, 26.230097, 26.890919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588612, 26.378536, 27.001087>,  <31.801445, 26.467600, 27.067188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588612, 26.378536, 27.001087>,  <31.233889, 26.230097, 26.890919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588612, 26.378536, 27.001087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066062, 0.691647, -0.719208,
		-0.457392, 0.619604, 0.637874,
		0.886808, 0.371099, 0.275422,
		31.854654, 26.489866, 27.083714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061340, 26.889666, 27.020056>,  <31.233889, 26.230097, 26.890919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061340, 26.889666, 27.020056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455200, 26.885647, 26.950356>,  <31.691517, 26.883236, 26.908535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455200, 26.885647, 26.950356>,  <31.061340, 26.889666, 27.020056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455200, 26.885647, 26.950356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108472, 0.746921, -0.656006,
		0.136743, 0.664837, 0.734365,
		0.984650, -0.010046, -0.174252,
		31.750595, 26.882633, 26.898079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299295, 27.575195, 26.959639>,  <31.061340, 26.889666, 27.020056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299295, 27.575195, 26.959639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593134, 27.387753, 26.763363>,  <31.769438, 27.275288, 26.645597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593134, 27.387753, 26.763363>,  <31.299295, 27.575195, 26.959639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593134, 27.387753, 26.763363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103685, 0.792229, -0.601351,
		0.670533, 0.390875, 0.630557,
		0.734598, -0.468605, -0.490688,
		31.813513, 27.247171, 26.616156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814449, 28.079170, 26.780321>,  <31.299295, 27.575195, 26.959639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814449, 28.079170, 26.780321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921839, 27.764534, 26.557899>,  <31.986273, 27.575752, 26.424446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921839, 27.764534, 26.557899>,  <31.814449, 28.079170, 26.780321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921839, 27.764534, 26.557899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103926, 0.597530, -0.795083,
		0.957665, 0.155669, 0.242168,
		0.268473, -0.786591, -0.556055,
		32.002380, 27.528557, 26.391083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418293, 28.284508, 26.459902>,  <31.814449, 28.079170, 26.780321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418293, 28.284508, 26.459902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299160, 27.997135, 26.208458>,  <32.227680, 27.824711, 26.057590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299160, 27.997135, 26.208458>,  <32.418293, 28.284508, 26.459902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299160, 27.997135, 26.208458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376232, 0.516857, -0.768966,
		0.877352, -0.465525, 0.116362,
		-0.297831, -0.718433, -0.628611,
		32.209812, 27.781605, 26.019875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023743, 28.050022, 26.006172>,  <32.418293, 28.284508, 26.459902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023743, 28.050022, 26.006172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671135, 27.983521, 25.829411>,  <32.459568, 27.943619, 25.723354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671135, 27.983521, 25.829411>,  <33.023743, 28.050022, 26.006172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671135, 27.983521, 25.829411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319244, 0.479681, -0.817306,
		0.347855, -0.861548, -0.369772,
		-0.881521, -0.166257, -0.441904,
		32.406677, 27.933643, 25.696840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214539, 27.720242, 25.346567>,  <33.023743, 28.050022, 26.006172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214539, 27.720242, 25.346567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838573, 27.843536, 25.287838>,  <32.612995, 27.917513, 25.252602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838573, 27.843536, 25.287838>,  <33.214539, 27.720242, 25.346567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838573, 27.843536, 25.287838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287996, 0.484826, -0.825834,
		-0.183368, -0.818495, -0.544464,
		-0.939912, 0.308235, -0.146822,
		32.556599, 27.936007, 25.243792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179184, 27.628807, 24.648769>,  <33.214539, 27.720242, 25.346567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179184, 27.628807, 24.648769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906178, 27.898777, 24.760948>,  <32.742374, 28.060759, 24.828257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906178, 27.898777, 24.760948>,  <33.179184, 27.628807, 24.648769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906178, 27.898777, 24.760948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251821, 0.577380, -0.776671,
		-0.686119, -0.459467, -0.564031,
		-0.682515, 0.674924, 0.280448,
		32.701424, 28.101254, 24.845083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886272, 27.760193, 24.047480>,  <33.179184, 27.628807, 24.648769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886272, 27.760193, 24.047480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817509, 28.061218, 24.301754>,  <32.776253, 28.241833, 24.454319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.817509, 28.061218, 24.301754>,  <32.886272, 27.760193, 24.047480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817509, 28.061218, 24.301754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259268, 0.657107, -0.707807,
		-0.950383, 0.043138, -0.308076,
		-0.171906, 0.752562, 0.635688,
		32.765938, 28.286987, 24.492460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500317, 28.237888, 23.641359>,  <32.886272, 27.760193, 24.047480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500317, 28.237888, 23.641359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616936, 28.432247, 23.970943>,  <32.686905, 28.548862, 24.168694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.616936, 28.432247, 23.970943>,  <32.500317, 28.237888, 23.641359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616936, 28.432247, 23.970943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031880, 0.855964, -0.516051,
		-0.956026, 0.176720, 0.234061,
		0.291544, 0.485896, 0.823958,
		32.704399, 28.578016, 24.218130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000324, 28.832657, 23.744814>,  <32.500317, 28.237888, 23.641359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000324, 28.832657, 23.744814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369465, 28.873333, 23.893406>,  <32.590950, 28.897739, 23.982561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369465, 28.873333, 23.893406>,  <32.000324, 28.832657, 23.744814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369465, 28.873333, 23.893406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159191, 0.777556, -0.608329,
		-0.350709, 0.620536, 0.701383,
		0.922855, 0.101693, 0.371480,
		32.646320, 28.903841, 24.004850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113331, 29.603842, 23.645697>,  <32.000324, 28.832657, 23.744814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113331, 29.603842, 23.645697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467884, 29.460823, 23.763325>,  <32.680618, 29.375011, 23.833902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467884, 29.460823, 23.763325>,  <32.113331, 29.603842, 23.645697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467884, 29.460823, 23.763325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455168, 0.789031, -0.412615,
		-0.084500, 0.499588, 0.862132,
		0.886387, -0.357549, 0.294070,
		32.733799, 29.353558, 23.851545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423180, 30.102243, 23.922808>,  <32.113331, 29.603842, 23.645697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423180, 30.102243, 23.922808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733528, 29.865395, 23.835709>,  <32.919739, 29.723286, 23.783449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733528, 29.865395, 23.835709>,  <32.423180, 30.102243, 23.922808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733528, 29.865395, 23.835709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472602, 0.774132, -0.421149,
		0.417938, 0.223849, 0.880465,
		0.775870, -0.592124, -0.217748,
		32.966290, 29.687757, 23.770384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046017, 30.546747, 24.004622>,  <32.423180, 30.102243, 23.922808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046017, 30.546747, 24.004622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148926, 30.253872, 23.752365>,  <33.210670, 30.078146, 23.601011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148926, 30.253872, 23.752365>,  <33.046017, 30.546747, 24.004622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148926, 30.253872, 23.752365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691564, 0.595324, -0.409059,
		0.674944, -0.330888, 0.659518,
		0.257274, -0.732190, -0.630641,
		33.226109, 30.034214, 23.563173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836998, 30.506176, 23.934397>,  <33.046017, 30.546747, 24.004622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836998, 30.506176, 23.934397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674889, 30.331390, 23.613194>,  <33.577625, 30.226519, 23.420471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674889, 30.331390, 23.613194>,  <33.836998, 30.506176, 23.934397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674889, 30.331390, 23.613194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483808, 0.642775, -0.593945,
		0.775685, -0.629208, -0.049090,
		-0.405269, -0.436964, -0.803007,
		33.553307, 30.200302, 23.372292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397369, 30.253965, 23.448738>,  <33.836998, 30.506176, 23.934397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397369, 30.253965, 23.448738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058010, 30.309406, 23.244381>,  <33.854393, 30.342670, 23.121767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058010, 30.309406, 23.244381>,  <34.397369, 30.253965, 23.448738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058010, 30.309406, 23.244381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482550, 0.599294, -0.638743,
		0.217642, -0.788439, -0.575323,
		-0.848397, 0.138604, -0.510892,
		33.803490, 30.350988, 23.091114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684437, 30.360739, 22.810211>,  <34.397369, 30.253965, 23.448738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684437, 30.360739, 22.810211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303837, 30.481121, 22.784653>,  <34.075478, 30.553350, 22.769318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303837, 30.481121, 22.784653>,  <34.684437, 30.360739, 22.810211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303837, 30.481121, 22.784653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269971, 0.717126, -0.642531,
		-0.147552, -0.628615, -0.763591,
		-0.951496, 0.300954, -0.063895,
		34.018387, 30.571407, 22.765484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.566334, 30.489292, 22.113403>,  <34.684437, 30.360739, 22.810211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.566334, 30.489292, 22.113403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260006, 30.684944, 22.280384>,  <34.076210, 30.802336, 22.380571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260006, 30.684944, 22.280384>,  <34.566334, 30.489292, 22.113403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260006, 30.684944, 22.280384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129806, 0.753396, -0.644628,
		-0.629813, -0.439483, -0.640461,
		-0.765824, 0.489131, 0.417451,
		34.030258, 30.831684, 22.405619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167747, 30.731853, 21.556959>,  <34.566334, 30.489292, 22.113403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167747, 30.731853, 21.556959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067833, 30.959827, 21.870079>,  <34.007885, 31.096613, 22.057951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067833, 30.959827, 21.870079>,  <34.167747, 30.731853, 21.556959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067833, 30.959827, 21.870079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201109, 0.821336, -0.533819,
		-0.947186, 0.024086, -0.319779,
		-0.249789, 0.569936, 0.782802,
		33.992897, 31.130808, 22.104919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610870, 31.213999, 21.292044>,  <34.167747, 30.731853, 21.556959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610870, 31.213999, 21.292044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774677, 31.384033, 21.614929>,  <33.872963, 31.486053, 21.808661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774677, 31.384033, 21.614929>,  <33.610870, 31.213999, 21.292044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774677, 31.384033, 21.614929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149077, 0.841738, -0.518896,
		-0.900040, 0.332835, 0.281336,
		0.409518, 0.425086, 0.807216,
		33.897533, 31.511559, 21.857094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245876, 31.857086, 21.403236>,  <33.610870, 31.213999, 21.292044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245876, 31.857086, 21.403236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588135, 31.902969, 21.605114>,  <33.793491, 31.930498, 21.726240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588135, 31.902969, 21.605114>,  <33.245876, 31.857086, 21.403236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588135, 31.902969, 21.605114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155040, 0.873545, -0.461390,
		-0.493796, 0.473034, 0.729660,
		0.855645, 0.114706, 0.504693,
		33.844830, 31.937382, 21.756521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184341, 32.436699, 21.736790>,  <33.245876, 31.857086, 21.403236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184341, 32.436699, 21.736790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574841, 32.353889, 21.711212>,  <33.809139, 32.304203, 21.695866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574841, 32.353889, 21.711212>,  <33.184341, 32.436699, 21.736790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574841, 32.353889, 21.711212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154335, 0.871546, -0.465391,
		0.152077, 0.444467, 0.882792,
		0.976245, -0.207021, -0.063945,
		33.867714, 32.291782, 21.692028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808685, 31.833025, 22.107708>,  <33.184341, 32.436699, 21.736790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808685, 31.833025, 22.107708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422626, 31.900280, 22.027493>,  <32.190990, 31.940632, 21.979364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.422626, 31.900280, 22.027493>,  <32.808685, 31.833025, 22.107708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422626, 31.900280, 22.027493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255539, -0.440255, 0.860741,
		0.056434, 0.881990, 0.467878,
		-0.965150, 0.168137, -0.200537,
		32.133080, 31.950722, 21.967331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427223, 32.346321, 22.621849>,  <32.808685, 31.833025, 22.107708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427223, 32.346321, 22.621849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180527, 32.081696, 22.451225>,  <32.032509, 31.922918, 22.348852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180527, 32.081696, 22.451225>,  <32.427223, 32.346321, 22.621849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180527, 32.081696, 22.451225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296158, -0.307060, 0.904436,
		-0.729326, 0.684136, -0.006551,
		-0.616745, -0.661569, -0.426559,
		31.995502, 31.883224, 22.323257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870113, 32.312374, 23.120693>,  <32.427223, 32.346321, 22.621849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870113, 32.312374, 23.120693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786051, 32.003227, 22.881191>,  <31.735613, 31.817738, 22.737490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786051, 32.003227, 22.881191>,  <31.870113, 32.312374, 23.120693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786051, 32.003227, 22.881191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454006, -0.465245, 0.759886,
		-0.865860, 0.431532, -0.253114,
		-0.210155, -0.772870, -0.598755,
		31.723005, 31.771366, 22.701565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130911, 32.181454, 23.138042>,  <31.870113, 32.312374, 23.120693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130911, 32.181454, 23.138042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270639, 31.831127, 23.004822>,  <31.354477, 31.620932, 22.924889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270639, 31.831127, 23.004822>,  <31.130911, 32.181454, 23.138042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270639, 31.831127, 23.004822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504240, -0.475296, 0.720996,
		-0.789757, -0.083923, -0.607652,
		0.349323, -0.875814, -0.333051,
		31.375437, 31.568382, 22.904907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562180, 31.879086, 22.982063>,  <31.130911, 32.181454, 23.138042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562180, 31.879086, 22.982063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824778, 31.578121, 23.003582>,  <30.982336, 31.397543, 23.016493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824778, 31.578121, 23.003582>,  <30.562180, 31.879086, 22.982063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824778, 31.578121, 23.003582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664383, -0.542971, 0.513593,
		-0.357222, -0.372913, -0.856346,
		0.656497, -0.752408, 0.053796,
		31.021727, 31.352398, 23.019720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191782, 31.207357, 22.899130>,  <30.562180, 31.879086, 22.982063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191782, 31.207357, 22.899130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536716, 31.116825, 23.080303>,  <30.743677, 31.062506, 23.189007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.536716, 31.116825, 23.080303>,  <30.191782, 31.207357, 22.899130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536716, 31.116825, 23.080303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450445, -0.751458, 0.482090,
		0.231249, -0.619746, -0.749959,
		0.862336, -0.226332, 0.452935,
		30.795418, 31.048925, 23.216185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395119, 30.442148, 22.854506>,  <30.191782, 31.207357, 22.899130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395119, 30.442148, 22.854506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567217, 30.598385, 23.180038>,  <30.670477, 30.692127, 23.375359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567217, 30.598385, 23.180038>,  <30.395119, 30.442148, 22.854506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567217, 30.598385, 23.180038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367451, -0.747695, 0.553111,
		0.824541, -0.537018, -0.178170,
		0.430247, 0.390594, 0.813833,
		30.696291, 30.715563, 23.424189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261797, 29.991550, 23.328529>,  <30.395119, 30.442148, 22.854506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261797, 29.991550, 23.328529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443760, 30.244652, 23.579185>,  <30.552937, 30.396513, 23.729580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443760, 30.244652, 23.579185>,  <30.261797, 29.991550, 23.328529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443760, 30.244652, 23.579185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356118, -0.515700, 0.779252,
		0.816236, -0.577645, -0.009260,
		0.454906, 0.632756, 0.626643,
		30.580233, 30.434479, 23.767178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593088, 29.551336, 23.772127>,  <30.261797, 29.991550, 23.328529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593088, 29.551336, 23.772127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540964, 29.902565, 23.956303>,  <30.509689, 30.113302, 24.066809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540964, 29.902565, 23.956303>,  <30.593088, 29.551336, 23.772127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540964, 29.902565, 23.956303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411689, -0.470392, 0.780540,
		0.901960, -0.087847, 0.422790,
		-0.130309, 0.878074, 0.460441,
		30.501871, 30.165987, 24.094435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810551, 29.485146, 24.400122>,  <30.593088, 29.551336, 23.772127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810551, 29.485146, 24.400122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583170, 29.806320, 24.471844>,  <30.446741, 29.999025, 24.514877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583170, 29.806320, 24.471844>,  <30.810551, 29.485146, 24.400122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583170, 29.806320, 24.471844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330750, -0.422594, 0.843812,
		0.753303, 0.420363, 0.505797,
		-0.568454, 0.802938, 0.179306,
		30.412634, 30.047201, 24.525635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904436, 29.519972, 25.084595>,  <30.810551, 29.485146, 24.400122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904436, 29.519972, 25.084595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581730, 29.724907, 24.966858>,  <30.388105, 29.847868, 24.896215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.581730, 29.724907, 24.966858>,  <30.904436, 29.519972, 25.084595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581730, 29.724907, 24.966858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448081, -0.205766, 0.869991,
		0.385163, 0.833769, 0.395574,
		-0.806767, 0.512337, -0.294343,
		30.339699, 29.878609, 24.878555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808764, 29.935556, 25.570501>,  <30.904436, 29.519972, 25.084595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808764, 29.935556, 25.570501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453777, 29.868088, 25.398941>,  <30.240786, 29.827606, 25.296005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453777, 29.868088, 25.398941>,  <30.808764, 29.935556, 25.570501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453777, 29.868088, 25.398941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407225, -0.148782, 0.901128,
		-0.215807, 0.974379, 0.063351,
		-0.887466, -0.168671, -0.428900,
		30.187538, 29.817486, 25.270271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392210, 30.156893, 26.091022>,  <30.808764, 29.935556, 25.570501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392210, 30.156893, 26.091022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164230, 29.918880, 25.864361>,  <30.027443, 29.776073, 25.728363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164230, 29.918880, 25.864361>,  <30.392210, 30.156893, 26.091022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164230, 29.918880, 25.864361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464810, -0.335205, 0.819505,
		-0.677577, 0.730462, -0.085527,
		-0.569948, -0.595032, -0.566654,
		29.993246, 29.740372, 25.694365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785812, 30.314018, 26.398806>,  <30.392210, 30.156893, 26.091022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785812, 30.314018, 26.398806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727480, 29.975815, 26.193340>,  <29.692480, 29.772894, 26.070061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727480, 29.975815, 26.193340>,  <29.785812, 30.314018, 26.398806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727480, 29.975815, 26.193340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328206, -0.448462, 0.831362,
		-0.933281, 0.289827, -0.212100,
		-0.145833, -0.845507, -0.513664,
		29.683731, 29.722162, 26.039242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077370, 30.070894, 26.653055>,  <29.785812, 30.314018, 26.398806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077370, 30.070894, 26.653055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281279, 29.764011, 26.497353>,  <29.403624, 29.579882, 26.403931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281279, 29.764011, 26.497353>,  <29.077370, 30.070894, 26.653055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281279, 29.764011, 26.497353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240667, -0.561573, 0.791653,
		-0.825960, -0.309882, -0.470917,
		0.509773, -0.767208, -0.389258,
		29.434212, 29.533850, 26.380575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703032, 29.356371, 26.694239>,  <29.077370, 30.070894, 26.653055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703032, 29.356371, 26.694239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084879, 29.238998, 26.673824>,  <29.313988, 29.168575, 26.661575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084879, 29.238998, 26.673824>,  <28.703032, 29.356371, 26.694239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084879, 29.238998, 26.673824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161516, -0.653999, 0.739052,
		-0.250237, -0.697269, -0.671713,
		0.954617, -0.293430, -0.051035,
		29.371264, 29.150969, 26.658514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689419, 28.654757, 26.729841>,  <28.703032, 29.356371, 26.694239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689419, 28.654757, 26.729841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075781, 28.716766, 26.812786>,  <29.307598, 28.753973, 26.862553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.075781, 28.716766, 26.812786>,  <28.689419, 28.654757, 26.729841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075781, 28.716766, 26.812786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052557, -0.901648, 0.429265,
		0.253513, -0.403730, -0.879053,
		0.965903, 0.155024, 0.207361,
		29.365551, 28.763273, 26.874994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987202, 28.048889, 26.663185>,  <28.689419, 28.654757, 26.729841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987202, 28.048889, 26.663185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265083, 28.235538, 26.882145>,  <29.431812, 28.347528, 27.013521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265083, 28.235538, 26.882145>,  <28.987202, 28.048889, 26.663185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265083, 28.235538, 26.882145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192643, -0.853923, 0.483429,
		0.693018, -0.230388, -0.683116,
		0.694705, 0.466623, 0.547401,
		29.473495, 28.375525, 27.046366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639643, 27.587465, 26.712614>,  <28.987202, 28.048889, 26.663185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639643, 27.587465, 26.712614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662725, 27.847813, 27.015411>,  <29.676575, 28.004021, 27.197090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662725, 27.847813, 27.015411>,  <29.639643, 27.587465, 26.712614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662725, 27.847813, 27.015411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148721, -0.755403, 0.638160,
		0.987194, 0.075755, -0.140390,
		0.057708, 0.650867, 0.756996,
		29.680038, 28.043072, 27.242510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234051, 27.410315, 27.161842>,  <29.639643, 27.587465, 26.712614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234051, 27.410315, 27.161842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035709, 27.656509, 27.406891>,  <29.916704, 27.804226, 27.553919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035709, 27.656509, 27.406891>,  <30.234051, 27.410315, 27.161842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035709, 27.656509, 27.406891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006359, -0.702861, 0.711299,
		0.868382, 0.356597, 0.344603,
		-0.495855, 0.615488, 0.612619,
		29.886953, 27.841156, 27.590677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633255, 27.648094, 27.726120>,  <30.234051, 27.410315, 27.161842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633255, 27.648094, 27.726120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246609, 27.654552, 27.828411>,  <30.014622, 27.658428, 27.889786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246609, 27.654552, 27.828411>,  <30.633255, 27.648094, 27.726120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246609, 27.654552, 27.828411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181647, -0.660734, 0.728310,
		0.180728, 0.750447, 0.635741,
		-0.966614, 0.016146, 0.255730,
		29.956625, 27.659395, 27.905130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564730, 27.270800, 28.348499>,  <30.633255, 27.648094, 27.726120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564730, 27.270800, 28.348499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168053, 27.313667, 28.320057>,  <29.930046, 27.339388, 28.302992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168053, 27.313667, 28.320057>,  <30.564730, 27.270800, 28.348499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168053, 27.313667, 28.320057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124091, -0.942617, 0.309959,
		-0.033805, 0.316208, 0.948087,
		-0.991695, 0.107171, -0.071104,
		29.870544, 27.345819, 28.298725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210665, 27.041121, 28.974548>,  <30.564730, 27.270800, 28.348499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210665, 27.041121, 28.974548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913088, 27.022369, 28.707909>,  <29.734541, 27.011118, 28.547926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913088, 27.022369, 28.707909>,  <30.210665, 27.041121, 28.974548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913088, 27.022369, 28.707909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282901, -0.881639, 0.377728,
		-0.605407, 0.469589, 0.642626,
		-0.743942, -0.046880, -0.666598,
		29.689905, 27.008305, 28.507929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611851, 26.999893, 29.396318>,  <30.210665, 27.041121, 28.974548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611851, 26.999893, 29.396318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576744, 26.825314, 29.038143>,  <29.555679, 26.720566, 28.823238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576744, 26.825314, 29.038143>,  <29.611851, 26.999893, 29.396318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576744, 26.825314, 29.038143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181974, -0.876757, 0.445178,
		-0.979378, 0.202019, -0.002470,
		-0.087769, -0.436447, -0.895439,
		29.550413, 26.694380, 28.769512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.026768, 26.488512, 29.539425>,  <29.611851, 26.999893, 29.396318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.026768, 26.488512, 29.539425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203297, 26.368046, 29.201305>,  <29.309214, 26.295767, 28.998434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203297, 26.368046, 29.201305>,  <29.026768, 26.488512, 29.539425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203297, 26.368046, 29.201305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124438, -0.953437, 0.274724,
		-0.888678, -0.016055, -0.458250,
		0.441323, -0.301165, -0.845300,
		29.335693, 26.277697, 28.947716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621965, 25.909086, 29.337198>,  <29.026768, 26.488512, 29.539425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621965, 25.909086, 29.337198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.951273, 25.875137, 29.112690>,  <29.148857, 25.854767, 28.977985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.951273, 25.875137, 29.112690>,  <28.621965, 25.909086, 29.337198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951273, 25.875137, 29.112690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090253, -0.995753, 0.018191,
		-0.560431, 0.035680, -0.827433,
		0.823269, -0.084873, -0.561270,
		29.198254, 25.849676, 28.944309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398191, 25.529549, 28.748676>,  <28.621965, 25.909086, 29.337198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398191, 25.529549, 28.748676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788944, 25.446636, 28.769611>,  <29.023396, 25.396889, 28.782173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788944, 25.446636, 28.769611>,  <28.398191, 25.529549, 28.748676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788944, 25.446636, 28.769611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202441, -0.975582, -0.085194,
		0.068719, 0.072629, -0.994989,
		0.976881, -0.207281, 0.052338,
		29.082008, 25.384453, 28.785313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501598, 25.031279, 28.314434>,  <28.398191, 25.529549, 28.748676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501598, 25.031279, 28.314434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843954, 25.022251, 28.521099>,  <29.049368, 25.016834, 28.645098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843954, 25.022251, 28.521099>,  <28.501598, 25.031279, 28.314434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843954, 25.022251, 28.521099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071524, -0.994612, 0.075037,
		0.512186, -0.101177, -0.852894,
		0.855891, -0.022570, 0.516663,
		29.100721, 25.015480, 28.676098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854246, 24.442499, 27.917936>,  <28.501598, 25.031279, 28.314434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854246, 24.442499, 27.917936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023066, 24.495518, 28.276669>,  <29.124357, 24.527328, 28.491909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023066, 24.495518, 28.276669>,  <28.854246, 24.442499, 27.917936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023066, 24.495518, 28.276669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135057, -0.987408, 0.082373,
		0.896457, 0.086358, -0.434634,
		0.422048, 0.132544, 0.896832,
		29.149679, 24.535280, 28.545717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467991, 24.044062, 27.882952>,  <28.854246, 24.442499, 27.917936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467991, 24.044062, 27.882952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397903, 24.098991, 28.272915>,  <29.355852, 24.131948, 28.506893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397903, 24.098991, 28.272915>,  <29.467991, 24.044062, 27.882952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397903, 24.098991, 28.272915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250830, -0.951322, 0.179083,
		0.952042, 0.275914, 0.132243,
		-0.175217, 0.137324, 0.974906,
		29.345339, 24.140188, 28.565386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912634, 23.643351, 28.226198>,  <29.467991, 24.044062, 27.882952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912634, 23.643351, 28.226198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658373, 23.695690, 28.530521>,  <29.505816, 23.727093, 28.713116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658373, 23.695690, 28.530521>,  <29.912634, 23.643351, 28.226198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658373, 23.695690, 28.530521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124920, -0.955108, 0.268634,
		0.761802, 0.265798, 0.590771,
		-0.635652, 0.130847, 0.760806,
		29.467678, 23.734943, 28.758762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342960, 23.425781, 28.816082>,  <29.912634, 23.643351, 28.226198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342960, 23.425781, 28.816082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959009, 23.416771, 28.927887>,  <29.728638, 23.411364, 28.994970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959009, 23.416771, 28.927887>,  <30.342960, 23.425781, 28.816082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959009, 23.416771, 28.927887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124052, -0.928040, 0.351217,
		0.251486, 0.371799, 0.893600,
		-0.959878, -0.022527, 0.279512,
		29.671045, 23.410013, 29.011740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252188, 23.085964, 29.497347>,  <30.342960, 23.425781, 28.816082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252188, 23.085964, 29.497347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900206, 23.049900, 29.310776>,  <29.689016, 23.028261, 29.198833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900206, 23.049900, 29.310776>,  <30.252188, 23.085964, 29.497347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900206, 23.049900, 29.310776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007159, -0.984230, 0.176750,
		-0.475006, 0.152193, 0.866722,
		-0.879953, -0.090162, -0.466426,
		29.636219, 23.022852, 29.170849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978415, 22.516993, 29.791424>,  <30.252188, 23.085964, 29.497347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978415, 22.516993, 29.791424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726343, 22.557446, 29.483490>,  <29.575100, 22.581717, 29.298729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726343, 22.557446, 29.483490>,  <29.978415, 22.516993, 29.791424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726343, 22.557446, 29.483490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082807, -0.994580, -0.062873,
		-0.772023, 0.024127, 0.635137,
		-0.630178, 0.101133, -0.769836,
		29.537291, 22.587786, 29.252539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298466, 22.187574, 29.872370>,  <29.978415, 22.516993, 29.791424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298466, 22.187574, 29.872370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370014, 22.198147, 29.478962>,  <29.412943, 22.204491, 29.242918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370014, 22.198147, 29.478962>,  <29.298466, 22.187574, 29.872370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370014, 22.198147, 29.478962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150631, -0.987118, -0.053921,
		-0.972274, 0.157793, -0.172584,
		0.178870, 0.026430, -0.983518,
		29.423676, 22.206076, 29.183907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899479, 21.664024, 29.667904>,  <29.298466, 22.187574, 29.872370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899479, 21.664024, 29.667904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128485, 21.742863, 29.349564>,  <29.265888, 21.790167, 29.158560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128485, 21.742863, 29.349564>,  <28.899479, 21.664024, 29.667904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128485, 21.742863, 29.349564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207631, -0.973888, -0.091826,
		-0.793169, -0.112672, -0.598489,
		0.572515, 0.197098, -0.795851,
		29.300240, 21.801992, 29.110807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763197, 21.148954, 29.211010>,  <28.899479, 21.664024, 29.667904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763197, 21.148954, 29.211010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118292, 21.287197, 29.089367>,  <29.331348, 21.370142, 29.016380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118292, 21.287197, 29.089367>,  <28.763197, 21.148954, 29.211010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118292, 21.287197, 29.089367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325475, -0.938370, -0.116307,
		-0.325563, 0.004270, -0.945511,
		0.887736, 0.345605, -0.304109,
		29.384613, 21.390879, 28.998135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028830, 20.782709, 28.522678>,  <28.763197, 21.148954, 29.211010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028830, 20.782709, 28.522678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350746, 20.934631, 28.705132>,  <29.543896, 21.025785, 28.814604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350746, 20.934631, 28.705132>,  <29.028830, 20.782709, 28.522678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350746, 20.934631, 28.705132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382024, -0.919594, 0.091679,
		0.454277, 0.100471, -0.885177,
		0.804792, 0.379807, 0.456132,
		29.592184, 21.048573, 28.841970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468330, 20.231678, 28.541304>,  <29.028830, 20.782709, 28.522678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468330, 20.231678, 28.541304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190866, 19.971554, 28.417412>,  <28.024387, 19.815479, 28.343077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190866, 19.971554, 28.417412>,  <28.468330, 20.231678, 28.541304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190866, 19.971554, 28.417412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255175, 0.623972, -0.738610,
		0.673587, -0.433310, -0.598767,
		-0.693661, -0.650309, -0.309730,
		27.982769, 19.776461, 28.324493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635759, 20.040968, 27.804926>,  <28.468330, 20.231678, 28.541304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635759, 20.040968, 27.804926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.248938, 19.972954, 27.880711>,  <28.016846, 19.932146, 27.926182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.248938, 19.972954, 27.880711>,  <28.635759, 20.040968, 27.804926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248938, 19.972954, 27.880711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253854, 0.700026, -0.667474,
		-0.019134, -0.693579, -0.720127,
		-0.967053, -0.170036, 0.189462,
		27.958822, 19.921944, 27.937550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285101, 20.300713, 27.203236>,  <28.635759, 20.040968, 27.804926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285101, 20.300713, 27.203236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971615, 20.268864, 27.449635>,  <27.783524, 20.249754, 27.597473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.971615, 20.268864, 27.449635>,  <28.285101, 20.300713, 27.203236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971615, 20.268864, 27.449635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428004, 0.787934, -0.442688,
		-0.450118, -0.610590, -0.651593,
		-0.783713, -0.079623, 0.615998,
		27.736502, 20.244976, 27.634434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658939, 20.329777, 26.773209>,  <28.285101, 20.300713, 27.203236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658939, 20.329777, 26.773209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561266, 20.416107, 27.151371>,  <27.502661, 20.467905, 27.378269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561266, 20.416107, 27.151371>,  <27.658939, 20.329777, 26.773209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561266, 20.416107, 27.151371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293150, 0.912875, -0.284116,
		-0.924358, -0.346523, -0.159641,
		-0.244185, 0.215826, 0.945406,
		27.488010, 20.480856, 27.434994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884405, 20.568745, 26.879810>,  <27.658939, 20.329777, 26.773209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884405, 20.568745, 26.879810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085810, 20.713867, 27.193459>,  <27.206652, 20.800940, 27.381647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085810, 20.713867, 27.193459>,  <26.884405, 20.568745, 26.879810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085810, 20.713867, 27.193459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298886, 0.924669, -0.235909,
		-0.810643, -0.115581, 0.574019,
		0.503512, 0.362805, 0.784123,
		27.236864, 20.822708, 27.428696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404572, 21.121065, 27.065744>,  <26.884405, 20.568745, 26.879810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404572, 21.121065, 27.065744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763939, 21.186344, 27.228821>,  <26.979559, 21.225512, 27.326666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763939, 21.186344, 27.228821>,  <26.404572, 21.121065, 27.065744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763939, 21.186344, 27.228821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053363, 0.962072, -0.267525,
		-0.435887, 0.218594, 0.873052,
		0.898418, 0.163199, 0.407690,
		27.033464, 21.235304, 27.351128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.326744, 21.751223, 27.471857>,  <26.404572, 21.121065, 27.065744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.326744, 21.751223, 27.471857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719799, 21.687176, 27.434364>,  <26.955631, 21.648748, 27.411869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719799, 21.687176, 27.434364>,  <26.326744, 21.751223, 27.471857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719799, 21.687176, 27.434364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129410, 0.953513, -0.272152,
		0.132951, 0.255297, 0.957678,
		0.982638, -0.160116, -0.093733,
		27.014591, 21.639141, 27.406244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585197, 22.400620, 27.665413>,  <26.326744, 21.751223, 27.471857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585197, 22.400620, 27.665413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.885582, 22.214367, 27.478119>,  <27.065813, 22.102615, 27.365742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.885582, 22.214367, 27.478119>,  <26.585197, 22.400620, 27.665413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885582, 22.214367, 27.478119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156785, 0.814525, -0.558540,
		0.641463, 0.346029, 0.684681,
		0.750961, -0.465631, -0.468236,
		27.110870, 22.074678, 27.337648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045670, 22.851864, 27.675657>,  <26.585197, 22.400620, 27.665413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045670, 22.851864, 27.675657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180855, 22.622929, 27.376804>,  <27.261967, 22.485567, 27.197493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180855, 22.622929, 27.376804>,  <27.045670, 22.851864, 27.675657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180855, 22.622929, 27.376804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188815, 0.818937, -0.541933,
		0.922024, 0.042084, 0.384838,
		0.337965, -0.572339, -0.747133,
		27.282244, 22.451227, 27.152664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739325, 23.102474, 27.589823>,  <27.045670, 22.851864, 27.675657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739325, 23.102474, 27.589823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597723, 22.930637, 27.257526>,  <27.512762, 22.827536, 27.058149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597723, 22.930637, 27.257526>,  <27.739325, 23.102474, 27.589823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597723, 22.930637, 27.257526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247109, 0.813732, -0.526097,
		0.902009, -0.391524, -0.181907,
		-0.354003, -0.429593, -0.830741,
		27.491522, 22.801760, 27.008305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206324, 23.283676, 26.998907>,  <27.739325, 23.102474, 27.589823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206324, 23.283676, 26.998907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.865564, 23.169952, 26.822979>,  <27.661110, 23.101719, 26.717422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.865564, 23.169952, 26.822979>,  <28.206324, 23.283676, 26.998907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865564, 23.169952, 26.822979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120544, 0.710817, -0.692971,
		0.509650, -0.643357, -0.571270,
		-0.851896, -0.284310, -0.439821,
		27.609995, 23.084660, 26.691032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355022, 23.116051, 26.183893>,  <28.206324, 23.283676, 26.998907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355022, 23.116051, 26.183893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969044, 23.185558, 26.262562>,  <27.737455, 23.227262, 26.309763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969044, 23.185558, 26.262562>,  <28.355022, 23.116051, 26.183893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969044, 23.185558, 26.262562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023956, 0.804587, -0.593352,
		-0.261347, -0.567842, -0.780547,
		-0.964948, 0.173770, 0.196673,
		27.679560, 23.237690, 26.321564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237236, 23.458319, 25.564184>,  <28.355022, 23.116051, 26.183893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237236, 23.458319, 25.564184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918741, 23.527824, 25.795982>,  <27.727644, 23.569529, 25.935061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918741, 23.527824, 25.795982>,  <28.237236, 23.458319, 25.564184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918741, 23.527824, 25.795982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187399, 0.839912, -0.509343,
		-0.575231, -0.514154, -0.636204,
		-0.796235, 0.173765, 0.579495,
		27.679871, 23.579954, 25.969831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794344, 23.667240, 25.125010>,  <28.237236, 23.458319, 25.564184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.794344, 23.667240, 25.125010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693388, 23.822842, 25.479404>,  <27.632814, 23.916203, 25.692041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693388, 23.822842, 25.479404>,  <27.794344, 23.667240, 25.125010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693388, 23.822842, 25.479404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069891, 0.905911, -0.417661,
		-0.965098, -0.167337, -0.201456,
		-0.252391, 0.389004, 0.885988,
		27.617670, 23.939543, 25.745201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120031, 23.992090, 25.078680>,  <27.794344, 23.667240, 25.125010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120031, 23.992090, 25.078680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298780, 24.182602, 25.381588>,  <27.406031, 24.296909, 25.563334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298780, 24.182602, 25.381588>,  <27.120031, 23.992090, 25.078680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298780, 24.182602, 25.381588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247872, 0.879274, -0.406740,
		-0.859571, -0.005944, 0.510982,
		0.446875, 0.476279, 0.757272,
		27.432842, 24.325485, 25.608770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938442, 24.685282, 25.000931>,  <27.120031, 23.992090, 25.078680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938442, 24.685282, 25.000931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224964, 24.743645, 25.273876>,  <27.396877, 24.778664, 25.437643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224964, 24.743645, 25.273876>,  <26.938442, 24.685282, 25.000931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224964, 24.743645, 25.273876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038954, 0.968007, -0.247880,
		-0.696700, 0.204138, 0.687704,
		0.716304, 0.145909, 0.682363,
		27.439856, 24.787418, 25.478584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823532, 25.314842, 25.302124>,  <26.938442, 24.685282, 25.000931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823532, 25.314842, 25.302124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197363, 25.244495, 25.425823>,  <27.421661, 25.202288, 25.500044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.197363, 25.244495, 25.425823>,  <26.823532, 25.314842, 25.302124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.197363, 25.244495, 25.425823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214988, 0.971780, -0.097071,
		-0.283452, 0.157205, 0.946013,
		0.934577, -0.175867, 0.309250,
		27.477736, 25.191736, 25.518599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980791, 25.819935, 25.760881>,  <26.823532, 25.314842, 25.302124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980791, 25.819935, 25.760881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352581, 25.705849, 25.667309>,  <27.575655, 25.637398, 25.611164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.352581, 25.705849, 25.667309>,  <26.980791, 25.819935, 25.760881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352581, 25.705849, 25.667309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255231, 0.955112, -0.150391,
		0.266326, 0.080078, 0.960551,
		0.929477, -0.285215, -0.233933,
		27.631424, 25.620285, 25.597128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479681, 26.198277, 26.177372>,  <26.980791, 25.819935, 25.760881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479681, 26.198277, 26.177372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662050, 26.059601, 25.849483>,  <27.771471, 25.976397, 25.652750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662050, 26.059601, 25.849483>,  <27.479681, 26.198277, 26.177372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662050, 26.059601, 25.849483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244135, 0.934402, -0.259405,
		0.855881, -0.081854, 0.510654,
		0.455922, -0.346688, -0.819721,
		27.798826, 25.955595, 25.603567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133629, 26.561855, 26.193726>,  <27.479681, 26.198277, 26.177372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133629, 26.561855, 26.193726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054300, 26.448017, 25.818562>,  <28.006702, 26.379715, 25.593464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054300, 26.448017, 25.818562>,  <28.133629, 26.561855, 26.193726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054300, 26.448017, 25.818562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264047, 0.906025, -0.330752,
		0.943900, -0.313248, -0.104538,
		-0.198322, -0.284594, -0.937910,
		27.994804, 26.362638, 25.537189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607706, 26.836435, 25.830526>,  <28.133629, 26.561855, 26.193726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607706, 26.836435, 25.830526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358271, 26.748825, 25.530350>,  <28.208609, 26.696259, 25.350243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358271, 26.748825, 25.530350>,  <28.607706, 26.836435, 25.830526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358271, 26.748825, 25.530350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286484, 0.829143, -0.480051,
		0.727367, -0.514345, -0.454298,
		-0.623589, -0.219024, -0.750443,
		28.171194, 26.683117, 25.305216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944685, 27.192654, 25.343878>,  <28.607706, 26.836435, 25.830526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944685, 27.192654, 25.343878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608606, 27.124428, 25.137974>,  <28.406960, 27.083492, 25.014431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608606, 27.124428, 25.137974>,  <28.944685, 27.192654, 25.343878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608606, 27.124428, 25.137974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061679, 0.913030, -0.403203,
		0.538761, -0.370520, -0.756605,
		-0.840198, -0.170564, -0.514758,
		28.356546, 27.073259, 24.983545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068848, 27.310480, 24.699423>,  <28.944685, 27.192654, 25.343878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068848, 27.310480, 24.699423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672865, 27.361801, 24.723179>,  <28.435276, 27.392593, 24.737432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672865, 27.361801, 24.723179>,  <29.068848, 27.310480, 24.699423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672865, 27.361801, 24.723179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073079, 0.823952, -0.561927,
		-0.121031, -0.551943, -0.825052,
		-0.989955, 0.128305, 0.059389,
		28.375879, 27.400293, 24.740995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934931, 27.431757, 24.080427>,  <29.068848, 27.310480, 24.699423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934931, 27.431757, 24.080427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610260, 27.585781, 24.256111>,  <28.415457, 27.678196, 24.361523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.610260, 27.585781, 24.256111>,  <28.934931, 27.431757, 24.080427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610260, 27.585781, 24.256111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098914, 0.831693, -0.546354,
		-0.575668, -0.400020, -0.713155,
		-0.811678, 0.385060, 0.439211,
		28.366756, 27.701300, 24.387875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446873, 27.640493, 23.508211>,  <28.934931, 27.431757, 24.080427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446873, 27.640493, 23.508211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358635, 27.845249, 23.840309>,  <28.305693, 27.968103, 24.039568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358635, 27.845249, 23.840309>,  <28.446873, 27.640493, 23.508211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358635, 27.845249, 23.840309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156910, 0.821503, -0.548191,
		-0.962662, -0.251201, -0.100897,
		-0.220593, 0.511890, 0.830245,
		28.292458, 27.998816, 24.089382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.840731, 27.903414, 23.381058>,  <28.446873, 27.640493, 23.508211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.840731, 27.903414, 23.381058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974663, 28.152523, 23.663914>,  <28.055021, 28.301989, 23.833628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974663, 28.152523, 23.663914>,  <27.840731, 27.903414, 23.381058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974663, 28.152523, 23.663914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205972, 0.780680, -0.590012,
		-0.919491, 0.051903, 0.389668,
		0.334829, 0.622772, 0.707138,
		28.075111, 28.339355, 23.876055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.416161, 28.375883, 23.280718>,  <27.840731, 27.903414, 23.381058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.416161, 28.375883, 23.280718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712490, 28.547020, 23.487843>,  <27.890289, 28.649702, 23.612118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712490, 28.547020, 23.487843>,  <27.416161, 28.375883, 23.280718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712490, 28.547020, 23.487843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151419, 0.857429, -0.491821,
		-0.654408, 0.285947, 0.699989,
		0.740826, 0.427842, 0.517810,
		27.934738, 28.675373, 23.643187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196592, 29.036621, 23.536922>,  <27.416161, 28.375883, 23.280718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196592, 29.036621, 23.536922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594437, 29.077953, 23.533619>,  <27.833143, 29.102753, 23.531637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.594437, 29.077953, 23.533619>,  <27.196592, 29.036621, 23.536922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.594437, 29.077953, 23.533619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092996, 0.854283, -0.511422,
		-0.045792, 0.509435, 0.859290,
		0.994613, 0.103329, -0.008256,
		27.892820, 29.108952, 23.531141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331913, 29.739311, 23.720461>,  <27.196592, 29.036621, 23.536922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331913, 29.739311, 23.720461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663925, 29.601349, 23.545147>,  <27.863132, 29.518572, 23.439959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663925, 29.601349, 23.545147>,  <27.331913, 29.739311, 23.720461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663925, 29.601349, 23.545147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038053, 0.819040, -0.572473,
		0.556422, 0.458491, 0.692951,
		0.830028, -0.344905, -0.438284,
		27.912933, 29.497877, 23.413662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759041, 30.275419, 23.807249>,  <27.331913, 29.739311, 23.720461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759041, 30.275419, 23.807249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895548, 30.072754, 23.490559>,  <27.977451, 29.951155, 23.300545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.895548, 30.072754, 23.490559>,  <27.759041, 30.275419, 23.807249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895548, 30.072754, 23.490559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062833, 0.828112, -0.557030,
		0.937864, 0.239843, 0.250771,
		0.341266, -0.506662, -0.791726,
		27.997929, 29.920755, 23.253040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251873, 30.712639, 23.379307>,  <27.759041, 30.275419, 23.807249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251873, 30.712639, 23.379307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119839, 30.426239, 23.133255>,  <28.040617, 30.254398, 22.985624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119839, 30.426239, 23.133255>,  <28.251873, 30.712639, 23.379307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119839, 30.426239, 23.133255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145925, 0.682527, -0.716145,
		0.932603, -0.146628, -0.329776,
		-0.330088, -0.716001, -0.615130,
		28.020813, 30.211439, 22.948715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547974, 30.867130, 22.748869>,  <28.251873, 30.712639, 23.379307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547974, 30.867130, 22.748869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265522, 30.607903, 22.634754>,  <28.096050, 30.452366, 22.566286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265522, 30.607903, 22.634754>,  <28.547974, 30.867130, 22.748869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265522, 30.607903, 22.634754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244170, 0.601046, -0.761002,
		0.664653, -0.467707, -0.582655,
		-0.706129, -0.648069, -0.285287,
		28.053682, 30.413483, 22.549168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710159, 30.587057, 22.009457>,  <28.547974, 30.867130, 22.748869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710159, 30.587057, 22.009457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318993, 30.595352, 22.092644>,  <28.084293, 30.600328, 22.142555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318993, 30.595352, 22.092644>,  <28.710159, 30.587057, 22.009457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318993, 30.595352, 22.092644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157574, 0.580545, -0.798836,
		-0.137300, -0.813964, -0.564456,
		-0.977916, 0.020736, 0.207968,
		28.025618, 30.601574, 22.155035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.451925, 30.770586, 21.375692>,  <28.710159, 30.587057, 22.009457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.451925, 30.770586, 21.375692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107954, 30.762310, 21.579693>,  <27.901571, 30.757345, 21.702093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107954, 30.762310, 21.579693>,  <28.451925, 30.770586, 21.375692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107954, 30.762310, 21.579693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401832, 0.643555, -0.651435,
		-0.314735, -0.765120, -0.561723,
		-0.859926, -0.020688, 0.509999,
		27.849976, 30.756104, 21.732693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814560, 30.549761, 20.924858>,  <28.451925, 30.770586, 21.375692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814560, 30.549761, 20.924858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646296, 30.772568, 21.211292>,  <27.545338, 30.906252, 21.383152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646296, 30.772568, 21.211292>,  <27.814560, 30.549761, 20.924858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646296, 30.772568, 21.211292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434680, 0.569067, -0.698008,
		-0.796303, -0.604891, 0.002741,
		-0.420659, 0.557018, 0.716085,
		27.520098, 30.939672, 21.426117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134056, 30.591833, 20.764894>,  <27.814560, 30.549761, 20.924858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134056, 30.591833, 20.764894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205116, 30.916695, 20.987190>,  <27.247751, 31.111610, 21.120567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205116, 30.916695, 20.987190>,  <27.134056, 30.591833, 20.764894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205116, 30.916695, 20.987190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610136, 0.533982, -0.585317,
		-0.772123, -0.235097, 0.590386,
		0.177649, 0.812153, 0.555741,
		27.258411, 31.160341, 21.153913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439960, 30.918192, 20.833488>,  <27.134056, 30.591833, 20.764894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439960, 30.918192, 20.833488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679686, 31.216354, 20.950241>,  <26.823521, 31.395252, 21.020292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679686, 31.216354, 20.950241>,  <26.439960, 30.918192, 20.833488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679686, 31.216354, 20.950241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678043, 0.666500, -0.309895,
		-0.425535, -0.012183, 0.904860,
		0.599314, 0.745405, 0.291880,
		26.859480, 31.439976, 21.037806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891722, 31.456615, 21.165831>,  <26.439960, 30.918192, 20.833488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891722, 31.456615, 21.165831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238844, 31.625477, 21.060986>,  <26.447117, 31.726793, 20.998079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.238844, 31.625477, 21.060986>,  <25.891722, 31.456615, 21.165831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.238844, 31.625477, 21.060986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495712, 0.698912, -0.515550,
		-0.034448, 0.577329, 0.815785,
		0.867804, 0.422154, -0.262112,
		26.499186, 31.752123, 20.982351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.949905, 32.185062, 21.460636>,  <25.891722, 31.456615, 21.165831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.949905, 32.185062, 21.460636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162394, 32.155544, 21.123032>,  <26.289886, 32.137833, 20.920469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162394, 32.155544, 21.123032>,  <25.949905, 32.185062, 21.460636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162394, 32.155544, 21.123032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441755, 0.825940, -0.350251,
		0.722949, 0.558908, 0.406160,
		0.531222, -0.073791, -0.844013,
		26.321760, 32.133408, 20.869827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.825459, 32.789108, 21.278639>,  <25.949905, 32.185062, 21.460636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.825459, 32.789108, 21.278639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986158, 32.617168, 20.955200>,  <26.082579, 32.514004, 20.761137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986158, 32.617168, 20.955200>,  <25.825459, 32.789108, 21.278639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986158, 32.617168, 20.955200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448232, 0.677679, -0.582957,
		0.798551, 0.596642, 0.079587,
		0.401751, -0.429848, -0.808596,
		26.106684, 32.488213, 20.712622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.134825, 33.364151, 20.812120>,  <25.825459, 32.789108, 21.278639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.134825, 33.364151, 20.812120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047207, 33.032112, 20.607002>,  <25.994637, 32.832890, 20.483932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.047207, 33.032112, 20.607002>,  <26.134825, 33.364151, 20.812120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.047207, 33.032112, 20.607002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430176, 0.553881, -0.712857,
		0.875768, 0.064446, -0.478412,
		-0.219042, -0.830098, -0.512794,
		25.981495, 32.783081, 20.453163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423042, 33.370934, 20.765499>,  <26.134825, 33.364151, 20.812120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423042, 33.370934, 20.765499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234663, 33.566120, 21.059464>,  <25.121635, 33.683231, 21.235842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.234663, 33.566120, 21.059464>,  <25.423042, 33.370934, 20.765499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.234663, 33.566120, 21.059464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777782, 0.163405, -0.606921,
		-0.416245, -0.857431, 0.302576,
		-0.470951, 0.487966, 0.734912,
		25.093378, 33.712509, 21.279938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.752108, 33.129787, 20.882687>,  <25.423042, 33.370934, 20.765499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.752108, 33.129787, 20.882687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754654, 33.512661, 20.998451>,  <24.756182, 33.742386, 21.067909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.754654, 33.512661, 20.998451>,  <24.752108, 33.129787, 20.882687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754654, 33.512661, 20.998451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683454, 0.215433, -0.697480,
		-0.729965, -0.193357, 0.655564,
		0.006367, 0.957185, 0.289409,
		24.756563, 33.799816, 21.085274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.136623, 33.279999, 21.257755>,  <24.752108, 33.129787, 20.882687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.136623, 33.279999, 21.257755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304499, 33.586441, 21.063049>,  <24.405224, 33.770306, 20.946226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304499, 33.586441, 21.063049>,  <24.136623, 33.279999, 21.257755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.304499, 33.586441, 21.063049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636209, -0.134201, -0.759756,
		-0.647378, 0.628547, 0.431081,
		0.419691, 0.766107, -0.486766,
		24.430407, 33.816273, 20.917019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.839224, 33.643715, 21.868311>,  <24.136623, 33.279999, 21.257755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.839224, 33.643715, 21.868311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.495230, 33.678764, 21.667217>,  <23.288834, 33.699795, 21.546560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.495230, 33.678764, 21.667217>,  <23.839224, 33.643715, 21.868311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.495230, 33.678764, 21.667217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496926, 0.080395, 0.864061,
		0.116131, 0.992904, -0.025595,
		-0.859987, 0.087625, -0.502736,
		23.237234, 33.705051, 21.516396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.483038, 34.199390, 22.048370>,  <23.839224, 33.643715, 21.868311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.483038, 34.199390, 22.048370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.203039, 33.936573, 21.936443>,  <23.035040, 33.778881, 21.869287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.203039, 33.936573, 21.936443>,  <23.483038, 34.199390, 22.048370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.203039, 33.936573, 21.936443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491418, 0.158866, 0.856312,
		-0.518180, 0.736924, -0.434088,
		-0.699998, -0.657043, -0.279817,
		22.993040, 33.739460, 21.852499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.792374, 34.476460, 22.040359>,  <23.483038, 34.199390, 22.048370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.792374, 34.476460, 22.040359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.789927, 34.082180, 22.107712>,  <22.788458, 33.845612, 22.148123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.789927, 34.082180, 22.107712>,  <22.792374, 34.476460, 22.040359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.789927, 34.082180, 22.107712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636228, 0.133743, 0.759820,
		-0.771477, -0.102480, -0.627950,
		-0.006117, -0.985703, 0.168380,
		22.788092, 33.786469, 22.158226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.576681, 34.327705, 21.350271>,  <22.792374, 34.476460, 22.040359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.576681, 34.327705, 21.350271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.270720, 34.567249, 21.445171>,  <22.087143, 34.710976, 21.502111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.270720, 34.567249, 21.445171>,  <22.576681, 34.327705, 21.350271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.270720, 34.567249, 21.445171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209279, 0.579382, -0.787730,
		-0.609200, -0.552886, -0.568500,
		-0.764904, 0.598860, 0.237252,
		22.041248, 34.746906, 21.516348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.325649, 34.426762, 20.757254>,  <22.576681, 34.327705, 21.350271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.325649, 34.426762, 20.757254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.240559, 34.728336, 21.005875>,  <22.189505, 34.909283, 21.155048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.240559, 34.728336, 21.005875>,  <22.325649, 34.426762, 20.757254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.240559, 34.728336, 21.005875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364969, 0.651382, -0.665206,
		-0.906392, 0.085342, -0.413728,
		-0.212724, 0.753935, 0.621554,
		22.176741, 34.954517, 21.192341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.849211, 34.887535, 20.444754>,  <22.325649, 34.426762, 20.757254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.849211, 34.887535, 20.444754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.066423, 35.073475, 20.724476>,  <22.196751, 35.185040, 20.892309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.066423, 35.073475, 20.724476>,  <21.849211, 34.887535, 20.444754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.066423, 35.073475, 20.724476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414036, 0.576300, -0.704594,
		-0.730540, 0.672157, 0.120487,
		0.543034, 0.464848, 0.699307,
		22.229334, 35.212929, 20.934267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.902308, 35.555904, 20.238239>,  <21.849211, 34.887535, 20.444754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.902308, 35.555904, 20.238239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.198210, 35.549046, 20.507301>,  <22.375751, 35.544930, 20.668739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.198210, 35.549046, 20.507301>,  <21.902308, 35.555904, 20.238239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.198210, 35.549046, 20.507301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549727, 0.591878, -0.589475,
		-0.388020, 0.805845, 0.447273,
		0.739757, -0.017150, 0.672656,
		22.420137, 35.543900, 20.709099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.114223, 36.242161, 20.303343>,  <21.902308, 35.555904, 20.238239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.114223, 36.242161, 20.303343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.428398, 36.046658, 20.455238>,  <22.616903, 35.929356, 20.546375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.428398, 36.046658, 20.455238>,  <22.114223, 36.242161, 20.303343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.428398, 36.046658, 20.455238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618797, 0.606839, -0.498836,
		0.013373, 0.626784, 0.779078,
		0.785438, -0.488761, 0.379737,
		22.664030, 35.900028, 20.569159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.575241, 36.759392, 20.486361>,  <22.114223, 36.242161, 20.303343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.575241, 36.759392, 20.486361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.817057, 36.441273, 20.468307>,  <22.962145, 36.250401, 20.457476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.817057, 36.441273, 20.468307>,  <22.575241, 36.759392, 20.486361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.817057, 36.441273, 20.468307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713195, 0.565624, -0.414033,
		0.354808, 0.218109, 0.909142,
		0.604537, -0.795298, -0.045133,
		22.998417, 36.202682, 20.454767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.116505, 36.990444, 20.659561>,  <22.575241, 36.759392, 20.486361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.116505, 36.990444, 20.659561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.270893, 36.648418, 20.521061>,  <23.363525, 36.443203, 20.437962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.270893, 36.648418, 20.521061>,  <23.116505, 36.990444, 20.659561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.270893, 36.648418, 20.521061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722865, 0.513520, -0.462346,
		0.573143, -0.071841, 0.816301,
		0.385971, -0.855065, -0.346251,
		23.386684, 36.391899, 20.417185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.871780, 37.008091, 20.794323>,  <23.116505, 36.990444, 20.659561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.871780, 37.008091, 20.794323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.818119, 36.728394, 20.513451>,  <23.785921, 36.560574, 20.344927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.818119, 36.728394, 20.513451>,  <23.871780, 37.008091, 20.794323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.818119, 36.728394, 20.513451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765290, 0.377056, -0.521690,
		0.629550, -0.607360, 0.484541,
		-0.134155, -0.699244, -0.702182,
		23.777872, 36.518620, 20.302795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.600136, 36.861008, 20.604029>,  <23.871780, 37.008091, 20.794323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.600136, 36.861008, 20.604029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.360943, 36.735180, 20.309147>,  <24.217428, 36.659683, 20.132217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.360943, 36.735180, 20.309147>,  <24.600136, 36.861008, 20.604029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.360943, 36.735180, 20.309147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645349, 0.356505, -0.675595,
		0.475336, -0.879745, -0.010178,
		-0.597980, -0.314567, -0.737202,
		24.181549, 36.640808, 20.087986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.069199, 36.694439, 20.110462>,  <24.600136, 36.861008, 20.604029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.069199, 36.694439, 20.110462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730425, 36.714363, 19.898720>,  <24.527161, 36.726318, 19.771675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730425, 36.714363, 19.898720>,  <25.069199, 36.694439, 20.110462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.730425, 36.714363, 19.898720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514348, 0.328995, -0.791965,
		0.134705, -0.943017, -0.304259,
		-0.846936, 0.049814, -0.529356,
		24.476345, 36.729305, 19.739912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.155397, 36.327663, 19.531515>,  <25.069199, 36.694439, 20.110462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.155397, 36.327663, 19.531515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863897, 36.586155, 19.440907>,  <24.688997, 36.741249, 19.386541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.863897, 36.586155, 19.440907>,  <25.155397, 36.327663, 19.531515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.863897, 36.586155, 19.440907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549025, 0.353683, -0.757284,
		-0.409261, -0.676239, -0.612541,
		-0.728750, 0.646227, -0.226524,
		24.645271, 36.780022, 19.372950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120867, 36.249466, 18.851351>,  <25.155397, 36.327663, 19.531515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120867, 36.249466, 18.851351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.940805, 36.600101, 18.919411>,  <24.832767, 36.810482, 18.960247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.940805, 36.600101, 18.919411>,  <25.120867, 36.249466, 18.851351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.940805, 36.600101, 18.919411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427169, 0.378730, -0.821030,
		-0.784148, -0.296907, -0.544939,
		-0.450155, 0.876590, 0.170151,
		24.805759, 36.863079, 18.970455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876646, 36.467270, 18.226564>,  <25.120867, 36.249466, 18.851351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876646, 36.467270, 18.226564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899937, 36.796120, 18.453094>,  <24.913910, 36.993427, 18.589012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899937, 36.796120, 18.453094>,  <24.876646, 36.467270, 18.226564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.899937, 36.796120, 18.453094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597426, 0.425797, -0.679543,
		-0.799807, 0.377905, -0.466364,
		0.058226, 0.822122, 0.566326,
		24.917404, 37.042755, 18.622992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.593054, 37.040661, 17.834583>,  <24.876646, 36.467270, 18.226564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.593054, 37.040661, 17.834583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.844416, 37.200623, 18.101471>,  <24.995234, 37.296600, 18.261602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.844416, 37.200623, 18.101471>,  <24.593054, 37.040661, 17.834583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.844416, 37.200623, 18.101471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448002, 0.515143, -0.730700,
		-0.635926, 0.758091, 0.144559,
		0.628405, 0.399909, 0.667218,
		25.032938, 37.320595, 18.301636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678612, 37.771351, 17.758364>,  <24.593054, 37.040661, 17.834583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678612, 37.771351, 17.758364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015312, 37.673702, 17.950974>,  <25.217333, 37.615112, 18.066540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.015312, 37.673702, 17.950974>,  <24.678612, 37.771351, 17.758364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.015312, 37.673702, 17.950974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534534, 0.501936, -0.679951,
		-0.075705, 0.829738, 0.552995,
		0.841749, -0.244119, 0.481523,
		25.267838, 37.600468, 18.095430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.119699, 38.239532, 17.450443>,  <24.678612, 37.771351, 17.758364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.119699, 38.239532, 17.450443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372932, 38.012318, 17.660789>,  <25.524872, 37.875988, 17.786997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.372932, 38.012318, 17.660789>,  <25.119699, 38.239532, 17.450443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372932, 38.012318, 17.660789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749280, 0.279094, -0.600572,
		0.194384, 0.774233, 0.602311,
		0.633084, -0.568041, 0.525865,
		25.562857, 37.841904, 17.818548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.736713, 38.745922, 17.656160>,  <25.119699, 38.239532, 17.450443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.736713, 38.745922, 17.656160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872375, 38.371208, 17.690567>,  <25.953773, 38.146378, 17.711212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872375, 38.371208, 17.690567>,  <25.736713, 38.745922, 17.656160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872375, 38.371208, 17.690567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878277, 0.282552, -0.385739,
		0.337051, 0.206374, 0.918589,
		0.339156, -0.936789, 0.086019,
		25.974123, 38.090172, 17.716373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.347300, 38.690010, 18.059933>,  <25.736713, 38.745922, 17.656160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.347300, 38.690010, 18.059933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362324, 38.372620, 17.816956>,  <26.371338, 38.182186, 17.671169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362324, 38.372620, 17.816956>,  <26.347300, 38.690010, 18.059933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362324, 38.372620, 17.816956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824650, 0.367933, -0.429626,
		0.564396, -0.484791, 0.668158,
		0.037558, -0.793475, -0.607443,
		26.373590, 38.134579, 17.634724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.110880, 38.417194, 18.080784>,  <26.347300, 38.690010, 18.059933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.110880, 38.417194, 18.080784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937860, 38.245560, 17.763599>,  <26.834049, 38.142578, 17.573288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.937860, 38.245560, 17.763599>,  <27.110880, 38.417194, 18.080784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.937860, 38.245560, 17.763599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875829, 0.008848, -0.482541,
		0.214067, -0.903220, 0.371979,
		-0.432550, -0.429086, -0.792960,
		26.808096, 38.116833, 17.525711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704046, 38.034508, 17.695879>,  <27.110880, 38.417194, 18.080784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704046, 38.034508, 17.695879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420784, 38.050957, 17.413937>,  <27.250826, 38.060825, 17.244770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420784, 38.050957, 17.413937>,  <27.704046, 38.034508, 17.695879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420784, 38.050957, 17.413937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703556, 0.125045, -0.699551,
		0.059369, -0.991298, -0.117486,
		-0.708155, 0.041127, -0.704858,
		27.208338, 38.063293, 17.202478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936150, 37.602177, 17.172983>,  <27.704046, 38.034508, 17.695879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936150, 37.602177, 17.172983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668270, 37.832024, 16.984806>,  <27.507542, 37.969933, 16.871899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.668270, 37.832024, 16.984806>,  <27.936150, 37.602177, 17.172983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.668270, 37.832024, 16.984806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713329, 0.321542, -0.622713,
		-0.206554, -0.752612, -0.625228,
		-0.669699, 0.574618, -0.470445,
		27.467361, 38.004410, 16.843672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.099092, 37.582924, 16.426456>,  <27.936150, 37.602177, 17.172983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.099092, 37.582924, 16.426456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918240, 37.921104, 16.540154>,  <27.809729, 38.124012, 16.608372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918240, 37.921104, 16.540154>,  <28.099092, 37.582924, 16.426456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918240, 37.921104, 16.540154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829621, 0.515647, -0.214095,
		-0.327576, 0.139016, -0.934542,
		-0.452131, 0.845448, 0.284244,
		27.782600, 38.174740, 16.625427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911711, 38.034485, 15.853765>,  <28.099092, 37.582924, 16.426456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911711, 38.034485, 15.853765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019535, 38.188293, 16.206917>,  <28.084230, 38.280579, 16.418808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019535, 38.188293, 16.206917>,  <27.911711, 38.034485, 15.853765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019535, 38.188293, 16.206917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882911, 0.267335, -0.386005,
		-0.384453, 0.883557, -0.267437,
		0.269562, 0.384523, 0.882880,
		28.100403, 38.303650, 16.471781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749212, 37.629589, 15.240796>,  <27.911711, 38.034485, 15.853765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749212, 37.629589, 15.240796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482435, 37.402607, 15.047643>,  <27.322369, 37.266418, 14.931750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482435, 37.402607, 15.047643>,  <27.749212, 37.629589, 15.240796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482435, 37.402607, 15.047643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682030, 0.725892, 0.088970,
		0.300035, 0.388680, -0.871153,
		-0.666944, -0.567458, -0.482884,
		27.282352, 37.232368, 14.902778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457418, 37.960934, 14.664674>,  <27.749212, 37.629589, 15.240796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457418, 37.960934, 14.664674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234322, 37.692272, 14.859735>,  <27.100464, 37.531075, 14.976770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234322, 37.692272, 14.859735>,  <27.457418, 37.960934, 14.664674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234322, 37.692272, 14.859735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597593, 0.732687, 0.325657,
		-0.576024, -0.109783, -0.810027,
		-0.557744, -0.671653, 0.487651,
		27.066998, 37.490776, 15.006030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519508, 38.582458, 14.438307>,  <27.457418, 37.960934, 14.664674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519508, 38.582458, 14.438307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233154, 38.859055, 14.476975>,  <27.061342, 39.025013, 14.500176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233154, 38.859055, 14.476975>,  <27.519508, 38.582458, 14.438307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233154, 38.859055, 14.476975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675039, -0.720830, 0.157247,
		0.178420, 0.047313, 0.982816,
		-0.715883, 0.691495, 0.096672,
		27.018389, 39.066502, 14.505977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065380, 38.490360, 15.070950>,  <27.519508, 38.582458, 14.438307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065380, 38.490360, 15.070950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875547, 38.675205, 14.771291>,  <26.761648, 38.786114, 14.591496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875547, 38.675205, 14.771291>,  <27.065380, 38.490360, 15.070950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875547, 38.675205, 14.771291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646011, -0.760954, -0.060150,
		-0.597862, 0.455411, 0.659668,
		-0.474584, 0.462114, -0.749147,
		26.733171, 38.813839, 14.546547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.355541, 38.474178, 15.179774>,  <27.065380, 38.490360, 15.070950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.355541, 38.474178, 15.179774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388107, 38.517170, 14.783427>,  <26.407646, 38.542965, 14.545619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388107, 38.517170, 14.783427>,  <26.355541, 38.474178, 15.179774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388107, 38.517170, 14.783427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526775, -0.839324, -0.134324,
		-0.846097, 0.532901, -0.011716,
		0.081415, 0.107480, -0.990868,
		26.412533, 38.549416, 14.486167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620832, 38.355087, 14.890357>,  <26.355541, 38.474178, 15.179774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620832, 38.355087, 14.890357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936018, 38.258057, 14.663987>,  <26.125130, 38.199837, 14.528166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936018, 38.258057, 14.663987>,  <25.620832, 38.355087, 14.890357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936018, 38.258057, 14.663987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397805, -0.902104, -0.167208,
		-0.469962, 0.356881, -0.807324,
		0.787964, -0.242576, -0.565924,
		26.172407, 38.185284, 14.494210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.700706, 37.918266, 15.457814>,  <25.620832, 38.355087, 14.890357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.700706, 37.918266, 15.457814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062887, 37.898010, 15.289248>,  <26.280195, 37.885857, 15.188109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.062887, 37.898010, 15.289248>,  <25.700706, 37.918266, 15.457814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.062887, 37.898010, 15.289248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330478, 0.707141, 0.625089,
		0.266342, -0.705257, 0.657020,
		0.905454, -0.050643, -0.421414,
		26.334522, 37.882816, 15.162825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.031527, 38.220512, 15.321033>,  <25.700706, 37.918266, 15.457814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.031527, 38.220512, 15.321033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848322, 37.887554, 15.445836>,  <24.738400, 37.687778, 15.520718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848322, 37.887554, 15.445836>,  <25.031527, 38.220512, 15.321033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.848322, 37.887554, 15.445836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883886, 0.463826, -0.060081,
		-0.094706, -0.303297, -0.948178,
		-0.458012, -0.832392, 0.312008,
		24.710918, 37.637836, 15.539438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.368650, 38.449753, 15.257686>,  <25.031527, 38.220512, 15.321033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.368650, 38.449753, 15.257686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.316544, 38.092522, 15.429938>,  <24.285278, 37.878181, 15.533290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.316544, 38.092522, 15.429938>,  <24.368650, 38.449753, 15.257686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.316544, 38.092522, 15.429938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978553, 0.185714, 0.089130,
		-0.159575, -0.409784, -0.898116,
		-0.130269, -0.893077, 0.430631,
		24.277464, 37.824600, 15.559128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.742973, 38.208775, 14.982662>,  <24.368650, 38.449753, 15.257686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.742973, 38.208775, 14.982662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.815430, 38.006409, 15.320001>,  <23.858904, 37.884987, 15.522404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.815430, 38.006409, 15.320001>,  <23.742973, 38.208775, 14.982662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.815430, 38.006409, 15.320001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975479, 0.016573, 0.219466,
		-0.125009, -0.862422, -0.490512,
		0.181143, -0.505919, 0.843346,
		23.869772, 37.854633, 15.573005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.058464, 37.805882, 15.105165>,  <23.742973, 38.208775, 14.982662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.058464, 37.805882, 15.105165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.256985, 37.775379, 15.451083>,  <23.376097, 37.757076, 15.658634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.256985, 37.775379, 15.451083>,  <23.058464, 37.805882, 15.105165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.256985, 37.775379, 15.451083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849298, 0.163823, 0.501851,
		-0.179944, -0.983538, 0.016539,
		0.496299, -0.076258, 0.864796,
		23.405874, 37.752502, 15.710522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.780039, 37.269890, 15.529482>,  <23.058464, 37.805882, 15.105165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.780039, 37.269890, 15.529482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971436, 37.520451, 15.775624>,  <23.086273, 37.670788, 15.923310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971436, 37.520451, 15.775624>,  <22.780039, 37.269890, 15.529482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.971436, 37.520451, 15.775624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809913, 0.044097, 0.584890,
		0.339241, -0.778252, 0.528431,
		0.478494, 0.626402, 0.615357,
		23.114985, 37.708370, 15.960232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.628057, 37.019867, 16.196356>,  <22.780039, 37.269890, 15.529482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.628057, 37.019867, 16.196356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.767084, 37.387814, 16.269073>,  <22.850500, 37.608582, 16.312704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.767084, 37.387814, 16.269073>,  <22.628057, 37.019867, 16.196356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.767084, 37.387814, 16.269073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700229, 0.125689, 0.702767,
		0.623600, -0.371556, 0.687800,
		0.347566, 0.919863, 0.181795,
		22.871353, 37.663773, 16.323612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.815281, 37.078068, 16.927452>,  <22.628057, 37.019867, 16.196356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.815281, 37.078068, 16.927452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.765045, 37.460564, 16.821743>,  <22.734903, 37.690060, 16.758318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.765045, 37.460564, 16.821743>,  <22.815281, 37.078068, 16.927452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.765045, 37.460564, 16.821743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582274, 0.144628, 0.800025,
		0.803234, 0.254356, 0.538627,
		-0.125591, 0.956235, -0.264275,
		22.727367, 37.747433, 16.742460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.021849, 37.494251, 17.517736>,  <22.815281, 37.078068, 16.927452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.021849, 37.494251, 17.517736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.774607, 37.726379, 17.305634>,  <22.626261, 37.865658, 17.178371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.774607, 37.726379, 17.305634>,  <23.021849, 37.494251, 17.517736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.774607, 37.726379, 17.305634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562045, 0.145352, 0.814235,
		0.549592, 0.801311, 0.236324,
		-0.618106, 0.580321, -0.530257,
		22.589174, 37.900475, 17.146557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.012239, 38.072147, 17.892763>,  <23.021849, 37.494251, 17.517736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.012239, 38.072147, 17.892763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.693197, 38.066647, 17.651554>,  <22.501772, 38.063347, 17.506828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.693197, 38.066647, 17.651554>,  <23.012239, 38.072147, 17.892763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.693197, 38.066647, 17.651554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602994, -0.006619, 0.797718,
		-0.014963, 0.999884, -0.003014,
		-0.797605, -0.013753, -0.603023,
		22.453917, 38.062519, 17.470648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.536015, 38.541824, 18.243500>,  <23.012239, 38.072147, 17.892763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.536015, 38.541824, 18.243500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.304497, 38.317238, 18.006939>,  <22.165586, 38.182487, 17.865004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.304497, 38.317238, 18.006939>,  <22.536015, 38.541824, 18.243500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.304497, 38.317238, 18.006939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679071, -0.069685, 0.730757,
		-0.451505, 0.824562, -0.340940,
		-0.578796, -0.561463, -0.591400,
		22.130857, 38.148800, 17.829519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.927465, 38.765209, 18.400829>,  <22.536015, 38.541824, 18.243500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.927465, 38.765209, 18.400829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.865068, 38.411270, 18.225235>,  <21.827629, 38.198906, 18.119879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.865068, 38.411270, 18.225235>,  <21.927465, 38.765209, 18.400829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.865068, 38.411270, 18.225235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700838, -0.214030, 0.680454,
		-0.696055, 0.413805, -0.586748,
		-0.155993, -0.884848, -0.438986,
		21.818270, 38.145817, 18.093538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.261875, 38.819954, 18.159927>,  <21.927465, 38.765209, 18.400829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.261875, 38.819954, 18.159927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.368298, 38.442585, 18.239082>,  <21.432152, 38.216164, 18.286575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.368298, 38.442585, 18.239082>,  <21.261875, 38.819954, 18.159927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.368298, 38.442585, 18.239082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611251, -0.006377, 0.791411,
		-0.745376, -0.331521, -0.578367,
		0.266058, -0.943426, 0.197890,
		21.448114, 38.159557, 18.298449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.647308, 38.445534, 18.428503>,  <21.261875, 38.819954, 18.159927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.647308, 38.445534, 18.428503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.950178, 38.204174, 18.528580>,  <21.131901, 38.059357, 18.588625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.950178, 38.204174, 18.528580>,  <20.647308, 38.445534, 18.428503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.950178, 38.204174, 18.528580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504488, -0.296879, 0.810774,
		-0.414946, -0.740114, -0.529198,
		0.757173, -0.603402, 0.250190,
		21.177330, 38.023155, 18.603638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.296143, 37.845097, 18.647894>,  <20.647308, 38.445534, 18.428503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.296143, 37.845097, 18.647894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.663038, 37.805515, 18.802235>,  <20.883175, 37.781765, 18.894838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.663038, 37.805515, 18.802235>,  <20.296143, 37.845097, 18.647894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.663038, 37.805515, 18.802235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387679, -0.444354, 0.807623,
		0.091537, -0.890370, -0.445940,
		0.917238, -0.098954, 0.385852,
		20.938210, 37.775829, 18.917990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.243547, 37.148655, 18.916698>,  <20.296143, 37.845097, 18.647894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.243547, 37.148655, 18.916698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536228, 37.356182, 19.093533>,  <20.711838, 37.480698, 19.199633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536228, 37.356182, 19.093533>,  <20.243547, 37.148655, 18.916698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.536228, 37.356182, 19.093533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213918, -0.441021, 0.871630,
		0.647186, -0.732345, -0.211712,
		0.731704, 0.518818, 0.442084,
		20.755739, 37.511826, 19.226158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.390026, 36.649231, 19.375982>,  <20.243547, 37.148655, 18.916698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.390026, 36.649231, 19.375982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.591270, 36.968410, 19.508743>,  <20.712017, 37.159916, 19.588400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.591270, 36.968410, 19.508743>,  <20.390026, 36.649231, 19.375982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.591270, 36.968410, 19.508743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070133, -0.345085, 0.935948,
		0.861371, -0.494163, -0.117654,
		0.503111, 0.797947, 0.331903,
		20.742205, 37.207794, 19.608315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.852757, 36.376453, 19.826748>,  <20.390026, 36.649231, 19.375982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.852757, 36.376453, 19.826748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.795172, 36.754799, 19.943108>,  <20.760620, 36.981804, 20.012924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.795172, 36.754799, 19.943108>,  <20.852757, 36.376453, 19.826748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.795172, 36.754799, 19.943108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087543, -0.304982, 0.948326,
		0.985703, 0.111056, 0.126709,
		-0.143961, 0.945861, 0.290900,
		20.751984, 37.038559, 20.030378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.338589, 36.533218, 20.368761>,  <20.852757, 36.376453, 19.826748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.338589, 36.533218, 20.368761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.035273, 36.791332, 20.405869>,  <20.853283, 36.946201, 20.428133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.035273, 36.791332, 20.405869>,  <21.338589, 36.533218, 20.368761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.035273, 36.791332, 20.405869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081383, -0.234884, 0.968610,
		0.646819, 0.726937, 0.230626,
		-0.758289, 0.645284, 0.092767,
		20.807785, 36.984917, 20.433699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.542118, 37.021900, 20.811369>,  <21.338589, 36.533218, 20.368761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.542118, 37.021900, 20.811369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.142311, 37.014572, 20.801300>,  <20.902428, 37.010174, 20.795259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.142311, 37.014572, 20.801300>,  <21.542118, 37.021900, 20.811369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.142311, 37.014572, 20.801300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023445, -0.089045, 0.995752,
		-0.020485, 0.995859, 0.088572,
		-0.999515, -0.018322, -0.025172,
		20.842457, 37.009075, 20.793749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.288357, 37.556332, 21.332565>,  <21.542118, 37.021900, 20.811369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.288357, 37.556332, 21.332565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.991673, 37.297203, 21.263058>,  <20.813662, 37.141727, 21.221354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.991673, 37.297203, 21.263058>,  <21.288357, 37.556332, 21.332565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.991673, 37.297203, 21.263058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278819, 0.062170, 0.958329,
		-0.610022, 0.759252, -0.226737,
		-0.741709, -0.647821, -0.173769,
		20.769159, 37.102856, 21.210928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.814283, 37.738121, 21.873043>,  <21.288357, 37.556332, 21.332565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.814283, 37.738121, 21.873043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635191, 37.407215, 21.737297>,  <20.527737, 37.208672, 21.655849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.635191, 37.407215, 21.737297>,  <20.814283, 37.738121, 21.873043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.635191, 37.407215, 21.737297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504750, -0.079453, 0.859602,
		-0.738082, 0.556165, -0.381988,
		-0.447730, -0.827265, -0.339367,
		20.500872, 37.159035, 21.635487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.122107, 37.765602, 21.930073>,  <20.814283, 37.738121, 21.873043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.122107, 37.765602, 21.930073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.200871, 37.373501, 21.937393>,  <20.248129, 37.138241, 21.941786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.200871, 37.373501, 21.937393>,  <20.122107, 37.765602, 21.930073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.200871, 37.373501, 21.937393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504116, -0.085220, 0.859421,
		-0.840889, -0.178453, -0.510941,
		0.196909, -0.980251, 0.018300,
		20.259943, 37.079426, 21.942883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.499727, 37.547901, 22.131254>,  <20.122107, 37.765602, 21.930073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.499727, 37.547901, 22.131254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.750799, 37.241959, 22.189240>,  <19.901442, 37.058392, 22.224031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.750799, 37.241959, 22.189240>,  <19.499727, 37.547901, 22.131254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.750799, 37.241959, 22.189240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452523, -0.206963, 0.867404,
		-0.633438, -0.610049, -0.476022,
		0.627678, -0.764857, 0.144964,
		19.939102, 37.012501, 22.232729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.163721, 36.979496, 22.261757>,  <19.499727, 37.547901, 22.131254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.163721, 36.979496, 22.261757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.518362, 36.972351, 22.446632>,  <19.731146, 36.968063, 22.557558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.518362, 36.972351, 22.446632>,  <19.163721, 36.979496, 22.261757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.518362, 36.972351, 22.446632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462327, -0.004183, 0.886700,
		-0.013902, -0.999832, -0.011966,
		0.886600, -0.017859, 0.462191,
		19.784342, 36.966991, 22.585289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.403358, 37.112793, 22.083458>,  <19.163721, 36.979496, 22.261757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.403358, 37.112793, 22.083458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.356003, 37.501675, 22.164253>,  <18.327589, 37.735004, 22.212730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.356003, 37.501675, 22.164253>,  <18.403358, 37.112793, 22.083458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.356003, 37.501675, 22.164253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365178, -0.231793, 0.901619,
		0.923379, 0.032980, 0.382471,
		-0.118390, 0.972206, 0.201989,
		18.320486, 37.793335, 22.224850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.675064, 37.320545, 22.752337>,  <18.403358, 37.112793, 22.083458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.675064, 37.320545, 22.752337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.386684, 37.582417, 22.661453>,  <18.213655, 37.739540, 22.606922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.386684, 37.582417, 22.661453>,  <18.675064, 37.320545, 22.752337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.386684, 37.582417, 22.661453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357988, -0.071112, 0.931014,
		0.593359, 0.752554, 0.285636,
		-0.720950, 0.654680, -0.227210,
		18.170399, 37.778820, 22.593290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.751474, 37.810333, 23.231634>,  <18.675064, 37.320545, 22.752337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.751474, 37.810333, 23.231634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.388510, 37.816090, 23.063637>,  <18.170731, 37.819542, 22.962839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.388510, 37.816090, 23.063637>,  <18.751474, 37.810333, 23.231634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.388510, 37.816090, 23.063637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408922, 0.200155, 0.890348,
		0.096873, 0.979659, -0.175740,
		-0.907413, 0.014387, -0.419994,
		18.116285, 37.820404, 22.937639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.676485, 23.310452, 22.486675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.064489, 23.246330, 22.559761>,  <31.297291, 23.207857, 22.603613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.064489, 23.246330, 22.559761>,  <30.676485, 23.310452, 22.486675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064489, 23.246330, 22.559761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227279, 0.864685, -0.447956,
		-0.086183, 0.476049, 0.875186,
		0.970009, -0.160305, 0.182717,
		31.355492, 23.198238, 22.614576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967085, 23.965979, 22.826414>,  <30.676485, 23.310452, 22.486675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967085, 23.965979, 22.826414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.271700, 23.761497, 22.667049>,  <31.454470, 23.638809, 22.571430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.271700, 23.761497, 22.667049>,  <30.967085, 23.965979, 22.826414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271700, 23.761497, 22.667049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272062, 0.810075, -0.519385,
		0.588255, 0.287138, 0.755982,
		0.761537, -0.511204, -0.398411,
		31.500160, 23.608137, 22.547525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597778, 24.253073, 23.065241>,  <30.967085, 23.965979, 22.826414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597778, 24.253073, 23.065241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.667906, 24.058578, 22.722816>,  <31.709982, 23.941881, 22.517363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.667906, 24.058578, 22.722816>,  <31.597778, 24.253073, 23.065241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667906, 24.058578, 22.722816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367941, 0.838880, -0.401123,
		0.913171, -0.244655, 0.325979,
		0.175321, -0.486235, -0.856060,
		31.720503, 23.912708, 22.465998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242554, 24.364561, 22.846907>,  <31.597778, 24.253073, 23.065241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242554, 24.364561, 22.846907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.100025, 24.252598, 22.490326>,  <32.014507, 24.185421, 22.276377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.100025, 24.252598, 22.490326>,  <32.242554, 24.364561, 22.846907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100025, 24.252598, 22.490326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235373, 0.896417, -0.375546,
		0.904232, -0.343638, -0.253529,
		-0.356320, -0.279907, -0.891453,
		31.993130, 24.168625, 22.222891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675983, 24.744968, 22.298714>,  <32.242554, 24.364561, 22.846907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675983, 24.744968, 22.298714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.334644, 24.639095, 22.119053>,  <32.129841, 24.575571, 22.011255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.334644, 24.639095, 22.119053>,  <32.675983, 24.744968, 22.298714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334644, 24.639095, 22.119053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021258, 0.878487, -0.477293,
		0.520905, -0.397750, -0.755283,
		-0.853350, -0.264681, -0.449153,
		32.078640, 24.559690, 21.984306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854065, 24.963253, 21.567980>,  <32.675983, 24.744968, 22.298714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854065, 24.963253, 21.567980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.465214, 24.903732, 21.640453>,  <32.231903, 24.868019, 21.683937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.465214, 24.903732, 21.640453>,  <32.854065, 24.963253, 21.567980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465214, 24.903732, 21.640453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218021, 0.857972, -0.465135,
		-0.086237, -0.491672, -0.866500,
		-0.972126, -0.148804, 0.181184,
		32.173576, 24.859091, 21.694809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516243, 25.084024, 20.833986>,  <32.854065, 24.963253, 21.567980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516243, 25.084024, 20.833986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.233845, 25.136921, 21.112289>,  <32.064404, 25.168659, 21.279270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.233845, 25.136921, 21.112289>,  <32.516243, 25.084024, 20.833986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233845, 25.136921, 21.112289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428795, 0.702061, -0.568547,
		-0.563648, -0.699731, -0.438951,
		-0.706000, 0.132240, 0.695756,
		32.022045, 25.176594, 21.321016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.956791, 25.324472, 20.428940>,  <32.516243, 25.084024, 20.833986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.956791, 25.324472, 20.428940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.820150, 25.388680, 20.799355>,  <31.738167, 25.427204, 21.021603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.820150, 25.388680, 20.799355>,  <31.956791, 25.324472, 20.428940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820150, 25.388680, 20.799355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512524, 0.794091, -0.326707,
		-0.787799, -0.586220, -0.188994,
		-0.341600, 0.160516, 0.926037,
		31.717670, 25.436834, 21.077166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309015, 25.324631, 20.368206>,  <31.956791, 25.324472, 20.428940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309015, 25.324631, 20.368206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.376568, 25.555473, 20.687813>,  <31.417099, 25.693979, 20.879576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.376568, 25.555473, 20.687813>,  <31.309015, 25.324631, 20.368206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376568, 25.555473, 20.687813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464302, 0.761661, -0.451991,
		-0.869426, -0.294652, 0.396583,
		0.168882, 0.577108, 0.799015,
		31.427233, 25.728605, 20.927517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666012, 25.523825, 20.639761>,  <31.309015, 25.324631, 20.368206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666012, 25.523825, 20.639761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.922934, 25.793430, 20.785721>,  <31.077087, 25.955193, 20.873297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.922934, 25.793430, 20.785721>,  <30.666012, 25.523825, 20.639761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922934, 25.793430, 20.785721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514529, 0.732050, -0.446500,
		-0.568070, 0.099038, 0.816999,
		0.642305, 0.674013, 0.364898,
		31.115625, 25.995634, 20.895191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261885, 25.886003, 21.063349>,  <30.666012, 25.523825, 20.639761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261885, 25.886003, 21.063349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.567690, 26.121445, 20.958225>,  <30.751173, 26.262709, 20.895151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.567690, 26.121445, 20.958225>,  <30.261885, 25.886003, 21.063349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567690, 26.121445, 20.958225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644258, 0.711148, -0.281426,
		0.021247, 0.384470, 0.922893,
		0.764513, 0.588602, -0.262808,
		30.797043, 26.298025, 20.879383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.046602, 26.519005, 21.356562>,  <30.261885, 25.886003, 21.063349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.046602, 26.519005, 21.356562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.341618, 26.599625, 21.098751>,  <30.518627, 26.647997, 20.944065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.341618, 26.599625, 21.098751>,  <30.046602, 26.519005, 21.356562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341618, 26.599625, 21.098751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516750, 0.782879, -0.346512,
		0.434746, 0.588625, 0.681554,
		0.737540, 0.201549, -0.644526,
		30.562880, 26.660089, 20.905394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378735, 27.246395, 21.438343>,  <30.046602, 26.519005, 21.356562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378735, 27.246395, 21.438343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.438543, 27.129894, 21.060387>,  <30.474428, 27.059994, 20.833612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.438543, 27.129894, 21.060387>,  <30.378735, 27.246395, 21.438343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438543, 27.129894, 21.060387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465924, 0.822128, -0.327139,
		0.872100, 0.489161, -0.012775,
		0.149522, -0.291250, -0.944890,
		30.483400, 27.042519, 20.776920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351320, 27.857122, 21.038620>,  <30.378735, 27.246395, 21.438343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351320, 27.857122, 21.038620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.334946, 27.582420, 20.748325>,  <30.325121, 27.417599, 20.574148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.334946, 27.582420, 20.748325>,  <30.351320, 27.857122, 21.038620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334946, 27.582420, 20.748325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450244, 0.661098, -0.600191,
		0.891967, 0.302189, -0.336269,
		-0.040936, -0.686754, -0.725737,
		30.322664, 27.376394, 20.530605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736610, 28.197498, 20.538033>,  <30.351320, 27.857122, 21.038620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736610, 28.197498, 20.538033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.508461, 27.923344, 20.356960>,  <30.371571, 27.758850, 20.248318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.508461, 27.923344, 20.356960>,  <30.736610, 28.197498, 20.538033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508461, 27.923344, 20.356960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385454, 0.710009, -0.589332,
		0.725328, -0.161651, -0.669155,
		-0.570372, -0.685387, -0.452681,
		30.337349, 27.717728, 20.221157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876667, 28.179424, 19.808002>,  <30.736610, 28.197498, 20.538033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876667, 28.179424, 19.808002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.507172, 28.030476, 19.843891>,  <30.285475, 27.941107, 19.865425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.507172, 28.030476, 19.843891>,  <30.876667, 28.179424, 19.808002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507172, 28.030476, 19.843891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299291, 0.555532, -0.775763,
		0.239026, -0.743455, -0.624613,
		-0.923737, -0.372369, 0.089723,
		30.230051, 27.918764, 19.870808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670610, 28.150278, 19.129642>,  <30.876667, 28.179424, 19.808002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670610, 28.150278, 19.129642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.336178, 28.139614, 19.348824>,  <30.135517, 28.133217, 19.480333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.336178, 28.139614, 19.348824>,  <30.670610, 28.150278, 19.129642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336178, 28.139614, 19.348824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433567, 0.644091, -0.630211,
		-0.336132, -0.764484, -0.550072,
		-0.836083, -0.026659, 0.547955,
		30.085352, 28.131617, 19.513210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128492, 28.255861, 18.619879>,  <30.670610, 28.150278, 19.129642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128492, 28.255861, 18.619879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.961222, 28.325237, 18.976540>,  <29.860859, 28.366863, 19.190536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.961222, 28.325237, 18.976540>,  <30.128492, 28.255861, 18.619879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961222, 28.325237, 18.976540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592897, 0.691556, -0.412582,
		-0.688186, -0.701191, -0.186363,
		-0.418179, 0.173439, 0.891653,
		29.835768, 28.377270, 19.244036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463638, 28.293255, 18.465219>,  <30.128492, 28.255861, 18.619879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463638, 28.293255, 18.465219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.531277, 28.485184, 18.809586>,  <29.571859, 28.600342, 19.016205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.531277, 28.485184, 18.809586>,  <29.463638, 28.293255, 18.465219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531277, 28.485184, 18.809586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608745, 0.737815, -0.291648,
		-0.775136, -0.474762, 0.416851,
		0.169095, 0.479823, 0.860916,
		29.582005, 28.629131, 19.067860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816259, 28.643915, 18.620356>,  <29.463638, 28.293255, 18.465219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816259, 28.643915, 18.620356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.043949, 28.832520, 18.889774>,  <29.180563, 28.945683, 19.051426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.043949, 28.832520, 18.889774>,  <28.816259, 28.643915, 18.620356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043949, 28.832520, 18.889774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443132, 0.865987, -0.231732,
		-0.692546, -0.166563, 0.701881,
		0.569223, 0.471511, 0.673545,
		29.214716, 28.973972, 19.091839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383043, 28.954720, 19.067051>,  <28.816259, 28.643915, 18.620356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383043, 28.954720, 19.067051> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.726492, 29.156776, 19.101933>,  <28.932560, 29.278009, 19.122862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.726492, 29.156776, 19.101933>,  <28.383043, 28.954720, 19.067051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726492, 29.156776, 19.101933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486256, 0.856448, -0.173358,
		-0.162257, 0.106445, 0.980990,
		0.858620, 0.505141, 0.087205,
		28.984077, 29.308319, 19.128094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114950, 29.477745, 19.413250>,  <28.383043, 28.954720, 19.067051>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114950, 29.477745, 19.413250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.468626, 29.593895, 19.266884>,  <28.680832, 29.663584, 19.179064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.468626, 29.593895, 19.266884>,  <28.114950, 29.477745, 19.413250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468626, 29.593895, 19.266884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313465, 0.949592, -0.003898,
		0.346337, 0.118148, 0.930640,
		0.884189, 0.290373, -0.365914,
		28.733883, 29.681007, 19.157110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491692, 29.907537, 19.908020>,  <28.114950, 29.477745, 19.413250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491692, 29.907537, 19.908020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.544708, 29.984531, 19.519096>,  <28.576519, 30.030727, 19.285742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.544708, 29.984531, 19.519096>,  <28.491692, 29.907537, 19.908020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544708, 29.984531, 19.519096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557212, 0.825746, 0.087512,
		0.819724, 0.530183, 0.216698,
		0.132541, 0.192483, -0.972308,
		28.584471, 30.042276, 19.227404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830845, 30.200123, 19.899639>,  <28.491692, 29.907537, 19.908020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830845, 30.200123, 19.899639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.469742, 30.052090, 19.811943>,  <27.253080, 29.963270, 19.759325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.469742, 30.052090, 19.811943>,  <27.830845, 30.200123, 19.899639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469742, 30.052090, 19.811943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108028, -0.688409, 0.717233,
		-0.416362, 0.623804, 0.661446,
		-0.902758, -0.370083, -0.219239,
		27.198914, 29.941065, 19.746172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576435, 29.918547, 20.606779>,  <27.830845, 30.200123, 19.899639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576435, 29.918547, 20.606779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.296671, 29.785706, 20.353630>,  <27.128813, 29.706001, 20.201740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.296671, 29.785706, 20.353630>,  <27.576435, 29.918547, 20.606779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296671, 29.785706, 20.353630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073200, -0.847546, 0.525649,
		-0.710960, 0.413972, 0.568474,
		-0.699412, -0.332103, -0.632874,
		27.086847, 29.686075, 20.163767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985909, 29.719357, 20.953039>,  <27.576435, 29.918547, 20.606779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985909, 29.719357, 20.953039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.008030, 29.502842, 20.617432>,  <27.021303, 29.372932, 20.416067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.008030, 29.502842, 20.617432>,  <26.985909, 29.719357, 20.953039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008030, 29.502842, 20.617432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156521, -0.834614, 0.528130,
		-0.986125, 0.102116, -0.130881,
		0.055304, -0.541287, -0.839017,
		27.024622, 29.340456, 20.365726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494272, 29.194950, 21.067381>,  <26.985909, 29.719357, 20.953039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494272, 29.194950, 21.067381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.703609, 29.051037, 20.758404>,  <26.829212, 28.964689, 20.573017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.703609, 29.051037, 20.758404>,  <26.494272, 29.194950, 21.067381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703609, 29.051037, 20.758404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038132, -0.895697, 0.443027,
		-0.851266, -0.261311, -0.455041,
		0.523346, -0.359783, -0.772441,
		26.860613, 28.943102, 20.526670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208706, 28.631218, 20.891020>,  <26.494272, 29.194950, 21.067381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208706, 28.631218, 20.891020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.577850, 28.560875, 20.753967>,  <26.799337, 28.518669, 20.671736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.577850, 28.560875, 20.753967>,  <26.208706, 28.631218, 20.891020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577850, 28.560875, 20.753967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092625, -0.964896, 0.245757,
		-0.373823, -0.195064, -0.906756,
		0.922864, -0.175858, -0.342633,
		26.854710, 28.508118, 20.651178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130421, 27.899420, 20.713652>,  <26.208706, 28.631218, 20.891020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130421, 27.899420, 20.713652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.523602, 27.960144, 20.672165>,  <26.759510, 27.996578, 20.647272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.523602, 27.960144, 20.672165>,  <26.130421, 27.899420, 20.713652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523602, 27.960144, 20.672165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172345, -0.957274, 0.232214,
		-0.064033, -0.246131, -0.967119,
		0.982953, 0.151808, -0.103717,
		26.818487, 28.005686, 20.641050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386389, 27.399658, 20.258669>,  <26.130421, 27.899420, 20.713652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.386389, 27.399658, 20.258669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.689995, 27.529926, 20.484177>,  <26.872158, 27.608088, 20.619482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.689995, 27.529926, 20.484177>,  <26.386389, 27.399658, 20.258669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689995, 27.529926, 20.484177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224416, -0.943707, 0.243010,
		0.611176, -0.057929, -0.789372,
		0.759013, 0.325670, 0.563771,
		26.917698, 27.627626, 20.653309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007200, 26.995438, 20.091646>,  <26.386389, 27.399658, 20.258669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007200, 26.995438, 20.091646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.080736, 27.139042, 20.457664>,  <27.124859, 27.225204, 20.677277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.080736, 27.139042, 20.457664>,  <27.007200, 26.995438, 20.091646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080736, 27.139042, 20.457664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261528, -0.915225, 0.306539,
		0.947526, 0.182956, -0.262148,
		0.183842, 0.359013, 0.915047,
		27.135889, 27.246746, 20.732180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.702478, 26.766689, 20.160112>,  <27.007200, 26.995438, 20.091646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.702478, 26.766689, 20.160112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.546080, 26.847584, 20.519272>,  <27.452240, 26.896120, 20.734768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.546080, 26.847584, 20.519272>,  <27.702478, 26.766689, 20.160112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546080, 26.847584, 20.519272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353363, -0.867813, 0.349335,
		0.849857, 0.453872, 0.267847,
		-0.390995, 0.202237, 0.897899,
		27.428782, 26.908255, 20.788641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234688, 26.533594, 20.560120>,  <27.702478, 26.766689, 20.160112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234688, 26.533594, 20.560120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.948498, 26.571121, 20.837044>,  <27.776783, 26.593637, 21.003199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.948498, 26.571121, 20.837044>,  <28.234688, 26.533594, 20.560120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948498, 26.571121, 20.837044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262940, -0.881921, 0.391252,
		0.647268, 0.461967, 0.606326,
		-0.715477, 0.093817, 0.692309,
		27.733854, 26.599266, 21.044737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487383, 26.356707, 21.215002>,  <28.234688, 26.533594, 20.560120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487383, 26.356707, 21.215002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.096310, 26.274170, 21.230812>,  <27.861666, 26.224648, 21.240297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.096310, 26.274170, 21.230812>,  <28.487383, 26.356707, 21.215002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096310, 26.274170, 21.230812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201843, -0.870307, 0.449251,
		-0.058301, 0.447202, 0.892531,
		-0.977681, -0.206343, 0.039525,
		27.803005, 26.212267, 21.242670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385748, 26.119516, 21.904388>,  <28.487383, 26.356707, 21.215002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385748, 26.119516, 21.904388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.064960, 25.976704, 21.712814>,  <27.872488, 25.891016, 21.597870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.064960, 25.976704, 21.712814>,  <28.385748, 26.119516, 21.904388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064960, 25.976704, 21.712814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006425, -0.806846, 0.590727,
		-0.597334, 0.470666, 0.649358,
		-0.801967, -0.357034, -0.478933,
		27.824371, 25.869593, 21.569134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999132, 25.833885, 22.418827>,  <28.385748, 26.119516, 21.904388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999132, 25.833885, 22.418827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.879715, 25.665619, 22.076153>,  <27.808065, 25.564659, 21.870548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.879715, 25.665619, 22.076153>,  <27.999132, 25.833885, 22.418827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.879715, 25.665619, 22.076153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007825, -0.898670, 0.438555,
		-0.954364, 0.124224, 0.271583,
		-0.298542, -0.420666, -0.856687,
		27.790152, 25.539419, 21.819147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495171, 25.384308, 22.590889>,  <27.999132, 25.833885, 22.418827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495171, 25.384308, 22.590889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.620209, 25.255058, 22.233593>,  <27.695232, 25.177509, 22.019217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.620209, 25.255058, 22.233593>,  <27.495171, 25.384308, 22.590889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620209, 25.255058, 22.233593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148971, -0.912050, 0.382063,
		-0.938132, -0.252498, -0.236967,
		0.312596, -0.323125, -0.893238,
		27.713987, 25.158121, 21.965622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054951, 24.883198, 22.414949>,  <27.495171, 25.384308, 22.590889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054951, 24.883198, 22.414949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.386831, 24.806793, 22.205147>,  <27.585960, 24.760950, 22.079266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.386831, 24.806793, 22.205147>,  <27.054951, 24.883198, 22.414949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386831, 24.806793, 22.205147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090642, -0.881057, 0.464244,
		-0.550796, -0.432727, -0.713702,
		0.829704, -0.191012, -0.524505,
		27.635742, 24.749489, 22.047794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023500, 24.186682, 22.195908>,  <27.054951, 24.883198, 22.414949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023500, 24.186682, 22.195908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.415930, 24.261375, 22.175404>,  <27.651386, 24.306192, 22.163101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.415930, 24.261375, 22.175404>,  <27.023500, 24.186682, 22.195908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.415930, 24.261375, 22.175404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193631, -0.943180, 0.270033,
		0.002078, -0.274847, -0.961486,
		0.981072, 0.186735, -0.051259,
		27.710251, 24.317396, 22.160027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289165, 23.650881, 21.860825>,  <27.023500, 24.186682, 22.195908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289165, 23.650881, 21.860825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.600224, 23.799229, 22.063892>,  <27.786858, 23.888237, 22.185732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.600224, 23.799229, 22.063892>,  <27.289165, 23.650881, 21.860825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600224, 23.799229, 22.063892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210461, -0.914454, 0.345659,
		0.592434, -0.161955, -0.789172,
		0.777643, 0.370870, 0.507668,
		27.833517, 23.910490, 22.216192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<28.306236, 23.239307, 21.953875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.513636, 23.515591, 22.155502>,  <28.638075, 23.681360, 22.276480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.513636, 23.515591, 22.155502>,  <28.306236, 23.239307, 21.953875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513636, 23.515591, 22.155502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022341, -0.578356, 0.815479,
		0.854788, -0.434084, -0.284445,
		0.518497, 0.690706, 0.504069,
		28.669186, 23.722803, 22.306723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085087, 23.142998, 22.104080>,  <28.306236, 23.239307, 21.953875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085087, 23.142998, 22.104080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.888590, 23.357330, 22.378761>,  <28.770691, 23.485929, 22.543570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.888590, 23.357330, 22.378761>,  <29.085087, 23.142998, 22.104080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888590, 23.357330, 22.378761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301935, -0.634749, 0.711287,
		0.817016, 0.556755, 0.150030,
		-0.491243, 0.535833, 0.686704,
		28.741217, 23.518080, 22.584772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560011, 23.164829, 22.659664>,  <29.085087, 23.142998, 22.104080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560011, 23.164829, 22.659664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.176592, 23.192898, 22.770130>,  <28.946541, 23.209740, 22.836409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.176592, 23.192898, 22.770130>,  <29.560011, 23.164829, 22.659664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176592, 23.192898, 22.770130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144657, -0.715168, 0.683819,
		0.245488, 0.695421, 0.675371,
		-0.958546, 0.070172, 0.276163,
		28.889029, 23.213949, 22.852980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649801, 23.133890, 23.352795>,  <29.560011, 23.164829, 22.659664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649801, 23.133890, 23.352795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.271877, 23.038975, 23.262440>,  <29.045122, 22.982025, 23.208227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.271877, 23.038975, 23.262440>,  <29.649801, 23.133890, 23.352795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271877, 23.038975, 23.262440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014923, -0.719953, 0.693863,
		-0.327275, 0.652198, 0.683761,
		-0.944811, -0.237288, -0.225889,
		28.988434, 22.967789, 23.194674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.294392, 23.109587, 24.105904>,  <29.649801, 23.133890, 23.352795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.294392, 23.109587, 24.105904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.133102, 22.895718, 23.808842>,  <29.036329, 22.767397, 23.630604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.133102, 22.895718, 23.808842>,  <29.294392, 23.109587, 24.105904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133102, 22.895718, 23.808842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182018, -0.842199, 0.507514,
		-0.896817, 0.069464, 0.436914,
		-0.403223, -0.534673, -0.742655,
		29.012136, 22.735315, 23.586046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869873, 22.714331, 24.390469>,  <29.294392, 23.109587, 24.105904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869873, 22.714331, 24.390469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.914497, 22.525013, 24.040943>,  <28.941273, 22.411423, 23.831228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.914497, 22.525013, 24.040943>,  <28.869873, 22.714331, 24.390469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914497, 22.525013, 24.040943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264306, -0.833499, 0.485203,
		-0.957964, -0.285085, 0.032107,
		0.111563, -0.473293, -0.873812,
		28.947966, 22.383024, 23.778799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.703514, 22.073523, 24.533985>,  <28.869873, 22.714331, 24.390469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.703514, 22.073523, 24.533985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.894321, 22.031502, 24.184948>,  <29.008806, 22.006290, 23.975525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.894321, 22.031502, 24.184948>,  <28.703514, 22.073523, 24.533985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894321, 22.031502, 24.184948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398201, -0.859251, 0.321128,
		-0.783510, -0.500652, -0.368049,
		0.477020, -0.105049, -0.872592,
		29.037428, 21.999987, 23.923170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369606, 21.541634, 24.288063>,  <28.703514, 22.073523, 24.533985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369606, 21.541634, 24.288063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.737181, 21.573090, 24.133469>,  <28.957726, 21.591963, 24.040712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.737181, 21.573090, 24.133469>,  <28.369606, 21.541634, 24.288063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737181, 21.573090, 24.133469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279293, -0.821645, 0.496886,
		-0.278479, -0.564549, -0.777003,
		0.918937, 0.078640, -0.386485,
		29.012861, 21.596682, 24.017523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531910, 21.027657, 23.750725>,  <28.369606, 21.541634, 24.288063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531910, 21.027657, 23.750725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.851969, 21.147583, 23.958523>,  <29.044004, 21.219540, 24.083202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.851969, 21.147583, 23.958523>,  <28.531910, 21.027657, 23.750725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851969, 21.147583, 23.958523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099079, -0.920276, 0.378516,
		0.591567, -0.251396, -0.766060,
		0.800145, 0.299818, 0.519497,
		29.092012, 21.237528, 24.114372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935310, 20.471802, 23.615221>,  <28.531910, 21.027657, 23.750725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935310, 20.471802, 23.615221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.071190, 20.661026, 23.940384>,  <29.152718, 20.774561, 24.135483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.071190, 20.661026, 23.940384>,  <28.935310, 20.471802, 23.615221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071190, 20.661026, 23.940384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088989, -0.876593, 0.472933,
		0.936315, -0.088315, -0.339875,
		0.339699, 0.473059, 0.812908,
		29.173100, 20.802944, 24.184256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466494, 20.048344, 23.808920>,  <28.935310, 20.471802, 23.615221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466494, 20.048344, 23.808920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.353933, 20.261086, 24.128407>,  <29.286398, 20.388731, 24.320099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.353933, 20.261086, 24.128407>,  <29.466494, 20.048344, 23.808920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353933, 20.261086, 24.128407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079310, -0.816611, 0.571714,
		0.956307, 0.224227, 0.187613,
		-0.281401, 0.531854, 0.798714,
		29.269512, 20.420641, 24.368021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887449, 19.819130, 24.300022>,  <29.466494, 20.048344, 23.808920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887449, 19.819130, 24.300022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.602606, 20.009323, 24.506641>,  <29.431700, 20.123440, 24.630613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.602606, 20.009323, 24.506641>,  <29.887449, 19.819130, 24.300022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602606, 20.009323, 24.506641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011286, -0.743405, 0.668746,
		0.701981, 0.470388, 0.534750,
		-0.712106, 0.475482, 0.516547,
		29.388973, 20.151968, 24.661606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092127, 19.842583, 25.094942>,  <29.887449, 19.819130, 24.300022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092127, 19.842583, 25.094942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.698078, 19.910831, 25.103127>,  <29.461649, 19.951780, 25.108038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.698078, 19.910831, 25.103127>,  <30.092127, 19.842583, 25.094942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698078, 19.910831, 25.103127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089405, -0.610559, 0.786908,
		0.146757, 0.773373, 0.616731,
		-0.985124, 0.170623, 0.020461,
		29.402540, 19.962019, 25.109264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962227, 19.838699, 25.785574>,  <30.092127, 19.842583, 25.094942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962227, 19.838699, 25.785574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.580706, 19.820526, 25.666782>,  <29.351793, 19.809622, 25.595509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.580706, 19.820526, 25.666782>,  <29.962227, 19.838699, 25.785574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580706, 19.820526, 25.666782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219946, -0.567768, 0.793261,
		-0.204655, 0.821934, 0.531546,
		-0.953803, -0.045433, -0.296978,
		29.294565, 19.806896, 25.577688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475662, 19.925686, 26.372196>,  <29.962227, 19.838699, 25.785574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475662, 19.925686, 26.372196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.272232, 19.721012, 26.095203>,  <29.150173, 19.598207, 25.929008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.272232, 19.721012, 26.095203>,  <29.475662, 19.925686, 26.372196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272232, 19.721012, 26.095203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279787, -0.662402, 0.694941,
		-0.814290, 0.547178, 0.193721,
		-0.508577, -0.511683, -0.692481,
		29.119659, 19.567507, 25.887459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800716, 19.736425, 26.744251>,  <29.475662, 19.925686, 26.372196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800716, 19.736425, 26.744251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.830215, 19.500397, 26.422661>,  <28.847914, 19.358780, 26.229706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.830215, 19.500397, 26.422661>,  <28.800716, 19.736425, 26.744251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830215, 19.500397, 26.422661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326172, -0.776104, 0.539698,
		-0.942429, 0.222434, -0.249700,
		0.073746, -0.590072, -0.803975,
		28.852339, 19.323376, 26.181469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280989, 19.272467, 26.826571>,  <28.800716, 19.736425, 26.744251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280989, 19.272467, 26.826571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.516727, 19.097305, 26.555008>,  <28.658171, 18.992208, 26.392071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.516727, 19.097305, 26.555008>,  <28.280989, 19.272467, 26.826571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.516727, 19.097305, 26.555008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025260, -0.829953, 0.557261,
		-0.807486, -0.345568, -0.478067,
		0.589345, -0.437905, -0.678904,
		28.693531, 18.965935, 26.351337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961365, 18.654825, 26.806845>,  <28.280989, 19.272467, 26.826571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961365, 18.654825, 26.806845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.325762, 18.598892, 26.651649>,  <28.544401, 18.565332, 26.558533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.325762, 18.598892, 26.651649>,  <27.961365, 18.654825, 26.806845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325762, 18.598892, 26.651649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094468, -0.845004, 0.526349,
		-0.401453, -0.516154, -0.756585,
		0.910994, -0.139831, -0.387989,
		28.599060, 18.556942, 26.535254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910261, 18.014544, 26.495300>,  <27.961365, 18.654825, 26.806845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910261, 18.014544, 26.495300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.288574, 18.097454, 26.595325>,  <28.515562, 18.147200, 26.655340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.288574, 18.097454, 26.595325>,  <27.910261, 18.014544, 26.495300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288574, 18.097454, 26.595325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014441, -0.795974, 0.605158,
		0.324477, -0.568738, -0.755812,
		0.945783, 0.207275, 0.250062,
		28.572309, 18.159636, 26.670343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286694, 17.359341, 26.442383>,  <27.910261, 18.014544, 26.495300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286694, 17.359341, 26.442383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.500814, 17.589241, 26.689968>,  <28.629288, 17.727180, 26.838518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.500814, 17.589241, 26.689968>,  <28.286694, 17.359341, 26.442383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500814, 17.589241, 26.689968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029054, -0.744888, 0.666556,
		0.844161, -0.338826, -0.415440,
		0.535303, 0.574751, 0.618961,
		28.661406, 17.761665, 26.875656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887505, 17.011442, 26.617441>,  <28.286694, 17.359341, 26.442383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887505, 17.011442, 26.617441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.878489, 17.277725, 26.915791>,  <28.873079, 17.437494, 27.094799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.878489, 17.277725, 26.915791>,  <28.887505, 17.011442, 26.617441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878489, 17.277725, 26.915791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109442, -0.739935, 0.663716,
		0.993737, 0.096592, -0.056177,
		-0.022542, 0.665707, 0.745872,
		28.871725, 17.477438, 27.139553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621469, 17.046957, 26.917404>,  <28.887505, 17.011442, 26.617441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621469, 17.046957, 26.917404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.367105, 17.184799, 27.193626>,  <29.214487, 17.267504, 27.359360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.367105, 17.184799, 27.193626>,  <29.621469, 17.046957, 26.917404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367105, 17.184799, 27.193626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344816, -0.673640, 0.653690,
		0.690451, 0.653802, 0.309549,
		-0.635909, 0.344603, 0.690557,
		29.176332, 17.288179, 27.400793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957150, 17.188620, 27.650927>,  <29.621469, 17.046957, 26.917404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957150, 17.188620, 27.650927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.571087, 17.092350, 27.692005>,  <29.339449, 17.034588, 27.716652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.571087, 17.092350, 27.692005>,  <29.957150, 17.188620, 27.650927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571087, 17.092350, 27.692005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238567, -0.648113, 0.723212,
		-0.107499, 0.722514, 0.682948,
		-0.965158, -0.240674, 0.102697,
		29.281540, 17.020147, 27.722815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446386, 16.886202, 28.136808>,  <29.957150, 17.188620, 27.650927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446386, 16.886202, 28.136808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.777937, 17.005630, 28.326046>,  <30.976868, 17.077288, 28.439589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.777937, 17.005630, 28.326046>,  <30.446386, 16.886202, 28.136808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777937, 17.005630, 28.326046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177883, 0.661117, -0.728891,
		-0.530398, 0.688316, 0.494873,
		0.828876, 0.298572, 0.473095,
		31.026600, 17.095201, 28.467974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489223, 17.704033, 28.251394>,  <30.446386, 16.886202, 28.136808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489223, 17.704033, 28.251394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.864676, 17.567577, 28.231014>,  <31.089947, 17.485704, 28.218786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.864676, 17.567577, 28.231014>,  <30.489223, 17.704033, 28.251394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864676, 17.567577, 28.231014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183640, 0.619298, -0.763379,
		0.291970, 0.707175, 0.643939,
		0.938632, -0.341136, -0.050950,
		31.146265, 17.465237, 28.215729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994371, 18.200508, 28.440998>,  <30.489223, 17.704033, 28.251394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994371, 18.200508, 28.440998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.176147, 17.932045, 28.206722>,  <31.285213, 17.770967, 28.066156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.176147, 17.932045, 28.206722>,  <30.994371, 18.200508, 28.440998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176147, 17.932045, 28.206722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146113, 0.704761, -0.694235,
		0.878712, 0.229911, 0.418336,
		0.454440, -0.671158, -0.585689,
		31.312479, 17.730698, 28.031015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635180, 18.600016, 28.269651>,  <30.994371, 18.200508, 28.440998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635180, 18.600016, 28.269651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.602934, 18.304878, 28.001595>,  <31.583588, 18.127796, 27.840761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.602934, 18.304878, 28.001595>,  <31.635180, 18.600016, 28.269651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602934, 18.304878, 28.001595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011536, 0.672976, -0.739574,
		0.996679, -0.051888, -0.062763,
		-0.080613, -0.737842, -0.670142,
		31.578751, 18.083525, 27.800552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290943, 18.491348, 27.866335>,  <31.635180, 18.600016, 28.269651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290943, 18.491348, 27.866335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.987890, 18.340897, 27.652973>,  <31.806059, 18.250626, 27.524956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.987890, 18.340897, 27.652973>,  <32.290943, 18.491348, 27.866335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987890, 18.340897, 27.652973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074545, 0.762033, -0.643233,
		0.648409, -0.527097, -0.549303,
		-0.757633, -0.376130, -0.533402,
		31.760601, 18.228058, 27.492952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572018, 18.575422, 27.291229>,  <32.290943, 18.491348, 27.866335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572018, 18.575422, 27.291229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.181419, 18.531208, 27.217213>,  <31.947062, 18.504681, 27.172802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.181419, 18.531208, 27.217213>,  <32.572018, 18.575422, 27.291229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181419, 18.531208, 27.217213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033840, 0.769229, -0.638076,
		0.212868, -0.629340, -0.747408,
		-0.976495, -0.110534, -0.185041,
		31.888472, 18.498049, 27.161701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466225, 18.584566, 26.630424>,  <32.572018, 18.575422, 27.291229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466225, 18.584566, 26.630424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100224, 18.682739, 26.758503>,  <31.880623, 18.741642, 26.835350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100224, 18.682739, 26.758503>,  <32.466225, 18.584566, 26.630424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100224, 18.682739, 26.758503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029077, 0.751487, -0.659106,
		-0.402390, -0.612397, -0.680480,
		-0.915006, 0.245432, 0.320197,
		31.825722, 18.756369, 26.854563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178909, 18.654028, 26.042940>,  <32.466225, 18.584566, 26.630424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178909, 18.654028, 26.042940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.989943, 18.867867, 26.323235>,  <31.876564, 18.996170, 26.491411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.989943, 18.867867, 26.323235>,  <32.178909, 18.654028, 26.042940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989943, 18.867867, 26.323235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158031, 0.730784, -0.664064,
		-0.867094, -0.424451, -0.260750,
		-0.472414, 0.534599, 0.700735,
		31.848219, 19.028246, 26.533455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658850, 18.815588, 25.709799>,  <32.178909, 18.654028, 26.042940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658850, 18.815588, 25.709799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.676201, 19.086018, 26.004021>,  <31.686611, 19.248276, 26.180553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.676201, 19.086018, 26.004021>,  <31.658850, 18.815588, 25.709799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676201, 19.086018, 26.004021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009008, 0.736482, -0.676397,
		-0.999018, 0.022715, 0.038037,
		0.043378, 0.676076, 0.735554,
		31.689215, 19.288841, 26.224688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976833, 19.181036, 25.677526>,  <31.658850, 18.815588, 25.709799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976833, 19.181036, 25.677526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240326, 19.420715, 25.859531>,  <31.398422, 19.564522, 25.968735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240326, 19.420715, 25.859531>,  <30.976833, 19.181036, 25.677526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240326, 19.420715, 25.859531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225968, 0.734407, -0.639988,
		-0.717642, 0.318763, 0.619177,
		0.658733, 0.599197, 0.455010,
		31.437946, 19.600473, 25.996035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959362, 19.693569, 25.171091>,  <30.976833, 19.181036, 25.677526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959362, 19.693569, 25.171091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.153429, 19.883312, 25.464920>,  <31.269869, 19.997158, 25.641218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.153429, 19.883312, 25.464920>,  <30.959362, 19.693569, 25.171091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153429, 19.883312, 25.464920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043354, 0.825985, -0.562023,
		-0.873345, 0.304522, 0.380176,
		0.485168, 0.474358, 0.734572,
		31.298979, 20.025620, 25.685291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644264, 20.370022, 25.351316>,  <30.959362, 19.693569, 25.171091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644264, 20.370022, 25.351316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.035074, 20.355206, 25.435272>,  <31.269560, 20.346315, 25.485645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.035074, 20.355206, 25.435272>,  <30.644264, 20.370022, 25.351316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035074, 20.355206, 25.435272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157830, 0.787547, -0.595700,
		-0.143233, 0.615140, 0.775298,
		0.977023, -0.037041, 0.209890,
		31.328180, 20.344093, 25.498240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862627, 21.034843, 25.684748>,  <30.644264, 20.370022, 25.351316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862627, 21.034843, 25.684748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.152601, 20.847359, 25.482845>,  <31.326586, 20.734867, 25.361704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.152601, 20.847359, 25.482845>,  <30.862627, 21.034843, 25.684748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152601, 20.847359, 25.482845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100073, 0.796677, -0.596063,
		0.681509, 0.381594, 0.624445,
		0.724935, -0.468713, -0.504755,
		31.370081, 20.706745, 25.331419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288685, 21.581501, 25.430367>,  <30.862627, 21.034843, 25.684748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288685, 21.581501, 25.430367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.393108, 21.262840, 25.212303>,  <31.455763, 21.071644, 25.081465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.393108, 21.262840, 25.212303>,  <31.288685, 21.581501, 25.430367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393108, 21.262840, 25.212303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108692, 0.585407, -0.803420,
		0.959185, 0.150485, 0.239414,
		0.261057, -0.796651, -0.545157,
		31.471426, 21.023846, 25.048756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003418, 21.778648, 25.112333>,  <31.288685, 21.581501, 25.430367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003418, 21.778648, 25.112333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854841, 21.494118, 24.873657>,  <31.765694, 21.323399, 24.730452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854841, 21.494118, 24.873657>,  <32.003418, 21.778648, 25.112333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854841, 21.494118, 24.873657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113212, 0.603175, -0.789533,
		0.921527, -0.360821, -0.143516,
		-0.371445, -0.711328, -0.596691,
		31.743408, 21.280720, 24.694651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388664, 21.793354, 24.490681>,  <32.003418, 21.778648, 25.112333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388664, 21.793354, 24.490681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079456, 21.564217, 24.381660>,  <31.893930, 21.426733, 24.316248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.079456, 21.564217, 24.381660>,  <32.388664, 21.793354, 24.490681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079456, 21.564217, 24.381660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025201, 0.401565, -0.915484,
		0.633878, -0.714558, -0.295983,
		-0.773023, -0.572846, -0.272550,
		31.847549, 21.392363, 24.299896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471970, 21.612898, 23.745480>,  <32.388664, 21.793354, 24.490681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471970, 21.612898, 23.745480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.081387, 21.547810, 23.802132>,  <31.847038, 21.508757, 23.836123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.081387, 21.547810, 23.802132>,  <32.471970, 21.612898, 23.745480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081387, 21.547810, 23.802132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199828, 0.434934, -0.878010,
		0.081270, -0.885638, -0.457209,
		-0.976455, -0.162719, 0.141628,
		31.788450, 21.498993, 23.844620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273407, 21.423534, 23.136433>,  <32.471970, 21.612898, 23.745480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273407, 21.423534, 23.136433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.950521, 21.549046, 23.336414>,  <31.756790, 21.624352, 23.456404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.950521, 21.549046, 23.336414>,  <32.273407, 21.423534, 23.136433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950521, 21.549046, 23.336414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246504, 0.590405, -0.768542,
		-0.536326, -0.743617, -0.399235,
		-0.807211, 0.313776, 0.499955,
		31.708359, 21.643179, 23.486401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740028, 21.472269, 22.666471>,  <32.273407, 21.423534, 23.136433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740028, 21.472269, 22.666471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.660028, 21.729950, 22.961769>,  <31.612028, 21.884558, 23.138948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.660028, 21.729950, 22.961769>,  <31.740028, 21.472269, 22.666471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660028, 21.729950, 22.961769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232870, 0.700624, -0.674461,
		-0.951720, -0.306808, 0.009889,
		-0.200001, 0.644201, 0.738245,
		31.600027, 21.923210, 23.183243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331646, 21.893084, 22.217020>,  <31.740028, 21.472269, 22.666471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331646, 21.893084, 22.217020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.426365, 22.115124, 22.535965>,  <31.483196, 22.248348, 22.727333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.426365, 22.115124, 22.535965>,  <31.331646, 21.893084, 22.217020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426365, 22.115124, 22.535965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305619, 0.821602, -0.481215,
		-0.922239, -0.129740, 0.364201,
		0.236796, 0.555102, 0.797364,
		31.497404, 22.281654, 22.775175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864878, 22.474377, 22.257809>,  <31.331646, 21.893084, 22.217020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864878, 22.474377, 22.257809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.174999, 22.597366, 22.478485>,  <31.361073, 22.671160, 22.610891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.174999, 22.597366, 22.478485>,  <30.864878, 22.474377, 22.257809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174999, 22.597366, 22.478485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091767, 0.919070, -0.383262,
		-0.624885, 0.246518, 0.740775,
		0.775304, 0.307473, 0.551691,
		31.407591, 22.689608, 22.643993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<26.717323, 38.821758, 16.230944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.942020, 38.543724, 16.410408>,  <27.076839, 38.376904, 16.518087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.942020, 38.543724, 16.410408>,  <26.717323, 38.821758, 16.230944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942020, 38.543724, 16.410408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791453, -0.293581, 0.536108,
		-0.240921, -0.656254, -0.715044,
		0.561746, -0.695084, 0.448664,
		27.110544, 38.335197, 16.545006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339294, 38.106762, 16.187206>,  <26.717323, 38.821758, 16.230944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339294, 38.106762, 16.187206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.584000, 38.104370, 16.503613>,  <26.730824, 38.102936, 16.693457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.584000, 38.104370, 16.503613>,  <26.339294, 38.106762, 16.187206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584000, 38.104370, 16.503613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735826, -0.371339, 0.566275,
		0.290351, -0.928478, -0.231570,
		0.611765, -0.005977, 0.791017,
		26.767529, 38.102577, 16.740917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249325, 37.567722, 16.484373>,  <26.339294, 38.106762, 16.187206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249325, 37.567722, 16.484373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.431620, 37.735279, 16.798527>,  <26.540997, 37.835812, 16.987019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.431620, 37.735279, 16.798527>,  <26.249325, 37.567722, 16.484373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431620, 37.735279, 16.798527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721146, -0.343461, 0.601650,
		0.521776, -0.840573, 0.145555,
		0.455738, 0.418893, 0.785386,
		26.568340, 37.860947, 17.034143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325571, 36.991917, 16.944952>,  <26.249325, 37.567722, 16.484373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325571, 36.991917, 16.944952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.333530, 37.352509, 17.117897>,  <26.338306, 37.568863, 17.221664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.333530, 37.352509, 17.117897>,  <26.325571, 36.991917, 16.944952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333530, 37.352509, 17.117897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586366, -0.339744, 0.735356,
		0.809801, -0.268157, 0.521837,
		0.019901, 0.901480, 0.432363,
		26.339500, 37.622952, 17.247606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305479, 36.822552, 17.663790>,  <26.325571, 36.991917, 16.944952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.305479, 36.822552, 17.663790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.221266, 37.212223, 17.696426>,  <26.170738, 37.446026, 17.716009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.221266, 37.212223, 17.696426>,  <26.305479, 36.822552, 17.663790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221266, 37.212223, 17.696426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604176, -0.195277, 0.772554,
		0.768536, 0.113354, 0.629686,
		-0.210535, 0.974176, 0.081591,
		26.158106, 37.504475, 17.720903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.485865, 37.177052, 18.342188>,  <26.305479, 36.822552, 17.663790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.485865, 37.177052, 18.342188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.185020, 37.405544, 18.210720>,  <26.004515, 37.542641, 18.131840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.185020, 37.405544, 18.210720>,  <26.485865, 37.177052, 18.342188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185020, 37.405544, 18.210720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521585, -0.211098, 0.826672,
		0.402842, 0.793176, 0.456716,
		-0.752108, 0.571234, -0.328670,
		25.959389, 37.576916, 18.112120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223591, 37.401585, 18.948616>,  <26.485865, 37.177052, 18.342188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223591, 37.401585, 18.948616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.936247, 37.491302, 18.685207>,  <25.763840, 37.545132, 18.527163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.936247, 37.491302, 18.685207>,  <26.223591, 37.401585, 18.948616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936247, 37.491302, 18.685207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690891, -0.119224, 0.713061,
		0.081425, 0.967201, 0.240609,
		-0.718359, 0.224296, -0.658522,
		25.720739, 37.558590, 18.487650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773100, 37.802872, 19.283867>,  <26.223591, 37.401585, 18.948616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773100, 37.802872, 19.283867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.555033, 37.686749, 18.969284>,  <25.424192, 37.617073, 18.780535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.555033, 37.686749, 18.969284>,  <25.773100, 37.802872, 19.283867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555033, 37.686749, 18.969284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760091, -0.224557, 0.609783,
		-0.353629, 0.930213, -0.098238,
		-0.545168, -0.290307, -0.786456,
		25.391481, 37.599655, 18.733347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.128752, 38.092148, 19.359049>,  <25.773100, 37.802872, 19.283867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.128752, 38.092148, 19.359049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.058533, 37.767925, 19.135559>,  <25.016401, 37.573391, 19.001465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.058533, 37.767925, 19.135559>,  <25.128752, 38.092148, 19.359049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.058533, 37.767925, 19.135559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715852, -0.284508, 0.637661,
		-0.675824, 0.511906, -0.530296,
		-0.175549, -0.810560, -0.558726,
		25.005867, 37.524757, 18.967941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.357950, 38.061279, 19.307068>,  <25.128752, 38.092148, 19.359049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.357950, 38.061279, 19.307068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.470009, 37.697292, 19.184769>,  <24.537245, 37.478901, 19.111389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.470009, 37.697292, 19.184769>,  <24.357950, 38.061279, 19.307068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.470009, 37.697292, 19.184769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741313, -0.407428, 0.533345,
		-0.609896, 0.077239, -0.788709,
		0.280147, -0.909965, -0.305747,
		24.554052, 37.424301, 19.093044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.732672, 37.677418, 19.206198>,  <24.357950, 38.061279, 19.307068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.732672, 37.677418, 19.206198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.015516, 37.397755, 19.248486>,  <24.185223, 37.229958, 19.273857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.015516, 37.397755, 19.248486>,  <23.732672, 37.677418, 19.206198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.015516, 37.397755, 19.248486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679512, -0.630524, 0.375104,
		-0.195598, -0.337076, -0.920935,
		0.707110, -0.699156, 0.105718,
		24.227650, 37.188007, 19.280201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.371458, 37.046562, 19.101036>,  <23.732672, 37.677418, 19.206198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.371458, 37.046562, 19.101036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.708832, 36.955395, 19.295631>,  <23.911255, 36.900696, 19.412390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.708832, 36.955395, 19.295631>,  <23.371458, 37.046562, 19.101036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.708832, 36.955395, 19.295631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489897, -0.697965, 0.522346,
		0.220501, -0.678895, -0.700344,
		0.843433, -0.227919, 0.486490,
		23.961863, 36.887020, 19.441578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.504837, 36.330490, 19.047295>,  <23.371458, 37.046562, 19.101036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.504837, 36.330490, 19.047295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.708107, 36.429947, 19.377129>,  <23.830069, 36.489620, 19.575029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.708107, 36.429947, 19.377129>,  <23.504837, 36.330490, 19.047295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.708107, 36.429947, 19.377129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520909, -0.673719, 0.524172,
		0.685868, -0.695904, -0.212847,
		0.508172, 0.248638, 0.824584,
		23.860559, 36.504539, 19.624504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.627848, 35.694935, 19.280537>,  <23.504837, 36.330490, 19.047295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.627848, 35.694935, 19.280537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.675240, 35.936642, 19.595707>,  <23.703674, 36.081665, 19.784809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.675240, 35.936642, 19.595707>,  <23.627848, 35.694935, 19.280537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.675240, 35.936642, 19.595707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626973, -0.569798, 0.531259,
		0.769979, -0.556952, 0.311348,
		0.118480, 0.604264, 0.787926,
		23.710783, 36.117920, 19.832085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.873413, 35.306725, 19.923220>,  <23.627848, 35.694935, 19.280537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.873413, 35.306725, 19.923220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.684765, 35.641422, 20.034523>,  <23.571577, 35.842243, 20.101305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.684765, 35.641422, 20.034523>,  <23.873413, 35.306725, 19.923220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.684765, 35.641422, 20.034523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561003, -0.528174, 0.637423,
		0.680332, 0.144516, 0.718515,
		-0.471619, 0.836748, 0.278259,
		23.543280, 35.892448, 20.118000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.662287, 35.073193, 20.503860>,  <23.873413, 35.306725, 19.923220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.662287, 35.073193, 20.503860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.484879, 35.431496, 20.491852>,  <23.378433, 35.646477, 20.484646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.484879, 35.431496, 20.491852>,  <23.662287, 35.073193, 20.503860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.484879, 35.431496, 20.491852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749240, -0.352176, 0.560902,
		0.491861, 0.271265, 0.827338,
		-0.443521, 0.895761, -0.030021,
		23.351822, 35.700226, 20.482845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.699484, 35.346058, 21.120834>,  <23.662287, 35.073193, 20.503860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.699484, 35.346058, 21.120834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.377174, 35.513454, 20.953217>,  <23.183788, 35.613892, 20.852646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.377174, 35.513454, 20.953217>,  <23.699484, 35.346058, 21.120834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.377174, 35.513454, 20.953217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559060, -0.304050, 0.771366,
		0.195396, 0.855817, 0.478955,
		-0.805774, 0.418487, -0.419043,
		23.135443, 35.639000, 20.827503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.281870, 35.614285, 21.644167>,  <23.699484, 35.346058, 21.120834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.281870, 35.614285, 21.644167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.011436, 35.580761, 21.351349>,  <22.849176, 35.560646, 21.175659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.011436, 35.580761, 21.351349>,  <23.281870, 35.614285, 21.644167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.011436, 35.580761, 21.351349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682455, -0.303337, 0.665012,
		-0.277788, 0.949191, 0.147886,
		-0.676083, -0.083807, -0.732044,
		22.808611, 35.555618, 21.131735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.763399, 35.721535, 22.007671>,  <23.281870, 35.614285, 21.644167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.763399, 35.721535, 22.007671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.617067, 35.575977, 21.665035>,  <22.529268, 35.488644, 21.459454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.617067, 35.575977, 21.665035>,  <22.763399, 35.721535, 22.007671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.617067, 35.575977, 21.665035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782504, -0.378006, 0.494772,
		-0.503843, 0.851288, -0.146466,
		-0.365828, -0.363897, -0.856591,
		22.507318, 35.466808, 21.408058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.056684, 35.939426, 22.111521>,  <22.763399, 35.721535, 22.007671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.056684, 35.939426, 22.111521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.027287, 35.658577, 21.828220>,  <22.009647, 35.490067, 21.658241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.027287, 35.658577, 21.828220>,  <22.056684, 35.939426, 22.111521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.027287, 35.658577, 21.828220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662151, -0.496697, 0.561114,
		-0.745758, 0.510205, -0.428410,
		-0.073493, -0.702127, -0.708249,
		22.005239, 35.447937, 21.615746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.288456, 35.735607, 22.072147>,  <22.056684, 35.939426, 22.111521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.288456, 35.735607, 22.072147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.523884, 35.453316, 21.914394>,  <21.665140, 35.283943, 21.819742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.523884, 35.453316, 21.914394>,  <21.288456, 35.735607, 22.072147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.523884, 35.453316, 21.914394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598195, -0.708321, 0.374758,
		-0.543824, 0.015344, -0.839059,
		0.588572, -0.705724, -0.394381,
		21.700455, 35.241600, 21.796080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.543804, 35.824478, 21.783773>,  <21.288456, 35.735607, 22.072147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.543804, 35.824478, 21.783773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.458424, 36.210411, 21.845146>,  <20.407196, 36.441971, 21.881969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.458424, 36.210411, 21.845146>,  <20.543804, 35.824478, 21.783773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.458424, 36.210411, 21.845146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159975, 0.189452, -0.968770,
		-0.963767, -0.182237, -0.194787,
		-0.213449, 0.964830, 0.153434,
		20.394388, 36.499859, 21.891176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.135517, 36.016438, 21.163574>,  <20.543804, 35.824478, 21.783773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.135517, 36.016438, 21.163574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.205275, 36.375999, 21.324352>,  <20.247129, 36.591736, 21.420820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.205275, 36.375999, 21.324352>,  <20.135517, 36.016438, 21.163574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.205275, 36.375999, 21.324352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048864, 0.399799, -0.915299,
		-0.983463, 0.179264, 0.025799,
		0.174395, 0.898902, 0.401947,
		20.257593, 36.645672, 21.444937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.778345, 36.498039, 20.678560>,  <20.135517, 36.016438, 21.163574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.778345, 36.498039, 20.678560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.058821, 36.694141, 20.885628>,  <20.227106, 36.811802, 21.009869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.058821, 36.694141, 20.885628>,  <19.778345, 36.498039, 20.678560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.058821, 36.694141, 20.885628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040324, 0.697638, -0.715315,
		-0.711833, 0.522446, 0.469408,
		0.701190, 0.490256, 0.517669,
		20.269178, 36.841217, 21.040928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.541819, 37.277515, 20.788950>,  <19.778345, 36.498039, 20.678560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.541819, 37.277515, 20.788950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.938190, 37.224354, 20.780979>,  <20.176014, 37.192455, 20.776197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.938190, 37.224354, 20.780979>,  <19.541819, 37.277515, 20.788950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.938190, 37.224354, 20.780979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061241, 0.578552, -0.813343,
		0.119625, 0.804744, 0.581443,
		0.990929, -0.132904, -0.019926,
		20.235470, 37.184483, 20.775002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.905212, 37.943790, 20.581715>,  <19.541819, 37.277515, 20.788950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.905212, 37.943790, 20.581715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.195868, 37.670845, 20.549782>,  <20.370260, 37.507076, 20.530622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.195868, 37.670845, 20.549782>,  <19.905212, 37.943790, 20.581715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195868, 37.670845, 20.549782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308076, 0.427501, -0.849901,
		0.614072, 0.592976, 0.520859,
		0.726639, -0.682365, -0.079834,
		20.413858, 37.466137, 20.525831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.547676, 38.292721, 20.518902>,  <19.905212, 37.943790, 20.581715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.547676, 38.292721, 20.518902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.583139, 37.926975, 20.360878>,  <20.604418, 37.707527, 20.266064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.583139, 37.926975, 20.360878>,  <20.547676, 38.292721, 20.518902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.583139, 37.926975, 20.360878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442803, 0.391457, -0.806652,
		0.892225, -0.103419, 0.439590,
		0.088658, -0.914367, -0.395061,
		20.609737, 37.652664, 20.242359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.204128, 38.217316, 20.218031>,  <20.547676, 38.292721, 20.518902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.204128, 38.217316, 20.218031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.071802, 37.892864, 20.025101>,  <20.992407, 37.698193, 19.909344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.071802, 37.892864, 20.025101>,  <21.204128, 38.217316, 20.218031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.071802, 37.892864, 20.025101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434220, 0.322948, -0.840926,
		0.837862, -0.487627, 0.245371,
		-0.330816, -0.811126, -0.482323,
		20.972557, 37.649529, 19.880404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.718204, 38.105377, 19.830330>,  <21.204128, 38.217316, 20.218031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.718204, 38.105377, 19.830330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.418243, 37.909893, 19.651978>,  <21.238266, 37.792603, 19.544966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.418243, 37.909893, 19.651978>,  <21.718204, 38.105377, 19.830330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.418243, 37.909893, 19.651978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400627, 0.200861, -0.893953,
		0.526444, -0.849009, 0.045165,
		-0.749903, -0.488711, -0.445879,
		21.193272, 37.763279, 19.518213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.072817, 37.592178, 19.495102>,  <21.718204, 38.105377, 19.830330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.072817, 37.592178, 19.495102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.722057, 37.658482, 19.314625>,  <21.511602, 37.698261, 19.206339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.722057, 37.658482, 19.314625>,  <22.072817, 37.592178, 19.495102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.722057, 37.658482, 19.314625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459108, 0.010793, -0.888315,
		-0.142371, -0.986108, -0.085564,
		-0.876898, 0.165754, -0.451193,
		21.458988, 37.708206, 19.179266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.135910, 37.222015, 18.890707>,  <22.072817, 37.592178, 19.495102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.135910, 37.222015, 18.890707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.822134, 37.457397, 18.812355>,  <21.633867, 37.598625, 18.765343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.822134, 37.457397, 18.812355>,  <22.135910, 37.222015, 18.890707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.822134, 37.457397, 18.812355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325319, 0.121508, -0.937765,
		-0.528033, -0.799346, -0.286752,
		-0.784442, 0.588457, -0.195882,
		21.586802, 37.633934, 18.753590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.986818, 36.995335, 18.274490>,  <22.135910, 37.222015, 18.890707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.986818, 36.995335, 18.274490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.757719, 37.323215, 18.271591>,  <21.620260, 37.519943, 18.269852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.757719, 37.323215, 18.271591>,  <21.986818, 36.995335, 18.274490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.757719, 37.323215, 18.271591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149869, 0.096015, -0.984033,
		-0.805916, -0.564687, -0.177840,
		-0.572746, 0.819701, -0.007249,
		21.585896, 37.569126, 18.269417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.682756, 37.018017, 17.585421>,  <21.986818, 36.995335, 18.274490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.682756, 37.018017, 17.585421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.680105, 37.394955, 17.719250>,  <21.678514, 37.621117, 17.799547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.680105, 37.394955, 17.719250>,  <21.682756, 37.018017, 17.585421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.680105, 37.394955, 17.719250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359497, 0.314457, -0.878566,
		-0.933123, 0.114453, -0.340856,
		-0.006630, 0.942347, 0.334573,
		21.678116, 37.677658, 17.819622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.385401, 37.483429, 17.030891>,  <21.682756, 37.018017, 17.585421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.385401, 37.483429, 17.030891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.635994, 37.676388, 17.275780>,  <21.786350, 37.792164, 17.422712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.635994, 37.676388, 17.275780>,  <21.385401, 37.483429, 17.030891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.635994, 37.676388, 17.275780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507429, 0.343794, -0.790140,
		-0.591638, 0.805667, -0.029401,
		0.626482, 0.482396, 0.612221,
		21.823938, 37.821106, 17.459446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.464399, 38.139553, 16.673674>,  <21.385401, 37.483429, 17.030891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.464399, 38.139553, 16.673674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.776634, 38.104824, 16.921268>,  <21.963976, 38.083988, 17.069824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.776634, 38.104824, 16.921268>,  <21.464399, 38.139553, 16.673674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.776634, 38.104824, 16.921268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607076, 0.341055, -0.717733,
		-0.148796, 0.936026, 0.318929,
		0.780589, -0.086818, 0.618986,
		22.010811, 38.078777, 17.106964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.820715, 38.751518, 16.504303>,  <21.464399, 38.139553, 16.673674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.820715, 38.751518, 16.504303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.046268, 38.468273, 16.674294>,  <22.181601, 38.298325, 16.776289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.046268, 38.468273, 16.674294>,  <21.820715, 38.751518, 16.504303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.046268, 38.468273, 16.674294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706091, 0.146484, -0.692804,
		0.428332, 0.690736, 0.582594,
		0.563886, -0.708115, 0.424979,
		22.215435, 38.255840, 16.801786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.535051, 38.960316, 16.304558>,  <21.820715, 38.751518, 16.504303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.535051, 38.960316, 16.304558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.565880, 38.578407, 16.419430>,  <22.584377, 38.349262, 16.488354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.565880, 38.578407, 16.419430>,  <22.535051, 38.960316, 16.304558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.565880, 38.578407, 16.419430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767692, -0.126957, -0.628117,
		0.636167, 0.268877, 0.723185,
		0.077073, -0.954771, 0.287180,
		22.589003, 38.291977, 16.505585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.277664, 38.951645, 16.480247>,  <22.535051, 38.960316, 16.304558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.277664, 38.951645, 16.480247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.156601, 38.572563, 16.439751>,  <23.083963, 38.345112, 16.415453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.156601, 38.572563, 16.439751>,  <23.277664, 38.951645, 16.480247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.156601, 38.572563, 16.439751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808542, -0.199056, -0.553748,
		0.504638, -0.249453, 0.826507,
		-0.302656, -0.947708, -0.101242,
		23.065804, 38.288250, 16.409378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.809443, 38.528225, 16.759579>,  <23.277664, 38.951645, 16.480247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.809443, 38.528225, 16.759579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.604500, 38.280666, 16.521435>,  <23.481533, 38.132130, 16.378550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.604500, 38.280666, 16.521435>,  <23.809443, 38.528225, 16.759579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.604500, 38.280666, 16.521435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855178, -0.304344, -0.419578,
		0.078484, -0.724111, 0.685203,
		-0.512359, -0.618900, -0.595358,
		23.450792, 38.094997, 16.342827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.087957, 37.897667, 16.852240>,  <23.809443, 38.528225, 16.759579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.087957, 37.897667, 16.852240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.885595, 37.843311, 16.511513>,  <23.764179, 37.810699, 16.307076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.885595, 37.843311, 16.511513>,  <24.087957, 37.897667, 16.852240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.885595, 37.843311, 16.511513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825751, -0.361803, -0.432704,
		-0.249391, -0.922297, 0.295248,
		-0.505904, -0.135889, -0.851819,
		23.733824, 37.802544, 16.255966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.211113, 37.204266, 16.633673>,  <24.087957, 37.897667, 16.852240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.211113, 37.204266, 16.633673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.089777, 37.375385, 16.293091>,  <24.016975, 37.478058, 16.088741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.089777, 37.375385, 16.293091>,  <24.211113, 37.204266, 16.633673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.089777, 37.375385, 16.293091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787264, -0.390908, -0.476872,
		-0.536844, -0.814974, -0.218210,
		-0.303339, 0.427795, -0.851456,
		23.998775, 37.503723, 16.037655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.244852, 36.675312, 16.089241>,  <24.211113, 37.204266, 16.633673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.244852, 36.675312, 16.089241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.273197, 37.046722, 15.943467>,  <24.290205, 37.269569, 15.856003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.273197, 37.046722, 15.943467>,  <24.244852, 36.675312, 16.089241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.273197, 37.046722, 15.943467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750356, -0.290345, -0.593857,
		-0.657225, -0.231371, -0.717302,
		0.070864, 0.928530, -0.364433,
		24.294456, 37.325283, 15.834137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<26.578726, 26.006824, 21.436440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970736, 26.066204, 21.383503>,  <27.205942, 26.101831, 21.351742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970736, 26.066204, 21.383503>,  <26.578726, 26.006824, 21.436440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970736, 26.066204, 21.383503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160526, 0.983297, -0.085782,
		0.117396, 0.105312, 0.987485,
		0.980025, 0.148447, -0.132340,
		27.264744, 26.110739, 21.343801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.571997, 26.653612, 21.702171>,  <26.578726, 26.006824, 21.436440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.571997, 26.653612, 21.702171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935743, 26.650539, 21.535801>,  <27.153992, 26.648695, 21.435978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935743, 26.650539, 21.535801>,  <26.571997, 26.653612, 21.702171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935743, 26.650539, 21.535801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099197, 0.966984, -0.234738,
		0.403998, 0.254722, 0.878580,
		0.909366, -0.007681, -0.415927,
		27.208553, 26.648235, 21.411022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996119, 27.231697, 21.956100>,  <26.571997, 26.653612, 21.702171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996119, 27.231697, 21.956100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131874, 27.136097, 21.592190>,  <27.213327, 27.078737, 21.373842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131874, 27.136097, 21.592190>,  <26.996119, 27.231697, 21.956100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.131874, 27.136097, 21.592190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121338, 0.947980, -0.294298,
		0.932788, 0.210271, 0.292734,
		0.339388, -0.238998, -0.909778,
		27.233690, 27.064398, 21.319256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470470, 27.754656, 21.841970>,  <26.996119, 27.231697, 21.956100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470470, 27.754656, 21.841970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387388, 27.595547, 21.484505>,  <27.337538, 27.500080, 21.270025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387388, 27.595547, 21.484505>,  <27.470470, 27.754656, 21.841970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387388, 27.595547, 21.484505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065365, 0.917189, -0.393054,
		0.976005, -0.023225, -0.216506,
		-0.207706, -0.397774, -0.893663,
		27.325077, 27.476215, 21.216406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957769, 28.064800, 21.276613>,  <27.470470, 27.754656, 21.841970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957769, 28.064800, 21.276613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618071, 27.934875, 21.110107>,  <27.414251, 27.856920, 21.010204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618071, 27.934875, 21.110107>,  <27.957769, 28.064800, 21.276613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618071, 27.934875, 21.110107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108887, 0.879179, -0.463884,
		0.516645, -0.348627, -0.782008,
		-0.849247, -0.324814, -0.416263,
		27.363297, 27.837431, 20.985229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155165, 28.140961, 20.621805>,  <27.957769, 28.064800, 21.276613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155165, 28.140961, 20.621805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756428, 28.139370, 20.653534>,  <27.517185, 28.138414, 20.672571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756428, 28.139370, 20.653534>,  <28.155165, 28.140961, 20.621805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756428, 28.139370, 20.653534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056703, 0.734970, -0.675724,
		-0.055610, -0.678088, -0.732874,
		-0.996841, -0.003979, 0.079321,
		27.457375, 28.138176, 20.677330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947046, 28.140793, 19.976023>,  <28.155165, 28.140961, 20.621805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947046, 28.140793, 19.976023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638615, 28.273285, 20.193546>,  <27.453556, 28.352779, 20.324060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638615, 28.273285, 20.193546>,  <27.947046, 28.140793, 19.976023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638615, 28.273285, 20.193546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096531, 0.783368, -0.614016,
		-0.629382, -0.525948, -0.572063,
		-0.771077, 0.331229, 0.543808,
		27.407291, 28.372654, 20.356689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504230, 28.534891, 19.495342>,  <27.947046, 28.140793, 19.976023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504230, 28.534891, 19.495342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309780, 28.668186, 19.818485>,  <27.193110, 28.748163, 20.012371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309780, 28.668186, 19.818485>,  <27.504230, 28.534891, 19.495342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.309780, 28.668186, 19.818485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243844, 0.835997, -0.491578,
		-0.839179, -0.435960, -0.325143,
		-0.486127, 0.333237, 0.807858,
		27.163942, 28.768158, 20.060843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.918329, 28.731081, 19.224237>,  <27.504230, 28.534891, 19.495342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.918329, 28.731081, 19.224237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969294, 28.923134, 19.571396>,  <26.999872, 29.038364, 19.779690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969294, 28.923134, 19.571396>,  <26.918329, 28.731081, 19.224237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969294, 28.923134, 19.571396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378609, 0.832311, -0.404862,
		-0.916745, -0.277008, 0.287829,
		0.127413, 0.480130, 0.867895,
		27.007517, 29.067173, 19.831764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388033, 29.215073, 19.197359>,  <26.918329, 28.731081, 19.224237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388033, 29.215073, 19.197359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604631, 29.358833, 19.501362>,  <26.734591, 29.445089, 19.683764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604631, 29.358833, 19.501362>,  <26.388033, 29.215073, 19.197359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604631, 29.358833, 19.501362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273104, 0.930186, -0.245292,
		-0.795106, -0.074736, 0.601848,
		0.541498, 0.359401, 0.760007,
		26.767080, 29.466654, 19.729364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988157, 29.745623, 19.398424>,  <26.388033, 29.215073, 19.197359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988157, 29.745623, 19.398424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365053, 29.796066, 19.522541>,  <26.591190, 29.826332, 19.597012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365053, 29.796066, 19.522541>,  <25.988157, 29.745623, 19.398424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365053, 29.796066, 19.522541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056382, 0.972910, -0.224204,
		-0.330159, 0.193759, 0.923825,
		0.942240, 0.126110, 0.310290,
		26.647726, 29.833899, 19.615627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.990391, 30.345255, 19.873402>,  <25.988157, 29.745623, 19.398424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.990391, 30.345255, 19.873402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356678, 30.298424, 19.719646>,  <26.576450, 30.270325, 19.627394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.356678, 30.298424, 19.719646>,  <25.990391, 30.345255, 19.873402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.356678, 30.298424, 19.719646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080391, 0.883893, -0.460729,
		0.393700, 0.452799, 0.799984,
		0.915717, -0.117078, -0.384389,
		26.631393, 30.263300, 19.604330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338245, 31.023628, 19.931845>,  <25.990391, 30.345255, 19.873402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338245, 31.023628, 19.931845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466799, 30.814831, 19.615810>,  <26.543932, 30.689552, 19.426189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466799, 30.814831, 19.615810>,  <26.338245, 31.023628, 19.931845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.466799, 30.814831, 19.615810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081340, 0.816049, -0.572231,
		0.943449, 0.248172, 0.219807,
		0.321385, -0.521991, -0.790086,
		26.563215, 30.658234, 19.378784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874424, 31.343832, 19.426161>,  <26.338245, 31.023628, 19.931845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874424, 31.343832, 19.426161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641634, 31.132069, 19.179249>,  <26.501961, 31.005011, 19.031101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641634, 31.132069, 19.179249>,  <26.874424, 31.343832, 19.426161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641634, 31.132069, 19.179249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115036, 0.805031, -0.581973,
		0.805031, -0.267683, -0.529407,
		0.581973, 0.529407, 0.617281,
		26.467043, 30.973248, 18.994064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714615, 32.036793, 19.666967>,  <26.874424, 31.343832, 19.426161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714615, 32.036793, 19.666967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511078, 32.159389, 19.988747>,  <26.388956, 32.232948, 20.181814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511078, 32.159389, 19.988747>,  <26.714615, 32.036793, 19.666967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511078, 32.159389, 19.988747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365513, -0.769138, 0.524239,
		0.779409, 0.560793, 0.279345,
		-0.508844, 0.306492, 0.804450,
		26.358425, 32.251339, 20.230082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245590, 32.101040, 20.037495>,  <26.714615, 32.036793, 19.666967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245590, 32.101040, 20.037495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952879, 32.135010, 20.307987>,  <26.777252, 32.155392, 20.470282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952879, 32.135010, 20.307987>,  <27.245590, 32.101040, 20.037495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.952879, 32.135010, 20.307987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518672, -0.574274, 0.633395,
		0.442130, 0.814247, 0.376196,
		-0.731779, 0.084921, 0.676230,
		26.733345, 32.160484, 20.510857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544241, 32.445961, 20.630825>,  <27.245590, 32.101040, 20.037495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544241, 32.445961, 20.630825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242546, 32.201073, 20.725750>,  <27.061529, 32.054142, 20.782705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.242546, 32.201073, 20.725750>,  <27.544241, 32.445961, 20.630825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242546, 32.201073, 20.725750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592902, -0.479729, 0.646782,
		-0.282126, 0.628530, 0.724814,
		-0.754236, -0.612217, 0.237313,
		27.016275, 32.017406, 20.796944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469986, 32.503780, 21.401318>,  <27.544241, 32.445961, 20.630825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469986, 32.503780, 21.401318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291063, 32.165077, 21.286133>,  <27.183710, 31.961857, 21.217022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291063, 32.165077, 21.286133>,  <27.469986, 32.503780, 21.401318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291063, 32.165077, 21.286133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538209, -0.511989, 0.669476,
		-0.714316, 0.144477, 0.684748,
		-0.447307, -0.846755, -0.287963,
		27.156872, 31.911051, 21.199743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384155, 32.180500, 21.953300>,  <27.469986, 32.503780, 21.401318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384155, 32.180500, 21.953300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335928, 31.864269, 21.713150>,  <27.306992, 31.674532, 21.569059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335928, 31.864269, 21.713150>,  <27.384155, 32.180500, 21.953300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335928, 31.864269, 21.713150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410687, -0.590332, 0.694871,
		-0.903769, -0.162787, 0.395855,
		-0.120570, -0.790575, -0.600378,
		27.299757, 31.627096, 21.533037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044788, 31.721657, 22.302288>,  <27.384155, 32.180500, 21.953300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044788, 31.721657, 22.302288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215607, 31.485291, 22.028515>,  <27.318098, 31.343472, 21.864250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215607, 31.485291, 22.028515>,  <27.044788, 31.721657, 22.302288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215607, 31.485291, 22.028515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223285, -0.664572, 0.713083,
		-0.876229, -0.457342, -0.151859,
		0.427045, -0.590916, -0.684435,
		27.343719, 31.308016, 21.823185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951553, 31.115446, 22.575567>,  <27.044788, 31.721657, 22.302288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951553, 31.115446, 22.575567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218952, 31.004185, 22.299671>,  <27.379391, 30.937428, 22.134132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218952, 31.004185, 22.299671>,  <26.951553, 31.115446, 22.575567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218952, 31.004185, 22.299671> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175034, -0.842534, 0.509411,
		-0.722824, -0.461268, -0.514546,
		0.668497, -0.278152, -0.689742,
		27.419500, 30.920738, 22.092749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783226, 30.411991, 22.502769>,  <26.951553, 31.115446, 22.575567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783226, 30.411991, 22.502769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159311, 30.475185, 22.382076>,  <27.384962, 30.513102, 22.309660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159311, 30.475185, 22.382076>,  <26.783226, 30.411991, 22.502769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159311, 30.475185, 22.382076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292271, -0.829110, 0.476608,
		-0.174874, -0.536300, -0.825713,
		0.940211, 0.157986, -0.301735,
		27.441374, 30.522581, 22.291555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046539, 29.758806, 22.179813>,  <26.783226, 30.411991, 22.502769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046539, 29.758806, 22.179813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377588, 29.951614, 22.294842>,  <27.576218, 30.067299, 22.363859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377588, 29.951614, 22.294842>,  <27.046539, 29.758806, 22.179813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.377588, 29.951614, 22.294842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245755, -0.771821, 0.586427,
		0.504625, -0.414668, -0.757235,
		0.827623, 0.482020, 0.287573,
		27.625875, 30.096220, 22.381113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651228, 29.285660, 22.116159>,  <27.046539, 29.758806, 22.179813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651228, 29.285660, 22.116159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740168, 29.576862, 22.375565>,  <27.793531, 29.751583, 22.531208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740168, 29.576862, 22.375565>,  <27.651228, 29.285660, 22.116159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.740168, 29.576862, 22.375565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324345, -0.682509, 0.654967,
		0.919435, 0.064709, -0.387882,
		0.222351, 0.728007, 0.648511,
		27.806873, 29.795265, 22.570118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426016, 29.027061, 22.289537>,  <27.651228, 29.285660, 22.116159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426016, 29.027061, 22.289537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288784, 29.289875, 22.558044>,  <28.206444, 29.447563, 22.719149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288784, 29.289875, 22.558044>,  <28.426016, 29.027061, 22.289537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288784, 29.289875, 22.558044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270774, -0.615125, 0.740475,
		0.899431, 0.435805, 0.033130,
		-0.343082, 0.657035, 0.671267,
		28.185860, 29.486986, 22.759424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962881, 29.031876, 22.822226>,  <28.426016, 29.027061, 22.289537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962881, 29.031876, 22.822226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667397, 29.204102, 23.029655>,  <28.490107, 29.307438, 23.154114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667397, 29.204102, 23.029655>,  <28.962881, 29.031876, 22.822226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667397, 29.204102, 23.029655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139985, -0.654594, 0.742907,
		0.659326, 0.621386, 0.423282,
		-0.738710, 0.430565, 0.518576,
		28.445784, 29.333271, 23.185228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175278, 29.200792, 23.516365>,  <28.962881, 29.031876, 22.822226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175278, 29.200792, 23.516365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776028, 29.186001, 23.535885>,  <28.536478, 29.177126, 23.547598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.776028, 29.186001, 23.535885>,  <29.175278, 29.200792, 23.516365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776028, 29.186001, 23.535885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060738, -0.698767, 0.712767,
		0.007742, 0.714393, 0.699701,
		-0.998124, -0.036980, 0.048801,
		28.476591, 29.174908, 23.550526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976528, 29.181040, 24.235968>,  <29.175278, 29.200792, 23.516365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976528, 29.181040, 24.235968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660141, 29.028656, 24.044453>,  <28.470308, 28.937225, 23.929544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660141, 29.028656, 24.044453>,  <28.976528, 29.181040, 24.235968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660141, 29.028656, 24.044453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038410, -0.750055, 0.660259,
		-0.610649, 0.540635, 0.578638,
		-0.790970, -0.380960, -0.478786,
		28.422850, 28.914368, 23.900816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009777, 29.744923, 24.808155>,  <28.976528, 29.181040, 24.235968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009777, 29.744923, 24.808155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382992, 29.754734, 24.951733>,  <29.606920, 29.760620, 25.037880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382992, 29.754734, 24.951733>,  <29.009777, 29.744923, 24.808155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382992, 29.754734, 24.951733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247546, 0.680210, -0.689953,
		-0.261081, 0.732607, 0.628589,
		0.933037, 0.024529, 0.358944,
		29.662903, 29.762093, 25.059416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206612, 30.412933, 24.608757>,  <29.009777, 29.744923, 24.808155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206612, 30.412933, 24.608757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560257, 30.247688, 24.696098>,  <29.772444, 30.148542, 24.748503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560257, 30.247688, 24.696098>,  <29.206612, 30.412933, 24.608757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560257, 30.247688, 24.696098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433595, 0.551134, -0.712914,
		0.174169, 0.724976, 0.666389,
		0.884116, -0.413111, 0.218355,
		29.825491, 30.123755, 24.761604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559807, 30.987494, 24.691505>,  <29.206612, 30.412933, 24.608757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559807, 30.987494, 24.691505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823578, 30.692200, 24.634705>,  <29.981840, 30.515024, 24.600624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823578, 30.692200, 24.634705>,  <29.559807, 30.987494, 24.691505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823578, 30.692200, 24.634705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509908, 0.578022, -0.637091,
		0.552404, 0.347707, 0.757595,
		0.659427, -0.738235, -0.142003,
		30.021406, 30.470730, 24.592104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.242592, 31.296421, 24.709827>,  <29.559807, 30.987494, 24.691505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.242592, 31.296421, 24.709827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341188, 30.952877, 24.530228>,  <30.400347, 30.746750, 24.422468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.341188, 30.952877, 24.530228>,  <30.242592, 31.296421, 24.709827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341188, 30.952877, 24.530228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574137, 0.502652, -0.646303,
		0.780775, -0.098480, 0.617003,
		0.246489, -0.858861, -0.448999,
		30.415134, 30.695219, 24.395529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987679, 31.325462, 24.614422>,  <30.242592, 31.296421, 24.709827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987679, 31.325462, 24.614422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848402, 31.055813, 24.353863>,  <30.764835, 30.894024, 24.197527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848402, 31.055813, 24.353863>,  <30.987679, 31.325462, 24.614422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848402, 31.055813, 24.353863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624786, 0.351158, -0.697374,
		0.698860, -0.649805, 0.298912,
		-0.348192, -0.674122, -0.651400,
		30.743944, 30.853577, 24.158443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549505, 31.259195, 24.280172>,  <30.987679, 31.325462, 24.614422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549505, 31.259195, 24.280172> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290836, 31.066452, 24.043655>,  <31.135635, 30.950806, 23.901745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290836, 31.066452, 24.043655>,  <31.549505, 31.259195, 24.280172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290836, 31.066452, 24.043655> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471699, 0.356567, -0.806449,
		0.599432, -0.800419, -0.003288,
		-0.646670, -0.481861, -0.591294,
		31.096836, 30.921894, 23.866268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858946, 30.700035, 23.824436>,  <31.549505, 31.259195, 24.280172>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858946, 30.700035, 23.824436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527355, 30.825573, 23.639267>,  <31.328400, 30.900896, 23.528166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.527355, 30.825573, 23.639267>,  <31.858946, 30.700035, 23.824436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527355, 30.825573, 23.639267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540787, 0.238705, -0.806579,
		-0.142638, -0.918979, -0.367604,
		-0.828977, 0.313845, -0.462923,
		31.278662, 30.919725, 23.500389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955446, 30.420534, 23.129559>,  <31.858946, 30.700035, 23.824436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955446, 30.420534, 23.129559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669739, 30.699287, 23.103729>,  <31.498314, 30.866539, 23.088232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669739, 30.699287, 23.103729>,  <31.955446, 30.420534, 23.129559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669739, 30.699287, 23.103729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569323, 0.524895, -0.632738,
		-0.407051, -0.488709, -0.771669,
		-0.714270, 0.696885, -0.064574,
		31.455458, 30.908352, 23.084356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795925, 30.473518, 22.376526>,  <31.955446, 30.420534, 23.129559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795925, 30.473518, 22.376526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656595, 30.805744, 22.550346>,  <31.572998, 31.005079, 22.654638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656595, 30.805744, 22.550346>,  <31.795925, 30.473518, 22.376526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656595, 30.805744, 22.550346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400900, 0.551042, -0.731869,
		-0.847319, -0.080717, -0.524915,
		-0.348325, 0.830564, 0.434549,
		31.552097, 31.054913, 22.680712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389690, 30.848791, 21.817230>,  <31.795925, 30.473518, 22.376526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389690, 30.848791, 21.817230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500175, 31.114506, 22.095058>,  <31.566467, 31.273935, 22.261755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500175, 31.114506, 22.095058>,  <31.389690, 30.848791, 21.817230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500175, 31.114506, 22.095058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236289, 0.653566, -0.719040,
		-0.931597, 0.362728, 0.023560,
		0.276214, 0.664289, 0.694569,
		31.583040, 31.313793, 22.303429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980011, 31.414663, 21.703199>,  <31.389690, 30.848791, 21.817230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980011, 31.414663, 21.703199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306143, 31.523739, 21.907505>,  <31.501822, 31.589184, 22.030088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306143, 31.523739, 21.907505>,  <30.980011, 31.414663, 21.703199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306143, 31.523739, 21.907505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116640, 0.786708, -0.606206,
		-0.567127, 0.553833, 0.609620,
		0.815330, 0.272690, 0.510762,
		31.550741, 31.605545, 22.060734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836224, 32.089668, 21.821121>,  <30.980011, 31.414663, 21.703199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836224, 32.089668, 21.821121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228498, 32.011757, 21.828239>,  <31.463863, 31.965010, 21.832510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228498, 32.011757, 21.828239>,  <30.836224, 32.089668, 21.821121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228498, 32.011757, 21.828239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145769, 0.667178, -0.730497,
		0.130416, 0.718981, 0.682684,
		0.980685, -0.194782, 0.017794,
		31.522703, 31.953321, 21.833578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.789581, 28.061996, 28.279776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.133886, 27.913925, 28.140030>,  <29.340469, 27.825083, 28.056183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.133886, 27.913925, 28.140030>,  <28.789581, 28.061996, 28.279776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133886, 27.913925, 28.140030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297571, 0.922823, -0.244640,
		0.412963, 0.106616, 0.904485,
		0.860763, -0.370177, -0.349366,
		29.392115, 27.802872, 28.035219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160282, 28.665359, 28.322100>,  <28.789581, 28.061996, 28.279776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160282, 28.665359, 28.322100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.345188, 28.398899, 28.087986>,  <29.456131, 28.239023, 27.947517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.345188, 28.398899, 28.087986>,  <29.160282, 28.665359, 28.322100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345188, 28.398899, 28.087986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192156, 0.719607, -0.667264,
		0.865673, 0.195985, 0.460652,
		0.462263, -0.666149, -0.585285,
		29.483868, 28.199055, 27.912401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818230, 28.931213, 28.213093>,  <29.160282, 28.665359, 28.322100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818230, 28.931213, 28.213093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.739138, 28.671425, 27.919403>,  <29.691683, 28.515551, 27.743189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.739138, 28.671425, 27.919403>,  <29.818230, 28.931213, 28.213093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739138, 28.671425, 27.919403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344453, 0.655214, -0.672344,
		0.917744, -0.385849, 0.094157,
		-0.197730, -0.649472, -0.734226,
		29.679819, 28.476583, 27.699135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354900, 29.036312, 27.723810>,  <29.818230, 28.931213, 28.213093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354900, 29.036312, 27.723810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.082333, 28.820667, 27.525810>,  <29.918793, 28.691280, 27.407011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.082333, 28.820667, 27.525810>,  <30.354900, 29.036312, 27.723810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082333, 28.820667, 27.525810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058285, 0.634207, -0.770964,
		0.729569, -0.554200, -0.400738,
		-0.681419, -0.539114, -0.494999,
		29.877907, 28.658934, 27.377310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595243, 29.058475, 27.086733>,  <30.354900, 29.036312, 27.723810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595243, 29.058475, 27.086733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.218431, 28.945858, 27.013725>,  <29.992344, 28.878286, 26.969921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.218431, 28.945858, 27.013725>,  <30.595243, 29.058475, 27.086733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218431, 28.945858, 27.013725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016086, 0.581247, -0.813568,
		0.335145, -0.763469, -0.552080,
		-0.942029, -0.281544, -0.182521,
		29.935823, 28.861395, 26.958969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573996, 28.839123, 26.345469>,  <30.595243, 29.058475, 27.086733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.573996, 28.839123, 26.345469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.198009, 28.929714, 26.447586>,  <29.972418, 28.984070, 26.508858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.198009, 28.929714, 26.447586>,  <30.573996, 28.839123, 26.345469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198009, 28.929714, 26.447586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104276, 0.521689, -0.846739,
		-0.324955, -0.822525, -0.466752,
		-0.939963, 0.226481, 0.255295,
		29.916021, 28.997658, 26.524174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185293, 28.622263, 25.775370>,  <30.573996, 28.839123, 26.345469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185293, 28.622263, 25.775370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.922611, 28.864544, 25.955086>,  <29.765001, 29.009912, 26.062916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.922611, 28.864544, 25.955086>,  <30.185293, 28.622263, 25.775370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922611, 28.864544, 25.955086> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014696, 0.585369, -0.810634,
		-0.754003, -0.538951, -0.375514,
		-0.656706, 0.605702, 0.449291,
		29.725599, 29.046255, 26.089872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642401, 28.594337, 25.341900>,  <30.185293, 28.622263, 25.775370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642401, 28.594337, 25.341900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.666203, 28.937187, 25.546566>,  <29.680483, 29.142897, 25.669365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.666203, 28.937187, 25.546566>,  <29.642401, 28.594337, 25.341900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666203, 28.937187, 25.546566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086684, 0.506199, -0.858050,
		-0.994457, 0.095409, -0.044178,
		0.059502, 0.857123, 0.511664,
		29.684053, 29.194324, 25.700066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126511, 29.051928, 24.979345>,  <29.642401, 28.594337, 25.341900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126511, 29.051928, 24.979345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.400682, 29.259964, 25.183186>,  <29.565186, 29.384785, 25.305490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.400682, 29.259964, 25.183186>,  <29.126511, 29.051928, 24.979345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400682, 29.259964, 25.183186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273605, 0.464616, -0.842183,
		-0.674780, 0.716686, 0.176162,
		0.685429, 0.520089, 0.509602,
		29.606312, 29.415991, 25.336065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372114, 29.174036, 24.825195>,  <29.126511, 29.051928, 24.979345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372114, 29.174036, 24.825195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.278620, 28.928226, 24.523804>,  <28.222523, 28.780741, 24.342970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.278620, 28.928226, 24.523804>,  <28.372114, 29.174036, 24.825195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.278620, 28.928226, 24.523804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098691, -0.785935, 0.610381,
		-0.967279, 0.068305, 0.244348,
		-0.233734, -0.614524, -0.753478,
		28.208500, 28.743870, 24.297760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945370, 28.692486, 25.148619>,  <28.372114, 29.174036, 24.825195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945370, 28.692486, 25.148619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.026833, 28.497143, 24.809200>,  <28.075710, 28.379938, 24.605549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.026833, 28.497143, 24.809200>,  <27.945370, 28.692486, 25.148619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.026833, 28.497143, 24.809200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100667, -0.872563, 0.478017,
		-0.973853, -0.011931, -0.226866,
		0.203658, -0.488356, -0.848547,
		28.087931, 28.350636, 24.554636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319141, 28.184235, 24.975286>,  <27.945370, 28.692486, 25.148619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319141, 28.184235, 24.975286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.643106, 28.039726, 24.790451>,  <27.837484, 27.953020, 24.679550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.643106, 28.039726, 24.790451>,  <27.319141, 28.184235, 24.975286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643106, 28.039726, 24.790451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135039, -0.881489, 0.452485,
		-0.570796, -0.304072, -0.762713,
		0.809912, -0.361273, -0.462089,
		27.886080, 27.931345, 24.651825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.124823, 27.530787, 24.808895>,  <27.319141, 28.184235, 24.975286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.124823, 27.530787, 24.808895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.521610, 27.489922, 24.779057>,  <27.759682, 27.465403, 24.761152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.521610, 27.489922, 24.779057>,  <27.124823, 27.530787, 24.808895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521610, 27.489922, 24.779057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075817, -0.952212, 0.295878,
		-0.101260, -0.287846, -0.952308,
		0.991967, -0.102162, -0.074598,
		27.819201, 27.459272, 24.756678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099289, 26.853024, 24.748104>,  <27.124823, 27.530787, 24.808895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099289, 26.853024, 24.748104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.492445, 26.918594, 24.781704>,  <27.728338, 26.957937, 24.801865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.492445, 26.918594, 24.781704>,  <27.099289, 26.853024, 24.748104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492445, 26.918594, 24.781704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142328, -0.965389, 0.218555,
		0.116918, -0.202861, -0.972202,
		0.982890, 0.163925, 0.083999,
		27.787312, 26.967772, 24.806904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.471636, 26.411716, 24.282536>,  <27.099289, 26.853024, 24.748104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.471636, 26.411716, 24.282536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.691290, 26.489716, 24.607601>,  <27.823082, 26.536514, 24.802641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.691290, 26.489716, 24.607601>,  <27.471636, 26.411716, 24.282536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691290, 26.489716, 24.607601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098506, -0.950519, 0.294636,
		0.829907, -0.241848, -0.502757,
		0.549137, 0.194996, 0.812666,
		27.856031, 26.548214, 24.851400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804907, 25.781359, 24.316292>,  <27.471636, 26.411716, 24.282536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804907, 25.781359, 24.316292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.863510, 25.958530, 24.670094>,  <27.898672, 26.064833, 24.882374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.863510, 25.958530, 24.670094>,  <27.804907, 25.781359, 24.316292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863510, 25.958530, 24.670094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182886, -0.890868, 0.415822,
		0.972156, 0.100842, -0.211527,
		0.146510, 0.442929, 0.884505,
		27.907463, 26.091410, 24.935446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464317, 25.468866, 24.606415>,  <27.804907, 25.781359, 24.316292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464317, 25.468866, 24.606415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.237696, 25.623402, 24.897552>,  <28.101723, 25.716124, 25.072235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.237696, 25.623402, 24.897552>,  <28.464317, 25.468866, 24.606415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237696, 25.623402, 24.897552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104408, -0.842506, 0.528472,
		0.817385, 0.375400, 0.436986,
		-0.566552, 0.386340, 0.727846,
		28.067730, 25.739304, 25.115906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844810, 25.224579, 25.169178>,  <28.464317, 25.468866, 24.606415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844810, 25.224579, 25.169178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.485573, 25.339565, 25.302319>,  <28.270031, 25.408558, 25.382204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.485573, 25.339565, 25.302319>,  <28.844810, 25.224579, 25.169178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485573, 25.339565, 25.302319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144158, -0.907419, 0.394727,
		0.415508, 0.306518, 0.856388,
		-0.898093, 0.287467, 0.332853,
		28.216145, 25.425806, 25.402174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806475, 25.002689, 25.810667>,  <28.844810, 25.224579, 25.169178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806475, 25.002689, 25.810667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.417845, 25.039337, 25.723351>,  <28.184668, 25.061325, 25.670961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.417845, 25.039337, 25.723351>,  <28.806475, 25.002689, 25.810667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417845, 25.039337, 25.723351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189388, -0.854061, 0.484471,
		-0.142046, 0.512041, 0.847135,
		-0.971574, 0.091620, -0.218290,
		28.126373, 25.066824, 25.657864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382757, 24.806232, 26.316256>,  <28.806475, 25.002689, 25.810667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382757, 24.806232, 26.316256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.085999, 24.792286, 26.048412>,  <27.907944, 24.783918, 25.887707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.085999, 24.792286, 26.048412>,  <28.382757, 24.806232, 26.316256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085999, 24.792286, 26.048412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448751, -0.716200, 0.534491,
		-0.498209, 0.697024, 0.515699,
		-0.741896, -0.034868, -0.669607,
		27.863430, 24.781826, 25.847530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823088, 24.839828, 26.693207>,  <28.382757, 24.806232, 26.316256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823088, 24.839828, 26.693207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.737385, 24.662148, 26.345234>,  <27.685963, 24.555540, 26.136450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.737385, 24.662148, 26.345234>,  <27.823088, 24.839828, 26.693207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737385, 24.662148, 26.345234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422435, -0.760877, 0.492559,
		-0.880706, 0.473023, -0.024623,
		-0.214257, -0.444201, -0.869931,
		27.673107, 24.528887, 26.084255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052839, 24.614815, 26.710934>,  <27.823088, 24.839828, 26.693207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052839, 24.614815, 26.710934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.235439, 24.378113, 26.445171>,  <27.344999, 24.236092, 26.285715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.235439, 24.378113, 26.445171>,  <27.052839, 24.614815, 26.710934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235439, 24.378113, 26.445171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449299, -0.797866, 0.401921,
		-0.767945, 0.115039, -0.630101,
		0.456499, -0.591757, -0.664404,
		27.372389, 24.200586, 26.245850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790598, 24.023548, 26.873970>,  <27.052839, 24.614815, 26.710934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.790598, 24.023548, 26.873970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.036963, 23.876289, 26.595367>,  <27.184782, 23.787933, 26.428205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.036963, 23.876289, 26.595367>,  <26.790598, 24.023548, 26.873970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036963, 23.876289, 26.595367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267644, -0.929295, 0.254516,
		-0.740959, 0.029657, -0.670895,
		0.615911, -0.368146, -0.696507,
		27.221735, 23.765846, 26.386415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.723137, 23.991440, 26.026871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325825, 24.012085, 25.985420>,  <33.087437, 24.024471, 25.960550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325825, 24.012085, 25.985420>,  <33.723137, 23.991440, 26.026871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325825, 24.012085, 25.985420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112903, 0.629730, -0.768566,
		0.025590, -0.775098, -0.631323,
		-0.993277, 0.051611, -0.103626,
		33.027843, 24.027569, 25.954332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474651, 23.845589, 25.299520>,  <33.723137, 23.991440, 26.026871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474651, 23.845589, 25.299520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.157681, 24.032654, 25.456158>,  <32.967499, 24.144892, 25.550140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.157681, 24.032654, 25.456158>,  <33.474651, 23.845589, 25.299520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157681, 24.032654, 25.456158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001250, 0.643241, -0.765662,
		-0.609960, -0.606245, -0.510309,
		-0.792432, 0.467661, 0.391593,
		32.919952, 24.172953, 25.573635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996277, 23.876017, 24.702282>,  <33.474651, 23.845589, 25.299520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996277, 23.876017, 24.702282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.893524, 24.152084, 24.972889>,  <32.831875, 24.317726, 25.135254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.893524, 24.152084, 24.972889>,  <32.996277, 23.876017, 24.702282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893524, 24.152084, 24.972889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068072, 0.685348, -0.725027,
		-0.964043, -0.232296, -0.129070,
		-0.256879, 0.690171, 0.676518,
		32.816460, 24.359137, 25.175844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321754, 24.131142, 24.531834>,  <32.996277, 23.876017, 24.702282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321754, 24.131142, 24.531834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.511505, 24.408310, 24.749027>,  <32.625355, 24.574612, 24.879343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.511505, 24.408310, 24.749027>,  <32.321754, 24.131142, 24.531834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511505, 24.408310, 24.749027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083707, 0.649508, -0.755734,
		-0.876335, 0.313048, 0.366111,
		0.474373, 0.692922, 0.542982,
		32.653816, 24.616186, 24.911922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985037, 24.684299, 24.280767>,  <32.321754, 24.131142, 24.531834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985037, 24.684299, 24.280767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.303810, 24.826412, 24.476185>,  <32.495075, 24.911680, 24.593435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.303810, 24.826412, 24.476185>,  <31.985037, 24.684299, 24.280767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303810, 24.826412, 24.476185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094005, 0.725961, -0.681281,
		-0.596711, 0.588860, 0.545142,
		0.796931, 0.355282, 0.488544,
		32.542889, 24.932997, 24.622747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777218, 25.340044, 24.227598>,  <31.985037, 24.684299, 24.280767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777218, 25.340044, 24.227598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.170830, 25.335831, 24.298679>,  <32.406998, 25.333303, 24.341328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.170830, 25.335831, 24.298679>,  <31.777218, 25.340044, 24.227598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170830, 25.335831, 24.298679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122831, 0.762719, -0.634958,
		-0.128850, 0.646644, 0.751831,
		0.984028, -0.010534, 0.177704,
		32.466038, 25.332670, 24.351990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929672, 26.020187, 24.380968>,  <31.777218, 25.340044, 24.227598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929672, 26.020187, 24.380968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.254528, 25.827160, 24.249786>,  <32.449444, 25.711344, 24.171078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.254528, 25.827160, 24.249786>,  <31.929672, 26.020187, 24.380968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254528, 25.827160, 24.249786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158311, 0.723255, -0.672190,
		0.561573, 0.493995, 0.663781,
		0.812141, -0.482568, -0.327955,
		32.498169, 25.682390, 24.151400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400860, 26.596216, 24.307886>,  <31.929672, 26.020187, 24.380968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400860, 26.596216, 24.307886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550812, 26.291626, 24.096367>,  <32.640781, 26.108871, 23.969456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550812, 26.291626, 24.096367>,  <32.400860, 26.596216, 24.307886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550812, 26.291626, 24.096367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039388, 0.582959, -0.811546,
		0.926237, 0.283402, 0.248531,
		0.374877, -0.761474, -0.528796,
		32.663277, 26.063185, 23.937729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073437, 26.854527, 24.115616>,  <32.400860, 26.596216, 24.307886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073437, 26.854527, 24.115616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977024, 26.552998, 23.871105>,  <32.919178, 26.372080, 23.724398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977024, 26.552998, 23.871105>,  <33.073437, 26.854527, 24.115616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977024, 26.552998, 23.871105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206695, 0.575526, -0.791232,
		0.948253, -0.317057, 0.017093,
		-0.241028, -0.753821, -0.611277,
		32.904716, 26.326851, 23.687721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641029, 26.835869, 23.620224>,  <33.073437, 26.854527, 24.115616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641029, 26.835869, 23.620224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330936, 26.655102, 23.443684>,  <33.144882, 26.546642, 23.337759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.330936, 26.655102, 23.443684>,  <33.641029, 26.835869, 23.620224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330936, 26.655102, 23.443684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123994, 0.576235, -0.807824,
		0.619391, -0.680974, -0.390679,
		-0.775229, -0.451917, -0.441351,
		33.098366, 26.519527, 23.311277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877323, 26.559839, 22.962275>,  <33.641029, 26.835869, 23.620224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877323, 26.559839, 22.962275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.479092, 26.595749, 22.951279>,  <33.240150, 26.617294, 22.944681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.479092, 26.595749, 22.951279>,  <33.877323, 26.559839, 22.962275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479092, 26.595749, 22.951279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072201, 0.544883, -0.835398,
		-0.060018, -0.833693, -0.548958,
		-0.995583, 0.089775, -0.027491,
		33.180416, 26.622681, 22.943031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734089, 26.342016, 22.288792>,  <33.877323, 26.559839, 22.962275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734089, 26.342016, 22.288792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.408535, 26.551788, 22.388844>,  <33.213203, 26.677650, 22.448875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.408535, 26.551788, 22.388844>,  <33.734089, 26.342016, 22.288792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408535, 26.551788, 22.388844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005704, 0.437688, -0.899109,
		-0.580997, -0.730345, -0.359220,
		-0.813886, 0.524428, 0.250129,
		33.164368, 26.709116, 22.463882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354931, 26.421541, 21.635561>,  <33.734089, 26.342016, 22.288792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354931, 26.421541, 21.635561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177784, 26.685760, 21.878063>,  <33.071495, 26.844292, 22.023565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.177784, 26.685760, 21.878063>,  <33.354931, 26.421541, 21.635561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177784, 26.685760, 21.878063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009302, 0.672761, -0.739801,
		-0.896539, -0.333273, -0.291800,
		-0.442867, 0.660546, 0.606257,
		33.044922, 26.883924, 22.059940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688335, 26.709518, 21.281849>,  <33.354931, 26.421541, 21.635561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688335, 26.709518, 21.281849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.844120, 26.967758, 21.544609>,  <32.937592, 27.122702, 21.702267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.844120, 26.967758, 21.544609>,  <32.688335, 26.709518, 21.281849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844120, 26.967758, 21.544609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023230, 0.706104, -0.707727,
		-0.920751, 0.290891, 0.260001,
		0.389459, 0.645601, 0.656903,
		32.960957, 27.161438, 21.741680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874304, 26.871874, 21.391546>,  <32.688335, 26.709518, 21.281849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874304, 26.871874, 21.391546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.627325, 26.603188, 21.227810>,  <31.479137, 26.441977, 21.129568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.627325, 26.603188, 21.227810>,  <31.874304, 26.871874, 21.391546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627325, 26.603188, 21.227810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390883, -0.713593, 0.581374,
		-0.682620, 0.198963, 0.703167,
		-0.617447, -0.671714, -0.409341,
		31.442091, 26.401674, 21.105007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776943, 26.393448, 22.046341>,  <31.874304, 26.871874, 21.391546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776943, 26.393448, 22.046341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.653028, 26.199455, 21.719215>,  <31.578680, 26.083059, 21.522940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.653028, 26.199455, 21.719215>,  <31.776943, 26.393448, 22.046341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653028, 26.199455, 21.719215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307188, -0.865053, 0.396634,
		-0.899815, -0.128351, 0.416963,
		-0.309787, -0.484984, -0.817816,
		31.560093, 26.053961, 21.473871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342680, 25.845404, 22.247938>,  <31.776943, 26.393448, 22.046341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342680, 25.845404, 22.247938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.470053, 25.707012, 21.894917>,  <31.546476, 25.623978, 21.683104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.470053, 25.707012, 21.894917>,  <31.342680, 25.845404, 22.247938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470053, 25.707012, 21.894917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118072, -0.909290, 0.399062,
		-0.940564, -0.231278, -0.248694,
		0.318429, -0.345980, -0.882554,
		31.565582, 25.603218, 21.630150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049078, 25.187128, 22.202280>,  <31.342680, 25.845404, 22.247938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049078, 25.187128, 22.202280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.343279, 25.193214, 21.931339>,  <31.519800, 25.196867, 21.768774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.343279, 25.193214, 21.931339>,  <31.049078, 25.187128, 22.202280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343279, 25.193214, 21.931339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132242, -0.983743, 0.121497,
		-0.664491, -0.178936, -0.725557,
		0.735502, 0.015215, -0.677352,
		31.563929, 25.197779, 21.728134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900852, 24.741419, 21.722130>,  <31.049078, 25.187128, 22.202280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900852, 24.741419, 21.722130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.300182, 24.756584, 21.704632>,  <31.539780, 24.765682, 21.694132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.300182, 24.756584, 21.704632>,  <30.900852, 24.741419, 21.722130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300182, 24.756584, 21.704632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042933, -0.991819, 0.120219,
		-0.038831, -0.121896, -0.991783,
		0.998323, 0.037912, -0.043747,
		31.599680, 24.767958, 21.691507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.089157, 24.149361, 21.264692>,  <30.900852, 24.741419, 21.722130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.089157, 24.149361, 21.264692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.401104, 24.269188, 21.484535>,  <31.588272, 24.341084, 21.616440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.401104, 24.269188, 21.484535>,  <31.089157, 24.149361, 21.264692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401104, 24.269188, 21.484535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216431, -0.952936, 0.212298,
		0.587336, -0.046612, -0.807999,
		0.779867, 0.299566, 0.549606,
		31.635065, 24.359058, 21.649418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523291, 23.617912, 21.157063>,  <31.089157, 24.149361, 21.264692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523291, 23.617912, 21.157063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.688314, 23.781601, 21.482597>,  <31.787329, 23.879814, 21.677919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.688314, 23.781601, 21.482597>,  <31.523291, 23.617912, 21.157063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688314, 23.781601, 21.482597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091025, -0.907462, 0.410155,
		0.906372, -0.095134, -0.411630,
		0.412558, 0.409222, 0.813839,
		31.812082, 23.904367, 21.726749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949568, 23.124180, 21.413233>,  <31.523291, 23.617912, 21.157063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949568, 23.124180, 21.413233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.906054, 23.371975, 21.724205>,  <31.879946, 23.520653, 21.910789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.906054, 23.371975, 21.724205>,  <31.949568, 23.124180, 21.413233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906054, 23.371975, 21.724205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036638, -0.784041, 0.619627,
		0.993390, 0.038923, 0.107990,
		-0.108786, 0.619487, 0.777432,
		31.873417, 23.557821, 21.957436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321484, 22.819851, 21.963491>,  <31.949568, 23.124180, 21.413233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321484, 22.819851, 21.963491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080860, 23.080170, 22.148788>,  <31.936487, 23.236361, 22.259966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.080860, 23.080170, 22.148788>,  <32.321484, 22.819851, 21.963491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080860, 23.080170, 22.148788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065830, -0.618313, 0.783170,
		0.796114, 0.440626, 0.414792,
		-0.601556, 0.650798, 0.463241,
		31.900393, 23.275410, 22.287762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638454, 22.980339, 22.729168>,  <32.321484, 22.819851, 21.963491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638454, 22.980339, 22.729168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.241215, 23.019138, 22.702820>,  <32.002869, 23.042418, 22.687010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.241215, 23.019138, 22.702820>,  <32.638454, 22.980339, 22.729168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241215, 23.019138, 22.702820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103832, -0.466560, 0.878374,
		0.054469, 0.879155, 0.473413,
		-0.993102, 0.097000, -0.065871,
		31.943285, 23.048239, 22.683058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332481, 23.101540, 23.382620>,  <32.638454, 22.980339, 22.729168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332481, 23.101540, 23.382620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.035458, 22.945786, 23.164635>,  <31.857244, 22.852333, 23.033844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.035458, 22.945786, 23.164635>,  <32.332481, 23.101540, 23.382620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035458, 22.945786, 23.164635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225462, -0.620842, 0.750814,
		-0.630693, 0.680392, 0.373220,
		-0.742558, -0.389386, -0.544964,
		31.812691, 22.828970, 23.001146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735283, 23.080992, 23.797682>,  <32.332481, 23.101540, 23.382620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735283, 23.080992, 23.797682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.685047, 22.810604, 23.507221>,  <31.654905, 22.648373, 23.332945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.685047, 22.810604, 23.507221>,  <31.735283, 23.080992, 23.797682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.685047, 22.810604, 23.507221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180628, -0.704133, 0.686710,
		-0.975500, 0.217406, -0.033667,
		-0.125589, -0.675967, -0.726152,
		31.647371, 22.607815, 23.289375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098656, 22.722780, 24.018166>,  <31.735283, 23.080992, 23.797682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098656, 22.722780, 24.018166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277748, 22.461971, 23.773411>,  <31.385204, 22.305487, 23.626558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277748, 22.461971, 23.773411>,  <31.098656, 22.722780, 24.018166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277748, 22.461971, 23.773411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087212, -0.712887, 0.695834,
		-0.889904, -0.258184, -0.376048,
		0.447733, -0.652022, -0.611885,
		31.412067, 22.266365, 23.589846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703678, 22.140385, 24.085049>,  <31.098656, 22.722780, 24.018166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703678, 22.140385, 24.085049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.025198, 21.995174, 23.896530>,  <31.218109, 21.908049, 23.783419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.025198, 21.995174, 23.896530>,  <30.703678, 22.140385, 24.085049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025198, 21.995174, 23.896530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025786, -0.770220, 0.637257,
		-0.594343, -0.524379, -0.609740,
		0.803798, -0.363027, -0.471297,
		31.266336, 21.886267, 23.755140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218119, 21.811192, 23.540033>,  <30.703678, 22.140385, 24.085049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218119, 21.811192, 23.540033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.853476, 21.733166, 23.684765>,  <29.634689, 21.686350, 23.771605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.853476, 21.733166, 23.684765>,  <30.218119, 21.811192, 23.540033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853476, 21.733166, 23.684765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366620, 0.783921, -0.501057,
		-0.185907, -0.589421, -0.786143,
		-0.911608, -0.195066, 0.361830,
		29.579994, 21.674646, 23.793314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794518, 21.767365, 22.899145>,  <30.218119, 21.811192, 23.540033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794518, 21.767365, 22.899145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.544859, 21.837189, 23.203770>,  <29.395063, 21.879084, 23.386543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.544859, 21.837189, 23.203770>,  <29.794518, 21.767365, 22.899145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544859, 21.837189, 23.203770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540936, 0.606780, -0.582414,
		-0.563766, -0.775465, -0.284292,
		-0.624144, 0.174561, 0.761559,
		29.357616, 21.889557, 23.432238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090218, 21.707209, 22.644663>,  <29.794518, 21.767365, 22.899145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090218, 21.707209, 22.644663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.068819, 21.931156, 22.975403>,  <29.055981, 22.065525, 23.173847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.068819, 21.931156, 22.975403>,  <29.090218, 21.707209, 22.644663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068819, 21.931156, 22.975403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629338, 0.623986, -0.463223,
		-0.775289, -0.545149, 0.318968,
		-0.053494, 0.559870, 0.826852,
		29.052771, 22.099117, 23.223459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475676, 22.018518, 22.633732>,  <29.090218, 21.707209, 22.644663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475676, 22.018518, 22.633732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.636812, 22.236103, 22.928165>,  <28.733494, 22.366653, 23.104826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.636812, 22.236103, 22.928165>,  <28.475676, 22.018518, 22.633732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636812, 22.236103, 22.928165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512488, 0.800392, -0.311012,
		-0.758336, -0.251946, 0.601206,
		0.402842, 0.543963, 0.736086,
		28.757666, 22.399292, 23.148991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933392, 22.345657, 22.991339>,  <28.475676, 22.018518, 22.633732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933392, 22.345657, 22.991339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.270500, 22.552391, 23.051498>,  <28.472765, 22.676432, 23.087595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.270500, 22.552391, 23.051498>,  <27.933392, 22.345657, 22.991339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270500, 22.552391, 23.051498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467374, 0.841227, -0.271843,
		-0.267017, 0.158809, 0.950516,
		0.842771, 0.516834, 0.150399,
		28.523331, 22.707441, 23.096619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.612665, 23.022923, 23.226288>,  <27.933392, 22.345657, 22.991339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.612665, 23.022923, 23.226288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.995184, 23.082245, 23.125488>,  <28.224695, 23.117838, 23.065008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.995184, 23.082245, 23.125488>,  <27.612665, 23.022923, 23.226288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995184, 23.082245, 23.125488> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274832, 0.750130, -0.601475,
		0.099827, 0.644445, 0.758106,
		0.956296, 0.148308, -0.251998,
		28.282072, 23.126738, 23.049889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962925, 23.739565, 23.486580>,  <27.612665, 23.022923, 23.226288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962925, 23.739565, 23.486580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.107256, 23.570324, 23.154125>,  <28.193855, 23.468779, 22.954653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.107256, 23.570324, 23.154125>,  <27.962925, 23.739565, 23.486580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107256, 23.570324, 23.154125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250352, 0.814522, -0.523334,
		0.898402, 0.396911, 0.187978,
		0.360829, -0.423104, -0.831135,
		28.215504, 23.443394, 22.904785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532675, 24.022978, 23.215187>,  <27.962925, 23.739565, 23.486580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532675, 24.022978, 23.215187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.313522, 23.871471, 22.916828>,  <28.182032, 23.780567, 22.737812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.313522, 23.871471, 22.916828>,  <28.532675, 24.022978, 23.215187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313522, 23.871471, 22.916828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018618, 0.885887, -0.463528,
		0.836349, -0.267845, -0.478308,
		-0.547880, -0.378766, -0.745898,
		28.149158, 23.757841, 22.693058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994892, 24.202759, 22.648289>,  <28.532675, 24.022978, 23.215187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994892, 24.202759, 22.648289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.605883, 24.141911, 22.577801>,  <28.372477, 24.105402, 22.535507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.605883, 24.141911, 22.577801>,  <28.994892, 24.202759, 22.648289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605883, 24.141911, 22.577801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006122, 0.740002, -0.672577,
		0.232717, -0.655177, -0.718739,
		-0.972525, -0.152120, -0.176222,
		28.314125, 24.096275, 22.524935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983284, 24.665346, 22.098297>,  <28.994892, 24.202759, 22.648289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983284, 24.665346, 22.098297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.599754, 24.553219, 22.116512>,  <28.369637, 24.485943, 22.127441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.599754, 24.553219, 22.116512>,  <28.983284, 24.665346, 22.098297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599754, 24.553219, 22.116512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247536, 0.746331, -0.617831,
		0.139204, -0.603665, -0.784991,
		-0.958826, -0.280318, 0.045537,
		28.312107, 24.469124, 22.130173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697319, 24.532578, 21.328365>,  <28.983284, 24.665346, 22.098297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697319, 24.532578, 21.328365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.381247, 24.593651, 21.565784>,  <28.191603, 24.630295, 21.708237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.381247, 24.593651, 21.565784>,  <28.697319, 24.532578, 21.328365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381247, 24.593651, 21.565784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309334, 0.736700, -0.601319,
		-0.529081, -0.658756, -0.534896,
		-0.790181, 0.152685, 0.593550,
		28.144192, 24.639456, 21.743849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073357, 24.587309, 20.873325>,  <28.697319, 24.532578, 21.328365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073357, 24.587309, 20.873325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.008253, 24.773125, 21.221512>,  <27.969191, 24.884615, 21.430424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.008253, 24.773125, 21.221512>,  <28.073357, 24.587309, 20.873325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008253, 24.773125, 21.221512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279875, 0.824257, -0.492210,
		-0.946140, -0.323732, -0.004140,
		-0.162757, 0.464541, 0.870467,
		27.959427, 24.912487, 21.482653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425343, 24.938713, 20.720127>,  <28.073357, 24.587309, 20.873325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425343, 24.938713, 20.720127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.529198, 25.123512, 21.059338>,  <27.591511, 25.234392, 21.262863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.529198, 25.123512, 21.059338>,  <27.425343, 24.938713, 20.720127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529198, 25.123512, 21.059338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186854, 0.885578, -0.425249,
		-0.947457, -0.048047, 0.316254,
		0.259636, 0.461998, 0.848025,
		27.607088, 25.262112, 21.313745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.844471, 25.470747, 20.864773>,  <27.425343, 24.938713, 20.720127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.844471, 25.470747, 20.864773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.151226, 25.587337, 21.093483>,  <27.335279, 25.657291, 21.230709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.151226, 25.587337, 21.093483>,  <26.844471, 25.470747, 20.864773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151226, 25.587337, 21.093483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226570, 0.956510, -0.183724,
		-0.600460, 0.011348, 0.799574,
		0.766886, 0.291478, 0.571775,
		27.381292, 25.674782, 21.265015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.050476, 26.577642, 27.438221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.363678, 26.816067, 27.509350>,  <42.551598, 26.959122, 27.552027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.363678, 26.816067, 27.509350>,  <42.050476, 26.577642, 27.438221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363678, 26.816067, 27.509350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550753, 0.797228, -0.247182,
		-0.289100, 0.095608, 0.952513,
		0.783002, 0.596059, 0.177822,
		42.598579, 26.994884, 27.562696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812988, 27.256235, 27.891775>,  <42.050476, 26.577642, 27.438221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812988, 27.256235, 27.891775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.128826, 27.310257, 27.652340>,  <42.318329, 27.342670, 27.508678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.128826, 27.310257, 27.652340>,  <41.812988, 27.256235, 27.891775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128826, 27.310257, 27.652340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441889, 0.801980, -0.401948,
		0.425768, 0.581884, 0.692916,
		0.789592, 0.135055, -0.598586,
		42.365704, 27.350773, 27.472765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784111, 27.977659, 27.624365>,  <41.812988, 27.256235, 27.891775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784111, 27.977659, 27.624365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.046196, 27.792927, 27.385231>,  <42.203449, 27.682087, 27.241751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.046196, 27.792927, 27.385231>,  <41.784111, 27.977659, 27.624365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.046196, 27.792927, 27.385231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221948, 0.638764, -0.736695,
		0.722104, 0.615382, 0.316025,
		0.655214, -0.461830, -0.597836,
		42.242760, 27.654379, 27.205881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186806, 28.532589, 27.276375>,  <41.784111, 27.977659, 27.624365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186806, 28.532589, 27.276375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.234585, 28.220886, 27.030289>,  <42.263252, 28.033865, 26.882637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.234585, 28.220886, 27.030289>,  <42.186806, 28.532589, 27.276375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234585, 28.220886, 27.030289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096283, 0.607641, -0.788354,
		0.988161, 0.153401, -0.002449,
		0.119446, -0.779256, -0.615217,
		42.270420, 27.987110, 26.845724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.519817, 28.832762, 26.688936>,  <42.186806, 28.532589, 27.276375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.519817, 28.832762, 26.688936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.414230, 28.476921, 26.539845>,  <42.350880, 28.263416, 26.450390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.414230, 28.476921, 26.539845>,  <42.519817, 28.832762, 26.688936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414230, 28.476921, 26.539845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313543, 0.444591, -0.839065,
		0.912148, -0.104616, -0.396285,
		-0.263964, -0.889604, -0.372731,
		42.335041, 28.210039, 26.428024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720016, 28.923653, 26.017988>,  <42.519817, 28.832762, 26.688936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720016, 28.923653, 26.017988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.491791, 28.595673, 25.999519>,  <42.354855, 28.398884, 25.988438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.491791, 28.595673, 25.999519>,  <42.720016, 28.923653, 26.017988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491791, 28.595673, 25.999519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248102, 0.225692, -0.942077,
		0.782878, -0.526062, -0.332204,
		-0.570567, -0.819952, -0.046172,
		42.320621, 28.349688, 25.985668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.880455, 28.534744, 25.304874>,  <42.720016, 28.923653, 26.017988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.880455, 28.534744, 25.304874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.524414, 28.424316, 25.449932>,  <42.310791, 28.358061, 25.536966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.524414, 28.424316, 25.449932>,  <42.880455, 28.534744, 25.304874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524414, 28.424316, 25.449932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407520, 0.125782, -0.904492,
		0.204091, -0.952871, -0.224463,
		-0.890098, -0.276072, 0.362643,
		42.257385, 28.341496, 25.558725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536049, 28.017241, 24.765722>,  <42.880455, 28.534744, 25.304874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536049, 28.017241, 24.765722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.257416, 28.188148, 24.996273>,  <42.090237, 28.290693, 25.134604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.257416, 28.188148, 24.996273>,  <42.536049, 28.017241, 24.765722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257416, 28.188148, 24.996273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508173, 0.273284, -0.816747,
		-0.506484, -0.861834, 0.026761,
		-0.696587, 0.427269, 0.576375,
		42.048439, 28.316330, 25.169186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881405, 27.850060, 24.435751>,  <42.536049, 28.017241, 24.765722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881405, 27.850060, 24.435751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.749275, 28.146912, 24.669033>,  <41.669998, 28.325024, 24.809002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.749275, 28.146912, 24.669033>,  <41.881405, 27.850060, 24.435751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749275, 28.146912, 24.669033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422442, 0.436306, -0.794468,
		-0.844055, -0.508803, 0.169384,
		-0.330325, 0.742130, 0.583206,
		41.650177, 28.369551, 24.843994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209789, 27.961941, 24.285812>,  <41.881405, 27.850060, 24.435751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209789, 27.961941, 24.285812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.294884, 28.302025, 24.478432>,  <41.345940, 28.506075, 24.594004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.294884, 28.302025, 24.478432>,  <41.209789, 27.961941, 24.285812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294884, 28.302025, 24.478432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538920, 0.513185, -0.667987,
		-0.815052, -0.117412, 0.567366,
		0.212734, 0.850209, 0.481548,
		41.358704, 28.557087, 24.622896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672871, 28.284222, 24.415146>,  <41.209789, 27.961941, 24.285812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672871, 28.284222, 24.415146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.917610, 28.597157, 24.461773>,  <41.064453, 28.784918, 24.489748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.917610, 28.597157, 24.461773>,  <40.672871, 28.284222, 24.415146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917610, 28.597157, 24.461773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532282, 0.516257, -0.670936,
		-0.585075, 0.348467, 0.732296,
		0.611852, 0.782336, 0.116566,
		41.101166, 28.831858, 24.496742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319107, 28.903831, 24.579950>,  <40.672871, 28.284222, 24.415146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319107, 28.903831, 24.579950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649620, 29.026390, 24.390896>,  <40.847927, 29.099926, 24.277464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649620, 29.026390, 24.390896>,  <40.319107, 28.903831, 24.579950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649620, 29.026390, 24.390896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559245, 0.546300, -0.623540,
		0.067150, 0.779537, 0.622747,
		0.826279, 0.306397, -0.472636,
		40.897503, 29.118309, 24.249105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250771, 29.689638, 24.506994>,  <40.319107, 28.903831, 24.579950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250771, 29.689638, 24.506994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.532185, 29.589256, 24.241043>,  <40.701031, 29.529026, 24.081472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.532185, 29.589256, 24.241043>,  <40.250771, 29.689638, 24.506994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532185, 29.589256, 24.241043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403375, 0.629246, -0.664333,
		0.585091, 0.735575, 0.341465,
		0.703532, -0.250957, -0.664878,
		40.743244, 29.513969, 24.041580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467388, 30.316492, 24.183868>,  <40.250771, 29.689638, 24.506994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467388, 30.316492, 24.183868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.611736, 30.053104, 23.919689>,  <40.698345, 29.895071, 23.761183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.611736, 30.053104, 23.919689>,  <40.467388, 30.316492, 24.183868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611736, 30.053104, 23.919689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192148, 0.640477, -0.743551,
		0.912607, 0.395229, 0.104606,
		0.360870, -0.658470, -0.660446,
		40.719997, 29.855564, 23.721556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104816, 30.581873, 23.803221>,  <40.467388, 30.316492, 24.183868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104816, 30.581873, 23.803221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.913555, 30.300961, 23.592251>,  <40.798798, 30.132414, 23.465670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.913555, 30.300961, 23.592251>,  <41.104816, 30.581873, 23.803221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913555, 30.300961, 23.592251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046605, 0.579386, -0.813720,
		0.877040, -0.413662, -0.244304,
		-0.478152, -0.702279, -0.527423,
		40.770111, 30.090277, 23.434025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519154, 30.565138, 23.206127>,  <41.104816, 30.581873, 23.803221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519154, 30.565138, 23.206127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.159035, 30.422951, 23.105637>,  <40.942963, 30.337639, 23.045341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.159035, 30.422951, 23.105637>,  <41.519154, 30.565138, 23.206127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159035, 30.422951, 23.105637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034233, 0.517551, -0.854967,
		0.433935, -0.778322, -0.453779,
		-0.900294, -0.355466, -0.251227,
		40.888947, 30.316311, 23.030268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373093, 30.718283, 22.574432>,  <41.519154, 30.565138, 23.206127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373093, 30.718283, 22.574432> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.990982, 30.636066, 22.659473>,  <40.761715, 30.586737, 22.710499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.990982, 30.636066, 22.659473>,  <41.373093, 30.718283, 22.574432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990982, 30.636066, 22.659473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286954, 0.470607, -0.834378,
		0.071443, -0.858069, -0.508540,
		-0.955276, -0.205538, 0.212605,
		40.704399, 30.574406, 22.723255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054573, 30.564112, 21.827957>,  <41.373093, 30.718283, 22.574432>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054573, 30.564112, 21.827957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.754566, 30.627110, 22.084915>,  <40.574562, 30.664907, 22.239090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.754566, 30.627110, 22.084915>,  <41.054573, 30.564112, 21.827957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754566, 30.627110, 22.084915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524886, 0.449246, -0.722961,
		-0.402456, -0.879417, -0.254275,
		-0.750016, 0.157494, 0.642395,
		40.529560, 30.674358, 22.277634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465061, 30.435183, 21.422047>,  <41.054573, 30.564112, 21.827957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465061, 30.435183, 21.422047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.348373, 30.658577, 21.732658>,  <40.278362, 30.792614, 21.919025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.348373, 30.658577, 21.732658>,  <40.465061, 30.435183, 21.422047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348373, 30.658577, 21.732658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527937, 0.582966, -0.617603,
		-0.797611, -0.590124, 0.124783,
		-0.291718, 0.558484, 0.776528,
		40.260857, 30.826122, 21.965616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778015, 30.622803, 21.333551>,  <40.465061, 30.435183, 21.422047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778015, 30.622803, 21.333551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.907429, 30.904160, 21.586712>,  <39.985077, 31.072973, 21.738607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.907429, 30.904160, 21.586712>,  <39.778015, 30.622803, 21.333551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907429, 30.904160, 21.586712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393988, 0.708276, -0.585763,
		-0.860291, -0.059842, 0.506279,
		0.323532, 0.703394, 0.632901,
		40.004490, 31.115177, 21.776583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267151, 31.085205, 21.415596>,  <39.778015, 30.622803, 21.333551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267151, 31.085205, 21.415596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.595142, 31.295837, 21.505348>,  <39.791939, 31.422216, 21.559198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.595142, 31.295837, 21.505348>,  <39.267151, 31.085205, 21.415596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595142, 31.295837, 21.505348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414609, 0.816674, -0.401426,
		-0.394627, 0.236132, 0.887981,
		0.819981, 0.526579, 0.224379,
		39.841137, 31.453812, 21.572662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542835, 31.178631, 21.175270>,  <39.267151, 31.085205, 21.415596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542835, 31.178631, 21.175270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.261444, 30.993908, 20.959175>,  <38.092609, 30.883074, 20.829517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.261444, 30.993908, 20.959175>,  <38.542835, 31.178631, 21.175270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261444, 30.993908, 20.959175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291197, -0.506112, 0.811822,
		-0.648327, 0.728411, 0.221559,
		-0.703475, -0.461809, -0.540237,
		38.050404, 30.855366, 20.797104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954727, 31.314806, 21.486996>,  <38.542835, 31.178631, 21.175270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954727, 31.314806, 21.486996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.907997, 30.975880, 21.279762>,  <37.879959, 30.772524, 21.155422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.907997, 30.975880, 21.279762>,  <37.954727, 31.314806, 21.486996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907997, 30.975880, 21.279762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201622, -0.490559, 0.847762,
		-0.972472, 0.203494, -0.113529,
		-0.116822, -0.847315, -0.518084,
		37.872952, 30.721685, 21.124336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495876, 30.963051, 21.860550>,  <37.954727, 31.314806, 21.486996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495876, 30.963051, 21.860550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.639595, 30.664139, 21.636951>,  <37.725826, 30.484791, 21.502792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.639595, 30.664139, 21.636951>,  <37.495876, 30.963051, 21.860550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639595, 30.664139, 21.636951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203210, -0.647271, 0.734674,
		-0.910830, -0.150371, -0.384417,
		0.359296, -0.747281, -0.558997,
		37.747383, 30.439955, 21.469252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050831, 30.408207, 21.938276>,  <37.495876, 30.963051, 21.860550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050831, 30.408207, 21.938276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.389172, 30.238873, 21.808468>,  <37.592178, 30.137272, 21.730583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.389172, 30.238873, 21.808468>,  <37.050831, 30.408207, 21.938276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389172, 30.238873, 21.808468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058362, -0.678185, 0.732570,
		-0.530209, -0.600708, -0.598354,
		0.845856, -0.423337, -0.324522,
		37.642929, 30.111872, 21.711111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816227, 29.777197, 22.126625>,  <37.050831, 30.408207, 21.938276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816227, 29.777197, 22.126625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.208305, 29.756741, 22.050102>,  <37.443554, 29.744467, 22.004189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.208305, 29.756741, 22.050102>,  <36.816227, 29.777197, 22.126625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208305, 29.756741, 22.050102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087698, -0.754060, 0.650925,
		-0.177545, -0.654812, -0.734643,
		0.980198, -0.051142, -0.191305,
		37.502365, 29.741398, 21.992710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957008, 29.050489, 22.162746>,  <36.816227, 29.777197, 22.126625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957008, 29.050489, 22.162746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.325016, 29.202915, 22.199299>,  <37.545822, 29.294371, 22.221230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.325016, 29.202915, 22.199299>,  <36.957008, 29.050489, 22.162746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325016, 29.202915, 22.199299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200086, -0.657308, 0.726575,
		0.336938, -0.650180, -0.680983,
		0.920021, 0.381066, 0.091380,
		37.601021, 29.317234, 22.226713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290592, 28.509251, 22.277391>,  <36.957008, 29.050489, 22.162746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290592, 28.509251, 22.277391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.548420, 28.785828, 22.407887>,  <37.703117, 28.951775, 22.486183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.548420, 28.785828, 22.407887>,  <37.290592, 28.509251, 22.277391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548420, 28.785828, 22.407887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310364, -0.626612, 0.714865,
		0.698713, -0.359531, -0.618496,
		0.644573, 0.691444, 0.326236,
		37.741791, 28.993261, 22.505758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869400, 28.105780, 22.354076>,  <37.290592, 28.509251, 22.277391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869400, 28.105780, 22.354076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.890587, 28.440754, 22.571659>,  <37.903301, 28.641739, 22.702209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.890587, 28.440754, 22.571659>,  <37.869400, 28.105780, 22.354076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890587, 28.440754, 22.571659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360516, -0.524024, 0.771639,
		0.931248, 0.155231, -0.329668,
		0.052971, 0.837438, 0.543959,
		37.906479, 28.691986, 22.734846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577610, 28.169588, 22.646523>,  <37.869400, 28.105780, 22.354076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577610, 28.169588, 22.646523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.370022, 28.416721, 22.882812>,  <38.245468, 28.565001, 23.024586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.370022, 28.416721, 22.882812>,  <38.577610, 28.169588, 22.646523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370022, 28.416721, 22.882812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379592, -0.452619, 0.806874,
		0.765886, 0.642976, 0.000371,
		-0.518969, 0.617833, 0.590723,
		38.214333, 28.602072, 23.060030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093040, 28.529366, 23.236441>,  <38.577610, 28.169588, 22.646523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093040, 28.529366, 23.236441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.710625, 28.548027, 23.352242>,  <38.481174, 28.559225, 23.421722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.710625, 28.548027, 23.352242>,  <39.093040, 28.529366, 23.236441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710625, 28.548027, 23.352242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259194, -0.327262, 0.908690,
		0.137138, 0.943781, 0.300783,
		-0.956040, 0.046655, 0.289503,
		38.423813, 28.562023, 23.439093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129349, 28.888229, 23.885838>,  <39.093040, 28.529366, 23.236441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129349, 28.888229, 23.885838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.787704, 28.680225, 23.882381>,  <38.582718, 28.555422, 23.880308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.787704, 28.680225, 23.882381>,  <39.129349, 28.888229, 23.885838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787704, 28.680225, 23.882381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204258, -0.350680, 0.913948,
		-0.478295, 0.778852, 0.405738,
		-0.854115, -0.520012, -0.008642,
		38.531471, 28.524221, 23.879789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920719, 28.868193, 24.551527>,  <39.129349, 28.888229, 23.885838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920719, 28.868193, 24.551527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.677761, 28.587280, 24.403004>,  <38.531986, 28.418734, 24.313890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.677761, 28.587280, 24.403004>,  <38.920719, 28.868193, 24.551527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677761, 28.587280, 24.403004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099163, -0.530781, 0.841688,
		-0.788184, 0.474419, 0.392035,
		-0.607398, -0.702281, -0.371308,
		38.495541, 28.376596, 24.291611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328377, 28.802864, 25.015556>,  <38.920719, 28.868193, 24.551527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328377, 28.802864, 25.015556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.358196, 28.465508, 24.802715>,  <38.376087, 28.263094, 24.675011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.358196, 28.465508, 24.802715>,  <38.328377, 28.802864, 25.015556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358196, 28.465508, 24.802715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149265, -0.518137, 0.842172,
		-0.985983, -0.142207, 0.087263,
		0.074548, -0.843392, -0.532101,
		38.380562, 28.212490, 24.643085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919949, 28.349409, 25.300756>,  <38.328377, 28.802864, 25.015556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919949, 28.349409, 25.300756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.149086, 28.098225, 25.090038>,  <38.286568, 27.947514, 24.963608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.149086, 28.098225, 25.090038>,  <37.919949, 28.349409, 25.300756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149086, 28.098225, 25.090038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005740, -0.645755, 0.763523,
		-0.819645, -0.434355, -0.373520,
		0.572842, -0.627962, -0.526797,
		38.320938, 27.909836, 24.931999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623566, 27.598274, 25.405882>,  <37.919949, 28.349409, 25.300756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623566, 27.598274, 25.405882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.015862, 27.611870, 25.328953>,  <38.251240, 27.620028, 25.282795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.015862, 27.611870, 25.328953>,  <37.623566, 27.598274, 25.405882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015862, 27.611870, 25.328953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175923, -0.581410, 0.794363,
		-0.084819, -0.812900, -0.576193,
		0.980743, 0.033988, -0.192323,
		38.310085, 27.622066, 25.271255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942268, 27.045477, 25.753477>,  <37.623566, 27.598274, 25.405882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942268, 27.045477, 25.753477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.302917, 27.184155, 25.650040>,  <38.519306, 27.267361, 25.587976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.302917, 27.184155, 25.650040>,  <37.942268, 27.045477, 25.753477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302917, 27.184155, 25.650040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391411, -0.399655, 0.828899,
		0.184028, -0.848574, -0.496040,
		0.901627, 0.346696, -0.258594,
		38.573406, 27.288164, 25.572462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345089, 26.499086, 25.792522>,  <37.942268, 27.045477, 25.753477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345089, 26.499086, 25.792522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.584694, 26.818447, 25.816967>,  <38.728458, 27.010063, 25.831635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.584694, 26.818447, 25.816967>,  <38.345089, 26.499086, 25.792522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584694, 26.818447, 25.816967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572350, -0.480289, 0.664634,
		0.559997, -0.363148, -0.744666,
		0.599015, 0.798402, 0.061113,
		38.764397, 27.057968, 25.835300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037453, 26.169052, 25.924538>,  <38.345089, 26.499086, 25.792522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037453, 26.169052, 25.924538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.066181, 26.559349, 26.007259>,  <39.083420, 26.793528, 26.056892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.066181, 26.559349, 26.007259>,  <39.037453, 26.169052, 25.924538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066181, 26.559349, 26.007259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519669, -0.213585, 0.827240,
		0.851343, 0.048054, -0.522404,
		0.071825, 0.975742, 0.206806,
		39.087730, 26.852072, 26.069302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669361, 26.164469, 26.314060>,  <39.037453, 26.169052, 25.924538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669361, 26.164469, 26.314060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515942, 26.515980, 26.427650>,  <39.423889, 26.726887, 26.495806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515942, 26.515980, 26.427650>,  <39.669361, 26.164469, 26.314060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515942, 26.515980, 26.427650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473221, -0.077047, 0.877568,
		0.793067, 0.470971, -0.386305,
		-0.383546, 0.878777, 0.283977,
		39.400879, 26.779613, 26.512844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218109, 26.644327, 26.452505>,  <39.669361, 26.164469, 26.314060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218109, 26.644327, 26.452505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.895603, 26.782204, 26.644810>,  <39.702099, 26.864929, 26.760193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.895603, 26.782204, 26.644810>,  <40.218109, 26.644327, 26.452505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895603, 26.782204, 26.644810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526777, 0.048561, 0.848615,
		0.269165, 0.937459, -0.220729,
		-0.806261, 0.344693, 0.480761,
		39.653725, 26.885611, 26.789038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374596, 27.311928, 26.664667>,  <40.218109, 26.644327, 26.452505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374596, 27.311928, 26.664667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.102528, 27.128479, 26.893414>,  <39.939285, 27.018410, 27.030661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.102528, 27.128479, 26.893414>,  <40.374596, 27.311928, 26.664667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102528, 27.128479, 26.893414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660751, -0.045736, 0.749211,
		-0.317450, 0.887453, 0.334144,
		-0.680172, -0.458623, 0.571866,
		39.898476, 26.990892, 27.064974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.394505, 23.433405, 26.442818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.791121, 23.393669, 26.409397>,  <27.029091, 23.369827, 26.389345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.791121, 23.393669, 26.409397>,  <26.394505, 23.433405, 26.442818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791121, 23.393669, 26.409397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077660, -0.969757, 0.231388,
		-0.104009, -0.222942, -0.969267,
		0.991540, -0.099340, -0.083550,
		27.088583, 23.363867, 26.384333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502869, 22.792200, 26.158810>,  <26.394505, 23.433405, 26.442818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502869, 22.792200, 26.158810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.860703, 22.878372, 26.315430>,  <27.075403, 22.930077, 26.409401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.860703, 22.878372, 26.315430>,  <26.502869, 22.792200, 26.158810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860703, 22.878372, 26.315430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054711, -0.922343, 0.382479,
		0.443540, -0.320738, -0.836899,
		0.894583, 0.215432, 0.391548,
		27.129078, 22.943003, 26.432894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921452, 22.279928, 25.846024>,  <26.502869, 22.792200, 26.158810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921452, 22.279928, 25.846024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.076794, 22.421787, 26.186237>,  <27.169998, 22.506903, 26.390366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.076794, 22.421787, 26.186237>,  <26.921452, 22.279928, 25.846024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076794, 22.421787, 26.186237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041165, -0.928733, 0.368457,
		0.920591, -0.108080, -0.375275,
		0.388353, 0.354646, 0.850534,
		27.193300, 22.528181, 26.441397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578978, 21.914185, 26.030033>,  <26.921452, 22.279928, 25.846024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578978, 21.914185, 26.030033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.491512, 22.080482, 26.383156>,  <27.439034, 22.180262, 26.595030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.491512, 22.080482, 26.383156>,  <27.578978, 21.914185, 26.030033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491512, 22.080482, 26.383156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106861, -0.889054, 0.445155,
		0.969931, 0.191676, 0.149977,
		-0.218663, 0.415743, 0.882804,
		27.425913, 22.205206, 26.647997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.992910, 21.459219, 26.544304>,  <27.578978, 21.914185, 26.030033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.992910, 21.459219, 26.544304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.748938, 21.658791, 26.790573>,  <27.602554, 21.778534, 26.938334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.748938, 21.658791, 26.790573>,  <27.992910, 21.459219, 26.544304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748938, 21.658791, 26.790573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106136, -0.821352, 0.560461,
		0.785313, 0.276499, 0.553924,
		-0.609933, 0.498928, 0.615672,
		27.565958, 21.808470, 26.975275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264046, 21.384464, 27.096209>,  <27.992910, 21.459219, 26.544304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264046, 21.384464, 27.096209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.890446, 21.476677, 27.205391>,  <27.666286, 21.532003, 27.270901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.890446, 21.476677, 27.205391>,  <28.264046, 21.384464, 27.096209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890446, 21.476677, 27.205391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070699, -0.868127, 0.491281,
		0.350214, 0.439558, 0.827127,
		-0.933998, 0.230531, 0.272954,
		27.610247, 21.545835, 27.287277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268909, 21.316767, 27.862350>,  <28.264046, 21.384464, 27.096209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268909, 21.316767, 27.862350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.896803, 21.304237, 27.716129>,  <27.673540, 21.296719, 27.628397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.896803, 21.304237, 27.716129>,  <28.268909, 21.316767, 27.862350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896803, 21.304237, 27.716129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143356, -0.886108, 0.440751,
		-0.337724, 0.462419, 0.819824,
		-0.930264, -0.031326, -0.365551,
		27.617723, 21.294840, 27.606464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842974, 21.239700, 28.456301>,  <28.268909, 21.316767, 27.862350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842974, 21.239700, 28.456301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.649372, 21.112007, 28.130398>,  <27.533211, 21.035391, 27.934856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.649372, 21.112007, 28.130398>,  <27.842974, 21.239700, 28.456301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649372, 21.112007, 28.130398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234270, -0.849825, 0.472138,
		-0.843124, 0.419390, 0.336532,
		-0.484004, -0.319231, -0.814759,
		27.504171, 21.016237, 27.885971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309767, 20.868235, 28.725634>,  <27.842974, 21.239700, 28.456301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309767, 20.868235, 28.725634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.343927, 20.739285, 28.348534>,  <27.364424, 20.661915, 28.122272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.343927, 20.739285, 28.348534>,  <27.309767, 20.868235, 28.725634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343927, 20.739285, 28.348534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022920, -0.946594, 0.321612,
		-0.996083, -0.005858, -0.088228,
		0.085400, -0.322374, -0.942752,
		27.369547, 20.642572, 28.065708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824438, 20.249109, 28.591555>,  <27.309767, 20.868235, 28.725634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824438, 20.249109, 28.591555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.081476, 20.228725, 28.285751>,  <27.235699, 20.216496, 28.102270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.081476, 20.228725, 28.285751>,  <26.824438, 20.249109, 28.591555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081476, 20.228725, 28.285751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202464, -0.951027, 0.233572,
		-0.738970, -0.304878, -0.600809,
		0.642597, -0.050961, -0.764508,
		27.274256, 20.213438, 28.056398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764826, 19.643559, 28.256985>,  <26.824438, 20.249109, 28.591555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764826, 19.643559, 28.256985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.134792, 19.734173, 28.134861>,  <27.356771, 19.788542, 28.061586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.134792, 19.734173, 28.134861>,  <26.764826, 19.643559, 28.256985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.134792, 19.734173, 28.134861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331242, -0.874325, 0.354731,
		-0.186580, -0.429227, -0.883715,
		0.924914, 0.226538, -0.305310,
		27.412266, 19.802134, 28.043268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000387, 19.033424, 27.935463>,  <26.764826, 19.643559, 28.256985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000387, 19.033424, 27.935463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.290745, 19.264999, 28.084007>,  <27.464958, 19.403946, 28.173134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.290745, 19.264999, 28.084007>,  <27.000387, 19.033424, 27.935463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290745, 19.264999, 28.084007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364373, -0.781612, 0.506275,
		0.583363, -0.232187, -0.778316,
		0.725892, 0.578940, 0.371361,
		27.508512, 19.438681, 28.195415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667774, 18.776066, 27.857748>,  <27.000387, 19.033424, 27.935463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667774, 18.776066, 27.857748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.662275, 19.012684, 28.180210>,  <27.658976, 19.154655, 28.373688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.662275, 19.012684, 28.180210>,  <27.667774, 18.776066, 27.857748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662275, 19.012684, 28.180210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220703, -0.784551, 0.579457,
		0.975244, 0.185885, -0.119772,
		-0.013745, 0.591546, 0.806154,
		27.658152, 19.190147, 28.422056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283602, 18.655743, 28.295013>,  <27.667774, 18.776066, 27.857748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283602, 18.655743, 28.295013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.991865, 18.804173, 28.524921>,  <27.816822, 18.893230, 28.662867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.991865, 18.804173, 28.524921>,  <28.283602, 18.655743, 28.295013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991865, 18.804173, 28.524921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225289, -0.663004, 0.713912,
		0.645990, 0.650177, 0.399958,
		-0.729343, 0.371074, 0.574771,
		27.773062, 18.915495, 28.697353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398010, 17.920868, 28.277225>,  <28.283602, 18.655743, 28.295013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398010, 17.920868, 28.277225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.624681, 17.701118, 28.031605>,  <28.760685, 17.569269, 27.884232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.624681, 17.701118, 28.031605>,  <28.398010, 17.920868, 28.277225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624681, 17.701118, 28.031605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104611, 0.691263, -0.714991,
		0.817270, 0.469408, 0.334254,
		0.566680, -0.549374, -0.614054,
		28.794685, 17.536306, 27.847389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.973904, 18.382730, 28.053934>,  <28.398010, 17.920868, 28.277225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.973904, 18.382730, 28.053934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.911057, 18.104652, 27.773357>,  <28.873348, 17.937805, 27.605011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.911057, 18.104652, 27.773357>,  <28.973904, 18.382730, 28.053934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911057, 18.104652, 27.773357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138064, 0.687824, -0.712626,
		0.977882, -0.208810, -0.012088,
		-0.157117, -0.695195, -0.701440,
		28.863922, 17.896093, 27.562925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547523, 18.511232, 27.563145>,  <28.973904, 18.382730, 28.053934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547523, 18.511232, 27.563145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.268158, 18.294983, 27.375549>,  <29.100538, 18.165234, 27.262993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.268158, 18.294983, 27.375549>,  <29.547523, 18.511232, 27.563145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268158, 18.294983, 27.375549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027535, 0.634505, -0.772428,
		0.715168, -0.552385, -0.428259,
		-0.698411, -0.540623, -0.468988,
		29.058634, 18.132797, 27.234854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818409, 18.473269, 26.890985>,  <29.547523, 18.511232, 27.563145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818409, 18.473269, 26.890985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.434467, 18.379383, 26.829544>,  <29.204103, 18.323051, 26.792679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.434467, 18.379383, 26.829544>,  <29.818409, 18.473269, 26.890985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434467, 18.379383, 26.829544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010601, 0.577553, -0.816284,
		0.280305, -0.781884, -0.556854,
		-0.959852, -0.234712, -0.153602,
		29.146511, 18.308969, 26.783463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779814, 18.290745, 26.176796>,  <29.818409, 18.473269, 26.890985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779814, 18.290745, 26.176796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.420952, 18.407951, 26.309010>,  <29.205635, 18.478275, 26.388338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.420952, 18.407951, 26.309010>,  <29.779814, 18.290745, 26.176796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420952, 18.407951, 26.309010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069995, 0.644535, -0.761364,
		-0.436135, -0.706197, -0.557738,
		-0.897155, 0.293019, 0.330534,
		29.151806, 18.495857, 26.408169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465456, 18.222002, 25.556145>,  <29.779814, 18.290745, 26.176796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465456, 18.222002, 25.556145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.259230, 18.468937, 25.793827>,  <29.135494, 18.617098, 25.936438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.259230, 18.468937, 25.793827>,  <29.465456, 18.222002, 25.556145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259230, 18.468937, 25.793827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207464, 0.582908, -0.785606,
		-0.831353, -0.528310, -0.172453,
		-0.515568, 0.617339, 0.594207,
		29.104559, 18.654139, 25.972090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969931, 18.485468, 25.205751>,  <29.465456, 18.222002, 25.556145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969931, 18.485468, 25.205751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.941406, 18.756580, 25.498470>,  <28.924292, 18.919249, 25.674101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.941406, 18.756580, 25.498470>,  <28.969931, 18.485468, 25.205751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941406, 18.756580, 25.498470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115160, 0.723163, -0.681009,
		-0.990784, -0.132838, 0.026483,
		-0.071312, 0.677783, 0.731796,
		28.920013, 18.959915, 25.718010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533489, 18.898912, 24.949095>,  <28.969931, 18.485468, 25.205751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533489, 18.898912, 24.949095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.686642, 19.118793, 25.246075>,  <28.778534, 19.250721, 25.424263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.686642, 19.118793, 25.246075>,  <28.533489, 18.898912, 24.949095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686642, 19.118793, 25.246075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059181, 0.816637, -0.574109,
		-0.921900, 0.175877, 0.345207,
		0.382881, 0.549701, 0.742449,
		28.801506, 19.283703, 25.468809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190081, 19.481239, 24.900085>,  <28.533489, 18.898912, 24.949095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190081, 19.481239, 24.900085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.508120, 19.595470, 25.114101>,  <28.698942, 19.664009, 25.242512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.508120, 19.595470, 25.114101>,  <28.190081, 19.481239, 24.900085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.508120, 19.595470, 25.114101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048806, 0.909470, -0.412896,
		-0.604518, 0.302178, 0.737053,
		0.795095, 0.285576, 0.535042,
		28.746649, 19.681143, 25.274614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124973, 20.187956, 25.089363>,  <28.190081, 19.481239, 24.900085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124973, 20.187956, 25.089363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.518408, 20.115910, 25.093739>,  <28.754469, 20.072681, 25.096365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.518408, 20.115910, 25.093739>,  <28.124973, 20.187956, 25.089363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518408, 20.115910, 25.093739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157178, 0.825394, -0.542236,
		0.088635, 0.535055, 0.840155,
		0.983585, -0.180115, 0.010940,
		28.813484, 20.061874, 25.097021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418880, 20.748270, 25.299953>,  <28.124973, 20.187956, 25.089363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418880, 20.748270, 25.299953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.711706, 20.562588, 25.100517>,  <28.887402, 20.451180, 24.980856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.711706, 20.562588, 25.100517>,  <28.418880, 20.748270, 25.299953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711706, 20.562588, 25.100517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168922, 0.832733, -0.527278,
		0.659959, 0.301778, 0.688029,
		0.732065, -0.464205, -0.498592,
		28.931326, 20.423326, 24.950939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977264, 21.085001, 25.477091>,  <28.418880, 20.748270, 25.299953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977264, 21.085001, 25.477091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.074059, 20.893196, 25.139687>,  <29.132135, 20.778112, 24.937244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.074059, 20.893196, 25.139687>,  <28.977264, 21.085001, 25.477091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074059, 20.893196, 25.139687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234032, 0.872526, -0.428869,
		0.941632, -0.093627, 0.323362,
		0.241987, -0.479513, -0.843510,
		29.146654, 20.749342, 24.886633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644127, 21.392801, 25.284613>,  <28.977264, 21.085001, 25.477091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644127, 21.392801, 25.284613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.502701, 21.227962, 24.948715>,  <29.417845, 21.129059, 24.747177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.502701, 21.227962, 24.948715>,  <29.644127, 21.392801, 25.284613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502701, 21.227962, 24.948715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350938, 0.773715, -0.527453,
		0.867085, -0.481186, -0.128935,
		-0.353562, -0.412098, -0.839743,
		29.396631, 21.104334, 24.696793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153730, 21.441317, 24.719545>,  <29.644127, 21.392801, 25.284613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153730, 21.441317, 24.719545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.790237, 21.400757, 24.557594>,  <29.572142, 21.376421, 24.460424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.790237, 21.400757, 24.557594>,  <30.153730, 21.441317, 24.719545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790237, 21.400757, 24.557594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183729, 0.773821, -0.606172,
		0.374767, -0.625235, -0.684566,
		-0.908732, -0.101399, -0.404876,
		29.517618, 21.370337, 24.436131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500963, 21.422766, 24.090954>,  <30.153730, 21.441317, 24.719545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500963, 21.422766, 24.090954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.890972, 21.445530, 24.005077>,  <31.124977, 21.459188, 23.953552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.890972, 21.445530, 24.005077>,  <30.500963, 21.422766, 24.090954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890972, 21.445530, 24.005077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193390, -0.692914, 0.694601,
		-0.109230, -0.718770, -0.686613,
		0.975022, 0.056913, -0.214690,
		31.183479, 21.462605, 23.940670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684801, 20.713501, 24.127142>,  <30.500963, 21.422766, 24.090954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684801, 20.713501, 24.127142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.010630, 20.942326, 24.165554>,  <31.206127, 21.079620, 24.188601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.010630, 20.942326, 24.165554>,  <30.684801, 20.713501, 24.127142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010630, 20.942326, 24.165554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342693, -0.608167, 0.716027,
		0.468012, -0.550346, -0.691436,
		0.814571, 0.572060, 0.096030,
		31.255001, 21.113943, 24.194363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242390, 20.275640, 24.007767>,  <30.684801, 20.713501, 24.127142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242390, 20.275640, 24.007767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.363478, 20.584801, 24.230831>,  <31.436131, 20.770296, 24.364670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.363478, 20.584801, 24.230831>,  <31.242390, 20.275640, 24.007767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363478, 20.584801, 24.230831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326964, -0.633826, 0.700970,
		0.895241, -0.029862, -0.444582,
		0.302719, 0.772899, 0.557663,
		31.454294, 20.816671, 24.398130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962078, 20.197031, 24.206469>,  <31.242390, 20.275640, 24.007767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962078, 20.197031, 24.206469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.806749, 20.431461, 24.490925>,  <31.713552, 20.572121, 24.661598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.806749, 20.431461, 24.490925>,  <31.962078, 20.197031, 24.206469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806749, 20.431461, 24.490925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256798, -0.672308, 0.694303,
		0.885020, 0.452233, 0.110569,
		-0.388324, 0.586078, 0.711138,
		31.690252, 20.607285, 24.704266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376259, 20.104401, 24.805744>,  <31.962078, 20.197031, 24.206469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376259, 20.104401, 24.805744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059376, 20.286896, 24.967854>,  <31.869246, 20.396393, 25.065121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.059376, 20.286896, 24.967854>,  <32.376259, 20.104401, 24.805744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059376, 20.286896, 24.967854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074051, -0.587338, 0.805947,
		0.605738, 0.668491, 0.431511,
		-0.792211, 0.456239, 0.405276,
		31.821712, 20.423767, 25.089436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583977, 20.185305, 25.473619>,  <32.376259, 20.104401, 24.805744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583977, 20.185305, 25.473619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190315, 20.247704, 25.507336>,  <31.954119, 20.285143, 25.527565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.190315, 20.247704, 25.507336>,  <32.583977, 20.185305, 25.473619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190315, 20.247704, 25.507336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006756, -0.442037, 0.896971,
		0.177185, 0.883328, 0.433979,
		-0.984154, 0.155998, 0.084290,
		31.895069, 20.294502, 25.532623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478367, 20.398586, 26.116941>,  <32.583977, 20.185305, 25.473619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478367, 20.398586, 26.116941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137665, 20.225471, 25.998814>,  <31.933245, 20.121603, 25.927937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.137665, 20.225471, 25.998814>,  <32.478367, 20.398586, 26.116941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137665, 20.225471, 25.998814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185781, -0.277550, 0.942577,
		-0.489899, 0.857708, 0.156001,
		-0.851754, -0.432785, -0.295318,
		31.882139, 20.095636, 25.910219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311085, 21.021505, 26.573542>,  <32.478367, 20.398586, 26.116941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311085, 21.021505, 26.573542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.415920, 21.192299, 26.919720>,  <32.478821, 21.294775, 27.127426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.415920, 21.192299, 26.919720>,  <32.311085, 21.021505, 26.573542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415920, 21.192299, 26.919720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009064, 0.897843, -0.440223,
		-0.965001, 0.107534, 0.239186,
		0.262091, 0.426983, 0.865444,
		32.494549, 21.320395, 27.179354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764521, 21.589609, 26.780111>,  <32.311085, 21.021505, 26.573542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764521, 21.589609, 26.780111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106556, 21.670906, 26.970905>,  <32.311779, 21.719685, 27.085382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106556, 21.670906, 26.970905>,  <31.764521, 21.589609, 26.780111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106556, 21.670906, 26.970905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031837, 0.938813, -0.342953,
		-0.517504, 0.278070, 0.809239,
		0.855089, 0.203243, 0.476986,
		32.363083, 21.731878, 27.114000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722101, 22.242279, 27.137604>,  <31.764521, 21.589609, 26.780111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722101, 22.242279, 27.137604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115597, 22.201786, 27.078262>,  <32.351696, 22.177490, 27.042658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115597, 22.201786, 27.078262>,  <31.722101, 22.242279, 27.137604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115597, 22.201786, 27.078262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029817, 0.906611, -0.420913,
		0.177110, 0.409645, 0.894887,
		0.983739, -0.101231, -0.148355,
		32.410717, 22.171417, 27.033756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972731, 22.744541, 27.395641>,  <31.722101, 22.242279, 27.137604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972731, 22.744541, 27.395641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.279190, 22.669464, 27.149784>,  <32.463066, 22.624418, 27.002270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.279190, 22.669464, 27.149784>,  <31.972731, 22.744541, 27.395641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279190, 22.669464, 27.149784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076909, 0.976306, -0.202265,
		0.638044, 0.107694, 0.762432,
		0.766150, -0.187691, -0.614643,
		32.509033, 22.613157, 26.965391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385708, 23.367590, 27.434782>,  <31.972731, 22.744541, 27.395641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385708, 23.367590, 27.434782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.544804, 23.194408, 27.111214>,  <32.640263, 23.090500, 26.917072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.544804, 23.194408, 27.111214>,  <32.385708, 23.367590, 27.434782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544804, 23.194408, 27.111214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040334, 0.889058, -0.456014,
		0.916610, 0.148750, 0.371080,
		0.397743, -0.432954, -0.808920,
		32.664127, 23.064522, 26.868538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068924, 23.686945, 27.260592>,  <32.385708, 23.367590, 27.434782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068924, 23.686945, 27.260592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.927158, 23.529278, 26.921410>,  <32.842098, 23.434677, 26.717901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.927158, 23.529278, 26.921410>,  <33.068924, 23.686945, 27.260592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927158, 23.529278, 26.921410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088617, 0.888576, -0.450088,
		0.930881, -0.234659, -0.279992,
		-0.354412, -0.394167, -0.847954,
		32.820835, 23.411028, 26.667023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455482, 24.034998, 26.803503>,  <33.068924, 23.686945, 27.260592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455482, 24.034998, 26.803503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.187031, 23.864880, 26.560616>,  <33.025959, 23.762810, 26.414883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.187031, 23.864880, 26.560616>,  <33.455482, 24.034998, 26.803503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187031, 23.864880, 26.560616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091708, 0.765158, -0.637277,
		0.735648, -0.483381, -0.474516,
		-0.671128, -0.425294, -0.607217,
		32.985691, 23.737291, 26.378450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.714939, 21.483902, 29.302959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.361904, 21.362011, 29.159748>,  <30.150084, 21.288877, 29.073822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.361904, 21.362011, 29.159748>,  <30.714939, 21.483902, 29.302959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361904, 21.362011, 29.159748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206428, 0.935354, -0.287228,
		0.422409, -0.179597, -0.888435,
		-0.882586, -0.304725, -0.358028,
		30.097128, 21.270594, 29.052340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587700, 21.828287, 28.618406>,  <30.714939, 21.483902, 29.302959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587700, 21.828287, 28.618406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.226383, 21.719234, 28.750912>,  <30.009594, 21.653803, 28.830416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.226383, 21.719234, 28.750912>,  <30.587700, 21.828287, 28.618406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226383, 21.719234, 28.750912> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360735, 0.900602, -0.242458,
		-0.232236, -0.338510, -0.911854,
		-0.903292, -0.272630, 0.331265,
		29.955395, 21.637445, 28.850290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134613, 21.996895, 28.056446>,  <30.587700, 21.828287, 28.618406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134613, 21.996895, 28.056446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.887388, 21.952953, 28.367813>,  <29.739054, 21.926588, 28.554632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.887388, 21.952953, 28.367813>,  <30.134613, 21.996895, 28.056446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887388, 21.952953, 28.367813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372590, 0.912844, -0.167013,
		-0.692225, -0.393254, -0.605124,
		-0.618062, -0.109852, 0.778416,
		29.701969, 21.919998, 28.601337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476011, 22.348120, 27.939096>,  <30.134613, 21.996895, 28.056446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476011, 22.348120, 27.939096> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.482922, 22.294109, 28.335373>,  <29.487068, 22.261703, 28.573139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.482922, 22.294109, 28.335373>,  <29.476011, 22.348120, 27.939096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482922, 22.294109, 28.335373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418006, 0.899119, 0.129834,
		-0.908280, -0.416358, -0.040909,
		0.017276, -0.135025, 0.990692,
		29.488104, 22.253601, 28.632580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939816, 22.715878, 28.129133>,  <29.476011, 22.348120, 27.939096>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939816, 22.715878, 28.129133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.120340, 22.673752, 28.483585>,  <29.228655, 22.648476, 28.696257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.120340, 22.673752, 28.483585>,  <28.939816, 22.715878, 28.129133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120340, 22.673752, 28.483585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384934, 0.872898, 0.299792,
		-0.805074, -0.476401, 0.353409,
		0.451311, -0.105316, 0.886130,
		29.255733, 22.642157, 28.749424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.509611, 22.973478, 28.633942>,  <28.939816, 22.715878, 28.129133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.509611, 22.973478, 28.633942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.881510, 22.995262, 28.779602>,  <29.104649, 23.008331, 28.866999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.881510, 22.995262, 28.779602>,  <28.509611, 22.973478, 28.633942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881510, 22.995262, 28.779602> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172796, 0.937863, 0.300923,
		-0.325137, -0.342706, 0.881384,
		0.929746, 0.054458, 0.364152,
		29.160433, 23.011600, 28.888847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.358137, 23.370693, 29.225765>,  <28.509611, 22.973478, 28.633942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.358137, 23.370693, 29.225765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.749821, 23.379215, 29.145077>,  <28.984831, 23.384329, 29.096664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.749821, 23.379215, 29.145077>,  <28.358137, 23.370693, 29.225765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749821, 23.379215, 29.145077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028653, 0.969970, 0.241531,
		0.200810, -0.242290, 0.949195,
		0.979211, 0.021304, -0.201722,
		29.043585, 23.385607, 29.084560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589216, 23.905148, 29.707743>,  <28.358137, 23.370693, 29.225765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589216, 23.905148, 29.707743> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.868683, 23.853863, 29.426197>,  <29.036364, 23.823092, 29.257269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.868683, 23.853863, 29.426197>,  <28.589216, 23.905148, 29.707743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868683, 23.853863, 29.426197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191755, 0.981374, 0.011580,
		0.689270, -0.143060, 0.710239,
		0.698667, -0.128210, -0.703865,
		29.078283, 23.815399, 29.215038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075396, 24.311632, 29.858685>,  <28.589216, 23.905148, 29.707743>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075396, 24.311632, 29.858685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.149843, 24.265690, 29.468369>,  <29.194511, 24.238125, 29.234179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.149843, 24.265690, 29.468369>,  <29.075396, 24.311632, 29.858685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149843, 24.265690, 29.468369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240913, 0.968161, -0.068008,
		0.952534, -0.222423, 0.207862,
		0.186117, -0.114856, -0.975791,
		29.205679, 24.231234, 29.175631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647415, 24.619392, 29.733519>,  <29.075396, 24.311632, 29.858685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647415, 24.619392, 29.733519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.505667, 24.607166, 29.359676>,  <29.420618, 24.599831, 29.135370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.505667, 24.607166, 29.359676>,  <29.647415, 24.619392, 29.733519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505667, 24.607166, 29.359676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359979, 0.917981, -0.166512,
		0.863040, -0.395445, -0.314302,
		-0.354369, -0.030565, -0.934606,
		29.399357, 24.597998, 29.079294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207165, 24.932913, 29.339066>,  <29.647415, 24.619392, 29.733519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207165, 24.932913, 29.339066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.879059, 24.948307, 29.110790>,  <29.682196, 24.957544, 28.973825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.879059, 24.948307, 29.110790>,  <30.207165, 24.932913, 29.339066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879059, 24.948307, 29.110790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148571, 0.977824, -0.147603,
		0.552352, -0.205861, -0.807792,
		-0.820264, 0.038485, -0.570688,
		29.632980, 24.959852, 28.939583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450676, 25.287685, 28.768312>,  <30.207165, 24.932913, 29.339066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450676, 25.287685, 28.768312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.052584, 25.323387, 28.784077>,  <29.813728, 25.344809, 28.793535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.052584, 25.323387, 28.784077>,  <30.450676, 25.287685, 28.768312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052584, 25.323387, 28.784077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071530, 0.942169, -0.327417,
		-0.066356, -0.323036, -0.944058,
		-0.995229, 0.089254, 0.039412,
		29.754015, 25.350163, 28.795900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962755, 24.948650, 28.240551>,  <30.450676, 25.287685, 28.768312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962755, 24.948650, 28.240551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.312235, 25.087009, 28.377377>,  <31.521923, 25.170025, 28.459471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.312235, 25.087009, 28.377377>,  <30.962755, 24.948650, 28.240551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312235, 25.087009, 28.377377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100199, -0.816033, 0.569254,
		0.476037, -0.463082, -0.747625,
		0.873698, 0.345897, 0.342062,
		31.574345, 25.190779, 28.479996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436722, 24.363491, 28.159971>,  <30.962755, 24.948650, 28.240551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436722, 24.363491, 28.159971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.601933, 24.597321, 28.439308>,  <31.701059, 24.737619, 28.606911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.601933, 24.597321, 28.439308>,  <31.436722, 24.363491, 28.159971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601933, 24.597321, 28.439308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306583, -0.811295, 0.497802,
		0.857564, 0.008495, -0.514307,
		0.413027, 0.584575, 0.698342,
		31.725840, 24.772694, 28.648811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997410, 23.963844, 28.383366>,  <31.436722, 24.363491, 28.159971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997410, 23.963844, 28.383366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.924376, 24.227020, 28.675606>,  <31.880554, 24.384926, 28.850950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.924376, 24.227020, 28.675606>,  <31.997410, 23.963844, 28.383366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924376, 24.227020, 28.675606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083907, -0.729953, 0.678327,
		0.979603, 0.185156, 0.078074,
		-0.182587, 0.657940, 0.730600,
		31.869600, 24.424402, 28.894787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548561, 23.718521, 28.787331>,  <31.997410, 23.963844, 28.383366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548561, 23.718521, 28.787331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.282192, 23.910725, 29.015598>,  <32.122372, 24.026047, 29.152559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.282192, 23.910725, 29.015598>,  <32.548561, 23.718521, 28.787331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282192, 23.910725, 29.015598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210872, -0.612513, 0.761814,
		0.715601, 0.627645, 0.306557,
		-0.665919, 0.480511, 0.570668,
		32.082417, 24.054878, 29.186798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860474, 23.684145, 29.475031>,  <32.548561, 23.718521, 28.787331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860474, 23.684145, 29.475031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.473171, 23.760731, 29.539314>,  <32.240791, 23.806683, 29.577885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.473171, 23.760731, 29.539314>,  <32.860474, 23.684145, 29.475031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473171, 23.760731, 29.539314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006324, -0.661468, 0.749946,
		0.249890, 0.725122, 0.641680,
		-0.968254, 0.191462, 0.160708,
		32.182693, 23.818169, 29.587526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793678, 23.767448, 30.207603>,  <32.860474, 23.684145, 29.475031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793678, 23.767448, 30.207603> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.417625, 23.707016, 30.085407>,  <32.191994, 23.670757, 30.012089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.417625, 23.707016, 30.085407>,  <32.793678, 23.767448, 30.207603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417625, 23.707016, 30.085407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124453, -0.682276, 0.720424,
		-0.317272, 0.715313, 0.622628,
		-0.940133, -0.151082, -0.305490,
		32.135586, 23.661692, 29.993761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485706, 23.653633, 30.811869>,  <32.793678, 23.767448, 30.207603>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485706, 23.653633, 30.811869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.219429, 23.497639, 30.557384>,  <32.059662, 23.404041, 30.404694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.219429, 23.497639, 30.557384>,  <32.485706, 23.653633, 30.811869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219429, 23.497639, 30.557384> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142860, -0.770198, 0.621600,
		-0.732422, 0.504685, 0.457002,
		-0.665694, -0.389986, -0.636209,
		32.019722, 23.380642, 30.366522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993286, 23.367296, 31.237091>,  <32.485706, 23.653633, 30.811869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993286, 23.367296, 31.237091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.975431, 23.170891, 30.889088>,  <31.964718, 23.053047, 30.680286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.975431, 23.170891, 30.889088>,  <31.993286, 23.367296, 31.237091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975431, 23.170891, 30.889088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129766, -0.860646, 0.492391,
		-0.990539, 0.134877, -0.025299,
		-0.044639, -0.491016, -0.870007,
		31.962040, 23.023586, 30.628086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513468, 22.892817, 31.256052>,  <31.993286, 23.367296, 31.237091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513468, 22.892817, 31.256052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.701563, 22.753071, 30.931873>,  <31.814419, 22.669224, 30.737366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.701563, 22.753071, 30.931873>,  <31.513468, 22.892817, 31.256052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.701563, 22.753071, 30.931873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037160, -0.925334, 0.377327,
		-0.881758, -0.147316, -0.448108,
		0.470236, -0.349363, -0.810447,
		31.842634, 22.648262, 30.688740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123037, 22.406282, 31.046684>,  <31.513468, 22.892817, 31.256052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123037, 22.406282, 31.046684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.459776, 22.285080, 30.868031>,  <31.661819, 22.212358, 30.760839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.459776, 22.285080, 30.868031>,  <31.123037, 22.406282, 31.046684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459776, 22.285080, 30.868031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214002, -0.947102, 0.239169,
		-0.495475, -0.105764, -0.862159,
		0.841848, -0.303006, -0.446632,
		31.712330, 22.194178, 30.734041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950394, 21.819464, 30.620821>,  <31.123037, 22.406282, 31.046684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950394, 21.819464, 30.620821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.343544, 21.765770, 30.671310>,  <31.579435, 21.733553, 30.701605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.343544, 21.765770, 30.671310>,  <30.950394, 21.819464, 30.620821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343544, 21.765770, 30.671310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137089, -0.990457, 0.014158,
		0.123120, -0.031219, -0.991900,
		0.982877, -0.134236, 0.126225,
		31.638407, 21.725500, 30.709179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031057, 21.186838, 30.424227>,  <30.950394, 21.819464, 30.620821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031057, 21.186838, 30.424227> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.391361, 21.217129, 30.595291>,  <31.607544, 21.235304, 30.697929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.391361, 21.217129, 30.595291>,  <31.031057, 21.186838, 30.424227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391361, 21.217129, 30.595291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012432, -0.979783, 0.199678,
		0.434137, -0.185179, -0.881609,
		0.900761, 0.075728, 0.427662,
		31.661589, 21.239847, 30.723589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440639, 20.625656, 30.212727>,  <31.031057, 21.186838, 30.424227>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440639, 20.625656, 30.212727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.591801, 20.740406, 30.564838>,  <31.682497, 20.809256, 30.776106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.591801, 20.740406, 30.564838>,  <31.440639, 20.625656, 30.212727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591801, 20.740406, 30.564838> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065599, -0.940099, 0.334531,
		0.923518, -0.184166, -0.336447,
		0.377903, 0.286875, 0.880280,
		31.705172, 20.826468, 30.828922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838385, 20.205845, 30.357248>,  <31.440639, 20.625656, 30.212727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838385, 20.205845, 30.357248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.730478, 20.337082, 30.719372>,  <31.665735, 20.415823, 30.936646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.730478, 20.337082, 30.719372>,  <31.838385, 20.205845, 30.357248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730478, 20.337082, 30.719372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237624, -0.933770, 0.267598,
		0.933146, -0.142934, 0.329861,
		-0.269765, 0.328090, 0.905308,
		31.649549, 20.435509, 30.990965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965843, 19.712603, 30.031937>,  <31.838385, 20.205845, 30.357248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965843, 19.712603, 30.031937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.219902, 19.561974, 29.762188>,  <32.372337, 19.471596, 29.600338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.219902, 19.561974, 29.762188>,  <31.965843, 19.712603, 30.031937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219902, 19.561974, 29.762188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024968, 0.862633, -0.505213,
		0.771987, 0.337724, 0.538498,
		0.635148, -0.376573, -0.674374,
		32.410446, 19.449001, 29.559875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503544, 20.243822, 29.954472>,  <31.965843, 19.712603, 30.031937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503544, 20.243822, 29.954472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.514744, 20.017826, 29.624622>,  <32.521465, 19.882229, 29.426712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.514744, 20.017826, 29.624622>,  <32.503544, 20.243822, 29.954472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514744, 20.017826, 29.624622> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049618, 0.824716, -0.563367,
		0.998376, -0.025141, 0.051126,
		0.028001, -0.564988, -0.824624,
		32.523144, 19.848330, 29.377235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978230, 20.565981, 29.562988>,  <32.503544, 20.243822, 29.954472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978230, 20.565981, 29.562988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.825584, 20.337738, 29.272118>,  <32.733997, 20.200792, 29.097595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.825584, 20.337738, 29.272118>,  <32.978230, 20.565981, 29.562988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825584, 20.337738, 29.272118> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112825, 0.752072, -0.649352,
		0.917412, -0.329842, -0.222619,
		-0.381609, -0.570607, -0.727175,
		32.711102, 20.166555, 29.053965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421978, 20.537100, 29.015909>,  <32.978230, 20.565981, 29.562988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421978, 20.537100, 29.015909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.072178, 20.432621, 28.852432>,  <32.862297, 20.369934, 28.754347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.072178, 20.432621, 28.852432>,  <33.421978, 20.537100, 29.015909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072178, 20.432621, 28.852432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125961, 0.691403, -0.711404,
		0.468387, -0.673600, -0.571731,
		-0.874498, -0.261197, -0.408692,
		32.809830, 20.354261, 28.729824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587132, 20.661255, 28.325306>,  <33.421978, 20.537100, 29.015909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587132, 20.661255, 28.325306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.188751, 20.626968, 28.336121>,  <32.949722, 20.606396, 28.342609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.188751, 20.626968, 28.336121>,  <33.587132, 20.661255, 28.325306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188751, 20.626968, 28.336121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071890, 0.579177, -0.812026,
		0.053947, -0.810683, -0.582995,
		-0.995953, -0.085718, 0.027035,
		32.889965, 20.601254, 28.344231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396526, 20.519850, 27.638021>,  <33.587132, 20.661255, 28.325306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396526, 20.519850, 27.638021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.044411, 20.647522, 27.778427>,  <32.833141, 20.724125, 27.862671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.044411, 20.647522, 27.778427>,  <33.396526, 20.519850, 27.638021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044411, 20.647522, 27.778427> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155735, 0.504463, -0.849273,
		-0.448147, -0.802272, -0.394366,
		-0.880290, 0.319183, 0.351015,
		32.780323, 20.743277, 27.883732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776619, 20.486368, 27.095095>,  <33.396526, 20.519850, 27.638021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776619, 20.486368, 27.095095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.713142, 20.767746, 27.372219>,  <32.675056, 20.936573, 27.538494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.713142, 20.767746, 27.372219>,  <32.776619, 20.486368, 27.095095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713142, 20.767746, 27.372219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116234, 0.683511, -0.720626,
		-0.980462, -0.194885, -0.026703,
		-0.158691, 0.703443, 0.692809,
		32.665535, 20.978779, 27.580061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013058, 20.386988, 26.811819>,  <32.776619, 20.486368, 27.095095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013058, 20.386988, 26.811819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864100, 20.140129, 26.534561>,  <31.774725, 19.992014, 26.368206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864100, 20.140129, 26.534561>,  <32.013058, 20.386988, 26.811819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864100, 20.140129, 26.534561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220921, -0.666449, 0.712067,
		-0.901397, 0.418301, 0.111842,
		-0.372395, -0.617146, -0.693146,
		31.752380, 19.954985, 26.326616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554972, 20.066875, 27.236822>,  <32.013058, 20.386988, 26.811819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554972, 20.066875, 27.236822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.623602, 19.820900, 26.928947>,  <31.664780, 19.673315, 26.744223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.623602, 19.820900, 26.928947>,  <31.554972, 20.066875, 27.236822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623602, 19.820900, 26.928947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186680, -0.787409, 0.587485,
		-0.967323, 0.042888, -0.249894,
		0.171573, -0.614938, -0.769685,
		31.675074, 19.636419, 26.698042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048819, 19.675493, 27.334887>,  <31.554972, 20.066875, 27.236822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048819, 19.675493, 27.334887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.277994, 19.457878, 27.089687>,  <31.415499, 19.327309, 26.942568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.277994, 19.457878, 27.089687>,  <31.048819, 19.675493, 27.334887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277994, 19.457878, 27.089687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289691, -0.834068, 0.469478,
		-0.766694, -0.091403, -0.635473,
		0.572940, -0.544037, -0.612996,
		31.449875, 19.294666, 26.905788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632111, 19.066803, 27.170523>,  <31.048819, 19.675493, 27.334887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632111, 19.066803, 27.170523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.008446, 18.968281, 27.077435>,  <31.234247, 18.909168, 27.021582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.008446, 18.968281, 27.077435>,  <30.632111, 19.066803, 27.170523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008446, 18.968281, 27.077435> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186801, -0.949990, 0.250250,
		-0.282721, -0.191972, -0.939795,
		0.940837, -0.246305, -0.232722,
		31.290697, 18.894390, 27.007618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585926, 18.308052, 26.919783>,  <30.632111, 19.066803, 27.170523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585926, 18.308052, 26.919783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.978151, 18.364735, 26.974068>,  <31.213486, 18.398745, 27.006639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.978151, 18.364735, 26.974068>,  <30.585926, 18.308052, 26.919783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978151, 18.364735, 26.974068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081626, -0.923581, 0.374614,
		0.178428, -0.356255, -0.917195,
		0.980561, 0.141708, 0.135713,
		31.272320, 18.407248, 27.014782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835730, 17.564535, 26.864134>,  <30.585926, 18.308052, 26.919783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835730, 17.564535, 26.864134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.109236, 17.786919, 27.053185>,  <31.273338, 17.920349, 27.166615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.109236, 17.786919, 27.053185>,  <30.835730, 17.564535, 26.864134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109236, 17.786919, 27.053185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223488, -0.776125, 0.589647,
		0.694637, -0.297553, -0.654936,
		0.683764, 0.555961, 0.472625,
		31.314365, 17.953707, 27.194973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372068, 17.092875, 26.906273>,  <30.835730, 17.564535, 26.864134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372068, 17.092875, 26.906273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.402159, 17.387775, 27.174839>,  <31.420214, 17.564716, 27.335979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.402159, 17.387775, 27.174839>,  <31.372068, 17.092875, 26.906273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402159, 17.387775, 27.174839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096807, -0.675542, 0.730939,
		0.992456, 0.010012, -0.122190,
		0.075226, 0.737254, 0.671415,
		31.424726, 17.608952, 27.376263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966343, 16.901524, 27.358641>,  <31.372068, 17.092875, 26.906273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966343, 16.901524, 27.358641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.745302, 17.147987, 27.583134>,  <31.612679, 17.295866, 27.717829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.745302, 17.147987, 27.583134>,  <31.966343, 16.901524, 27.358641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745302, 17.147987, 27.583134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101314, -0.618731, 0.779042,
		0.827264, 0.487361, 0.279487,
		-0.552602, 0.616158, 0.561231,
		31.579521, 17.332834, 27.751503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336399, 16.984938, 27.976770>,  <31.966343, 16.901524, 27.358641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336399, 16.984938, 27.976770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.955099, 17.087402, 28.040897>,  <31.726320, 17.148880, 28.079372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.955099, 17.087402, 28.040897>,  <32.336399, 16.984938, 27.976770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955099, 17.087402, 28.040897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044548, -0.643836, 0.763866,
		0.298888, 0.721011, 0.625147,
		-0.953248, 0.256159, 0.160316,
		31.669125, 17.164249, 28.088991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<29.723677, 30.250866, 18.678524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426748, 30.077362, 18.882801>,  <29.248590, 29.973259, 19.005367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426748, 30.077362, 18.882801>,  <29.723677, 30.250866, 18.678524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426748, 30.077362, 18.882801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572285, -0.806856, 0.146540,
		0.348493, 0.401042, 0.847182,
		-0.742322, -0.433761, 0.510694,
		29.204052, 29.947233, 19.036009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146349, 29.898964, 19.151871>,  <29.723677, 30.250866, 18.678524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146349, 29.898964, 19.151871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781946, 29.734329, 19.162136>,  <29.563305, 29.635548, 19.168295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781946, 29.734329, 19.162136>,  <30.146349, 29.898964, 19.151871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781946, 29.734329, 19.162136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396533, -0.857196, 0.328596,
		-0.113249, 0.309530, 0.944122,
		-0.911008, -0.411589, 0.025662,
		29.508644, 29.610853, 19.169834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997890, 29.602312, 19.884764>,  <30.146349, 29.898964, 19.151871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997890, 29.602312, 19.884764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755594, 29.410843, 19.630535>,  <29.610216, 29.295961, 19.477999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755594, 29.410843, 19.630535>,  <29.997890, 29.602312, 19.884764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755594, 29.410843, 19.630535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342511, -0.877867, 0.334718,
		-0.718165, -0.014937, 0.695712,
		-0.605743, -0.478672, -0.635570,
		29.573872, 29.267241, 19.439865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650221, 29.154699, 20.274834>,  <29.997890, 29.602312, 19.884764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650221, 29.154699, 20.274834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635048, 29.004200, 19.904537>,  <29.625944, 28.913900, 19.682360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635048, 29.004200, 19.904537>,  <29.650221, 29.154699, 20.274834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635048, 29.004200, 19.904537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060607, -0.925569, 0.373696,
		-0.997441, -0.041931, 0.057912,
		-0.037932, -0.376249, -0.925742,
		29.623669, 28.891325, 19.626814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243015, 28.639639, 20.339396>,  <29.650221, 29.154699, 20.274834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243015, 28.639639, 20.339396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.408764, 28.544960, 19.987881>,  <29.508213, 28.488152, 19.776972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.408764, 28.544960, 19.987881>,  <29.243015, 28.639639, 20.339396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408764, 28.544960, 19.987881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105948, -0.946477, 0.304888,
		-0.903919, -0.219444, -0.367118,
		0.414374, -0.236698, -0.878788,
		29.533075, 28.473951, 19.724245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921951, 27.972254, 20.134289>,  <29.243015, 28.639639, 20.339396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921951, 27.972254, 20.134289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282171, 28.044334, 19.976028>,  <29.498302, 28.087584, 19.881071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.282171, 28.044334, 19.976028>,  <28.921951, 27.972254, 20.134289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282171, 28.044334, 19.976028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300901, -0.915211, 0.268044,
		-0.313803, -0.360438, -0.878415,
		0.900548, 0.180203, -0.395652,
		29.552336, 28.098394, 19.857332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120096, 27.313002, 19.859488>,  <28.921951, 27.972254, 20.134289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120096, 27.313002, 19.859488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474907, 27.497650, 19.855770>,  <29.687794, 27.608440, 19.853540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.474907, 27.497650, 19.855770>,  <29.120096, 27.313002, 19.859488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.474907, 27.497650, 19.855770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443226, -0.845695, 0.297238,
		0.129352, -0.267778, -0.954758,
		0.887028, 0.461622, -0.009294,
		29.741014, 27.636137, 19.852982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586246, 26.892813, 19.505615>,  <29.120096, 27.313002, 19.859488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586246, 26.892813, 19.505615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824211, 27.123798, 19.729263>,  <29.966990, 27.262390, 19.863453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824211, 27.123798, 19.729263>,  <29.586246, 26.892813, 19.505615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824211, 27.123798, 19.729263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492597, -0.811600, 0.314093,
		0.635159, 0.088564, -0.767287,
		0.594912, 0.577462, 0.559121,
		30.002686, 27.297037, 19.896999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148985, 26.471951, 19.616858>,  <29.586246, 26.892813, 19.505615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148985, 26.471951, 19.616858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215349, 26.753384, 19.893246>,  <30.255167, 26.922243, 20.059078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215349, 26.753384, 19.893246>,  <30.148985, 26.471951, 19.616858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215349, 26.753384, 19.893246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574055, -0.638633, 0.512453,
		0.801832, 0.311634, -0.509853,
		0.165911, 0.703585, 0.690971,
		30.265123, 26.964458, 20.100536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908140, 26.574041, 19.531332>,  <30.148985, 26.471951, 19.616858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908140, 26.574041, 19.531332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774321, 26.707603, 19.883827>,  <30.694029, 26.787741, 20.095324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774321, 26.707603, 19.883827>,  <30.908140, 26.574041, 19.531332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774321, 26.707603, 19.883827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674347, -0.568387, 0.471373,
		0.658279, 0.751959, -0.035015,
		-0.334551, 0.333907, 0.881239,
		30.673956, 26.807775, 20.148199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466368, 26.817688, 19.904377>,  <30.908140, 26.574041, 19.531332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466368, 26.817688, 19.904377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198750, 26.781818, 20.199493>,  <31.038179, 26.760296, 20.376564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198750, 26.781818, 20.199493>,  <31.466368, 26.817688, 19.904377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198750, 26.781818, 20.199493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714582, -0.350534, 0.605391,
		0.204334, 0.932247, 0.298602,
		-0.669044, -0.089674, 0.737793,
		30.998035, 26.754917, 20.420832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851557, 26.957556, 20.576334>,  <31.466368, 26.817688, 19.904377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851557, 26.957556, 20.576334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525537, 26.743919, 20.666172>,  <31.329926, 26.615738, 20.720076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525537, 26.743919, 20.666172>,  <31.851557, 26.957556, 20.576334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525537, 26.743919, 20.666172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542147, -0.566276, 0.620813,
		-0.204387, 0.627756, 0.751098,
		-0.815048, -0.534092, 0.224596,
		31.281023, 26.583693, 20.733551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372566, 27.263109, 20.903215>,  <31.851557, 26.957556, 20.576334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372566, 27.263109, 20.903215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604931, 27.411247, 21.193150>,  <32.744350, 27.500130, 21.367109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604931, 27.411247, 21.193150>,  <32.372566, 27.263109, 20.903215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604931, 27.411247, 21.193150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331233, 0.705872, -0.626123,
		-0.743523, 0.603811, 0.287378,
		0.580912, 0.370347, 0.724834,
		32.779205, 27.522352, 21.410601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203056, 28.063263, 21.019567>,  <32.372566, 27.263109, 20.903215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203056, 28.063263, 21.019567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578960, 28.021297, 21.149696>,  <32.804504, 27.996119, 21.227774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578960, 28.021297, 21.149696>,  <32.203056, 28.063263, 21.019567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578960, 28.021297, 21.149696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274408, 0.799050, -0.534995,
		-0.203822, 0.592041, 0.779708,
		0.939764, -0.104914, 0.325324,
		32.860889, 27.989822, 21.247293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466625, 28.767277, 21.147409>,  <32.203056, 28.063263, 21.019567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466625, 28.767277, 21.147409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797119, 28.542118, 21.138683>,  <32.995415, 28.407022, 21.133448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.797119, 28.542118, 21.138683>,  <32.466625, 28.767277, 21.147409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797119, 28.542118, 21.138683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502323, 0.753745, -0.423721,
		0.254953, 0.339137, 0.905530,
		0.826239, -0.562898, -0.021813,
		33.044991, 28.373249, 21.132139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062206, 29.275103, 21.293301>,  <32.466625, 28.767277, 21.147409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062206, 29.275103, 21.293301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241051, 28.956768, 21.129967>,  <33.348358, 28.765766, 21.031967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241051, 28.956768, 21.129967>,  <33.062206, 29.275103, 21.293301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241051, 28.956768, 21.129967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547856, 0.604506, -0.578296,
		0.707071, 0.034853, 0.706284,
		0.447108, -0.795838, -0.408334,
		33.375183, 28.718016, 21.007467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725540, 29.378349, 21.416557>,  <33.062206, 29.275103, 21.293301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725540, 29.378349, 21.416557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717915, 29.136890, 21.097748>,  <33.713337, 28.992016, 20.906462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717915, 29.136890, 21.097748>,  <33.725540, 29.378349, 21.416557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717915, 29.136890, 21.097748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739266, 0.528195, -0.417727,
		0.673143, -0.597179, 0.436183,
		-0.019068, -0.603646, -0.797025,
		33.712193, 28.955797, 20.858641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387367, 29.359989, 21.200657>,  <33.725540, 29.378349, 21.416557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387367, 29.359989, 21.200657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210060, 29.253551, 20.858265>,  <34.103676, 29.189690, 20.652830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210060, 29.253551, 20.858265>,  <34.387367, 29.359989, 21.200657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210060, 29.253551, 20.858265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557138, 0.666287, -0.495639,
		0.702217, -0.696602, -0.147093,
		-0.443270, -0.266096, -0.855982,
		34.077080, 29.173723, 20.601471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920162, 29.230656, 20.734190>,  <34.387367, 29.359989, 21.200657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920162, 29.230656, 20.734190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605377, 29.289837, 20.494591>,  <34.416508, 29.325346, 20.350830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605377, 29.289837, 20.494591>,  <34.920162, 29.230656, 20.734190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605377, 29.289837, 20.494591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511804, 0.698745, -0.499812,
		0.344598, -0.699903, -0.625609,
		-0.786962, 0.147955, -0.598999,
		34.369289, 29.334223, 20.314892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179279, 29.218649, 20.046156>,  <34.920162, 29.230656, 20.734190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179279, 29.218649, 20.046156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823616, 29.400177, 20.022701>,  <34.610218, 29.509094, 20.008629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823616, 29.400177, 20.022701>,  <35.179279, 29.218649, 20.046156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823616, 29.400177, 20.022701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395543, 0.697829, -0.597144,
		-0.230076, -0.554152, -0.799988,
		-0.889163, 0.453818, -0.058637,
		34.556866, 29.536322, 20.005110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135841, 29.365517, 19.284376>,  <35.179279, 29.218649, 20.046156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135841, 29.365517, 19.284376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880787, 29.594643, 19.490406>,  <34.727753, 29.732119, 19.614023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880787, 29.594643, 19.490406>,  <35.135841, 29.365517, 19.284376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880787, 29.594643, 19.490406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380762, 0.815606, -0.435668,
		-0.669653, -0.081679, -0.738169,
		-0.637641, 0.572813, 0.515073,
		34.689495, 29.766487, 19.644928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803402, 29.832632, 18.806376>,  <35.135841, 29.365517, 19.284376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803402, 29.832632, 18.806376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827644, 30.000401, 19.168682>,  <34.842190, 30.101063, 19.386066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827644, 30.000401, 19.168682>,  <34.803402, 29.832632, 18.806376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827644, 30.000401, 19.168682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302742, 0.856966, -0.417080,
		-0.951144, 0.299489, -0.075043,
		0.060602, 0.419422, 0.905766,
		34.845825, 30.126226, 19.440413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587555, 30.607616, 18.706270>,  <34.803402, 29.832632, 18.806376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587555, 30.607616, 18.706270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786934, 30.616589, 19.052921>,  <34.906563, 30.621971, 19.260912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786934, 30.616589, 19.052921>,  <34.587555, 30.607616, 18.706270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786934, 30.616589, 19.052921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301524, 0.932765, -0.197564,
		-0.812793, 0.359785, 0.458172,
		0.498448, 0.022429, 0.866630,
		34.936470, 30.623318, 19.312910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327793, 31.259321, 18.953037>,  <34.587555, 30.607616, 18.706270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327793, 31.259321, 18.953037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648628, 31.127216, 19.152069>,  <34.841129, 31.047953, 19.271488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648628, 31.127216, 19.152069>,  <34.327793, 31.259321, 18.953037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648628, 31.127216, 19.152069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316667, 0.941598, 0.114518,
		-0.506340, 0.065713, 0.859826,
		0.802086, -0.330264, 0.497578,
		34.889256, 31.028137, 19.301342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311348, 31.690090, 19.506260>,  <34.327793, 31.259321, 18.953037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311348, 31.690090, 19.506260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685013, 31.548309, 19.489697>,  <34.909210, 31.463242, 19.479759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685013, 31.548309, 19.489697>,  <34.311348, 31.690090, 19.506260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685013, 31.548309, 19.489697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354652, 0.934995, -0.002628,
		0.039646, -0.012230, 0.999139,
		0.934157, -0.354451, -0.041406,
		34.965260, 31.441975, 19.477274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622406, 31.897152, 20.152788>,  <34.311348, 31.690090, 19.506260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622406, 31.897152, 20.152788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893013, 31.844688, 19.862926>,  <35.055378, 31.813210, 19.689009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893013, 31.844688, 19.862926>,  <34.622406, 31.897152, 20.152788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893013, 31.844688, 19.862926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428747, 0.870197, 0.242761,
		0.598752, -0.474925, 0.644936,
		0.676514, -0.131160, -0.724655,
		35.095966, 31.805340, 19.645531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136459, 32.293430, 20.562321>,  <34.622406, 31.897152, 20.152788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136459, 32.293430, 20.562321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356358, 32.485783, 20.835533>,  <34.488297, 32.601192, 20.999460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356358, 32.485783, 20.835533>,  <34.136459, 32.293430, 20.562321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356358, 32.485783, 20.835533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287813, -0.658570, 0.695305,
		0.784183, -0.578828, -0.223643,
		0.549747, 0.480879, 0.683033,
		34.521282, 32.630047, 21.040443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693611, 31.876266, 20.966127>,  <34.136459, 32.293430, 20.562321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693611, 31.876266, 20.966127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578098, 32.177635, 21.202419>,  <34.508789, 32.358456, 21.344194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578098, 32.177635, 21.202419>,  <34.693611, 31.876266, 20.966127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578098, 32.177635, 21.202419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033811, -0.608605, 0.792753,
		0.956797, 0.248906, 0.150281,
		-0.288783, 0.753423, 0.590728,
		34.491463, 32.403664, 21.379637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101974, 31.954353, 21.641037>,  <34.693611, 31.876266, 20.966127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101974, 31.954353, 21.641037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724846, 32.086742, 21.656754>,  <34.498569, 32.166176, 21.666183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.724846, 32.086742, 21.656754>,  <35.101974, 31.954353, 21.641037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724846, 32.086742, 21.656754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155610, -0.541359, 0.826266,
		0.294742, 0.772908, 0.561908,
		-0.942822, 0.330974, 0.039289,
		34.441998, 32.186035, 21.668541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978687, 32.130013, 22.397219>,  <35.101974, 31.954353, 21.641037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978687, 32.130013, 22.397219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620766, 32.064293, 22.231171>,  <34.406013, 32.024860, 22.131542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620766, 32.064293, 22.231171>,  <34.978687, 32.130013, 22.397219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620766, 32.064293, 22.231171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311119, -0.437389, 0.843739,
		-0.320197, 0.884136, 0.340262,
		-0.894807, -0.164301, -0.415122,
		34.352325, 32.015003, 22.106634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473888, 32.054161, 22.861149>,  <34.978687, 32.130013, 22.397219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473888, 32.054161, 22.861149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287186, 31.880249, 22.553097>,  <34.175163, 31.775902, 22.368265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287186, 31.880249, 22.553097>,  <34.473888, 32.054161, 22.861149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287186, 31.880249, 22.553097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464483, -0.620520, 0.631831,
		-0.752591, 0.652624, 0.087684,
		-0.466758, -0.434783, -0.770130,
		34.147160, 31.749815, 22.322058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776173, 31.928940, 23.143038>,  <34.473888, 32.054161, 22.861149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776173, 31.928940, 23.143038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838184, 31.686180, 22.831234>,  <33.875393, 31.540524, 22.644152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838184, 31.686180, 22.831234>,  <33.776173, 31.928940, 23.143038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838184, 31.686180, 22.831234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364595, -0.768500, 0.525813,
		-0.918169, 0.202688, -0.340415,
		0.155033, -0.606899, -0.779512,
		33.884693, 31.504110, 22.597380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135292, 31.532444, 23.032808>,  <33.776173, 31.928940, 23.143038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135292, 31.532444, 23.032808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401924, 31.299889, 22.846195>,  <33.561905, 31.160355, 22.734228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401924, 31.299889, 22.846195>,  <33.135292, 31.532444, 23.032808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401924, 31.299889, 22.846195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454889, -0.813074, 0.363300,
		-0.590543, -0.029950, -0.806450,
		0.666585, -0.581389, -0.466532,
		33.601898, 31.125471, 22.706236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748634, 30.982187, 22.722374>,  <33.135292, 31.532444, 23.032808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748634, 30.982187, 22.722374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130119, 30.862400, 22.711407>,  <33.359009, 30.790527, 22.704826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130119, 30.862400, 22.711407>,  <32.748634, 30.982187, 22.722374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130119, 30.862400, 22.711407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288131, -0.936083, 0.201813,
		-0.086103, -0.184571, -0.979040,
		0.953712, -0.299469, -0.027419,
		33.416233, 30.772560, 22.703180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721741, 30.294735, 22.384544>,  <32.748634, 30.982187, 22.722374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721741, 30.294735, 22.384544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066875, 30.326832, 22.584171>,  <33.273956, 30.346090, 22.703947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066875, 30.326832, 22.584171>,  <32.721741, 30.294735, 22.384544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066875, 30.326832, 22.584171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196006, -0.856959, 0.476658,
		0.465930, -0.509100, -0.723690,
		0.862839, 0.080242, 0.499069,
		33.325726, 30.350904, 22.733892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067455, 29.562050, 22.349665>,  <32.721741, 30.294735, 22.384544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067455, 29.562050, 22.349665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211178, 29.765755, 22.662472>,  <33.297413, 29.887978, 22.850157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.211178, 29.765755, 22.662472>,  <33.067455, 29.562050, 22.349665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211178, 29.765755, 22.662472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201667, -0.775807, 0.597874,
		0.911169, -0.372527, -0.176051,
		0.359306, 0.509260, 0.782019,
		33.318970, 29.918533, 22.897078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543957, 29.080355, 22.778105>,  <33.067455, 29.562050, 22.349665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543957, 29.080355, 22.778105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466198, 29.378864, 23.032753>,  <33.419544, 29.557970, 23.185543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466198, 29.378864, 23.032753>,  <33.543957, 29.080355, 22.778105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466198, 29.378864, 23.032753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230855, -0.665580, 0.709724,
		0.953371, -0.009000, 0.301667,
		-0.194397, 0.746272, 0.636622,
		33.407879, 29.602745, 23.223740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935276, 28.925819, 23.342030>,  <33.543957, 29.080355, 22.778105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935276, 28.925819, 23.342030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635479, 29.155743, 23.473400>,  <33.455601, 29.293695, 23.552223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635479, 29.155743, 23.473400>,  <33.935276, 28.925819, 23.342030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635479, 29.155743, 23.473400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164718, -0.642414, 0.748446,
		0.641198, 0.506854, 0.576163,
		-0.749489, 0.574807, 0.328427,
		33.410633, 29.328184, 23.571928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983173, 28.822147, 24.061630>,  <33.935276, 28.925819, 23.342030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983173, 28.822147, 24.061630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622383, 28.989494, 24.018921>,  <33.405907, 29.089903, 23.993296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622383, 28.989494, 24.018921>,  <33.983173, 28.822147, 24.061630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622383, 28.989494, 24.018921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292518, -0.410201, 0.863810,
		0.317593, 0.810372, 0.492373,
		-0.901980, 0.418368, -0.106772,
		33.351788, 29.115005, 23.986889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711765, 29.104763, 24.759830>,  <33.983173, 28.822147, 24.061630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711765, 29.104763, 24.759830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401382, 29.066597, 24.510418>,  <33.215153, 29.043697, 24.360771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401382, 29.066597, 24.510418>,  <33.711765, 29.104763, 24.759830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401382, 29.066597, 24.510418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512225, -0.481577, 0.711133,
		-0.368132, 0.871194, 0.324806,
		-0.775954, -0.095417, -0.623531,
		33.168594, 29.037971, 24.323359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073662, 29.337902, 25.182940>,  <33.711765, 29.104763, 24.759830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073662, 29.337902, 25.182940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982052, 29.082756, 24.888817>,  <32.927086, 28.929668, 24.712343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.982052, 29.082756, 24.888817>,  <33.073662, 29.337902, 25.182940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982052, 29.082756, 24.888817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707691, -0.409555, 0.575707,
		-0.668372, 0.652219, -0.357615,
		-0.229024, -0.637867, -0.735305,
		32.913345, 28.891396, 24.668226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397346, 29.183006, 25.341467>,  <33.073662, 29.337902, 25.182940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397346, 29.183006, 25.341467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485828, 28.910229, 25.062607>,  <32.538918, 28.746563, 24.895290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485828, 28.910229, 25.062607>,  <32.397346, 29.183006, 25.341467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485828, 28.910229, 25.062607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603957, -0.657072, 0.451101,
		-0.765704, 0.321262, -0.557214,
		0.221209, -0.681943, -0.697151,
		32.552193, 28.705647, 24.853462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801838, 28.921257, 24.957579>,  <32.397346, 29.183006, 25.341467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801838, 28.921257, 24.957579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083977, 28.639080, 24.985397>,  <32.253262, 28.469774, 25.002089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083977, 28.639080, 24.985397>,  <31.801838, 28.921257, 24.957579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083977, 28.639080, 24.985397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654035, -0.609816, 0.447618,
		-0.273358, -0.361212, -0.891516,
		0.705346, -0.705443, 0.069547,
		32.295582, 28.427446, 25.006262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348894, 28.337156, 25.023773>,  <31.801838, 28.921257, 24.957579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348894, 28.337156, 25.023773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715359, 28.201244, 25.108814>,  <31.935238, 28.119698, 25.159840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715359, 28.201244, 25.108814>,  <31.348894, 28.337156, 25.023773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715359, 28.201244, 25.108814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393639, -0.662853, 0.636926,
		-0.075488, -0.667215, -0.741030,
		0.916161, -0.339778, 0.212604,
		31.990208, 28.099310, 25.172596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273685, 27.556505, 25.136421>,  <31.348894, 28.337156, 25.023773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273685, 27.556505, 25.136421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630434, 27.657764, 25.286343>,  <31.844484, 27.718519, 25.376297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630434, 27.657764, 25.286343>,  <31.273685, 27.556505, 25.136421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630434, 27.657764, 25.286343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124556, -0.659177, 0.741601,
		0.434797, -0.708098, -0.556371,
		0.891873, 0.253147, 0.374806,
		31.897995, 27.733707, 25.398785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653433, 26.885975, 25.268070>,  <31.273685, 27.556505, 25.136421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653433, 26.885975, 25.268070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829321, 27.160423, 25.499893>,  <31.934855, 27.325092, 25.638987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829321, 27.160423, 25.499893>,  <31.653433, 26.885975, 25.268070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829321, 27.160423, 25.499893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118817, -0.684058, 0.719685,
		0.890241, -0.247599, -0.382316,
		0.439720, 0.686119, 0.579557,
		31.961237, 27.366259, 25.673761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239143, 26.538136, 25.621042>,  <31.653433, 26.885975, 25.268070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239143, 26.538136, 25.621042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176754, 26.854996, 25.857067>,  <32.139320, 27.045111, 25.998682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176754, 26.854996, 25.857067>,  <32.239143, 26.538136, 25.621042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176754, 26.854996, 25.857067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062711, -0.588227, 0.806260,
		0.985769, 0.162756, 0.042070,
		-0.155970, 0.792148, 0.590063,
		32.129963, 27.092640, 26.034086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790501, 26.553886, 26.085173>,  <32.239143, 26.538136, 25.621042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790501, 26.553886, 26.085173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482803, 26.750839, 26.248058>,  <32.298183, 26.869011, 26.345791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482803, 26.750839, 26.248058>,  <32.790501, 26.553886, 26.085173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482803, 26.750839, 26.248058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190551, -0.431533, 0.881742,
		0.609883, 0.755869, 0.238129,
		-0.769242, 0.492384, 0.407216,
		32.252029, 26.898554, 26.370224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057262, 26.880304, 26.781012>,  <32.790501, 26.553886, 26.085173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057262, 26.880304, 26.781012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657749, 26.893471, 26.795677>,  <32.418041, 26.901371, 26.804476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657749, 26.893471, 26.795677>,  <33.057262, 26.880304, 26.781012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657749, 26.893471, 26.795677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021917, -0.369646, 0.928914,
		0.044131, 0.928589, 0.368476,
		-0.998785, 0.032918, 0.036665,
		32.358112, 26.903347, 26.806677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906792, 27.093321, 27.548935>,  <33.057262, 26.880304, 26.781012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906792, 27.093321, 27.548935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597904, 26.892738, 27.392876>,  <32.412571, 26.772388, 27.299240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597904, 26.892738, 27.392876>,  <32.906792, 27.093321, 27.548935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597904, 26.892738, 27.392876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144969, -0.458803, 0.876632,
		-0.618594, 0.733513, 0.281601,
		-0.772221, -0.501456, -0.390150,
		32.366238, 26.742302, 27.275831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435284, 27.029287, 28.143429>,  <32.906792, 27.093321, 27.548935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435284, 27.029287, 28.143429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265942, 26.786282, 27.874596>,  <32.164337, 26.640478, 27.713295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.265942, 26.786282, 27.874596>,  <32.435284, 27.029287, 28.143429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.265942, 26.786282, 27.874596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281292, -0.617036, 0.734943,
		-0.861188, 0.500195, 0.090338,
		-0.423357, -0.607512, -0.672085,
		32.138935, 26.604029, 27.672970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782797, 26.857941, 28.417145>,  <32.435284, 27.029287, 28.143429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782797, 26.857941, 28.417145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885611, 26.572758, 28.156185>,  <31.947298, 26.401648, 27.999609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885611, 26.572758, 28.156185>,  <31.782797, 26.857941, 28.417145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885611, 26.572758, 28.156185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304057, -0.700457, 0.645685,
		-0.917324, 0.032403, -0.396821,
		0.257034, -0.712958, -0.652398,
		31.962721, 26.358870, 27.960466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234016, 26.479151, 28.464609>,  <31.782797, 26.857941, 28.417145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234016, 26.479151, 28.464609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530325, 26.252003, 28.321064>,  <31.708111, 26.115715, 28.234938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.530325, 26.252003, 28.321064>,  <31.234016, 26.479151, 28.464609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530325, 26.252003, 28.321064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251780, -0.729980, 0.635402,
		-0.622787, -0.380334, -0.683727,
		0.740772, -0.567869, -0.358861,
		31.752556, 26.081642, 28.213406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924335, 25.799019, 28.472702>,  <31.234016, 26.479151, 28.464609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924335, 25.799019, 28.472702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313038, 25.722172, 28.417885>,  <31.546259, 25.676064, 28.384995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313038, 25.722172, 28.417885>,  <30.924335, 25.799019, 28.472702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313038, 25.722172, 28.417885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118738, -0.899906, 0.419606,
		-0.203940, -0.391483, -0.897301,
		0.971756, -0.192118, -0.137043,
		31.604565, 25.664536, 28.376772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233183, 25.745058, 28.171608>,  <30.924335, 25.799019, 28.472702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233183, 25.745058, 28.171608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893602, 25.744640, 28.382996>,  <29.689854, 25.744390, 28.509829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.893602, 25.744640, 28.382996>,  <30.233183, 25.745058, 28.171608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893602, 25.744640, 28.382996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202057, 0.924659, -0.322766,
		-0.488318, -0.380794, -0.785201,
		-0.848951, -0.001043, 0.528470,
		29.638918, 25.744328, 28.541536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662802, 25.828568, 27.776651>,  <30.233183, 25.745058, 28.171608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662802, 25.828568, 27.776651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578537, 25.993568, 28.131157>,  <29.527979, 26.092569, 28.343861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578537, 25.993568, 28.131157>,  <29.662802, 25.828568, 27.776651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578537, 25.993568, 28.131157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093753, 0.893906, -0.438341,
		-0.973053, -0.175432, -0.149639,
		-0.210663, 0.412500, 0.886265,
		29.515339, 26.117319, 28.397036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.211105, 26.258602, 27.603504>,  <29.662802, 25.828568, 27.776651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.211105, 26.258602, 27.603504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315662, 26.400669, 27.962509>,  <29.378397, 26.485909, 28.177912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315662, 26.400669, 27.962509>,  <29.211105, 26.258602, 27.603504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315662, 26.400669, 27.962509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075862, 0.934525, -0.347719,
		-0.962246, 0.022804, 0.271223,
		0.261394, 0.355166, 0.897513,
		29.394081, 26.507219, 28.231764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874249, 26.809629, 27.557610>,  <29.211105, 26.258602, 27.603504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874249, 26.809629, 27.557610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110344, 26.878292, 27.873116>,  <29.252001, 26.919489, 28.062420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.110344, 26.878292, 27.873116>,  <28.874249, 26.809629, 27.557610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.110344, 26.878292, 27.873116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075677, 0.984592, -0.157645,
		-0.803674, 0.033357, 0.594134,
		0.590238, 0.171657, 0.788767,
		29.287415, 26.929789, 28.109745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677767, 27.435333, 27.763634>,  <28.874249, 26.809629, 27.557610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677767, 27.435333, 27.763634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044300, 27.400818, 27.920036>,  <29.264221, 27.380108, 28.013878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044300, 27.400818, 27.920036>,  <28.677767, 27.435333, 27.763634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044300, 27.400818, 27.920036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187167, 0.955561, -0.227753,
		-0.353976, 0.281881, 0.891764,
		0.916335, -0.086290, 0.391005,
		29.319201, 27.374931, 28.037338>
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
