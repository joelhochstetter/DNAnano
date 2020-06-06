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
	<43.393093, 32.146397, 22.864460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411472, 32.324699, 23.222050>,  <43.422501, 32.431683, 23.436604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411472, 32.324699, 23.222050>,  <43.393093, 32.146397, 22.864460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411472, 32.324699, 23.222050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175089, 0.877471, -0.446529,
		-0.983480, 0.177040, -0.037732,
		0.045945, 0.445759, 0.893973,
		43.425255, 32.458427, 23.490242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.881496, 32.573811, 22.846491>,  <43.393093, 32.146397, 22.864460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.881496, 32.573811, 22.846491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161438, 32.715553, 23.094566>,  <43.329403, 32.800598, 23.243412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161438, 32.715553, 23.094566>,  <42.881496, 32.573811, 22.846491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161438, 32.715553, 23.094566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010396, 0.863121, -0.504890,
		-0.714209, 0.359797, 0.600376,
		0.699856, 0.354355, 0.620189,
		43.371395, 32.821861, 23.280622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310211, 33.114285, 23.223429>,  <42.881496, 32.573811, 22.846491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310211, 33.114285, 23.223429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491108, 33.465981, 23.283329>,  <42.599644, 33.676998, 23.319269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491108, 33.465981, 23.283329>,  <42.310211, 33.114285, 23.223429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491108, 33.465981, 23.283329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777130, 0.470842, -0.417584,
		-0.437665, 0.072471, 0.896213,
		0.452238, 0.879236, 0.149752,
		42.626778, 33.729752, 23.328255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543877, 33.283066, 23.362135>,  <42.310211, 33.114285, 23.223429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543877, 33.283066, 23.362135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777878, 33.067776, 23.119457>,  <41.918278, 32.938602, 22.973850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.777878, 33.067776, 23.119457>,  <41.543877, 33.283066, 23.362135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777878, 33.067776, 23.119457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768221, -0.607557, -0.201768,
		-0.260005, 0.584112, -0.768902,
		0.585007, -0.538226, -0.606695,
		41.953381, 32.906307, 22.937449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798649, 33.461510, 23.438854>,  <41.543877, 33.283066, 23.362135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798649, 33.461510, 23.438854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854240, 33.131130, 23.657391>,  <40.887596, 32.932903, 23.788511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854240, 33.131130, 23.657391>,  <40.798649, 33.461510, 23.438854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854240, 33.131130, 23.657391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958304, 0.251265, 0.136082,
		-0.249674, 0.504647, 0.826435,
		0.138981, -0.825952, 0.546340,
		40.895935, 32.883343, 23.821293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035225, 33.066746, 23.518589>,  <40.798649, 33.461510, 23.438854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035225, 33.066746, 23.518589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649139, 33.016827, 23.426693>,  <39.417488, 32.986874, 23.371555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649139, 33.016827, 23.426693>,  <40.035225, 33.066746, 23.518589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649139, 33.016827, 23.426693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020845, -0.839181, 0.543453,
		-0.260616, 0.529339, 0.807391,
		-0.965218, -0.124802, -0.229738,
		39.359573, 32.979385, 23.357771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519501, 33.021778, 24.021593>,  <40.035225, 33.066746, 23.518589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519501, 33.021778, 24.021593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374115, 32.774445, 23.742867>,  <39.286884, 32.626045, 23.575630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374115, 32.774445, 23.742867>,  <39.519501, 33.021778, 24.021593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374115, 32.774445, 23.742867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012416, -0.744690, 0.667295,
		-0.931527, 0.251188, 0.262989,
		-0.363462, -0.618338, -0.696817,
		39.265076, 32.588943, 23.533821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169884, 32.430412, 24.419760>,  <39.519501, 33.021778, 24.021593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169884, 32.430412, 24.419760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197815, 32.293938, 24.044800>,  <39.214573, 32.212055, 23.819824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197815, 32.293938, 24.044800>,  <39.169884, 32.430412, 24.419760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197815, 32.293938, 24.044800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045813, -0.937605, 0.344670,
		-0.996506, -0.067013, -0.049841,
		0.069828, -0.341183, -0.937400,
		39.218765, 32.191582, 23.763580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671413, 31.805096, 24.374340>,  <39.169884, 32.430412, 24.419760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671413, 31.805096, 24.374340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956738, 31.780289, 24.095100>,  <39.127934, 31.765404, 23.927557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956738, 31.780289, 24.095100>,  <38.671413, 31.805096, 24.374340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956738, 31.780289, 24.095100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338312, -0.841871, 0.420475,
		-0.613784, -0.536104, -0.579535,
		0.713312, -0.062017, -0.698097,
		39.170731, 31.761683, 23.885672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683445, 31.100950, 24.087753>,  <38.671413, 31.805096, 24.374340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683445, 31.100950, 24.087753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049782, 31.235947, 24.000729>,  <39.269585, 31.316944, 23.948513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049782, 31.235947, 24.000729>,  <38.683445, 31.100950, 24.087753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049782, 31.235947, 24.000729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358110, -0.931594, 0.062370,
		-0.181631, -0.135032, -0.974051,
		0.915843, 0.337489, -0.217562,
		39.324535, 31.337193, 23.935459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995247, 30.625599, 23.636692>,  <38.683445, 31.100950, 24.087753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995247, 30.625599, 23.636692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338100, 30.806564, 23.735203>,  <39.543812, 30.915144, 23.794310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338100, 30.806564, 23.735203>,  <38.995247, 30.625599, 23.636692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338100, 30.806564, 23.735203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428109, -0.891555, 0.147825,
		0.286447, -0.021272, -0.957860,
		0.857129, 0.452413, 0.246276,
		39.595238, 30.942287, 23.809086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516273, 30.194176, 23.371504>,  <38.995247, 30.625599, 23.636692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516273, 30.194176, 23.371504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749413, 30.407173, 23.617020>,  <39.889297, 30.534971, 23.764328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749413, 30.407173, 23.617020>,  <39.516273, 30.194176, 23.371504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749413, 30.407173, 23.617020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528984, -0.822025, 0.210833,
		0.616817, 0.201799, -0.760798,
		0.582849, 0.532495, 0.613788,
		39.924267, 30.566921, 23.801155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284241, 29.987885, 23.233612>,  <39.516273, 30.194176, 23.371504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284241, 29.987885, 23.233612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267780, 30.148708, 23.599487>,  <40.257904, 30.245203, 23.819012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.267780, 30.148708, 23.599487>,  <40.284241, 29.987885, 23.233612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267780, 30.148708, 23.599487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625282, -0.703676, 0.337437,
		0.779313, 0.585823, -0.222444,
		-0.041150, 0.402059, 0.914689,
		40.255436, 30.269325, 23.873894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030090, 30.009636, 23.390833>,  <40.284241, 29.987885, 23.233612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030090, 30.009636, 23.390833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824253, 30.057205, 23.730492>,  <40.700752, 30.085747, 23.934288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824253, 30.057205, 23.730492>,  <41.030090, 30.009636, 23.390833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824253, 30.057205, 23.730492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606593, -0.649440, 0.458555,
		0.606003, 0.751056, 0.262059,
		-0.514593, 0.118922, 0.849148,
		40.669876, 30.092882, 23.985235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519550, 29.891722, 23.850313>,  <41.030090, 30.009636, 23.390833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519550, 29.891722, 23.850313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172493, 29.810162, 24.031693>,  <40.964256, 29.761225, 24.140520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172493, 29.810162, 24.031693>,  <41.519550, 29.891722, 23.850313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172493, 29.810162, 24.031693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395930, -0.834998, 0.382121,
		0.300712, 0.511080, 0.805214,
		-0.867647, -0.203900, 0.453446,
		40.912197, 29.748991, 24.167727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759556, 29.752346, 24.527943>,  <41.519550, 29.891722, 23.850313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759556, 29.752346, 24.527943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382290, 29.620411, 24.511715>,  <41.155930, 29.541250, 24.501978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382290, 29.620411, 24.511715>,  <41.759556, 29.752346, 24.527943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382290, 29.620411, 24.511715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246804, -0.776964, 0.579150,
		-0.222549, 0.536221, 0.814211,
		-0.943165, -0.329839, -0.040571,
		41.099342, 29.521460, 24.499544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629845, 29.525686, 25.176043>,  <41.759556, 29.752346, 24.527943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629845, 29.525686, 25.176043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344051, 29.332710, 24.973354>,  <41.172573, 29.216925, 24.851742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344051, 29.332710, 24.973354>,  <41.629845, 29.525686, 25.176043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344051, 29.332710, 24.973354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253604, -0.853571, 0.455085,
		-0.652071, 0.196645, 0.732212,
		-0.714485, -0.482439, -0.506719,
		41.129707, 29.187979, 24.821339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302803, 29.177050, 25.621502>,  <41.629845, 29.525686, 25.176043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302803, 29.177050, 25.621502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194782, 28.970150, 25.296658>,  <41.129971, 28.846010, 25.101751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.194782, 28.970150, 25.296658>,  <41.302803, 29.177050, 25.621502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194782, 28.970150, 25.296658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056037, -0.850463, 0.523042,
		-0.961214, 0.095740, 0.258655,
		-0.270053, -0.517249, -0.812111,
		41.113766, 28.814976, 25.053024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711830, 28.798788, 25.816935>,  <41.302803, 29.177050, 25.621502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711830, 28.798788, 25.816935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859303, 28.621323, 25.490196>,  <40.947788, 28.514843, 25.294153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859303, 28.621323, 25.490196>,  <40.711830, 28.798788, 25.816935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859303, 28.621323, 25.490196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110922, -0.851471, 0.512537,
		-0.922913, -0.279570, -0.264710,
		0.368683, -0.443665, -0.816844,
		40.969910, 28.488224, 25.245144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415668, 28.145334, 25.845036>,  <40.711830, 28.798788, 25.816935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415668, 28.145334, 25.845036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713226, 28.084816, 25.584660>,  <40.891762, 28.048506, 25.428434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713226, 28.084816, 25.584660>,  <40.415668, 28.145334, 25.845036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713226, 28.084816, 25.584660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128988, -0.923216, 0.361987,
		-0.655726, -0.353245, -0.667264,
		0.743898, -0.151295, -0.650941,
		40.936398, 28.039427, 25.389378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.176422, 27.712099, 25.443037>,  <40.415668, 28.145334, 25.845036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.176422, 27.712099, 25.443037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573334, 27.690773, 25.398243>,  <40.811481, 27.677977, 25.371367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.573334, 27.690773, 25.398243>,  <40.176422, 27.712099, 25.443037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.573334, 27.690773, 25.398243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030751, -0.980455, 0.194327,
		-0.120155, -0.189383, -0.974524,
		0.992279, -0.053317, -0.111983,
		40.871017, 27.674778, 25.364649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268322, 26.967028, 25.264698>,  <40.176422, 27.712099, 25.443037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268322, 26.967028, 25.264698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636429, 27.082409, 25.370461>,  <40.857292, 27.151638, 25.433918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636429, 27.082409, 25.370461>,  <40.268322, 26.967028, 25.264698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636429, 27.082409, 25.370461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114374, -0.844488, 0.523219,
		0.374213, -0.451258, -0.810142,
		0.920262, 0.288455, 0.264407,
		40.912506, 27.168945, 25.449783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697926, 26.391527, 25.178122>,  <40.268322, 26.967028, 25.264698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697926, 26.391527, 25.178122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929916, 26.613892, 25.416313>,  <41.069111, 26.747311, 25.559227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929916, 26.613892, 25.416313>,  <40.697926, 26.391527, 25.178122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929916, 26.613892, 25.416313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386419, -0.831239, 0.399652,
		0.717156, -0.001684, -0.696911,
		0.579973, 0.555912, 0.595477,
		41.103909, 26.780664, 25.594955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368160, 25.980757, 25.161793>,  <40.697926, 26.391527, 25.178122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368160, 25.980757, 25.161793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329327, 26.216148, 25.482857>,  <41.306026, 26.357384, 25.675495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.329327, 26.216148, 25.482857>,  <41.368160, 25.980757, 25.161793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.329327, 26.216148, 25.482857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501892, -0.667476, 0.550074,
		0.859464, 0.456254, -0.230550,
		-0.097087, 0.588480, 0.802662,
		41.300201, 26.392693, 25.723656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039055, 25.936750, 25.526020>,  <41.368160, 25.980757, 25.161793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039055, 25.936750, 25.526020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790913, 26.077728, 25.806290>,  <41.642029, 26.162315, 25.974451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.790913, 26.077728, 25.806290>,  <42.039055, 25.936750, 25.526020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790913, 26.077728, 25.806290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385907, -0.640575, 0.663882,
		0.682817, 0.682236, 0.261370,
		-0.620352, 0.352446, 0.700675,
		41.604809, 26.183462, 26.016493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380306, 25.662506, 26.122747>,  <42.039055, 25.936750, 25.526020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380306, 25.662506, 26.122747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011257, 25.772213, 26.231224>,  <41.789829, 25.838037, 26.296310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.011257, 25.772213, 26.231224>,  <42.380306, 25.662506, 26.122747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011257, 25.772213, 26.231224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090112, -0.530373, 0.842961,
		0.375031, 0.802173, 0.464619,
		-0.922622, 0.274269, 0.271192,
		41.734470, 25.854494, 26.312582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372608, 26.041231, 26.857897>,  <42.380306, 25.662506, 26.122747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372608, 26.041231, 26.857897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037003, 25.843903, 26.766075>,  <41.835640, 25.725506, 26.710981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037003, 25.843903, 26.766075>,  <42.372608, 26.041231, 26.857897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037003, 25.843903, 26.766075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056655, -0.498799, 0.864864,
		-0.541159, 0.712624, 0.446446,
		-0.839010, -0.493322, -0.229556,
		41.785301, 25.695906, 26.697208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.775402, 25.953659, 27.371965>,  <42.372608, 26.041231, 26.857897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.775402, 25.953659, 27.371965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753075, 25.619286, 27.153572>,  <41.739677, 25.418661, 27.022535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753075, 25.619286, 27.153572>,  <41.775402, 25.953659, 27.371965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753075, 25.619286, 27.153572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255511, -0.516669, 0.817170,
		-0.965193, 0.185118, -0.184752,
		-0.055817, -0.835933, -0.545985,
		41.736328, 25.368505, 26.989777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072838, 25.729668, 27.348623>,  <41.775402, 25.953659, 27.371965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072838, 25.729668, 27.348623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338810, 25.430958, 27.343006>,  <41.498394, 25.251732, 27.339636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338810, 25.430958, 27.343006>,  <41.072838, 25.729668, 27.348623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338810, 25.430958, 27.343006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427263, -0.395723, 0.812926,
		-0.612631, -0.534537, -0.582197,
		0.664928, -0.746776, -0.014044,
		41.538288, 25.206924, 27.338793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770817, 25.172436, 27.331161>,  <41.072838, 25.729668, 27.348623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770817, 25.172436, 27.331161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105293, 25.153908, 27.549751>,  <41.305981, 25.142792, 27.680904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105293, 25.153908, 27.549751>,  <40.770817, 25.172436, 27.331161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105293, 25.153908, 27.549751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539148, -0.252014, 0.803622,
		0.100497, -0.966614, -0.235706,
		0.836194, -0.046319, 0.546474,
		41.356152, 25.140013, 27.713694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711578, 24.582340, 27.811228>,  <40.770817, 25.172436, 27.331161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711578, 24.582340, 27.811228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993389, 24.819229, 27.967648>,  <41.162476, 24.961363, 28.061501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.993389, 24.819229, 27.967648>,  <40.711578, 24.582340, 27.811228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.993389, 24.819229, 27.967648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345593, -0.194977, 0.917905,
		0.619848, -0.781830, 0.067301,
		0.704524, 0.592221, 0.391051,
		41.204746, 24.996895, 28.084963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968281, 24.435921, 27.419380>,  <40.711578, 24.582340, 27.811228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968281, 24.435921, 27.419380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953205, 24.472466, 27.021339>,  <39.944160, 24.494392, 26.782515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.953205, 24.472466, 27.021339>,  <39.968281, 24.435921, 27.419380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953205, 24.472466, 27.021339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157518, 0.983906, 0.084367,
		0.986797, -0.153567, -0.051475,
		-0.037691, 0.091362, -0.995104,
		39.941898, 24.499874, 26.722809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500572, 24.822731, 26.927366>,  <39.968281, 24.435921, 27.419380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500572, 24.822731, 26.927366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369576, 24.749207, 27.298088>,  <39.290977, 24.705091, 27.520521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369576, 24.749207, 27.298088>,  <39.500572, 24.822731, 26.927366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369576, 24.749207, 27.298088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184286, 0.974482, 0.128152,
		-0.926709, -0.128829, -0.353006,
		-0.327488, -0.183813, 0.926803,
		39.271328, 24.694063, 27.576130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958488, 25.252947, 26.986544>,  <39.500572, 24.822731, 26.927366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958488, 25.252947, 26.986544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016609, 25.163139, 27.371975>,  <39.051483, 25.109255, 27.603233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016609, 25.163139, 27.371975>,  <38.958488, 25.252947, 26.986544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016609, 25.163139, 27.371975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406450, 0.874390, 0.265028,
		-0.902045, -0.430155, 0.035797,
		0.145304, -0.224517, 0.963576,
		39.060200, 25.095783, 27.661047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404930, 25.068085, 27.430048>,  <38.958488, 25.252947, 26.986544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404930, 25.068085, 27.430048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699005, 25.264725, 27.616737>,  <38.875450, 25.382710, 27.728750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699005, 25.264725, 27.616737>,  <38.404930, 25.068085, 27.430048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699005, 25.264725, 27.616737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563297, 0.826076, 0.017198,
		-0.377095, -0.275547, 0.884236,
		0.735185, 0.491602, 0.466724,
		38.919559, 25.412205, 27.756754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188526, 25.296274, 28.149059>,  <38.404930, 25.068085, 27.430048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188526, 25.296274, 28.149059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471291, 25.533264, 27.994526>,  <38.640949, 25.675459, 27.901806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471291, 25.533264, 27.994526>,  <38.188526, 25.296274, 28.149059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471291, 25.533264, 27.994526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654748, 0.754758, -0.040568,
		0.267552, 0.281628, 0.921467,
		0.706910, 0.592475, -0.386332,
		38.683365, 25.711006, 27.878626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116661, 25.983343, 28.428591>,  <38.188526, 25.296274, 28.149059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116661, 25.983343, 28.428591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311558, 26.007603, 28.080128>,  <38.428493, 26.022158, 27.871050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311558, 26.007603, 28.080128>,  <38.116661, 25.983343, 28.428591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311558, 26.007603, 28.080128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583313, 0.764998, -0.272989,
		0.649879, 0.641170, 0.408115,
		0.487239, 0.060649, -0.871160,
		38.457729, 26.025797, 27.818779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412479, 26.680231, 28.310152>,  <38.116661, 25.983343, 28.428591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412479, 26.680231, 28.310152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409782, 26.555649, 27.930058>,  <38.408165, 26.480900, 27.702000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409782, 26.555649, 27.930058>,  <38.412479, 26.680231, 28.310152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409782, 26.555649, 27.930058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607020, 0.756422, -0.243622,
		0.794658, 0.575171, -0.194157,
		-0.006740, -0.311454, -0.950238,
		38.407761, 26.462214, 27.644987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414970, 27.214344, 27.947437>,  <38.412479, 26.680231, 28.310152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414970, 27.214344, 27.947437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315681, 26.969479, 27.647133>,  <38.256107, 26.822559, 27.466949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315681, 26.969479, 27.647133>,  <38.414970, 27.214344, 27.947437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315681, 26.969479, 27.647133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480215, 0.750845, -0.453459,
		0.841297, 0.247971, -0.480343,
		-0.248219, -0.612162, -0.750763,
		38.241215, 26.785830, 27.421904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649918, 27.503160, 27.312050>,  <38.414970, 27.214344, 27.947437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649918, 27.503160, 27.312050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358421, 27.250824, 27.205490>,  <38.183521, 27.099422, 27.141554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358421, 27.250824, 27.205490>,  <38.649918, 27.503160, 27.312050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358421, 27.250824, 27.205490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422312, 0.720259, -0.550346,
		0.539057, -0.288559, -0.791297,
		-0.728746, -0.630842, -0.266399,
		38.139797, 27.061571, 27.125570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635792, 27.500208, 26.657171>,  <38.649918, 27.503160, 27.312050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635792, 27.500208, 26.657171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266273, 27.369183, 26.736465>,  <38.044563, 27.290567, 26.784042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266273, 27.369183, 26.736465>,  <38.635792, 27.500208, 26.657171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266273, 27.369183, 26.736465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375686, 0.675647, -0.634319,
		0.073842, -0.660458, -0.747224,
		-0.923800, -0.327561, 0.198234,
		37.989132, 27.270914, 26.795935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288834, 27.411184, 26.013954>,  <38.635792, 27.500208, 26.657171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288834, 27.411184, 26.013954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986523, 27.438122, 26.274498>,  <37.805138, 27.454285, 26.430824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986523, 27.438122, 26.274498>,  <38.288834, 27.411184, 26.013954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986523, 27.438122, 26.274498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460992, 0.651726, -0.602278,
		-0.465068, -0.755458, -0.461513,
		-0.755776, 0.067346, 0.651357,
		37.759789, 27.458326, 26.469906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667042, 27.385506, 25.611677>,  <38.288834, 27.411184, 26.013954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667042, 27.385506, 25.611677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523792, 27.525124, 25.958069>,  <37.437843, 27.608894, 26.165903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523792, 27.525124, 25.958069>,  <37.667042, 27.385506, 25.611677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523792, 27.525124, 25.958069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505560, 0.707268, -0.494146,
		-0.784957, -0.614768, -0.076826,
		-0.358122, 0.349043, 0.865978,
		37.416355, 27.629837, 26.217863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884178, 27.392759, 25.501667>,  <37.667042, 27.385506, 25.611677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884178, 27.392759, 25.501667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022549, 27.646748, 25.777969>,  <37.105572, 27.799141, 25.943750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022549, 27.646748, 25.777969>,  <36.884178, 27.392759, 25.501667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022549, 27.646748, 25.777969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404648, 0.765190, -0.500744,
		-0.846518, -0.106291, 0.521641,
		0.345929, 0.634970, 0.690758,
		37.126328, 27.837238, 25.985197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391140, 27.852783, 25.602831>,  <36.884178, 27.392759, 25.501667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391140, 27.852783, 25.602831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718235, 28.034302, 25.744461>,  <36.914494, 28.143213, 25.829439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718235, 28.034302, 25.744461>,  <36.391140, 27.852783, 25.602831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718235, 28.034302, 25.744461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131900, 0.746527, -0.652150,
		-0.560270, 0.486587, 0.670321,
		0.817741, 0.453796, 0.354076,
		36.963558, 28.170441, 25.850683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242222, 28.479218, 25.715927>,  <36.391140, 27.852783, 25.602831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242222, 28.479218, 25.715927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640717, 28.511982, 25.704597>,  <36.879814, 28.531641, 25.697800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640717, 28.511982, 25.704597>,  <36.242222, 28.479218, 25.715927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640717, 28.511982, 25.704597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079949, 0.742357, -0.665217,
		-0.033463, 0.664978, 0.746113,
		0.996237, 0.081911, -0.028322,
		36.939587, 28.536554, 25.696100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340382, 29.174471, 25.794413>,  <36.242222, 28.479218, 25.715927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340382, 29.174471, 25.794413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679943, 29.045948, 25.626541>,  <36.883678, 28.968834, 25.525818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679943, 29.045948, 25.626541>,  <36.340382, 29.174471, 25.794413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679943, 29.045948, 25.626541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089096, 0.869639, -0.485581,
		0.520989, 0.374819, 0.766864,
		0.848900, -0.321307, -0.419678,
		36.934612, 28.949556, 25.500637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828018, 29.672007, 25.855572>,  <36.340382, 29.174471, 25.794413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828018, 29.672007, 25.855572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948360, 29.447086, 25.547466>,  <37.020565, 29.312134, 25.362604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948360, 29.447086, 25.547466>,  <36.828018, 29.672007, 25.855572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948360, 29.447086, 25.547466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239724, 0.826338, -0.509605,
		0.923049, -0.031334, 0.383404,
		0.300853, -0.562302, -0.770262,
		37.038616, 29.278397, 25.316387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485847, 29.947117, 25.613663>,  <36.828018, 29.672007, 25.855572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485847, 29.947117, 25.613663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367977, 29.709000, 25.314651>,  <37.297256, 29.566130, 25.135244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367977, 29.709000, 25.314651>,  <37.485847, 29.947117, 25.613663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367977, 29.709000, 25.314651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181182, 0.733267, -0.655357,
		0.938265, -0.328554, -0.108217,
		-0.294672, -0.595292, -0.747527,
		37.279575, 29.530413, 25.090393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866753, 30.207891, 25.014668>,  <37.485847, 29.947117, 25.613663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866753, 30.207891, 25.014668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564838, 29.996391, 24.859379>,  <37.383690, 29.869492, 24.766205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564838, 29.996391, 24.859379>,  <37.866753, 30.207891, 25.014668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564838, 29.996391, 24.859379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155747, 0.719362, -0.676950,
		0.637210, -0.450490, -0.625318,
		-0.754789, -0.528751, -0.388222,
		37.338402, 29.837767, 24.742912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005493, 30.374952, 24.261261>,  <37.866753, 30.207891, 25.014668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005493, 30.374952, 24.261261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622795, 30.270237, 24.312027>,  <37.393177, 30.207407, 24.342487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622795, 30.270237, 24.312027>,  <38.005493, 30.374952, 24.261261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622795, 30.270237, 24.312027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286591, 0.772981, -0.566009,
		0.050070, -0.577899, -0.814571,
		-0.956744, -0.261789, 0.126917,
		37.335773, 30.191700, 24.350101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742081, 30.263475, 23.663380>,  <38.005493, 30.374952, 24.261261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742081, 30.263475, 23.663380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417980, 30.344788, 23.883263>,  <37.223522, 30.393574, 24.015192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417980, 30.344788, 23.883263>,  <37.742081, 30.263475, 23.663380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417980, 30.344788, 23.883263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292224, 0.672901, -0.679565,
		-0.508039, -0.711253, -0.485814,
		-0.810248, 0.203279, 0.549706,
		37.174908, 30.405771, 24.048174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266903, 30.422287, 23.112074>,  <37.742081, 30.263475, 23.663380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266903, 30.422287, 23.112074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092503, 30.562016, 23.443829>,  <36.987862, 30.645853, 23.642881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092503, 30.562016, 23.443829>,  <37.266903, 30.422287, 23.112074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092503, 30.562016, 23.443829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389590, 0.757500, -0.523845,
		-0.811250, -0.551516, -0.194177,
		-0.435998, 0.349320, 0.829386,
		36.961704, 30.666811, 23.692644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617039, 30.488657, 23.018034>,  <37.266903, 30.422287, 23.112074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617039, 30.488657, 23.018034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672443, 30.752644, 23.313400>,  <36.705685, 30.911036, 23.490620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672443, 30.752644, 23.313400>,  <36.617039, 30.488657, 23.018034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672443, 30.752644, 23.313400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291145, 0.739790, -0.606585,
		-0.946599, -0.130970, 0.294613,
		0.138508, 0.659968, 0.738416,
		36.713997, 30.950634, 23.534925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090992, 30.980732, 22.905611>,  <36.617039, 30.488657, 23.018034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090992, 30.980732, 22.905611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348282, 31.180611, 23.137669>,  <36.502655, 31.300537, 23.276903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348282, 31.180611, 23.137669>,  <36.090992, 30.980732, 22.905611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348282, 31.180611, 23.137669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114826, 0.812072, -0.572149,
		-0.757019, 0.301404, 0.579722,
		0.643224, 0.499695, 0.580145,
		36.541248, 31.330519, 23.311712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769814, 31.706457, 23.068361>,  <36.090992, 30.980732, 22.905611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769814, 31.706457, 23.068361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163803, 31.743515, 23.126675>,  <36.400196, 31.765749, 23.161663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163803, 31.743515, 23.126675>,  <35.769814, 31.706457, 23.068361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163803, 31.743515, 23.126675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009033, 0.870466, -0.492146,
		-0.172492, 0.483432, 0.858219,
		0.984969, 0.092644, 0.145782,
		36.459293, 31.771309, 23.170408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813717, 32.327995, 23.227842>,  <35.769814, 31.706457, 23.068361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813717, 32.327995, 23.227842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181675, 32.222855, 23.111427>,  <36.402451, 32.159771, 23.041578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181675, 32.222855, 23.111427>,  <35.813717, 32.327995, 23.227842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181675, 32.222855, 23.111427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043873, 0.806450, -0.589672,
		0.389704, 0.529667, 0.753381,
		0.919895, -0.262851, -0.291039,
		36.457642, 32.144001, 23.024117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185368, 32.903713, 23.193853>,  <35.813717, 32.327995, 23.227842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185368, 32.903713, 23.193853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328690, 32.633717, 22.935860>,  <36.414684, 32.471718, 22.781063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.328690, 32.633717, 22.935860>,  <36.185368, 32.903713, 23.193853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328690, 32.633717, 22.935860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038492, 0.679585, -0.732587,
		0.932811, 0.287315, 0.217516,
		0.358304, -0.674993, -0.644983,
		36.436180, 32.431217, 22.742365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697475, 33.393894, 23.532589>,  <36.185368, 32.903713, 23.193853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697475, 33.393894, 23.532589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737099, 33.612568, 23.200005>,  <35.760872, 33.743771, 23.000454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737099, 33.612568, 23.200005>,  <35.697475, 33.393894, 23.532589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737099, 33.612568, 23.200005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994701, -0.031276, 0.097943,
		0.027539, -0.836756, -0.546883,
		0.099058, 0.546682, -0.831460,
		35.766815, 33.776573, 22.950567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188686, 33.066742, 23.410528>,  <35.697475, 33.393894, 23.532589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188686, 33.066742, 23.410528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211697, 32.997593, 23.017223>,  <35.225502, 32.956104, 22.781240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211697, 32.997593, 23.017223>,  <35.188686, 33.066742, 23.410528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211697, 32.997593, 23.017223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888807, 0.457400, -0.028422,
		0.454658, -0.872295, 0.179964,
		0.057523, -0.172875, -0.983263,
		35.228954, 32.945732, 22.722244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584885, 33.340019, 23.890224>,  <35.188686, 33.066742, 23.410528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584885, 33.340019, 23.890224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812687, 33.115875, 24.130779>,  <34.949368, 32.981388, 24.275112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812687, 33.115875, 24.130779>,  <34.584885, 33.340019, 23.890224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812687, 33.115875, 24.130779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354018, 0.493084, 0.794694,
		-0.741846, -0.665484, 0.082437,
		0.569504, -0.560357, 0.601386,
		34.983540, 32.947769, 24.311195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723892, 33.932343, 24.403065>,  <34.584885, 33.340019, 23.890224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723892, 33.932343, 24.403065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560791, 34.199417, 24.153927>,  <34.462929, 34.359661, 24.004444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560791, 34.199417, 24.153927>,  <34.723892, 33.932343, 24.403065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560791, 34.199417, 24.153927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372229, -0.744421, -0.554331,
		-0.833777, 0.005811, 0.552070,
		-0.407752, 0.667685, -0.622844,
		34.438465, 34.399723, 23.967073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888313, 33.852154, 24.285702>,  <34.723892, 33.932343, 24.403065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888313, 33.852154, 24.285702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094593, 34.010002, 23.981510>,  <34.218361, 34.104710, 23.798996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.094593, 34.010002, 23.981510>,  <33.888313, 33.852154, 24.285702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094593, 34.010002, 23.981510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607733, -0.457169, -0.649352,
		-0.603914, 0.797039, 0.004062,
		0.515702, 0.394621, -0.760477,
		34.249302, 34.128387, 23.753366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306889, 34.158375, 24.640549>,  <33.888313, 33.852154, 24.285702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306889, 34.158375, 24.640549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523426, 34.488029, 24.707165>,  <33.653351, 34.685822, 24.747135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523426, 34.488029, 24.707165>,  <33.306889, 34.158375, 24.640549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523426, 34.488029, 24.707165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315560, 0.382744, -0.868291,
		-0.779336, 0.417493, 0.467263,
		0.541347, 0.824140, 0.166542,
		33.685829, 34.735271, 24.757128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777782, 33.823051, 25.011978>,  <33.306889, 34.158375, 24.640549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777782, 33.823051, 25.011978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459801, 33.836895, 25.254253>,  <32.269012, 33.845200, 25.399618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459801, 33.836895, 25.254253>,  <32.777782, 33.823051, 25.011978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459801, 33.836895, 25.254253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109648, -0.973734, 0.199546,
		0.596685, 0.225041, 0.770275,
		-0.794950, 0.034606, 0.605688,
		32.221317, 33.847279, 25.435959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963924, 33.562656, 25.647913>,  <32.777782, 33.823051, 25.011978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963924, 33.562656, 25.647913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566612, 33.538128, 25.687183>,  <32.328224, 33.523411, 25.710745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.566612, 33.538128, 25.687183>,  <32.963924, 33.562656, 25.647913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566612, 33.538128, 25.687183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093970, -0.922409, 0.374609,
		0.067587, 0.381317, 0.921971,
		-0.993278, -0.061319, 0.098175,
		32.268627, 33.519733, 25.716637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887817, 33.146446, 26.281202>,  <32.963924, 33.562656, 25.647913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887817, 33.146446, 26.281202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558228, 33.105461, 26.058289>,  <32.360474, 33.080868, 25.924540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558228, 33.105461, 26.058289>,  <32.887817, 33.146446, 26.281202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558228, 33.105461, 26.058289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032336, -0.973408, 0.226786,
		-0.565704, 0.204886, 0.798750,
		-0.823974, -0.102465, -0.557286,
		32.311035, 33.074722, 25.891104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422131, 32.799294, 26.665428>,  <32.887817, 33.146446, 26.281202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422131, 32.799294, 26.665428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281677, 32.737270, 26.296070>,  <32.197403, 32.700058, 26.074455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281677, 32.737270, 26.296070>,  <32.422131, 32.799294, 26.665428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281677, 32.737270, 26.296070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135530, -0.967390, 0.213983,
		-0.926463, 0.200285, 0.318672,
		-0.351138, -0.155058, -0.923396,
		32.176334, 32.690754, 26.019051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853205, 32.465443, 26.730766>,  <32.422131, 32.799294, 26.665428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853205, 32.465443, 26.730766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905016, 32.396442, 26.340183>,  <31.936102, 32.355042, 26.105833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.905016, 32.396442, 26.340183>,  <31.853205, 32.465443, 26.730766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905016, 32.396442, 26.340183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074360, -0.983669, 0.163906,
		-0.988784, 0.051379, -0.140239,
		0.129527, -0.172496, -0.976457,
		31.943874, 32.344692, 26.047247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411514, 31.979658, 26.599321>,  <31.853205, 32.465443, 26.730766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411514, 31.979658, 26.599321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699486, 31.954693, 26.322826>,  <31.872269, 31.939714, 26.156929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699486, 31.954693, 26.322826>,  <31.411514, 31.979658, 26.599321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699486, 31.954693, 26.322826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011543, -0.994734, 0.101839,
		-0.693954, -0.081296, -0.715415,
		0.719927, -0.062413, -0.691237,
		31.915464, 31.935968, 26.115456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162165, 31.516376, 26.209436>,  <31.411514, 31.979658, 26.599321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162165, 31.516376, 26.209436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557936, 31.551956, 26.163624>,  <31.795399, 31.573305, 26.136137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557936, 31.551956, 26.163624>,  <31.162165, 31.516376, 26.209436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557936, 31.551956, 26.163624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116724, -0.957158, 0.265000,
		-0.086051, -0.275567, -0.957422,
		0.989429, 0.088950, -0.114530,
		31.854765, 31.578642, 26.129265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421408, 30.810284, 25.895685>,  <31.162165, 31.516376, 26.209436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421408, 30.810284, 25.895685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729837, 30.995483, 26.070534>,  <31.914896, 31.106604, 26.175444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729837, 30.995483, 26.070534>,  <31.421408, 30.810284, 25.895685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729837, 30.995483, 26.070534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337868, -0.879385, 0.335450,
		0.539712, -0.110968, -0.834504,
		0.771075, 0.462999, 0.437122,
		31.961161, 31.134382, 26.201670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960518, 30.511238, 25.524632>,  <31.421408, 30.810284, 25.895685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960518, 30.511238, 25.524632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101952, 30.652145, 25.871246>,  <32.186813, 30.736691, 26.079214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101952, 30.652145, 25.871246>,  <31.960518, 30.511238, 25.524632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101952, 30.652145, 25.871246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535832, -0.835602, 0.121050,
		0.766721, 0.421516, -0.484214,
		0.353585, 0.352269, 0.866535,
		32.208027, 30.757826, 26.131207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616436, 30.312366, 25.572859>,  <31.960518, 30.511238, 25.524632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616436, 30.312366, 25.572859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546146, 30.388763, 25.959152>,  <32.503971, 30.434601, 26.190928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546146, 30.388763, 25.959152>,  <32.616436, 30.312366, 25.572859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546146, 30.388763, 25.959152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565532, -0.783387, 0.257834,
		0.805788, 0.591462, 0.029649,
		-0.175726, 0.190992, 0.965734,
		32.493427, 30.446060, 26.248873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240898, 30.182287, 25.849115>,  <32.616436, 30.312366, 25.572859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240898, 30.182287, 25.849115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988495, 30.176891, 26.159378>,  <32.837051, 30.173655, 26.345535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988495, 30.176891, 26.159378>,  <33.240898, 30.182287, 25.849115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988495, 30.176891, 26.159378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569405, -0.687118, 0.451273,
		0.526881, 0.726421, 0.441259,
		-0.631011, -0.013487, 0.775657,
		32.799191, 30.172846, 26.392075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657917, 30.112625, 26.417673>,  <33.240898, 30.182287, 25.849115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657917, 30.112625, 26.417673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301285, 29.978119, 26.539005>,  <33.087307, 29.897415, 26.611805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301285, 29.978119, 26.539005>,  <33.657917, 30.112625, 26.417673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301285, 29.978119, 26.539005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447683, -0.755458, 0.478397,
		0.068287, 0.562326, 0.824091,
		-0.891581, -0.336263, 0.303332,
		33.033810, 29.877239, 26.630005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699039, 30.004841, 27.117157>,  <33.657917, 30.112625, 26.417673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699039, 30.004841, 27.117157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385525, 29.771797, 27.031143>,  <33.197414, 29.631971, 26.979534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385525, 29.771797, 27.031143>,  <33.699039, 30.004841, 27.117157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385525, 29.771797, 27.031143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308102, -0.665437, 0.679902,
		-0.539211, 0.466646, 0.701066,
		-0.783789, -0.582610, -0.215036,
		33.150387, 29.597013, 26.966633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448555, 29.802683, 27.735153>,  <33.699039, 30.004841, 27.117157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448555, 29.802683, 27.735153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308609, 29.528389, 27.479855>,  <33.224640, 29.363811, 27.326675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308609, 29.528389, 27.479855>,  <33.448555, 29.802683, 27.735153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308609, 29.528389, 27.479855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170406, -0.716526, 0.676426,
		-0.921171, 0.127897, 0.367541,
		-0.349865, -0.685736, -0.638248,
		33.203648, 29.322668, 27.288380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993610, 29.480206, 28.075371>,  <33.448555, 29.802683, 27.735153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993610, 29.480206, 28.075371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105751, 29.214039, 27.798641>,  <33.173035, 29.054338, 27.632603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.105751, 29.214039, 27.798641>,  <32.993610, 29.480206, 28.075371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105751, 29.214039, 27.798641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094316, -0.698145, 0.709717,
		-0.955253, -0.264220, -0.132967,
		0.280351, -0.665418, -0.691825,
		33.189857, 29.014414, 27.591093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821930, 28.907471, 28.365086>,  <32.993610, 29.480206, 28.075371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821930, 28.907471, 28.365086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033878, 28.767551, 28.056053>,  <33.161045, 28.683599, 27.870634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033878, 28.767551, 28.056053>,  <32.821930, 28.907471, 28.365086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033878, 28.767551, 28.056053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259730, -0.800270, 0.540470,
		-0.807330, -0.487039, -0.333182,
		0.529866, -0.349800, -0.772581,
		33.192841, 28.662611, 27.824280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595547, 28.330400, 28.283815>,  <32.821930, 28.907471, 28.365086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595547, 28.330400, 28.283815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952560, 28.306683, 28.104988>,  <33.166767, 28.292452, 27.997692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952560, 28.306683, 28.104988>,  <32.595547, 28.330400, 28.283815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952560, 28.306683, 28.104988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205284, -0.829248, 0.519814,
		-0.401552, -0.555726, -0.727959,
		0.892533, -0.059294, -0.447068,
		33.220322, 28.288895, 27.970867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790417, 27.637220, 28.278845>,  <32.595547, 28.330400, 28.283815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790417, 27.637220, 28.278845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159008, 27.782040, 28.222557>,  <33.380161, 27.868931, 28.188786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159008, 27.782040, 28.222557>,  <32.790417, 27.637220, 28.278845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159008, 27.782040, 28.222557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384259, -0.796668, 0.466547,
		0.056808, -0.483983, -0.873231,
		0.921476, 0.362051, -0.140718,
		33.435452, 27.890656, 28.180342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211456, 27.116877, 27.892296>,  <32.790417, 27.637220, 28.278845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211456, 27.116877, 27.892296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435886, 27.381325, 28.091541>,  <33.570545, 27.539993, 28.211088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435886, 27.381325, 28.091541>,  <33.211456, 27.116877, 27.892296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435886, 27.381325, 28.091541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448160, -0.748547, 0.488702,
		0.695953, -0.050962, -0.716277,
		0.561072, 0.661121, 0.498114,
		33.604210, 27.579660, 28.240976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835861, 26.805878, 27.924366>,  <33.211456, 27.116877, 27.892296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835861, 26.805878, 27.924366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854519, 27.092861, 28.202381>,  <33.865715, 27.265051, 28.369190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854519, 27.092861, 28.202381>,  <33.835861, 26.805878, 27.924366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854519, 27.092861, 28.202381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433065, -0.641530, 0.633162,
		0.900155, 0.271460, -0.340633,
		0.046648, 0.717460, 0.695036,
		33.868515, 27.308100, 28.410892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516891, 26.731487, 28.266808>,  <33.835861, 26.805878, 27.924366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516891, 26.731487, 28.266808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306816, 26.941044, 28.535053>,  <34.180771, 27.066778, 28.695999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306816, 26.941044, 28.535053>,  <34.516891, 26.731487, 28.266808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306816, 26.941044, 28.535053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241777, -0.663706, 0.707841,
		0.815920, 0.533886, 0.221904,
		-0.525185, 0.523890, 0.670612,
		34.149261, 27.098211, 28.736237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028477, 26.766226, 28.849678>,  <34.516891, 26.731487, 28.266808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028477, 26.766226, 28.849678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676086, 26.856361, 29.016098>,  <34.464653, 26.910442, 29.115950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.676086, 26.856361, 29.016098>,  <35.028477, 26.766226, 28.849678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676086, 26.856361, 29.016098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107058, -0.761572, 0.639176,
		0.460885, 0.607642, 0.646805,
		-0.880979, 0.225341, 0.416050,
		34.411793, 26.923964, 29.140913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137463, 26.933674, 29.578529>,  <35.028477, 26.766226, 28.849678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137463, 26.933674, 29.578529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757339, 26.816940, 29.535164>,  <34.529266, 26.746901, 29.509146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757339, 26.816940, 29.535164>,  <35.137463, 26.933674, 29.578529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757339, 26.816940, 29.535164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191050, -0.821633, 0.537046,
		-0.245802, 0.489646, 0.836557,
		-0.950306, -0.291832, -0.108413,
		34.472248, 26.729391, 29.502640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026138, 26.713379, 30.212158>,  <35.137463, 26.933674, 29.578529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026138, 26.713379, 30.212158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749039, 26.532322, 29.987583>,  <34.582779, 26.423687, 29.852839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749039, 26.532322, 29.987583>,  <35.026138, 26.713379, 30.212158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749039, 26.532322, 29.987583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008608, -0.773257, 0.634035,
		-0.721128, 0.444059, 0.531776,
		-0.692748, -0.452643, -0.561440,
		34.541214, 26.396528, 29.819151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582417, 26.386808, 30.771391>,  <35.026138, 26.713379, 30.212158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582417, 26.386808, 30.771391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507076, 26.193768, 30.429253>,  <34.461872, 26.077942, 30.223969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507076, 26.193768, 30.429253>,  <34.582417, 26.386808, 30.771391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507076, 26.193768, 30.429253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187664, -0.837201, 0.513690,
		-0.964006, 0.257270, 0.067118,
		-0.188348, -0.482604, -0.855347,
		34.450573, 26.048986, 30.172649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925453, 26.023335, 30.865244>,  <34.582417, 26.386808, 30.771391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925453, 26.023335, 30.865244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130379, 25.862648, 30.561623>,  <34.253334, 25.766237, 30.379450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130379, 25.862648, 30.561623>,  <33.925453, 26.023335, 30.865244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130379, 25.862648, 30.561623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082183, -0.902730, 0.422286,
		-0.854859, -0.153960, -0.495492,
		0.512310, -0.401715, -0.759054,
		34.284073, 25.742134, 30.333906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592064, 25.396954, 30.733128>,  <33.925453, 26.023335, 30.865244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592064, 25.396954, 30.733128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952408, 25.348392, 30.566414>,  <34.168613, 25.319256, 30.466385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952408, 25.348392, 30.566414>,  <33.592064, 25.396954, 30.733128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952408, 25.348392, 30.566414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045790, -0.981316, 0.186875,
		-0.431684, -0.149264, -0.889589,
		0.900862, -0.121405, -0.416784,
		34.222668, 25.311972, 30.441380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532452, 24.882483, 30.267815>,  <33.592064, 25.396954, 30.733128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532452, 24.882483, 30.267815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909180, 24.908657, 30.399693>,  <34.135216, 24.924362, 30.478819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909180, 24.908657, 30.399693>,  <33.532452, 24.882483, 30.267815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909180, 24.908657, 30.399693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013234, -0.972888, 0.230896,
		0.335865, -0.221825, -0.915417,
		0.941817, 0.065435, 0.329695,
		34.191727, 24.928288, 30.498600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724701, 24.245726, 30.119635>,  <33.532452, 24.882483, 30.267815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724701, 24.245726, 30.119635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982025, 24.405071, 30.381157>,  <34.136417, 24.500679, 30.538071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982025, 24.405071, 30.381157>,  <33.724701, 24.245726, 30.119635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982025, 24.405071, 30.381157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191601, -0.910564, 0.366282,
		0.741245, -0.110363, -0.662100,
		0.643308, 0.398364, 0.653805,
		34.175018, 24.524580, 30.577299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339062, 23.787767, 30.088921>,  <33.724701, 24.245726, 30.119635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339062, 23.787767, 30.088921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377708, 23.963516, 30.446159>,  <34.400894, 24.068966, 30.660501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377708, 23.963516, 30.446159>,  <34.339062, 23.787767, 30.088921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377708, 23.963516, 30.446159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215649, -0.885219, 0.412168,
		0.971680, 0.152774, -0.180273,
		0.096612, 0.439371, 0.893095,
		34.406693, 24.095327, 30.714088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899906, 23.493771, 30.453114>,  <34.339062, 23.787767, 30.088921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899906, 23.493771, 30.453114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686604, 23.655602, 30.750290>,  <34.558624, 23.752701, 30.928595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686604, 23.655602, 30.750290>,  <34.899906, 23.493771, 30.453114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686604, 23.655602, 30.750290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043258, -0.890117, 0.453675,
		0.844849, 0.209786, 0.492159,
		-0.533253, 0.404577, 0.742939,
		34.526627, 23.776974, 30.973171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264355, 23.425264, 31.005941>,  <34.899906, 23.493771, 30.453114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264355, 23.425264, 31.005941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878029, 23.449863, 31.106682>,  <34.646233, 23.464622, 31.167126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878029, 23.449863, 31.106682>,  <35.264355, 23.425264, 31.005941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878029, 23.449863, 31.106682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062555, -0.887474, 0.456593,
		0.251588, 0.456737, 0.853285,
		-0.965811, 0.061497, 0.251849,
		34.588287, 23.468313, 31.182236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364452, 23.206741, 31.709421>,  <35.264355, 23.425264, 31.005941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364452, 23.206741, 31.709421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978550, 23.182117, 31.607082>,  <34.747009, 23.167343, 31.545679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978550, 23.182117, 31.607082>,  <35.364452, 23.206741, 31.709421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978550, 23.182117, 31.607082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092647, -0.830542, 0.549196,
		-0.246297, 0.553544, 0.795567,
		-0.964756, -0.061558, -0.255845,
		34.689125, 23.163651, 31.530329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052017, 23.066771, 32.301739>,  <35.364452, 23.206741, 31.709421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052017, 23.066771, 32.301739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784889, 22.956348, 32.025246>,  <34.624611, 22.890095, 31.859350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784889, 22.956348, 32.025246>,  <35.052017, 23.066771, 32.301739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784889, 22.956348, 32.025246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082933, -0.895301, 0.437674,
		-0.739684, 0.349616, 0.575010,
		-0.667824, -0.276053, -0.691234,
		34.584541, 22.873533, 31.817875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518856, 22.883043, 32.686836>,  <35.052017, 23.066771, 32.301739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518856, 22.883043, 32.686836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448677, 22.713173, 32.331562>,  <34.406570, 22.611252, 32.118397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448677, 22.713173, 32.331562>,  <34.518856, 22.883043, 32.686836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448677, 22.713173, 32.331562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268003, -0.847503, 0.458163,
		-0.947308, 0.318419, 0.034878,
		-0.175447, -0.424674, -0.888184,
		34.396042, 22.585772, 32.065105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915062, 22.712288, 32.611206>,  <34.518856, 22.883043, 32.686836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915062, 22.712288, 32.611206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049141, 22.449528, 32.341061>,  <34.129589, 22.291872, 32.178974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049141, 22.449528, 32.341061>,  <33.915062, 22.712288, 32.611206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049141, 22.449528, 32.341061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216872, -0.751388, 0.623204,
		-0.916846, -0.062430, -0.394329,
		0.335201, -0.656901, -0.675368,
		34.149700, 22.252457, 32.138451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389759, 22.182638, 32.512825>,  <33.915062, 22.712288, 32.611206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389759, 22.182638, 32.512825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737968, 22.017742, 32.405315>,  <33.946896, 21.918804, 32.340809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737968, 22.017742, 32.405315>,  <33.389759, 22.182638, 32.512825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737968, 22.017742, 32.405315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181688, -0.776797, 0.602972,
		-0.457351, -0.476071, -0.751123,
		0.870528, -0.412240, -0.268772,
		33.999126, 21.894070, 32.324684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237789, 21.478722, 32.557877>,  <33.389759, 22.182638, 32.512825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237789, 21.478722, 32.557877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637589, 21.491116, 32.555450>,  <33.877468, 21.498552, 32.553993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637589, 21.491116, 32.555450>,  <33.237789, 21.478722, 32.557877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637589, 21.491116, 32.555450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024382, -0.635461, 0.771748,
		0.020060, -0.771511, -0.635900,
		0.999502, 0.030985, -0.006064,
		33.937439, 21.500410, 32.553631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477909, 20.800999, 32.503403>,  <33.237789, 21.478722, 32.557877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477909, 20.800999, 32.503403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755135, 21.032116, 32.675827>,  <33.921471, 21.170786, 32.779282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755135, 21.032116, 32.675827>,  <33.477909, 20.800999, 32.503403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755135, 21.032116, 32.675827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042106, -0.564500, 0.824358,
		0.719641, -0.589487, -0.366908,
		0.693068, 0.577793, 0.431059,
		33.963055, 21.205454, 32.805145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981667, 20.312893, 32.658241>,  <33.477909, 20.800999, 32.503403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981667, 20.312893, 32.658241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065296, 20.625385, 32.893517>,  <34.115475, 20.812881, 33.034683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065296, 20.625385, 32.893517>,  <33.981667, 20.312893, 32.658241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065296, 20.625385, 32.893517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024402, -0.605461, 0.795501,
		0.977595, -0.151966, -0.145650,
		0.209075, 0.781232, 0.588187,
		34.128017, 20.859755, 33.069973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477062, 20.071661, 33.202187>,  <33.981667, 20.312893, 32.658241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477062, 20.071661, 33.202187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390644, 20.423470, 33.371784>,  <34.338795, 20.634554, 33.473541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390644, 20.423470, 33.371784>,  <34.477062, 20.071661, 33.202187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390644, 20.423470, 33.371784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033094, -0.440595, 0.897096,
		0.975823, 0.179778, 0.124294,
		-0.216042, 0.879520, 0.423993,
		34.325832, 20.687326, 33.498981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997070, 20.203718, 33.628624>,  <34.477062, 20.071661, 33.202187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997070, 20.203718, 33.628624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657909, 20.376099, 33.752136>,  <34.454414, 20.479527, 33.826244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657909, 20.376099, 33.752136>,  <34.997070, 20.203718, 33.628624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657909, 20.376099, 33.752136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016596, -0.560578, 0.827935,
		0.529898, 0.707130, 0.468161,
		-0.847899, 0.430951, 0.308785,
		34.403538, 20.505384, 33.844772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980225, 20.462307, 34.297421>,  <34.997070, 20.203718, 33.628624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980225, 20.462307, 34.297421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596043, 20.360992, 34.251175>,  <34.365532, 20.300203, 34.223427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596043, 20.360992, 34.251175>,  <34.980225, 20.462307, 34.297421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596043, 20.360992, 34.251175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079054, -0.646239, 0.759030,
		-0.266967, 0.719876, 0.640708,
		-0.960458, -0.253286, -0.115616,
		34.307907, 20.285006, 34.216492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141926, 20.142487, 34.917210>,  <34.980225, 20.462307, 34.297421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141926, 20.142487, 34.917210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789623, 20.044495, 34.755096>,  <34.578243, 19.985699, 34.657829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.789623, 20.044495, 34.755096>,  <35.141926, 20.142487, 34.917210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789623, 20.044495, 34.755096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144953, -0.675269, 0.723187,
		-0.450843, 0.695698, 0.559236,
		-0.880755, -0.244981, -0.405284,
		34.525398, 19.971001, 34.633511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759373, 20.006781, 35.491680>,  <35.141926, 20.142487, 34.917210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759373, 20.006781, 35.491680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553139, 19.857182, 35.183315>,  <34.429398, 19.767422, 34.998299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553139, 19.857182, 35.183315>,  <34.759373, 20.006781, 35.491680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553139, 19.857182, 35.183315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238243, -0.801660, 0.548252,
		-0.823053, 0.466332, 0.324219,
		-0.515581, -0.373998, -0.770910,
		34.398464, 19.744982, 34.952042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995464, 19.840578, 35.617298>,  <34.759373, 20.006781, 35.491680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995464, 19.840578, 35.617298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082581, 19.601345, 35.308788>,  <34.134850, 19.457806, 35.123684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082581, 19.601345, 35.308788>,  <33.995464, 19.840578, 35.617298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082581, 19.601345, 35.308788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508593, -0.744016, 0.433328,
		-0.833007, 0.297891, -0.466219,
		0.217790, -0.598081, -0.771276,
		34.147919, 19.421921, 35.077404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410080, 19.468815, 35.322060>,  <33.995464, 19.840578, 35.617298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410080, 19.468815, 35.322060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736996, 19.246151, 35.262505>,  <33.933144, 19.112553, 35.226772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736996, 19.246151, 35.262505>,  <33.410080, 19.468815, 35.322060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736996, 19.246151, 35.262505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368488, -0.703541, 0.607657,
		-0.443005, -0.441769, -0.780120,
		0.817290, -0.556660, -0.148886,
		33.982182, 19.079153, 35.217838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848740, 19.290892, 35.726509>,  <33.410080, 19.468815, 35.322060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848740, 19.290892, 35.726509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488865, 19.183441, 35.588867>,  <32.272942, 19.118971, 35.506283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.488865, 19.183441, 35.588867>,  <32.848740, 19.290892, 35.726509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488865, 19.183441, 35.588867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275255, 0.960889, -0.030445,
		0.338822, 0.067325, -0.938439,
		-0.899686, -0.268626, -0.344102,
		32.218960, 19.102854, 35.485638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704113, 19.722775, 35.218643>,  <32.848740, 19.290892, 35.726509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704113, 19.722775, 35.218643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339607, 19.588913, 35.314651>,  <32.120903, 19.508596, 35.372257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339607, 19.588913, 35.314651>,  <32.704113, 19.722775, 35.218643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339607, 19.588913, 35.314651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318333, 0.942144, 0.105017,
		-0.261274, 0.019293, -0.965072,
		-0.911263, -0.334652, 0.240017,
		32.066227, 19.488518, 35.386658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166115, 19.986423, 34.744221>,  <32.704113, 19.722775, 35.218643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166115, 19.986423, 34.744221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009499, 19.946285, 35.110088>,  <31.915527, 19.922203, 35.329609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009499, 19.946285, 35.110088>,  <32.166115, 19.986423, 34.744221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009499, 19.946285, 35.110088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368900, 0.927772, -0.056135,
		-0.842974, -0.359402, -0.400281,
		-0.391544, -0.100343, 0.914671,
		31.892035, 19.916182, 35.384491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430603, 20.157660, 34.804317>,  <32.166115, 19.986423, 34.744221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430603, 20.157660, 34.804317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580372, 20.251068, 35.163265>,  <31.670233, 20.307114, 35.378635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580372, 20.251068, 35.163265>,  <31.430603, 20.157660, 34.804317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580372, 20.251068, 35.163265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224568, 0.961795, -0.156584,
		-0.899653, -0.142892, 0.412559,
		0.374423, 0.233520, 0.897372,
		31.692699, 20.321123, 35.432476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026251, 20.675734, 35.180588>,  <31.430603, 20.157660, 34.804317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026251, 20.675734, 35.180588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379065, 20.712078, 35.365524>,  <31.590754, 20.733885, 35.476486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.379065, 20.712078, 35.365524>,  <31.026251, 20.675734, 35.180588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379065, 20.712078, 35.365524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056328, 0.994527, -0.087994,
		-0.467807, 0.051571, 0.882325,
		0.882034, 0.090863, 0.462342,
		31.643675, 20.739338, 35.504227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900158, 21.145781, 35.711826>,  <31.026251, 20.675734, 35.180588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900158, 21.145781, 35.711826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291117, 21.159603, 35.628399>,  <31.525692, 21.167896, 35.578342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291117, 21.159603, 35.628399>,  <30.900158, 21.145781, 35.711826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291117, 21.159603, 35.628399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049957, 0.996363, -0.069027,
		0.205423, 0.077886, 0.975569,
		0.977397, 0.034557, -0.208567,
		31.584335, 21.169970, 35.565830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265083, 21.566734, 36.226162>,  <30.900158, 21.145781, 35.711826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265083, 21.566734, 36.226162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465076, 21.554089, 35.879978>,  <31.585072, 21.546501, 35.672268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465076, 21.554089, 35.879978>,  <31.265083, 21.566734, 36.226162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465076, 21.554089, 35.879978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153837, 0.980199, -0.124677,
		0.852262, 0.195476, 0.485220,
		0.499984, -0.031613, -0.865458,
		31.615072, 21.544605, 35.620342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815275, 22.072760, 36.242508>,  <31.265083, 21.566734, 36.226162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815275, 22.072760, 36.242508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756006, 21.989048, 35.855881>,  <31.720444, 21.938820, 35.623905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756006, 21.989048, 35.855881>,  <31.815275, 22.072760, 36.242508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756006, 21.989048, 35.855881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044446, 0.977775, -0.204894,
		0.987962, 0.012600, -0.154181,
		-0.148172, -0.209281, -0.966564,
		31.711554, 21.926264, 35.565910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041847, 22.604568, 35.892776>,  <31.815275, 22.072760, 36.242508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041847, 22.604568, 35.892776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793947, 22.426590, 35.634186>,  <31.645206, 22.319803, 35.479031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793947, 22.426590, 35.634186>,  <32.041847, 22.604568, 35.892776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793947, 22.426590, 35.634186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168004, 0.879870, -0.444525,
		0.766604, -0.166885, -0.620054,
		-0.619752, -0.444946, -0.646475,
		31.608023, 22.293106, 35.440243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253723, 22.897022, 35.206417>,  <32.041847, 22.604568, 35.892776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253723, 22.897022, 35.206417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869535, 22.788334, 35.182171>,  <31.639023, 22.723122, 35.167625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869535, 22.788334, 35.182171>,  <32.253723, 22.897022, 35.206417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869535, 22.788334, 35.182171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200857, 0.827088, -0.524959,
		0.192774, -0.492030, -0.848967,
		-0.960466, -0.271719, -0.060613,
		31.581396, 22.706818, 35.163986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182903, 23.086058, 34.630276>,  <32.253723, 22.897022, 35.206417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182903, 23.086058, 34.630276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799971, 23.064384, 34.743828>,  <31.570211, 23.051380, 34.811958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.799971, 23.064384, 34.743828>,  <32.182903, 23.086058, 34.630276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799971, 23.064384, 34.743828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213078, 0.795940, -0.566637,
		-0.195249, -0.602945, -0.773521,
		-0.957328, -0.054185, 0.283881,
		31.512772, 23.048128, 34.828991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761679, 23.210094, 34.052727>,  <32.182903, 23.086058, 34.630276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761679, 23.210094, 34.052727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491898, 23.302105, 34.333355>,  <31.330029, 23.357311, 34.501732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491898, 23.302105, 34.333355>,  <31.761679, 23.210094, 34.052727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491898, 23.302105, 34.333355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289259, 0.791943, -0.537732,
		-0.679298, -0.565610, -0.467589,
		-0.674451, 0.230026, 0.701573,
		31.289562, 23.371113, 34.543827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066196, 23.393970, 33.738274>,  <31.761679, 23.210094, 34.052727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066196, 23.393970, 33.738274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072102, 23.551704, 34.105812>,  <31.075645, 23.646345, 34.326336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072102, 23.551704, 34.105812>,  <31.066196, 23.393970, 33.738274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072102, 23.551704, 34.105812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341306, 0.865742, -0.366062,
		-0.939836, -0.308204, 0.147371,
		0.014764, 0.394337, 0.918848,
		31.076530, 23.670006, 34.381466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454548, 23.674507, 33.845295>,  <31.066196, 23.393970, 33.738274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454548, 23.674507, 33.845295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680046, 23.854710, 34.122204>,  <30.815346, 23.962831, 34.288349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680046, 23.854710, 34.122204>,  <30.454548, 23.674507, 33.845295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680046, 23.854710, 34.122204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248832, 0.891846, -0.377748,
		-0.787573, 0.040697, 0.614875,
		0.563747, 0.450505, 0.692268,
		30.849171, 23.989861, 34.329884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087894, 24.305838, 34.044636>,  <30.454548, 23.674507, 33.845295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087894, 24.305838, 34.044636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469551, 24.372540, 34.144081>,  <30.698545, 24.412560, 34.203747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469551, 24.372540, 34.144081>,  <30.087894, 24.305838, 34.044636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469551, 24.372540, 34.144081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072466, 0.934448, -0.348650,
		-0.290454, 0.314645, 0.903679,
		0.954141, 0.166753, 0.248613,
		30.755793, 24.422565, 34.218666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150457, 25.054596, 34.234879>,  <30.087894, 24.305838, 34.044636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150457, 25.054596, 34.234879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537254, 24.973915, 34.172592>,  <30.769333, 24.925507, 34.135220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537254, 24.973915, 34.172592>,  <30.150457, 25.054596, 34.234879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537254, 24.973915, 34.172592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133971, 0.922245, -0.362650,
		0.216751, 0.329819, 0.918825,
		0.966991, -0.201700, -0.155711,
		30.827351, 24.913404, 34.125877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425583, 25.706066, 34.297131>,  <30.150457, 25.054596, 34.234879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425583, 25.706066, 34.297131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718109, 25.502022, 34.116039>,  <30.893625, 25.379595, 34.007385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718109, 25.502022, 34.116039>,  <30.425583, 25.706066, 34.297131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718109, 25.502022, 34.116039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338818, 0.847805, -0.407956,
		0.591931, 0.144950, 0.792847,
		0.731314, -0.510113, -0.452731,
		30.937504, 25.348988, 33.980221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034155, 26.063169, 34.461693>,  <30.425583, 25.706066, 34.297131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034155, 26.063169, 34.461693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126730, 25.863953, 34.127415>,  <31.182274, 25.744423, 33.926846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126730, 25.863953, 34.127415>,  <31.034155, 26.063169, 34.461693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126730, 25.863953, 34.127415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399450, 0.831917, -0.385168,
		0.887061, -0.244677, 0.391478,
		0.231436, -0.498043, -0.835698,
		31.196161, 25.714540, 33.876705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652582, 26.459522, 34.221313>,  <31.034155, 26.063169, 34.461693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652582, 26.459522, 34.221313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557737, 26.230579, 33.907326>,  <31.500830, 26.093214, 33.718933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557737, 26.230579, 33.907326>,  <31.652582, 26.459522, 34.221313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557737, 26.230579, 33.907326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430793, 0.662281, -0.613026,
		0.870743, -0.483518, 0.089532,
		-0.237114, -0.572358, -0.784973,
		31.486603, 26.058872, 33.671833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181786, 26.361685, 33.859909>,  <31.652582, 26.459522, 34.221313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181786, 26.361685, 33.859909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861784, 26.334846, 33.621414>,  <31.669785, 26.318743, 33.478317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861784, 26.334846, 33.621414>,  <32.181786, 26.361685, 33.859909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861784, 26.334846, 33.621414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325732, 0.785972, -0.525497,
		0.503883, -0.614611, -0.606923,
		-0.800001, -0.067095, -0.596236,
		31.621784, 26.314718, 33.442543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527214, 26.476637, 33.158749>,  <32.181786, 26.361685, 33.859909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527214, 26.476637, 33.158749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133991, 26.530258, 33.108734>,  <31.898058, 26.562431, 33.078728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133991, 26.530258, 33.108734>,  <32.527214, 26.476637, 33.158749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133991, 26.530258, 33.108734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183156, 0.746340, -0.639867,
		0.007542, -0.651925, -0.758246,
		-0.983055, 0.134051, -0.125033,
		31.839075, 26.570473, 33.071224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307034, 26.475563, 32.397877>,  <32.527214, 26.476637, 33.158749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307034, 26.475563, 32.397877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021954, 26.703106, 32.562050>,  <31.850904, 26.839632, 32.660553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021954, 26.703106, 32.562050>,  <32.307034, 26.475563, 32.397877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021954, 26.703106, 32.562050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192526, 0.721274, -0.665355,
		-0.674528, -0.395181, -0.623573,
		-0.712703, 0.568855, 0.410437,
		31.808144, 26.873762, 32.685181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845701, 26.662209, 31.926968>,  <32.307034, 26.475563, 32.397877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845701, 26.662209, 31.926968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735182, 26.936165, 32.196659>,  <31.668869, 27.100538, 32.358475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735182, 26.936165, 32.196659>,  <31.845701, 26.662209, 31.926968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735182, 26.936165, 32.196659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066948, 0.713552, -0.697396,
		-0.958737, -0.147552, -0.243007,
		-0.276300, 0.684888, 0.674230,
		31.652292, 27.141632, 32.398930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349634, 27.066750, 31.631130>,  <31.845701, 26.662209, 31.926968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349634, 27.066750, 31.631130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464357, 27.293159, 31.940285>,  <31.533192, 27.429007, 32.125778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464357, 27.293159, 31.940285>,  <31.349634, 27.066750, 31.631130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464357, 27.293159, 31.940285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044621, 0.798013, -0.600986,
		-0.956948, 0.206854, 0.203620,
		0.286808, 0.566027, 0.772888,
		31.550400, 27.462967, 32.172150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946718, 27.662445, 31.623083>,  <31.349634, 27.066750, 31.631130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946718, 27.662445, 31.623083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275240, 27.781799, 31.817577>,  <31.472353, 27.853411, 31.934275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275240, 27.781799, 31.817577>,  <30.946718, 27.662445, 31.623083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275240, 27.781799, 31.817577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019203, 0.837372, -0.546296,
		-0.570168, 0.458012, 0.682007,
		0.821304, 0.298384, 0.486238,
		31.521631, 27.871315, 31.963449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853449, 28.312971, 31.938046>,  <30.946718, 27.662445, 31.623083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853449, 28.312971, 31.938046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252647, 28.305851, 31.913773>,  <31.492167, 28.301579, 31.899208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252647, 28.305851, 31.913773>,  <30.853449, 28.312971, 31.938046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252647, 28.305851, 31.913773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003555, 0.942269, -0.334838,
		0.063139, 0.334384, 0.940320,
		0.997998, -0.017799, -0.060683,
		31.552048, 28.300512, 31.895567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054815, 28.965370, 31.961243>,  <30.853449, 28.312971, 31.938046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054815, 28.965370, 31.961243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404572, 28.821217, 31.831280>,  <31.614426, 28.734724, 31.753302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404572, 28.821217, 31.831280>,  <31.054815, 28.965370, 31.961243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404572, 28.821217, 31.831280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240780, 0.903609, -0.354284,
		0.421269, 0.231550, 0.876879,
		0.874390, -0.360383, -0.324909,
		31.666889, 28.713102, 31.733807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495123, 29.377436, 32.175648>,  <31.054815, 28.965370, 31.961243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495123, 29.377436, 32.175648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674084, 29.198395, 31.865940>,  <31.781460, 29.090971, 31.680117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674084, 29.198395, 31.865940>,  <31.495123, 29.377436, 32.175648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674084, 29.198395, 31.865940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150810, 0.891107, -0.428002,
		0.881527, 0.074721, 0.466184,
		0.447401, -0.447600, -0.774265,
		31.808304, 29.064116, 31.633661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028728, 29.860464, 32.034687>,  <31.495123, 29.377436, 32.175648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028728, 29.860464, 32.034687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003464, 29.637646, 31.703457>,  <31.988306, 29.503954, 31.504719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003464, 29.637646, 31.703457>,  <32.028728, 29.860464, 32.034687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003464, 29.637646, 31.703457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065554, 0.825625, -0.560398,
		0.995848, -0.089677, -0.015628,
		-0.063158, -0.557047, -0.828076,
		31.984516, 29.470531, 31.455034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465096, 30.152489, 31.550167>,  <32.028728, 29.860464, 32.034687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465096, 30.152489, 31.550167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201920, 29.938923, 31.337734>,  <32.044014, 29.810783, 31.210274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201920, 29.938923, 31.337734>,  <32.465096, 30.152489, 31.550167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201920, 29.938923, 31.337734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155315, 0.786270, -0.598044,
		0.736878, -0.310993, -0.600245,
		-0.657942, -0.533913, -0.531083,
		32.004536, 29.778749, 31.178410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620010, 30.296904, 30.828098>,  <32.465096, 30.152489, 31.550167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620010, 30.296904, 30.828098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239735, 30.177364, 30.861282>,  <32.011570, 30.105640, 30.881193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239735, 30.177364, 30.861282>,  <32.620010, 30.296904, 30.828098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239735, 30.177364, 30.861282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297339, 0.802121, -0.517872,
		0.088220, -0.517002, -0.851426,
		-0.950688, -0.298849, 0.082962,
		31.954529, 30.087709, 30.886171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353870, 30.490870, 30.197720>,  <32.620010, 30.296904, 30.828098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353870, 30.490870, 30.197720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994619, 30.393387, 30.344131>,  <31.779070, 30.334898, 30.431978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994619, 30.393387, 30.344131>,  <32.353870, 30.490870, 30.197720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994619, 30.393387, 30.344131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423847, 0.701503, -0.572930,
		-0.117144, -0.669703, -0.733332,
		-0.898127, -0.243705, 0.366028,
		31.725182, 30.320276, 30.453939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916986, 30.224541, 29.683706>,  <32.353870, 30.490870, 30.197720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916986, 30.224541, 29.683706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670738, 30.349808, 29.972965>,  <31.522989, 30.424969, 30.146521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670738, 30.349808, 29.972965>,  <31.916986, 30.224541, 29.683706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670738, 30.349808, 29.972965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284015, 0.767804, -0.574293,
		-0.735084, -0.558930, -0.383730,
		-0.615619, 0.313169, 0.723145,
		31.486053, 30.443758, 30.189909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299747, 30.263050, 29.447605>,  <31.916986, 30.224541, 29.683706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299747, 30.263050, 29.447605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239899, 30.518051, 29.749916>,  <31.203989, 30.671053, 29.931303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239899, 30.518051, 29.749916>,  <31.299747, 30.263050, 29.447605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239899, 30.518051, 29.749916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423615, 0.649343, -0.631589,
		-0.893400, -0.414660, 0.172899,
		-0.149624, 0.637504, 0.755779,
		31.195011, 30.709303, 29.976650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657619, 30.478415, 29.256588>,  <31.299747, 30.263050, 29.447605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657619, 30.478415, 29.256588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790480, 30.741341, 29.527176>,  <30.870195, 30.899097, 29.689529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.790480, 30.741341, 29.527176>,  <30.657619, 30.478415, 29.256588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790480, 30.741341, 29.527176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349253, 0.751918, -0.559143,
		-0.876184, -0.050540, 0.479320,
		0.332150, 0.657316, 0.676470,
		30.890125, 30.938536, 29.730118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049864, 30.866261, 29.597473>,  <30.657619, 30.478415, 29.256588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049864, 30.866261, 29.597473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380960, 31.090343, 29.610199>,  <30.579618, 31.224794, 29.617834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380960, 31.090343, 29.610199>,  <30.049864, 30.866261, 29.597473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380960, 31.090343, 29.610199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496065, 0.757107, -0.425098,
		-0.262232, 0.336088, 0.904588,
		0.827740, 0.560209, 0.031816,
		30.629282, 31.258406, 29.619743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868694, 31.497992, 29.689219>,  <30.049864, 30.866261, 29.597473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868694, 31.497992, 29.689219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225864, 31.566113, 29.522518>,  <30.440166, 31.606985, 29.422497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225864, 31.566113, 29.522518>,  <29.868694, 31.497992, 29.689219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225864, 31.566113, 29.522518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390939, 0.752399, -0.530153,
		0.223277, 0.636312, 0.738414,
		0.892924, 0.170304, -0.416753,
		30.493742, 31.617203, 29.397491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946779, 32.236397, 29.773155>,  <29.868694, 31.497992, 29.689219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946779, 32.236397, 29.773155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182795, 32.101612, 29.479675>,  <30.324404, 32.020741, 29.303587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182795, 32.101612, 29.479675>,  <29.946779, 32.236397, 29.773155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182795, 32.101612, 29.479675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103572, 0.869648, -0.482686,
		0.800706, 0.360793, 0.478224,
		0.590036, -0.336958, -0.733700,
		30.359806, 32.000526, 29.259565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436003, 32.772003, 29.594959>,  <29.946779, 32.236397, 29.773155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436003, 32.772003, 29.594959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449615, 32.537533, 29.271172>,  <30.457783, 32.396851, 29.076899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449615, 32.537533, 29.271172>,  <30.436003, 32.772003, 29.594959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449615, 32.537533, 29.271172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119552, 0.801734, -0.585602,
		0.992245, 0.116702, -0.042795,
		0.034031, -0.586177, -0.809468,
		30.459826, 32.361679, 29.028332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071623, 32.991867, 29.147840>,  <30.436003, 32.772003, 29.594959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071623, 32.991867, 29.147840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826040, 32.787411, 28.907242>,  <30.678692, 32.664738, 28.762882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826040, 32.787411, 28.907242>,  <31.071623, 32.991867, 29.147840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826040, 32.787411, 28.907242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039698, 0.741065, -0.670258,
		0.788341, -0.435387, -0.434690,
		-0.613956, -0.511136, -0.601497,
		30.641853, 32.634071, 28.726793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342100, 33.100353, 28.585884>,  <31.071623, 32.991867, 29.147840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342100, 33.100353, 28.585884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965506, 33.018059, 28.479095>,  <30.739548, 32.968681, 28.415022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965506, 33.018059, 28.479095>,  <31.342100, 33.100353, 28.585884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965506, 33.018059, 28.479095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036302, 0.725587, -0.687172,
		0.335087, -0.656656, -0.675663,
		-0.941488, -0.205734, -0.266972,
		30.683060, 32.956337, 28.399004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435707, 33.228924, 27.977785>,  <31.342100, 33.100353, 28.585884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435707, 33.228924, 27.977785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037777, 33.223526, 28.018059>,  <30.799019, 33.220287, 28.042223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037777, 33.223526, 28.018059>,  <31.435707, 33.228924, 27.977785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037777, 33.223526, 28.018059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090270, 0.572005, -0.815268,
		-0.046596, -0.820139, -0.570263,
		-0.994827, -0.013490, 0.100687,
		30.739328, 33.219479, 28.048265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158625, 33.094234, 27.269295>,  <31.435707, 33.228924, 27.977785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158625, 33.094234, 27.269295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863008, 33.245205, 27.492496>,  <30.685638, 33.335789, 27.626417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863008, 33.245205, 27.492496>,  <31.158625, 33.094234, 27.269295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863008, 33.245205, 27.492496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125989, 0.736263, -0.664864,
		-0.661777, -0.561662, -0.496575,
		-0.739039, 0.377428, 0.558005,
		30.641296, 33.358433, 27.659899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600260, 33.126183, 26.841974>,  <31.158625, 33.094234, 27.269295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600260, 33.126183, 26.841974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557596, 33.384071, 27.144753>,  <30.531998, 33.538803, 27.326420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557596, 33.384071, 27.144753>,  <30.600260, 33.126183, 26.841974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557596, 33.384071, 27.144753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184897, 0.735147, -0.652206,
		-0.976953, -0.209520, 0.040797,
		-0.106658, 0.644718, 0.756943,
		30.525599, 33.577488, 27.371836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895462, 33.417747, 26.894102>,  <30.600260, 33.126183, 26.841974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895462, 33.417747, 26.894102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151587, 33.661350, 27.081341>,  <30.305262, 33.807510, 27.193684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151587, 33.661350, 27.081341>,  <29.895462, 33.417747, 26.894102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151587, 33.661350, 27.081341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255942, 0.743745, -0.617525,
		-0.724220, 0.275603, 0.632098,
		0.640312, 0.609004, 0.468097,
		30.343679, 33.844051, 27.221769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279417, 33.260277, 26.555550>,  <29.895462, 33.417747, 26.894102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279417, 33.260277, 26.555550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905212, 33.129593, 26.501766>,  <28.680689, 33.051182, 26.469496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905212, 33.129593, 26.501766>,  <29.279417, 33.260277, 26.555550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905212, 33.129593, 26.501766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029039, -0.308192, 0.950881,
		-0.352098, 0.893465, 0.278831,
		-0.935513, -0.326706, -0.134459,
		28.624559, 33.031582, 26.461428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774223, 33.450390, 27.184362>,  <29.279417, 33.260277, 26.555550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774223, 33.450390, 27.184362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577415, 33.155010, 26.999920>,  <28.459332, 32.977783, 26.889256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577415, 33.155010, 26.999920>,  <28.774223, 33.450390, 27.184362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577415, 33.155010, 26.999920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087346, -0.485105, 0.870082,
		-0.866192, 0.468371, 0.174180,
		-0.492017, -0.738445, -0.461105,
		28.429810, 32.933475, 26.861588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117332, 33.280205, 27.586609>,  <28.774223, 33.450390, 27.184362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117332, 33.280205, 27.586609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170784, 32.952026, 27.364250>,  <28.202856, 32.755119, 27.230835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170784, 32.952026, 27.364250>,  <28.117332, 33.280205, 27.586609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170784, 32.952026, 27.364250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471653, -0.545977, 0.692425,
		-0.871600, 0.169661, -0.459923,
		0.133630, -0.820442, -0.555894,
		28.210873, 32.705894, 27.197481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552292, 32.923786, 27.755976>,  <28.117332, 33.280205, 27.586609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552292, 32.923786, 27.755976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796732, 32.654491, 27.589455>,  <27.943396, 32.492916, 27.489542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796732, 32.654491, 27.589455>,  <27.552292, 32.923786, 27.755976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796732, 32.654491, 27.589455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097726, -0.586077, 0.804340,
		-0.785495, -0.450851, -0.423946,
		0.611103, -0.673236, -0.416301,
		27.980062, 32.452522, 27.464563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251181, 32.309044, 27.803997>,  <27.552292, 32.923786, 27.755976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251181, 32.309044, 27.803997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638577, 32.225899, 27.749126>,  <27.871014, 32.176010, 27.716204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.638577, 32.225899, 27.749126>,  <27.251181, 32.309044, 27.803997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638577, 32.225899, 27.749126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048152, -0.696693, 0.715751,
		-0.244348, -0.686593, -0.684751,
		0.968491, -0.207865, -0.137175,
		27.929123, 32.163540, 27.707973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197948, 31.607227, 27.887489>,  <27.251181, 32.309044, 27.803997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197948, 31.607227, 27.887489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576921, 31.722984, 27.942074>,  <27.804306, 31.792439, 27.974825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576921, 31.722984, 27.942074>,  <27.197948, 31.607227, 27.887489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576921, 31.722984, 27.942074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120833, -0.718556, 0.684892,
		0.296257, -0.632400, -0.715753,
		0.947434, 0.289391, 0.136463,
		27.861151, 31.809801, 27.983013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477936, 31.009056, 27.863544>,  <27.197948, 31.607227, 27.887489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477936, 31.009056, 27.863544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729773, 31.250908, 28.058701>,  <27.880875, 31.396019, 28.175795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729773, 31.250908, 28.058701>,  <27.477936, 31.009056, 27.863544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729773, 31.250908, 28.058701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219587, -0.740854, 0.634757,
		0.745250, -0.292503, -0.599204,
		0.629591, 0.604630, 0.487892,
		27.918650, 31.432297, 28.205069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066538, 30.596592, 27.868015>,  <27.477936, 31.009056, 27.863544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066538, 30.596592, 27.868015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143381, 30.882759, 28.136723>,  <28.189487, 31.054459, 28.297947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143381, 30.882759, 28.136723>,  <28.066538, 30.596592, 27.868015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143381, 30.882759, 28.136723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090504, -0.694515, 0.713763,
		0.977192, -0.076322, -0.198169,
		0.192107, 0.715418, 0.671767,
		28.201014, 31.097385, 28.338253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651133, 30.428820, 28.159075>,  <28.066538, 30.596592, 27.868015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651133, 30.428820, 28.159075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448507, 30.660587, 28.414471>,  <28.326933, 30.799648, 28.567707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448507, 30.660587, 28.414471>,  <28.651133, 30.428820, 28.159075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448507, 30.660587, 28.414471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073662, -0.766906, 0.637518,
		0.859052, 0.275909, 0.431166,
		-0.506561, 0.579421, 0.638488,
		28.296539, 30.834414, 28.606016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.994295, 30.416426, 28.876223>,  <28.651133, 30.428820, 28.159075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.994295, 30.416426, 28.876223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628847, 30.547100, 28.973030>,  <28.409578, 30.625505, 29.031115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628847, 30.547100, 28.973030>,  <28.994295, 30.416426, 28.876223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628847, 30.547100, 28.973030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012614, -0.572216, 0.820006,
		0.406372, 0.752227, 0.518668,
		-0.913621, 0.326685, 0.242021,
		28.354761, 30.645105, 29.045637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972721, 30.664637, 29.562336>,  <28.994295, 30.416426, 28.876223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972721, 30.664637, 29.562336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584761, 30.598385, 29.490940>,  <28.351984, 30.558634, 29.448103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584761, 30.598385, 29.490940>,  <28.972721, 30.664637, 29.562336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584761, 30.598385, 29.490940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032111, -0.639607, 0.768031,
		-0.241372, 0.750645, 0.615037,
		-0.969901, -0.165632, -0.178488,
		28.293791, 30.548695, 29.437393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621977, 30.800812, 30.164948>,  <28.972721, 30.664637, 29.562336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621977, 30.800812, 30.164948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414177, 30.537518, 29.947014>,  <28.289497, 30.379541, 29.816254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414177, 30.537518, 29.947014>,  <28.621977, 30.800812, 30.164948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414177, 30.537518, 29.947014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023288, -0.648298, 0.761030,
		-0.854154, 0.382665, 0.352119,
		-0.519498, -0.658237, -0.544835,
		28.258327, 30.340046, 29.783564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342690, 30.434000, 30.637310>,  <28.621977, 30.800812, 30.164948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342690, 30.434000, 30.637310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261209, 30.200153, 30.323181>,  <28.212322, 30.059845, 30.134705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261209, 30.200153, 30.323181>,  <28.342690, 30.434000, 30.637310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261209, 30.200153, 30.323181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021568, -0.804626, 0.593391,
		-0.978796, 0.103935, 0.176509,
		-0.203698, -0.584616, -0.785323,
		28.200100, 30.024769, 30.087584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968601, 29.969330, 30.920879>,  <28.342690, 30.434000, 30.637310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968601, 29.969330, 30.920879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105520, 29.814529, 30.578403>,  <28.187672, 29.721649, 30.372917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105520, 29.814529, 30.578403>,  <27.968601, 29.969330, 30.920879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105520, 29.814529, 30.578403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080004, -0.895923, 0.436945,
		-0.936178, -0.218065, -0.275714,
		0.342301, -0.387000, -0.856190,
		28.208210, 29.698429, 30.321547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520836, 29.485464, 30.755003>,  <27.968601, 29.969330, 30.920879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520836, 29.485464, 30.755003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875744, 29.396145, 30.593563>,  <28.088688, 29.342552, 30.496700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875744, 29.396145, 30.593563>,  <27.520836, 29.485464, 30.755003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875744, 29.396145, 30.593563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039513, -0.834991, 0.548844,
		-0.459556, -0.502920, -0.732038,
		0.887269, -0.223299, -0.403598,
		28.141924, 29.329155, 30.472485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539745, 28.726397, 30.772644>,  <27.520836, 29.485464, 30.755003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539745, 28.726397, 30.772644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918047, 28.798725, 30.664677>,  <28.145027, 28.842123, 30.599897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918047, 28.798725, 30.664677>,  <27.539745, 28.726397, 30.772644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918047, 28.798725, 30.664677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275074, -0.887746, 0.369108,
		-0.172875, -0.423333, -0.889328,
		0.945753, 0.180822, -0.269917,
		28.201773, 28.852972, 30.583702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812429, 28.061956, 30.320534>,  <27.539745, 28.726397, 30.772644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812429, 28.061956, 30.320534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117765, 28.259563, 30.487030>,  <28.300968, 28.378128, 30.586927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117765, 28.259563, 30.487030>,  <27.812429, 28.061956, 30.320534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117765, 28.259563, 30.487030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323157, -0.849947, 0.416125,
		0.559357, -0.183133, -0.808444,
		0.763341, 0.494017, 0.416243,
		28.346767, 28.407768, 30.611902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425833, 27.693745, 30.244219>,  <27.812429, 28.061956, 30.320534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425833, 27.693745, 30.244219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534086, 27.909893, 30.562904>,  <28.599037, 28.039583, 30.754116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.534086, 27.909893, 30.562904>,  <28.425833, 27.693745, 30.244219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.534086, 27.909893, 30.562904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254758, -0.838295, 0.482037,
		0.928362, 0.072514, -0.364534,
		0.270633, 0.540373, 0.796715,
		28.615276, 28.072004, 30.801918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141699, 27.478807, 30.461540>,  <28.425833, 27.693745, 30.244219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141699, 27.478807, 30.461540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992619, 27.641171, 30.795326>,  <28.903170, 27.738588, 30.995598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992619, 27.641171, 30.795326>,  <29.141699, 27.478807, 30.461540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992619, 27.641171, 30.795326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381833, -0.752517, 0.536584,
		0.845753, 0.518611, 0.125474,
		-0.372700, 0.405907, 0.834466,
		28.880808, 27.762943, 31.045666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643627, 27.441341, 30.833632>,  <29.141699, 27.478807, 30.461540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643627, 27.441341, 30.833632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327332, 27.486786, 31.074238>,  <29.137554, 27.514053, 31.218601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327332, 27.486786, 31.074238>,  <29.643627, 27.441341, 30.833632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327332, 27.486786, 31.074238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287215, -0.798897, 0.528461,
		0.540589, 0.590640, 0.599089,
		-0.790741, 0.113613, 0.601515,
		29.090109, 27.520870, 31.254692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885445, 27.490112, 31.559900>,  <29.643627, 27.441341, 30.833632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885445, 27.490112, 31.559900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503525, 27.371220, 31.558758>,  <29.274372, 27.299883, 31.558073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.503525, 27.371220, 31.558758>,  <29.885445, 27.490112, 31.559900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503525, 27.371220, 31.558758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261766, -0.845344, 0.465694,
		-0.140834, 0.443898, 0.884941,
		-0.954801, -0.297233, -0.002856,
		29.217085, 27.282049, 31.557901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611830, 27.288609, 32.235603>,  <29.885445, 27.490112, 31.559900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611830, 27.288609, 32.235603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365629, 27.100368, 31.982719>,  <29.217909, 26.987425, 31.830988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365629, 27.100368, 31.982719>,  <29.611830, 27.288609, 32.235603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365629, 27.100368, 31.982719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034965, -0.817677, 0.574614,
		-0.787359, 0.331572, 0.519737,
		-0.615503, -0.470600, -0.632212,
		29.180979, 26.959188, 31.793056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224087, 26.799881, 32.664948>,  <29.611830, 27.288609, 32.235603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224087, 26.799881, 32.664948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176805, 26.660847, 32.292881>,  <29.148438, 26.577427, 32.069641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176805, 26.660847, 32.292881>,  <29.224087, 26.799881, 32.664948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176805, 26.660847, 32.292881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078078, -0.930581, 0.357663,
		-0.989915, 0.114902, 0.082858,
		-0.118203, -0.347586, -0.930168,
		29.141344, 26.556570, 32.013832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692255, 26.339502, 32.752186>,  <29.224087, 26.799881, 32.664948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692255, 26.339502, 32.752186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890909, 26.209755, 32.430157>,  <29.010101, 26.131907, 32.236938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.890909, 26.209755, 32.430157>,  <28.692255, 26.339502, 32.752186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890909, 26.209755, 32.430157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078860, -0.940571, 0.330315,
		-0.864370, -0.100558, -0.492699,
		0.496634, -0.324368, -0.805071,
		29.039900, 26.112444, 32.188637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328190, 25.792704, 32.475620>,  <28.692255, 26.339502, 32.752186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328190, 25.792704, 32.475620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678686, 25.722355, 32.296169>,  <28.888985, 25.680145, 32.188499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.678686, 25.722355, 32.296169>,  <28.328190, 25.792704, 32.475620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678686, 25.722355, 32.296169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050406, -0.959362, 0.277640,
		-0.479226, -0.220666, -0.849499,
		0.876243, -0.175872, -0.448628,
		28.941559, 25.669594, 32.161579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303701, 25.121840, 32.318214>,  <28.328190, 25.792704, 32.475620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303701, 25.121840, 32.318214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692219, 25.197006, 32.259869>,  <28.925329, 25.242107, 32.224861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.692219, 25.197006, 32.259869>,  <28.303701, 25.121840, 32.318214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.692219, 25.197006, 32.259869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215744, -0.954186, 0.207325,
		-0.100223, -0.232843, -0.967336,
		0.971293, 0.187918, -0.145866,
		28.983606, 25.253382, 32.216110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577551, 24.575993, 31.837561>,  <28.303701, 25.121840, 32.318214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577551, 24.575993, 31.837561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878689, 24.728542, 32.052139>,  <29.059372, 24.820072, 32.180885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.878689, 24.728542, 32.052139>,  <28.577551, 24.575993, 31.837561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878689, 24.728542, 32.052139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277808, -0.922988, 0.266300,
		0.596695, -0.051454, -0.800817,
		0.752847, 0.381373, 0.536448,
		29.104544, 24.842955, 32.213074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215601, 24.171879, 31.585474>,  <28.577551, 24.575993, 31.837561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215601, 24.171879, 31.585474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290102, 24.314137, 31.951824>,  <29.334803, 24.399490, 32.171635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290102, 24.314137, 31.951824>,  <29.215601, 24.171879, 31.585474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290102, 24.314137, 31.951824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300249, -0.908195, 0.291603,
		0.935500, 0.220679, -0.275937,
		0.186254, 0.355644, 0.915875,
		29.345978, 24.420830, 32.226585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861723, 23.875906, 31.734966>,  <29.215601, 24.171879, 31.585474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861723, 23.875906, 31.734966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679304, 23.954803, 32.082096>,  <29.569853, 24.002142, 32.290375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679304, 23.954803, 32.082096>,  <29.861723, 23.875906, 31.734966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679304, 23.954803, 32.082096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127828, -0.950501, 0.283209,
		0.880729, 0.240088, 0.408258,
		-0.456045, 0.197243, 0.867824,
		29.542490, 24.013977, 32.342442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274202, 23.641552, 32.169220>,  <29.861723, 23.875906, 31.734966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274202, 23.641552, 32.169220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946604, 23.658215, 32.398132>,  <29.750044, 23.668213, 32.535480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946604, 23.658215, 32.398132>,  <30.274202, 23.641552, 32.169220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946604, 23.658215, 32.398132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118779, -0.963451, 0.240113,
		0.561371, 0.264627, 0.784114,
		-0.818996, 0.041656, 0.572285,
		29.700905, 23.670712, 32.569817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538160, 23.598383, 32.846081>,  <30.274202, 23.641552, 32.169220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538160, 23.598383, 32.846081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153055, 23.491241, 32.860706>,  <29.921991, 23.426956, 32.869484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153055, 23.491241, 32.860706>,  <30.538160, 23.598383, 32.846081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153055, 23.491241, 32.860706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270167, -0.948467, 0.165592,
		-0.009671, 0.169305, 0.985516,
		-0.962765, -0.267855, 0.036568,
		29.864225, 23.410885, 32.871677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600868, 23.024986, 33.237003>,  <30.538160, 23.598383, 32.846081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600868, 23.024986, 33.237003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231403, 22.961967, 33.097271>,  <30.009726, 22.924156, 33.013432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231403, 22.961967, 33.097271>,  <30.600868, 23.024986, 33.237003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231403, 22.961967, 33.097271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041873, -0.947616, 0.316657,
		-0.380916, 0.277856, 0.881872,
		-0.923661, -0.157547, -0.349328,
		29.954306, 22.914703, 32.992474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302095, 22.557186, 33.695789>,  <30.600868, 23.024986, 33.237003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302095, 22.557186, 33.695789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122961, 22.519665, 33.340118>,  <30.015480, 22.497152, 33.126717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.122961, 22.519665, 33.340118>,  <30.302095, 22.557186, 33.695789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.122961, 22.519665, 33.340118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142154, -0.989302, 0.032771,
		-0.882743, -0.111725, 0.456379,
		-0.447836, -0.093805, -0.889181,
		29.988611, 22.491524, 33.073364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916277, 22.023035, 33.882446>,  <30.302095, 22.557186, 33.695789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916277, 22.023035, 33.882446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915867, 22.064842, 33.484638>,  <29.915621, 22.089926, 33.245953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915867, 22.064842, 33.484638>,  <29.916277, 22.023035, 33.882446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915867, 22.064842, 33.484638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070290, -0.992055, -0.104332,
		-0.997526, -0.070012, -0.006328,
		-0.001027, 0.104519, -0.994522,
		29.915558, 22.096197, 33.186283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489597, 21.523500, 33.723682>,  <29.916277, 22.023035, 33.882446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489597, 21.523500, 33.723682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702478, 21.612514, 33.396942>,  <29.830208, 21.665922, 33.200897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702478, 21.612514, 33.396942>,  <29.489597, 21.523500, 33.723682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702478, 21.612514, 33.396942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012993, -0.962576, -0.270701,
		-0.846517, 0.154680, -0.509394,
		0.532202, 0.222534, -0.816847,
		29.862139, 21.679276, 33.151890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131432, 21.237267, 33.255527>,  <29.489597, 21.523500, 33.723682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131432, 21.237267, 33.255527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500570, 21.256844, 33.102711>,  <29.722054, 21.268591, 33.011021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500570, 21.256844, 33.102711>,  <29.131432, 21.237267, 33.255527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500570, 21.256844, 33.102711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082738, -0.943547, -0.320740,
		-0.376171, 0.327604, -0.866701,
		0.922849, 0.048944, -0.382041,
		29.777426, 21.271526, 32.988098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158981, 20.921989, 32.641228>,  <29.131432, 21.237267, 33.255527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158981, 20.921989, 32.641228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537148, 20.899143, 32.769558>,  <29.764048, 20.885435, 32.846558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537148, 20.899143, 32.769558>,  <29.158981, 20.921989, 32.641228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537148, 20.899143, 32.769558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062671, -0.934275, -0.351002,
		0.319787, 0.351949, -0.879698,
		0.945414, -0.057114, 0.320826,
		29.820772, 20.882010, 32.865807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542894, 20.459656, 32.187286>,  <29.158981, 20.921989, 32.641228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542894, 20.459656, 32.187286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798643, 20.460030, 32.494846>,  <29.952093, 20.460255, 32.679382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798643, 20.460030, 32.494846>,  <29.542894, 20.459656, 32.187286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798643, 20.460030, 32.494846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205325, -0.963893, -0.169565,
		0.740977, 0.266289, -0.616477,
		0.639371, 0.000934, 0.768898,
		29.990454, 20.460310, 32.725517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038624, 20.046989, 31.991453>,  <29.542894, 20.459656, 32.187286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038624, 20.046989, 31.991453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815424, 19.812931, 31.756084>,  <29.681503, 19.672495, 31.614864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815424, 19.812931, 31.756084>,  <30.038624, 20.046989, 31.991453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815424, 19.812931, 31.756084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555706, 0.790096, -0.258726,
		0.616301, 0.182618, -0.766044,
		-0.558001, -0.585148, -0.588419,
		29.648024, 19.637386, 31.579559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942760, 20.358320, 31.311541>,  <30.038624, 20.046989, 31.991453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942760, 20.358320, 31.311541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634996, 20.108501, 31.365139>,  <29.450338, 19.958611, 31.397299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634996, 20.108501, 31.365139>,  <29.942760, 20.358320, 31.311541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634996, 20.108501, 31.365139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634067, 0.721387, -0.278495,
		0.077268, -0.299240, -0.951044,
		-0.769408, -0.624545, 0.133998,
		29.404175, 19.921139, 31.405338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557028, 20.231533, 30.535135>,  <29.942760, 20.358320, 31.311541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557028, 20.231533, 30.535135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295126, 20.152061, 30.826839>,  <29.137985, 20.104378, 31.001862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.295126, 20.152061, 30.826839>,  <29.557028, 20.231533, 30.535135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295126, 20.152061, 30.826839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589851, 0.737617, -0.328628,
		-0.472624, -0.645326, -0.600150,
		-0.654754, -0.198681, 0.729262,
		29.098700, 20.092457, 31.045618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910961, 20.272470, 30.290091>,  <29.557028, 20.231533, 30.535135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910961, 20.272470, 30.290091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810799, 20.273735, 30.677345>,  <28.750702, 20.274494, 30.909698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810799, 20.273735, 30.677345>,  <28.910961, 20.272470, 30.290091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810799, 20.273735, 30.677345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570031, 0.807801, -0.150074,
		-0.782536, -0.589446, -0.200476,
		-0.250405, 0.003161, 0.968136,
		28.735678, 20.274683, 30.967787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128908, 20.303751, 30.327618>,  <28.910961, 20.272470, 30.290091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128908, 20.303751, 30.327618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298550, 20.461102, 30.653904>,  <28.400333, 20.555511, 30.849676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298550, 20.461102, 30.653904>,  <28.128908, 20.303751, 30.327618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298550, 20.461102, 30.653904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586150, 0.805849, -0.083872,
		-0.690337, -0.442561, 0.572341,
		0.424102, 0.393378, 0.815715,
		28.425779, 20.579115, 30.898619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493132, 20.559088, 30.580280>,  <28.128908, 20.303751, 30.327618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493132, 20.559088, 30.580280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803772, 20.723949, 30.770866>,  <27.990156, 20.822866, 30.885218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.803772, 20.723949, 30.770866>,  <27.493132, 20.559088, 30.580280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.803772, 20.723949, 30.770866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493646, 0.868000, 0.053758,
		-0.391416, -0.276954, 0.877547,
		0.776600, 0.412156, 0.476467,
		28.036753, 20.847597, 30.913807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202629, 20.994547, 31.049231>,  <27.493132, 20.559088, 30.580280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202629, 20.994547, 31.049231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581730, 21.120296, 31.027580>,  <27.809191, 21.195747, 31.014591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581730, 21.120296, 31.027580>,  <27.202629, 20.994547, 31.049231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581730, 21.120296, 31.027580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317645, 0.945670, -0.069349,
		0.029382, 0.082918, 0.996123,
		0.947754, 0.314376, -0.054125,
		27.866056, 21.214609, 31.011343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277569, 21.492716, 31.549438>,  <27.202629, 20.994547, 31.049231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277569, 21.492716, 31.549438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549559, 21.581516, 31.269909>,  <27.712751, 21.634796, 31.102192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549559, 21.581516, 31.269909>,  <27.277569, 21.492716, 31.549438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549559, 21.581516, 31.269909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255515, 0.965067, 0.057956,
		0.687276, 0.139151, 0.712944,
		0.679974, 0.221999, -0.698822,
		27.753551, 21.648115, 31.060263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599602, 22.242079, 31.705111>,  <27.277569, 21.492716, 31.549438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599602, 22.242079, 31.705111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717573, 22.178501, 31.328228>,  <27.788357, 22.140354, 31.102098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717573, 22.178501, 31.328228>,  <27.599602, 22.242079, 31.705111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717573, 22.178501, 31.328228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139936, 0.968252, -0.207140,
		0.945216, 0.192940, 0.263325,
		0.294930, -0.158943, -0.942207,
		27.806051, 22.130817, 31.045567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088036, 22.789314, 31.549568>,  <27.599602, 22.242079, 31.705111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088036, 22.789314, 31.549568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982855, 22.662392, 31.185112>,  <27.919746, 22.586239, 30.966438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982855, 22.662392, 31.185112>,  <28.088036, 22.789314, 31.549568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982855, 22.662392, 31.185112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117267, 0.947882, -0.296257,
		0.957656, 0.028946, -0.286455,
		-0.262950, -0.317304, -0.911140,
		27.903969, 22.567200, 30.911770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550413, 23.145624, 31.106352>,  <28.088036, 22.789314, 31.549568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550413, 23.145624, 31.106352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223970, 23.042225, 30.899605>,  <28.028105, 22.980185, 30.775557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223970, 23.042225, 30.899605>,  <28.550413, 23.145624, 31.106352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223970, 23.042225, 30.899605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052553, 0.923872, -0.379076,
		0.575508, -0.282203, -0.767562,
		-0.816106, -0.258499, -0.516865,
		27.979139, 22.964676, 30.744545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688910, 23.465700, 30.414913>,  <28.550413, 23.145624, 31.106352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688910, 23.465700, 30.414913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300901, 23.376713, 30.375790>,  <28.068096, 23.323320, 30.352316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300901, 23.376713, 30.375790>,  <28.688910, 23.465700, 30.414913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300901, 23.376713, 30.375790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175337, 0.919354, -0.352201,
		0.168273, -0.324493, -0.930800,
		-0.970021, -0.222469, -0.097807,
		28.009895, 23.309973, 30.346447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527452, 23.684296, 29.774939>,  <28.688910, 23.465700, 30.414913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527452, 23.684296, 29.774939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177973, 23.689011, 29.969467>,  <27.968285, 23.691839, 30.086185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177973, 23.689011, 29.969467>,  <28.527452, 23.684296, 29.774939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177973, 23.689011, 29.969467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206609, 0.896068, -0.392905,
		-0.440410, -0.443760, -0.780459,
		-0.873700, 0.011790, 0.486323,
		27.915863, 23.692547, 30.115364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118969, 23.635098, 29.230545>,  <28.527452, 23.684296, 29.774939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118969, 23.635098, 29.230545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939758, 23.807716, 29.543732>,  <27.832232, 23.911287, 29.731644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939758, 23.807716, 29.543732>,  <28.118969, 23.635098, 29.230545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939758, 23.807716, 29.543732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129368, 0.835272, -0.534402,
		-0.884610, -0.340718, -0.318397,
		-0.448028, 0.431547, 0.782967,
		27.805349, 23.937180, 29.778622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.519899, 23.925007, 28.916691>,  <28.118969, 23.635098, 29.230545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.519899, 23.925007, 28.916691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547234, 24.124817, 29.262131>,  <27.563635, 24.244703, 29.469395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547234, 24.124817, 29.262131>,  <27.519899, 23.925007, 28.916691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547234, 24.124817, 29.262131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328975, 0.828492, -0.453186,
		-0.941863, -0.253134, 0.220948,
		0.068337, 0.499525, 0.863600,
		27.567734, 24.274673, 29.521212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948263, 24.412277, 28.918423>,  <27.519899, 23.925007, 28.916691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948263, 24.412277, 28.918423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194771, 24.571762, 29.190083>,  <27.342676, 24.667452, 29.353079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194771, 24.571762, 29.190083>,  <26.948263, 24.412277, 28.918423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194771, 24.571762, 29.190083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137698, 0.903640, -0.405554,
		-0.775403, 0.156413, 0.611788,
		0.616270, 0.398710, 0.679148,
		27.379652, 24.691376, 29.393827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546667, 25.005980, 29.259712>,  <26.948263, 24.412277, 28.918423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546667, 25.005980, 29.259712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938732, 25.074718, 29.299213>,  <27.173971, 25.115961, 29.322914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938732, 25.074718, 29.299213>,  <26.546667, 25.005980, 29.259712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938732, 25.074718, 29.299213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129547, 0.932552, -0.336992,
		-0.150005, 0.317513, 0.936314,
		0.980161, 0.171847, 0.098754,
		27.232780, 25.126272, 29.328840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562494, 25.511400, 29.669140>,  <26.546667, 25.005980, 29.259712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562494, 25.511400, 29.669140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920696, 25.518681, 29.491268>,  <27.135618, 25.523048, 29.384544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920696, 25.518681, 29.491268>,  <26.562494, 25.511400, 29.669140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920696, 25.518681, 29.491268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165658, 0.941000, -0.295087,
		0.413072, 0.337917, 0.845686,
		0.895505, 0.018202, -0.444679,
		27.189348, 25.524141, 29.357864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954197, 26.120535, 29.918173>,  <26.562494, 25.511400, 29.669140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954197, 26.120535, 29.918173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172609, 26.018661, 29.598927>,  <27.303656, 25.957537, 29.407379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.172609, 26.018661, 29.598927>,  <26.954197, 26.120535, 29.918173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172609, 26.018661, 29.598927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125308, 0.966782, -0.222778,
		0.828342, 0.021633, 0.559805,
		0.546029, -0.254685, -0.798115,
		27.336418, 25.942257, 29.359491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.589144, 26.603411, 30.009964>,  <26.954197, 26.120535, 29.918173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.589144, 26.603411, 30.009964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599001, 26.483562, 29.628468>,  <27.604916, 26.411654, 29.399570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599001, 26.483562, 29.628468>,  <27.589144, 26.603411, 30.009964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599001, 26.483562, 29.628468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311589, 0.908808, -0.277455,
		0.949898, -0.290338, 0.115753,
		0.024641, -0.299621, -0.953740,
		27.606394, 26.393677, 29.342346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094734, 27.002739, 29.754408>,  <27.589144, 26.603411, 30.009964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094734, 27.002739, 29.754408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843521, 26.888496, 29.464855>,  <27.692793, 26.819950, 29.291124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843521, 26.888496, 29.464855>,  <28.094734, 27.002739, 29.754408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843521, 26.888496, 29.464855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049754, 0.943048, -0.328915,
		0.776596, -0.170553, -0.606474,
		-0.628031, -0.285608, -0.723882,
		27.655111, 26.802814, 29.247690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363209, 27.384434, 29.174730>,  <28.094734, 27.002739, 29.754408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363209, 27.384434, 29.174730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986292, 27.283928, 29.086227>,  <27.760141, 27.223623, 29.033125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986292, 27.283928, 29.086227>,  <28.363209, 27.384434, 29.174730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986292, 27.283928, 29.086227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141592, 0.897941, -0.416718,
		0.303383, -0.361341, -0.881698,
		-0.942290, -0.251267, -0.221257,
		27.703606, 27.208548, 29.019850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200659, 27.711369, 28.437622>,  <28.363209, 27.384434, 29.174730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200659, 27.711369, 28.437622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842505, 27.610203, 28.584221>,  <27.627611, 27.549503, 28.672180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842505, 27.610203, 28.584221>,  <28.200659, 27.711369, 28.437622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842505, 27.610203, 28.584221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406317, 0.800783, -0.440060,
		-0.182186, -0.542937, -0.819773,
		-0.895386, -0.252915, 0.366495,
		27.573889, 27.534328, 28.694170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660622, 27.793465, 27.893034>,  <28.200659, 27.711369, 28.437622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660622, 27.793465, 27.893034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462994, 27.806889, 28.240543>,  <27.344418, 27.814943, 28.449049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462994, 27.806889, 28.240543>,  <27.660622, 27.793465, 27.893034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462994, 27.806889, 28.240543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587713, 0.723478, -0.362179,
		-0.640693, -0.689532, -0.337725,
		-0.494071, 0.033560, 0.868774,
		27.314772, 27.816957, 28.501175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921488, 27.716837, 27.712791>,  <27.660622, 27.793465, 27.893034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921488, 27.716837, 27.712791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917995, 27.898174, 28.069309>,  <26.915899, 28.006977, 28.283220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.917995, 27.898174, 28.069309>,  <26.921488, 27.716837, 27.712791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.917995, 27.898174, 28.069309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761355, 0.574834, -0.299840,
		-0.648276, -0.681209, 0.340135,
		-0.008733, 0.453342, 0.891294,
		26.915375, 28.034178, 28.336697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258051, 27.764828, 27.859711>,  <26.921488, 27.716837, 27.712791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258051, 27.764828, 27.859711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421413, 28.046967, 28.091465>,  <26.519430, 28.216249, 28.230518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.421413, 28.046967, 28.091465>,  <26.258051, 27.764828, 27.859711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421413, 28.046967, 28.091465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718493, 0.639906, -0.272560,
		-0.563003, -0.304971, 0.768128,
		0.408407, 0.705346, 0.579388,
		26.543936, 28.258570, 28.265282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637829, 28.041590, 28.259941>,  <26.258051, 27.764828, 27.859711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637829, 28.041590, 28.259941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925175, 28.317070, 28.299229>,  <26.097582, 28.482359, 28.322802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925175, 28.317070, 28.299229>,  <25.637829, 28.041590, 28.259941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925175, 28.317070, 28.299229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657562, 0.718299, -0.227286,
		-0.227084, 0.098688, 0.968862,
		0.718363, 0.688700, 0.098220,
		26.140684, 28.523680, 28.328695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348022, 28.525381, 28.617853>,  <25.637829, 28.041590, 28.259941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348022, 28.525381, 28.617853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.645725, 28.685322, 28.403862>,  <25.824347, 28.781286, 28.275467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.645725, 28.685322, 28.403862>,  <25.348022, 28.525381, 28.617853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645725, 28.685322, 28.403862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631393, 0.682393, -0.368351,
		0.217779, 0.611929, 0.760339,
		0.744255, 0.399854, -0.534979,
		25.869001, 28.805279, 28.243368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.143881, 29.186525, 28.568169>,  <25.348022, 28.525381, 28.617853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.143881, 29.186525, 28.568169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444174, 29.171062, 28.304379>,  <25.624350, 29.161785, 28.146105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.444174, 29.171062, 28.304379>,  <25.143881, 29.186525, 28.568169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.444174, 29.171062, 28.304379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406962, 0.759300, -0.507785,
		0.520369, 0.649591, 0.554298,
		0.750732, -0.038657, -0.659475,
		25.669394, 29.159466, 28.106535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364288, 29.862944, 28.499306>,  <25.143881, 29.186525, 28.568169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364288, 29.862944, 28.499306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476944, 29.644424, 28.183777>,  <25.544537, 29.513313, 27.994459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476944, 29.644424, 28.183777>,  <25.364288, 29.862944, 28.499306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476944, 29.644424, 28.183777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127494, 0.793503, -0.595061,
		0.951012, 0.268163, 0.153832,
		0.281640, -0.546297, -0.788821,
		25.561436, 29.480536, 27.947130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.810522, 30.222925, 28.044397>,  <25.364288, 29.862944, 28.499306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.810522, 30.222925, 28.044397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677109, 29.947956, 27.786343>,  <25.597061, 29.782974, 27.631510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677109, 29.947956, 27.786343>,  <25.810522, 30.222925, 28.044397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.677109, 29.947956, 27.786343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046180, 0.695416, -0.717122,
		0.941607, -0.209391, -0.263690,
		-0.333533, -0.687424, -0.645139,
		25.577049, 29.741730, 27.592800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.138353, 30.395405, 27.486761>,  <25.810522, 30.222925, 28.044397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.138353, 30.395405, 27.486761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827644, 30.184330, 27.349255>,  <25.641218, 30.057686, 27.266750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827644, 30.184330, 27.349255>,  <26.138353, 30.395405, 27.486761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827644, 30.184330, 27.349255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033232, 0.579430, -0.814345,
		0.628908, -0.621134, -0.467619,
		-0.776769, -0.527688, -0.343766,
		25.594612, 30.026024, 27.246126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324520, 30.271416, 26.813818>,  <26.138353, 30.395405, 27.486761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324520, 30.271416, 26.813818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927328, 30.224163, 26.816143>,  <25.689013, 30.195810, 26.817537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927328, 30.224163, 26.816143>,  <26.324520, 30.271416, 26.813818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927328, 30.224163, 26.816143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031806, 0.219363, -0.975125,
		0.113918, -0.968465, -0.221580,
		-0.992981, -0.118132, 0.005814,
		25.629435, 30.188723, 26.817886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169977, 29.888283, 26.190201>,  <26.324520, 30.271416, 26.813818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169977, 29.888283, 26.190201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844007, 30.089527, 26.305286>,  <25.648426, 30.210274, 26.374338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844007, 30.089527, 26.305286>,  <26.169977, 29.888283, 26.190201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844007, 30.089527, 26.305286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103134, 0.362622, -0.926212,
		-0.570318, -0.784465, -0.243622,
		-0.814923, 0.503110, 0.287715,
		25.599531, 30.240459, 26.391602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821077, 29.809654, 25.660063>,  <26.169977, 29.888283, 26.190201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821077, 29.809654, 25.660063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635082, 30.108372, 25.850258>,  <25.523485, 30.287601, 25.964375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635082, 30.108372, 25.850258>,  <25.821077, 29.809654, 25.660063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635082, 30.108372, 25.850258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252954, 0.402623, -0.879721,
		-0.848411, -0.529336, 0.001689,
		-0.464988, 0.746792, 0.475487,
		25.495586, 30.332409, 25.992905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.109577, 29.954548, 25.430574>,  <25.821077, 29.809654, 25.660063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.109577, 29.954548, 25.430574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197897, 30.317814, 25.572834>,  <25.250889, 30.535772, 25.658190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197897, 30.317814, 25.572834>,  <25.109577, 29.954548, 25.430574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.197897, 30.317814, 25.572834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483871, 0.418608, -0.768528,
		-0.846828, -0.002400, 0.531862,
		0.220797, 0.908164, 0.355650,
		25.264135, 30.590263, 25.679529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.487240, 30.358242, 25.280783>,  <25.109577, 29.954548, 25.430574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.487240, 30.358242, 25.280783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.756620, 30.643299, 25.359379>,  <24.918249, 30.814333, 25.406536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.756620, 30.643299, 25.359379>,  <24.487240, 30.358242, 25.280783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.756620, 30.643299, 25.359379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423034, 0.589503, -0.688134,
		-0.606224, 0.380301, 0.698472,
		0.673450, 0.712641, 0.196491,
		24.958654, 30.857092, 25.418325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.028429, 30.974985, 25.476715>,  <24.487240, 30.358242, 25.280783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.028429, 30.974985, 25.476715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389915, 31.113464, 25.375965>,  <24.606808, 31.196552, 25.315516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.389915, 31.113464, 25.375965>,  <24.028429, 30.974985, 25.476715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.389915, 31.113464, 25.375965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425644, 0.663235, -0.615586,
		-0.046065, 0.663525, 0.746735,
		0.903718, 0.346200, -0.251873,
		24.661030, 31.217325, 25.300404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.070435, 31.648808, 25.628431>,  <24.028429, 30.974985, 25.476715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.070435, 31.648808, 25.628431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357416, 31.597198, 25.354610>,  <24.529606, 31.566233, 25.190319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.357416, 31.597198, 25.354610>,  <24.070435, 31.648808, 25.628431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.357416, 31.597198, 25.354610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326616, 0.805680, -0.494168,
		0.615287, 0.578130, 0.535899,
		0.717456, -0.129022, -0.684551,
		24.572653, 31.558493, 25.149244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.137434, 32.216751, 25.342257>,  <24.070435, 31.648808, 25.628431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.137434, 32.216751, 25.342257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361603, 32.040146, 25.061974>,  <24.496103, 31.934181, 24.893805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361603, 32.040146, 25.061974>,  <24.137434, 32.216751, 25.342257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361603, 32.040146, 25.061974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315624, 0.668352, -0.673563,
		0.765709, 0.598638, 0.235204,
		0.560420, -0.441518, -0.700708,
		24.529728, 31.907690, 24.851761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.616640, 32.728905, 25.365534>,  <24.137434, 32.216751, 25.342257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.616640, 32.728905, 25.365534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.528769, 32.529655, 25.030006>,  <24.476046, 32.410107, 24.828690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.528769, 32.529655, 25.030006>,  <24.616640, 32.728905, 25.365534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.528769, 32.529655, 25.030006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341108, 0.844770, -0.412321,
		0.913995, 0.195550, -0.355490,
		-0.219678, -0.498120, -0.838819,
		24.462866, 32.380219, 24.778360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781168, 33.107269, 24.753843>,  <24.616640, 32.728905, 25.365534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781168, 33.107269, 24.753843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494665, 32.845646, 24.656540>,  <24.322763, 32.688671, 24.598158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494665, 32.845646, 24.656540>,  <24.781168, 33.107269, 24.753843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.494665, 32.845646, 24.656540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488662, 0.718960, -0.494274,
		0.498180, -0.235157, -0.834577,
		-0.716259, -0.654063, -0.243259,
		24.279787, 32.649426, 24.583563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.723602, 32.972530, 23.994150>,  <24.781168, 33.107269, 24.753843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.723602, 32.972530, 23.994150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.372898, 32.944328, 24.184444>,  <24.162476, 32.927406, 24.298620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.372898, 32.944328, 24.184444>,  <24.723602, 32.972530, 23.994150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.372898, 32.944328, 24.184444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419049, 0.597386, -0.683760,
		-0.235990, -0.798848, -0.553308,
		-0.876759, -0.070502, 0.475734,
		24.109871, 32.923176, 24.327166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.222887, 32.670818, 23.604345>,  <24.723602, 32.972530, 23.994150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.222887, 32.670818, 23.604345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.017559, 32.933788, 23.824997>,  <23.894363, 33.091572, 23.957388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.017559, 32.933788, 23.824997>,  <24.222887, 32.670818, 23.604345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.017559, 32.933788, 23.824997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488697, 0.304457, -0.817607,
		-0.705464, -0.689271, 0.165000,
		-0.513318, 0.657427, 0.551628,
		23.863564, 33.131016, 23.990486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.475168, 32.606979, 23.618525>,  <24.222887, 32.670818, 23.604345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.475168, 32.606979, 23.618525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.550232, 32.995449, 23.677307>,  <23.595270, 33.228531, 23.712576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.550232, 32.995449, 23.677307>,  <23.475168, 32.606979, 23.618525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.550232, 32.995449, 23.677307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429685, 0.215707, -0.876836,
		-0.883264, 0.101400, 0.457780,
		0.187658, 0.971179, 0.146956,
		23.606529, 33.286804, 23.721394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.900963, 32.902885, 23.494278>,  <23.475168, 32.606979, 23.618525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.900963, 32.902885, 23.494278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.217215, 33.122227, 23.385311>,  <23.406965, 33.253830, 23.319931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.217215, 33.122227, 23.385311>,  <22.900963, 32.902885, 23.494278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.217215, 33.122227, 23.385311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382774, 0.095395, -0.918904,
		-0.477897, 0.830788, 0.285318,
		0.790632, 0.548354, -0.272415,
		23.454405, 33.286732, 23.303587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.290695, 32.536430, 23.694847>,  <22.900963, 32.902885, 23.494278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.290695, 32.536430, 23.694847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.013750, 32.797241, 23.818451>,  <21.847582, 32.953728, 23.892612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.013750, 32.797241, 23.818451>,  <22.290695, 32.536430, 23.694847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.013750, 32.797241, 23.818451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367604, 0.049762, -0.928650,
		-0.620885, -0.756558, 0.205235,
		-0.692365, 0.652030, 0.309010,
		21.806040, 32.992851, 23.911154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.585438, 32.349545, 23.532503>,  <22.290695, 32.536430, 23.694847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.585438, 32.349545, 23.532503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.595350, 32.748390, 23.561199>,  <21.601297, 32.987698, 23.578417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.595350, 32.748390, 23.561199>,  <21.585438, 32.349545, 23.532503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.595350, 32.748390, 23.561199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401313, 0.075648, -0.912812,
		-0.915606, -0.006170, 0.402030,
		0.024781, 0.997115, 0.071740,
		21.602785, 33.047523, 23.582722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.940945, 32.523975, 23.338949>,  <21.585438, 32.349545, 23.532503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.940945, 32.523975, 23.338949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.192101, 32.826233, 23.264381>,  <21.342794, 33.007587, 23.219641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.192101, 32.826233, 23.264381>,  <20.940945, 32.523975, 23.338949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.192101, 32.826233, 23.264381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427176, 0.134373, -0.894128,
		-0.650595, 0.641048, 0.407166,
		0.627891, 0.755646, -0.186418,
		21.380468, 33.052925, 23.208456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.548422, 33.149082, 23.157824>,  <20.940945, 32.523975, 23.338949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.548422, 33.149082, 23.157824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.914633, 33.244198, 23.028046>,  <21.134359, 33.301266, 22.950178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.914633, 33.244198, 23.028046>,  <20.548422, 33.149082, 23.157824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.914633, 33.244198, 23.028046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385682, 0.289771, -0.875946,
		-0.114276, 0.927086, 0.357005,
		0.915528, 0.237789, -0.324447,
		21.189291, 33.315536, 22.930712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.448372, 33.743671, 22.727055>,  <20.548422, 33.149082, 23.157824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.448372, 33.743671, 22.727055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.801102, 33.591400, 22.615723>,  <21.012739, 33.500038, 22.548923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.801102, 33.591400, 22.615723>,  <20.448372, 33.743671, 22.727055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.801102, 33.591400, 22.615723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249449, 0.124330, -0.960373,
		0.400200, 0.916310, 0.014677,
		0.881825, -0.380680, -0.278330,
		21.065649, 33.477196, 22.532223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.758661, 34.259228, 22.326410>,  <20.448372, 33.743671, 22.727055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.758661, 34.259228, 22.326410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.905989, 33.905373, 22.212044>,  <20.994385, 33.693058, 22.143423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.905989, 33.905373, 22.212044>,  <20.758661, 34.259228, 22.326410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.905989, 33.905373, 22.212044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406271, 0.123467, -0.905373,
		0.836232, 0.449626, -0.313929,
		0.368320, -0.884642, -0.285917,
		21.016485, 33.639980, 22.126268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.989563, 34.396030, 21.600069>,  <20.758661, 34.259228, 22.326410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.989563, 34.396030, 21.600069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.993309, 33.997490, 21.634010>,  <20.995556, 33.758366, 21.654375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.993309, 33.997490, 21.634010>,  <20.989563, 34.396030, 21.600069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.993309, 33.997490, 21.634010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232819, -0.084699, -0.968825,
		0.972475, -0.010684, -0.232762,
		0.009363, -0.996349, 0.084855,
		20.996119, 33.698586, 21.659468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.481941, 33.984058, 21.108137>,  <20.989563, 34.396030, 21.600069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.481941, 33.984058, 21.108137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.189213, 33.725513, 21.194534>,  <21.013577, 33.570385, 21.246372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.189213, 33.725513, 21.194534>,  <21.481941, 33.984058, 21.108137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.189213, 33.725513, 21.194534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195703, -0.104271, -0.975104,
		0.652795, -0.755870, -0.050188,
		-0.731819, -0.646365, 0.215994,
		20.969667, 33.531605, 21.259333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.528271, 33.488445, 20.650616>,  <21.481941, 33.984058, 21.108137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.528271, 33.488445, 20.650616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.153196, 33.442486, 20.781792>,  <20.928152, 33.414909, 20.860498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.153196, 33.442486, 20.781792>,  <21.528271, 33.488445, 20.650616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.153196, 33.442486, 20.781792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324638, -0.046912, -0.944674,
		0.123925, -0.992269, 0.006689,
		-0.937684, -0.114898, 0.327942,
		20.871891, 33.408016, 20.880175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.261778, 32.803848, 20.250072>,  <21.528271, 33.488445, 20.650616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.261778, 32.803848, 20.250072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.963110, 33.045822, 20.360733>,  <20.783909, 33.191006, 20.427130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.963110, 33.045822, 20.360733>,  <21.261778, 32.803848, 20.250072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.963110, 33.045822, 20.360733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462098, -0.172548, -0.869881,
		-0.478486, -0.777355, 0.408376,
		-0.746670, 0.604936, 0.276653,
		20.739109, 33.227303, 20.443729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.683626, 32.421574, 20.119671>,  <21.261778, 32.803848, 20.250072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.683626, 32.421574, 20.119671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506235, 32.774654, 20.181847>,  <20.399799, 32.986504, 20.219152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.506235, 32.774654, 20.181847>,  <20.683626, 32.421574, 20.119671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.506235, 32.774654, 20.181847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625980, -0.180919, -0.758563,
		-0.641464, -0.433708, 0.632788,
		-0.443478, 0.882704, 0.155439,
		20.373192, 33.039467, 20.228479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.907091, 32.319118, 19.965794>,  <20.683626, 32.421574, 20.119671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.907091, 32.319118, 19.965794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.983370, 32.710712, 19.936897>,  <20.029137, 32.945671, 19.919559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.983370, 32.710712, 19.936897>,  <19.907091, 32.319118, 19.965794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.983370, 32.710712, 19.936897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506246, 0.035027, -0.861677,
		-0.841041, 0.200891, 0.502288,
		0.190697, 0.978987, -0.072241,
		20.040579, 33.004410, 19.915224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.282646, 32.705437, 19.689699>,  <19.907091, 32.319118, 19.965794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.282646, 32.705437, 19.689699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.592970, 32.948605, 19.622112>,  <19.779165, 33.094505, 19.581560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.592970, 32.948605, 19.622112>,  <19.282646, 32.705437, 19.689699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.592970, 32.948605, 19.622112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414878, 0.289728, -0.862516,
		-0.475387, 0.739250, 0.476987,
		0.775811, 0.607920, -0.168966,
		19.825714, 33.130981, 19.571423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.955505, 33.317566, 19.400618>,  <19.282646, 32.705437, 19.689699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.955505, 33.317566, 19.400618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.339268, 33.294205, 19.290253>,  <19.569525, 33.280186, 19.224033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.339268, 33.294205, 19.290253>,  <18.955505, 33.317566, 19.400618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.339268, 33.294205, 19.290253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241059, 0.337977, -0.909760,
		0.146387, 0.939341, 0.310178,
		0.959407, -0.058405, -0.275912,
		19.627090, 33.276684, 19.207479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.205757, 34.051235, 19.063641>,  <18.955505, 33.317566, 19.400618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.205757, 34.051235, 19.063641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.441669, 33.758938, 18.926140>,  <19.583218, 33.583557, 18.843639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.441669, 33.758938, 18.926140>,  <19.205757, 34.051235, 19.063641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.441669, 33.758938, 18.926140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101133, 0.355483, -0.929195,
		0.801204, 0.582788, 0.135755,
		0.589782, -0.730746, -0.343754,
		19.618605, 33.539715, 18.823013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.508339, 34.393909, 18.462059>,  <19.205757, 34.051235, 19.063641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.508339, 34.393909, 18.462059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.604771, 34.011528, 18.395092>,  <19.662630, 33.782097, 18.354912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.604771, 34.011528, 18.395092>,  <19.508339, 34.393909, 18.462059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.604771, 34.011528, 18.395092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088020, 0.193329, -0.977178,
		0.966506, 0.220841, 0.130751,
		0.241079, -0.955956, -0.167416,
		19.677094, 33.724743, 18.344868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.169529, 34.331421, 18.015795>,  <19.508339, 34.393909, 18.462059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.169529, 34.331421, 18.015795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.009573, 33.969860, 17.955067>,  <19.913599, 33.752922, 17.918631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.009573, 33.969860, 17.955067>,  <20.169529, 34.331421, 18.015795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.009573, 33.969860, 17.955067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163705, 0.092539, -0.982160,
		0.901825, -0.417611, 0.110968,
		-0.399891, -0.903902, -0.151818,
		19.889606, 33.698689, 17.909521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.719940, 33.850193, 17.910355>,  <20.169529, 34.331421, 18.015795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.719940, 33.850193, 17.910355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.389442, 33.694687, 17.747292>,  <20.191145, 33.601383, 17.649454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.389442, 33.694687, 17.747292>,  <20.719940, 33.850193, 17.910355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.389442, 33.694687, 17.747292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364162, 0.183498, -0.913080,
		0.429778, -0.902879, -0.010040,
		-0.826242, -0.388766, -0.407658,
		20.141569, 33.578056, 17.624994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.954639, 33.405460, 17.311680>,  <20.719940, 33.850193, 17.910355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.954639, 33.405460, 17.311680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.571205, 33.503090, 17.252972>,  <20.341145, 33.561668, 17.217747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.571205, 33.503090, 17.252972>,  <20.954639, 33.405460, 17.311680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.571205, 33.503090, 17.252972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186940, 0.150426, -0.970786,
		-0.214862, -0.958019, -0.189823,
		-0.958586, 0.244071, -0.146772,
		20.283628, 33.576309, 17.208941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.890011, 33.313602, 16.659155>,  <20.954639, 33.405460, 17.311680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.890011, 33.313602, 16.659155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.564867, 33.533100, 16.737274>,  <20.369781, 33.664799, 16.784145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.564867, 33.533100, 16.737274>,  <20.890011, 33.313602, 16.659155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.564867, 33.533100, 16.737274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008323, 0.346211, -0.938120,
		-0.582402, -0.760933, -0.285988,
		-0.812859, 0.548743, 0.195300,
		20.321009, 33.697723, 16.795864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.577318, 33.353394, 16.047541>,  <20.890011, 33.313602, 16.659155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.577318, 33.353394, 16.047541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.376629, 33.647167, 16.230350>,  <20.256216, 33.823433, 16.340036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.376629, 33.647167, 16.230350>,  <20.577318, 33.353394, 16.047541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.376629, 33.647167, 16.230350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207170, 0.410941, -0.887811,
		-0.839853, -0.540118, -0.054026,
		-0.501724, 0.734438, 0.457026,
		20.226112, 33.867500, 16.367458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.774040, 33.366417, 15.803499>,  <20.577318, 33.353394, 16.047541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.774040, 33.366417, 15.803499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906467, 33.717003, 15.943328>,  <19.985924, 33.927357, 16.027225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906467, 33.717003, 15.943328>,  <19.774040, 33.366417, 15.803499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.906467, 33.717003, 15.943328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174580, 0.420962, -0.890120,
		-0.927317, 0.233661, 0.292380,
		0.331067, 0.876467, 0.349572,
		20.005787, 33.979942, 16.048199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.260702, 33.944511, 15.751842>,  <19.774040, 33.366417, 15.803499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.260702, 33.944511, 15.751842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.637564, 34.078529, 15.747949>,  <19.863680, 34.158939, 15.745613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.637564, 34.078529, 15.747949>,  <19.260702, 33.944511, 15.751842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.637564, 34.078529, 15.747949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158209, 0.418917, -0.894135,
		-0.295497, 0.843952, 0.447691,
		0.942153, 0.335043, -0.009732,
		19.920210, 34.179043, 15.745028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.165657, 34.714668, 15.703312>,  <19.260702, 33.944511, 15.751842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.165657, 34.714668, 15.703312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.500511, 34.567909, 15.541030>,  <19.701424, 34.479855, 15.443661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.500511, 34.567909, 15.541030>,  <19.165657, 34.714668, 15.703312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.500511, 34.567909, 15.541030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293755, 0.324122, -0.899251,
		0.461429, 0.871971, 0.163556,
		0.837133, -0.366895, -0.405705,
		19.751652, 34.457840, 15.419318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.542904, 35.251385, 15.371387>,  <19.165657, 34.714668, 15.703312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.542904, 35.251385, 15.371387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.592941, 34.884090, 15.221082>,  <19.622963, 34.663715, 15.130898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.592941, 34.884090, 15.221082>,  <19.542904, 35.251385, 15.371387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.592941, 34.884090, 15.221082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570928, 0.243126, -0.784175,
		0.811414, 0.312629, -0.493832,
		0.125092, -0.918234, -0.375765,
		19.630468, 34.608620, 15.108353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.707384, 35.430317, 14.706543>,  <19.542904, 35.251385, 15.371387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.707384, 35.430317, 14.706543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.532648, 35.075092, 14.763841>,  <19.427807, 34.861958, 14.798219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.532648, 35.075092, 14.763841>,  <19.707384, 35.430317, 14.706543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.532648, 35.075092, 14.763841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757114, 0.276994, -0.591653,
		0.485746, -0.366910, -0.793365,
		-0.436841, -0.888061, 0.143244,
		19.401596, 34.808674, 14.806814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.489014, 35.565819, 14.931595>,  <19.707384, 35.430317, 14.706543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.489014, 35.565819, 14.931595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.601282, 35.894039, 15.130763>,  <20.668644, 36.090969, 15.250264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.601282, 35.894039, 15.130763>,  <20.489014, 35.565819, 14.931595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.601282, 35.894039, 15.130763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360214, 0.390799, -0.847067,
		-0.889646, 0.417104, -0.185887,
		0.280671, 0.820549, 0.497920,
		20.685484, 36.140205, 15.280139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.180429, 36.062840, 14.618880>,  <20.489014, 35.565819, 14.931595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.180429, 36.062840, 14.618880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.514675, 36.221943, 14.770425>,  <20.715223, 36.317406, 14.861352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.514675, 36.221943, 14.770425>,  <20.180429, 36.062840, 14.618880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.514675, 36.221943, 14.770425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204836, 0.414325, -0.886779,
		-0.509697, 0.818609, 0.264740,
		0.835614, 0.397760, 0.378861,
		20.765360, 36.341270, 14.884083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.152893, 36.873859, 14.542058>,  <20.180429, 36.062840, 14.618880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.152893, 36.873859, 14.542058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.504080, 36.682575, 14.533179>,  <20.714792, 36.567806, 14.527852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.504080, 36.682575, 14.533179>,  <20.152893, 36.873859, 14.542058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.504080, 36.682575, 14.533179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237312, 0.475023, -0.847370,
		0.415766, 0.738693, 0.530538,
		0.877965, -0.478210, -0.022198,
		20.767469, 36.539112, 14.526520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.648151, 37.424801, 14.413107>,  <20.152893, 36.873859, 14.542058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.648151, 37.424801, 14.413107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.768648, 37.058762, 14.305894>,  <20.840946, 36.839138, 14.241566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.768648, 37.058762, 14.305894>,  <20.648151, 37.424801, 14.413107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.768648, 37.058762, 14.305894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219250, 0.340032, -0.914499,
		0.927999, 0.216720, 0.303068,
		0.301243, -0.915101, -0.268034,
		20.859020, 36.784229, 14.225484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.948305, 37.581913, 15.075102>,  <20.648151, 37.424801, 14.413107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.948305, 37.581913, 15.075102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.174530, 37.252605, 15.055636>,  <21.310265, 37.055019, 15.043957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.174530, 37.252605, 15.055636>,  <20.948305, 37.581913, 15.075102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.174530, 37.252605, 15.055636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279921, -0.247133, 0.927669,
		-0.775746, -0.511033, -0.370220,
		0.565563, -0.823268, -0.048664,
		21.344198, 37.005627, 15.041038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.510906, 37.317894, 15.491961>,  <20.948305, 37.581913, 15.075102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.510906, 37.317894, 15.491961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.644434, 36.940918, 15.484166>,  <21.724550, 36.714733, 15.479489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.644434, 36.940918, 15.484166>,  <21.510906, 37.317894, 15.491961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.644434, 36.940918, 15.484166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085922, -0.051008, 0.994995,
		-0.938714, -0.330472, -0.098003,
		0.333817, -0.942436, -0.019488,
		21.744579, 36.658188, 15.478320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.996721, 36.727276, 15.769800>,  <21.510906, 37.317894, 15.491961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.996721, 36.727276, 15.769800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.372652, 36.597420, 15.812371>,  <21.598211, 36.519505, 15.837914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.372652, 36.597420, 15.812371>,  <20.996721, 36.727276, 15.769800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.372652, 36.597420, 15.812371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165529, -0.160184, 0.973109,
		-0.298868, -0.932173, -0.204284,
		0.939829, -0.324646, 0.106427,
		21.654600, 36.500027, 15.844299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004541, 36.056267, 16.154423>,  <20.996721, 36.727276, 15.769800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.004541, 36.056267, 16.154423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.373806, 36.201096, 16.206078>,  <21.595366, 36.287994, 16.237070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.373806, 36.201096, 16.206078>,  <21.004541, 36.056267, 16.154423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.373806, 36.201096, 16.206078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060161, -0.195711, 0.978814,
		0.379677, -0.911372, -0.158890,
		0.923161, 0.362075, 0.129136,
		21.650755, 36.309719, 16.244818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.327475, 35.632915, 16.538223>,  <21.004541, 36.056267, 16.154423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.327475, 35.632915, 16.538223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.575315, 35.942650, 16.589603>,  <21.724020, 36.128490, 16.620432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.575315, 35.942650, 16.589603>,  <21.327475, 35.632915, 16.538223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.575315, 35.942650, 16.589603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025214, -0.183202, 0.982752,
		0.784513, -0.605674, -0.133036,
		0.619600, 0.774336, 0.128452,
		21.761196, 36.174950, 16.628139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.758387, 35.374207, 17.070156>,  <21.327475, 35.632915, 16.538223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.758387, 35.374207, 17.070156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.836903, 35.766018, 17.088051>,  <21.884012, 36.001102, 17.098787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.836903, 35.766018, 17.088051>,  <21.758387, 35.374207, 17.070156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.836903, 35.766018, 17.088051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302133, -0.103824, 0.947595,
		0.932837, -0.172489, -0.316327,
		0.196292, 0.979525, 0.044737,
		21.895790, 36.059875, 17.101471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.385368, 35.393135, 17.491920>,  <21.758387, 35.374207, 17.070156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.385368, 35.393135, 17.491920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.257826, 35.771587, 17.514400>,  <22.181301, 35.998661, 17.527887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.257826, 35.771587, 17.514400>,  <22.385368, 35.393135, 17.491920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.257826, 35.771587, 17.514400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271248, 0.034278, 0.961899,
		0.908160, 0.321951, -0.267567,
		-0.318857, 0.946136, 0.056198,
		22.162169, 36.055428, 17.531260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.848038, 35.675400, 18.049829>,  <22.385368, 35.393135, 17.491920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.848038, 35.675400, 18.049829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.557926, 35.948124, 18.011665>,  <22.383860, 36.111759, 17.988768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.557926, 35.948124, 18.011665>,  <22.848038, 35.675400, 18.049829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.557926, 35.948124, 18.011665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155783, 0.297522, 0.941920,
		0.670600, 0.668290, -0.322001,
		-0.725277, 0.681813, -0.095409,
		22.340343, 36.152668, 17.983042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.094828, 36.399284, 18.328629>,  <22.848038, 35.675400, 18.049829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.094828, 36.399284, 18.328629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.697947, 36.349621, 18.332993>,  <22.459818, 36.319824, 18.335611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.697947, 36.349621, 18.332993>,  <23.094828, 36.399284, 18.328629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.697947, 36.349621, 18.332993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047641, 0.458679, 0.887324,
		-0.115173, 0.879885, -0.461017,
		-0.992202, -0.124159, 0.010909,
		22.400286, 36.312374, 18.336266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.801867, 37.068024, 18.582636>,  <23.094828, 36.399284, 18.328629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.801867, 37.068024, 18.582636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.519707, 36.791977, 18.647312>,  <22.350410, 36.626347, 18.686117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.519707, 36.791977, 18.647312>,  <22.801867, 37.068024, 18.582636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.519707, 36.791977, 18.647312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191397, 0.405096, 0.894016,
		-0.682479, 0.599692, -0.417842,
		-0.705400, -0.690121, 0.161690,
		22.308086, 36.584942, 18.695820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.306957, 37.365952, 19.007114>,  <22.801867, 37.068024, 18.582636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.306957, 37.365952, 19.007114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.194092, 36.983437, 19.037838>,  <22.126373, 36.753929, 19.056273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.194092, 36.983437, 19.037838>,  <22.306957, 37.365952, 19.007114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.194092, 36.983437, 19.037838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337478, 0.173885, 0.925134,
		-0.898050, 0.235116, -0.371789,
		-0.282162, -0.956287, 0.076811,
		22.109444, 36.696552, 19.060881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.618679, 37.364876, 19.308542>,  <22.306957, 37.365952, 19.007114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.618679, 37.364876, 19.308542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.816507, 37.024632, 19.379944>,  <21.935205, 36.820484, 19.422785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.816507, 37.024632, 19.379944>,  <21.618679, 37.364876, 19.308542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.816507, 37.024632, 19.379944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294112, 0.029473, 0.955316,
		-0.817861, -0.524974, -0.235598,
		0.494572, -0.850608, 0.178506,
		21.964880, 36.769447, 19.433496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.126041, 37.114216, 19.665693>,  <21.618679, 37.364876, 19.308542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.126041, 37.114216, 19.665693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.451567, 36.898487, 19.752262>,  <21.646881, 36.769051, 19.804203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.451567, 36.898487, 19.752262>,  <21.126041, 37.114216, 19.665693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.451567, 36.898487, 19.752262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364924, -0.184445, 0.912584,
		-0.452260, -0.821651, -0.346916,
		0.813813, -0.539324, 0.216423,
		21.695711, 36.736691, 19.817188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.878298, 36.590054, 20.021482>,  <21.126041, 37.114216, 19.665693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.878298, 36.590054, 20.021482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.265011, 36.565121, 20.120636>,  <21.497038, 36.550159, 20.180128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.265011, 36.565121, 20.120636>,  <20.878298, 36.590054, 20.021482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.265011, 36.565121, 20.120636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255543, -0.215336, 0.942512,
		-0.005372, -0.974549, -0.224112,
		0.966783, -0.062334, 0.247882,
		21.555046, 36.546421, 20.195000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.916821, 35.845299, 20.336168>,  <20.878298, 36.590054, 20.021482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.916821, 35.845299, 20.336168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.228163, 36.049980, 20.481674>,  <21.414968, 36.172791, 20.568977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.228163, 36.049980, 20.481674>,  <20.916821, 35.845299, 20.336168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.228163, 36.049980, 20.481674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201657, -0.344938, 0.916707,
		0.594558, -0.786879, -0.165295,
		0.778354, 0.511702, 0.363765,
		21.461670, 36.203491, 20.590803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.305964, 35.329716, 20.655773>,  <20.916821, 35.845299, 20.336168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.305964, 35.329716, 20.655773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.402349, 35.680752, 20.821552>,  <21.460182, 35.891373, 20.921019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.402349, 35.680752, 20.821552>,  <21.305964, 35.329716, 20.655773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.402349, 35.680752, 20.821552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132966, -0.393151, 0.909809,
		0.961382, -0.274341, 0.021954,
		0.240966, 0.877593, 0.414446,
		21.474640, 35.944031, 20.945887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.505684, 35.114315, 21.258005>,  <21.305964, 35.329716, 20.655773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.505684, 35.114315, 21.258005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.474846, 35.508636, 21.317669>,  <21.456343, 35.745228, 21.353468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.474846, 35.508636, 21.317669>,  <21.505684, 35.114315, 21.258005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.474846, 35.508636, 21.317669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167149, -0.160269, 0.972818,
		0.982913, 0.050065, 0.177132,
		-0.077093, 0.985803, 0.149162,
		21.451717, 35.804379, 21.362417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.841753, 35.244602, 21.923861>,  <21.505684, 35.114315, 21.258005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.841753, 35.244602, 21.923861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.599201, 35.555557, 21.856953>,  <21.453671, 35.742130, 21.816807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.599201, 35.555557, 21.856953>,  <21.841753, 35.244602, 21.923861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.599201, 35.555557, 21.856953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244396, 0.017976, 0.969509,
		0.756687, 0.628770, 0.179089,
		-0.606379, 0.777383, -0.167271,
		21.417288, 35.788773, 21.806772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.997913, 35.803120, 22.362377>,  <21.841753, 35.244602, 21.923861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.997913, 35.803120, 22.362377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.612617, 35.871918, 22.279835>,  <21.381439, 35.913197, 22.230309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.612617, 35.871918, 22.279835>,  <21.997913, 35.803120, 22.362377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.612617, 35.871918, 22.279835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194447, 0.083614, 0.977343,
		0.185353, 0.981542, -0.047097,
		-0.963242, 0.171996, -0.206356,
		21.323645, 35.923515, 22.217928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.818409, 36.364697, 22.807369>,  <21.997913, 35.803120, 22.362377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.818409, 36.364697, 22.807369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.485664, 36.186172, 22.675423>,  <21.286018, 36.079060, 22.596254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.485664, 36.186172, 22.675423>,  <21.818409, 36.364697, 22.807369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.485664, 36.186172, 22.675423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385255, 0.036552, 0.922086,
		-0.399479, 0.894131, -0.202350,
		-0.831862, -0.446311, -0.329867,
		21.236105, 36.052280, 22.576462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.305479, 36.687012, 23.029434>,  <21.818409, 36.364697, 22.807369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.305479, 36.687012, 23.029434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.125698, 36.336060, 22.962265>,  <21.017830, 36.125488, 22.921965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.125698, 36.336060, 22.962265>,  <21.305479, 36.687012, 23.029434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.125698, 36.336060, 22.962265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507458, 0.096067, 0.856305,
		-0.735172, 0.470082, -0.488411,
		-0.449454, -0.877379, -0.167921,
		20.990862, 36.072845, 22.911888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.671869, 36.792805, 23.364269>,  <21.305479, 36.687012, 23.029434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.671869, 36.792805, 23.364269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.698582, 36.397263, 23.311035>,  <20.714609, 36.159939, 23.279095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.698582, 36.397263, 23.311035>,  <20.671869, 36.792805, 23.364269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.698582, 36.397263, 23.311035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363384, -0.148328, 0.919756,
		-0.929243, -0.013060, -0.369238,
		0.066781, -0.988852, -0.133087,
		20.718616, 36.100609, 23.271109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.028309, 36.547741, 23.613966>,  <20.671869, 36.792805, 23.364269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.028309, 36.547741, 23.613966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.278841, 36.236423, 23.631706>,  <20.429159, 36.049633, 23.642349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.278841, 36.236423, 23.631706>,  <20.028309, 36.547741, 23.613966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.278841, 36.236423, 23.631706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238972, -0.137538, 0.961237,
		-0.742027, -0.612648, -0.272135,
		0.626329, -0.778297, 0.044349,
		20.466740, 36.002934, 23.645012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.649099, 35.855404, 23.730648>,  <20.028309, 36.547741, 23.613966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.649099, 35.855404, 23.730648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.013580, 35.806030, 23.887863>,  <20.232269, 35.776405, 23.982193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.013580, 35.806030, 23.887863>,  <19.649099, 35.855404, 23.730648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.013580, 35.806030, 23.887863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410029, -0.179377, 0.894259,
		-0.039877, -0.976006, -0.214059,
		0.911200, -0.123431, 0.393038,
		20.286940, 35.769001, 24.005775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.234653, 36.429718, 23.665188>,  <19.649099, 35.855404, 23.730648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.234653, 36.429718, 23.665188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.218596, 36.547119, 24.047234>,  <19.208960, 36.617561, 24.276461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.218596, 36.547119, 24.047234>,  <19.234653, 36.429718, 23.665188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.218596, 36.547119, 24.047234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422882, 0.861066, -0.282376,
		-0.905295, -0.415238, 0.089549,
		-0.040146, 0.293502, 0.955115,
		19.206553, 36.635170, 24.333769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.524300, 36.611217, 23.943621>,  <19.234653, 36.429718, 23.665188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.524300, 36.611217, 23.943621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823153, 36.819725, 24.108582>,  <19.002464, 36.944828, 24.207558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823153, 36.819725, 24.108582>,  <18.524300, 36.611217, 23.943621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.823153, 36.819725, 24.108582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410208, 0.849811, -0.330984,
		-0.522996, 0.078117, 0.848748,
		0.747131, 0.521266, 0.412404,
		19.047293, 36.976105, 24.232304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275068, 37.115829, 24.416765>,  <18.524300, 36.611217, 23.943621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275068, 37.115829, 24.416765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.617796, 37.260983, 24.270241>,  <18.823433, 37.348072, 24.182327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.617796, 37.260983, 24.270241>,  <18.275068, 37.115829, 24.416765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.617796, 37.260983, 24.270241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457545, 0.862637, -0.215663,
		0.237733, 0.352387, 0.905156,
		0.856818, 0.362879, -0.366310,
		18.874842, 37.369846, 24.160347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.994596, 37.195782, 23.702446>,  <18.275068, 37.115829, 24.416765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.994596, 37.195782, 23.702446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.816914, 37.523525, 23.847404>,  <17.710304, 37.720173, 23.934380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.816914, 37.523525, 23.847404>,  <17.994596, 37.195782, 23.702446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.816914, 37.523525, 23.847404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473891, -0.558158, 0.681093,
		0.760335, 0.130808, 0.636224,
		-0.444206, 0.819359, 0.362398,
		17.683651, 37.769333, 23.956123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.678272, 23.881552, 27.085386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.054668, 24.014427, 27.111279>,  <33.280506, 24.094152, 27.126814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.054668, 24.014427, 27.111279>,  <32.678272, 23.881552, 27.085386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054668, 24.014427, 27.111279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313185, 0.927195, -0.205487,
		-0.128277, 0.173089, 0.976517,
		0.940989, 0.332190, 0.064729,
		33.336964, 24.114084, 27.130697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588364, 24.536692, 27.236179>,  <32.678272, 23.881552, 27.085386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588364, 24.536692, 27.236179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.962379, 24.537041, 27.094357>,  <33.186787, 24.537251, 27.009264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.962379, 24.537041, 27.094357>,  <32.588364, 24.536692, 27.236179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962379, 24.537041, 27.094357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124053, 0.937596, -0.324844,
		0.332146, 0.347724, 0.876794,
		0.935035, 0.000873, -0.354555,
		33.242889, 24.537302, 26.987989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774796, 25.094433, 27.501951>,  <32.588364, 24.536692, 27.236179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774796, 25.094433, 27.501951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.006695, 25.000519, 27.189857>,  <33.145836, 24.944170, 27.002602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.006695, 25.000519, 27.189857>,  <32.774796, 25.094433, 27.501951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006695, 25.000519, 27.189857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097277, 0.930790, -0.352373,
		0.808966, 0.280188, 0.516787,
		0.579751, -0.234786, -0.780234,
		33.180618, 24.930082, 26.955788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165546, 25.726433, 27.369062>,  <32.774796, 25.094433, 27.501951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165546, 25.726433, 27.369062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.234791, 25.503464, 27.044270>,  <33.276337, 25.369682, 26.849394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.234791, 25.503464, 27.044270>,  <33.165546, 25.726433, 27.369062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234791, 25.503464, 27.044270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011649, 0.823211, -0.567615,
		0.984833, 0.107720, 0.136015,
		0.173113, -0.557422, -0.811981,
		33.286724, 25.336237, 26.800674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750004, 26.044987, 26.983673>,  <33.165546, 25.726433, 27.369062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750004, 26.044987, 26.983673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.522385, 25.825516, 26.738678>,  <33.385815, 25.693834, 26.591681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.522385, 25.825516, 26.738678>,  <33.750004, 26.044987, 26.983673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522385, 25.825516, 26.738678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155941, 0.803331, -0.574753,
		0.807406, -0.231528, -0.542670,
		-0.569015, -0.548684, -0.612510,
		33.351669, 25.660913, 26.554932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995396, 26.150745, 26.300407>,  <33.750004, 26.044987, 26.983673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995396, 26.150745, 26.300407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.621933, 26.016357, 26.250748>,  <33.397858, 25.935724, 26.220953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.621933, 26.016357, 26.250748>,  <33.995396, 26.150745, 26.300407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621933, 26.016357, 26.250748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218510, 0.808918, -0.545806,
		0.283800, -0.482467, -0.828663,
		-0.933655, -0.335971, -0.124147,
		33.341835, 25.915565, 26.213503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779823, 26.455442, 25.692677>,  <33.995396, 26.150745, 26.300407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779823, 26.455442, 25.692677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.433037, 26.347717, 25.860409>,  <33.224964, 26.283083, 25.961048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.433037, 26.347717, 25.860409>,  <33.779823, 26.455442, 25.692677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433037, 26.347717, 25.860409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429271, 0.830984, -0.353824,
		-0.253167, -0.486760, -0.836045,
		-0.866968, -0.269313, 0.419330,
		33.172947, 26.266924, 25.986208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121361, 26.706665, 25.163260>,  <33.779823, 26.455442, 25.692677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121361, 26.706665, 25.163260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.983105, 26.656025, 25.535175>,  <32.900150, 26.625641, 25.758324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.983105, 26.656025, 25.535175>,  <33.121361, 26.706665, 25.163260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983105, 26.656025, 25.535175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575726, 0.811055, -0.103586,
		-0.740995, -0.571106, -0.353220,
		-0.345639, -0.126601, 0.929788,
		32.879414, 26.618044, 25.814112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453804, 26.792917, 24.988306>,  <33.121361, 26.706665, 25.163260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453804, 26.792917, 24.988306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.497215, 26.851864, 25.381550>,  <32.523262, 26.887232, 25.617496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.497215, 26.851864, 25.381550>,  <32.453804, 26.792917, 24.988306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497215, 26.851864, 25.381550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654349, 0.755083, -0.040951,
		-0.748364, -0.638853, 0.178377,
		0.108528, 0.147367, 0.983109,
		32.529774, 26.896074, 25.676483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740692, 26.768251, 25.323929>,  <32.453804, 26.792917, 24.988306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740692, 26.768251, 25.323929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.989996, 26.976826, 25.557049>,  <32.139580, 27.101971, 25.696920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.989996, 26.976826, 25.557049>,  <31.740692, 26.768251, 25.323929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989996, 26.976826, 25.557049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634627, 0.772715, -0.012671,
		-0.456944, -0.361962, 0.812518,
		0.623258, 0.521435, 0.582799,
		32.176975, 27.133257, 25.731888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270735, 27.115351, 25.646875>,  <31.740692, 26.768251, 25.323929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270735, 27.115351, 25.646875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.598776, 27.331142, 25.723179>,  <31.795601, 27.460617, 25.768961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.598776, 27.331142, 25.723179>,  <31.270735, 27.115351, 25.646875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598776, 27.331142, 25.723179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507263, 0.839694, -0.193902,
		-0.264787, 0.062254, 0.962295,
		0.820105, 0.539480, 0.190761,
		31.844807, 27.492987, 25.780407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061838, 27.633341, 26.164591>,  <31.270735, 27.115351, 25.646875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061838, 27.633341, 26.164591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.379391, 27.724186, 25.938965>,  <31.569923, 27.778692, 25.803589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.379391, 27.724186, 25.938965>,  <31.061838, 27.633341, 26.164591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379391, 27.724186, 25.938965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441267, 0.853410, -0.277444,
		0.418368, 0.469162, 0.777724,
		0.793883, 0.227111, -0.564066,
		31.617556, 27.792318, 25.769745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076368, 28.300755, 26.187752>,  <31.061838, 27.633341, 26.164591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076368, 28.300755, 26.187752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.333128, 28.252304, 25.884888>,  <31.487185, 28.223234, 25.703169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.333128, 28.252304, 25.884888>,  <31.076368, 28.300755, 26.187752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333128, 28.252304, 25.884888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486736, 0.698632, -0.524406,
		0.592496, 0.705154, 0.389495,
		0.641901, -0.121128, -0.757160,
		31.525698, 28.215965, 25.657740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206623, 28.965591, 25.973024>,  <31.076368, 28.300755, 26.187752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206623, 28.965591, 25.973024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.357491, 28.781044, 25.651806>,  <31.448011, 28.670315, 25.459074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.357491, 28.781044, 25.651806>,  <31.206623, 28.965591, 25.973024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357491, 28.781044, 25.651806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340475, 0.737293, -0.583503,
		0.861290, 0.493496, 0.120999,
		0.377168, -0.461368, -0.803047,
		31.470640, 28.642633, 25.410892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561693, 29.520273, 25.514811>,  <31.206623, 28.965591, 25.973024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561693, 29.520273, 25.514811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.470444, 29.199364, 25.294151>,  <31.415695, 29.006819, 25.161755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.470444, 29.199364, 25.294151>,  <31.561693, 29.520273, 25.514811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470444, 29.199364, 25.294151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462643, 0.587858, -0.663615,
		0.856693, 0.103832, -0.505269,
		-0.228121, -0.802273, -0.551650,
		31.402008, 28.958681, 25.128656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871246, 29.706511, 24.876535>,  <31.561693, 29.520273, 25.514811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871246, 29.706511, 24.876535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.617441, 29.400829, 24.830254>,  <31.465158, 29.217421, 24.802485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.617441, 29.400829, 24.830254>,  <31.871246, 29.706511, 24.876535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617441, 29.400829, 24.830254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469785, 0.500191, -0.727400,
		0.613756, -0.407188, -0.676389,
		-0.634512, -0.764203, -0.115704,
		31.427088, 29.171568, 24.795542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898903, 29.643364, 24.128345>,  <31.871246, 29.706511, 24.876535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898903, 29.643364, 24.128345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.545961, 29.492165, 24.240463>,  <31.334196, 29.401445, 24.307734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.545961, 29.492165, 24.240463>,  <31.898903, 29.643364, 24.128345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545961, 29.492165, 24.240463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443519, 0.468904, -0.763820,
		0.157292, -0.798277, -0.581390,
		-0.882355, -0.378000, 0.280295,
		31.281256, 29.378765, 24.324553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647919, 29.461912, 23.464405>,  <31.898903, 29.643364, 24.128345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647919, 29.461912, 23.464405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.341999, 29.490227, 23.720554>,  <31.158447, 29.507215, 23.874243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.341999, 29.490227, 23.720554>,  <31.647919, 29.461912, 23.464405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341999, 29.490227, 23.720554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553373, 0.436849, -0.709183,
		-0.329945, -0.896745, -0.294930,
		-0.764797, 0.070785, 0.640371,
		31.112560, 29.511463, 23.912666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968954, 29.194859, 23.133377>,  <31.647919, 29.461912, 23.464405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968954, 29.194859, 23.133377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.838886, 29.415932, 23.440311>,  <30.760845, 29.548576, 23.624472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.838886, 29.415932, 23.440311>,  <30.968954, 29.194859, 23.133377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838886, 29.415932, 23.440311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645697, 0.463071, -0.607158,
		-0.690898, -0.692896, 0.206290,
		-0.325171, 0.552684, 0.767336,
		30.741335, 29.581738, 23.670511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257320, 29.262058, 22.998428>,  <30.968954, 29.194859, 23.133377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257320, 29.262058, 22.998428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.365246, 29.571575, 23.227669>,  <30.430000, 29.757286, 23.365213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.365246, 29.571575, 23.227669>,  <30.257320, 29.262058, 22.998428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365246, 29.571575, 23.227669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554634, 0.611415, -0.564404,
		-0.787135, -0.165577, 0.594141,
		0.269814, 0.773793, 0.573101,
		30.446190, 29.803713, 23.399599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659019, 29.583721, 23.120266>,  <30.257320, 29.262058, 22.998428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659019, 29.583721, 23.120266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.909969, 29.877846, 23.222809>,  <30.060539, 30.054321, 23.284334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.909969, 29.877846, 23.222809>,  <29.659019, 29.583721, 23.120266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909969, 29.877846, 23.222809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509120, 0.636409, -0.579467,
		-0.589237, 0.233025, 0.773627,
		0.627373, 0.735312, 0.256358,
		30.098181, 30.098440, 23.299717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268126, 30.105892, 23.459200>,  <29.659019, 29.583721, 23.120266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268126, 30.105892, 23.459200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.597237, 30.275112, 23.307373>,  <29.794703, 30.376644, 23.216278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.597237, 30.275112, 23.307373>,  <29.268126, 30.105892, 23.459200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597237, 30.275112, 23.307373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557286, 0.731696, -0.392497,
		0.111681, 0.534464, 0.837780,
		0.822775, 0.423049, -0.379566,
		29.844069, 30.402027, 23.193502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307234, 30.830742, 23.637482>,  <29.268126, 30.105892, 23.459200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307234, 30.830742, 23.637482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.495157, 30.733715, 23.297966>,  <29.607912, 30.675499, 23.094257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.495157, 30.733715, 23.297966>,  <29.307234, 30.830742, 23.637482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495157, 30.733715, 23.297966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500944, 0.718443, -0.482592,
		0.726866, 0.651922, 0.216019,
		0.469810, -0.242566, -0.848788,
		29.636101, 30.660946, 23.043329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612232, 30.843431, 23.745100>,  <29.307234, 30.830742, 23.637482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612232, 30.843431, 23.745100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.304821, 30.595219, 23.682743>,  <28.120375, 30.446291, 23.645329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.304821, 30.595219, 23.682743>,  <28.612232, 30.843431, 23.745100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304821, 30.595219, 23.682743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404043, -0.659623, 0.633756,
		-0.496098, 0.424072, 0.757661,
		-0.768529, -0.620533, -0.155894,
		28.074263, 30.409060, 23.635975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434023, 30.534836, 24.377697>,  <28.612232, 30.843431, 23.745100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434023, 30.534836, 24.377697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.268623, 30.274086, 24.123428>,  <28.169384, 30.117636, 23.970867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.268623, 30.274086, 24.123428>,  <28.434023, 30.534836, 24.377697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.268623, 30.274086, 24.123428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356224, -0.758326, 0.545936,
		-0.837927, -0.000696, 0.545781,
		-0.413500, -0.651875, -0.635670,
		28.144573, 30.078524, 23.932728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.117331, 30.076599, 24.846390>,  <28.434023, 30.534836, 24.377697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.117331, 30.076599, 24.846390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.139992, 29.879536, 24.499039>,  <28.153587, 29.761297, 24.290628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.139992, 29.879536, 24.499039>,  <28.117331, 30.076599, 24.846390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139992, 29.879536, 24.499039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255151, -0.833745, 0.489660,
		-0.965240, -0.249307, 0.078470,
		0.056652, -0.492661, -0.868375,
		28.156988, 29.731737, 24.238525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749981, 29.434278, 24.971788>,  <28.117331, 30.076599, 24.846390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749981, 29.434278, 24.971788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.979662, 29.381832, 24.648529>,  <28.117470, 29.350365, 24.454575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.979662, 29.381832, 24.648529>,  <27.749981, 29.434278, 24.971788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.979662, 29.381832, 24.648529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293603, -0.888461, 0.352754,
		-0.764257, -0.439826, -0.471660,
		0.574202, -0.131114, -0.808147,
		28.151922, 29.342499, 24.406086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458727, 28.828379, 24.682541>,  <27.749981, 29.434278, 24.971788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458727, 28.828379, 24.682541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.841675, 28.899075, 24.591145>,  <28.071444, 28.941492, 24.536306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.841675, 28.899075, 24.591145>,  <27.458727, 28.828379, 24.682541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841675, 28.899075, 24.591145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272819, -0.813198, 0.514081,
		-0.094950, -0.554502, -0.826748,
		0.957369, 0.176741, -0.228492,
		28.128885, 28.952097, 24.522596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777903, 28.194714, 24.624493>,  <27.458727, 28.828379, 24.682541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777903, 28.194714, 24.624493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.107208, 28.419697, 24.655144>,  <28.304792, 28.554688, 24.673534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.107208, 28.419697, 24.655144>,  <27.777903, 28.194714, 24.624493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107208, 28.419697, 24.655144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359103, -0.620581, 0.697083,
		0.439634, -0.546368, -0.712885,
		0.823267, 0.562460, 0.076626,
		28.354189, 28.588434, 24.678131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243732, 27.707024, 24.757252>,  <27.777903, 28.194714, 24.624493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243732, 27.707024, 24.757252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.455282, 28.037102, 24.836597>,  <28.582212, 28.235147, 24.884205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.455282, 28.037102, 24.836597>,  <28.243732, 27.707024, 24.757252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455282, 28.037102, 24.836597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621027, -0.535581, 0.572257,
		0.578462, -0.179463, -0.795722,
		0.528873, 0.825194, 0.198362,
		28.613945, 28.284660, 24.896107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045317, 27.611355, 24.601431>,  <28.243732, 27.707024, 24.757252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045317, 27.611355, 24.601431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.988585, 27.886520, 24.886150>,  <28.954544, 28.051620, 25.056982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.988585, 27.886520, 24.886150>,  <29.045317, 27.611355, 24.601431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988585, 27.886520, 24.886150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626256, -0.494515, 0.602709,
		0.766608, 0.531251, -0.360673,
		-0.141831, 0.687915, 0.711799,
		28.946035, 28.092896, 25.099689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657337, 27.629158, 24.948767>,  <29.045317, 27.611355, 24.601431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657337, 27.629158, 24.948767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.417387, 27.808826, 25.213612>,  <29.273417, 27.916628, 25.372519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.417387, 27.808826, 25.213612>,  <29.657337, 27.629158, 24.948767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417387, 27.808826, 25.213612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623276, -0.256540, 0.738725,
		0.501671, 0.855824, -0.126064,
		-0.599877, 0.449169, 0.662113,
		29.237423, 27.943577, 25.412245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.068018, 27.952530, 25.451979>,  <29.657337, 27.629158, 24.948767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.068018, 27.952530, 25.451979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.717857, 27.989090, 25.641850>,  <29.507761, 28.011026, 25.755772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.717857, 27.989090, 25.641850>,  <30.068018, 27.952530, 25.451979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717857, 27.989090, 25.641850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438619, -0.262564, 0.859461,
		0.203186, 0.960576, 0.189760,
		-0.875402, 0.091399, 0.474676,
		29.455236, 28.016510, 25.784252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292564, 28.102432, 26.229860>,  <30.068018, 27.952530, 25.451979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292564, 28.102432, 26.229860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.913298, 27.977749, 26.205135>,  <29.685738, 27.902939, 26.190300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.913298, 27.977749, 26.205135>,  <30.292564, 28.102432, 26.229860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913298, 27.977749, 26.205135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119338, -0.529547, 0.839844,
		-0.294519, 0.788934, 0.539297,
		-0.948165, -0.311709, -0.061812,
		29.628849, 27.884235, 26.186592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077333, 28.050043, 26.959900>,  <30.292564, 28.102432, 26.229860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077333, 28.050043, 26.959900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.824463, 27.825611, 26.746155>,  <29.672741, 27.690952, 26.617907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.824463, 27.825611, 26.746155>,  <30.077333, 28.050043, 26.959900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824463, 27.825611, 26.746155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009112, -0.684226, 0.729213,
		-0.774772, 0.465860, 0.427438,
		-0.632175, -0.561079, -0.534364,
		29.634809, 27.657288, 26.585846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617767, 27.679996, 27.487537>,  <30.077333, 28.050043, 26.959900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617767, 27.679996, 27.487537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.564112, 27.470001, 27.151348>,  <29.531919, 27.344004, 26.949635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.564112, 27.470001, 27.151348>,  <29.617767, 27.679996, 27.487537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564112, 27.470001, 27.151348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143933, -0.849467, 0.507632,
		-0.980454, -0.052879, 0.189508,
		-0.134138, -0.524986, -0.840474,
		29.523870, 27.312506, 26.899206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301613, 27.112984, 27.751476>,  <29.617767, 27.679996, 27.487537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301613, 27.112984, 27.751476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.427225, 26.977406, 27.396736>,  <29.502592, 26.896059, 27.183893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.427225, 26.977406, 27.396736>,  <29.301613, 27.112984, 27.751476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427225, 26.977406, 27.396736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188587, -0.893221, 0.408157,
		-0.930494, -0.295422, -0.216579,
		0.314031, -0.338944, -0.886849,
		29.521435, 26.875723, 27.130682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006701, 26.515272, 27.647383>,  <29.301613, 27.112984, 27.751476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006701, 26.515272, 27.647383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.332029, 26.488750, 27.416172>,  <29.527225, 26.472837, 27.277447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.332029, 26.488750, 27.416172>,  <29.006701, 26.515272, 27.647383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332029, 26.488750, 27.416172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190034, -0.908724, 0.371630,
		-0.549906, -0.412098, -0.726483,
		0.813321, -0.066305, -0.578025,
		29.576025, 26.468859, 27.242764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049486, 25.825720, 27.531704>,  <29.006701, 26.515272, 27.647383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049486, 25.825720, 27.531704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.409096, 25.957882, 27.416752>,  <29.624863, 26.037178, 27.347780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.409096, 25.957882, 27.416752>,  <29.049486, 25.825720, 27.531704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409096, 25.957882, 27.416752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403535, -0.879941, 0.250726,
		-0.170037, -0.341377, -0.924418,
		0.899025, 0.330403, -0.287380,
		29.678802, 26.057003, 27.330538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279062, 25.339687, 27.153587>,  <29.049486, 25.825720, 27.531704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279062, 25.339687, 27.153587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.608532, 25.532513, 27.273037>,  <29.806213, 25.648209, 27.344707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.608532, 25.532513, 27.273037>,  <29.279062, 25.339687, 27.153587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608532, 25.532513, 27.273037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404085, -0.868425, 0.287320,
		0.397840, -0.115988, -0.910094,
		0.823674, 0.482063, 0.298625,
		29.855635, 25.677132, 27.362625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.929588, 25.033278, 26.848213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.081656, 25.227032, 27.163387>,  <30.172895, 25.343285, 27.352491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.081656, 25.227032, 27.163387>,  <29.929588, 25.033278, 26.848213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081656, 25.227032, 27.163387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525947, -0.813973, 0.246632,
		0.760823, 0.320650, -0.564209,
		0.380169, 0.484387, 0.787934,
		30.195705, 25.372349, 27.399767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630676, 24.782692, 26.883680>,  <29.929588, 25.033278, 26.848213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630676, 24.782692, 26.883680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.555193, 24.909599, 27.255428>,  <30.509903, 24.985743, 27.478477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.555193, 24.909599, 27.255428>,  <30.630676, 24.782692, 26.883680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555193, 24.909599, 27.255428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369830, -0.853740, 0.366542,
		0.909733, 0.412879, 0.043774,
		-0.188709, 0.317266, 0.929371,
		30.498581, 25.004780, 27.534239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360071, 24.776701, 27.148266>,  <30.630676, 24.782692, 26.883680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360071, 24.776701, 27.148266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.082241, 24.781841, 27.435989>,  <30.915543, 24.784925, 27.608624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.082241, 24.781841, 27.435989>,  <31.360071, 24.776701, 27.148266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082241, 24.781841, 27.435989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379255, -0.843087, 0.381274,
		0.611337, 0.537623, 0.580713,
		-0.694574, 0.012848, 0.719307,
		30.873869, 24.785696, 27.651781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766216, 24.677906, 27.659830>,  <31.360071, 24.776701, 27.148266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766216, 24.677906, 27.659830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.386873, 24.599926, 27.759922>,  <31.159267, 24.553139, 27.819977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.386873, 24.599926, 27.759922>,  <31.766216, 24.677906, 27.659830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386873, 24.599926, 27.759922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279679, -0.886086, 0.369636,
		0.149663, 0.420530, 0.894849,
		-0.948357, -0.194950, 0.250228,
		31.102365, 24.541441, 27.834990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757605, 24.551273, 28.401335>,  <31.766216, 24.677906, 27.659830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757605, 24.551273, 28.401335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.434460, 24.372093, 28.248127>,  <31.240574, 24.264585, 28.156202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.434460, 24.372093, 28.248127>,  <31.757605, 24.551273, 28.401335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434460, 24.372093, 28.248127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244613, -0.846094, 0.473592,
		-0.536214, 0.288906, 0.793100,
		-0.807861, -0.447949, -0.383017,
		31.192101, 24.237709, 28.133223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522959, 24.215370, 29.001133>,  <31.757605, 24.551273, 28.401335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522959, 24.215370, 29.001133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364182, 24.048649, 28.674034>,  <31.268915, 23.948616, 28.477774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364182, 24.048649, 28.674034>,  <31.522959, 24.215370, 29.001133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364182, 24.048649, 28.674034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080331, -0.903303, 0.421415,
		-0.914321, 0.101587, 0.392042,
		-0.396943, -0.416802, -0.817748,
		31.245098, 23.923609, 28.428709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033064, 23.645658, 29.230793>,  <31.522959, 24.215370, 29.001133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033064, 23.645658, 29.230793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.139442, 23.538811, 28.860298>,  <31.203270, 23.474701, 28.638000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.139442, 23.538811, 28.860298>,  <31.033064, 23.645658, 29.230793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139442, 23.538811, 28.860298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174837, -0.931540, 0.318850,
		-0.948001, -0.246737, -0.201037,
		0.265946, -0.267121, -0.926239,
		31.219227, 23.458675, 28.582426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697758, 22.951754, 29.141302>,  <31.033064, 23.645658, 29.230793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697758, 22.951754, 29.141302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.987804, 22.963921, 28.866119>,  <31.161833, 22.971222, 28.701010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.987804, 22.963921, 28.866119>,  <30.697758, 22.951754, 29.141302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987804, 22.963921, 28.866119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226282, -0.954073, 0.196319,
		-0.650387, -0.298026, -0.698697,
		0.725116, 0.030419, -0.687954,
		31.205339, 22.973045, 28.659733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513515, 22.571383, 28.607504>,  <30.697758, 22.951754, 29.141302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513515, 22.571383, 28.607504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.912905, 22.565304, 28.628761>,  <31.152538, 22.561657, 28.641516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.912905, 22.565304, 28.628761>,  <30.513515, 22.571383, 28.607504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912905, 22.565304, 28.628761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028003, -0.968023, 0.249293,
		0.047658, -0.250400, -0.966969,
		0.998471, -0.015197, 0.053146,
		31.212446, 22.560745, 28.644705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704231, 22.091734, 28.235998>,  <30.513515, 22.571383, 28.607504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704231, 22.091734, 28.235998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.024122, 22.142094, 28.470802>,  <31.216057, 22.172310, 28.611685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.024122, 22.142094, 28.470802>,  <30.704231, 22.091734, 28.235998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024122, 22.142094, 28.470802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000621, -0.977937, 0.208898,
		0.600362, -0.166697, -0.782162,
		0.799728, 0.125900, 0.587013,
		31.264040, 22.179863, 28.646906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102364, 21.460220, 28.036404>,  <30.704231, 22.091734, 28.235998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102364, 21.460220, 28.036404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.223707, 21.605152, 28.388924>,  <31.296515, 21.692112, 28.600435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.223707, 21.605152, 28.388924>,  <31.102364, 21.460220, 28.036404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.223707, 21.605152, 28.388924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044812, -0.929286, 0.366634,
		0.951822, -0.071729, -0.298145,
		0.303360, 0.362330, 0.881300,
		31.314714, 21.713852, 28.653313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853571, 21.224445, 28.264566>,  <31.102364, 21.460220, 28.036404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853571, 21.224445, 28.264566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.617472, 21.311001, 28.575638>,  <31.475811, 21.362934, 28.762280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.617472, 21.311001, 28.575638>,  <31.853571, 21.224445, 28.264566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617472, 21.311001, 28.575638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102472, -0.935520, 0.338085,
		0.800690, 0.279244, 0.530017,
		-0.590250, 0.216389, 0.777677,
		31.440397, 21.375917, 28.808941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214973, 20.886194, 28.844217>,  <31.853571, 21.224445, 28.264566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214973, 20.886194, 28.844217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.840990, 20.960384, 28.965183>,  <31.616600, 21.004898, 29.037762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.840990, 20.960384, 28.965183>,  <32.214973, 20.886194, 28.844217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840990, 20.960384, 28.965183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013537, -0.833170, 0.552851,
		0.354501, 0.520986, 0.776468,
		-0.934958, 0.185475, 0.302413,
		31.560503, 21.016027, 29.055906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227654, 20.621885, 29.507839>,  <32.214973, 20.886194, 28.844217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227654, 20.621885, 29.507839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843252, 20.656384, 29.402748>,  <31.612610, 20.677082, 29.339693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843252, 20.656384, 29.402748>,  <32.227654, 20.621885, 29.507839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843252, 20.656384, 29.402748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211243, -0.842083, 0.496258,
		-0.178439, 0.532408, 0.827467,
		-0.961008, 0.086245, -0.262728,
		31.554951, 20.682257, 29.323929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908575, 20.579454, 30.195612>,  <32.227654, 20.621885, 29.507839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908575, 20.579454, 30.195612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.642847, 20.502884, 29.906605>,  <31.483410, 20.456942, 29.733200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.642847, 20.502884, 29.906605>,  <31.908575, 20.579454, 30.195612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642847, 20.502884, 29.906605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419136, -0.704963, 0.572147,
		-0.618873, 0.682923, 0.388089,
		-0.664320, -0.191424, -0.722520,
		31.443550, 20.445457, 29.689848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309570, 20.414789, 30.552744>,  <31.908575, 20.579454, 30.195612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309570, 20.414789, 30.552744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.279846, 20.275581, 30.178928>,  <31.262012, 20.192057, 29.954639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.279846, 20.275581, 30.178928>,  <31.309570, 20.414789, 30.552744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279846, 20.275581, 30.178928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558227, -0.762031, 0.328164,
		-0.826354, 0.546069, -0.137648,
		-0.074308, -0.348019, -0.934538,
		31.257553, 20.171175, 29.898567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696653, 20.037996, 30.602228>,  <31.309570, 20.414789, 30.552744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696653, 20.037996, 30.602228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928179, 19.914383, 30.300373>,  <31.067093, 19.840216, 30.119261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928179, 19.914383, 30.300373>,  <30.696653, 20.037996, 30.602228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928179, 19.914383, 30.300373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101880, -0.945564, 0.309079,
		-0.809071, -0.102016, -0.578789,
		0.578813, -0.309034, -0.754635,
		31.101822, 19.821672, 30.073982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344351, 19.484529, 30.361420>,  <30.696653, 20.037996, 30.602228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344351, 19.484529, 30.361420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.704473, 19.448547, 30.191074>,  <30.920547, 19.426958, 30.088867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.704473, 19.448547, 30.191074>,  <30.344351, 19.484529, 30.361420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704473, 19.448547, 30.191074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040816, -0.956651, 0.288364,
		-0.433341, -0.276998, -0.857606,
		0.900306, -0.089956, -0.425861,
		30.974566, 19.421560, 30.063316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312304, 18.856682, 30.030642>,  <30.344351, 19.484529, 30.361420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312304, 18.856682, 30.030642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694519, 18.965408, 30.076355>,  <30.923849, 19.030645, 30.103783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.694519, 18.965408, 30.076355>,  <30.312304, 18.856682, 30.030642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694519, 18.965408, 30.076355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223610, -0.920634, 0.320051,
		0.192210, -0.280266, -0.940482,
		0.955539, 0.271818, 0.114285,
		30.981180, 19.046953, 30.110640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660465, 18.306021, 29.865444>,  <30.312304, 18.856682, 30.030642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660465, 18.306021, 29.865444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928337, 18.504581, 30.086391>,  <31.089060, 18.623718, 30.218960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928337, 18.504581, 30.086391>,  <30.660465, 18.306021, 29.865444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928337, 18.504581, 30.086391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344104, -0.866531, 0.361548,
		0.658118, -0.052050, -0.751114,
		0.669682, 0.496403, 0.552368,
		31.129242, 18.653502, 30.252102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399391, 18.042118, 29.673512>,  <30.660465, 18.306021, 29.865444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399391, 18.042118, 29.673512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.365412, 18.207741, 30.036022>,  <31.345024, 18.307116, 30.253529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.365412, 18.207741, 30.036022>,  <31.399391, 18.042118, 29.673512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365412, 18.207741, 30.036022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506095, -0.765568, 0.397209,
		0.858284, 0.492404, -0.144520,
		-0.084948, 0.414059, 0.906278,
		31.339928, 18.331959, 30.307905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022114, 17.897137, 29.970665>,  <31.399391, 18.042118, 29.673512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022114, 17.897137, 29.970665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.781046, 17.983269, 30.278019>,  <31.636404, 18.034948, 30.462433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.781046, 17.983269, 30.278019>,  <32.022114, 17.897137, 29.970665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781046, 17.983269, 30.278019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416806, -0.736173, 0.533219,
		0.680485, 0.641624, 0.353919,
		-0.602672, 0.215331, 0.768387,
		31.600245, 18.047869, 30.508535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412804, 17.818480, 30.653658>,  <32.022114, 17.897137, 29.970665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412804, 17.818480, 30.653658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.025379, 17.727684, 30.694370>,  <31.792923, 17.673206, 30.718798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.025379, 17.727684, 30.694370>,  <32.412804, 17.818480, 30.653658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025379, 17.727684, 30.694370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247771, -0.843714, 0.476189,
		-0.022216, 0.486438, 0.873433,
		-0.968564, -0.226991, 0.101781,
		31.734810, 17.659586, 30.724905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250519, 17.614122, 31.401955>,  <32.412804, 17.818480, 30.653658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250519, 17.614122, 31.401955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.034233, 17.435963, 31.116508>,  <31.904461, 17.329067, 30.945242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.034233, 17.435963, 31.116508>,  <32.250519, 17.614122, 31.401955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034233, 17.435963, 31.116508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267348, -0.895329, 0.356245,
		-0.797592, 0.001843, 0.603195,
		-0.540715, -0.445401, -0.713614,
		31.872019, 17.302341, 30.902424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312431, 18.260937, 31.501762>,  <32.250519, 17.614122, 31.401955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312431, 18.260937, 31.501762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650467, 18.157326, 31.688839>,  <32.853287, 18.095160, 31.801085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.650467, 18.157326, 31.688839>,  <32.312431, 18.260937, 31.501762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650467, 18.157326, 31.688839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342651, 0.933920, -0.101903,
		-0.410392, 0.246372, 0.877997,
		0.845085, -0.259026, 0.467693,
		32.903992, 18.079618, 31.829147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444584, 18.740227, 31.954107>,  <32.312431, 18.260937, 31.501762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444584, 18.740227, 31.954107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.813774, 18.603485, 31.883392>,  <33.035290, 18.521441, 31.840963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.813774, 18.603485, 31.883392>,  <32.444584, 18.740227, 31.954107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813774, 18.603485, 31.883392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308491, 0.931800, -0.191263,
		0.230114, 0.121994, 0.965487,
		0.922974, -0.341856, -0.176786,
		33.090668, 18.500929, 31.830357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939842, 19.099644, 32.329609>,  <32.444584, 18.740227, 31.954107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939842, 19.099644, 32.329609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144848, 18.955044, 32.018059>,  <33.267853, 18.868284, 31.831129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.144848, 18.955044, 32.018059>,  <32.939842, 19.099644, 32.329609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144848, 18.955044, 32.018059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387301, 0.906876, -0.166056,
		0.766372, -0.216553, 0.604797,
		0.512516, -0.361499, -0.778875,
		33.298603, 18.846594, 31.784397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494381, 19.609364, 32.380623>,  <32.939842, 19.099644, 32.329609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494381, 19.609364, 32.380623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.563396, 19.413548, 32.038727>,  <33.604805, 19.296057, 31.833590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.563396, 19.413548, 32.038727>,  <33.494381, 19.609364, 32.380623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563396, 19.413548, 32.038727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444986, 0.812895, -0.375751,
		0.878759, -0.315515, 0.358096,
		0.172539, -0.489542, -0.854739,
		33.615158, 19.266685, 31.782305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251732, 19.751434, 32.077309>,  <33.494381, 19.609364, 32.380623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251732, 19.751434, 32.077309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.034542, 19.649303, 31.757313>,  <33.904228, 19.588024, 31.565315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.034542, 19.649303, 31.757313>,  <34.251732, 19.751434, 32.077309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034542, 19.649303, 31.757313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265459, 0.851614, -0.451978,
		0.796685, -0.457779, -0.394629,
		-0.542978, -0.255327, -0.799990,
		33.871651, 19.572704, 31.517315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723465, 19.675735, 31.460541>,  <34.251732, 19.751434, 32.077309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723465, 19.675735, 31.460541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.368160, 19.691319, 31.277470>,  <34.154976, 19.700668, 31.167627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.368160, 19.691319, 31.277470>,  <34.723465, 19.675735, 31.460541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368160, 19.691319, 31.277470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322558, 0.762284, -0.561141,
		0.327019, -0.646069, -0.689676,
		-0.888265, 0.038957, -0.457676,
		34.101681, 19.703005, 31.140167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790512, 19.646511, 30.687080>,  <34.723465, 19.675735, 31.460541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790512, 19.646511, 30.687080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.432949, 19.814182, 30.750603>,  <34.218410, 19.914785, 30.788715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.432949, 19.814182, 30.750603>,  <34.790512, 19.646511, 30.687080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432949, 19.814182, 30.750603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210528, 0.705379, -0.676844,
		-0.395736, -0.571603, -0.718792,
		-0.893907, 0.419178, 0.158806,
		34.164776, 19.939936, 30.798244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437469, 19.663927, 29.977112>,  <34.790512, 19.646511, 30.687080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437469, 19.663927, 29.977112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238804, 19.928989, 30.201328>,  <34.119602, 20.088028, 30.335859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.238804, 19.928989, 30.201328>,  <34.437469, 19.663927, 29.977112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238804, 19.928989, 30.201328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040041, 0.662636, -0.747870,
		-0.867018, -0.348997, -0.355642,
		-0.496666, 0.662657, 0.560544,
		34.089806, 20.127787, 30.369492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950928, 19.950813, 29.470463>,  <34.437469, 19.663927, 29.977112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950928, 19.950813, 29.470463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.951405, 20.190987, 29.790333>,  <33.951691, 20.335091, 29.982254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.951405, 20.190987, 29.790333>,  <33.950928, 19.950813, 29.470463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951405, 20.190987, 29.790333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025660, 0.799394, -0.600259,
		-0.999670, 0.021236, -0.014453,
		0.001193, 0.600432, 0.799675,
		33.951763, 20.371117, 30.030235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237679, 20.298359, 29.494844>,  <33.950928, 19.950813, 29.470463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237679, 20.298359, 29.494844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.523914, 20.506241, 29.681534>,  <33.695656, 20.630970, 29.793547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.523914, 20.506241, 29.681534>,  <33.237679, 20.298359, 29.494844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523914, 20.506241, 29.681534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144348, 0.763765, -0.629147,
		-0.683439, 0.382843, 0.621564,
		0.715594, 0.519706, 0.466724,
		33.738594, 20.662153, 29.821550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929676, 20.882221, 29.748819>,  <33.237679, 20.298359, 29.494844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929676, 20.882221, 29.748819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.314575, 20.990955, 29.754230>,  <33.545513, 21.056196, 29.757477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.314575, 20.990955, 29.754230>,  <32.929676, 20.882221, 29.748819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314575, 20.990955, 29.754230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213266, 0.783936, -0.583062,
		-0.169103, 0.558166, 0.812315,
		0.962249, 0.271836, 0.013528,
		33.603249, 21.072506, 29.758289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933338, 21.565302, 29.877300>,  <32.929676, 20.882221, 29.748819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933338, 21.565302, 29.877300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.283188, 21.508137, 29.691998>,  <33.493099, 21.473839, 29.580816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.283188, 21.508137, 29.691998>,  <32.933338, 21.565302, 29.877300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283188, 21.508137, 29.691998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143937, 0.835929, -0.529627,
		0.462941, 0.529905, 0.710554,
		0.874624, -0.142911, -0.463259,
		33.545574, 21.465263, 29.553020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233299, 22.253967, 29.727226>,  <32.933338, 21.565302, 29.877300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233299, 22.253967, 29.727226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.483078, 22.038673, 29.500820>,  <33.632946, 21.909498, 29.364977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.483078, 22.038673, 29.500820>,  <33.233299, 22.253967, 29.727226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483078, 22.038673, 29.500820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003060, 0.722976, -0.690866,
		0.781061, 0.433141, 0.449813,
		0.624447, -0.538233, -0.566014,
		33.670410, 21.877203, 29.331017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769020, 22.801302, 29.457361>,  <33.233299, 22.253967, 29.727226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769020, 22.801302, 29.457361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.760006, 22.481480, 29.217293>,  <33.754597, 22.289587, 29.073252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.760006, 22.481480, 29.217293>,  <33.769020, 22.801302, 29.457361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760006, 22.481480, 29.217293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076387, 0.597190, -0.798454,
		0.996823, -0.063842, 0.047615,
		-0.022540, -0.799555, -0.600170,
		33.753242, 22.241613, 29.037241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174217, 23.013779, 28.931768>,  <33.769020, 22.801302, 29.457361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174217, 23.013779, 28.931768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.017479, 22.700840, 28.738113>,  <33.923435, 22.513077, 28.621920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.017479, 22.700840, 28.738113>,  <34.174217, 23.013779, 28.931768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017479, 22.700840, 28.738113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083829, 0.493671, -0.865599,
		0.916202, -0.379769, -0.127861,
		-0.391849, -0.782345, -0.484138,
		33.899925, 22.466137, 28.592873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641979, 22.757496, 28.320078>,  <34.174217, 23.013779, 28.931768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641979, 22.757496, 28.320078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.259026, 22.653206, 28.270374>,  <34.029255, 22.590631, 28.240553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.259026, 22.653206, 28.270374>,  <34.641979, 22.757496, 28.320078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259026, 22.653206, 28.270374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087118, 0.670875, -0.736435,
		0.275368, -0.694225, -0.664999,
		-0.957383, -0.260725, -0.124258,
		33.971809, 22.574989, 28.233097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570869, 22.704517, 27.660723>,  <34.641979, 22.757496, 28.320078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570869, 22.704517, 27.660723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195335, 22.737938, 27.794350>,  <33.970013, 22.757990, 27.874525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195335, 22.737938, 27.794350>,  <34.570869, 22.704517, 27.660723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195335, 22.737938, 27.794350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146940, 0.780166, -0.608070,
		-0.311433, -0.619968, -0.720173,
		-0.938839, 0.083551, 0.334067,
		33.913685, 22.763002, 27.894569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232006, 22.752522, 27.094160>,  <34.570869, 22.704517, 27.660723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232006, 22.752522, 27.094160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.005836, 22.911476, 27.383263>,  <33.870132, 23.006849, 27.556725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.005836, 22.911476, 27.383263>,  <34.232006, 22.752522, 27.094160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005836, 22.911476, 27.383263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152210, 0.810958, -0.564959,
		-0.810632, -0.429454, -0.398052,
		-0.565428, 0.397386, 0.722756,
		33.836208, 23.030691, 27.600090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671017, 22.996901, 26.774406>,  <34.232006, 22.752522, 27.094160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671017, 22.996901, 26.774406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.688725, 23.216026, 27.108578>,  <33.699348, 23.347502, 27.309080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.688725, 23.216026, 27.108578>,  <33.671017, 22.996901, 26.774406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688725, 23.216026, 27.108578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136220, 0.831749, -0.538181,
		-0.989689, -0.089978, 0.111444,
		0.044269, 0.547812, 0.835429,
		33.702003, 23.380369, 27.359207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074520, 23.373573, 26.724220>,  <33.671017, 22.996901, 26.774406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074520, 23.373573, 26.724220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.300186, 23.561432, 26.995853>,  <33.435585, 23.674147, 27.158833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.300186, 23.561432, 26.995853>,  <33.074520, 23.373573, 26.724220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300186, 23.561432, 26.995853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096965, 0.854465, -0.510380,
		-0.819950, 0.222091, 0.527596,
		0.564163, 0.469645, 0.679083,
		33.469437, 23.702326, 27.199579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.314177, 35.156921, 16.633039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.183470, 34.829449, 16.444157>,  <20.105045, 34.632965, 16.330826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.183470, 34.829449, 16.444157>,  <20.314177, 35.156921, 16.633039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.183470, 34.829449, 16.444157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004472, -0.498291, 0.866998,
		-0.945094, 0.285418, 0.159164,
		-0.326768, -0.818683, -0.472208,
		20.085440, 34.583843, 16.302494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.818129, 34.946754, 17.027054>,  <20.314177, 35.156921, 16.633039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.818129, 34.946754, 17.027054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.920233, 34.611809, 16.833698>,  <19.981495, 34.410843, 16.717684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.920233, 34.611809, 16.833698>,  <19.818129, 34.946754, 17.027054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.920233, 34.611809, 16.833698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190982, -0.533770, 0.823781,
		-0.947823, -0.117960, -0.296171,
		0.255261, -0.837362, -0.483391,
		19.996811, 34.360600, 16.688681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.293999, 34.469555, 16.948582>,  <19.818129, 34.946754, 17.027054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.293999, 34.469555, 16.948582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.603456, 34.219620, 16.906525>,  <19.789131, 34.069660, 16.881290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.603456, 34.219620, 16.906525>,  <19.293999, 34.469555, 16.948582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.603456, 34.219620, 16.906525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277208, -0.482990, 0.830588,
		-0.569763, -0.613434, -0.546872,
		0.773644, -0.624836, -0.105141,
		19.835550, 34.032169, 16.874983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.957687, 33.804752, 17.024466>,  <19.293999, 34.469555, 16.948582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.957687, 33.804752, 17.024466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.349291, 33.742279, 17.076839>,  <19.584253, 33.704796, 17.108263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.349291, 33.742279, 17.076839>,  <18.957687, 33.804752, 17.024466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.349291, 33.742279, 17.076839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197983, -0.576312, 0.792885,
		-0.048379, -0.802166, -0.595138,
		0.979011, -0.156186, 0.130934,
		19.642994, 33.695423, 17.116119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.043985, 33.086342, 17.136414>,  <18.957687, 33.804752, 17.024466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.043985, 33.086342, 17.136414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.373762, 33.239925, 17.302727>,  <19.571629, 33.332073, 17.402515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.373762, 33.239925, 17.302727>,  <19.043985, 33.086342, 17.136414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.373762, 33.239925, 17.302727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197935, -0.492652, 0.847418,
		0.530208, -0.780943, -0.330163,
		0.824440, 0.383957, 0.415784,
		19.621094, 33.355114, 17.427462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.277174, 32.605278, 17.726795>,  <19.043985, 33.086342, 17.136414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.277174, 32.605278, 17.726795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.472033, 32.950020, 17.783222>,  <19.588947, 33.156864, 17.817078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.472033, 32.950020, 17.783222>,  <19.277174, 32.605278, 17.726795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.472033, 32.950020, 17.783222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148418, -0.240880, 0.959140,
		0.860617, -0.446304, -0.245258,
		0.487146, 0.861852, 0.141066,
		19.618176, 33.208576, 17.825542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.893738, 32.460953, 18.175121>,  <19.277174, 32.605278, 17.726795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.893738, 32.460953, 18.175121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.859806, 32.856529, 18.223782>,  <19.839447, 33.093876, 18.252977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.859806, 32.856529, 18.223782>,  <19.893738, 32.460953, 18.175121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.859806, 32.856529, 18.223782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297161, -0.091422, 0.950441,
		0.951052, 0.116775, -0.286119,
		-0.084830, 0.988942, 0.121648,
		19.834356, 33.153214, 18.260277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.531841, 32.714905, 18.441677>,  <19.893738, 32.460953, 18.175121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.531841, 32.714905, 18.441677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.251408, 32.971615, 18.566002>,  <20.083147, 33.125641, 18.640596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.251408, 32.971615, 18.566002>,  <20.531841, 32.714905, 18.441677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.251408, 32.971615, 18.566002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349740, -0.070372, 0.934200,
		0.621421, 0.763656, -0.175119,
		-0.701084, 0.641777, 0.310811,
		20.041082, 33.164146, 18.659245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.852556, 33.243652, 18.905937>,  <20.531841, 32.714905, 18.441677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.852556, 33.243652, 18.905937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.461876, 33.241096, 18.991745>,  <20.227468, 33.239563, 19.043230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.461876, 33.241096, 18.991745>,  <20.852556, 33.243652, 18.905937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.461876, 33.241096, 18.991745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214108, 0.039701, 0.976003,
		-0.014754, 0.999191, -0.037408,
		-0.976698, -0.006390, 0.214521,
		20.168867, 33.239178, 19.056101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.800869, 33.952515, 19.224363>,  <20.852556, 33.243652, 18.905937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.800869, 33.952515, 19.224363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.516956, 33.694450, 19.337486>,  <20.346609, 33.539612, 19.405359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.516956, 33.694450, 19.337486>,  <20.800869, 33.952515, 19.224363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.516956, 33.694450, 19.337486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318420, 0.064265, 0.945769,
		-0.628344, 0.761342, 0.159817,
		-0.709783, -0.645157, 0.282807,
		20.304022, 33.500904, 19.422329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.341225, 34.232746, 19.717657>,  <20.800869, 33.952515, 19.224363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.341225, 34.232746, 19.717657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.292591, 33.839977, 19.775677>,  <20.263411, 33.604317, 19.810490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.292591, 33.839977, 19.775677>,  <20.341225, 34.232746, 19.717657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.292591, 33.839977, 19.775677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036086, 0.150412, 0.987965,
		-0.991925, 0.114886, -0.053721,
		-0.121583, -0.981926, 0.145051,
		20.256117, 33.545399, 19.819193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.983841, 34.245480, 20.367685>,  <20.341225, 34.232746, 19.717657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.983841, 34.245480, 20.367685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.113331, 33.868813, 20.330883>,  <20.191025, 33.642811, 20.308802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.113331, 33.868813, 20.330883>,  <19.983841, 34.245480, 20.367685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.113331, 33.868813, 20.330883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113534, -0.057878, 0.991847,
		-0.939315, -0.331532, 0.088174,
		0.323725, -0.941667, -0.092006,
		20.210449, 33.586311, 20.303282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.667509, 33.868149, 20.919718>,  <19.983841, 34.245480, 20.367685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.667509, 33.868149, 20.919718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.976429, 33.645908, 20.796520>,  <20.161781, 33.512562, 20.722601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.976429, 33.645908, 20.796520>,  <19.667509, 33.868149, 20.919718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.976429, 33.645908, 20.796520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269922, -0.151886, 0.950827,
		-0.575063, -0.817456, 0.032668,
		0.772298, -0.555604, -0.307994,
		20.208118, 33.479229, 20.704123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.668344, 33.200962, 21.249077>,  <19.667509, 33.868149, 20.919718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.668344, 33.200962, 21.249077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.048409, 33.226734, 21.127064>,  <20.276447, 33.242199, 21.053856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.048409, 33.226734, 21.127064>,  <19.668344, 33.200962, 21.249077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.048409, 33.226734, 21.127064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311665, -0.220767, 0.924190,
		-0.007795, -0.973196, -0.229844,
		0.950160, 0.064431, -0.305032,
		20.333456, 33.246063, 21.035555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.096699, 32.661396, 21.601439>,  <19.668344, 33.200962, 21.249077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.096699, 32.661396, 21.601439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.374020, 32.921852, 21.477924>,  <20.540413, 33.078125, 21.403816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.374020, 32.921852, 21.477924>,  <20.096699, 32.661396, 21.601439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.374020, 32.921852, 21.477924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373832, 0.041363, 0.926574,
		0.616103, -0.757828, -0.214740,
		0.693302, 0.651142, -0.308784,
		20.582010, 33.117195, 21.385288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.796864, 32.399448, 21.764591>,  <20.096699, 32.661396, 21.601439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.796864, 32.399448, 21.764591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.851210, 32.795410, 21.748463>,  <20.883818, 33.032990, 21.738787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.851210, 32.795410, 21.748463>,  <20.796864, 32.399448, 21.764591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.851210, 32.795410, 21.748463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623043, -0.053729, 0.780340,
		0.770297, -0.131142, -0.624054,
		0.135865, 0.989906, -0.040320,
		20.891970, 33.092381, 21.736366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.685699, 32.591862, 21.727674>,  <20.796864, 32.399448, 21.764591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.685699, 32.591862, 21.727674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.477787, 32.904949, 21.864605>,  <21.353041, 33.092800, 21.946764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.477787, 32.904949, 21.864605>,  <21.685699, 32.591862, 21.727674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.477787, 32.904949, 21.864605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668237, 0.122854, 0.733734,
		0.532248, 0.610135, -0.586896,
		-0.519779, 0.782714, 0.342327,
		21.321854, 33.139763, 21.967302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.138851, 33.037781, 22.008018>,  <21.685699, 32.591862, 21.727674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.138851, 33.037781, 22.008018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.800028, 33.162331, 22.180317>,  <21.596735, 33.237061, 22.283697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.800028, 33.162331, 22.180317>,  <22.138851, 33.037781, 22.008018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.800028, 33.162331, 22.180317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440553, -0.042058, 0.896741,
		0.297336, 0.949357, -0.101551,
		-0.847056, 0.311372, 0.430747,
		21.545912, 33.255741, 22.309542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.402826, 33.564636, 22.499804>,  <22.138851, 33.037781, 22.008018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.402826, 33.564636, 22.499804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.037624, 33.474022, 22.635513>,  <21.818504, 33.419655, 22.716940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.037624, 33.474022, 22.635513>,  <22.402826, 33.564636, 22.499804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.037624, 33.474022, 22.635513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303940, 0.177012, 0.936102,
		-0.272114, 0.957784, -0.092760,
		-0.913003, -0.226534, 0.339276,
		21.763723, 33.406063, 22.737295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.185810, 34.112099, 22.970211>,  <22.402826, 33.564636, 22.499804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.185810, 34.112099, 22.970211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.933294, 33.816673, 23.064861>,  <21.781784, 33.639420, 23.121653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.933294, 33.816673, 23.064861>,  <22.185810, 34.112099, 22.970211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.933294, 33.816673, 23.064861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091813, 0.231794, 0.968422,
		-0.770092, 0.633082, -0.078520,
		-0.631291, -0.738565, 0.236628,
		21.743906, 33.595104, 23.135849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.826878, 34.320217, 23.582891>,  <22.185810, 34.112099, 22.970211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.826878, 34.320217, 23.582891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.773880, 33.923859, 23.573357>,  <21.742083, 33.686043, 23.567635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.773880, 33.923859, 23.573357>,  <21.826878, 34.320217, 23.582891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.773880, 33.923859, 23.573357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428847, -0.078992, 0.899917,
		-0.893608, 0.109009, 0.435409,
		-0.132493, -0.990897, -0.023839,
		21.734133, 33.626591, 23.566204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.280239, 34.900269, 23.742363>,  <21.826878, 34.320217, 23.582891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.280239, 34.900269, 23.742363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.040081, 35.216362, 23.693287>,  <20.895987, 35.406017, 23.663841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.040081, 35.216362, 23.693287>,  <21.280239, 34.900269, 23.742363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.040081, 35.216362, 23.693287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110707, -0.069809, -0.991398,
		-0.792004, -0.608813, -0.045572,
		-0.600394, 0.790237, -0.122689,
		20.859962, 35.453434, 23.656481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.913601, 34.801060, 23.106890>,  <21.280239, 34.900269, 23.742363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.913601, 34.801060, 23.106890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.851618, 35.192989, 23.157372>,  <20.814428, 35.428146, 23.187660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.851618, 35.192989, 23.157372>,  <20.913601, 34.801060, 23.106890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.851618, 35.192989, 23.157372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159033, 0.150823, -0.975685,
		-0.975037, -0.131120, -0.179196,
		-0.154959, 0.979827, 0.126205,
		20.805130, 35.486938, 23.195232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.290346, 35.010117, 22.658524>,  <20.913601, 34.801060, 23.106890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.290346, 35.010117, 22.658524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.503168, 35.340672, 22.732288>,  <20.630861, 35.539005, 22.776546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.503168, 35.340672, 22.732288>,  <20.290346, 35.010117, 22.658524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.503168, 35.340672, 22.732288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041640, 0.191996, -0.980512,
		-0.845685, 0.529366, 0.067742,
		0.532056, 0.826383, 0.184411,
		20.662785, 35.588585, 22.787611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.121744, 35.516911, 22.126339>,  <20.290346, 35.010117, 22.658524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.121744, 35.516911, 22.126339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.465225, 35.665306, 22.267757>,  <20.671314, 35.754345, 22.352608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.465225, 35.665306, 22.267757>,  <20.121744, 35.516911, 22.126339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.465225, 35.665306, 22.267757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355602, 0.065420, -0.932345,
		-0.369023, 0.926328, -0.075750,
		0.858702, 0.370993, 0.353546,
		20.722836, 35.776604, 22.373821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.123264, 36.212646, 21.852333>,  <20.121744, 35.516911, 22.126339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.123264, 36.212646, 21.852333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.490362, 36.111469, 21.974815>,  <20.710621, 36.050762, 22.048306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.490362, 36.111469, 21.974815>,  <20.123264, 36.212646, 21.852333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.490362, 36.111469, 21.974815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346957, 0.135364, -0.928061,
		0.193298, 0.957965, 0.211990,
		0.917746, -0.252944, 0.306207,
		20.765686, 36.035587, 22.066677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.585892, 36.707443, 21.540445>,  <20.123264, 36.212646, 21.852333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.585892, 36.707443, 21.540445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.853378, 36.425694, 21.635670>,  <21.013870, 36.256641, 21.692804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.853378, 36.425694, 21.635670>,  <20.585892, 36.707443, 21.540445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.853378, 36.425694, 21.635670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466257, 0.147866, -0.872204,
		0.579158, 0.694255, 0.427301,
		0.668716, -0.704376, 0.238063,
		21.053993, 36.214382, 21.707088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.117752, 37.041939, 21.551598>,  <20.585892, 36.707443, 21.540445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.117752, 37.041939, 21.551598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.203777, 36.658165, 21.478687>,  <21.255392, 36.427898, 21.434940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.203777, 36.658165, 21.478687>,  <21.117752, 37.041939, 21.551598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.203777, 36.658165, 21.478687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512477, 0.269753, -0.815230,
		0.831333, 0.081915, 0.549705,
		0.215065, -0.959439, -0.182275,
		21.268297, 36.370335, 21.424006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.808964, 37.083138, 21.431246>,  <21.117752, 37.041939, 21.551598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.808964, 37.083138, 21.431246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.708965, 36.730499, 21.271103>,  <21.648966, 36.518917, 21.175018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.708965, 36.730499, 21.271103>,  <21.808964, 37.083138, 21.431246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.708965, 36.730499, 21.271103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506613, 0.233272, -0.830017,
		0.825135, -0.410324, 0.388313,
		-0.249994, -0.881600, -0.400356,
		21.633966, 36.466019, 21.150995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.419136, 36.877037, 21.123358>,  <21.808964, 37.083138, 21.431246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.419136, 36.877037, 21.123358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.103523, 36.687252, 20.967251>,  <21.914154, 36.573380, 20.873587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.103523, 36.687252, 20.967251>,  <22.419136, 36.877037, 21.123358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.103523, 36.687252, 20.967251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402977, 0.079780, -0.911726,
		0.463718, -0.876651, 0.128250,
		-0.789034, -0.474466, -0.390266,
		21.866814, 36.544914, 20.850170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.749866, 36.451572, 20.609373>,  <22.419136, 36.877037, 21.123358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.749866, 36.451572, 20.609373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.371090, 36.448566, 20.480843>,  <22.143824, 36.446762, 20.403725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.371090, 36.448566, 20.480843>,  <22.749866, 36.451572, 20.609373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.371090, 36.448566, 20.480843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317737, -0.172657, -0.932326,
		-0.048474, -0.984953, 0.165883,
		-0.946939, -0.007514, -0.321325,
		22.087008, 36.446312, 20.384445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.758841, 35.929329, 20.004335>,  <22.749866, 36.451572, 20.609373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.758841, 35.929329, 20.004335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.427023, 36.148380, 19.960594>,  <22.227932, 36.279812, 19.934349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.427023, 36.148380, 19.960594>,  <22.758841, 35.929329, 20.004335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.427023, 36.148380, 19.960594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038046, -0.139944, -0.989428,
		-0.557146, -0.824933, 0.095255,
		-0.829543, 0.547632, -0.109355,
		22.178160, 36.312672, 19.927788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.440695, 35.603706, 19.553652>,  <22.758841, 35.929329, 20.004335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.440695, 35.603706, 19.553652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.268719, 35.963871, 19.527092>,  <22.165533, 36.179970, 19.511156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.268719, 35.963871, 19.527092>,  <22.440695, 35.603706, 19.553652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.268719, 35.963871, 19.527092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183718, -0.159256, -0.969992,
		-0.883967, -0.404842, 0.233893,
		-0.429942, 0.900411, -0.066401,
		22.139736, 36.233994, 19.507172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.717505, 35.474480, 19.201912>,  <22.440695, 35.603706, 19.553652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.717505, 35.474480, 19.201912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.857367, 35.845005, 19.145798>,  <21.941284, 36.067322, 19.112129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.857367, 35.845005, 19.145798>,  <21.717505, 35.474480, 19.201912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.857367, 35.845005, 19.145798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147431, -0.093470, -0.984646,
		-0.925205, 0.364970, 0.103886,
		0.349656, 0.926316, -0.140287,
		21.962263, 36.122898, 19.103712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.250961, 35.752537, 18.725670>,  <21.717505, 35.474480, 19.201912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.250961, 35.752537, 18.725670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.571857, 35.991257, 18.719532>,  <21.764395, 36.134491, 18.715849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.571857, 35.991257, 18.719532>,  <21.250961, 35.752537, 18.725670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.571857, 35.991257, 18.719532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035726, 0.022337, -0.999112,
		-0.595931, 0.802077, 0.039241,
		0.802241, 0.596803, -0.015343,
		21.812531, 36.170300, 18.714930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.107512, 36.325191, 18.236824>,  <21.250961, 35.752537, 18.725670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.107512, 36.325191, 18.236824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.505211, 36.334106, 18.278728>,  <21.743830, 36.339455, 18.303871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.505211, 36.334106, 18.278728>,  <21.107512, 36.325191, 18.236824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.505211, 36.334106, 18.278728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104159, 0.026654, -0.994203,
		-0.024952, 0.999396, 0.024179,
		0.994248, 0.022289, 0.104761,
		21.803486, 36.340794, 18.310156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.275234, 36.914909, 17.806265>,  <21.107512, 36.325191, 18.236824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.275234, 36.914909, 17.806265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.598415, 36.689819, 17.876179>,  <21.792324, 36.554764, 17.918127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.598415, 36.689819, 17.876179>,  <21.275234, 36.914909, 17.806265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.598415, 36.689819, 17.876179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179229, -0.047874, -0.982642,
		0.561326, 0.825256, 0.062176,
		0.807955, -0.562726, 0.174782,
		21.840801, 36.521000, 17.928614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.772745, 37.277332, 17.596672>,  <21.275234, 36.914909, 17.806265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.772745, 37.277332, 17.596672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.905809, 36.901421, 17.565315>,  <21.985647, 36.675873, 17.546501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.905809, 36.901421, 17.565315>,  <21.772745, 37.277332, 17.596672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.905809, 36.901421, 17.565315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145949, 0.133428, -0.980253,
		0.931685, 0.314649, 0.181546,
		0.332659, -0.939784, -0.078391,
		22.005608, 36.619484, 17.541798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.303307, 37.277916, 17.128592>,  <21.772745, 37.277332, 17.596672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.303307, 37.277916, 17.128592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.158592, 36.905159, 17.118061>,  <22.071764, 36.681507, 17.111742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.158592, 36.905159, 17.118061>,  <22.303307, 37.277916, 17.128592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.158592, 36.905159, 17.118061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008100, 0.031381, -0.999475,
		0.932226, -0.361383, -0.018902,
		-0.361786, -0.931889, -0.026327,
		22.050056, 36.625591, 17.110163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.765041, 37.000404, 16.744028>,  <22.303307, 37.277916, 17.128592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.765041, 37.000404, 16.744028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.463501, 36.739262, 16.714405>,  <22.282576, 36.582577, 16.696632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.463501, 36.739262, 16.714405>,  <22.765041, 37.000404, 16.744028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.463501, 36.739262, 16.714405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082790, 0.017429, -0.996414,
		0.651807, -0.757281, 0.040911,
		-0.753853, -0.652857, -0.074055,
		22.237345, 36.543404, 16.692188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.935968, 36.709896, 16.167765>,  <22.765041, 37.000404, 16.744028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.935968, 36.709896, 16.167765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.560760, 36.580982, 16.218758>,  <22.335636, 36.503635, 16.249353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.560760, 36.580982, 16.218758>,  <22.935968, 36.709896, 16.167765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.560760, 36.580982, 16.218758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137028, 0.007003, -0.990543,
		0.318346, -0.946616, -0.050731,
		-0.938019, -0.322286, 0.127483,
		22.279354, 36.484295, 16.257002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.816690, 36.001797, 15.813605>,  <22.935968, 36.709896, 16.167765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.816690, 36.001797, 15.813605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.468315, 36.196003, 15.843930>,  <22.259291, 36.312527, 15.862125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.468315, 36.196003, 15.843930>,  <22.816690, 36.001797, 15.813605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.468315, 36.196003, 15.843930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056261, 0.054741, -0.996914,
		-0.488165, -0.872514, -0.020360,
		-0.870936, 0.485513, 0.075811,
		22.207035, 36.341656, 15.866673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.410978, 27.402023, 26.248899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787420, 27.529919, 26.204922>,  <29.013287, 27.606655, 26.178535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787420, 27.529919, 26.204922>,  <28.410978, 27.402023, 26.248899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787420, 27.529919, 26.204922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328089, 0.784988, -0.525501,
		-0.081717, 0.530624, 0.843659,
		0.941106, 0.319738, -0.109945,
		29.069752, 27.625839, 26.171938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294722, 28.000551, 26.312355>,  <28.410978, 27.402023, 26.248899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294722, 28.000551, 26.312355> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657705, 27.994621, 26.144405>,  <28.875496, 27.991064, 26.043636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.657705, 27.994621, 26.144405>,  <28.294722, 28.000551, 26.312355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657705, 27.994621, 26.144405> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301949, 0.671883, -0.676314,
		0.292132, 0.740509, 0.605232,
		0.907461, -0.014824, -0.419874,
		28.929943, 27.990173, 26.018444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.439877, 28.697422, 26.181368>,  <28.294722, 28.000551, 26.312355>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.439877, 28.697422, 26.181368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684662, 28.475288, 25.956120>,  <28.831533, 28.342009, 25.820971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684662, 28.475288, 25.956120>,  <28.439877, 28.697422, 26.181368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684662, 28.475288, 25.956120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201793, 0.578809, -0.790101,
		0.764710, 0.597146, 0.242146,
		0.611962, -0.555335, -0.563121,
		28.868250, 28.308687, 25.787184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967209, 29.075878, 25.927881>,  <28.439877, 28.697422, 26.181368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967209, 29.075878, 25.927881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942530, 28.766514, 25.675522>,  <28.927723, 28.580894, 25.524107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942530, 28.766514, 25.675522>,  <28.967209, 29.075878, 25.927881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942530, 28.766514, 25.675522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073743, 0.633905, -0.769887,
		0.995367, -0.000976, -0.096144,
		-0.061697, -0.773410, -0.630896,
		28.924021, 28.534491, 25.486254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279339, 29.282745, 25.368069>,  <28.967209, 29.075878, 25.927881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279339, 29.282745, 25.368069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089277, 28.974251, 25.198635>,  <28.975241, 28.789154, 25.096975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089277, 28.974251, 25.198635>,  <29.279339, 29.282745, 25.368069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089277, 28.974251, 25.198635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305522, 0.596056, -0.742545,
		0.825157, -0.223409, -0.518848,
		-0.475154, -0.771236, -0.423584,
		28.946732, 28.742880, 25.071560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401937, 29.361990, 24.777384>,  <29.279339, 29.282745, 25.368069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401937, 29.361990, 24.777384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088150, 29.120270, 24.721626>,  <28.899878, 28.975239, 24.688171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088150, 29.120270, 24.721626>,  <29.401937, 29.361990, 24.777384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088150, 29.120270, 24.721626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321022, 0.587992, -0.742435,
		0.530615, -0.537669, -0.655255,
		-0.784469, -0.604298, -0.139394,
		28.852810, 28.938980, 24.679808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349800, 29.265900, 24.094250>,  <29.401937, 29.361990, 24.777384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349800, 29.265900, 24.094250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979753, 29.175640, 24.216389>,  <28.757725, 29.121485, 24.289673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979753, 29.175640, 24.216389>,  <29.349800, 29.265900, 24.094250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979753, 29.175640, 24.216389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379510, 0.573449, -0.726036,
		-0.011271, -0.787552, -0.616145,
		-0.925119, -0.225650, 0.305348,
		28.702217, 29.107944, 24.307993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944260, 29.089388, 23.450575>,  <29.349800, 29.265900, 24.094250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944260, 29.089388, 23.450575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689024, 29.189816, 23.741726>,  <28.535883, 29.250072, 23.916416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689024, 29.189816, 23.741726>,  <28.944260, 29.089388, 23.450575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689024, 29.189816, 23.741726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537220, 0.532038, -0.654469,
		-0.551576, -0.808641, -0.204608,
		-0.638089, 0.251070, 0.727877,
		28.497597, 29.265137, 23.960089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295368, 28.957726, 23.229342>,  <28.944260, 29.089388, 23.450575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295368, 28.957726, 23.229342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238323, 29.223400, 23.522877>,  <28.204096, 29.382805, 23.698997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.238323, 29.223400, 23.522877>,  <28.295368, 28.957726, 23.229342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238323, 29.223400, 23.522877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551169, 0.562535, -0.616253,
		-0.822117, -0.492353, 0.285855,
		-0.142610, 0.664186, 0.733839,
		28.195539, 29.422655, 23.743029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576591, 29.202848, 23.206387>,  <28.295368, 28.957726, 23.229342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576591, 29.202848, 23.206387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756392, 29.486828, 23.423244>,  <27.864271, 29.657215, 23.553358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.756392, 29.486828, 23.423244>,  <27.576591, 29.202848, 23.206387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756392, 29.486828, 23.423244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527654, 0.700741, -0.480149,
		-0.720784, -0.070236, 0.689593,
		0.449502, 0.709950, 0.542143,
		27.891243, 29.699812, 23.585888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088076, 29.515511, 23.579540>,  <27.576591, 29.202848, 23.206387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088076, 29.515511, 23.579540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389854, 29.776505, 23.551064>,  <27.570923, 29.933102, 23.533978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.389854, 29.776505, 23.551064>,  <27.088076, 29.515511, 23.579540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389854, 29.776505, 23.551064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613417, 0.662340, -0.430146,
		-0.233510, 0.368194, 0.899948,
		0.754449, 0.652486, -0.071193,
		27.616190, 29.972250, 23.529705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748865, 30.096651, 23.891266>,  <27.088076, 29.515511, 23.579540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748865, 30.096651, 23.891266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041992, 30.112823, 23.619576>,  <27.217869, 30.122526, 23.456562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041992, 30.112823, 23.619576>,  <26.748865, 30.096651, 23.891266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041992, 30.112823, 23.619576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484764, 0.731515, -0.479468,
		0.477477, 0.680625, 0.555666,
		0.732816, 0.040432, -0.679225,
		27.261837, 30.124952, 23.415808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.987148, 30.167294, 24.015596>,  <26.748865, 30.096651, 23.891266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.987148, 30.167294, 24.015596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674015, 30.172466, 24.264435>,  <25.486135, 30.175570, 24.413738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.674015, 30.172466, 24.264435>,  <25.987148, 30.167294, 24.015596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674015, 30.172466, 24.264435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601158, 0.273695, 0.750799,
		-0.160557, 0.961730, -0.222031,
		-0.782835, 0.012930, 0.622095,
		25.439165, 30.176346, 24.451063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698792, 30.856325, 23.952690>,  <25.987148, 30.167294, 24.015596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698792, 30.856325, 23.952690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680035, 30.577339, 23.666656>,  <25.668781, 30.409948, 23.495035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680035, 30.577339, 23.666656>,  <25.698792, 30.856325, 23.952690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680035, 30.577339, 23.666656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975416, -0.122344, 0.183290,
		-0.215324, 0.706100, -0.674580,
		-0.046890, -0.697463, -0.715085,
		25.665968, 30.368101, 23.452131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.136944, 31.439381, 23.885294>,  <25.698792, 30.856325, 23.952690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.136944, 31.439381, 23.885294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.919722, 31.571190, 24.194229>,  <24.789389, 31.650276, 24.379589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.919722, 31.571190, 24.194229>,  <25.136944, 31.439381, 23.885294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.919722, 31.571190, 24.194229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747336, -0.229696, 0.623481,
		0.382854, 0.915780, -0.121526,
		-0.543058, 0.329524, 0.772336,
		24.756804, 31.670048, 24.425930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.571825, 31.484142, 24.334013>,  <25.136944, 31.439381, 23.885294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.571825, 31.484142, 24.334013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256021, 31.500717, 24.578949>,  <25.066540, 31.510662, 24.725910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256021, 31.500717, 24.578949>,  <25.571825, 31.484142, 24.334013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.256021, 31.500717, 24.578949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537315, -0.435493, 0.722245,
		0.296599, 0.899238, 0.321560,
		-0.789507, 0.041438, 0.612341,
		25.019169, 31.513149, 24.762651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759035, 31.835323, 24.968187>,  <25.571825, 31.484142, 24.334013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759035, 31.835323, 24.968187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.452414, 31.595264, 25.059589>,  <25.268440, 31.451229, 25.114431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.452414, 31.595264, 25.059589>,  <25.759035, 31.835323, 24.968187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452414, 31.595264, 25.059589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508182, -0.349356, 0.787211,
		-0.392614, 0.719563, 0.572785,
		-0.766554, -0.600149, 0.228507,
		25.222446, 31.415220, 25.128141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709063, 31.870789, 25.801565>,  <25.759035, 31.835323, 24.968187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709063, 31.870789, 25.801565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478382, 31.566936, 25.681313>,  <25.339973, 31.384624, 25.609161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478382, 31.566936, 25.681313>,  <25.709063, 31.870789, 25.801565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478382, 31.566936, 25.681313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287546, -0.533181, 0.795635,
		-0.764679, 0.372398, 0.525914,
		-0.576701, -0.759630, -0.300631,
		25.305372, 31.339048, 25.591124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311880, 31.675676, 26.320017>,  <25.709063, 31.870789, 25.801565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311880, 31.675676, 26.320017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.335699, 31.336895, 26.108688>,  <25.349991, 31.133625, 25.981892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.335699, 31.336895, 26.108688>,  <25.311880, 31.675676, 26.320017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.335699, 31.336895, 26.108688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215283, -0.505908, 0.835290,
		-0.974735, -0.163476, 0.152210,
		0.059545, -0.846955, -0.528320,
		25.353563, 31.082809, 25.950191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907486, 31.335730, 26.682617>,  <25.311880, 31.675676, 26.320017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907486, 31.335730, 26.682617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.045612, 31.032253, 26.461658>,  <25.128489, 30.850166, 26.329082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.045612, 31.032253, 26.461658>,  <24.907486, 31.335730, 26.682617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.045612, 31.032253, 26.461658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043965, -0.601035, 0.798012,
		-0.937456, -0.251280, -0.240903,
		0.345316, -0.758693, -0.552396,
		25.149206, 30.804646, 26.295940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.452894, 30.747252, 26.769329>,  <24.907486, 31.335730, 26.682617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.452894, 30.747252, 26.769329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.807056, 30.597218, 26.659515>,  <25.019554, 30.507196, 26.593628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.807056, 30.597218, 26.659515>,  <24.452894, 30.747252, 26.769329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.807056, 30.597218, 26.659515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091623, -0.719867, 0.688039,
		-0.455700, -0.584040, -0.671741,
		0.885405, -0.375086, -0.274532,
		25.072678, 30.484692, 26.577156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.359694, 29.963966, 26.813423>,  <24.452894, 30.747252, 26.769329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.359694, 29.963966, 26.813423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.756878, 30.009216, 26.827477>,  <24.995188, 30.036367, 26.835909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.756878, 30.009216, 26.827477>,  <24.359694, 29.963966, 26.813423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.756878, 30.009216, 26.827477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072875, -0.817209, 0.571716,
		0.093386, -0.565130, -0.819699,
		0.992959, 0.113126, 0.035132,
		25.054766, 30.043154, 26.838017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.654659, 29.280420, 26.830181>,  <24.359694, 29.963966, 26.813423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.654659, 29.280420, 26.830181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.967993, 29.505318, 26.936218>,  <25.155993, 29.640257, 26.999840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.967993, 29.505318, 26.936218>,  <24.654659, 29.280420, 26.830181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.967993, 29.505318, 26.936218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299128, -0.714798, 0.632128,
		0.544898, -0.415869, -0.728106,
		0.783332, 0.562243, 0.265093,
		25.202991, 29.673990, 27.015747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283991, 28.882318, 26.709389>,  <24.654659, 29.280420, 26.830181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283991, 28.882318, 26.709389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.395189, 29.152397, 26.982689>,  <25.461908, 29.314444, 27.146669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.395189, 29.152397, 26.982689>,  <25.283991, 28.882318, 26.709389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.395189, 29.152397, 26.982689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418074, -0.725430, 0.546776,
		0.864831, 0.133647, -0.483948,
		0.277996, 0.675195, 0.683249,
		25.478588, 29.354956, 27.187664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959164, 28.838354, 26.858181>,  <25.283991, 28.882318, 26.709389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959164, 28.838354, 26.858181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835571, 29.022858, 27.190872>,  <25.761415, 29.133560, 27.390488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835571, 29.022858, 27.190872>,  <25.959164, 28.838354, 26.858181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835571, 29.022858, 27.190872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580803, -0.600998, 0.549063,
		0.753127, 0.652719, -0.082203,
		-0.308980, 0.461258, 0.831729,
		25.742878, 29.161236, 27.440392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612724, 28.960913, 27.225433>,  <25.959164, 28.838354, 26.858181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612724, 28.960913, 27.225433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323763, 29.046234, 27.488533>,  <26.150387, 29.097427, 27.646393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323763, 29.046234, 27.488533>,  <26.612724, 28.960913, 27.225433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323763, 29.046234, 27.488533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566337, -0.363249, 0.739806,
		0.396731, 0.906946, 0.141610,
		-0.722404, 0.213304, 0.657749,
		26.107042, 29.110226, 27.685858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913456, 29.348148, 27.760630>,  <26.612724, 28.960913, 27.225433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913456, 29.348148, 27.760630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581264, 29.177395, 27.903782>,  <26.381950, 29.074944, 27.989674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.581264, 29.177395, 27.903782>,  <26.913456, 29.348148, 27.760630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581264, 29.177395, 27.903782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544137, -0.484132, 0.685223,
		-0.119248, 0.763798, 0.634344,
		-0.830478, -0.426881, 0.357879,
		26.332121, 29.049330, 28.011147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064289, 29.452061, 28.488043>,  <26.913456, 29.348148, 27.760630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064289, 29.452061, 28.488043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787298, 29.167938, 28.437546>,  <26.621103, 28.997465, 28.407248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787298, 29.167938, 28.437546>,  <27.064289, 29.452061, 28.488043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787298, 29.167938, 28.437546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515243, -0.609413, 0.602612,
		-0.504975, 0.352248, 0.787986,
		-0.692478, -0.710308, -0.126245,
		26.579556, 28.954845, 28.399672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503969, 29.692053, 28.991489>,  <27.064289, 29.452061, 28.488043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503969, 29.692053, 28.991489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730326, 29.874447, 29.266254>,  <27.866140, 29.983883, 29.431112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730326, 29.874447, 29.266254>,  <27.503969, 29.692053, 28.991489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730326, 29.874447, 29.266254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268035, 0.889634, -0.369742,
		-0.779695, 0.025117, 0.625656,
		0.565891, 0.455983, 0.686910,
		27.900093, 30.011242, 29.472328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081385, 30.313868, 29.171766>,  <27.503969, 29.692053, 28.991489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081385, 30.313868, 29.171766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462303, 30.385723, 29.270451>,  <27.690853, 30.428837, 29.329660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462303, 30.385723, 29.270451>,  <27.081385, 30.313868, 29.171766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462303, 30.385723, 29.270451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012206, 0.830177, -0.557366,
		-0.304937, 0.527766, 0.792765,
		0.952294, 0.179638, 0.246710,
		27.747992, 30.439615, 29.344463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158283, 31.080540, 29.348520>,  <27.081385, 30.313868, 29.171766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158283, 31.080540, 29.348520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513514, 30.936352, 29.234409>,  <27.726652, 30.849838, 29.165943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513514, 30.936352, 29.234409>,  <27.158283, 31.080540, 29.348520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.513514, 30.936352, 29.234409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153577, 0.817566, -0.554977,
		0.433285, 0.449050, 0.781421,
		0.888076, -0.360471, -0.285275,
		27.779936, 30.828211, 29.148827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.641241, 31.606337, 29.440996>,  <27.158283, 31.080540, 29.348520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.641241, 31.606337, 29.440996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860933, 31.375599, 29.199139>,  <27.992748, 31.237156, 29.054024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860933, 31.375599, 29.199139>,  <27.641241, 31.606337, 29.440996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860933, 31.375599, 29.199139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224897, 0.798879, -0.557865,
		0.804839, 0.170415, 0.568501,
		0.549232, -0.576845, -0.604643,
		28.025703, 31.202545, 29.017746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211882, 32.018635, 29.286520>,  <27.641241, 31.606337, 29.440996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211882, 32.018635, 29.286520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216843, 31.732971, 29.006569>,  <28.219818, 31.561573, 28.838598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216843, 31.732971, 29.006569>,  <28.211882, 32.018635, 29.286520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216843, 31.732971, 29.006569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144141, 0.693896, -0.705502,
		0.989480, -0.092132, 0.111544,
		0.012401, -0.714157, -0.699875,
		28.220562, 31.518724, 28.796606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814608, 32.189369, 28.839800>,  <28.211882, 32.018635, 29.286520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814608, 32.189369, 28.839800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570530, 31.943802, 28.639492>,  <28.424084, 31.796461, 28.519308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570530, 31.943802, 28.639492>,  <28.814608, 32.189369, 28.839800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570530, 31.943802, 28.639492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134895, 0.542342, -0.829258,
		0.780682, -0.573560, -0.248120,
		-0.610195, -0.613917, -0.500767,
		28.387472, 31.759626, 28.489262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129906, 31.970694, 28.222281>,  <28.814608, 32.189369, 28.839800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129906, 31.970694, 28.222281> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737574, 31.955196, 28.145889>,  <28.502174, 31.945898, 28.100054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737574, 31.955196, 28.145889>,  <29.129906, 31.970694, 28.222281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737574, 31.955196, 28.145889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136156, 0.564882, -0.813861,
		0.139409, -0.824262, -0.548778,
		-0.980830, -0.038740, -0.190978,
		28.443325, 31.943575, 28.088596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147690, 31.804642, 27.577492>,  <29.129906, 31.970694, 28.222281>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147690, 31.804642, 27.577492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761168, 31.901859, 27.611401>,  <28.529255, 31.960190, 27.631746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761168, 31.901859, 27.611401>,  <29.147690, 31.804642, 27.577492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761168, 31.901859, 27.611401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024577, 0.414950, -0.909512,
		-0.256230, -0.876781, -0.406941,
		-0.966303, 0.243046, 0.084774,
		28.471277, 31.974773, 27.636833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.827795, 31.614132, 26.901005>,  <29.147690, 31.804642, 27.577492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.827795, 31.614132, 26.901005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566702, 31.864552, 27.071651>,  <28.410046, 32.014805, 27.174040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566702, 31.864552, 27.071651>,  <28.827795, 31.614132, 26.901005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566702, 31.864552, 27.071651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027979, 0.542821, -0.839383,
		-0.757071, -0.559829, -0.336801,
		-0.652733, 0.626049, 0.426617,
		28.370882, 32.052364, 27.199636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343092, 31.685213, 26.477472>,  <28.827795, 31.614132, 26.901005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343092, 31.685213, 26.477472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288757, 32.008911, 26.706093>,  <28.256157, 32.203129, 26.843266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288757, 32.008911, 26.706093>,  <28.343092, 31.685213, 26.477472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288757, 32.008911, 26.706093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092720, 0.563983, -0.820565,
		-0.986383, -0.164458, -0.001576,
		-0.135837, 0.809245, 0.571551,
		28.248007, 32.251686, 26.877558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695084, 31.993246, 26.297064>,  <28.343092, 31.685213, 26.477472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695084, 31.993246, 26.297064> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949671, 32.258404, 26.454788>,  <28.102423, 32.417500, 26.549423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949671, 32.258404, 26.454788>,  <27.695084, 31.993246, 26.297064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949671, 32.258404, 26.454788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173678, 0.621272, -0.764105,
		-0.751496, 0.417844, 0.510549,
		0.636467, 0.662893, 0.394313,
		28.140612, 32.457272, 26.573082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559605, 32.597561, 25.899397>,  <27.695084, 31.993246, 26.297064>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559605, 32.597561, 25.899397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906567, 32.688969, 26.076210>,  <28.114744, 32.743813, 26.182299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906567, 32.688969, 26.076210>,  <27.559605, 32.597561, 25.899397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906567, 32.688969, 26.076210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117498, 0.769139, -0.628187,
		-0.483536, 0.596829, 0.640303,
		0.867403, 0.228516, 0.442033,
		28.166788, 32.757523, 26.208820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.995031, 26.978642, 31.491589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.381817, 27.067451, 31.541691>,  <28.613888, 27.120737, 31.571753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.381817, 27.067451, 31.541691>,  <27.995031, 26.978642, 31.491589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381817, 27.067451, 31.541691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194555, 0.960252, -0.200164,
		-0.164719, 0.169181, 0.971723,
		0.966962, 0.222024, 0.125257,
		28.671906, 27.134058, 31.579268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030933, 27.542904, 31.976051>,  <27.995031, 26.978642, 31.491589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030933, 27.542904, 31.976051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.374468, 27.547455, 31.771202>,  <28.580589, 27.550186, 31.648293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.374468, 27.547455, 31.771202>,  <28.030933, 27.542904, 31.976051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.374468, 27.547455, 31.771202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062399, 0.994632, -0.082547,
		0.508433, 0.102850, 0.854937,
		0.858837, 0.011378, -0.512122,
		28.632118, 27.550869, 31.617565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435551, 28.286633, 32.081974>,  <28.030933, 27.542904, 31.976051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435551, 28.286633, 32.081974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.610050, 28.131691, 31.757099>,  <28.714750, 28.038725, 31.562176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.610050, 28.131691, 31.757099>,  <28.435551, 28.286633, 32.081974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610050, 28.131691, 31.757099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015588, 0.905719, -0.423592,
		0.899691, 0.172131, 0.401157,
		0.436249, -0.387355, -0.812184,
		28.740925, 28.015484, 31.513443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861103, 28.826962, 31.809639>,  <28.435551, 28.286633, 32.081974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861103, 28.826962, 31.809639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.789972, 28.582813, 31.500881>,  <28.747293, 28.436323, 31.315626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.789972, 28.582813, 31.500881>,  <28.861103, 28.826962, 31.809639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789972, 28.582813, 31.500881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001810, 0.784194, -0.620513,
		0.984060, -0.111742, -0.138348,
		-0.177829, -0.610372, -0.771896,
		28.736624, 28.399702, 31.269312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315193, 28.982586, 31.231743>,  <28.861103, 28.826962, 31.809639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315193, 28.982586, 31.231743> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.015368, 28.810913, 31.030167>,  <28.835472, 28.707909, 30.909222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.015368, 28.810913, 31.030167>,  <29.315193, 28.982586, 31.231743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015368, 28.810913, 31.030167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019624, 0.775393, -0.631174,
		0.661640, -0.463217, -0.589630,
		-0.749565, -0.429181, -0.503940,
		28.790499, 28.682159, 30.878984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450567, 29.023800, 30.405081>,  <29.315193, 28.982586, 31.231743>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450567, 29.023800, 30.405081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.056517, 28.971630, 30.449821>,  <28.820086, 28.940329, 30.476665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.056517, 28.971630, 30.449821>,  <29.450567, 29.023800, 30.405081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056517, 28.971630, 30.449821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171561, 0.782336, -0.598763,
		-0.009414, -0.609048, -0.793077,
		-0.985129, -0.130424, 0.111854,
		28.760979, 28.932503, 30.483377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137821, 28.883072, 29.767780>,  <29.450567, 29.023800, 30.405081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137821, 28.883072, 29.767780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.827932, 29.028473, 29.974728>,  <28.641998, 29.115713, 30.098896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.827932, 29.028473, 29.974728>,  <29.137821, 28.883072, 29.767780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827932, 29.028473, 29.974728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169144, 0.669269, -0.723512,
		-0.609258, -0.648031, -0.457013,
		-0.774723, 0.363504, 0.517367,
		28.595516, 29.137524, 30.129938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641958, 28.964321, 29.348986>,  <29.137821, 28.883072, 29.767780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641958, 28.964321, 29.348986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.477396, 29.195107, 29.631222>,  <28.378658, 29.333578, 29.800564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.477396, 29.195107, 29.631222>,  <28.641958, 28.964321, 29.348986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477396, 29.195107, 29.631222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360534, 0.607988, -0.707366,
		-0.837115, -0.545403, -0.042114,
		-0.411404, 0.576963, 0.705592,
		28.353975, 29.368195, 29.842899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042727, 29.162434, 29.103075>,  <28.641958, 28.964321, 29.348986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042727, 29.162434, 29.103075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.107874, 29.442432, 29.381207>,  <28.146961, 29.610432, 29.548084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.107874, 29.442432, 29.381207>,  <28.042727, 29.162434, 29.103075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107874, 29.442432, 29.381207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164491, 0.714138, -0.680404,
		-0.972840, -0.003560, 0.231452,
		0.162867, 0.699996, 0.695328,
		28.156734, 29.652431, 29.589806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.221954, 29.013262, 29.050623>,  <28.042727, 29.162434, 29.103075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.221954, 29.013262, 29.050623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.981466, 28.790840, 28.821072>,  <26.837173, 28.657387, 28.683340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.981466, 28.790840, 28.821072>,  <27.221954, 29.013262, 29.050623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981466, 28.790840, 28.821072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294563, -0.821818, 0.487697,
		-0.742811, 0.124169, 0.657886,
		-0.601219, -0.556055, -0.573879,
		26.801100, 28.624023, 28.648909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.834433, 28.599119, 29.511145>,  <27.221954, 29.013262, 29.050623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.834433, 28.599119, 29.511145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.856562, 28.409824, 29.159466>,  <26.869839, 28.296247, 28.948458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.856562, 28.409824, 29.159466>,  <26.834433, 28.599119, 29.511145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856562, 28.409824, 29.159466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345095, -0.817218, 0.461588,
		-0.936936, -0.328942, 0.118103,
		0.055320, -0.473235, -0.879198,
		26.873158, 28.267855, 28.895706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477949, 27.952814, 29.524637>,  <26.834433, 28.599119, 29.511145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477949, 27.952814, 29.524637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.733036, 27.902363, 29.220688>,  <26.886089, 27.872091, 29.038319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.733036, 27.902363, 29.220688>,  <26.477949, 27.952814, 29.524637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733036, 27.902363, 29.220688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279299, -0.881502, 0.380719,
		-0.717849, -0.455023, -0.526922,
		0.637719, -0.126130, -0.759872,
		26.924351, 27.864523, 28.992725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410614, 27.212927, 29.271521>,  <26.477949, 27.952814, 29.524637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410614, 27.212927, 29.271521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.747467, 27.330906, 29.090935>,  <26.949579, 27.401693, 28.982584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.747467, 27.330906, 29.090935>,  <26.410614, 27.212927, 29.271521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747467, 27.330906, 29.090935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362112, -0.929643, 0.068111,
		-0.399611, -0.220839, -0.889686,
		0.842131, 0.294948, -0.451464,
		27.000107, 27.419390, 28.955496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.514833, 26.802410, 28.716887>,  <26.410614, 27.212927, 29.271521>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.514833, 26.802410, 28.716887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.886957, 26.929993, 28.789322>,  <27.110231, 27.006542, 28.832783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.886957, 26.929993, 28.789322>,  <26.514833, 26.802410, 28.716887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886957, 26.929993, 28.789322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324404, -0.945919, -0.000483,
		0.171142, 0.059196, -0.983467,
		0.930308, 0.318957, 0.181090,
		27.166050, 27.025681, 28.843649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931553, 26.417166, 28.314756>,  <26.514833, 26.802410, 28.716887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931553, 26.417166, 28.314756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.181700, 26.547123, 28.598549>,  <27.331787, 26.625097, 28.768824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.181700, 26.547123, 28.598549>,  <26.931553, 26.417166, 28.314756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181700, 26.547123, 28.598549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347950, -0.929913, 0.119135,
		0.698460, 0.172360, -0.694583,
		0.625368, 0.324892, 0.709479,
		27.369310, 26.644590, 28.811392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565397, 26.155277, 28.095295>,  <26.931553, 26.417166, 28.314756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565397, 26.155277, 28.095295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.563459, 26.205212, 28.492161>,  <27.562296, 26.235172, 28.730280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.563459, 26.205212, 28.492161>,  <27.565397, 26.155277, 28.095295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563459, 26.205212, 28.492161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318447, -0.940331, 0.119871,
		0.947928, 0.316533, -0.035197,
		-0.004847, 0.124837, 0.992166,
		27.562006, 26.242662, 28.789810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009296, 25.673903, 28.340250>,  <27.565397, 26.155277, 28.095295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009296, 25.673903, 28.340250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.799570, 25.773808, 28.665878>,  <27.673733, 25.833750, 28.861256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.799570, 25.773808, 28.665878>,  <28.009296, 25.673903, 28.340250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.799570, 25.773808, 28.665878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257696, -0.864646, 0.431253,
		0.811593, 0.435896, 0.388987,
		-0.524318, 0.249762, 0.814070,
		27.642275, 25.848736, 28.910099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406841, 25.471159, 28.858904>,  <28.009296, 25.673903, 28.340250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406841, 25.471159, 28.858904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.037100, 25.489254, 29.010445>,  <27.815256, 25.500111, 29.101368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.037100, 25.489254, 29.010445>,  <28.406841, 25.471159, 28.858904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037100, 25.489254, 29.010445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184942, -0.815373, 0.548602,
		0.333723, 0.577166, 0.745325,
		-0.924352, 0.045239, 0.378850,
		27.759794, 25.502825, 29.124100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481182, 25.414516, 29.662928>,  <28.406841, 25.471159, 28.858904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481182, 25.414516, 29.662928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.100042, 25.329807, 29.575996>,  <27.871359, 25.278982, 29.523838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.100042, 25.329807, 29.575996>,  <28.481182, 25.414516, 29.662928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100042, 25.329807, 29.575996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063538, -0.839567, 0.539527,
		-0.296718, 0.500279, 0.813437,
		-0.952849, -0.211772, -0.217328,
		27.814188, 25.266275, 29.510798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202211, 25.232351, 30.273779>,  <28.481182, 25.414516, 29.662928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202211, 25.232351, 30.273779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.946404, 25.088413, 30.002037>,  <27.792919, 25.002050, 29.838991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.946404, 25.088413, 30.002037>,  <28.202211, 25.232351, 30.273779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946404, 25.088413, 30.002037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053245, -0.860833, 0.506094,
		-0.766928, 0.359830, 0.531360,
		-0.639520, -0.359845, -0.679357,
		27.754547, 24.980459, 29.798229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741144, 24.844406, 30.659693>,  <28.202211, 25.232351, 30.273779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741144, 24.844406, 30.659693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.656988, 24.680668, 30.304577>,  <27.606495, 24.582424, 30.091507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.656988, 24.680668, 30.304577>,  <27.741144, 24.844406, 30.659693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656988, 24.680668, 30.304577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037127, -0.904115, 0.425672,
		-0.976912, 0.122519, 0.175021,
		-0.210392, -0.409346, -0.887790,
		27.593870, 24.557863, 30.038240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066938, 24.411926, 30.729507>,  <27.741144, 24.844406, 30.659693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066938, 24.411926, 30.729507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.296806, 24.267139, 30.435913>,  <27.434727, 24.180267, 30.259756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.296806, 24.267139, 30.435913>,  <27.066938, 24.411926, 30.729507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296806, 24.267139, 30.435913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124727, -0.925131, 0.358575,
		-0.808826, -0.114514, -0.576790,
		0.574668, -0.361966, -0.733987,
		27.469206, 24.158550, 30.215717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.646721, 23.801035, 30.410364>,  <27.066938, 24.411926, 30.729507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.646721, 23.801035, 30.410364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.040697, 23.757080, 30.356972>,  <27.277082, 23.730707, 30.324936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.040697, 23.757080, 30.356972>,  <26.646721, 23.801035, 30.410364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.040697, 23.757080, 30.356972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078427, -0.972002, 0.221499,
		-0.154082, -0.207695, -0.965982,
		0.984940, -0.109888, -0.133480,
		27.336180, 23.724113, 30.316927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.416275, 25.026171, 30.770313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.028271, 24.993820, 30.678635>,  <34.795467, 24.974409, 30.623627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.028271, 24.993820, 30.678635>,  <35.416275, 25.026171, 30.770313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028271, 24.993820, 30.678635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106330, 0.706768, -0.699409,
		0.218555, -0.702807, -0.676976,
		-0.970014, -0.080877, -0.229197,
		34.737267, 24.969557, 30.609875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409676, 25.115347, 29.998539>,  <35.416275, 25.026171, 30.770313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409676, 25.115347, 29.998539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038120, 25.178974, 30.132324>,  <34.815186, 25.217152, 30.212595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.038120, 25.178974, 30.132324>,  <35.409676, 25.115347, 29.998539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038120, 25.178974, 30.132324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095145, 0.770267, -0.630584,
		-0.357931, -0.617564, -0.700357,
		-0.928888, 0.159070, 0.334461,
		34.759453, 25.226696, 30.232662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904873, 25.078201, 29.332436>,  <35.409676, 25.115347, 29.998539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904873, 25.078201, 29.332436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.715862, 25.276089, 29.624184>,  <34.602455, 25.394821, 29.799232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.715862, 25.276089, 29.624184>,  <34.904873, 25.078201, 29.332436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715862, 25.276089, 29.624184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066311, 0.805285, -0.589168,
		-0.878821, -0.326760, -0.347710,
		-0.472522, 0.494716, 0.729369,
		34.574104, 25.424503, 29.842995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263348, 25.427021, 29.056128>,  <34.904873, 25.078201, 29.332436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263348, 25.427021, 29.056128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.347065, 25.621521, 29.395481>,  <34.397297, 25.738220, 29.599092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.347065, 25.621521, 29.395481>,  <34.263348, 25.427021, 29.056128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347065, 25.621521, 29.395481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293070, 0.858909, -0.419983,
		-0.932901, -0.160735, 0.322272,
		0.209296, 0.486251, 0.848384,
		34.409855, 25.767397, 29.649996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562885, 25.775694, 29.241554>,  <34.263348, 25.427021, 29.056128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562885, 25.775694, 29.241554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.868809, 25.959446, 29.422237>,  <34.052361, 26.069696, 29.530647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.868809, 25.959446, 29.422237>,  <33.562885, 25.775694, 29.241554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868809, 25.959446, 29.422237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300811, 0.874633, -0.380170,
		-0.569722, 0.154878, 0.807112,
		0.764807, 0.459380, 0.451709,
		34.098251, 26.097260, 29.557751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284763, 26.446184, 29.253981>,  <33.562885, 25.775694, 29.241554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284763, 26.446184, 29.253981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.656704, 26.542507, 29.365257>,  <33.879868, 26.600300, 29.432024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.656704, 26.542507, 29.365257>,  <33.284763, 26.446184, 29.253981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656704, 26.542507, 29.365257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125075, 0.917930, -0.376512,
		-0.346027, 0.315305, 0.883656,
		0.929851, 0.240806, 0.278191,
		33.935658, 26.614750, 29.448715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244614, 27.078579, 29.646788>,  <33.284763, 26.446184, 29.253981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244614, 27.078579, 29.646788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.605198, 27.043324, 29.477272>,  <33.821548, 27.022171, 29.375563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.605198, 27.043324, 29.477272>,  <33.244614, 27.078579, 29.646788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605198, 27.043324, 29.477272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136706, 0.870970, -0.471935,
		0.410701, 0.483366, 0.773099,
		0.901464, -0.088137, -0.423787,
		33.875637, 27.016882, 29.350136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560753, 27.763546, 29.699930>,  <33.244614, 27.078579, 29.646788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560753, 27.763546, 29.699930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745594, 27.566723, 29.404812>,  <33.856499, 27.448629, 29.227741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745594, 27.566723, 29.404812>,  <33.560753, 27.763546, 29.699930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745594, 27.566723, 29.404812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063287, 0.811531, -0.580872,
		0.884564, 0.315117, 0.343873,
		0.462106, -0.492055, -0.737794,
		33.884224, 27.419106, 29.183474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993313, 28.222921, 29.358643>,  <33.560753, 27.763546, 29.699930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993313, 28.222921, 29.358643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.953987, 27.944935, 29.073727>,  <33.930393, 27.778143, 28.902777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.953987, 27.944935, 29.073727>,  <33.993313, 28.222921, 29.358643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953987, 27.944935, 29.073727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119222, 0.718828, -0.684888,
		0.987988, 0.017587, -0.153526,
		-0.098313, -0.694965, -0.712290,
		33.924492, 27.736444, 28.860039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403976, 28.478979, 28.806778>,  <33.993313, 28.222921, 29.358643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403976, 28.478979, 28.806778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.166218, 28.205956, 28.636692>,  <34.023563, 28.042141, 28.534641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.166218, 28.205956, 28.636692>,  <34.403976, 28.478979, 28.806778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166218, 28.205956, 28.636692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228429, 0.650286, -0.724533,
		0.771048, -0.333527, -0.542443,
		-0.594395, -0.682559, -0.425215,
		33.987900, 28.001188, 28.509129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639824, 28.397926, 28.116558>,  <34.403976, 28.478979, 28.806778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639824, 28.397926, 28.116558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.260948, 28.270718, 28.133034>,  <34.033623, 28.194393, 28.142920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.260948, 28.270718, 28.133034>,  <34.639824, 28.397926, 28.116558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260948, 28.270718, 28.133034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222933, 0.560698, -0.797445,
		0.230510, -0.764513, -0.601984,
		-0.947188, -0.318021, 0.041189,
		33.976791, 28.175312, 28.145390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423038, 28.372578, 27.497267>,  <34.639824, 28.397926, 28.116558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423038, 28.372578, 27.497267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.055420, 28.338837, 27.651272>,  <33.834846, 28.318592, 27.743675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.055420, 28.338837, 27.651272>,  <34.423038, 28.372578, 27.497267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055420, 28.338837, 27.651272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381019, 0.440125, -0.813089,
		-0.100869, -0.893966, -0.436635,
		-0.919048, -0.084351, 0.385013,
		33.779705, 28.313532, 27.766775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978027, 28.066839, 27.034061>,  <34.423038, 28.372578, 27.497267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978027, 28.066839, 27.034061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728786, 28.267651, 27.273964>,  <33.579243, 28.388138, 27.417906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728786, 28.267651, 27.273964>,  <33.978027, 28.066839, 27.034061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728786, 28.267651, 27.273964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278840, 0.573842, -0.770035,
		-0.730745, -0.647048, -0.217578,
		-0.623105, 0.502030, 0.599755,
		33.541855, 28.418259, 27.453890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463707, 28.204628, 26.619467>,  <33.978027, 28.066839, 27.034061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463707, 28.204628, 26.619467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.358047, 28.444263, 26.921810>,  <33.294651, 28.588045, 27.103216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.358047, 28.444263, 26.921810>,  <33.463707, 28.204628, 26.619467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358047, 28.444263, 26.921810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462413, 0.609084, -0.644353,
		-0.846404, -0.519723, 0.116138,
		-0.264147, 0.599087, 0.755858,
		33.278805, 28.623989, 27.148567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891655, 27.734381, 26.588350>,  <33.463707, 28.204628, 26.619467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891655, 27.734381, 26.588350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681820, 27.546570, 26.304279>,  <32.555920, 27.433884, 26.133837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.681820, 27.546570, 26.304279>,  <32.891655, 27.734381, 26.588350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681820, 27.546570, 26.304279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446572, -0.861957, 0.240008,
		-0.724833, -0.191242, 0.661848,
		-0.524585, -0.469528, -0.710178,
		32.524445, 27.405712, 26.091227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549782, 27.137342, 26.973370>,  <32.891655, 27.734381, 26.588350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549782, 27.137342, 26.973370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.575481, 27.065849, 26.580650>,  <32.590900, 27.022953, 26.345018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.575481, 27.065849, 26.580650>,  <32.549782, 27.137342, 26.973370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575481, 27.065849, 26.580650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229539, -0.954804, 0.188839,
		-0.971176, -0.237494, -0.020322,
		0.064252, -0.178732, -0.981798,
		32.594757, 27.012230, 26.286112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343693, 26.455370, 26.958620>,  <32.549782, 27.137342, 26.973370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343693, 26.455370, 26.958620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.511982, 26.506054, 26.599300>,  <32.612957, 26.536465, 26.383709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.511982, 26.506054, 26.599300>,  <32.343693, 26.455370, 26.958620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511982, 26.506054, 26.599300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356105, -0.933788, 0.035068,
		-0.834376, -0.334642, -0.437986,
		0.420721, 0.126709, -0.898297,
		32.638199, 26.544067, 26.329811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144016, 25.794567, 26.615366>,  <32.343693, 26.455370, 26.958620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144016, 25.794567, 26.615366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.454269, 25.934158, 26.404991>,  <32.640423, 26.017912, 26.278767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.454269, 25.934158, 26.404991>,  <32.144016, 25.794567, 26.615366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454269, 25.934158, 26.404991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420984, -0.906866, 0.019117,
		-0.470282, -0.236238, -0.850310,
		0.775634, 0.348977, -0.525935,
		32.686958, 26.038851, 26.247211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177586, 25.423574, 25.979824>,  <32.144016, 25.794567, 26.615366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177586, 25.423574, 25.979824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.540134, 25.565762, 26.071148>,  <32.757664, 25.651073, 26.125942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.540134, 25.565762, 26.071148>,  <32.177586, 25.423574, 25.979824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540134, 25.565762, 26.071148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331632, -0.933443, 0.136767,
		0.261733, -0.048247, -0.963934,
		0.906375, 0.355468, 0.228312,
		32.812046, 25.672401, 26.139641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619404, 24.953556, 25.765255>,  <32.177586, 25.423574, 25.979824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619404, 24.953556, 25.765255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838810, 25.163170, 26.025875>,  <32.970455, 25.288939, 26.182247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838810, 25.163170, 26.025875>,  <32.619404, 24.953556, 25.765255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838810, 25.163170, 26.025875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483011, -0.834655, 0.264671,
		0.682517, 0.169530, -0.710936,
		0.548517, 0.524032, 0.651551,
		33.003365, 25.320379, 26.221340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387947, 24.712969, 25.691303>,  <32.619404, 24.953556, 25.765255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387947, 24.712969, 25.691303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.358212, 24.898533, 26.044407>,  <33.340370, 25.009871, 26.256269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.358212, 24.898533, 26.044407>,  <33.387947, 24.712969, 25.691303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358212, 24.898533, 26.044407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633442, -0.661722, 0.401092,
		0.770211, 0.588992, -0.244669,
		-0.074338, 0.463909, 0.882758,
		33.335911, 25.037706, 26.309235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003197, 24.666882, 25.987568>,  <33.387947, 24.712969, 25.691303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003197, 24.666882, 25.987568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.761562, 24.748032, 26.295834>,  <33.616581, 24.796721, 26.480793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.761562, 24.748032, 26.295834>,  <34.003197, 24.666882, 25.987568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761562, 24.748032, 26.295834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385834, -0.771699, 0.505582,
		0.697290, 0.602763, 0.387897,
		-0.604086, 0.202873, 0.770664,
		33.580338, 24.808893, 26.527033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469055, 24.616844, 26.631638>,  <34.003197, 24.666882, 25.987568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469055, 24.616844, 26.631638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.092911, 24.585178, 26.763977>,  <33.867226, 24.566179, 26.843380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.092911, 24.585178, 26.763977>,  <34.469055, 24.616844, 26.631638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092911, 24.585178, 26.763977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207203, -0.904616, 0.372475,
		0.269803, 0.418812, 0.867065,
		-0.940358, -0.079163, 0.330847,
		33.810802, 24.561430, 26.863232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533424, 24.409979, 27.390902>,  <34.469055, 24.616844, 26.631638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533424, 24.409979, 27.390902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151390, 24.326744, 27.306515>,  <33.922169, 24.276804, 27.255882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151390, 24.326744, 27.306515>,  <34.533424, 24.409979, 27.390902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151390, 24.326744, 27.306515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044863, -0.805284, 0.591189,
		-0.292908, 0.555173, 0.778452,
		-0.955088, -0.208087, -0.210967,
		33.864864, 24.264318, 27.243225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125546, 24.424429, 28.061039>,  <34.533424, 24.409979, 27.390902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125546, 24.424429, 28.061039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.938381, 24.178852, 27.806751>,  <33.826084, 24.031506, 27.654179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.938381, 24.178852, 27.806751>,  <34.125546, 24.424429, 28.061039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938381, 24.178852, 27.806751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025463, -0.709656, 0.704088,
		-0.883409, 0.345638, 0.316423,
		-0.467911, -0.613940, -0.635717,
		33.798008, 23.994671, 27.616035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823536, 23.965534, 28.480078>,  <34.125546, 24.424429, 28.061039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823536, 23.965534, 28.480078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.746170, 23.786663, 28.130764>,  <33.699753, 23.679340, 27.921175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.746170, 23.786663, 28.130764>,  <33.823536, 23.965534, 28.480078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.746170, 23.786663, 28.130764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029413, -0.887049, 0.460738,
		-0.980677, 0.114798, 0.158413,
		-0.193412, -0.447176, -0.873285,
		33.688145, 23.652510, 27.868778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144852, 23.638233, 28.500486>,  <33.823536, 23.965534, 28.480078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144852, 23.638233, 28.500486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.351284, 23.443211, 28.218792>,  <33.475143, 23.326197, 28.049776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.351284, 23.443211, 28.218792>,  <33.144852, 23.638233, 28.500486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351284, 23.443211, 28.218792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047962, -0.837346, 0.544566,
		-0.855196, -0.247263, -0.455522,
		0.516080, -0.487558, -0.704236,
		33.506107, 23.296944, 28.007521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716999, 23.026165, 28.351887>,  <33.144852, 23.638233, 28.500486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716999, 23.026165, 28.351887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.094570, 22.956898, 28.239452>,  <33.321114, 22.915337, 28.171991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.094570, 22.956898, 28.239452>,  <32.716999, 23.026165, 28.351887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094570, 22.956898, 28.239452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047080, -0.772091, 0.633766,
		-0.326771, -0.611464, -0.720647,
		0.943930, -0.173169, -0.281085,
		33.377750, 22.904947, 28.155127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114689, 22.985262, 27.683153>,  <32.716999, 23.026165, 28.351887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114689, 22.985262, 27.683153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.832140, 22.989162, 27.966263>,  <31.662611, 22.991503, 28.136129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.832140, 22.989162, 27.966263>,  <32.114689, 22.985262, 27.683153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832140, 22.989162, 27.966263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386972, 0.831933, -0.397669,
		-0.592699, -0.554791, -0.583879,
		-0.706372, 0.009754, 0.707774,
		31.620228, 22.992088, 28.178595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395285, 23.042877, 27.375879>,  <32.114689, 22.985262, 27.683153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395285, 23.042877, 27.375879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.331911, 23.185711, 27.744095>,  <31.293886, 23.271412, 27.965023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.331911, 23.185711, 27.744095>,  <31.395285, 23.042877, 27.375879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331911, 23.185711, 27.744095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347919, 0.852325, -0.390507,
		-0.924040, -0.382142, -0.010802,
		-0.158436, 0.357085, 0.920537,
		31.284380, 23.292837, 28.020256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704321, 23.267908, 27.394016>,  <31.395285, 23.042877, 27.375879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704321, 23.267908, 27.394016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.868299, 23.468517, 27.698757>,  <30.966686, 23.588882, 27.881601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.868299, 23.468517, 27.698757>,  <30.704321, 23.267908, 27.394016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868299, 23.468517, 27.698757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363964, 0.855830, -0.367540,
		-0.836346, -0.126616, 0.533380,
		0.409946, 0.501522, 0.761853,
		30.991283, 23.618975, 27.927313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097761, 23.645536, 27.705805>,  <30.704321, 23.267908, 27.394016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097761, 23.645536, 27.705805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.427933, 23.821518, 27.847286>,  <30.626036, 23.927107, 27.932175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.427933, 23.821518, 27.847286>,  <30.097761, 23.645536, 27.705805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427933, 23.821518, 27.847286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444660, 0.892740, -0.072747,
		-0.347772, -0.097231, 0.932524,
		0.825428, 0.439956, 0.353705,
		30.675562, 23.953505, 27.953398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896820, 24.224249, 28.207434>,  <30.097761, 23.645536, 27.705805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896820, 24.224249, 28.207434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.271683, 24.299549, 28.089924>,  <30.496599, 24.344728, 28.019419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.271683, 24.299549, 28.089924>,  <29.896820, 24.224249, 28.207434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271683, 24.299549, 28.089924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182039, 0.982090, 0.048603,
		0.297660, 0.007930, 0.954639,
		0.937156, 0.188248, -0.293772,
		30.552830, 24.356024, 28.001793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064724, 24.727671, 28.690773>,  <29.896820, 24.224249, 28.207434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064724, 24.727671, 28.690773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.302488, 24.748051, 28.369755>,  <30.445147, 24.760279, 28.177143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.302488, 24.748051, 28.369755>,  <30.064724, 24.727671, 28.690773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302488, 24.748051, 28.369755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125417, 0.991652, -0.029933,
		0.794322, 0.118445, 0.595838,
		0.594410, 0.050951, -0.802547,
		30.480812, 24.763336, 28.128990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297495, 25.381664, 28.741529>,  <30.064724, 24.727671, 28.690773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297495, 25.381664, 28.741529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.375025, 25.285973, 28.360962>,  <30.421543, 25.228558, 28.132622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.375025, 25.285973, 28.360962>,  <30.297495, 25.381664, 28.741529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375025, 25.285973, 28.360962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221750, 0.934028, -0.280032,
		0.955645, 0.265255, 0.127991,
		0.193827, -0.239229, -0.951420,
		30.433172, 25.214203, 28.075537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702274, 25.951288, 28.431103>,  <30.297495, 25.381664, 28.741529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702274, 25.951288, 28.431103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518660, 25.772705, 28.123867>,  <30.408491, 25.665556, 27.939526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518660, 25.772705, 28.123867>,  <30.702274, 25.951288, 28.431103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518660, 25.772705, 28.123867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125647, 0.888493, -0.441353,
		0.879486, -0.106090, -0.463950,
		-0.459040, -0.446458, -0.768087,
		30.380949, 25.638767, 27.893440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920570, 26.256092, 27.854828>,  <30.702274, 25.951288, 28.431103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920570, 26.256092, 27.854828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.585104, 26.089470, 27.714474>,  <30.383823, 25.989496, 27.630260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.585104, 26.089470, 27.714474>,  <30.920570, 26.256092, 27.854828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585104, 26.089470, 27.714474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255577, 0.869901, -0.421844,
		0.480957, -0.264109, -0.836019,
		-0.838667, -0.416556, -0.350885,
		30.333504, 25.964502, 27.609209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900003, 26.435957, 27.148075>,  <30.920570, 26.256092, 27.854828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900003, 26.435957, 27.148075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.520483, 26.314869, 27.184162>,  <30.292770, 26.242216, 27.205814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.520483, 26.314869, 27.184162>,  <30.900003, 26.435957, 27.148075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520483, 26.314869, 27.184162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300039, 0.774381, -0.557055,
		0.098771, -0.555602, -0.825561,
		-0.948800, -0.302721, 0.090216,
		30.235844, 26.224052, 27.211227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640257, 26.389200, 26.522917>,  <30.900003, 26.435957, 27.148075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640257, 26.389200, 26.522917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.301989, 26.406742, 26.735676>,  <30.099028, 26.417267, 26.863331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.301989, 26.406742, 26.735676>,  <30.640257, 26.389200, 26.522917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301989, 26.406742, 26.735676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334629, 0.732823, -0.592448,
		-0.415769, -0.679005, -0.605052,
		-0.845671, 0.043853, 0.531900,
		30.048286, 26.419897, 26.895247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133463, 26.583359, 26.025709>,  <30.640257, 26.389200, 26.522917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133463, 26.583359, 26.025709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.931032, 26.661194, 26.361809>,  <29.809574, 26.707895, 26.563469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.931032, 26.661194, 26.361809>,  <30.133463, 26.583359, 26.025709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.931032, 26.661194, 26.361809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457693, 0.765139, -0.452858,
		-0.731028, -0.613758, -0.298160,
		-0.506079, 0.194586, 0.840250,
		29.779209, 26.719570, 26.613884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492939, 26.552475, 25.824219>,  <30.133463, 26.583359, 26.025709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492939, 26.552475, 25.824219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.507113, 26.791862, 26.144363>,  <29.515615, 26.935495, 26.336451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.507113, 26.791862, 26.144363>,  <29.492939, 26.552475, 25.824219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507113, 26.791862, 26.144363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375437, 0.750175, -0.544320,
		-0.926170, -0.281199, 0.251268,
		0.035432, 0.598469, 0.800362,
		29.517742, 26.971403, 26.384472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855032, 26.875559, 25.891024>,  <29.492939, 26.552475, 25.824219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855032, 26.875559, 25.891024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.103115, 27.119503, 26.088371>,  <29.251965, 27.265869, 26.206779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.103115, 27.119503, 26.088371>,  <28.855032, 26.875559, 25.891024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103115, 27.119503, 26.088371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374817, 0.782899, -0.496570,
		-0.689095, 0.123054, 0.714147,
		0.620210, 0.609858, 0.493369,
		29.289179, 27.302460, 26.236382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.529652, 26.072224, 26.561201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.926208, 26.034210, 26.525192>,  <41.164143, 26.011402, 26.503588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.926208, 26.034210, 26.525192>,  <40.529652, 26.072224, 26.561201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926208, 26.034210, 26.525192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027867, 0.825159, -0.564213,
		0.127900, 0.556850, 0.820707,
		0.991395, -0.095034, -0.090020,
		41.223629, 26.005699, 26.498186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828663, 26.689245, 26.831511>,  <40.529652, 26.072224, 26.561201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828663, 26.689245, 26.831511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.061859, 26.502415, 26.565590>,  <41.201778, 26.390316, 26.406036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.061859, 26.502415, 26.565590>,  <40.828663, 26.689245, 26.831511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061859, 26.502415, 26.565590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030154, 0.830116, -0.556776,
		0.811920, 0.304548, 0.498033,
		0.582990, -0.467075, -0.664804,
		41.236755, 26.362293, 26.366148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508869, 27.012417, 26.837761>,  <40.828663, 26.689245, 26.831511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508869, 27.012417, 26.837761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.455147, 26.836433, 26.482594>,  <41.422913, 26.730843, 26.269493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.455147, 26.836433, 26.482594>,  <41.508869, 27.012417, 26.837761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455147, 26.836433, 26.482594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237150, 0.855729, -0.459878,
		0.962145, -0.272333, -0.010590,
		-0.134302, -0.439958, -0.887919,
		41.414856, 26.704447, 26.216217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742466, 27.444996, 26.435862>,  <41.508869, 27.012417, 26.837761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742466, 27.444996, 26.435862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.552448, 27.233543, 26.154469>,  <41.438438, 27.106672, 25.985634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.552448, 27.233543, 26.154469>,  <41.742466, 27.444996, 26.435862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552448, 27.233543, 26.154469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101237, 0.761303, -0.640444,
		0.874121, -0.375455, -0.308133,
		-0.475041, -0.528631, -0.703481,
		41.409935, 27.074955, 25.943424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070698, 27.706982, 25.864843>,  <41.742466, 27.444996, 26.435862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070698, 27.706982, 25.864843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.751652, 27.517727, 25.715202>,  <41.560223, 27.404175, 25.625418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.751652, 27.517727, 25.715202>,  <42.070698, 27.706982, 25.864843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751652, 27.517727, 25.715202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156497, 0.761324, -0.629201,
		0.582511, -0.443315, -0.681288,
		-0.797615, -0.473136, -0.374102,
		41.512367, 27.375786, 25.602972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101219, 27.654585, 25.165810>,  <42.070698, 27.706982, 25.864843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101219, 27.654585, 25.165810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.707428, 27.624714, 25.229332>,  <41.471153, 27.606792, 25.267445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.707428, 27.624714, 25.229332>,  <42.101219, 27.654585, 25.165810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707428, 27.624714, 25.229332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167843, 0.664842, -0.727883,
		-0.051226, -0.743242, -0.667059,
		-0.984482, -0.074675, 0.158805,
		41.412083, 27.602312, 25.276974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836170, 27.720007, 24.537151>,  <42.101219, 27.654585, 25.165810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836170, 27.720007, 24.537151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.562145, 27.834156, 24.805256>,  <41.397728, 27.902645, 24.966118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.562145, 27.834156, 24.805256>,  <41.836170, 27.720007, 24.537151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562145, 27.834156, 24.805256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253225, 0.769417, -0.586408,
		-0.683053, -0.571455, -0.454838,
		-0.685066, 0.285372, 0.670259,
		41.356625, 27.919767, 25.006334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467518, 28.003288, 24.159903>,  <41.836170, 27.720007, 24.537151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467518, 28.003288, 24.159903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.278526, 28.125401, 24.490616>,  <41.165131, 28.198668, 24.689043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.278526, 28.125401, 24.490616>,  <41.467518, 28.003288, 24.159903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278526, 28.125401, 24.490616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325685, 0.811216, -0.485651,
		-0.818961, -0.498729, -0.283852,
		-0.472474, 0.305283, 0.826783,
		41.136784, 28.216986, 24.738651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850777, 28.278343, 23.931595>,  <41.467518, 28.003288, 24.159903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850777, 28.278343, 23.931595> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.916389, 28.416260, 24.301289>,  <40.955757, 28.499010, 24.523106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.916389, 28.416260, 24.301289>,  <40.850777, 28.278343, 23.931595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.916389, 28.416260, 24.301289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504997, 0.834196, -0.221574,
		-0.847391, -0.430391, 0.310954,
		0.164033, 0.344791, 0.924236,
		40.965599, 28.519697, 24.578560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207382, 28.494528, 24.236080>,  <40.850777, 28.278343, 23.931595>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207382, 28.494528, 24.236080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.493706, 28.714905, 24.407700>,  <40.665501, 28.847130, 24.510672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.493706, 28.714905, 24.407700>,  <40.207382, 28.494528, 24.236080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493706, 28.714905, 24.407700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479987, 0.834456, -0.270731,
		-0.507179, -0.012147, 0.861755,
		0.715808, 0.550940, 0.429049,
		40.708447, 28.880186, 24.536415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.890251, 28.939266, 24.578234>,  <40.207382, 28.494528, 24.236080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.890251, 28.939266, 24.578234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.242702, 29.128082, 24.566994>,  <40.454174, 29.241371, 24.560249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.242702, 29.128082, 24.566994>,  <39.890251, 28.939266, 24.578234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242702, 29.128082, 24.566994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456285, 0.833109, -0.312624,
		-0.124160, 0.288285, 0.949461,
		0.881129, 0.472040, -0.028102,
		40.507042, 29.269695, 24.558563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849964, 29.549513, 24.899012>,  <39.890251, 28.939266, 24.578234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849964, 29.549513, 24.899012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.181469, 29.626572, 24.688854>,  <40.380371, 29.672806, 24.562759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.181469, 29.626572, 24.688854>,  <39.849964, 29.549513, 24.899012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181469, 29.626572, 24.688854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312485, 0.938178, -0.148915,
		0.464226, 0.287594, 0.837726,
		0.828762, 0.192646, -0.525395,
		40.430099, 29.684366, 24.531235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118622, 30.208004, 25.162262>,  <39.849964, 29.549513, 24.899012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118622, 30.208004, 25.162262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.295837, 30.177395, 24.804970>,  <40.402164, 30.159029, 24.590593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.295837, 30.177395, 24.804970>,  <40.118622, 30.208004, 25.162262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295837, 30.177395, 24.804970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370874, 0.891452, -0.260319,
		0.816193, 0.446607, 0.366566,
		0.443036, -0.076521, -0.893232,
		40.428749, 30.154438, 24.537001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330421, 30.867073, 25.054317>,  <40.118622, 30.208004, 25.162262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330421, 30.867073, 25.054317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.299717, 30.683613, 24.700199>,  <40.281296, 30.573538, 24.487728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.299717, 30.683613, 24.700199>,  <40.330421, 30.867073, 25.054317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299717, 30.683613, 24.700199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444465, 0.810551, -0.381389,
		0.892501, 0.364208, -0.266071,
		-0.076760, -0.458649, -0.885296,
		40.276688, 30.546019, 24.434610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419239, 31.420132, 24.639172>,  <40.330421, 30.867073, 25.054317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419239, 31.420132, 24.639172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.279682, 31.150692, 24.378544>,  <40.195950, 30.989029, 24.222168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.279682, 31.150692, 24.378544>,  <40.419239, 31.420132, 24.639172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279682, 31.150692, 24.378544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298283, 0.738914, -0.604181,
		0.888428, -0.016439, -0.458721,
		-0.348887, -0.673600, -0.651568,
		40.175014, 30.948612, 24.183073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712795, 31.513569, 23.993715>,  <40.419239, 31.420132, 24.639172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712795, 31.513569, 23.993715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.346546, 31.353619, 23.977070>,  <40.126797, 31.257648, 23.967083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.346546, 31.353619, 23.977070>,  <40.712795, 31.513569, 23.993715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346546, 31.353619, 23.977070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313457, 0.774865, -0.548935,
		0.251750, -0.489574, -0.834829,
		-0.915624, -0.399877, -0.041612,
		40.071857, 31.233656, 23.964586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439682, 31.747164, 23.379166>,  <40.712795, 31.513569, 23.993715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439682, 31.747164, 23.379166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.102783, 31.608208, 23.544060>,  <39.900642, 31.524834, 23.642996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.102783, 31.608208, 23.544060>,  <40.439682, 31.747164, 23.379166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102783, 31.608208, 23.544060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530599, 0.669382, -0.519993,
		-0.095301, -0.656695, -0.748111,
		-0.842249, -0.347391, 0.412234,
		39.850109, 31.503990, 23.667730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042267, 31.667952, 22.842014>,  <40.439682, 31.747164, 23.379166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042267, 31.667952, 22.842014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.791420, 31.703701, 23.151527>,  <39.640911, 31.725151, 23.337234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.791420, 31.703701, 23.151527>,  <40.042267, 31.667952, 22.842014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791420, 31.703701, 23.151527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577457, 0.613343, -0.538846,
		-0.522754, -0.784744, -0.333025,
		-0.627114, 0.089376, 0.773783,
		39.603287, 31.730515, 23.383661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312126, 31.621923, 22.621805>,  <40.042267, 31.667952, 22.842014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312126, 31.621923, 22.621805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.331371, 31.819595, 22.969017>,  <39.342918, 31.938198, 23.177343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.331371, 31.819595, 22.969017>,  <39.312126, 31.621923, 22.621805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331371, 31.819595, 22.969017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464721, 0.780323, -0.418486,
		-0.884149, -0.383256, 0.267200,
		0.048115, 0.494178, 0.868029,
		39.345806, 31.967848, 23.229425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809822, 32.061234, 22.483562>,  <39.312126, 31.621923, 22.621805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809822, 32.061234, 22.483562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.963093, 32.210682, 22.821457>,  <39.055054, 32.300350, 23.024195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.963093, 32.210682, 22.821457>,  <38.809822, 32.061234, 22.483562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963093, 32.210682, 22.821457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343844, 0.906509, -0.244974,
		-0.857290, -0.196589, 0.475822,
		0.383177, 0.373623, 0.844737,
		39.078045, 32.322769, 23.074879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244473, 32.572971, 22.815273>,  <38.809822, 32.061234, 22.483562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244473, 32.572971, 22.815273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.602383, 32.675140, 22.961773>,  <38.817127, 32.736443, 23.049673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.602383, 32.675140, 22.961773>,  <38.244473, 32.572971, 22.815273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602383, 32.675140, 22.961773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155946, 0.947342, -0.279685,
		-0.418398, 0.193140, 0.887491,
		0.894776, 0.255420, 0.366247,
		38.870815, 32.751766, 23.071648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725925, 31.947773, 22.839149>,  <38.244473, 32.572971, 22.815273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725925, 31.947773, 22.839149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.353600, 32.047001, 22.946514>,  <37.130203, 32.106537, 23.010933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.353600, 32.047001, 22.946514>,  <37.725925, 31.947773, 22.839149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353600, 32.047001, 22.946514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050183, -0.640692, 0.766156,
		0.362029, 0.726619, 0.583917,
		-0.930815, 0.248068, 0.268414,
		37.074356, 32.121422, 23.027039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695740, 31.854807, 23.487885>,  <37.725925, 31.947773, 22.839149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695740, 31.854807, 23.487885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.305405, 31.850727, 23.400585>,  <37.071201, 31.848280, 23.348206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.305405, 31.850727, 23.400585>,  <37.695740, 31.854807, 23.487885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305405, 31.850727, 23.400585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153938, -0.676770, 0.719921,
		-0.155044, 0.736124, 0.658850,
		-0.975840, -0.010197, -0.218246,
		37.012653, 31.847668, 23.335112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212307, 31.978159, 24.148611>,  <37.695740, 31.854807, 23.487885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212307, 31.978159, 24.148611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.017498, 31.765034, 23.871796>,  <36.900612, 31.637159, 23.705706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.017498, 31.765034, 23.871796>,  <37.212307, 31.978159, 24.148611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017498, 31.765034, 23.871796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122809, -0.742712, 0.658253,
		-0.864711, 0.405575, 0.296285,
		-0.487025, -0.532812, -0.692039,
		36.871391, 31.605190, 23.664185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947243, 31.636515, 24.593527>,  <37.212307, 31.978159, 24.148611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947243, 31.636515, 24.593527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.870270, 31.430199, 24.259598>,  <36.824085, 31.306410, 24.059240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.870270, 31.430199, 24.259598>,  <36.947243, 31.636515, 24.593527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870270, 31.430199, 24.259598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038427, -0.846110, 0.531620,
		-0.980557, 0.134381, 0.143000,
		-0.192433, -0.515789, -0.834824,
		36.812538, 31.275461, 24.009151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484024, 31.186003, 24.830494>,  <36.947243, 31.636515, 24.593527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484024, 31.186003, 24.830494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.617752, 31.017826, 24.493103>,  <36.697990, 30.916920, 24.290668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.617752, 31.017826, 24.493103>,  <36.484024, 31.186003, 24.830494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617752, 31.017826, 24.493103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063617, -0.903003, 0.424899,
		-0.940310, -0.088392, -0.328638,
		0.334318, -0.420444, -0.843480,
		36.718048, 30.891693, 24.240059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125130, 30.531229, 24.734426>,  <36.484024, 31.186003, 24.830494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125130, 30.531229, 24.734426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.451118, 30.495377, 24.505417>,  <36.646713, 30.473866, 24.368011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.451118, 30.495377, 24.505417>,  <36.125130, 30.531229, 24.734426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451118, 30.495377, 24.505417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103707, -0.949459, 0.296264,
		-0.570144, -0.300822, -0.764488,
		0.814973, -0.089630, -0.572525,
		36.695610, 30.468487, 24.333660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089420, 29.865744, 24.393705>,  <36.125130, 30.531229, 24.734426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089420, 29.865744, 24.393705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.475574, 29.969093, 24.407944>,  <36.707268, 30.031103, 24.416487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.475574, 29.969093, 24.407944>,  <36.089420, 29.865744, 24.393705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475574, 29.969093, 24.407944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226424, -0.897990, 0.377287,
		0.129447, -0.356169, -0.925412,
		0.965389, 0.258374, 0.035597,
		36.765190, 30.046606, 24.418623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315674, 29.227493, 24.308554>,  <36.089420, 29.865744, 24.393705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315674, 29.227493, 24.308554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.634464, 29.436569, 24.429630>,  <36.825741, 29.562016, 24.502275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.634464, 29.436569, 24.429630>,  <36.315674, 29.227493, 24.308554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634464, 29.436569, 24.429630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387539, -0.826893, 0.407507,
		0.463292, -0.207470, -0.861578,
		0.796978, 0.522690, 0.302690,
		36.873558, 29.593376, 24.520437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746189, 28.793625, 24.193394>,  <36.315674, 29.227493, 24.308554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746189, 28.793625, 24.193394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.903114, 29.043243, 24.463699>,  <36.997269, 29.193014, 24.625883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.903114, 29.043243, 24.463699>,  <36.746189, 28.793625, 24.193394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903114, 29.043243, 24.463699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281431, -0.780864, 0.557716,
		0.875721, -0.028618, -0.481970,
		0.392314, 0.624045, 0.675765,
		37.020809, 29.230457, 24.666430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467972, 28.497215, 24.384371>,  <36.746189, 28.793625, 24.193394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467972, 28.497215, 24.384371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.339775, 28.730186, 24.683186>,  <37.262856, 28.869968, 24.862474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.339775, 28.730186, 24.683186>,  <37.467972, 28.497215, 24.384371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339775, 28.730186, 24.683186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237006, -0.714247, 0.658543,
		0.917121, 0.388113, 0.090875,
		-0.320496, 0.582426, 0.747036,
		37.243626, 28.904915, 24.907297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992718, 28.459648, 24.912153>,  <37.467972, 28.497215, 24.384371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992718, 28.459648, 24.912153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.682625, 28.615944, 25.110680>,  <37.496567, 28.709723, 25.229795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.682625, 28.615944, 25.110680>,  <37.992718, 28.459648, 24.912153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682625, 28.615944, 25.110680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148748, -0.650697, 0.744625,
		0.613908, 0.651087, 0.446322,
		-0.775236, 0.390741, 0.496316,
		37.450054, 28.733166, 25.259575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250706, 28.627577, 25.645437>,  <37.992718, 28.459648, 24.912153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250706, 28.627577, 25.645437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.852283, 28.595234, 25.660030>,  <37.613228, 28.575829, 25.668787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.852283, 28.595234, 25.660030>,  <38.250706, 28.627577, 25.645437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852283, 28.595234, 25.660030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078648, -0.614701, 0.784830,
		-0.041032, 0.784605, 0.618637,
		-0.996058, -0.080858, 0.036485,
		37.553467, 28.570976, 25.670977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009476, 28.698759, 26.439011>,  <38.250706, 28.627577, 25.645437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009476, 28.698759, 26.439011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.710659, 28.534790, 26.229671>,  <37.531368, 28.436409, 26.104069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.710659, 28.534790, 26.229671>,  <38.009476, 28.698759, 26.439011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710659, 28.534790, 26.229671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139009, -0.673524, 0.725977,
		-0.650078, 0.615086, 0.446170,
		-0.747044, -0.409920, -0.523346,
		37.486546, 28.411814, 26.072668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489456, 28.644785, 26.964560>,  <38.009476, 28.698759, 26.439011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489456, 28.644785, 26.964560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.390133, 28.399940, 26.664249>,  <37.330540, 28.253035, 26.484064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.390133, 28.399940, 26.664249>,  <37.489456, 28.644785, 26.964560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390133, 28.399940, 26.664249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138451, -0.789518, 0.597908,
		-0.958736, 0.044520, 0.280792,
		-0.248309, -0.612111, -0.750775,
		37.315639, 28.216307, 26.439016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955269, 28.166750, 27.298218>,  <37.489456, 28.644785, 26.964560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955269, 28.166750, 27.298218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.093269, 27.989479, 26.967262>,  <37.176067, 27.883116, 26.768690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.093269, 27.989479, 26.967262>,  <36.955269, 28.166750, 27.298218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093269, 27.989479, 26.967262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272872, -0.796076, 0.540188,
		-0.898063, -0.412135, -0.153715,
		0.344999, -0.443179, -0.827387,
		37.196770, 27.856525, 26.719046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744156, 27.484402, 27.321806>,  <36.955269, 28.166750, 27.298218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744156, 27.484402, 27.321806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.062046, 27.483864, 27.079021>,  <37.252781, 27.483541, 26.933352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.062046, 27.483864, 27.079021>,  <36.744156, 27.484402, 27.321806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062046, 27.483864, 27.079021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366950, -0.795490, 0.482228,
		-0.483479, -0.605966, -0.631707,
		0.794730, -0.001342, -0.606962,
		37.300465, 27.483461, 26.896933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874275, 26.719515, 27.174837>,  <36.744156, 27.484402, 27.321806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874275, 26.719515, 27.174837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.211006, 26.895622, 27.049946>,  <37.413044, 27.001286, 26.975012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.211006, 26.895622, 27.049946>,  <36.874275, 26.719515, 27.174837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211006, 26.895622, 27.049946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505481, -0.845910, 0.170075,
		-0.189238, -0.301000, -0.934659,
		0.841830, 0.440268, -0.312229,
		37.463554, 27.027702, 26.956278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243843, 26.183630, 26.760220>,  <36.874275, 26.719515, 27.174837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243843, 26.183630, 26.760220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.522762, 26.454037, 26.855534>,  <37.690113, 26.616280, 26.912722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.522762, 26.454037, 26.855534>,  <37.243843, 26.183630, 26.760220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522762, 26.454037, 26.855534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656016, -0.735841, 0.167876,
		0.288828, 0.039261, -0.956576,
		0.697297, 0.676016, 0.238287,
		37.731953, 26.656841, 26.927019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761463, 26.013533, 26.455433>,  <37.243843, 26.183630, 26.760220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761463, 26.013533, 26.455433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920902, 26.253811, 26.732643>,  <38.016567, 26.397978, 26.898970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.920902, 26.253811, 26.732643>,  <37.761463, 26.013533, 26.455433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920902, 26.253811, 26.732643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597039, -0.743559, 0.301105,
		0.696177, 0.293743, -0.655021,
		0.398600, 0.600695, 0.693025,
		38.040482, 26.434019, 26.940550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420681, 25.999474, 26.431391>,  <37.761463, 26.013533, 26.455433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420681, 25.999474, 26.431391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.389763, 26.103081, 26.816502>,  <38.371212, 26.165245, 27.047567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.389763, 26.103081, 26.816502>,  <38.420681, 25.999474, 26.431391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389763, 26.103081, 26.816502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757979, -0.612055, 0.225515,
		0.647683, 0.747194, -0.149023,
		-0.077293, 0.259018, 0.962775,
		38.366573, 26.180786, 27.105333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136681, 26.133226, 26.682571>,  <38.420681, 25.999474, 26.431391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136681, 26.133226, 26.682571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.936001, 26.097385, 27.026726>,  <38.815594, 26.075880, 27.233219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.936001, 26.097385, 27.026726>,  <39.136681, 26.133226, 26.682571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936001, 26.097385, 27.026726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791123, -0.449827, 0.414465,
		0.349887, 0.888610, 0.296567,
		-0.501701, -0.089605, 0.860388,
		38.785492, 26.070503, 27.284842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<26.708357, 23.085077, 30.402473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.103863, 23.144768, 30.399090>,  <27.341167, 23.180582, 30.397058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.103863, 23.144768, 30.399090>,  <26.708357, 23.085077, 30.402473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.103863, 23.144768, 30.399090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148891, -0.978415, 0.143303,
		0.013107, -0.142953, -0.989643,
		0.988767, 0.149227, -0.008460,
		27.400494, 23.189535, 30.396551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008410, 22.606403, 29.883867>,  <26.708357, 23.085077, 30.402473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008410, 22.606403, 29.883867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.304617, 22.704956, 30.133965>,  <27.482342, 22.764088, 30.284023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.304617, 22.704956, 30.133965>,  <27.008410, 22.606403, 29.883867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304617, 22.704956, 30.133965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253248, -0.964090, 0.079970,
		0.622492, 0.099122, -0.776323,
		0.740519, 0.246383, 0.625242,
		27.526773, 22.778872, 30.321537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.522207, 22.198967, 29.726757>,  <27.008410, 22.606403, 29.883867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.522207, 22.198967, 29.726757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.638689, 22.304642, 30.094540>,  <27.708578, 22.368048, 30.315210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.638689, 22.304642, 30.094540>,  <27.522207, 22.198967, 29.726757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.638689, 22.304642, 30.094540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370978, -0.917091, 0.146015,
		0.881802, 0.298578, -0.365071,
		0.291206, 0.264189, 0.919458,
		27.726051, 22.383898, 30.370377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204224, 21.994917, 29.821465>,  <27.522207, 22.198967, 29.726757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204224, 21.994917, 29.821465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.067001, 22.032059, 30.195351>,  <27.984669, 22.054344, 30.419682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.067001, 22.032059, 30.195351>,  <28.204224, 21.994917, 29.821465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067001, 22.032059, 30.195351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382364, -0.895120, 0.229256,
		0.857969, 0.436049, 0.271572,
		-0.343056, 0.092855, 0.934714,
		27.964085, 22.059916, 30.475765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707323, 21.773933, 30.167747>,  <28.204224, 21.994917, 29.821465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707323, 21.773933, 30.167747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.420076, 21.762688, 30.445889>,  <28.247728, 21.755939, 30.612774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.420076, 21.762688, 30.445889>,  <28.707323, 21.773933, 30.167747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420076, 21.762688, 30.445889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366405, -0.864754, 0.343435,
		0.591654, 0.501407, 0.631297,
		-0.718117, -0.028116, 0.695354,
		28.204641, 21.754253, 30.654495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050070, 21.729261, 30.767624>,  <28.707323, 21.773933, 30.167747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050070, 21.729261, 30.767624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.690397, 21.568687, 30.837273>,  <28.474594, 21.472343, 30.879063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.690397, 21.568687, 30.837273>,  <29.050070, 21.729261, 30.767624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690397, 21.568687, 30.837273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437376, -0.812619, 0.385166,
		-0.013124, 0.422492, 0.906272,
		-0.899183, -0.401436, 0.174122,
		28.420643, 21.448257, 30.889509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136631, 21.475363, 31.326128>,  <29.050070, 21.729261, 30.767624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136631, 21.475363, 31.326128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.792950, 21.306923, 31.209888>,  <28.586740, 21.205858, 31.140144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.792950, 21.306923, 31.209888>,  <29.136631, 21.475363, 31.326128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792950, 21.306923, 31.209888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285203, -0.865740, 0.411282,
		-0.424774, 0.270495, 0.863944,
		-0.859201, -0.421101, -0.290598,
		28.535189, 21.180592, 31.122709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839731, 21.138134, 32.015877>,  <29.136631, 21.475363, 31.326128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839731, 21.138134, 32.015877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.745621, 20.964985, 31.667793>,  <28.689154, 20.861095, 31.458942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.745621, 20.964985, 31.667793>,  <28.839731, 21.138134, 32.015877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745621, 20.964985, 31.667793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248051, -0.892436, 0.376866,
		-0.939743, -0.127189, 0.317343,
		-0.235276, -0.432874, -0.870210,
		28.675037, 20.835123, 31.406731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616396, 20.438198, 32.238991>,  <28.839731, 21.138134, 32.015877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616396, 20.438198, 32.238991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.657623, 20.373039, 31.846493>,  <28.682360, 20.333944, 31.610994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.657623, 20.373039, 31.846493>,  <28.616396, 20.438198, 32.238991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657623, 20.373039, 31.846493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175424, -0.968059, 0.179132,
		-0.979083, -0.190597, -0.071202,
		0.103070, -0.162895, -0.981245,
		28.688543, 20.324171, 31.552118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255508, 19.735546, 32.009586>,  <28.616396, 20.438198, 32.238991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255508, 19.735546, 32.009586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.522755, 19.842438, 31.731823>,  <28.683104, 19.906572, 31.565165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.522755, 19.842438, 31.731823>,  <28.255508, 19.735546, 32.009586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522755, 19.842438, 31.731823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301916, -0.950361, -0.075241,
		-0.680048, -0.159384, -0.715633,
		0.668118, 0.267228, -0.694412,
		28.723190, 19.922606, 31.523499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394821, 19.129351, 31.575792>,  <28.255508, 19.735546, 32.009586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394821, 19.129351, 31.575792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.694445, 19.387772, 31.517101>,  <28.874218, 19.542824, 31.481886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.694445, 19.387772, 31.517101>,  <28.394821, 19.129351, 31.575792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694445, 19.387772, 31.517101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654467, -0.755988, 0.012458,
		-0.102876, -0.105360, -0.989098,
		0.749059, 0.646051, -0.146728,
		28.919163, 19.581587, 31.473083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874931, 18.832279, 30.946491>,  <28.394821, 19.129351, 31.575792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874931, 18.832279, 30.946491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.100025, 19.071609, 31.174644>,  <29.235081, 19.215208, 31.311537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.100025, 19.071609, 31.174644>,  <28.874931, 18.832279, 30.946491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100025, 19.071609, 31.174644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567608, -0.781304, 0.259587,
		0.600960, 0.177676, -0.779281,
		0.562733, 0.598328, 0.570382,
		29.268845, 19.251108, 31.345758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508978, 18.780529, 30.804012>,  <28.874931, 18.832279, 30.946491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508978, 18.780529, 30.804012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.524452, 18.893185, 31.187508>,  <29.533737, 18.960777, 31.417604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.524452, 18.893185, 31.187508>,  <29.508978, 18.780529, 30.804012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524452, 18.893185, 31.187508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549773, -0.807188, 0.214936,
		0.834418, 0.518775, -0.186064,
		0.038685, 0.281639, 0.958740,
		29.536058, 18.977676, 31.475130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274837, 18.784210, 31.111162>,  <29.508978, 18.780529, 30.804012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274837, 18.784210, 31.111162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.994780, 18.698769, 31.383682>,  <29.826746, 18.647503, 31.547195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.994780, 18.698769, 31.383682>,  <30.274837, 18.784210, 31.111162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.994780, 18.698769, 31.383682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532382, -0.792020, 0.298787,
		0.475782, 0.571907, 0.668247,
		-0.700143, -0.213605, 0.681302,
		29.784737, 18.634687, 31.588074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875553, 18.424250, 31.456697>,  <30.274837, 18.784210, 31.111162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875553, 18.424250, 31.456697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.131596, 18.325996, 31.165512>,  <31.285221, 18.267044, 30.990801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.131596, 18.325996, 31.165512>,  <30.875553, 18.424250, 31.456697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131596, 18.325996, 31.165512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187936, 0.868666, -0.458366,
		0.744947, 0.430212, 0.509874,
		0.640105, -0.245635, -0.727962,
		31.323627, 18.252306, 30.947123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336880, 19.052401, 31.348879>,  <30.875553, 18.424250, 31.456697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336880, 19.052401, 31.348879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.356186, 18.814381, 31.027985>,  <31.367769, 18.671568, 30.835447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.356186, 18.814381, 31.027985>,  <31.336880, 19.052401, 31.348879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356186, 18.814381, 31.027985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114538, 0.794578, -0.596260,
		0.992246, 0.120666, -0.029806,
		0.048265, -0.595051, -0.802237,
		31.370665, 18.635866, 30.787313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991840, 19.304209, 30.936474>,  <31.336880, 19.052401, 31.348879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991840, 19.304209, 30.936474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.731190, 19.106026, 30.706726>,  <31.574799, 18.987116, 30.568878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.731190, 19.106026, 30.706726>,  <31.991840, 19.304209, 30.936474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731190, 19.106026, 30.706726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087639, 0.801311, -0.591794,
		0.753457, -0.335294, -0.565580,
		-0.651630, -0.495459, -0.574368,
		31.535702, 18.957388, 30.534414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253017, 19.336668, 30.253942>,  <31.991840, 19.304209, 30.936474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253017, 19.336668, 30.253942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.861536, 19.263145, 30.217381>,  <31.626648, 19.219032, 30.195444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.861536, 19.263145, 30.217381>,  <32.253017, 19.336668, 30.253942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861536, 19.263145, 30.217381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049610, 0.643847, -0.763544,
		0.199196, -0.742748, -0.639254,
		-0.978703, -0.183808, -0.091404,
		31.567924, 19.208002, 30.189959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124973, 19.212479, 29.560476>,  <32.253017, 19.336668, 30.253942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124973, 19.212479, 29.560476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.761789, 19.301529, 29.702488>,  <31.543879, 19.354959, 29.787695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.761789, 19.301529, 29.702488>,  <32.124973, 19.212479, 29.560476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761789, 19.301529, 29.702488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154618, 0.609463, -0.777592,
		-0.389489, -0.760916, -0.518946,
		-0.907960, 0.222625, 0.355030,
		31.489401, 19.368317, 29.808996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670996, 19.309853, 28.958300>,  <32.124973, 19.212479, 29.560476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670996, 19.309853, 28.958300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.502588, 19.487411, 29.274704>,  <31.401545, 19.593946, 29.464546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.502588, 19.487411, 29.274704>,  <31.670996, 19.309853, 28.958300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502588, 19.487411, 29.274704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126837, 0.834690, -0.535915,
		-0.898140, -0.325959, -0.295117,
		-0.421018, 0.443895, 0.791013,
		31.376284, 19.620581, 29.512009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059843, 19.640135, 28.688032>,  <31.670996, 19.309853, 28.958300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059843, 19.640135, 28.688032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.048714, 19.803448, 29.053005>,  <31.042036, 19.901436, 29.271990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.048714, 19.803448, 29.053005>,  <31.059843, 19.640135, 28.688032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.048714, 19.803448, 29.053005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024116, 0.912246, -0.408933,
		-0.999322, -0.033383, -0.015537,
		-0.027825, 0.408281, 0.912432,
		31.040367, 19.925932, 29.326735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499634, 20.156404, 28.778864>,  <31.059843, 19.640135, 28.688032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499634, 20.156404, 28.778864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.774330, 20.251961, 29.053474>,  <30.939148, 20.309294, 29.218241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.774330, 20.251961, 29.053474>,  <30.499634, 20.156404, 28.778864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774330, 20.251961, 29.053474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020526, 0.950451, -0.310195,
		-0.726613, 0.198932, 0.657617,
		0.686740, 0.238890, 0.686527,
		30.980352, 20.323627, 29.259432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251516, 20.779436, 29.023104>,  <30.499634, 20.156404, 28.778864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251516, 20.779436, 29.023104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.623196, 20.780434, 29.170933>,  <30.846203, 20.781033, 29.259630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.623196, 20.780434, 29.170933>,  <30.251516, 20.779436, 29.023104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623196, 20.780434, 29.170933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059703, 0.985830, -0.156761,
		-0.364728, 0.167726, 0.915883,
		0.929198, 0.002494, 0.369574,
		30.901955, 20.781181, 29.281805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386158, 21.291756, 29.617275>,  <30.251516, 20.779436, 29.023104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386158, 21.291756, 29.617275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.742029, 21.224377, 29.447525>,  <30.955553, 21.183950, 29.345675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.742029, 21.224377, 29.447525>,  <30.386158, 21.291756, 29.617275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742029, 21.224377, 29.447525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107142, 0.980527, -0.164581,
		0.443835, 0.100956, 0.890403,
		0.889680, -0.168446, -0.424376,
		31.008934, 21.173843, 29.320211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922815, 21.789526, 29.935877>,  <30.386158, 21.291756, 29.617275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922815, 21.789526, 29.935877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.051737, 21.654430, 29.582142>,  <31.129089, 21.573372, 29.369902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.051737, 21.654430, 29.582142>,  <30.922815, 21.789526, 29.935877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051737, 21.654430, 29.582142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295914, 0.923319, -0.244780,
		0.899196, -0.182793, 0.397533,
		0.322306, -0.337741, -0.884336,
		31.148428, 21.553108, 29.316841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591270, 22.069023, 29.873356>,  <30.922815, 21.789526, 29.935877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591270, 22.069023, 29.873356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.485689, 21.985630, 29.496662>,  <31.422340, 21.935595, 29.270645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.485689, 21.985630, 29.496662>,  <31.591270, 22.069023, 29.873356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.485689, 21.985630, 29.496662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262543, 0.923965, -0.278136,
		0.928118, -0.320660, -0.189142,
		-0.263948, -0.208485, -0.941736,
		31.406504, 21.923084, 29.214142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150280, 22.267347, 29.562763>,  <31.591270, 22.069023, 29.873356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150280, 22.267347, 29.562763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.892008, 22.224567, 29.260330>,  <31.737045, 22.198900, 29.078871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.892008, 22.224567, 29.260330>,  <32.150280, 22.267347, 29.562763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892008, 22.224567, 29.260330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201044, 0.931401, -0.303436,
		0.736667, -0.347928, -0.579886,
		-0.645681, -0.106948, -0.756081,
		31.698303, 22.192482, 29.033506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488411, 22.407040, 28.922258>,  <32.150280, 22.267347, 29.562763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488411, 22.407040, 28.922258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.098644, 22.493202, 28.896614>,  <31.864784, 22.544899, 28.881227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.098644, 22.493202, 28.896614>,  <32.488411, 22.407040, 28.922258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098644, 22.493202, 28.896614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221319, 0.870070, -0.440449,
		-0.039095, -0.443370, -0.895486,
		-0.974417, 0.215407, -0.064111,
		31.806318, 22.557825, 28.877380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701855, 22.286970, 28.166910>,  <32.488411, 22.407040, 28.922258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701855, 22.286970, 28.166910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.089417, 22.374924, 28.212307>,  <33.321953, 22.427696, 28.239546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.089417, 22.374924, 28.212307>,  <32.701855, 22.286970, 28.166910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089417, 22.374924, 28.212307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084977, -0.726442, 0.681954,
		0.232396, -0.651102, -0.722536,
		0.968902, 0.219882, 0.113493,
		33.380089, 22.440889, 28.246355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981659, 21.670353, 28.171471>,  <32.701855, 22.286970, 28.166910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981659, 21.670353, 28.171471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289452, 21.898247, 28.286922>,  <33.474125, 22.034983, 28.356194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289452, 21.898247, 28.286922>,  <32.981659, 21.670353, 28.171471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289452, 21.898247, 28.286922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280722, -0.707635, 0.648419,
		0.573671, -0.417919, -0.704446,
		0.769478, 0.569733, 0.288631,
		33.520294, 22.069166, 28.373512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518448, 21.197657, 28.259108>,  <32.981659, 21.670353, 28.171471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518448, 21.197657, 28.259108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621498, 21.509113, 28.487965>,  <33.683327, 21.695988, 28.625278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.621498, 21.509113, 28.487965>,  <33.518448, 21.197657, 28.259108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621498, 21.509113, 28.487965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296511, -0.627268, 0.720150,
		0.919625, -0.015883, -0.392476,
		0.257626, 0.778641, 0.572142,
		33.698788, 21.742706, 28.659607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248287, 21.103384, 28.491041>,  <33.518448, 21.197657, 28.259108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248287, 21.103384, 28.491041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.089504, 21.363056, 28.750576>,  <33.994236, 21.518860, 28.906296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.089504, 21.363056, 28.750576>,  <34.248287, 21.103384, 28.491041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089504, 21.363056, 28.750576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294470, -0.579470, 0.759935,
		0.869316, 0.492726, 0.038861,
		-0.396959, 0.649181, 0.648836,
		33.970417, 21.557810, 28.945227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706909, 21.236229, 29.008801>,  <34.248287, 21.103384, 28.491041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706909, 21.236229, 29.008801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.350830, 21.315109, 29.173073>,  <34.137184, 21.362438, 29.271637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.350830, 21.315109, 29.173073>,  <34.706909, 21.236229, 29.008801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350830, 21.315109, 29.173073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186017, -0.665550, 0.722801,
		0.415866, 0.719830, 0.555788,
		-0.890198, 0.197202, 0.410681,
		34.083771, 21.374269, 29.296276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914600, 21.285461, 29.763866>,  <34.706909, 21.236229, 29.008801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914600, 21.285461, 29.763866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523197, 21.205750, 29.742695>,  <34.288353, 21.157923, 29.729992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523197, 21.205750, 29.742695>,  <34.914600, 21.285461, 29.763866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523197, 21.205750, 29.742695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076054, -0.587423, 0.805698,
		-0.191651, 0.784360, 0.589957,
		-0.978512, -0.199281, -0.052927,
		34.229645, 21.145966, 29.726816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597374, 21.383999, 30.456472>,  <34.914600, 21.285461, 29.763866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597374, 21.383999, 30.456472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.356255, 21.144497, 30.245522>,  <34.211582, 21.000795, 30.118952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.356255, 21.144497, 30.245522>,  <34.597374, 21.383999, 30.456472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356255, 21.144497, 30.245522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075341, -0.615295, 0.784688,
		-0.794327, 0.512744, 0.325789,
		-0.602801, -0.598754, -0.527376,
		34.175415, 20.964870, 30.087309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239750, 22.013147, 30.918304>,  <34.597374, 21.383999, 30.456472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239750, 22.013147, 30.918304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258583, 22.206287, 31.268078>,  <34.269882, 22.322172, 31.477942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258583, 22.206287, 31.268078>,  <34.239750, 22.013147, 30.918304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258583, 22.206287, 31.268078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239129, 0.855400, -0.459465,
		-0.969846, -0.187471, 0.155737,
		0.047082, 0.482852, 0.874436,
		34.272709, 22.351143, 31.530409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849560, 22.560146, 30.780027>,  <34.239750, 22.013147, 30.918304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849560, 22.560146, 30.780027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.035732, 22.664314, 31.118389>,  <34.147434, 22.726814, 31.321407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.035732, 22.664314, 31.118389>,  <33.849560, 22.560146, 30.780027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035732, 22.664314, 31.118389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105047, 0.965232, -0.239357,
		-0.878828, 0.022545, 0.476605,
		0.465430, 0.260419, 0.845905,
		34.175362, 22.742439, 31.372160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434486, 23.074678, 31.202497>,  <33.849560, 22.560146, 30.780027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434486, 23.074678, 31.202497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824902, 23.108971, 31.282490>,  <34.059151, 23.129547, 31.330484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824902, 23.108971, 31.282490>,  <33.434486, 23.074678, 31.202497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824902, 23.108971, 31.282490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069458, 0.993781, -0.087036,
		-0.206199, 0.071061, 0.975926,
		0.976042, 0.085733, 0.199981,
		34.117714, 23.134691, 31.342484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427715, 23.674784, 31.578951>,  <33.434486, 23.074678, 31.202497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427715, 23.674784, 31.578951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.800735, 23.613102, 31.448368>,  <34.024548, 23.576094, 31.370018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.800735, 23.613102, 31.448368>,  <33.427715, 23.674784, 31.578951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800735, 23.613102, 31.448368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126587, 0.986451, -0.104352,
		0.338127, 0.055988, 0.939434,
		0.932548, -0.154204, -0.326458,
		34.080502, 23.566841, 31.350431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766102, 24.264269, 31.814154>,  <33.427715, 23.674784, 31.578951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766102, 24.264269, 31.814154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.017662, 24.101250, 31.549309>,  <34.168598, 24.003439, 31.390402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.017662, 24.101250, 31.549309>,  <33.766102, 24.264269, 31.814154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017662, 24.101250, 31.549309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242114, 0.911918, -0.331341,
		0.738830, 0.048072, 0.672175,
		0.628897, -0.407548, -0.662113,
		34.206329, 23.978985, 31.350676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336632, 24.762896, 31.825930>,  <33.766102, 24.264269, 31.814154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336632, 24.762896, 31.825930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.379303, 24.556980, 31.485668>,  <34.404903, 24.433432, 31.281511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.379303, 24.556980, 31.485668>,  <34.336632, 24.762896, 31.825930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379303, 24.556980, 31.485668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290473, 0.834349, -0.468495,
		0.950919, -0.197115, 0.238535,
		0.106674, -0.514789, -0.850655,
		34.411304, 24.402544, 31.230473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021946, 24.898241, 31.527832>,  <34.336632, 24.762896, 31.825930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021946, 24.898241, 31.527832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767288, 24.787766, 31.239830>,  <34.614494, 24.721479, 31.067028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767288, 24.787766, 31.239830>,  <35.021946, 24.898241, 31.527832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767288, 24.787766, 31.239830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274300, 0.791502, -0.546154,
		0.720726, -0.545202, -0.428145,
		-0.636642, -0.276187, -0.720005,
		34.576298, 24.704908, 31.023829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.762295, 20.651203, 33.669441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.556847, 20.598854, 33.330250>,  <30.433577, 20.567444, 33.126736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.556847, 20.598854, 33.330250>,  <30.762295, 20.651203, 33.669441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556847, 20.598854, 33.330250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103843, 0.990516, -0.089974,
		0.851709, 0.041844, -0.522341,
		-0.513622, -0.130873, -0.847977,
		30.402760, 20.559591, 33.075855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081333, 21.043247, 33.202923>,  <30.762295, 20.651203, 33.669441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081333, 21.043247, 33.202923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.711473, 20.992687, 33.059231>,  <30.489557, 20.962351, 32.973015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.711473, 20.992687, 33.059231>,  <31.081333, 21.043247, 33.202923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711473, 20.992687, 33.059231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145777, 0.988942, 0.027258,
		0.351811, 0.077571, -0.932852,
		-0.924651, -0.126399, -0.359228,
		30.434078, 20.954767, 32.951462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981089, 21.460796, 32.616795>,  <31.081333, 21.043247, 33.202923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981089, 21.460796, 32.616795> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.608404, 21.397316, 32.747471>,  <30.384792, 21.359228, 32.825878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.608404, 21.397316, 32.747471>,  <30.981089, 21.460796, 32.616795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608404, 21.397316, 32.747471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203062, 0.973382, -0.106274,
		-0.301127, -0.165355, -0.939138,
		-0.931713, -0.158701, 0.326689,
		30.328890, 21.349705, 32.845478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591301, 21.850107, 32.058636>,  <30.981089, 21.460796, 32.616795>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591301, 21.850107, 32.058636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.344877, 21.795273, 32.368908>,  <30.197023, 21.762373, 32.555073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.344877, 21.795273, 32.368908>,  <30.591301, 21.850107, 32.058636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344877, 21.795273, 32.368908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404086, 0.900293, -0.161826,
		-0.676156, -0.413135, -0.610027,
		-0.616059, -0.137084, 0.775680,
		30.160059, 21.754148, 32.601612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986496, 22.097496, 31.922987>,  <30.591301, 21.850107, 32.058636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986496, 22.097496, 31.922987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.940491, 22.109943, 32.320137>,  <29.912888, 22.117411, 32.558426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.940491, 22.109943, 32.320137>,  <29.986496, 22.097496, 31.922987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940491, 22.109943, 32.320137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352516, 0.933178, -0.070081,
		-0.928711, -0.358065, -0.096357,
		-0.115012, 0.031117, 0.992876,
		29.905987, 22.119278, 32.618000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380762, 22.426914, 31.925943>,  <29.986496, 22.097496, 31.922987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380762, 22.426914, 31.925943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.537500, 22.441597, 32.293663>,  <29.631542, 22.450407, 32.514294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.537500, 22.441597, 32.293663>,  <29.380762, 22.426914, 31.925943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537500, 22.441597, 32.293663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256265, 0.964015, 0.070740,
		-0.883621, -0.263303, 0.387150,
		0.391844, 0.036706, 0.919299,
		29.655054, 22.452608, 32.569454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815292, 22.736500, 32.379597>,  <29.380762, 22.426914, 31.925943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815292, 22.736500, 32.379597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.163597, 22.781872, 32.570972>,  <29.372580, 22.809095, 32.685799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.163597, 22.781872, 32.570972>,  <28.815292, 22.736500, 32.379597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163597, 22.781872, 32.570972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236767, 0.949519, 0.205803,
		-0.430946, -0.292485, 0.853661,
		0.870762, 0.113429, 0.478443,
		29.424826, 22.815901, 32.714504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641052, 23.102062, 33.031528>,  <28.815292, 22.736500, 32.379597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641052, 23.102062, 33.031528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.020554, 23.197220, 32.948318>,  <29.248255, 23.254314, 32.898392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.020554, 23.197220, 32.948318>,  <28.641052, 23.102062, 33.031528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020554, 23.197220, 32.948318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205259, 0.964400, 0.166738,
		0.240283, -0.115495, 0.963807,
		0.948753, 0.237895, -0.208022,
		29.305180, 23.268589, 32.885910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692194, 23.711353, 33.421188>,  <28.641052, 23.102062, 33.031528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692194, 23.711353, 33.421188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.999994, 23.710064, 33.165733>,  <29.184673, 23.709290, 33.012459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.999994, 23.710064, 33.165733>,  <28.692194, 23.711353, 33.421188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999994, 23.710064, 33.165733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122781, 0.980587, -0.152887,
		0.626735, 0.196059, 0.754165,
		0.769499, -0.003223, -0.638640,
		29.230844, 23.709097, 32.974140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138756, 24.258398, 33.569950>,  <28.692194, 23.711353, 33.421188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138756, 24.258398, 33.569950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.234564, 24.189194, 33.187809>,  <29.292049, 24.147671, 32.958523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.234564, 24.189194, 33.187809>,  <29.138756, 24.258398, 33.569950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234564, 24.189194, 33.187809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045017, 0.980957, -0.188935,
		0.969847, 0.088261, 0.227172,
		0.239522, -0.173011, -0.955351,
		29.306421, 24.137291, 32.901203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.748804, 24.684607, 33.418076>,  <29.138756, 24.258398, 33.569950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.748804, 24.684607, 33.418076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.572388, 24.595726, 33.070259>,  <29.466537, 24.542397, 32.861568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.572388, 24.595726, 33.070259>,  <29.748804, 24.684607, 33.418076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572388, 24.595726, 33.070259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065799, 0.958254, -0.278244,
		0.895072, -0.179932, -0.408009,
		-0.441041, -0.222202, -0.869545,
		29.440075, 24.529066, 32.809395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156830, 25.157917, 32.848248>,  <29.748804, 24.684607, 33.418076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156830, 25.157917, 32.848248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.823946, 25.065037, 32.646851>,  <29.624216, 25.009308, 32.526012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.823946, 25.065037, 32.646851>,  <30.156830, 25.157917, 32.848248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823946, 25.065037, 32.646851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012656, 0.915802, -0.401431,
		0.554313, -0.327703, -0.765080,
		-0.832211, -0.232202, -0.503494,
		29.574282, 24.995377, 32.495804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885387, 25.342710, 32.638882>,  <30.156830, 25.157917, 32.848248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885387, 25.342710, 32.638882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.071840, 25.547947, 32.927174>,  <31.183712, 25.671089, 33.100151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.071840, 25.547947, 32.927174>,  <30.885387, 25.342710, 32.638882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071840, 25.547947, 32.927174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056549, -0.830263, 0.554495,
		0.882906, -0.217712, -0.416028,
		0.466133, 0.513093, 0.720733,
		31.211679, 25.701876, 33.143394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400599, 24.924961, 32.825748>,  <30.885387, 25.342710, 32.638882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400599, 24.924961, 32.825748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.344183, 25.172703, 33.134686>,  <31.310333, 25.321348, 33.320045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.344183, 25.172703, 33.134686>,  <31.400599, 24.924961, 32.825748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344183, 25.172703, 33.134686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067433, -0.784336, 0.616660,
		0.987705, 0.034893, 0.152388,
		-0.141040, 0.619354, 0.772339,
		31.301870, 25.358509, 33.366386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822758, 24.668676, 33.325562>,  <31.400599, 24.924961, 32.825748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822758, 24.668676, 33.325562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.566666, 24.885609, 33.543179>,  <31.413012, 25.015768, 33.673748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.566666, 24.885609, 33.543179>,  <31.822758, 24.668676, 33.325562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566666, 24.885609, 33.543179> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022932, -0.721402, 0.692137,
		0.767843, 0.430650, 0.474298,
		-0.640228, 0.542329, 0.544047,
		31.374598, 25.048307, 33.706394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071812, 24.497917, 34.050995>,  <31.822758, 24.668676, 33.325562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071812, 24.497917, 34.050995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.689997, 24.617142, 34.049168>,  <31.460909, 24.688677, 34.048073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.689997, 24.617142, 34.049168>,  <32.071812, 24.497917, 34.050995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689997, 24.617142, 34.049168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265274, -0.842355, 0.469114,
		0.135980, 0.448997, 0.883126,
		-0.954536, 0.298060, -0.004564,
		31.403635, 24.706560, 34.047798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940477, 24.531641, 34.696651>,  <32.071812, 24.497917, 34.050995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940477, 24.531641, 34.696651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.574316, 24.515488, 34.536449>,  <31.354620, 24.505795, 34.440327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.574316, 24.515488, 34.536449>,  <31.940477, 24.531641, 34.696651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574316, 24.515488, 34.536449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222895, -0.777644, 0.587867,
		-0.335191, 0.627407, 0.702856,
		-0.915404, -0.040385, -0.400505,
		31.299694, 24.503372, 34.416298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523787, 24.594059, 35.334419>,  <31.940477, 24.531641, 34.696651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523787, 24.594059, 35.334419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.355455, 24.411430, 35.020874>,  <31.254457, 24.301853, 34.832745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.355455, 24.411430, 35.020874>,  <31.523787, 24.594059, 35.334419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355455, 24.411430, 35.020874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327827, -0.729164, 0.600707,
		-0.845833, 0.509766, 0.157175,
		-0.420827, -0.456572, -0.783867,
		31.229208, 24.274458, 34.785713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001913, 24.092665, 35.614872>,  <31.523787, 24.594059, 35.334419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001913, 24.092665, 35.614872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.027737, 23.957211, 35.239391>,  <31.043232, 23.875938, 35.014103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.027737, 23.957211, 35.239391>,  <31.001913, 24.092665, 35.614872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027737, 23.957211, 35.239391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215909, -0.923121, 0.318168,
		-0.974277, 0.182132, -0.132712,
		0.064560, -0.338637, -0.938699,
		31.047106, 23.855619, 34.957783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483934, 23.577097, 35.547241>,  <31.001913, 24.092665, 35.614872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483934, 23.577097, 35.547241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.743433, 23.493744, 35.254475>,  <30.899132, 23.443733, 35.078815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.743433, 23.493744, 35.254475>,  <30.483934, 23.577097, 35.547241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743433, 23.493744, 35.254475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076641, -0.939000, 0.335270,
		-0.757136, -0.273600, -0.593201,
		0.648745, -0.208381, -0.731920,
		30.938057, 23.431229, 35.034897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343369, 22.931889, 35.466492>,  <30.483934, 23.577097, 35.547241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343369, 22.931889, 35.466492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.691383, 22.980652, 35.275421>,  <30.900192, 23.009911, 35.160778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.691383, 22.980652, 35.275421>,  <30.343369, 22.931889, 35.466492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691383, 22.980652, 35.275421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277929, -0.921577, 0.271018,
		-0.407177, -0.368555, -0.835687,
		0.870036, 0.121910, -0.477677,
		30.952394, 23.017225, 35.132118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336958, 22.401968, 35.073296>,  <30.343369, 22.931889, 35.466492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336958, 22.401968, 35.073296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.724339, 22.499092, 35.095711>,  <30.956768, 22.557367, 35.109158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.724339, 22.499092, 35.095711>,  <30.336958, 22.401968, 35.073296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724339, 22.499092, 35.095711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235852, -0.965719, 0.108442,
		0.080444, -0.091805, -0.992522,
		0.968454, 0.242812, 0.056034,
		31.014875, 22.571936, 35.112522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704243, 21.821976, 34.615425>,  <30.336958, 22.401968, 35.073296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704243, 21.821976, 34.615425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.004803, 21.972195, 34.832443>,  <31.185139, 22.062326, 34.962654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.004803, 21.972195, 34.832443>,  <30.704243, 21.821976, 34.615425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004803, 21.972195, 34.832443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520182, -0.843013, -0.136894,
		0.405966, 0.385086, -0.828794,
		0.751400, 0.375549, 0.542550,
		31.230223, 22.084860, 34.995209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311411, 21.560957, 34.370262>,  <30.704243, 21.821976, 34.615425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311411, 21.560957, 34.370262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.413498, 21.686317, 34.736134>,  <31.474751, 21.761534, 34.955658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.413498, 21.686317, 34.736134>,  <31.311411, 21.560957, 34.370262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413498, 21.686317, 34.736134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626798, -0.773933, 0.090284,
		0.736198, 0.550278, -0.393962,
		0.255219, 0.313402, 0.914682,
		31.490063, 21.780338, 35.010536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005108, 21.497650, 34.371445>,  <31.311411, 21.560957, 34.370262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005108, 21.497650, 34.371445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.910990, 21.498821, 34.760212>,  <31.854519, 21.499525, 34.993473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.910990, 21.498821, 34.760212>,  <32.005108, 21.497650, 34.371445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910990, 21.498821, 34.760212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500025, -0.857140, 0.123635,
		0.833434, 0.515075, 0.200215,
		-0.235294, 0.002929, 0.971920,
		31.840401, 21.499701, 35.051788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657192, 21.421707, 34.608860>,  <32.005108, 21.497650, 34.371445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657192, 21.421707, 34.608860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.387028, 21.320751, 34.886024>,  <32.224930, 21.260178, 35.052322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.387028, 21.320751, 34.886024>,  <32.657192, 21.421707, 34.608860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387028, 21.320751, 34.886024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427685, -0.899512, 0.089240,
		0.600755, 0.356620, 0.715483,
		-0.675410, -0.252390, 0.692907,
		32.184406, 21.245035, 35.093895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310753, 21.222498, 34.254959>,  <32.657192, 21.421707, 34.608860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310753, 21.222498, 34.254959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.624870, 21.012081, 34.124363>,  <33.813339, 20.885832, 34.046005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.624870, 21.012081, 34.124363>,  <33.310753, 21.222498, 34.254959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624870, 21.012081, 34.124363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197121, 0.712336, -0.673588,
		0.586908, 0.464604, 0.663085,
		0.785291, -0.526042, -0.326493,
		33.860458, 20.854269, 34.026417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750443, 21.748476, 33.924881>,  <33.310753, 21.222498, 34.254959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750443, 21.748476, 33.924881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.954056, 21.431347, 33.790829>,  <34.076225, 21.241070, 33.710396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.954056, 21.431347, 33.790829>,  <33.750443, 21.748476, 33.924881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954056, 21.431347, 33.790829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148060, 0.464202, -0.873267,
		0.847915, 0.394905, 0.353681,
		0.509037, -0.792822, -0.335135,
		34.106766, 21.193501, 33.690289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521584, 21.942173, 33.718086>,  <33.750443, 21.748476, 33.924881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521584, 21.942173, 33.718086> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.390083, 21.615356, 33.528618>,  <34.311184, 21.419266, 33.414936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.390083, 21.615356, 33.528618>,  <34.521584, 21.942173, 33.718086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390083, 21.615356, 33.528618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172967, 0.440978, -0.880694,
		0.928442, -0.371460, -0.003652,
		-0.328753, -0.817041, -0.473672,
		34.291458, 21.370245, 33.386517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046097, 21.804880, 33.229912>,  <34.521584, 21.942173, 33.718086>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046097, 21.804880, 33.229912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.722279, 21.615620, 33.090908>,  <34.527988, 21.502064, 33.007507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.722279, 21.615620, 33.090908>,  <35.046097, 21.804880, 33.229912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722279, 21.615620, 33.090908> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234218, 0.282482, -0.930240,
		0.538311, -0.834464, -0.117860,
		-0.809545, -0.473154, -0.347510,
		34.479416, 21.473673, 32.986656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245853, 21.497564, 32.579376>,  <35.046097, 21.804880, 33.229912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245853, 21.497564, 32.579376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.846638, 21.522285, 32.575253>,  <34.607109, 21.537117, 32.572777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.846638, 21.522285, 32.575253>,  <35.245853, 21.497564, 32.579376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846638, 21.522285, 32.575253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031651, 0.355241, -0.934239,
		-0.054074, -0.932730, -0.356499,
		-0.998035, 0.061802, -0.010312,
		34.547226, 21.540827, 32.572159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113968, 21.520756, 31.818695>,  <35.245853, 21.497564, 32.579376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113968, 21.520756, 31.818695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.771084, 21.630939, 31.992737>,  <34.565353, 21.697050, 32.097160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.771084, 21.630939, 31.992737>,  <35.113968, 21.520756, 31.818695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771084, 21.630939, 31.992737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225580, 0.558686, -0.798112,
		-0.462934, -0.782300, -0.416773,
		-0.857208, 0.275457, 0.435106,
		34.513920, 21.713577, 32.123268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712494, 21.555819, 31.236916>,  <35.113968, 21.520756, 31.818695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712494, 21.555819, 31.236916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.553474, 21.768936, 31.535736>,  <34.458061, 21.896807, 31.715029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.553474, 21.768936, 31.535736>,  <34.712494, 21.555819, 31.236916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553474, 21.768936, 31.535736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188134, 0.749526, -0.634678,
		-0.898086, -0.392863, -0.197739,
		-0.397552, 0.532794, 0.747049,
		34.434208, 21.928774, 31.759851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990601, 21.325262, 30.908075>,  <34.712494, 21.555819, 31.236916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990601, 21.325262, 30.908075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.984146, 21.022976, 30.646194>,  <33.980274, 20.841604, 30.489067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.984146, 21.022976, 30.646194>,  <33.990601, 21.325262, 30.908075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984146, 21.022976, 30.646194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068939, -0.652386, 0.754745,
		-0.997490, 0.057314, -0.041570,
		-0.016138, -0.755717, -0.654700,
		33.979305, 20.796261, 30.449785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373650, 20.998711, 31.091320>,  <33.990601, 21.325262, 30.908075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373650, 20.998711, 31.091320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.622684, 20.752262, 30.898331>,  <33.772106, 20.604393, 30.782537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.622684, 20.752262, 30.898331>,  <33.373650, 20.998711, 31.091320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622684, 20.752262, 30.898331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150617, -0.699357, 0.698723,
		-0.767919, -0.362347, -0.528209,
		0.622587, -0.616120, -0.482474,
		33.809460, 20.567427, 30.753590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977409, 20.474064, 30.876295>,  <33.373650, 20.998711, 31.091320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977409, 20.474064, 30.876295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.340508, 20.306797, 30.862854>,  <33.558369, 20.206436, 30.854790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.340508, 20.306797, 30.862854>,  <32.977409, 20.474064, 30.876295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340508, 20.306797, 30.862854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339450, -0.779207, 0.526887,
		-0.246510, -0.466874, -0.849271,
		0.907748, -0.418168, -0.033602,
		33.612831, 20.181347, 30.852774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909676, 19.859722, 30.645597>,  <32.977409, 20.474064, 30.876295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909676, 19.859722, 30.645597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.265717, 19.814491, 30.822201>,  <33.479340, 19.787354, 30.928164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.265717, 19.814491, 30.822201>,  <32.909676, 19.859722, 30.645597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265717, 19.814491, 30.822201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278972, -0.901230, 0.331600,
		0.360405, -0.418327, -0.833733,
		0.890103, -0.113078, 0.441510,
		33.532749, 19.780567, 30.954653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083138, 19.119659, 30.573771>,  <32.909676, 19.859722, 30.645597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083138, 19.119659, 30.573771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.334396, 19.266811, 30.848026>,  <33.485149, 19.355103, 31.012579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.334396, 19.266811, 30.848026>,  <33.083138, 19.119659, 30.573771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334396, 19.266811, 30.848026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038072, -0.865586, 0.499311,
		0.777165, -0.339743, -0.529706,
		0.628144, 0.367880, 0.685638,
		33.522839, 19.377176, 31.053719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697136, 18.672808, 30.666491>,  <33.083138, 19.119659, 30.573771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697136, 18.672808, 30.666491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.674389, 18.868668, 31.014515>,  <33.660740, 18.986183, 31.223330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.674389, 18.868668, 31.014515>,  <33.697136, 18.672808, 30.666491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674389, 18.868668, 31.014515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009685, -0.871702, 0.489940,
		0.998335, 0.019434, 0.054311,
		-0.056864, 0.489650, 0.870063,
		33.657330, 19.015562, 31.275534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236435, 18.316309, 31.083141>,  <33.697136, 18.672808, 30.666491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236435, 18.316309, 31.083141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.941326, 18.491714, 31.288433>,  <33.764263, 18.596958, 31.411608>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.941326, 18.491714, 31.288433>,  <34.236435, 18.316309, 31.083141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941326, 18.491714, 31.288433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287764, -0.892039, 0.348510,
		0.610648, 0.109430, 0.784305,
		-0.737768, 0.438512, 0.513232,
		33.719997, 18.623268, 31.442402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260334, 17.914291, 31.664585>,  <34.236435, 18.316309, 31.083141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260334, 17.914291, 31.664585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.909180, 18.096973, 31.722183>,  <33.698486, 18.206583, 31.756742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.909180, 18.096973, 31.722183>,  <34.260334, 17.914291, 31.664585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909180, 18.096973, 31.722183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324640, -0.788658, 0.522138,
		0.352024, 0.411632, 0.840618,
		-0.877888, 0.456703, 0.143994,
		33.645813, 18.233984, 31.765381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078613, 17.885868, 32.365429>,  <34.260334, 17.914291, 31.664585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078613, 17.885868, 32.365429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.718117, 17.934811, 32.199158>,  <33.501820, 17.964176, 32.099396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.718117, 17.934811, 32.199158>,  <34.078613, 17.885868, 32.365429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718117, 17.934811, 32.199158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374708, -0.701825, 0.605835,
		-0.217601, 0.701763, 0.678365,
		-0.901246, 0.122359, -0.415674,
		33.447742, 17.971518, 32.074455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<30.900444, 31.026846, 22.811529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575140, 30.836857, 22.945999>,  <30.379957, 30.722864, 23.026682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575140, 30.836857, 22.945999>,  <30.900444, 31.026846, 22.811529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575140, 30.836857, 22.945999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579861, -0.613132, 0.536498,
		-0.048701, 0.631246, 0.774052,
		-0.813259, -0.474971, 0.336174,
		30.331161, 30.694366, 23.046852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039028, 30.930969, 23.537521>,  <30.900444, 31.026846, 22.811529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039028, 30.930969, 23.537521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739782, 30.682858, 23.443218>,  <30.560236, 30.533991, 23.386637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739782, 30.682858, 23.443218>,  <31.039028, 30.930969, 23.537521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739782, 30.682858, 23.443218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389861, -0.698356, 0.600256,
		-0.536969, 0.357146, 0.764271,
		-0.748113, -0.620278, -0.235758,
		30.515348, 30.496775, 23.372490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667171, 30.774521, 24.210476>,  <31.039028, 30.930969, 23.537521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667171, 30.774521, 24.210476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637421, 30.474068, 23.948097>,  <30.619570, 30.293795, 23.790670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637421, 30.474068, 23.948097>,  <30.667171, 30.774521, 24.210476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637421, 30.474068, 23.948097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218269, -0.654079, 0.724250,
		-0.973050, -0.089306, 0.212597,
		-0.074375, -0.751135, -0.655945,
		30.615108, 30.248728, 23.751314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411268, 30.265944, 24.668102>,  <30.667171, 30.774521, 24.210476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411268, 30.265944, 24.668102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525759, 30.061386, 24.343990>,  <30.594452, 29.938652, 24.149523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.525759, 30.061386, 24.343990>,  <30.411268, 30.265944, 24.668102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525759, 30.061386, 24.343990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307817, -0.751757, 0.583189,
		-0.907372, -0.416341, -0.057756,
		0.286224, -0.511392, -0.810280,
		30.611626, 29.907969, 24.100906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112085, 29.586363, 24.744389>,  <30.411268, 30.265944, 24.668102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112085, 29.586363, 24.744389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410259, 29.544357, 24.481087>,  <30.589165, 29.519154, 24.323107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.410259, 29.544357, 24.481087>,  <30.112085, 29.586363, 24.744389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410259, 29.544357, 24.481087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329550, -0.800325, 0.500875,
		-0.579414, -0.590298, -0.561985,
		0.745437, -0.105012, -0.658252,
		30.633890, 29.512854, 24.283611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137949, 28.869020, 24.623619>,  <30.112085, 29.586363, 24.744389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137949, 28.869020, 24.623619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485779, 29.043919, 24.531830>,  <30.694477, 29.148857, 24.476755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485779, 29.043919, 24.531830>,  <30.137949, 28.869020, 24.623619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485779, 29.043919, 24.531830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483646, -0.660352, 0.574475,
		0.099654, -0.610532, -0.785697,
		0.869572, 0.437248, -0.229474,
		30.746651, 29.175093, 24.462988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567129, 28.390059, 24.263865>,  <30.137949, 28.869020, 24.623619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567129, 28.390059, 24.263865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782747, 28.649906, 24.478313>,  <30.912117, 28.805815, 24.606983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782747, 28.649906, 24.478313>,  <30.567129, 28.390059, 24.263865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782747, 28.649906, 24.478313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367124, -0.754080, 0.544595,
		0.758058, -0.096737, -0.644973,
		0.539044, 0.649619, 0.536122,
		30.944460, 28.844791, 24.639151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025602, 27.973124, 24.384232>,  <30.567129, 28.390059, 24.263865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025602, 27.973124, 24.384232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146477, 28.270050, 24.623447>,  <31.219002, 28.448206, 24.766977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146477, 28.270050, 24.623447>,  <31.025602, 27.973124, 24.384232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146477, 28.270050, 24.623447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498807, -0.657757, 0.564400,
		0.812328, 0.127753, -0.569036,
		0.302184, 0.742317, 0.598039,
		31.237131, 28.492744, 24.802858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675638, 27.826670, 24.391348>,  <31.025602, 27.973124, 24.384232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675638, 27.826670, 24.391348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631382, 28.086227, 24.692463>,  <31.604828, 28.241962, 24.873133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631382, 28.086227, 24.692463>,  <31.675638, 27.826670, 24.391348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631382, 28.086227, 24.692463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581233, -0.572160, 0.578620,
		0.806181, 0.501564, -0.313856,
		-0.110639, 0.648896, 0.752790,
		31.598190, 28.280897, 24.918301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359150, 28.098497, 24.656351>,  <31.675638, 27.826670, 24.391348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359150, 28.098497, 24.656351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093281, 28.127514, 24.953793>,  <31.933760, 28.144924, 25.132257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093281, 28.127514, 24.953793>,  <32.359150, 28.098497, 24.656351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093281, 28.127514, 24.953793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585482, -0.567712, 0.578717,
		0.464133, 0.820025, 0.334873,
		-0.664674, 0.072539, 0.743604,
		31.893879, 28.149275, 25.176874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808880, 28.116140, 25.237114>,  <32.359150, 28.098497, 24.656351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808880, 28.116140, 25.237114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443638, 28.034466, 25.378281>,  <32.224491, 27.985462, 25.462980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443638, 28.034466, 25.378281>,  <32.808880, 28.116140, 25.237114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443638, 28.034466, 25.378281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389604, -0.692135, 0.607584,
		0.120206, 0.692284, 0.711543,
		-0.913104, -0.204184, 0.352915,
		32.169708, 27.973211, 25.484156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938377, 28.197981, 25.909897>,  <32.808880, 28.116140, 25.237114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938377, 28.197981, 25.909897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621983, 27.958790, 25.858105>,  <32.432144, 27.815275, 25.827030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621983, 27.958790, 25.858105>,  <32.938377, 28.197981, 25.909897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621983, 27.958790, 25.858105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438800, -0.701915, 0.561044,
		-0.426374, 0.386962, 0.817597,
		-0.790986, -0.597976, -0.129479,
		32.384686, 27.779396, 25.819262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565750, 28.402063, 26.580505>,  <32.938377, 28.197981, 25.909897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565750, 28.402063, 26.580505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770420, 28.678944, 26.784092>,  <32.893223, 28.845072, 26.906244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770420, 28.678944, 26.784092>,  <32.565750, 28.402063, 26.580505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770420, 28.678944, 26.784092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272072, 0.692441, -0.668208,
		-0.814964, 0.203429, 0.542632,
		0.511674, 0.692201, 0.508967,
		32.923923, 28.886604, 26.936783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085236, 28.901012, 26.665333>,  <32.565750, 28.402063, 26.580505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085236, 28.901012, 26.665333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404385, 29.118984, 26.768452>,  <32.595875, 29.249767, 26.830324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.404385, 29.118984, 26.768452>,  <32.085236, 28.901012, 26.665333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404385, 29.118984, 26.768452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453445, 0.824298, -0.338999,
		-0.397233, 0.153579, 0.904776,
		0.797868, 0.544927, 0.257799,
		32.643745, 29.282463, 26.845791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878403, 29.550329, 27.028912>,  <32.085236, 28.901012, 26.665333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878403, 29.550329, 27.028912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245663, 29.661751, 26.916191>,  <32.466019, 29.728603, 26.848558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245663, 29.661751, 26.916191>,  <31.878403, 29.550329, 27.028912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245663, 29.661751, 26.916191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313783, 0.945424, -0.087826,
		0.241956, 0.169061, 0.955445,
		0.918149, 0.278552, -0.281800,
		32.521107, 29.745316, 26.831652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982994, 30.092613, 27.439257>,  <31.878403, 29.550329, 27.028912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982994, 30.092613, 27.439257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225624, 30.113911, 27.121960>,  <32.371201, 30.126690, 26.931581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225624, 30.113911, 27.121960>,  <31.982994, 30.092613, 27.439257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225624, 30.113911, 27.121960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321706, 0.928858, -0.183654,
		0.727030, 0.366590, 0.580551,
		0.606575, 0.053245, -0.793241,
		32.407597, 30.129885, 26.883987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210201, 30.801004, 27.444145>,  <31.982994, 30.092613, 27.439257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210201, 30.801004, 27.444145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289986, 30.672527, 27.073837>,  <32.337856, 30.595442, 26.851652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289986, 30.672527, 27.073837>,  <32.210201, 30.801004, 27.444145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289986, 30.672527, 27.073837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176430, 0.917544, -0.356349,
		0.963891, 0.234412, 0.126349,
		0.199464, -0.321190, -0.925770,
		32.349823, 30.576170, 26.796106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635342, 31.289963, 27.192734>,  <32.210201, 30.801004, 27.444145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635342, 31.289963, 27.192734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494274, 31.121876, 26.858299>,  <32.409634, 31.021023, 26.657639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494274, 31.121876, 26.858299>,  <32.635342, 31.289963, 27.192734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494274, 31.121876, 26.858299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145854, 0.907261, -0.394467,
		0.924311, -0.017170, -0.381254,
		-0.352669, -0.420218, -0.836087,
		32.388474, 30.995810, 26.607473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088127, 31.561432, 26.612585>,  <32.635342, 31.289963, 27.192734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088127, 31.561432, 26.612585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739456, 31.436356, 26.461636>,  <32.530254, 31.361309, 26.371067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739456, 31.436356, 26.461636>,  <33.088127, 31.561432, 26.612585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739456, 31.436356, 26.461636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035836, 0.808616, -0.587245,
		0.488776, -0.498362, -0.716054,
		-0.871673, -0.312692, -0.377373,
		32.477955, 31.342548, 26.348423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078541, 31.684013, 25.806423>,  <33.088127, 31.561432, 26.612585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078541, 31.684013, 25.806423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691841, 31.644997, 25.900978>,  <32.459820, 31.621586, 25.957712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691841, 31.644997, 25.900978>,  <33.078541, 31.684013, 25.806423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691841, 31.644997, 25.900978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210292, 0.829219, -0.517854,
		-0.145504, -0.550347, -0.822160,
		-0.966750, -0.097544, 0.236389,
		32.401817, 31.615734, 25.971895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813492, 31.867796, 25.198643>,  <33.078541, 31.684013, 25.806423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813492, 31.867796, 25.198643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535923, 31.894165, 25.485455>,  <32.369381, 31.909986, 25.657541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.535923, 31.894165, 25.485455>,  <32.813492, 31.867796, 25.198643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535923, 31.894165, 25.485455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309646, 0.871702, -0.379808,
		-0.650075, -0.485581, -0.584477,
		-0.693918, 0.065923, 0.717030,
		32.327747, 31.913942, 25.700563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268250, 32.038021, 24.825243>,  <32.813492, 31.867796, 25.198643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268250, 32.038021, 24.825243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170341, 32.145546, 25.197872>,  <32.111595, 32.210060, 25.421450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170341, 32.145546, 25.197872>,  <32.268250, 32.038021, 24.825243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170341, 32.145546, 25.197872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184069, 0.930444, -0.316847,
		-0.951948, -0.249029, -0.178268,
		-0.244773, 0.268808, 0.931573,
		32.096909, 32.226189, 25.477345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796440, 32.578857, 24.810225>,  <32.268250, 32.038021, 24.825243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796440, 32.578857, 24.810225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910475, 32.601654, 25.192947>,  <31.978895, 32.615330, 25.422581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910475, 32.601654, 25.192947>,  <31.796440, 32.578857, 24.810225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910475, 32.601654, 25.192947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293880, 0.955350, 0.030663,
		-0.912337, -0.289928, 0.289106,
		0.285088, 0.056988, 0.956806,
		31.996000, 32.618752, 25.479990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260963, 32.944283, 25.227701>,  <31.796440, 32.578857, 24.810225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260963, 32.944283, 25.227701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602974, 33.005947, 25.425758>,  <31.808180, 33.042946, 25.544594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602974, 33.005947, 25.425758>,  <31.260963, 32.944283, 25.227701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602974, 33.005947, 25.425758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184160, 0.982823, 0.012020,
		-0.484786, -0.101463, 0.868728,
		0.855025, 0.154157, 0.495144,
		31.859482, 33.052193, 25.574301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049417, 33.385609, 25.822250>,  <31.260963, 32.944283, 25.227701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049417, 33.385609, 25.822250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438217, 33.448551, 25.752438>,  <31.671497, 33.486317, 25.710550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.438217, 33.448551, 25.752438>,  <31.049417, 33.385609, 25.822250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438217, 33.448551, 25.752438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152218, 0.987432, 0.042522,
		0.179030, -0.014764, 0.983733,
		0.971997, 0.157355, -0.174532,
		31.729816, 33.495758, 25.700077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267117, 33.990112, 26.265345>,  <31.049417, 33.385609, 25.822250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267117, 33.990112, 26.265345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549829, 33.968697, 25.983185>,  <31.719458, 33.955849, 25.813889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549829, 33.968697, 25.983185>,  <31.267117, 33.990112, 26.265345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549829, 33.968697, 25.983185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186997, 0.947527, -0.259276,
		0.682267, 0.315160, 0.659686,
		0.706784, -0.053536, -0.705401,
		31.761864, 33.952637, 25.771564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524567, 34.455196, 26.756811>,  <31.267117, 33.990112, 26.265345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524567, 34.455196, 26.756811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138924, 34.556740, 26.787933>,  <30.907537, 34.617664, 26.806606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.138924, 34.556740, 26.787933>,  <31.524567, 34.455196, 26.756811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.138924, 34.556740, 26.787933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123509, -0.688191, 0.714939,
		0.235040, 0.679668, 0.694844,
		-0.964107, 0.253859, 0.077807,
		30.849691, 34.632896, 26.811275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386976, 34.682083, 27.421097>,  <31.524567, 34.455196, 26.756811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386976, 34.682083, 27.421097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035156, 34.539692, 27.294811>,  <30.824064, 34.454258, 27.219040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035156, 34.539692, 27.294811>,  <31.386976, 34.682083, 27.421097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035156, 34.539692, 27.294811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039439, -0.606702, 0.793950,
		-0.474171, 0.710770, 0.519585,
		-0.879549, -0.355976, -0.315712,
		30.771292, 34.432899, 27.200098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990082, 34.592571, 28.055885>,  <31.386976, 34.682083, 27.421097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990082, 34.592571, 28.055885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780371, 34.382225, 27.787975>,  <30.654545, 34.256016, 27.627230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780371, 34.382225, 27.787975>,  <30.990082, 34.592571, 28.055885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780371, 34.382225, 27.787975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153732, -0.715163, 0.681842,
		-0.837557, 0.460439, 0.294100,
		-0.524276, -0.525869, -0.669774,
		30.623089, 34.224464, 27.587044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308353, 34.461975, 28.382105>,  <30.990082, 34.592571, 28.055885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308353, 34.461975, 28.382105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357426, 34.198471, 28.085190>,  <30.386869, 34.040371, 27.907042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357426, 34.198471, 28.085190>,  <30.308353, 34.461975, 28.382105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357426, 34.198471, 28.085190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192909, -0.749498, 0.633276,
		-0.973517, 0.065503, -0.219028,
		0.122679, -0.658758, -0.742285,
		30.394230, 34.000843, 27.862505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743864, 33.928684, 28.362747>,  <30.308353, 34.461975, 28.382105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743864, 33.928684, 28.362747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022190, 33.740650, 28.145542>,  <30.189186, 33.627831, 28.015219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022190, 33.740650, 28.145542>,  <29.743864, 33.928684, 28.362747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022190, 33.740650, 28.145542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139437, -0.830081, 0.539928,
		-0.704556, -0.299973, -0.643130,
		0.695814, -0.470086, -0.543012,
		30.230934, 33.599625, 27.982639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465399, 33.242313, 28.254448>,  <29.743864, 33.928684, 28.362747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465399, 33.242313, 28.254448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852810, 33.224136, 28.156559>,  <30.085257, 33.213230, 28.097826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852810, 33.224136, 28.156559>,  <29.465399, 33.242313, 28.254448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852810, 33.224136, 28.156559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044391, -0.935891, 0.349480,
		-0.244916, -0.349345, -0.904419,
		0.968527, -0.045445, -0.244722,
		30.143368, 33.210503, 28.083141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500456, 32.615761, 28.002474>,  <29.465399, 33.242313, 28.254448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500456, 32.615761, 28.002474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870474, 32.713249, 28.119015>,  <30.092485, 32.771744, 28.188940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870474, 32.713249, 28.119015>,  <29.500456, 32.615761, 28.002474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870474, 32.713249, 28.119015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134455, -0.927452, 0.348934,
		0.355260, -0.283607, -0.890706,
		0.925047, 0.243722, 0.291354,
		30.147987, 32.786366, 28.206421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907772, 31.886871, 27.892948>,  <29.500456, 32.615761, 28.002474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907772, 31.886871, 27.892948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119318, 32.108913, 28.149746>,  <30.246244, 32.242138, 28.303825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.119318, 32.108913, 28.149746>,  <29.907772, 31.886871, 27.892948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119318, 32.108913, 28.149746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252356, -0.825081, 0.505527,
		0.810320, -0.105343, -0.576440,
		0.528864, 0.555107, 0.641996,
		30.277977, 32.275444, 28.342344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513216, 31.459337, 28.085567>,  <29.907772, 31.886871, 27.892948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513216, 31.459337, 28.085567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498562, 31.757957, 28.351295>,  <30.489769, 31.937130, 28.510733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498562, 31.757957, 28.351295>,  <30.513216, 31.459337, 28.085567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498562, 31.757957, 28.351295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422576, -0.590836, 0.687272,
		0.905587, 0.305904, -0.293828,
		-0.036635, 0.746549, 0.664321,
		30.487572, 31.981922, 28.550592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234121, 31.545437, 28.448881>,  <30.513216, 31.459337, 28.085567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234121, 31.545437, 28.448881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968395, 31.730522, 28.683685>,  <30.808960, 31.841574, 28.824568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.968395, 31.730522, 28.683685>,  <31.234121, 31.545437, 28.448881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968395, 31.730522, 28.683685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376208, -0.471631, 0.797516,
		0.645873, 0.750641, 0.139236,
		-0.664316, 0.462713, 0.587010,
		30.769100, 31.869335, 28.859789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654963, 31.828667, 28.991014>,  <31.234121, 31.545437, 28.448881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654963, 31.828667, 28.991014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274647, 31.759216, 29.093662>,  <31.046457, 31.717546, 29.155251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274647, 31.759216, 29.093662>,  <31.654963, 31.828667, 28.991014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274647, 31.759216, 29.093662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309698, -0.557638, 0.770148,
		0.009384, 0.811723, 0.583967,
		-0.950789, -0.173627, 0.256621,
		30.989410, 31.707129, 29.170649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729240, 31.905170, 29.728586>,  <31.654963, 31.828667, 28.991014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729240, 31.905170, 29.728586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377127, 31.716694, 29.706402>,  <31.165857, 31.603607, 29.693090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377127, 31.716694, 29.706402>,  <31.729240, 31.905170, 29.728586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377127, 31.716694, 29.706402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257481, -0.572645, 0.778320,
		-0.398497, 0.670863, 0.625414,
		-0.880286, -0.471191, -0.055463,
		31.113041, 31.575336, 29.689762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554852, 31.871786, 30.429399>,  <31.729240, 31.905170, 29.728586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554852, 31.871786, 30.429399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334879, 31.606064, 30.226906>,  <31.202896, 31.446630, 30.105410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334879, 31.606064, 30.226906>,  <31.554852, 31.871786, 30.429399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334879, 31.606064, 30.226906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077562, -0.644116, 0.760986,
		-0.831602, 0.379224, 0.405743,
		-0.549930, -0.664307, -0.506234,
		31.169901, 31.406773, 30.075035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134573, 31.467081, 31.012476>,  <31.554852, 31.871786, 30.429399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134573, 31.467081, 31.012476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134724, 31.243374, 30.680882>,  <31.134815, 31.109150, 30.481924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134724, 31.243374, 30.680882>,  <31.134573, 31.467081, 31.012476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134724, 31.243374, 30.680882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041676, -0.828258, 0.558796,
		-0.999131, -0.034760, 0.022994,
		0.000379, -0.559268, -0.828987,
		31.134838, 31.075594, 30.432186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665524, 30.885122, 31.122433>,  <31.134573, 31.467081, 31.012476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665524, 30.885122, 31.122433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909813, 30.744099, 30.838821>,  <31.056387, 30.659485, 30.668655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.909813, 30.744099, 30.838821>,  <30.665524, 30.885122, 31.122433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.909813, 30.744099, 30.838821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224678, -0.781457, 0.582104,
		-0.759303, -0.514805, -0.398038,
		0.610720, -0.352563, -0.709028,
		31.093029, 30.638330, 30.626114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635380, 30.162010, 31.199041>,  <30.665524, 30.885122, 31.122433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635380, 30.162010, 31.199041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963196, 30.209690, 30.974846>,  <31.159885, 30.238298, 30.840328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963196, 30.209690, 30.974846>,  <30.635380, 30.162010, 31.199041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963196, 30.209690, 30.974846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376594, -0.849265, 0.370035,
		-0.431896, -0.514335, -0.740894,
		0.819538, 0.119200, -0.560490,
		31.209057, 30.245451, 30.806700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.741186, 29.579226, 30.886927>,  <30.635380, 30.162010, 31.199041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.741186, 29.579226, 30.886927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111256, 29.729824, 30.867733>,  <31.333298, 29.820183, 30.856216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111256, 29.729824, 30.867733>,  <30.741186, 29.579226, 30.886927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111256, 29.729824, 30.867733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371136, -0.870972, 0.321972,
		0.079429, -0.315689, -0.945533,
		0.925175, 0.376495, -0.047983,
		31.388807, 29.842773, 30.853338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183657, 29.069065, 30.501444>,  <30.741186, 29.579226, 30.886927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183657, 29.069065, 30.501444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434589, 29.299961, 30.710537>,  <31.585148, 29.438499, 30.835993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.434589, 29.299961, 30.710537>,  <31.183657, 29.069065, 30.501444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434589, 29.299961, 30.710537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293887, -0.797092, 0.527518,
		0.721171, -0.177304, -0.669684,
		0.627330, 0.577242, 0.522732,
		31.622789, 29.473133, 30.867357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775726, 28.766169, 30.385506>,  <31.183657, 29.069065, 30.501444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775726, 28.766169, 30.385506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817335, 28.988510, 30.715405>,  <31.842300, 29.121914, 30.913343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817335, 28.988510, 30.715405>,  <31.775726, 28.766169, 30.385506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817335, 28.988510, 30.715405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428447, -0.773401, 0.467208,
		0.897559, 0.304761, -0.318604,
		0.104022, 0.555852, 0.824748,
		31.848541, 29.155266, 30.962830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445107, 28.564888, 30.639498>,  <31.775726, 28.766169, 30.385506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445107, 28.564888, 30.639498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252281, 28.716499, 30.955460>,  <32.136585, 28.807467, 31.145037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252281, 28.716499, 30.955460>,  <32.445107, 28.564888, 30.639498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252281, 28.716499, 30.955460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223050, -0.818781, 0.529005,
		0.847267, 0.431203, 0.310165,
		-0.482065, 0.379026, 0.789906,
		32.107662, 28.830208, 31.192432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731705, 28.177813, 31.296478>,  <32.445107, 28.564888, 30.639498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731705, 28.177813, 31.296478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413944, 28.365368, 31.450916>,  <32.223289, 28.477901, 31.543579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413944, 28.365368, 31.450916>,  <32.731705, 28.177813, 31.296478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413944, 28.365368, 31.450916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095720, -0.724359, 0.682746,
		0.599805, 0.505416, 0.620314,
		-0.794400, 0.468890, 0.386095,
		32.175625, 28.506035, 31.566746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840595, 28.250137, 32.003895>,  <32.731705, 28.177813, 31.296478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840595, 28.250137, 32.003895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443451, 28.252613, 31.956253>,  <32.205162, 28.254099, 31.927670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443451, 28.252613, 31.956253>,  <32.840595, 28.250137, 32.003895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443451, 28.252613, 31.956253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096730, -0.625922, 0.773864,
		-0.069759, 0.779861, 0.622053,
		-0.992863, 0.006187, -0.119100,
		32.145592, 28.254469, 31.920523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527386, 28.138817, 32.691105>,  <32.840595, 28.250137, 32.003895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527386, 28.138817, 32.691105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187153, 28.074646, 32.490795>,  <31.983013, 28.036144, 32.370609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187153, 28.074646, 32.490795>,  <32.527386, 28.138817, 32.691105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187153, 28.074646, 32.490795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288424, -0.653956, 0.699395,
		-0.439688, 0.739327, 0.509971,
		-0.850580, -0.160427, -0.500776,
		31.931978, 28.026518, 32.340561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007874, 28.096516, 33.198917>,  <32.527386, 28.138817, 32.691105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007874, 28.096516, 33.198917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861929, 27.911327, 32.875797>,  <31.774363, 27.800215, 32.681927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861929, 27.911327, 32.875797>,  <32.007874, 28.096516, 33.198917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861929, 27.911327, 32.875797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516544, -0.621187, 0.589330,
		-0.774634, 0.632286, -0.012497,
		-0.364862, -0.462970, -0.807796,
		31.752470, 27.772436, 32.633457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296881, 27.934950, 33.369991>,  <32.007874, 28.096516, 33.198917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296881, 27.934950, 33.369991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420401, 27.705486, 33.066528>,  <31.494513, 27.567808, 32.884453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420401, 27.705486, 33.066528>,  <31.296881, 27.934950, 33.369991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420401, 27.705486, 33.066528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547253, -0.759542, 0.351581,
		-0.777918, 0.306608, -0.548484,
		0.308799, -0.573661, -0.758654,
		31.513041, 27.533388, 32.838932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728302, 27.454718, 33.059231>,  <31.296881, 27.934950, 33.369991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728302, 27.454718, 33.059231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077904, 27.296539, 32.946278>,  <31.287664, 27.201632, 32.878506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077904, 27.296539, 32.946278>,  <30.728302, 27.454718, 33.059231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077904, 27.296539, 32.946278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276274, -0.882465, 0.380695,
		-0.399739, -0.254713, -0.880528,
		0.874003, -0.395446, -0.282386,
		31.340105, 27.177906, 32.861561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547968, 26.743681, 32.865433>,  <30.728302, 27.454718, 33.059231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547968, 26.743681, 32.865433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939419, 26.706676, 32.938900>,  <31.174290, 26.684473, 32.982979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939419, 26.706676, 32.938900>,  <30.547968, 26.743681, 32.865433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939419, 26.706676, 32.938900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162977, -0.893562, 0.418311,
		0.125419, -0.439304, -0.889540,
		0.978626, -0.092511, 0.183667,
		31.233007, 26.678923, 32.993999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691021, 26.122017, 32.556919>,  <30.547968, 26.743681, 32.865433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691021, 26.122017, 32.556919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981249, 26.173573, 32.827309>,  <31.155386, 26.204506, 32.989540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.981249, 26.173573, 32.827309>,  <30.691021, 26.122017, 32.556919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981249, 26.173573, 32.827309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127319, -0.940200, 0.315933,
		0.676267, -0.315295, -0.665771,
		0.725571, 0.128890, 0.675970,
		31.198919, 26.212240, 33.030098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248262, 25.552666, 32.228615>,  <30.691021, 26.122017, 32.556919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248262, 25.552666, 32.228615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867262, 25.433281, 32.204411>,  <29.638662, 25.361650, 32.189888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.867262, 25.433281, 32.204411>,  <30.248262, 25.552666, 32.228615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867262, 25.433281, 32.204411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213376, 0.795835, -0.566672,
		0.217285, -0.526845, -0.821719,
		-0.952501, -0.298464, -0.060507,
		29.581512, 25.343742, 32.186256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067917, 25.564173, 31.508362>,  <30.248262, 25.552666, 32.228615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067917, 25.564173, 31.508362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726255, 25.592941, 31.714371>,  <29.521259, 25.610203, 31.837976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.726255, 25.592941, 31.714371>,  <30.067917, 25.564173, 31.508362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726255, 25.592941, 31.714371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217005, 0.850736, -0.478703,
		-0.472577, -0.520649, -0.711052,
		-0.854154, 0.071922, 0.515022,
		29.470009, 25.614517, 31.868877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523874, 25.860584, 31.016027>,  <30.067917, 25.564173, 31.508362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523874, 25.860584, 31.016027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401913, 25.915165, 31.393051>,  <29.328735, 25.947912, 31.619265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401913, 25.915165, 31.393051>,  <29.523874, 25.860584, 31.016027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401913, 25.915165, 31.393051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402465, 0.878511, -0.257370,
		-0.863165, -0.457820, -0.212947,
		-0.304905, 0.136449, 0.942558,
		29.310442, 25.956100, 31.675817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837074, 26.008457, 30.905809>,  <29.523874, 25.860584, 31.016027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837074, 26.008457, 30.905809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937197, 26.173599, 31.256100>,  <28.997271, 26.272684, 31.466274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937197, 26.173599, 31.256100>,  <28.837074, 26.008457, 30.905809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937197, 26.173599, 31.256100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204980, 0.906615, -0.368827,
		-0.946219, -0.087187, 0.311557,
		0.250305, 0.412854, 0.875728,
		29.012289, 26.297455, 31.518818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257456, 26.348017, 31.098003>,  <28.837074, 26.008457, 30.905809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257456, 26.348017, 31.098003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547827, 26.523510, 31.309868>,  <28.722050, 26.628805, 31.436987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547827, 26.523510, 31.309868>,  <28.257456, 26.348017, 31.098003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547827, 26.523510, 31.309868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414067, 0.893699, -0.172772,
		-0.549158, -0.093895, 0.830427,
		0.725929, 0.438732, 0.529661,
		28.765606, 26.655130, 31.468765>
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
