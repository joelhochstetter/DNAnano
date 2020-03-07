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
	location <44.88, 44.88, 200.277>
	look_at <44.88, 44.88, 44.88>
	direction <0, 0, -155.397>
	angle 67.0682
}


# declare cpy_camera_pos = <44.88, 44.88, 200.277>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 71.808
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
	<40.608959, 45.415749, 57.617397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944656, 45.631023, 57.586342>,  <41.146076, 45.760189, 57.567707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.944656, 45.631023, 57.586342>,  <40.608959, 45.415749, 57.617397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944656, 45.631023, 57.586342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145831, 0.085213, -0.985633,
		-0.523836, 0.838509, 0.149999,
		0.839243, 0.538184, -0.077642,
		41.196430, 45.792480, 57.563049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428013, 46.033901, 57.161716>,  <40.608959, 45.415749, 57.617397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428013, 46.033901, 57.161716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817558, 45.947876, 57.132473>,  <41.051285, 45.896259, 57.114925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817558, 45.947876, 57.132473>,  <40.428013, 46.033901, 57.161716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817558, 45.947876, 57.132473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063081, 0.053132, -0.996593,
		0.218219, 0.975153, 0.038177,
		0.973859, -0.215067, -0.073108,
		41.109715, 45.883354, 57.110542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719940, 46.617325, 56.766617>,  <40.428013, 46.033901, 57.161716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.719940, 46.617325, 56.766617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004547, 46.338608, 56.730339>,  <41.175312, 46.171375, 56.708572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004547, 46.338608, 56.730339>,  <40.719940, 46.617325, 56.766617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004547, 46.338608, 56.730339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017793, 0.146896, -0.988992,
		0.702448, 0.702066, 0.116916,
		0.711513, -0.696796, -0.090694,
		41.218002, 46.129570, 56.703129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252934, 46.847153, 56.397469>,  <40.719940, 46.617325, 56.766617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252934, 46.847153, 56.397469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316460, 46.456108, 56.342262>,  <41.354576, 46.221481, 56.309139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316460, 46.456108, 56.342262>,  <41.252934, 46.847153, 56.397469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316460, 46.456108, 56.342262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136778, 0.160232, -0.977557,
		0.977788, 0.136374, 0.159164,
		0.158817, -0.977613, -0.138020,
		41.364105, 46.162823, 56.300858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710037, 46.801605, 55.769611>,  <41.252934, 46.847153, 56.397469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710037, 46.801605, 55.769611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587379, 46.423134, 55.811020>,  <41.513786, 46.196053, 55.835865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587379, 46.423134, 55.811020>,  <41.710037, 46.801605, 55.769611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587379, 46.423134, 55.811020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231177, -0.179537, -0.956203,
		0.923323, -0.269283, 0.273789,
		-0.306645, -0.946178, 0.103519,
		41.495384, 46.139282, 55.842075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166275, 46.470581, 55.366371>,  <41.710037, 46.801605, 55.769611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166275, 46.470581, 55.366371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861549, 46.214539, 55.406178>,  <41.678715, 46.060913, 55.430061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.861549, 46.214539, 55.406178>,  <42.166275, 46.470581, 55.366371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.861549, 46.214539, 55.406178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211317, -0.390788, -0.895896,
		0.612356, -0.661479, 0.432973,
		-0.761817, -0.640102, 0.099519,
		41.633003, 46.022507, 55.436035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474396, 45.874352, 55.194839>,  <42.166275, 46.470581, 55.366371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.474396, 45.874352, 55.194839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079308, 45.830376, 55.150452>,  <41.842255, 45.803989, 55.123817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.079308, 45.830376, 55.150452>,  <42.474396, 45.874352, 55.194839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.079308, 45.830376, 55.150452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138611, -0.289284, -0.947154,
		0.072024, -0.950909, 0.300972,
		-0.987724, -0.109936, -0.110971,
		41.782990, 45.797394, 55.117161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461426, 45.231293, 54.923149>,  <42.474396, 45.874352, 55.194839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461426, 45.231293, 54.923149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106400, 45.391853, 54.832718>,  <41.893383, 45.488190, 54.778458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106400, 45.391853, 54.832718>,  <42.461426, 45.231293, 54.923149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106400, 45.391853, 54.832718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049435, -0.404925, -0.913012,
		-0.458030, -0.821530, 0.339553,
		-0.887561, 0.401401, -0.226080,
		41.840130, 45.512272, 54.764893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082687, 44.737526, 54.562435>,  <42.461426, 45.231293, 54.923149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082687, 44.737526, 54.562435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890854, 45.070988, 54.452873>,  <41.775753, 45.271065, 54.387138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890854, 45.070988, 54.452873>,  <42.082687, 44.737526, 54.562435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890854, 45.070988, 54.452873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036664, -0.330904, -0.942952,
		-0.876731, -0.442180, 0.189260,
		-0.479582, 0.833654, -0.273901,
		41.746979, 45.321083, 54.370705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535820, 44.485558, 54.150902>,  <42.082687, 44.737526, 54.562435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535820, 44.485558, 54.150902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570999, 44.874714, 54.065342>,  <41.592106, 45.108208, 54.014008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570999, 44.874714, 54.065342>,  <41.535820, 44.485558, 54.150902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570999, 44.874714, 54.065342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016431, -0.213286, -0.976852,
		-0.995990, 0.089426, -0.002772,
		0.087947, 0.972889, -0.213900,
		41.597382, 45.166580, 54.001171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034115, 44.649536, 53.567947>,  <41.535820, 44.485558, 54.150902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034115, 44.649536, 53.567947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334213, 44.912994, 53.590965>,  <41.514271, 45.071072, 53.604774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.334213, 44.912994, 53.590965>,  <41.034115, 44.649536, 53.567947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334213, 44.912994, 53.590965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061778, 0.016814, -0.997948,
		-0.658265, 0.752262, -0.028075,
		0.750247, 0.658649, 0.057541,
		41.559288, 45.110588, 53.608227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786327, 45.151962, 53.104515>,  <41.034115, 44.649536, 53.567947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786327, 45.151962, 53.104515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179398, 45.198975, 53.161842>,  <41.415237, 45.227180, 53.196239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179398, 45.198975, 53.161842>,  <40.786327, 45.151962, 53.104515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179398, 45.198975, 53.161842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121528, 0.175271, -0.976991,
		-0.139946, 0.977480, 0.157951,
		0.982673, 0.117530, 0.143319,
		41.474201, 45.234234, 53.204838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849701, 45.739361, 52.701405>,  <40.786327, 45.151962, 53.104515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849701, 45.739361, 52.701405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214020, 45.581867, 52.751076>,  <41.432610, 45.487370, 52.780880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214020, 45.581867, 52.751076>,  <40.849701, 45.739361, 52.701405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214020, 45.581867, 52.751076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175669, 0.097393, -0.979620,
		0.373620, 0.914048, 0.157873,
		0.910796, -0.393739, 0.124182,
		41.487259, 45.463745, 52.788330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350937, 46.114269, 52.264309>,  <40.849701, 45.739361, 52.701405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350937, 46.114269, 52.264309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519585, 45.760056, 52.342354>,  <41.620773, 45.547527, 52.389183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519585, 45.760056, 52.342354>,  <41.350937, 46.114269, 52.264309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519585, 45.760056, 52.342354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249948, -0.093346, -0.963749,
		0.871643, 0.455107, 0.181980,
		0.421622, -0.885530, 0.195117,
		41.646072, 45.494396, 52.400890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029881, 46.201473, 51.932224>,  <41.350937, 46.114269, 52.264309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029881, 46.201473, 51.932224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953323, 45.812572, 51.986023>,  <41.907391, 45.579231, 52.018303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.953323, 45.812572, 51.986023>,  <42.029881, 46.201473, 51.932224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953323, 45.812572, 51.986023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515715, -0.216204, -0.829032,
		0.835110, -0.089305, 0.542785,
		-0.191389, -0.972255, 0.134498,
		41.895908, 45.520897, 52.026371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703007, 45.892872, 51.838863>,  <42.029881, 46.201473, 51.932224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703007, 45.892872, 51.838863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416969, 45.617638, 51.789593>,  <42.245346, 45.452496, 51.760029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416969, 45.617638, 51.789593>,  <42.703007, 45.892872, 51.838863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416969, 45.617638, 51.789593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456058, -0.325697, -0.828211,
		0.529760, -0.648429, 0.546712,
		-0.715098, -0.688085, -0.123180,
		42.202438, 45.411213, 51.752640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063004, 45.387066, 51.603188>,  <42.703007, 45.892872, 51.838863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063004, 45.387066, 51.603188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690964, 45.290447, 51.492500>,  <42.467739, 45.232475, 51.426086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690964, 45.290447, 51.492500>,  <43.063004, 45.387066, 51.603188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690964, 45.290447, 51.492500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355683, -0.404210, -0.842676,
		0.091697, -0.882195, 0.461870,
		-0.930097, -0.241550, -0.276717,
		42.411934, 45.217983, 51.409485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134075, 44.659321, 51.551746>,  <43.063004, 45.387066, 51.603188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134075, 44.659321, 51.551746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809952, 44.767212, 51.343655>,  <42.615479, 44.831947, 51.218800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809952, 44.767212, 51.343655>,  <43.134075, 44.659321, 51.551746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809952, 44.767212, 51.343655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420071, -0.351618, -0.836604,
		-0.408575, -0.896446, 0.171618,
		-0.810313, 0.269724, -0.520233,
		42.566856, 44.848129, 51.187584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.910965, 44.101219, 51.182461>,  <43.134075, 44.659321, 51.551746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.910965, 44.101219, 51.182461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764206, 44.415138, 50.982666>,  <42.676151, 44.603489, 50.862789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.764206, 44.415138, 50.982666>,  <42.910965, 44.101219, 51.182461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.764206, 44.415138, 50.982666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342982, -0.384980, -0.856827,
		-0.864723, -0.485685, -0.127920,
		-0.366902, 0.784793, -0.499483,
		42.654137, 44.650578, 50.832821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587280, 43.818810, 50.510433>,  <42.910965, 44.101219, 51.182461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587280, 43.818810, 50.510433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632858, 44.212349, 50.455223>,  <42.660206, 44.448475, 50.422096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632858, 44.212349, 50.455223>,  <42.587280, 43.818810, 50.510433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632858, 44.212349, 50.455223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027799, -0.142032, -0.989472,
		-0.993098, 0.108905, -0.043534,
		0.113941, 0.983853, -0.138025,
		42.667042, 44.507504, 50.413815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131065, 44.019020, 49.974419>,  <42.587280, 43.818810, 50.510433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131065, 44.019020, 49.974419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425171, 44.289986, 49.983360>,  <42.601635, 44.452564, 49.988724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.425171, 44.289986, 49.983360>,  <42.131065, 44.019020, 49.974419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425171, 44.289986, 49.983360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037189, -0.007390, -0.999281,
		-0.676764, 0.735563, -0.030625,
		0.735260, 0.677416, 0.022354,
		42.645748, 44.493210, 49.990067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939480, 44.450165, 49.422585>,  <42.131065, 44.019020, 49.974419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939480, 44.450165, 49.422585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331795, 44.510441, 49.472153>,  <42.567184, 44.546608, 49.501892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331795, 44.510441, 49.472153>,  <41.939480, 44.450165, 49.422585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331795, 44.510441, 49.472153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113046, 0.078742, -0.990465,
		-0.159014, 0.985440, 0.060194,
		0.980783, 0.150693, 0.123922,
		42.626030, 44.555649, 49.509331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.048283, 44.953369, 49.025074>,  <41.939480, 44.450165, 49.422585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.048283, 44.953369, 49.025074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408875, 44.786293, 49.070450>,  <42.625229, 44.686047, 49.097675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408875, 44.786293, 49.070450>,  <42.048283, 44.953369, 49.025074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408875, 44.786293, 49.070450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122538, -0.005065, -0.992451,
		0.415109, 0.908576, 0.046616,
		0.901481, -0.417688, 0.113438,
		42.679317, 44.660988, 49.104481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510628, 45.341087, 48.607613>,  <42.048283, 44.953369, 49.025074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510628, 45.341087, 48.607613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740799, 45.020161, 48.671078>,  <42.878902, 44.827606, 48.709156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740799, 45.020161, 48.671078>,  <42.510628, 45.341087, 48.607613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740799, 45.020161, 48.671078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391103, 0.099567, -0.914945,
		0.718274, 0.588542, 0.371080,
		0.575431, -0.802312, 0.158664,
		42.913429, 44.779469, 48.718678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229923, 45.544338, 48.414787>,  <42.510628, 45.341087, 48.607613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229923, 45.544338, 48.414787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238953, 45.144455, 48.411362>,  <43.244370, 44.904526, 48.409306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238953, 45.144455, 48.411362>,  <43.229923, 45.544338, 48.414787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238953, 45.144455, 48.411362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562003, 0.019776, -0.826898,
		0.826827, 0.013852, 0.562286,
		0.022574, -0.999708, -0.008566,
		43.245724, 44.844543, 48.408791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968964, 45.374805, 48.225094>,  <43.229923, 45.544338, 48.414787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968964, 45.374805, 48.225094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739006, 45.053795, 48.161282>,  <43.601032, 44.861191, 48.122993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739006, 45.053795, 48.161282>,  <43.968964, 45.374805, 48.225094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739006, 45.053795, 48.161282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397184, -0.103252, -0.911912,
		0.715359, -0.587618, 0.378109,
		-0.574896, -0.802524, -0.159530,
		43.566536, 44.813038, 48.113422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451344, 44.825603, 47.923019>,  <43.968964, 45.374805, 48.225094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.451344, 44.825603, 47.923019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075005, 44.739571, 47.818291>,  <43.849201, 44.687950, 47.755455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.075005, 44.739571, 47.818291>,  <44.451344, 44.825603, 47.923019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075005, 44.739571, 47.818291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285672, -0.087979, -0.954280,
		0.182212, -0.972625, 0.144217,
		-0.940845, -0.215080, -0.261822,
		43.792751, 44.675045, 47.739746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523663, 44.272053, 47.447502>,  <44.451344, 44.825603, 47.923019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523663, 44.272053, 47.447502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147713, 44.389801, 47.378239>,  <43.922142, 44.460449, 47.336681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.147713, 44.389801, 47.378239>,  <44.523663, 44.272053, 47.447502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147713, 44.389801, 47.378239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085712, -0.287465, -0.953948,
		-0.330600, -0.911430, 0.244948,
		-0.939871, 0.294380, -0.173157,
		43.865749, 44.478115, 47.326294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309772, 43.818977, 46.988701>,  <44.523663, 44.272053, 47.447502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309772, 43.818977, 46.988701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072929, 44.140457, 46.965134>,  <43.930824, 44.333344, 46.950993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.072929, 44.140457, 46.965134>,  <44.309772, 43.818977, 46.988701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072929, 44.140457, 46.965134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024301, -0.090890, -0.995564,
		-0.805491, -0.588051, 0.073347,
		-0.592109, 0.803701, -0.058921,
		43.895298, 44.381569, 46.947456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822777, 43.652073, 46.520134>,  <44.309772, 43.818977, 46.988701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822777, 43.652073, 46.520134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821465, 44.052055, 46.516594>,  <43.820679, 44.292046, 46.514469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821465, 44.052055, 46.516594>,  <43.822777, 43.652073, 46.520134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821465, 44.052055, 46.516594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202042, -0.009332, -0.979333,
		-0.979371, -0.001425, 0.202064,
		-0.003282, 0.999956, -0.008851,
		43.820480, 44.352043, 46.513939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213650, 43.893089, 46.110123>,  <43.822777, 43.652073, 46.520134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213650, 43.893089, 46.110123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453156, 44.213432, 46.105911>,  <43.596859, 44.405636, 46.103386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453156, 44.213432, 46.105911>,  <43.213650, 43.893089, 46.110123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453156, 44.213432, 46.105911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121748, 0.078018, -0.989490,
		-0.791617, 0.593754, 0.144217,
		0.598765, 0.800855, -0.010527,
		43.632786, 44.453690, 46.102753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916584, 44.348652, 45.650196>,  <43.213650, 43.893089, 46.110123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916584, 44.348652, 45.650196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282539, 44.510071, 45.654823>,  <43.502113, 44.606922, 45.657600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.282539, 44.510071, 45.654823>,  <42.916584, 44.348652, 45.650196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282539, 44.510071, 45.654823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078912, 0.206856, -0.975184,
		-0.395921, 0.891271, 0.221094,
		0.914888, 0.403543, 0.011566,
		43.557007, 44.631134, 45.658295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887760, 44.983295, 45.407139>,  <42.916584, 44.348652, 45.650196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887760, 44.983295, 45.407139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275414, 44.900860, 45.353020>,  <43.508007, 44.851398, 45.320549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275414, 44.900860, 45.353020>,  <42.887760, 44.983295, 45.407139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275414, 44.900860, 45.353020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045241, 0.390800, -0.919363,
		0.242344, 0.897108, 0.369415,
		0.969135, -0.206089, -0.135294,
		43.566154, 44.839031, 45.312431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.145439, 45.626579, 45.085472>,  <42.887760, 44.983295, 45.407139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.145439, 45.626579, 45.085472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409401, 45.331470, 45.028603>,  <43.567780, 45.154404, 44.994480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409401, 45.331470, 45.028603>,  <43.145439, 45.626579, 45.085472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409401, 45.331470, 45.028603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013187, 0.177823, -0.983974,
		0.751233, 0.651205, 0.107617,
		0.659905, -0.737775, -0.142174,
		43.607372, 45.110138, 44.985950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716255, 45.948215, 44.845764>,  <43.145439, 45.626579, 45.085472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716255, 45.948215, 44.845764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725075, 45.564728, 44.732368>,  <43.730366, 45.334633, 44.664330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.725075, 45.564728, 44.732368>,  <43.716255, 45.948215, 44.845764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725075, 45.564728, 44.732368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008500, 0.283367, -0.958974,
		0.999721, 0.023552, -0.001901,
		0.022047, -0.958722, -0.283488,
		43.731689, 45.277111, 44.647324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275673, 45.842175, 44.370617>,  <43.716255, 45.948215, 44.845764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275673, 45.842175, 44.370617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017189, 45.546726, 44.293819>,  <43.862099, 45.369457, 44.247742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.017189, 45.546726, 44.293819>,  <44.275673, 45.842175, 44.370617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017189, 45.546726, 44.293819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088264, 0.177558, -0.980144,
		0.758041, -0.650322, -0.049546,
		-0.646206, -0.738617, -0.191997,
		43.823326, 45.325142, 44.236221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551170, 45.396591, 43.869717>,  <44.275673, 45.842175, 44.370617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551170, 45.396591, 43.869717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160866, 45.323185, 43.822029>,  <43.926682, 45.279140, 43.793415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160866, 45.323185, 43.822029>,  <44.551170, 45.396591, 43.869717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160866, 45.323185, 43.822029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044981, 0.364965, -0.929934,
		0.214166, -0.912756, -0.347864,
		-0.975761, -0.183513, -0.119220,
		43.868137, 45.268131, 43.786263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543087, 45.170391, 43.217762>,  <44.551170, 45.396591, 43.869717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543087, 45.170391, 43.217762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148888, 45.214867, 43.269035>,  <43.912369, 45.241550, 43.299801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.148888, 45.214867, 43.269035>,  <44.543087, 45.170391, 43.217762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.148888, 45.214867, 43.269035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079331, 0.365872, -0.927278,
		-0.150000, -0.924000, -0.351745,
		-0.985498, 0.111187, 0.128183,
		43.853237, 45.248222, 43.307491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252254, 44.931820, 42.577198>,  <44.543087, 45.170391, 43.217762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252254, 44.931820, 42.577198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.978638, 45.168839, 42.747360>,  <43.814468, 45.311050, 42.849457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.978638, 45.168839, 42.747360>,  <44.252254, 44.931820, 42.577198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.978638, 45.168839, 42.747360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183614, 0.424548, -0.886592,
		-0.705957, -0.684575, -0.181607,
		-0.684040, 0.592551, 0.425410,
		43.773426, 45.346603, 42.874985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553341, 44.868492, 42.147945>,  <44.252254, 44.931820, 42.577198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553341, 44.868492, 42.147945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518394, 45.218571, 42.338268>,  <43.497429, 45.428619, 42.452461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518394, 45.218571, 42.338268>,  <43.553341, 44.868492, 42.147945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518394, 45.218571, 42.338268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351729, 0.419771, -0.836708,
		-0.932017, -0.240451, 0.271161,
		-0.087362, 0.875201, 0.475807,
		43.492188, 45.481133, 42.481010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864517, 45.065742, 42.082733>,  <43.553341, 44.868492, 42.147945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864517, 45.065742, 42.082733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084564, 45.395790, 42.134193>,  <43.216591, 45.593819, 42.165070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.084564, 45.395790, 42.134193>,  <42.864517, 45.065742, 42.082733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084564, 45.395790, 42.134193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396776, 0.393813, -0.829144,
		-0.734808, 0.405078, 0.544030,
		0.550114, 0.825120, 0.128651,
		43.249599, 45.643326, 42.172791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398323, 45.552277, 41.836967>,  <42.864517, 45.065742, 42.082733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398323, 45.552277, 41.836967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739265, 45.761459, 41.836250>,  <42.943832, 45.886971, 41.835819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739265, 45.761459, 41.836250>,  <42.398323, 45.552277, 41.836967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739265, 45.761459, 41.836250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194833, 0.314361, -0.929095,
		-0.485313, 0.792271, 0.369837,
		0.852357, 0.522958, -0.001797,
		42.994972, 45.918346, 41.835712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282589, 46.278755, 41.566898>,  <42.398323, 45.552277, 41.836967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282589, 46.278755, 41.566898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680298, 46.245560, 41.539936>,  <42.918922, 46.225643, 41.523758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680298, 46.245560, 41.539936>,  <42.282589, 46.278755, 41.566898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680298, 46.245560, 41.539936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047267, 0.224334, -0.973365,
		0.095902, 0.970972, 0.219126,
		0.994268, -0.082990, -0.067409,
		42.978577, 46.220661, 41.519714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510502, 46.943871, 41.252865>,  <42.282589, 46.278755, 41.566898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510502, 46.943871, 41.252865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788643, 46.661888, 41.196991>,  <42.955528, 46.492699, 41.163467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788643, 46.661888, 41.196991>,  <42.510502, 46.943871, 41.252865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788643, 46.661888, 41.196991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050918, 0.242209, -0.968887,
		0.716861, 0.666608, 0.204316,
		0.695355, -0.704960, -0.139688,
		42.997250, 46.450401, 41.155083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059464, 47.248997, 40.903023>,  <42.510502, 46.943871, 41.252865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059464, 47.248997, 40.903023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088455, 46.862228, 40.805195>,  <43.105850, 46.630169, 40.746498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088455, 46.862228, 40.805195>,  <43.059464, 47.248997, 40.903023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088455, 46.862228, 40.805195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250810, 0.255005, -0.933845,
		0.965319, 0.006346, 0.260996,
		0.072481, -0.966919, -0.244570,
		43.110199, 46.572151, 40.731823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659386, 47.275597, 40.403679>,  <43.059464, 47.248997, 40.903023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659386, 47.275597, 40.403679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447777, 46.936729, 40.383915>,  <43.320812, 46.733410, 40.372059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.447777, 46.936729, 40.383915>,  <43.659386, 47.275597, 40.403679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447777, 46.936729, 40.383915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025413, 0.042378, -0.998778,
		0.848229, -0.529629, -0.000890,
		-0.529020, -0.847170, -0.049406,
		43.289070, 46.682579, 40.369095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936813, 46.978634, 39.872482>,  <43.659386, 47.275597, 40.403679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936813, 46.978634, 39.872482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584953, 46.793785, 39.917488>,  <43.373837, 46.682877, 39.944492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584953, 46.793785, 39.917488>,  <43.936813, 46.978634, 39.872482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584953, 46.793785, 39.917488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122494, -0.008457, -0.992433,
		0.459578, -0.886776, -0.049168,
		-0.879650, -0.462123, 0.112511,
		43.321060, 46.655148, 39.951241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947422, 46.325630, 39.452259>,  <43.936813, 46.978634, 39.872482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947422, 46.325630, 39.452259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560295, 46.415680, 39.497253>,  <43.328018, 46.469711, 39.524250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560295, 46.415680, 39.497253>,  <43.947422, 46.325630, 39.452259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560295, 46.415680, 39.497253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147688, -0.146171, -0.978173,
		-0.203777, -0.963301, 0.174716,
		-0.967813, 0.225133, 0.112482,
		43.269951, 46.483219, 39.530998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602055, 45.872684, 38.924992>,  <43.947422, 46.325630, 39.452259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602055, 45.872684, 38.924992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335945, 46.155983, 39.019474>,  <43.176277, 46.325962, 39.076164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335945, 46.155983, 39.019474>,  <43.602055, 45.872684, 38.924992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335945, 46.155983, 39.019474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321717, 0.013544, -0.946739,
		-0.673724, -0.705834, 0.218845,
		-0.665277, 0.708247, 0.236204,
		43.136360, 46.368458, 39.090336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998962, 45.634651, 38.589848>,  <43.602055, 45.872684, 38.924992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998962, 45.634651, 38.589848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943237, 46.026287, 38.649136>,  <42.909801, 46.261269, 38.684708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943237, 46.026287, 38.649136>,  <42.998962, 45.634651, 38.589848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943237, 46.026287, 38.649136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261199, 0.108050, -0.959219,
		-0.955180, -0.172344, 0.240685,
		-0.139310, 0.979093, 0.148223,
		42.901443, 46.320015, 38.693604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360985, 45.759521, 38.250088>,  <42.998962, 45.634651, 38.589848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360985, 45.759521, 38.250088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538994, 46.115623, 38.288868>,  <42.645798, 46.329285, 38.312134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538994, 46.115623, 38.288868>,  <42.360985, 45.759521, 38.250088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538994, 46.115623, 38.288868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174562, 0.192416, -0.965663,
		-0.878343, 0.412815, 0.241034,
		0.445019, 0.890258, 0.096946,
		42.672501, 46.382702, 38.317951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931770, 46.135059, 37.868263>,  <42.360985, 45.759521, 38.250088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931770, 46.135059, 37.868263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260132, 46.360664, 37.904053>,  <42.457150, 46.496029, 37.925526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.260132, 46.360664, 37.904053>,  <41.931770, 46.135059, 37.868263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260132, 46.360664, 37.904053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142713, 0.354324, -0.924168,
		-0.552946, 0.745884, 0.371359,
		0.820904, 0.564013, 0.089475,
		42.506405, 46.529869, 37.930897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810349, 46.899776, 37.571114>,  <41.931770, 46.135059, 37.868263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810349, 46.899776, 37.571114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.198639, 46.804245, 37.560970>,  <42.431614, 46.746925, 37.554882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.198639, 46.804245, 37.560970>,  <41.810349, 46.899776, 37.571114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.198639, 46.804245, 37.560970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015090, 0.044737, -0.998885,
		0.239697, 0.970031, 0.039824,
		0.970730, -0.238828, -0.025361,
		42.489857, 46.732597, 37.553364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133774, 47.344307, 37.099888>,  <41.810349, 46.899776, 37.571114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133774, 47.344307, 37.099888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382011, 47.031998, 37.128887>,  <42.530952, 46.844612, 37.146286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382011, 47.031998, 37.128887>,  <42.133774, 47.344307, 37.099888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382011, 47.031998, 37.128887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151758, 0.028882, -0.987996,
		0.769305, 0.624148, 0.136413,
		0.620596, -0.780772, 0.072500,
		42.568192, 46.797768, 37.150639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830219, 47.525337, 36.792171>,  <42.133774, 47.344307, 37.099888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830219, 47.525337, 36.792171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799698, 47.126579, 36.784340>,  <42.781384, 46.887325, 36.779640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.799698, 47.126579, 36.784340>,  <42.830219, 47.525337, 36.792171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.799698, 47.126579, 36.784340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137520, 0.008930, -0.990459,
		0.987555, -0.078272, 0.136411,
		-0.076307, -0.996892, -0.019583,
		42.776806, 46.827511, 36.778465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252010, 47.300556, 36.302555>,  <42.830219, 47.525337, 36.792171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252010, 47.300556, 36.302555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050835, 46.959312, 36.358067>,  <42.930130, 46.754566, 36.391373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.050835, 46.959312, 36.358067>,  <43.252010, 47.300556, 36.302555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050835, 46.959312, 36.358067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173876, -0.257147, -0.950601,
		0.846651, -0.453965, 0.277664,
		-0.502940, -0.853107, 0.138780,
		42.899952, 46.703381, 36.399700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.621410, 46.834190, 36.049973>,  <43.252010, 47.300556, 36.302555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.621410, 46.834190, 36.049973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261101, 46.661537, 36.030777>,  <43.044914, 46.557945, 36.019260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261101, 46.661537, 36.030777>,  <43.621410, 46.834190, 36.049973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261101, 46.661537, 36.030777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276666, -0.485159, -0.829504,
		0.334760, -0.760471, 0.556435,
		-0.900773, -0.431632, -0.047985,
		42.990868, 46.532047, 36.016380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713856, 46.167717, 35.835075>,  <43.621410, 46.834190, 36.049973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713856, 46.167717, 35.835075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332985, 46.231598, 35.730881>,  <43.104462, 46.269924, 35.668362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332985, 46.231598, 35.730881>,  <43.713856, 46.167717, 35.835075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332985, 46.231598, 35.730881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177130, -0.406155, -0.896473,
		-0.248964, -0.899742, 0.358444,
		-0.952178, 0.159698, -0.260489,
		43.047333, 46.279507, 35.652733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688923, 45.741837, 35.247738>,  <43.713856, 46.167717, 35.835075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688923, 45.741837, 35.247738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341469, 45.937580, 35.216755>,  <43.132996, 46.055027, 35.198166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.341469, 45.937580, 35.216755>,  <43.688923, 45.741837, 35.247738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341469, 45.937580, 35.216755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117463, -0.355282, -0.927349,
		-0.481329, -0.796429, 0.366092,
		-0.868634, 0.489362, -0.077456,
		43.080879, 46.084389, 35.193520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170692, 45.348331, 34.940010>,  <43.688923, 45.741837, 35.247738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170692, 45.348331, 34.940010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036278, 45.720417, 34.880985>,  <42.955631, 45.943668, 34.845570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036278, 45.720417, 34.880985>,  <43.170692, 45.348331, 34.940010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036278, 45.720417, 34.880985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176418, -0.216067, -0.960308,
		-0.925180, -0.296662, 0.236714,
		-0.336033, 0.930219, -0.147564,
		42.935467, 45.999481, 34.836716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530788, 45.252327, 34.554253>,  <43.170692, 45.348331, 34.940010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530788, 45.252327, 34.554253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598724, 45.642242, 34.496361>,  <42.639484, 45.876190, 34.461628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598724, 45.642242, 34.496361>,  <42.530788, 45.252327, 34.554253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598724, 45.642242, 34.496361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281471, -0.092759, -0.955076,
		-0.944420, 0.202947, 0.258620,
		0.169840, 0.974786, -0.144727,
		42.649677, 45.934677, 34.452942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040436, 45.569061, 34.344082>,  <42.530788, 45.252327, 34.554253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040436, 45.569061, 34.344082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297356, 45.844173, 34.208786>,  <42.451508, 46.009239, 34.127609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.297356, 45.844173, 34.208786>,  <42.040436, 45.569061, 34.344082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.297356, 45.844173, 34.208786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244893, -0.234017, -0.940885,
		-0.726276, 0.687165, 0.018123,
		0.642301, 0.687780, -0.338242,
		42.490047, 46.050507, 34.107315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644470, 46.046383, 33.778217>,  <42.040436, 45.569061, 34.344082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644470, 46.046383, 33.778217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034828, 46.035065, 33.691654>,  <42.269043, 46.028275, 33.639717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034828, 46.035065, 33.691654>,  <41.644470, 46.046383, 33.778217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034828, 46.035065, 33.691654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217520, -0.044871, -0.975024,
		0.017874, 0.998592, -0.049943,
		0.975892, -0.028291, -0.216411,
		42.327595, 46.026577, 33.626732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708939, 46.457188, 33.093868>,  <41.644470, 46.046383, 33.778217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708939, 46.457188, 33.093868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050049, 46.249733, 33.118507>,  <42.254715, 46.125259, 33.133293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.050049, 46.249733, 33.118507>,  <41.708939, 46.457188, 33.093868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.050049, 46.249733, 33.118507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024751, -0.077681, -0.996671,
		0.521698, 0.851457, -0.053408,
		0.852771, -0.518639, 0.061600,
		42.305882, 46.094143, 33.136986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<44.707413, 43.465672, 32.894608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.532097, 43.816776, 32.972012>,  <44.426907, 44.027439, 33.018452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.532097, 43.816776, 32.972012>,  <44.707413, 43.465672, 32.894608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532097, 43.816776, 32.972012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483497, 0.048745, 0.873988,
		0.757718, 0.476617, -0.445758,
		-0.438286, 0.877759, 0.193508,
		44.400612, 44.080105, 33.030064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.239719, 43.949802, 33.267021>,  <44.707413, 43.465672, 32.894608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.239719, 43.949802, 33.267021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.875977, 44.102459, 33.333263>,  <44.657730, 44.194054, 33.373009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.875977, 44.102459, 33.333263>,  <45.239719, 43.949802, 33.267021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875977, 44.102459, 33.333263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287582, 0.289008, 0.913111,
		0.300623, 0.877965, -0.372564,
		-0.909353, 0.381645, 0.165605,
		44.603172, 44.216953, 33.382946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336239, 44.550827, 33.598869>,  <45.239719, 43.949802, 33.267021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336239, 44.550827, 33.598869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.959930, 44.452198, 33.691959>,  <44.734146, 44.393021, 33.747814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.959930, 44.452198, 33.691959>,  <45.336239, 44.550827, 33.598869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959930, 44.452198, 33.691959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155840, 0.295130, 0.942662,
		-0.301114, 0.923094, -0.239223,
		-0.940768, -0.246568, 0.232723,
		44.677700, 44.378227, 33.761776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.107285, 45.105091, 34.106895>,  <45.336239, 44.550827, 33.598869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.107285, 45.105091, 34.106895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.849609, 44.804523, 34.164001>,  <44.695004, 44.624184, 34.198265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.849609, 44.804523, 34.164001>,  <45.107285, 45.105091, 34.106895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849609, 44.804523, 34.164001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081404, 0.118237, 0.989643,
		-0.760521, 0.649140, -0.014998,
		-0.644190, -0.751423, 0.142764,
		44.656353, 44.579098, 34.206829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.513783, 45.361092, 34.535065>,  <45.107285, 45.105091, 34.106895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.513783, 45.361092, 34.535065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.556099, 44.966232, 34.582985>,  <44.581490, 44.729317, 34.611736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.556099, 44.966232, 34.582985>,  <44.513783, 45.361092, 34.535065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556099, 44.966232, 34.582985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243974, 0.142560, 0.959246,
		-0.963994, -0.072255, 0.255920,
		0.105794, -0.987146, 0.119798,
		44.587837, 44.670090, 34.618923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220089, 45.235161, 35.218044>,  <44.513783, 45.361092, 34.535065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220089, 45.235161, 35.218044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.413330, 44.892609, 35.145130>,  <44.529274, 44.687077, 35.101379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.413330, 44.892609, 35.145130>,  <44.220089, 45.235161, 35.218044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413330, 44.892609, 35.145130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486473, 0.089433, 0.869106,
		-0.727982, -0.508544, 0.459810,
		0.483101, -0.856379, -0.182287,
		44.558262, 44.635696, 35.090443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050289, 44.715157, 35.830700>,  <44.220089, 45.235161, 35.218044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050289, 44.715157, 35.830700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.404266, 44.645363, 35.657990>,  <44.616653, 44.603485, 35.554363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.404266, 44.645363, 35.657990>,  <44.050289, 44.715157, 35.830700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404266, 44.645363, 35.657990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444066, 0.036886, 0.895234,
		-0.140279, -0.983969, 0.110125,
		0.884944, -0.174485, -0.431773,
		44.669750, 44.593018, 35.528458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.263870, 44.120270, 36.195148>,  <44.050289, 44.715157, 35.830700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.263870, 44.120270, 36.195148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.584068, 44.314671, 36.054852>,  <44.776188, 44.431309, 35.970673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.584068, 44.314671, 36.054852>,  <44.263870, 44.120270, 36.195148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.584068, 44.314671, 36.054852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371595, 0.056710, 0.926661,
		0.470246, -0.872118, -0.135199,
		0.800491, 0.485999, -0.350743,
		44.824215, 44.460468, 35.949627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.720169, 43.906017, 36.677353>,  <44.263870, 44.120270, 36.195148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.720169, 43.906017, 36.677353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.907234, 44.189186, 36.465641>,  <45.019474, 44.359089, 36.338615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<44.907234, 44.189186, 36.465641>,  <44.720169, 43.906017, 36.677353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907234, 44.189186, 36.465641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662883, 0.115210, 0.739806,
		0.584704, -0.696830, -0.415391,
		0.467661, 0.707923, -0.529281,
		45.047531, 44.401562, 36.306858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397488, 43.654240, 36.694283>,  <44.720169, 43.906017, 36.677353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397488, 43.654240, 36.694283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.403542, 44.046185, 36.614647>,  <45.407173, 44.281353, 36.566864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.403542, 44.046185, 36.614647>,  <45.397488, 43.654240, 36.694283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403542, 44.046185, 36.614647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541812, 0.159308, 0.825264,
		0.840364, -0.120357, -0.528492,
		0.015133, 0.979865, -0.199088,
		45.408081, 44.340145, 36.554920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.046062, 43.848225, 36.842327>,  <45.397488, 43.654240, 36.694283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.046062, 43.848225, 36.842327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.824577, 44.180943, 36.857903>,  <45.691685, 44.380573, 36.867249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.824577, 44.180943, 36.857903>,  <46.046062, 43.848225, 36.842327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824577, 44.180943, 36.857903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436129, 0.249855, 0.864502,
		0.709361, 0.495668, -0.501119,
		-0.553713, 0.831797, 0.038937,
		45.658463, 44.430481, 36.869583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.498192, 44.369225, 37.201591>,  <46.046062, 43.848225, 36.842327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.498192, 44.369225, 37.201591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.114403, 44.475574, 37.238964>,  <45.884129, 44.539387, 37.261387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.114403, 44.475574, 37.238964>,  <46.498192, 44.369225, 37.201591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114403, 44.475574, 37.238964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213995, 0.471636, 0.855433,
		0.183375, 0.840755, -0.509417,
		-0.959468, 0.265877, 0.093431,
		45.826561, 44.555336, 37.266994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.501827, 45.136959, 37.324978>,  <46.498192, 44.369225, 37.201591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.501827, 45.136959, 37.324978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.153008, 44.999130, 37.464005>,  <45.943714, 44.916435, 37.547421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.153008, 44.999130, 37.464005>,  <46.501827, 45.136959, 37.324978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153008, 44.999130, 37.464005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183245, 0.428638, 0.884698,
		-0.453821, 0.835190, -0.310652,
		-0.872048, -0.344569, 0.347569,
		45.891392, 44.895760, 37.568275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.389137, 45.599663, 37.843239>,  <46.501827, 45.136959, 37.324978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.389137, 45.599663, 37.843239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.128723, 45.306969, 37.923950>,  <45.972473, 45.131351, 37.972378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.128723, 45.306969, 37.923950>,  <46.389137, 45.599663, 37.843239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.128723, 45.306969, 37.923950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162450, 0.125349, 0.978722,
		-0.741458, 0.669964, 0.037263,
		-0.651038, -0.731735, 0.201776,
		45.933411, 45.087448, 37.984482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.035217, 45.911156, 38.403992>,  <46.389137, 45.599663, 37.843239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.035217, 45.911156, 38.403992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.967896, 45.518749, 38.442520>,  <45.927502, 45.283306, 38.465637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.967896, 45.518749, 38.442520>,  <46.035217, 45.911156, 38.403992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.967896, 45.518749, 38.442520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013136, 0.095470, 0.995345,
		-0.985648, 0.168785, -0.003181,
		-0.168303, -0.981018, 0.096317,
		45.917404, 45.224445, 38.471416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.606945, 45.949944, 38.888107>,  <46.035217, 45.911156, 38.403992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.606945, 45.949944, 38.888107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.757957, 45.579624, 38.895683>,  <45.848564, 45.357433, 38.900227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.757957, 45.579624, 38.895683>,  <45.606945, 45.949944, 38.888107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.757957, 45.579624, 38.895683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184415, 0.095212, 0.978226,
		-0.907447, -0.365821, 0.206677,
		0.377534, -0.925802, 0.018936,
		45.871216, 45.301884, 38.901363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.311749, 45.565514, 39.471233>,  <45.606945, 45.949944, 38.888107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.311749, 45.565514, 39.471233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.662521, 45.398327, 39.376335>,  <45.872986, 45.298016, 39.319397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.662521, 45.398327, 39.376335>,  <45.311749, 45.565514, 39.471233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662521, 45.398327, 39.376335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223118, -0.083172, 0.971237,
		-0.425681, -0.904645, 0.020320,
		0.876934, -0.417971, -0.237248,
		45.925602, 45.272934, 39.305161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.351139, 44.964619, 39.981277>,  <45.311749, 45.565514, 39.471233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.351139, 44.964619, 39.981277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.713188, 45.006401, 39.816429>,  <45.930416, 45.031471, 39.717522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.713188, 45.006401, 39.816429>,  <45.351139, 44.964619, 39.981277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.713188, 45.006401, 39.816429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422285, -0.333201, 0.843002,
		-0.049265, -0.937052, -0.345697,
		0.905124, 0.104452, -0.412118,
		45.984726, 45.037735, 39.692795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.714699, 44.284634, 39.988361>,  <45.351139, 44.964619, 39.981277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.714699, 44.284634, 39.988361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.966736, 44.594646, 39.969109>,  <46.117958, 44.780655, 39.957558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.966736, 44.594646, 39.969109>,  <45.714699, 44.284634, 39.988361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.966736, 44.594646, 39.969109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469584, -0.330930, 0.818521,
		0.618449, -0.538344, -0.572457,
		0.630089, 0.775030, -0.048135,
		46.155762, 44.827156, 39.954670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.337433, 43.981781, 40.218414>,  <45.714699, 44.284634, 39.988361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.337433, 43.981781, 40.218414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.341759, 44.377235, 40.278381>,  <46.344357, 44.614510, 40.314362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.341759, 44.377235, 40.278381>,  <46.337433, 43.981781, 40.218414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.341759, 44.377235, 40.278381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326229, -0.145212, 0.934071,
		0.945229, 0.038802, -0.324094,
		0.010818, 0.988639, 0.149917,
		46.345005, 44.673828, 40.323357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.947723, 44.098923, 40.577698>,  <46.337433, 43.981781, 40.218414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.947723, 44.098923, 40.577698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.742828, 44.433372, 40.656197>,  <46.619892, 44.634041, 40.703297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.742828, 44.433372, 40.656197>,  <46.947723, 44.098923, 40.577698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.742828, 44.433372, 40.656197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346825, -0.007659, 0.937898,
		0.785701, 0.548490, -0.286065,
		-0.512237, 0.836122, 0.196248,
		46.589157, 44.684208, 40.715073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.444832, 44.500282, 41.082638>,  <46.947723, 44.098923, 40.577698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.444832, 44.500282, 41.082638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.081093, 44.660515, 41.127583>,  <46.862850, 44.756657, 41.154549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.081093, 44.660515, 41.127583>,  <47.444832, 44.500282, 41.082638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.081093, 44.660515, 41.127583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096223, -0.060242, 0.993535,
		0.404763, 0.914277, 0.016236,
		-0.909345, 0.400584, 0.112358,
		46.808289, 44.780689, 41.161289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.480892, 44.841366, 41.749626>,  <47.444832, 44.500282, 41.082638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.480892, 44.841366, 41.749626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.090126, 44.814293, 41.668575>,  <46.855667, 44.798050, 41.619946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.090126, 44.814293, 41.668575>,  <47.480892, 44.841366, 41.749626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.090126, 44.814293, 41.668575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203612, 0.007965, 0.979019,
		-0.064650, 0.997675, -0.021562,
		-0.976915, -0.067684, -0.202624,
		46.797050, 44.793987, 41.607788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.194309, 45.366795, 42.104565>,  <47.480892, 44.841366, 41.749626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.194309, 45.366795, 42.104565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.903931, 45.096142, 42.055290>,  <46.729706, 44.933750, 42.025726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.903931, 45.096142, 42.055290>,  <47.194309, 45.366795, 42.104565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.903931, 45.096142, 42.055290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268441, 0.113857, 0.956544,
		-0.633204, 0.727464, -0.264289,
		-0.725942, -0.676633, -0.123187,
		46.686150, 44.893150, 42.018333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.624859, 45.639248, 42.413128>,  <47.194309, 45.366795, 42.104565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.624859, 45.639248, 42.413128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.530945, 45.250477, 42.407059>,  <46.474594, 45.017216, 42.403416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.530945, 45.250477, 42.407059>,  <46.624859, 45.639248, 42.413128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.530945, 45.250477, 42.407059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517139, 0.111677, 0.848584,
		-0.823069, 0.207084, -0.528843,
		-0.234788, -0.971928, -0.015173,
		46.460510, 44.958897, 42.402508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006947, 45.522747, 42.681206>,  <46.624859, 45.639248, 42.413128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006947, 45.522747, 42.681206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.152603, 45.152714, 42.724312>,  <46.239998, 44.930695, 42.750175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.152603, 45.152714, 42.724312>,  <46.006947, 45.522747, 42.681206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.152603, 45.152714, 42.724312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256457, 0.011641, 0.966486,
		-0.895337, -0.379579, -0.233006,
		0.364145, -0.925086, 0.107769,
		46.261848, 44.875187, 42.756641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550640, 45.294193, 43.142410>,  <46.006947, 45.522747, 42.681206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550640, 45.294193, 43.142410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.834694, 45.014378, 43.174309>,  <46.005127, 44.846489, 43.193447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.834694, 45.014378, 43.174309>,  <45.550640, 45.294193, 43.142410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.834694, 45.014378, 43.174309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279213, -0.175835, 0.943993,
		-0.646335, -0.692627, -0.320185,
		0.710134, -0.699536, 0.079742,
		46.047733, 44.804516, 43.198231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.254154, 44.684719, 43.472721>,  <45.550640, 45.294193, 43.142410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.254154, 44.684719, 43.472721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.651642, 44.663479, 43.512104>,  <45.890137, 44.650734, 43.535732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.651642, 44.663479, 43.512104>,  <45.254154, 44.684719, 43.472721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651642, 44.663479, 43.512104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104549, -0.127808, 0.986273,
		-0.039783, -0.990377, -0.132557,
		0.993724, -0.053096, 0.098458,
		45.949760, 44.647549, 43.541641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385193, 44.015488, 43.920235>,  <45.254154, 44.684719, 43.472721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385193, 44.015488, 43.920235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.708656, 44.250416, 43.933662>,  <45.902733, 44.391373, 43.941719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.708656, 44.250416, 43.933662>,  <45.385193, 44.015488, 43.920235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708656, 44.250416, 43.933662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100732, -0.194468, 0.975723,
		0.579588, -0.785646, -0.216420,
		0.808660, 0.587318, 0.033572,
		45.951256, 44.426613, 43.943733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.883804, 43.608128, 44.231174>,  <45.385193, 44.015488, 43.920235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.883804, 43.608128, 44.231174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.001488, 43.986534, 44.285568>,  <46.072098, 44.213577, 44.318203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.001488, 43.986534, 44.285568>,  <45.883804, 43.608128, 44.231174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.001488, 43.986534, 44.285568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173209, -0.192702, 0.965849,
		0.939915, -0.260607, -0.220554,
		0.294208, 0.946018, 0.135984,
		46.089748, 44.270340, 44.326363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.414783, 43.569263, 44.750153>,  <45.883804, 43.608128, 44.231174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.414783, 43.569263, 44.750153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.315758, 43.956699, 44.740856>,  <46.256344, 44.189163, 44.735279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.315758, 43.956699, 44.740856>,  <46.414783, 43.569263, 44.750153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.315758, 43.956699, 44.740856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164071, 0.065549, 0.984268,
		0.954879, 0.239857, -0.175145,
		-0.247564, 0.968593, -0.023238,
		46.241489, 44.247276, 44.733883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.907124, 43.852345, 45.188744>,  <46.414783, 43.569263, 44.750153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.907124, 43.852345, 45.188744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.603394, 44.111485, 45.164360>,  <46.421154, 44.266968, 45.149731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.603394, 44.111485, 45.164360>,  <46.907124, 43.852345, 45.188744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.603394, 44.111485, 45.164360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082742, 0.189048, 0.978476,
		0.645425, 0.737941, -0.197154,
		-0.759329, 0.647846, -0.060958,
		46.375595, 44.305840, 45.146072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.096558, 44.548393, 45.426201>,  <46.907124, 43.852345, 45.188744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.096558, 44.548393, 45.426201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.701523, 44.533108, 45.487148>,  <46.464504, 44.523937, 45.523716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.701523, 44.533108, 45.487148>,  <47.096558, 44.548393, 45.426201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.701523, 44.533108, 45.487148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138267, 0.248920, 0.958604,
		-0.074559, 0.967770, -0.240546,
		-0.987584, -0.038213, 0.152370,
		46.405247, 44.521645, 45.532860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.898666, 45.176304, 45.765583>,  <47.096558, 44.548393, 45.426201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.898666, 45.176304, 45.765583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.600380, 44.926220, 45.857689>,  <46.421410, 44.776169, 45.912952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.600380, 44.926220, 45.857689>,  <46.898666, 45.176304, 45.765583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.600380, 44.926220, 45.857689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041115, 0.388133, 0.920686,
		-0.664994, 0.677103, -0.315143,
		-0.745716, -0.625207, 0.230267,
		46.376663, 44.738659, 45.926769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.568439, 45.585285, 46.328972>,  <46.898666, 45.176304, 45.765583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.568439, 45.585285, 46.328972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.395493, 45.225822, 46.358589>,  <46.291725, 45.010147, 46.376358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.395493, 45.225822, 46.358589>,  <46.568439, 45.585285, 46.328972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.395493, 45.225822, 46.358589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255955, 0.201051, 0.945550,
		-0.864608, 0.389873, -0.316943,
		-0.432366, -0.898653, 0.074040,
		46.265781, 44.956226, 46.380802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822083, 45.676228, 46.615471>,  <46.568439, 45.585285, 46.328972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822083, 45.676228, 46.615471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.976440, 45.318890, 46.707577>,  <46.069057, 45.104488, 46.762840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.976440, 45.318890, 46.707577>,  <45.822083, 45.676228, 46.615471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.976440, 45.318890, 46.707577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295600, 0.116705, 0.948156,
		-0.873901, -0.433960, -0.219036,
		0.385899, -0.893341, 0.230267,
		46.092209, 45.050888, 46.776657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340683, 45.256432, 46.997997>,  <45.822083, 45.676228, 46.615471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340683, 45.256432, 46.997997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.685287, 45.080818, 47.100006>,  <45.892052, 44.975449, 47.161213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.685287, 45.080818, 47.100006>,  <45.340683, 45.256432, 46.997997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.685287, 45.080818, 47.100006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203354, 0.161869, 0.965632,
		-0.465230, -0.883767, 0.050173,
		0.861515, -0.439038, 0.255024,
		45.943741, 44.949108, 47.176514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.132996, 44.811672, 47.516693>,  <45.340683, 45.256432, 46.997997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.132996, 44.811672, 47.516693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.527229, 44.874519, 47.541794>,  <45.763771, 44.912228, 47.556854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.527229, 44.874519, 47.541794>,  <45.132996, 44.811672, 47.516693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.527229, 44.874519, 47.541794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062228, -0.008232, 0.998028,
		0.157324, -0.987546, 0.001664,
		0.985584, 0.157117, 0.062748,
		45.822906, 44.921654, 47.560619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375462, 44.368183, 48.069080>,  <45.132996, 44.811672, 47.516693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375462, 44.368183, 48.069080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.698158, 44.604515, 48.065407>,  <45.891777, 44.746315, 48.063202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.698158, 44.604515, 48.065407>,  <45.375462, 44.368183, 48.069080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698158, 44.604515, 48.065407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067102, -0.076156, 0.994835,
		0.587078, -0.803195, -0.101084,
		0.806745, 0.590828, -0.009186,
		45.940182, 44.781765, 48.062653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801640, 44.083561, 48.666649>,  <45.375462, 44.368183, 48.069080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801640, 44.083561, 48.666649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.916435, 44.457481, 48.582954>,  <45.985313, 44.681835, 48.532738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<45.916435, 44.457481, 48.582954>,  <45.801640, 44.083561, 48.666649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.916435, 44.457481, 48.582954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377614, 0.090341, 0.921545,
		0.880367, -0.343484, -0.327068,
		0.286988, 0.934803, -0.209238,
		46.002533, 44.737923, 48.520184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.456646, 44.124176, 49.061062>,  <45.801640, 44.083561, 48.666649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.456646, 44.124176, 49.061062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.309540, 44.487362, 48.980721>,  <46.221275, 44.705273, 48.932514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.309540, 44.487362, 48.980721>,  <46.456646, 44.124176, 49.061062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.309540, 44.487362, 48.980721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204980, 0.289830, 0.934870,
		0.907047, 0.302639, -0.292704,
		-0.367762, 0.907969, -0.200855,
		46.199211, 44.759754, 48.920464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.022057, 44.549263, 49.239594>,  <46.456646, 44.124176, 49.061062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.022057, 44.549263, 49.239594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.695084, 44.779476, 49.249107>,  <46.498901, 44.917603, 49.254814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.695084, 44.779476, 49.249107>,  <47.022057, 44.549263, 49.239594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.695084, 44.779476, 49.249107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340104, 0.448899, 0.826329,
		0.464903, 0.683557, -0.562686,
		-0.817432, 0.575534, 0.023786,
		46.449856, 44.952137, 49.256245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.298595, 45.265327, 49.332027>,  <47.022057, 44.549263, 49.239594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.298595, 45.265327, 49.332027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.919456, 45.267017, 49.459511>,  <46.691975, 45.268032, 49.535999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.919456, 45.267017, 49.459511>,  <47.298595, 45.265327, 49.332027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.919456, 45.267017, 49.459511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304960, 0.302826, 0.902938,
		-0.092695, 0.953037, -0.288321,
		-0.947844, 0.004229, 0.318708,
		46.635105, 45.268288, 49.555122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.249954, 45.822849, 49.774651>,  <47.298595, 45.265327, 49.332027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.249954, 45.822849, 49.774651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.947426, 45.590645, 49.895306>,  <46.765911, 45.451321, 49.967697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.947426, 45.590645, 49.895306>,  <47.249954, 45.822849, 49.774651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.947426, 45.590645, 49.895306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143431, 0.302718, 0.942226,
		-0.638287, 0.755887, -0.145688,
		-0.756318, -0.580514, 0.301639,
		46.720531, 45.416492, 49.985798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.800476, 46.266621, 50.236855>,  <47.249954, 45.822849, 49.774651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.800476, 46.266621, 50.236855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.737480, 45.879589, 50.315834>,  <46.699684, 45.647369, 50.363224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.737480, 45.879589, 50.315834>,  <46.800476, 46.266621, 50.236855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.737480, 45.879589, 50.315834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039516, 0.193613, 0.980282,
		-0.986730, 0.162184, 0.007743,
		-0.157487, -0.967579, 0.197453,
		46.690235, 45.589314, 50.375069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.397285, 46.341431, 50.871986>,  <46.800476, 46.266621, 50.236855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.397285, 46.341431, 50.871986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.512695, 45.959042, 50.850525>,  <46.581940, 45.729610, 50.837650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.512695, 45.959042, 50.850525>,  <46.397285, 46.341431, 50.871986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.512695, 45.959042, 50.850525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256678, 0.023242, 0.966217,
		-0.922426, -0.292549, 0.252082,
		0.288525, -0.955968, -0.053652,
		46.599255, 45.672253, 50.834431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.170799, 46.087418, 51.472813>,  <46.397285, 46.341431, 50.871986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.170799, 46.087418, 51.472813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.435829, 45.810677, 51.358040>,  <46.594849, 45.644630, 51.289177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.435829, 45.810677, 51.358040>,  <46.170799, 46.087418, 51.472813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435829, 45.810677, 51.358040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310000, -0.095431, 0.945935,
		-0.681831, -0.715703, 0.151245,
		0.662575, -0.691854, -0.286936,
		46.634602, 45.603119, 51.271957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.099983, 45.497520, 51.942505>,  <46.170799, 46.087418, 51.472813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.099983, 45.497520, 51.942505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.466934, 45.508186, 51.783649>,  <46.687103, 45.514587, 51.688335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.466934, 45.508186, 51.783649>,  <46.099983, 45.497520, 51.942505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466934, 45.508186, 51.783649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380564, 0.233548, 0.894777,
		0.116607, -0.971980, 0.204104,
		0.917373, 0.026663, -0.397134,
		46.742146, 45.516186, 51.664509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434052, 45.058876, 52.399643>,  <46.099983, 45.497520, 51.942505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434052, 45.058876, 52.399643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.721107, 45.268291, 52.215946>,  <46.893341, 45.393940, 52.105728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<46.721107, 45.268291, 52.215946>,  <46.434052, 45.058876, 52.399643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.721107, 45.268291, 52.215946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521199, 0.033608, 0.852773,
		0.461894, -0.851338, -0.248750,
		0.717639, 0.523539, -0.459240,
		46.936398, 45.425354, 52.078175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.097828, 44.785080, 52.561775>,  <46.434052, 45.058876, 52.399643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.097828, 44.785080, 52.561775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.201576, 45.154106, 52.447506>,  <47.263824, 45.375523, 52.378944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.201576, 45.154106, 52.447506>,  <47.097828, 44.785080, 52.561775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.201576, 45.154106, 52.447506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465416, 0.139781, 0.873985,
		0.846237, -0.359638, -0.393121,
		0.259367, 0.922563, -0.285669,
		47.279385, 45.430874, 52.361805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.758831, 44.844292, 52.815685>,  <47.097828, 44.785080, 52.561775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.758831, 44.844292, 52.815685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.656769, 45.223877, 52.741539>,  <47.595531, 45.451630, 52.697052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.656769, 45.223877, 52.741539>,  <47.758831, 44.844292, 52.815685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.656769, 45.223877, 52.741539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365445, 0.272141, 0.890162,
		0.895179, 0.159388, -0.416233,
		-0.255155, 0.948965, -0.185367,
		47.580223, 45.508568, 52.685928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.339355, 45.271149, 53.059139>,  <47.758831, 44.844292, 52.815685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.339355, 45.271149, 53.059139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.019211, 45.508839, 53.027344>,  <47.827122, 45.651451, 53.008266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.019211, 45.508839, 53.027344>,  <48.339355, 45.271149, 53.059139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.019211, 45.508839, 53.027344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216696, 0.410367, 0.885800,
		0.558982, 0.691737, -0.457208,
		-0.800364, 0.594221, -0.079492,
		47.779102, 45.687103, 53.003498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.583847, 45.977673, 53.271137>,  <48.339355, 45.271149, 53.059139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.583847, 45.977673, 53.271137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.188042, 45.989445, 53.327690>,  <47.950558, 45.996506, 53.361622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.188042, 45.989445, 53.327690>,  <48.583847, 45.977673, 53.271137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.188042, 45.989445, 53.327690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143073, 0.332646, 0.932135,
		-0.019598, 0.942592, -0.333370,
		-0.989518, 0.029428, 0.141379,
		47.891186, 45.998272, 53.370106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.523518, 46.578888, 53.659332>,  <48.583847, 45.977673, 53.271137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.523518, 46.578888, 53.659332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.164993, 46.410667, 53.715557>,  <47.949879, 46.309734, 53.749290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.164993, 46.410667, 53.715557>,  <48.523518, 46.578888, 53.659332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.164993, 46.410667, 53.715557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043718, 0.399259, 0.915795,
		-0.441262, 0.814693, -0.376247,
		-0.896312, -0.420555, 0.140561,
		47.896099, 46.284500, 53.757725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.014915, 47.100281, 53.927467>,  <48.523518, 46.578888, 53.659332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.014915, 47.100281, 53.927467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.930511, 46.723618, 54.032345>,  <47.879868, 46.497620, 54.095272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.930511, 46.723618, 54.032345>,  <48.014915, 47.100281, 53.927467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.930511, 46.723618, 54.032345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155691, 0.297188, 0.942040,
		-0.965004, 0.157962, -0.209319,
		-0.211014, -0.941662, 0.262194,
		47.867207, 46.441120, 54.111004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.589836, 47.198811, 54.418083>,  <48.014915, 47.100281, 53.927467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.589836, 47.198811, 54.418083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.684669, 46.816948, 54.490112>,  <47.741570, 46.587830, 54.533329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.684669, 46.816948, 54.490112>,  <47.589836, 47.198811, 54.418083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.684669, 46.816948, 54.490112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026016, 0.191532, 0.981141,
		-0.971141, -0.227926, 0.070245,
		0.237082, -0.954654, 0.180075,
		47.755795, 46.530552, 54.544136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.078465, 46.942558, 54.941574>,  <47.589836, 47.198811, 54.418083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.078465, 46.942558, 54.941574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.369026, 46.668243, 54.959606>,  <47.543362, 46.503654, 54.970425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.369026, 46.668243, 54.959606>,  <47.078465, 46.942558, 54.941574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.369026, 46.668243, 54.959606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046420, 0.114408, 0.992349,
		-0.685698, -0.718754, 0.114941,
		0.726405, -0.685787, 0.045085,
		47.586948, 46.462509, 54.973133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.837906, 46.387310, 55.503532>,  <47.078465, 46.942558, 54.941574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.837906, 46.387310, 55.503532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.228912, 46.314232, 55.461426>,  <47.463516, 46.270386, 55.436161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.228912, 46.314232, 55.461426>,  <46.837906, 46.387310, 55.503532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.228912, 46.314232, 55.461426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051407, -0.277656, 0.959304,
		-0.204490, -0.943148, -0.262022,
		0.977518, -0.182698, -0.105262,
		47.522167, 46.259422, 55.429848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.984665, 45.713657, 55.829613>,  <46.837906, 46.387310, 55.503532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.984665, 45.713657, 55.829613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.320076, 45.930592, 55.850586>,  <47.521320, 46.060753, 55.863171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.320076, 45.930592, 55.850586>,  <46.984665, 45.713657, 55.829613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.320076, 45.930592, 55.850586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081705, -0.220297, 0.972005,
		0.538704, -0.810765, -0.229036,
		0.838524, 0.542336, 0.052431,
		47.571632, 46.093292, 55.866314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.418365, 45.276577, 56.243053>,  <46.984665, 45.713657, 55.829613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.418365, 45.276577, 56.243053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.555984, 45.651146, 56.270603>,  <47.638557, 45.875889, 56.287132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.555984, 45.651146, 56.270603>,  <47.418365, 45.276577, 56.243053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.555984, 45.651146, 56.270603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173263, -0.135410, 0.975522,
		0.922827, -0.323694, -0.208835,
		0.344049, 0.936422, 0.068876,
		47.659199, 45.932072, 56.291267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.921585, 45.258633, 56.745281>,  <47.418365, 45.276577, 56.243053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.921585, 45.258633, 56.745281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.889603, 45.656563, 56.720207>,  <47.870411, 45.895321, 56.705162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<47.889603, 45.656563, 56.720207>,  <47.921585, 45.258633, 56.745281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.889603, 45.656563, 56.720207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082283, 0.069259, 0.994200,
		0.993396, 0.074337, -0.087395,
		-0.079959, 0.994825, -0.062685,
		47.865616, 45.955009, 56.701401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.547482, 45.716858, 56.976711>,  <47.921585, 45.258633, 56.745281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.547482, 45.716858, 56.976711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.209122, 45.921753, 57.036137>,  <48.006107, 46.044689, 57.071793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.209122, 45.921753, 57.036137>,  <48.547482, 45.716858, 56.976711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.209122, 45.921753, 57.036137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260000, 0.152839, 0.953436,
		0.465676, 0.845137, -0.262467,
		-0.845900, 0.512233, 0.148562,
		47.955353, 46.075424, 57.080704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.749779, 46.198780, 57.552944>,  <48.547482, 45.716858, 56.976711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.749779, 46.198780, 57.552944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.350334, 46.219643, 57.549938>,  <48.110668, 46.232162, 57.548134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.350334, 46.219643, 57.549938>,  <48.749779, 46.198780, 57.552944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.350334, 46.219643, 57.549938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000053, 0.143571, 0.989640,
		0.052698, 0.988265, -0.143375,
		-0.998610, 0.052159, -0.007514,
		48.050751, 46.235291, 57.547684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.531075, 46.823540, 57.778900>,  <48.749779, 46.198780, 57.552944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.531075, 46.823540, 57.778900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.216118, 46.590034, 57.858120>,  <48.027142, 46.449932, 57.905651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<48.216118, 46.590034, 57.858120>,  <48.531075, 46.823540, 57.778900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.216118, 46.590034, 57.858120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017162, 0.341912, 0.939575,
		-0.616209, 0.736418, -0.279238,
		-0.787395, -0.583767, 0.198051,
		47.979900, 46.414906, 57.917534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<46.929058, 45.682800, 57.903687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.230705, 45.944473, 57.926834>,  <47.411694, 46.101479, 57.940723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.230705, 45.944473, 57.926834>,  <46.929058, 45.682800, 57.903687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.230705, 45.944473, 57.926834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080000, -0.004043, -0.996787,
		-0.651851, 0.756322, -0.055384,
		0.754116, 0.654187, 0.057871,
		47.456940, 46.140728, 57.944195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.785797, 46.334942, 57.426666>,  <46.929058, 45.682800, 57.903687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.785797, 46.334942, 57.426666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.178772, 46.295219, 57.489853>,  <47.414558, 46.271385, 57.527767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.178772, 46.295219, 57.489853>,  <46.785797, 46.334942, 57.426666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.178772, 46.295219, 57.489853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171307, 0.144474, -0.974567,
		0.073957, 0.984513, 0.158948,
		0.982438, -0.099305, 0.157969,
		47.473503, 46.265427, 57.537243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.067486, 46.985760, 57.189125>,  <46.785797, 46.334942, 57.426666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.067486, 46.985760, 57.189125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.333038, 46.689041, 57.151169>,  <47.492371, 46.511009, 57.128395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.333038, 46.689041, 57.151169>,  <47.067486, 46.985760, 57.189125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.333038, 46.689041, 57.151169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141664, 0.249336, -0.957999,
		0.734298, 0.622555, 0.270615,
		0.663881, -0.741793, -0.094893,
		47.532204, 46.466503, 57.122700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.657066, 47.247246, 56.632084>,  <47.067486, 46.985760, 57.189125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.657066, 47.247246, 56.632084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.709244, 46.852203, 56.667015>,  <47.740551, 46.615177, 56.687973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.709244, 46.852203, 56.667015>,  <47.657066, 47.247246, 56.632084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.709244, 46.852203, 56.667015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286387, -0.046789, -0.956971,
		0.949193, 0.149838, 0.276734,
		0.130442, -0.987603, 0.087324,
		47.748375, 46.555923, 56.693211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.129864, 47.186348, 56.170673>,  <47.657066, 47.247246, 56.632084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.129864, 47.186348, 56.170673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.994354, 46.817329, 56.244576>,  <47.913048, 46.595917, 56.288918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.994354, 46.817329, 56.244576>,  <48.129864, 47.186348, 56.170673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.994354, 46.817329, 56.244576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175101, -0.254752, -0.951021,
		0.924431, -0.289829, 0.247842,
		-0.338772, -0.922551, 0.184751,
		47.892723, 46.540565, 56.299999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.675270, 46.753506, 55.897427>,  <48.129864, 47.186348, 56.170673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.675270, 46.753506, 55.897427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.331688, 46.549248, 55.882263>,  <48.125538, 46.426693, 55.873165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.331688, 46.549248, 55.882263>,  <48.675270, 46.753506, 55.897427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.331688, 46.549248, 55.882263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233471, -0.324685, -0.916554,
		0.455722, -0.796131, 0.398111,
		-0.858958, -0.510641, -0.037907,
		48.074001, 46.396057, 55.870892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.819885, 46.269722, 55.372513>,  <48.675270, 46.753506, 55.897427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.819885, 46.269722, 55.372513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.420723, 46.253395, 55.392597>,  <48.181225, 46.243599, 55.404648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.420723, 46.253395, 55.392597>,  <48.819885, 46.269722, 55.372513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.420723, 46.253395, 55.392597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050342, 0.002149, -0.998730,
		0.040669, -0.999164, -0.004200,
		-0.997904, -0.040829, 0.050213,
		48.121353, 46.241150, 55.407661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.625633, 45.700623, 54.981625>,  <48.819885, 46.269722, 55.372513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.625633, 45.700623, 54.981625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.291321, 45.920238, 54.983719>,  <48.090733, 46.052010, 54.984978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.291321, 45.920238, 54.983719>,  <48.625633, 45.700623, 54.981625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.291321, 45.920238, 54.983719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133036, -0.193236, -0.972091,
		-0.532709, -0.813148, 0.234545,
		-0.835777, 0.549044, 0.005239,
		48.040588, 46.084953, 54.985291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.096779, 45.273479, 54.738037>,  <48.625633, 45.700623, 54.981625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.096779, 45.273479, 54.738037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.975525, 45.650406, 54.681244>,  <47.902775, 45.876560, 54.647167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.975525, 45.650406, 54.681244>,  <48.096779, 45.273479, 54.738037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.975525, 45.650406, 54.681244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300146, -0.235818, -0.924285,
		-0.904447, -0.237564, 0.354315,
		-0.303131, 0.942313, -0.141981,
		47.884586, 45.933098, 54.638649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.454296, 45.183590, 54.488358>,  <48.096779, 45.273479, 54.738037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.454296, 45.183590, 54.488358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.591843, 45.538044, 54.364082>,  <47.674370, 45.750717, 54.289516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.591843, 45.538044, 54.364082>,  <47.454296, 45.183590, 54.488358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.591843, 45.538044, 54.364082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212987, -0.248636, -0.944890,
		-0.914547, 0.391083, 0.103239,
		0.343862, 0.886134, -0.310684,
		47.695000, 45.803883, 54.270878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.907516, 45.550751, 54.104336>,  <47.454296, 45.183590, 54.488358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.907516, 45.550751, 54.104336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.207413, 45.773636, 53.961563>,  <47.387348, 45.907368, 53.875900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.207413, 45.773636, 53.961563>,  <46.907516, 45.550751, 54.104336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.207413, 45.773636, 53.961563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345479, -0.130444, -0.929316,
		-0.564391, 0.820057, 0.094708,
		0.749738, 0.557217, -0.356934,
		47.432335, 45.940800, 53.854485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.609287, 45.937935, 53.555676>,  <46.907516, 45.550751, 54.104336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.609287, 45.937935, 53.555676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.004044, 45.957584, 53.494194>,  <47.240898, 45.969376, 53.457306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.004044, 45.957584, 53.494194>,  <46.609287, 45.937935, 53.555676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.004044, 45.957584, 53.494194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139066, -0.224200, -0.964570,
		-0.081845, 0.973304, -0.214431,
		0.986895, 0.049125, -0.153703,
		47.300114, 45.972321, 53.448082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.700619, 46.422401, 52.945099>,  <46.609287, 45.937935, 53.555676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.700619, 46.422401, 52.945099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.026291, 46.194038, 52.987373>,  <47.221695, 46.057022, 53.012737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.026291, 46.194038, 52.987373>,  <46.700619, 46.422401, 52.945099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.026291, 46.194038, 52.987373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026540, -0.145245, -0.989040,
		0.580002, 0.808064, -0.103104,
		0.814182, -0.570909, 0.105688,
		47.270546, 46.022766, 53.019081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.029926, 46.653042, 52.424229>,  <46.700619, 46.422401, 52.945099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.029926, 46.653042, 52.424229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.207626, 46.302101, 52.496780>,  <47.314247, 46.091537, 52.540310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.207626, 46.302101, 52.496780>,  <47.029926, 46.653042, 52.424229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.207626, 46.302101, 52.496780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031767, -0.186900, -0.981865,
		0.895340, 0.441953, -0.055159,
		0.444248, -0.877351, 0.181379,
		47.340900, 46.038895, 52.551193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.559967, 46.573143, 51.824608>,  <47.029926, 46.653042, 52.424229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.559967, 46.573143, 51.824608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.497063, 46.223457, 52.008354>,  <47.459320, 46.013645, 52.118603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.497063, 46.223457, 52.008354>,  <47.559967, 46.573143, 51.824608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.497063, 46.223457, 52.008354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084185, -0.451597, -0.888242,
		0.983962, -0.178359, -0.002576,
		-0.157263, -0.874213, 0.459370,
		47.449883, 45.961193, 52.146164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.884331, 46.046249, 51.423309>,  <47.559967, 46.573143, 51.824608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.884331, 46.046249, 51.423309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.596962, 45.859329, 51.629417>,  <47.424541, 45.747177, 51.753082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.596962, 45.859329, 51.629417>,  <47.884331, 46.046249, 51.423309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.596962, 45.859329, 51.629417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386990, -0.347036, -0.854286,
		0.578026, -0.813140, 0.068477,
		-0.718418, -0.467299, 0.515273,
		47.381435, 45.719139, 51.784000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.922874, 45.318558, 51.140491>,  <47.884331, 46.046249, 51.423309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.922874, 45.318558, 51.140491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.561142, 45.380283, 51.299679>,  <47.344105, 45.417320, 51.395191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.561142, 45.380283, 51.299679>,  <47.922874, 45.318558, 51.140491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.561142, 45.380283, 51.299679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426834, -0.322717, -0.844788,
		-0.001932, -0.933831, 0.357708,
		-0.904328, 0.154314, 0.397967,
		47.289845, 45.426579, 51.419067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.492134, 44.794247, 50.812946>,  <47.922874, 45.318558, 51.140491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.492134, 44.794247, 50.812946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.234009, 45.050934, 50.978725>,  <47.079132, 45.204945, 51.078194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.234009, 45.050934, 50.978725>,  <47.492134, 44.794247, 50.812946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234009, 45.050934, 50.978725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601066, -0.091692, -0.793922,
		-0.471470, -0.761442, 0.444884,
		-0.645318, 0.641716, 0.414447,
		47.040413, 45.243450, 51.103058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.967846, 44.438789, 50.907974>,  <47.492134, 44.794247, 50.812946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.967846, 44.438789, 50.907974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.861465, 44.822979, 50.875092>,  <46.797638, 45.053493, 50.855362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.861465, 44.822979, 50.875092>,  <46.967846, 44.438789, 50.907974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.861465, 44.822979, 50.875092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502568, -0.210918, -0.838414,
		-0.822614, -0.181665, 0.538798,
		-0.265952, 0.960475, -0.082205,
		46.781681, 45.111122, 50.850430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.369965, 44.337822, 50.555515>,  <46.967846, 44.438789, 50.907974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.369965, 44.337822, 50.555515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.458008, 44.725979, 50.515724>,  <46.510834, 44.958874, 50.491848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.458008, 44.725979, 50.515724>,  <46.369965, 44.337822, 50.555515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458008, 44.725979, 50.515724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380854, -0.008400, -0.924597,
		-0.898055, 0.241399, 0.367728,
		0.220108, 0.970390, -0.099482,
		46.524040, 45.017097, 50.485878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720543, 44.672840, 50.378593>,  <46.369965, 44.337822, 50.555515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720543, 44.672840, 50.378593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.025803, 44.897858, 50.251377>,  <46.208958, 45.032867, 50.175049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.025803, 44.897858, 50.251377>,  <45.720543, 44.672840, 50.378593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.025803, 44.897858, 50.251377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368328, -0.025741, -0.929340,
		-0.530980, 0.826367, 0.187557,
		0.763148, 0.562543, -0.318042,
		46.254745, 45.066620, 50.155964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.357357, 45.128754, 49.922157>,  <45.720543, 44.672840, 50.378593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.357357, 45.128754, 49.922157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.739799, 45.153358, 49.807556>,  <45.969265, 45.168121, 49.738796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.739799, 45.153358, 49.807556>,  <45.357357, 45.128754, 49.922157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.739799, 45.153358, 49.807556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292996, 0.216178, -0.931354,
		0.004643, 0.974414, 0.224712,
		0.956102, 0.061516, -0.286503,
		46.026630, 45.171814, 49.721603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.311504, 45.604103, 49.354774>,  <45.357357, 45.128754, 49.922157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.311504, 45.604103, 49.354774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.660667, 45.411991, 49.320450>,  <45.870163, 45.296722, 49.299854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.660667, 45.411991, 49.320450>,  <45.311504, 45.604103, 49.354774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.660667, 45.411991, 49.320450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100052, -0.004069, -0.994974,
		0.477521, 0.877104, -0.051606,
		0.872905, -0.480284, -0.085813,
		45.922539, 45.267906, 49.294704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.663540, 45.935791, 48.803600>,  <45.311504, 45.604103, 49.354774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.663540, 45.935791, 48.803600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.828812, 45.572376, 48.828423>,  <45.927975, 45.354328, 48.843315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.828812, 45.572376, 48.828423>,  <45.663540, 45.935791, 48.803600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.828812, 45.572376, 48.828423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106216, -0.019601, -0.994150,
		0.904435, 0.417351, 0.088402,
		0.413176, -0.908534, 0.062057,
		45.952766, 45.299816, 48.847038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232658, 45.978626, 48.397896>,  <45.663540, 45.935791, 48.803600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232658, 45.978626, 48.397896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.188499, 45.581738, 48.420891>,  <46.162006, 45.343605, 48.434689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.188499, 45.581738, 48.420891>,  <46.232658, 45.978626, 48.397896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.188499, 45.581738, 48.420891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241366, -0.082870, -0.966889,
		0.964135, -0.092864, 0.248637,
		-0.110393, -0.992224, 0.057484,
		46.155380, 45.284069, 48.438137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.792084, 45.717377, 47.903301>,  <46.232658, 45.978626, 48.397896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.792084, 45.717377, 47.903301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.532860, 45.418137, 47.960381>,  <46.377323, 45.238594, 47.994629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.532860, 45.418137, 47.960381>,  <46.792084, 45.717377, 47.903301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.532860, 45.418137, 47.960381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226275, -0.368043, -0.901856,
		0.727195, -0.552172, 0.407791,
		-0.648064, -0.748098, 0.142696,
		46.338440, 45.193707, 48.003189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.115479, 45.143974, 47.669067>,  <46.792084, 45.717377, 47.903301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.115479, 45.143974, 47.669067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.724350, 45.062000, 47.651756>,  <46.489674, 45.012817, 47.641369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.724350, 45.062000, 47.651756>,  <47.115479, 45.143974, 47.669067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.724350, 45.062000, 47.651756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129808, -0.430751, -0.893087,
		0.164379, -0.878895, 0.447798,
		-0.977819, -0.204933, -0.043281,
		46.431004, 45.000519, 47.638771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.104786, 44.482449, 47.500626>,  <47.115479, 45.143974, 47.669067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.104786, 44.482449, 47.500626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.736237, 44.597828, 47.396423>,  <46.515106, 44.667057, 47.333900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.736237, 44.597828, 47.396423>,  <47.104786, 44.482449, 47.500626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.736237, 44.597828, 47.396423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136437, -0.387564, -0.911690,
		-0.363934, -0.875554, 0.317739,
		-0.921378, 0.288444, -0.260506,
		46.459824, 44.684364, 47.318272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.702335, 43.930977, 47.105114>,  <47.104786, 44.482449, 47.500626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.702335, 43.930977, 47.105114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.542427, 44.279213, 46.990395>,  <46.446484, 44.488155, 46.921562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.542427, 44.279213, 46.990395>,  <46.702335, 43.930977, 47.105114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.542427, 44.279213, 46.990395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001380, -0.313460, -0.949600,
		-0.916614, -0.379227, 0.126514,
		-0.399771, 0.870592, -0.286798,
		46.422497, 44.540390, 46.904354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.451832, 44.116714, 34.079250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.835655, 44.177345, 33.984367>,  <44.065948, 44.213726, 33.927437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.835655, 44.177345, 33.984367>,  <43.451832, 44.116714, 34.079250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835655, 44.177345, 33.984367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264947, 0.201542, -0.942966,
		-0.095126, 0.967680, 0.233552,
		0.959559, 0.151580, -0.237212,
		44.123524, 44.222820, 33.913204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.389359, 44.648338, 33.640968>,  <43.451832, 44.116714, 34.079250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.389359, 44.648338, 33.640968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.758949, 44.516514, 33.563347>,  <43.980701, 44.437420, 33.516773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.758949, 44.516514, 33.563347>,  <43.389359, 44.648338, 33.640968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.758949, 44.516514, 33.563347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082224, 0.324351, -0.942356,
		0.373510, 0.886669, 0.272594,
		0.923975, -0.329566, -0.194054,
		44.036140, 44.417645, 33.505131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.764790, 45.197083, 33.353745>,  <43.389359, 44.648338, 33.640968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.764790, 45.197083, 33.353745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.946335, 44.864609, 33.225288>,  <44.055264, 44.665123, 33.148212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.946335, 44.864609, 33.225288>,  <43.764790, 45.197083, 33.353745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946335, 44.864609, 33.225288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073480, 0.324262, -0.943109,
		0.888036, 0.451641, 0.086095,
		0.453864, -0.831188, -0.321143,
		44.082493, 44.615253, 33.128944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398159, 45.622959, 32.900356>,  <43.764790, 45.197083, 33.353745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398159, 45.622959, 32.900356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.070053, 45.834183, 32.988277>,  <42.873188, 45.960918, 33.041031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.070053, 45.834183, 32.988277>,  <43.398159, 45.622959, 32.900356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070053, 45.834183, 32.988277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426344, 0.308295, 0.850403,
		0.381302, 0.791268, -0.478020,
		-0.820268, 0.528062, 0.219799,
		42.823975, 45.992599, 33.054218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620483, 46.105793, 33.475689>,  <43.398159, 45.622959, 32.900356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620483, 46.105793, 33.475689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222443, 46.106567, 33.515221>,  <42.983620, 46.107033, 33.538940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222443, 46.106567, 33.515221>,  <43.620483, 46.105793, 33.475689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222443, 46.106567, 33.515221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097391, 0.190355, 0.976873,
		-0.016920, 0.981714, -0.189611,
		-0.995103, 0.001938, 0.098830,
		42.923912, 46.107147, 33.544868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473801, 46.766312, 33.716709>,  <43.620483, 46.105793, 33.475689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473801, 46.766312, 33.716709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.146545, 46.556641, 33.811272>,  <42.950191, 46.430840, 33.868011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.146545, 46.556641, 33.811272>,  <43.473801, 46.766312, 33.716709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146545, 46.556641, 33.811272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086160, 0.294740, 0.951685,
		-0.568527, 0.798981, -0.195976,
		-0.818140, -0.524173, 0.236408,
		42.901104, 46.399387, 33.882195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.037796, 47.153069, 34.161465>,  <43.473801, 46.766312, 33.716709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.037796, 47.153069, 34.161465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.923546, 46.784439, 34.266621>,  <42.854996, 46.563259, 34.329716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.923546, 46.784439, 34.266621>,  <43.037796, 47.153069, 34.161465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923546, 46.784439, 34.266621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091123, 0.246963, 0.964731,
		-0.954000, 0.299504, 0.013439,
		-0.285622, -0.921578, 0.262894,
		42.837860, 46.507965, 34.345490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477558, 47.139328, 34.577477>,  <43.037796, 47.153069, 34.161465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477558, 47.139328, 34.577477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602448, 46.770279, 34.668064>,  <42.677380, 46.548851, 34.722416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.602448, 46.770279, 34.668064>,  <42.477558, 47.139328, 34.577477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.602448, 46.770279, 34.668064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006080, 0.236436, 0.971628,
		-0.949990, -0.304740, 0.068211,
		0.312221, -0.922623, 0.226464,
		42.696114, 46.493492, 34.736004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974892, 46.884315, 35.052078>,  <42.477558, 47.139328, 34.577477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974892, 46.884315, 35.052078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.302025, 46.659012, 35.099220>,  <42.498306, 46.523830, 35.127506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.302025, 46.659012, 35.099220>,  <41.974892, 46.884315, 35.052078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302025, 46.659012, 35.099220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080025, 0.091487, 0.992585,
		-0.569865, -0.821199, 0.029746,
		0.817832, -0.563260, 0.117852,
		42.547375, 46.490036, 35.134575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.769833, 46.387413, 35.470650>,  <41.974892, 46.884315, 35.052078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.769833, 46.387413, 35.470650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.157295, 46.313873, 35.537460>,  <42.389774, 46.269749, 35.577545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.157295, 46.313873, 35.537460>,  <41.769833, 46.387413, 35.470650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.157295, 46.313873, 35.537460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154922, 0.078436, 0.984808,
		-0.194157, -0.979820, 0.047496,
		0.968660, -0.183849, 0.167024,
		42.447895, 46.258720, 35.587566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812466, 45.950653, 36.064133>,  <41.769833, 46.387413, 35.470650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812466, 45.950653, 36.064133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.168846, 46.132072, 36.055141>,  <42.382675, 46.240925, 36.049747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.168846, 46.132072, 36.055141>,  <41.812466, 45.950653, 36.064133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168846, 46.132072, 36.055141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033396, 0.114818, 0.992825,
		0.452875, -0.883805, 0.117443,
		0.890948, 0.453547, -0.022482,
		42.436131, 46.268135, 36.048397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289642, 45.528561, 36.637703>,  <41.812466, 45.950653, 36.064133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289642, 45.528561, 36.637703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.452187, 45.885708, 36.560081>,  <42.549713, 46.099995, 36.513508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.452187, 45.885708, 36.560081>,  <42.289642, 45.528561, 36.637703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452187, 45.885708, 36.560081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220615, 0.110218, 0.969113,
		0.886679, -0.436620, -0.152192,
		0.406360, 0.892869, -0.194053,
		42.574093, 46.153568, 36.501865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038502, 45.567257, 36.763741>,  <42.289642, 45.528561, 36.637703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038502, 45.567257, 36.763741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.927795, 45.951077, 36.784409>,  <42.861374, 46.181370, 36.796810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.927795, 45.951077, 36.784409>,  <43.038502, 45.567257, 36.763741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927795, 45.951077, 36.784409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375725, 0.058571, 0.924878,
		0.884439, 0.275384, -0.376737,
		-0.276763, 0.959548, 0.051666,
		42.844765, 46.238941, 36.799908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511360, 45.863789, 37.315937>,  <43.038502, 45.567257, 36.763741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511360, 45.863789, 37.315937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.239540, 46.149620, 37.249500>,  <43.076447, 46.321117, 37.209637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.239540, 46.149620, 37.249500>,  <43.511360, 45.863789, 37.315937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239540, 46.149620, 37.249500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034674, 0.257437, 0.965673,
		0.732805, 0.650468, -0.199720,
		-0.679555, 0.714575, -0.166097,
		43.035675, 46.363991, 37.199673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.726463, 46.460106, 37.622383>,  <43.511360, 45.863789, 37.315937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.726463, 46.460106, 37.622383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.338699, 46.553864, 37.593246>,  <43.106041, 46.610119, 37.575764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.338699, 46.553864, 37.593246>,  <43.726463, 46.460106, 37.622383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.338699, 46.553864, 37.593246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021388, 0.214985, 0.976383,
		0.244522, 0.948071, -0.203395,
		-0.969408, 0.234397, -0.072846,
		43.047878, 46.624184, 37.571392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684589, 47.138565, 37.929115>,  <43.726463, 46.460106, 37.622383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684589, 47.138565, 37.929115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.331490, 46.950905, 37.939346>,  <43.119629, 46.838306, 37.945484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.331490, 46.950905, 37.939346>,  <43.684589, 47.138565, 37.929115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331490, 46.950905, 37.939346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025937, 0.103011, 0.994342,
		-0.469135, 0.877087, -0.103101,
		-0.882746, -0.469155, 0.025577,
		43.066666, 46.810158, 37.947018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198418, 47.528027, 38.338211>,  <43.684589, 47.138565, 37.929115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198418, 47.528027, 38.338211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.041695, 47.160080, 38.345459>,  <42.947659, 46.939312, 38.349808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.041695, 47.160080, 38.345459>,  <43.198418, 47.528027, 38.338211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041695, 47.160080, 38.345459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130759, 0.075165, 0.988561,
		-0.910707, 0.384958, -0.149732,
		-0.391809, -0.919868, 0.018117,
		42.924152, 46.884121, 38.350895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722382, 47.595261, 38.875835>,  <43.198418, 47.528027, 38.338211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722382, 47.595261, 38.875835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778961, 47.202934, 38.822178>,  <42.812908, 46.967537, 38.789986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778961, 47.202934, 38.822178>,  <42.722382, 47.595261, 38.875835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778961, 47.202934, 38.822178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038305, -0.140826, 0.989293,
		-0.989204, -0.134795, -0.057490,
		0.141448, -0.980815, -0.134142,
		42.821396, 46.908691, 38.781937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.187153, 47.220142, 39.290695>,  <42.722382, 47.595261, 38.875835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.187153, 47.220142, 39.290695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.481483, 46.954269, 39.238914>,  <42.658081, 46.794746, 39.207848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.481483, 46.954269, 39.238914>,  <42.187153, 47.220142, 39.290695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481483, 46.954269, 39.238914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043361, -0.144522, 0.988551,
		-0.675783, -0.733013, -0.077522,
		0.735825, -0.664684, -0.129450,
		42.702232, 46.754864, 39.200081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001034, 46.612202, 39.645515>,  <42.187153, 47.220142, 39.290695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001034, 46.612202, 39.645515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.398575, 46.585869, 39.609909>,  <42.637100, 46.570068, 39.588547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.398575, 46.585869, 39.609909>,  <42.001034, 46.612202, 39.645515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.398575, 46.585869, 39.609909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076006, -0.178857, 0.980935,
		-0.080500, -0.981670, -0.172753,
		0.993853, -0.065835, -0.089011,
		42.696732, 46.566116, 39.583206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179024, 45.982468, 40.018703>,  <42.001034, 46.612202, 39.645515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179024, 45.982468, 40.018703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536316, 46.160080, 39.990467>,  <42.750690, 46.266647, 39.973526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536316, 46.160080, 39.990467>,  <42.179024, 45.982468, 40.018703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536316, 46.160080, 39.990467> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174765, -0.198243, 0.964446,
		0.414251, -0.873805, -0.254677,
		0.893226, 0.444032, -0.070588,
		42.804283, 46.293289, 39.969292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694443, 45.518421, 40.204178>,  <42.179024, 45.982468, 40.018703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694443, 45.518421, 40.204178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.865746, 45.874573, 40.265915>,  <42.968529, 46.088264, 40.302959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.865746, 45.874573, 40.265915>,  <42.694443, 45.518421, 40.204178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865746, 45.874573, 40.265915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268891, -0.288623, 0.918909,
		0.862723, -0.352030, -0.363020,
		0.428260, 0.890377, 0.154344,
		42.994225, 46.141685, 40.312218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349014, 45.346691, 40.513836>,  <42.694443, 45.518421, 40.204178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349014, 45.346691, 40.513836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.253044, 45.727768, 40.588474>,  <43.195461, 45.956413, 40.633255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.253044, 45.727768, 40.588474>,  <43.349014, 45.346691, 40.513836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253044, 45.727768, 40.588474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225940, -0.132129, 0.965139,
		0.944133, 0.273719, -0.183550,
		-0.239924, 0.952691, 0.186592,
		43.181068, 46.013577, 40.644451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846752, 45.484703, 40.932045>,  <43.349014, 45.346691, 40.513836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846752, 45.484703, 40.932045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.593262, 45.781574, 41.019279>,  <43.441170, 45.959698, 41.071621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.593262, 45.781574, 41.019279>,  <43.846752, 45.484703, 40.932045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593262, 45.781574, 41.019279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227171, -0.090942, 0.969599,
		0.739452, 0.664000, -0.110970,
		-0.633722, 0.742181, 0.218089,
		43.403145, 46.004230, 41.084705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222382, 45.983395, 41.286629>,  <43.846752, 45.484703, 40.932045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222382, 45.983395, 41.286629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837273, 46.049866, 41.371918>,  <43.606209, 46.089748, 41.423092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837273, 46.049866, 41.371918>,  <44.222382, 45.983395, 41.286629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837273, 46.049866, 41.371918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219287, 0.018850, 0.975478,
		0.158079, 0.985916, -0.054587,
		-0.962769, 0.166173, 0.213219,
		43.548443, 46.099716, 41.435883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.240658, 46.331131, 41.972267>,  <44.222382, 45.983395, 41.286629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.240658, 46.331131, 41.972267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.867340, 46.198875, 41.916222>,  <43.643349, 46.119522, 41.882595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.867340, 46.198875, 41.916222>,  <44.240658, 46.331131, 41.972267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867340, 46.198875, 41.916222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091440, -0.158492, 0.983117,
		-0.347264, 0.930354, 0.117687,
		-0.933299, -0.330640, -0.140110,
		43.587349, 46.099682, 41.874187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763306, 46.801506, 42.446449>,  <44.240658, 46.331131, 41.972267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763306, 46.801506, 42.446449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.612061, 46.439919, 42.366585>,  <43.521313, 46.222965, 42.318665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.612061, 46.439919, 42.366585>,  <43.763306, 46.801506, 42.446449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.612061, 46.439919, 42.366585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137831, -0.268239, 0.953441,
		-0.915441, 0.332991, 0.226020,
		-0.378115, -0.903972, -0.199660,
		43.498627, 46.168728, 42.306686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466019, 46.557777, 43.110050>,  <43.763306, 46.801506, 42.446449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466019, 46.557777, 43.110050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.428352, 46.205788, 42.923817>,  <43.405754, 45.994595, 42.812077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.428352, 46.205788, 42.923817>,  <43.466019, 46.557777, 43.110050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.428352, 46.205788, 42.923817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010826, -0.468543, 0.883374,
		-0.995498, 0.078141, 0.053646,
		-0.094163, -0.879978, -0.465588,
		43.400105, 45.941795, 42.784142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950592, 46.122269, 43.435707>,  <43.466019, 46.557777, 43.110050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950592, 46.122269, 43.435707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.192062, 45.868534, 43.242546>,  <43.336945, 45.716293, 43.126652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.192062, 45.868534, 43.242546>,  <42.950592, 46.122269, 43.435707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192062, 45.868534, 43.242546> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043556, -0.631057, 0.774512,
		-0.796042, -0.446519, -0.408581,
		0.603672, -0.634340, -0.482900,
		43.373165, 45.678230, 43.097675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593498, 45.523849, 43.404034>,  <42.950592, 46.122269, 43.435707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593498, 45.523849, 43.404034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.983887, 45.442863, 43.371803>,  <43.218121, 45.394272, 43.352467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.983887, 45.442863, 43.371803>,  <42.593498, 45.523849, 43.404034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983887, 45.442863, 43.371803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060447, -0.606794, 0.792557,
		-0.209361, -0.768640, -0.604451,
		0.975968, -0.202468, -0.080577,
		43.276676, 45.382122, 43.347630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670063, 44.825401, 43.583408>,  <42.593498, 45.523849, 43.404034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670063, 44.825401, 43.583408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039116, 44.954651, 43.667633>,  <43.260548, 45.032200, 43.718166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039116, 44.954651, 43.667633>,  <42.670063, 44.825401, 43.583408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039116, 44.954651, 43.667633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029790, -0.484613, 0.874221,
		0.384520, -0.812861, -0.437496,
		0.922636, 0.323122, 0.210559,
		43.315907, 45.051586, 43.730801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031101, 44.320023, 43.960094>,  <42.670063, 44.825401, 43.583408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031101, 44.320023, 43.960094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.240288, 44.649948, 44.046059>,  <43.365799, 44.847904, 44.097637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.240288, 44.649948, 44.046059>,  <43.031101, 44.320023, 43.960094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240288, 44.649948, 44.046059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149903, -0.337205, 0.929420,
		0.839070, -0.453838, -0.299989,
		0.522964, 0.824817, 0.214907,
		43.397179, 44.897392, 44.110531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.663334, 44.037884, 44.373878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710266, 44.428925, 44.443768>,  <43.738426, 44.663548, 44.485703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710266, 44.428925, 44.443768>,  <43.663334, 44.037884, 44.373878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.710266, 44.428925, 44.443768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405769, -0.207777, 0.890045,
		0.906413, -0.033535, -0.421059,
		0.117334, 0.977601, 0.174724,
		43.745468, 44.722206, 44.496185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.361740, 44.144131, 44.513897>,  <43.663334, 44.037884, 44.373878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.361740, 44.144131, 44.513897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139107, 44.431572, 44.680664>,  <44.005527, 44.604038, 44.780724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139107, 44.431572, 44.680664>,  <44.361740, 44.144131, 44.513897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.139107, 44.431572, 44.680664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428069, -0.182037, 0.885223,
		0.712020, 0.671170, -0.206294,
		-0.556582, 0.718605, 0.416921,
		43.972134, 44.647152, 44.805740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713451, 44.487282, 45.023537>,  <44.361740, 44.144131, 44.513897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713451, 44.487282, 45.023537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339188, 44.555637, 45.147045>,  <44.114628, 44.596649, 45.221149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339188, 44.555637, 45.147045>,  <44.713451, 44.487282, 45.023537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339188, 44.555637, 45.147045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346207, 0.274854, 0.896993,
		0.068416, 0.946178, -0.316332,
		-0.935660, 0.170885, 0.308769,
		44.058491, 44.606903, 45.239677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268372, 44.974365, 45.102085>,  <44.713451, 44.487282, 45.023537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268372, 44.974365, 45.102085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616264, 44.779755, 45.135227>,  <45.825001, 44.662991, 45.155113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616264, 44.779755, 45.135227>,  <45.268372, 44.974365, 45.102085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.616264, 44.779755, 45.135227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209379, 0.211729, -0.954637,
		0.446912, 0.847623, 0.286015,
		0.869730, -0.486524, 0.082851,
		45.877182, 44.633797, 45.160084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.685013, 45.385021, 44.760506>,  <45.268372, 44.974365, 45.102085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.685013, 45.385021, 44.760506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840202, 45.016357, 44.762482>,  <45.933315, 44.795158, 44.763668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.840202, 45.016357, 44.762482>,  <45.685013, 45.385021, 44.760506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.840202, 45.016357, 44.762482> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330111, 0.133952, -0.934390,
		0.860525, 0.364150, 0.356219,
		0.387974, -0.921657, 0.004941,
		45.956596, 44.739861, 44.763966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.382145, 45.503796, 44.520882>,  <45.685013, 45.385021, 44.760506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.382145, 45.503796, 44.520882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282967, 45.120186, 44.466049>,  <46.223461, 44.890018, 44.433151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282967, 45.120186, 44.466049>,  <46.382145, 45.503796, 44.520882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.282967, 45.120186, 44.466049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348707, 0.043666, -0.936214,
		0.903840, -0.279933, 0.323592,
		-0.247947, -0.959026, -0.137081,
		46.208584, 44.832478, 44.424923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.868149, 45.280285, 44.044514>,  <46.382145, 45.503796, 44.520882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.868149, 45.280285, 44.044514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.600235, 44.984211, 44.020809>,  <46.439487, 44.806564, 44.006588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.600235, 44.984211, 44.020809>,  <46.868149, 45.280285, 44.044514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.600235, 44.984211, 44.020809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091516, -0.003090, -0.995799,
		0.736896, -0.672392, 0.069809,
		-0.669782, -0.740189, -0.059258,
		46.399300, 44.762154, 44.003033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.252312, 44.713879, 43.645901>,  <46.868149, 45.280285, 44.044514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.252312, 44.713879, 43.645901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854462, 44.682968, 43.618359>,  <46.615749, 44.664421, 43.601833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854462, 44.682968, 43.618359>,  <47.252312, 44.713879, 43.645901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.854462, 44.682968, 43.618359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088982, -0.298548, -0.950238,
		0.052877, -0.951261, 0.303820,
		-0.994628, -0.077280, -0.068859,
		46.556072, 44.659782, 43.597702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.062031, 44.023262, 43.319122>,  <47.252312, 44.713879, 43.645901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.062031, 44.023262, 43.319122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.740349, 44.256573, 43.273434>,  <46.547340, 44.396561, 43.246021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.740349, 44.256573, 43.273434>,  <47.062031, 44.023262, 43.319122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.740349, 44.256573, 43.273434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059198, -0.269823, -0.961089,
		-0.591403, -0.766146, 0.251521,
		-0.804200, 0.583281, -0.114220,
		46.499088, 44.431557, 43.239166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.655334, 43.658089, 42.739914>,  <47.062031, 44.023262, 43.319122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.655334, 43.658089, 42.739914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.546875, 44.042839, 42.754200>,  <46.481800, 44.273689, 42.762772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.546875, 44.042839, 42.754200>,  <46.655334, 43.658089, 42.739914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546875, 44.042839, 42.754200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115039, 0.004456, -0.993351,
		-0.955637, -0.273457, 0.109445,
		-0.271151, 0.961874, 0.035716,
		46.465530, 44.331402, 42.764915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127911, 43.640568, 42.293976>,  <46.655334, 43.658089, 42.739914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127911, 43.640568, 42.293976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.215927, 44.028568, 42.335304>,  <46.268738, 44.261368, 42.360100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.215927, 44.028568, 42.335304>,  <46.127911, 43.640568, 42.293976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.215927, 44.028568, 42.335304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167597, 0.141933, -0.975585,
		-0.960986, 0.197351, 0.193801,
		0.220039, 0.970004, 0.103320,
		46.281940, 44.319569, 42.366299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673378, 44.099655, 41.874329>,  <46.127911, 43.640568, 42.293976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673378, 44.099655, 41.874329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.000229, 44.325706, 41.919815>,  <46.196339, 44.461338, 41.947105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.000229, 44.325706, 41.919815>,  <45.673378, 44.099655, 41.874329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000229, 44.325706, 41.919815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088208, 0.317528, -0.944137,
		-0.569664, 0.761452, 0.309310,
		0.817130, 0.565125, 0.113718,
		46.245369, 44.495243, 41.953930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475574, 44.593624, 41.419724>,  <45.673378, 44.099655, 41.874329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475574, 44.593624, 41.419724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864662, 44.663692, 41.480568>,  <46.098114, 44.705734, 41.517075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864662, 44.663692, 41.480568>,  <45.475574, 44.593624, 41.419724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864662, 44.663692, 41.480568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072151, 0.394753, -0.915950,
		-0.220492, 0.901935, 0.371344,
		0.972717, 0.175167, 0.152116,
		46.156479, 44.716244, 41.526203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.611897, 45.294930, 41.252262>,  <45.475574, 44.593624, 41.419724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.611897, 45.294930, 41.252262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970551, 45.119896, 41.225212>,  <46.185741, 45.014877, 41.208981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970551, 45.119896, 41.225212>,  <45.611897, 45.294930, 41.252262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.970551, 45.119896, 41.225212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174757, 0.490066, -0.853988,
		0.406828, 0.753896, 0.515880,
		0.896633, -0.437580, -0.067624,
		46.239540, 44.988621, 41.204926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.037659, 45.816357, 40.929016>,  <45.611897, 45.294930, 41.252262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.037659, 45.816357, 40.929016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.192154, 45.456753, 40.846455>,  <46.284851, 45.240990, 40.796917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.192154, 45.456753, 40.846455>,  <46.037659, 45.816357, 40.929016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.192154, 45.456753, 40.846455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049940, 0.203064, -0.977891,
		0.921045, 0.388010, 0.033535,
		0.386241, -0.899007, -0.206408,
		46.308025, 45.187050, 40.784531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.540878, 45.973446, 40.441093>,  <46.037659, 45.816357, 40.929016>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.540878, 45.973446, 40.441093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.480316, 45.579418, 40.408318>,  <46.443977, 45.343002, 40.388653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.480316, 45.579418, 40.408318>,  <46.540878, 45.973446, 40.441093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.480316, 45.579418, 40.408318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014531, 0.085102, -0.996266,
		0.988365, -0.149651, -0.027199,
		-0.151407, -0.985070, -0.081938,
		46.434895, 45.283897, 40.383736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.076920, 45.705605, 39.952377>,  <46.540878, 45.973446, 40.441093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.076920, 45.705605, 39.952377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.773705, 45.444843, 39.944359>,  <46.591774, 45.288387, 39.939548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.773705, 45.444843, 39.944359>,  <47.076920, 45.705605, 39.952377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773705, 45.444843, 39.944359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024021, 0.058616, -0.997992,
		0.651765, -0.756036, -0.060092,
		-0.758040, -0.651900, -0.020043,
		46.546291, 45.249275, 39.938347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.237701, 45.288242, 39.388493>,  <47.076920, 45.705605, 39.952377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.237701, 45.288242, 39.388493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.858803, 45.183971, 39.463085>,  <46.631466, 45.121407, 39.507839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.858803, 45.183971, 39.463085>,  <47.237701, 45.288242, 39.388493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.858803, 45.183971, 39.463085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196625, 0.013154, -0.980391,
		0.253115, -0.965336, -0.063716,
		-0.947244, -0.260679, 0.186479,
		46.574631, 45.105766, 39.519028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.039501, 44.628078, 38.970379>,  <47.237701, 45.288242, 39.388493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.039501, 44.628078, 38.970379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.706429, 44.826195, 39.069431>,  <46.506584, 44.945065, 39.128864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.706429, 44.826195, 39.069431>,  <47.039501, 44.628078, 38.970379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.706429, 44.826195, 39.069431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334625, -0.093754, -0.937676,
		-0.441207, -0.863652, 0.243805,
		-0.832684, 0.495293, 0.247635,
		46.456623, 44.974781, 39.143723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.460835, 44.139442, 38.889874>,  <47.039501, 44.628078, 38.970379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.460835, 44.139442, 38.889874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282333, 44.497276, 38.880249>,  <46.175232, 44.711975, 38.874474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282333, 44.497276, 38.880249>,  <46.460835, 44.139442, 38.889874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.282333, 44.497276, 38.880249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376181, -0.211919, -0.901986,
		-0.812000, -0.393462, 0.431095,
		-0.446254, 0.894582, -0.024065,
		46.148457, 44.765652, 38.873028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.833019, 43.973728, 38.566601>,  <46.460835, 44.139442, 38.889874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.833019, 43.973728, 38.566601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850693, 44.371704, 38.530518>,  <45.861298, 44.610489, 38.508865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850693, 44.371704, 38.530518>,  <45.833019, 43.973728, 38.566601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850693, 44.371704, 38.530518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301584, -0.072804, -0.950656,
		-0.952415, 0.069211, 0.296842,
		0.044184, 0.994942, -0.090212,
		45.863949, 44.670185, 38.503452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.108387, 44.156914, 38.310146>,  <45.833019, 43.973728, 38.566601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.108387, 44.156914, 38.310146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355927, 44.457462, 38.218529>,  <45.504452, 44.637791, 38.163559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355927, 44.457462, 38.218529>,  <45.108387, 44.156914, 38.310146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.355927, 44.457462, 38.218529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414983, 0.065156, -0.907493,
		-0.666941, 0.656655, 0.352128,
		0.618853, 0.751372, -0.229045,
		45.541584, 44.682873, 38.149815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689171, 44.683403, 37.999233>,  <45.108387, 44.156914, 38.310146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689171, 44.683403, 37.999233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.058685, 44.715973, 37.849579>,  <45.280396, 44.735516, 37.759785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.058685, 44.715973, 37.849579>,  <44.689171, 44.683403, 37.999233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058685, 44.715973, 37.849579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379543, 0.065664, -0.922841,
		-0.050576, 0.994514, 0.091564,
		0.923791, 0.081426, -0.374140,
		45.335823, 44.740402, 37.737335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648899, 45.162315, 37.427433>,  <44.689171, 44.683403, 37.999233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648899, 45.162315, 37.427433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996246, 44.977821, 37.354546>,  <45.204655, 44.867126, 37.310814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996246, 44.977821, 37.354546>,  <44.648899, 45.162315, 37.427433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.996246, 44.977821, 37.354546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215645, -0.020299, -0.976261,
		0.446588, 0.887045, -0.117090,
		0.868364, -0.461236, -0.182221,
		45.256756, 44.839451, 37.299881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957878, 45.515690, 36.934616>,  <44.648899, 45.162315, 37.427433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957878, 45.515690, 36.934616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161781, 45.172333, 36.911617>,  <45.284122, 44.966320, 36.897820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.161781, 45.172333, 36.911617>,  <44.957878, 45.515690, 36.934616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161781, 45.172333, 36.911617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198002, -0.052022, -0.978820,
		0.837221, 0.510349, -0.196482,
		0.509762, -0.858392, -0.057497,
		45.314709, 44.914814, 36.894367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433117, 45.609150, 36.383461>,  <44.957878, 45.515690, 36.934616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433117, 45.609150, 36.383461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433189, 45.213619, 36.443092>,  <45.433231, 44.976299, 36.478870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433189, 45.213619, 36.443092>,  <45.433117, 45.609150, 36.383461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.433189, 45.213619, 36.443092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074264, -0.148677, -0.986093,
		0.997239, -0.010896, -0.073460,
		0.000177, -0.988826, 0.149075,
		45.433243, 44.916973, 36.487816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859184, 45.354607, 35.867878>,  <45.433117, 45.609150, 36.383461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859184, 45.354607, 35.867878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.597054, 45.075226, 35.982910>,  <45.439774, 44.907597, 36.051929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.597054, 45.075226, 35.982910>,  <45.859184, 45.354607, 35.867878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.597054, 45.075226, 35.982910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261963, -0.146941, -0.953826,
		0.708461, -0.700407, -0.086674,
		-0.655330, -0.698454, 0.287583,
		45.400455, 44.865688, 36.069183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864891, 44.921623, 35.359402>,  <45.859184, 45.354607, 35.867878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864891, 44.921623, 35.359402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.542259, 44.775620, 35.545391>,  <45.348682, 44.688015, 35.656986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.542259, 44.775620, 35.545391>,  <45.864891, 44.921623, 35.359402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.542259, 44.775620, 35.545391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357744, -0.324776, -0.875522,
		0.470589, -0.872517, 0.131376,
		-0.806577, -0.365012, 0.464974,
		45.300285, 44.666115, 35.684883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.784340, 44.250065, 35.060135>,  <45.864891, 44.921623, 35.359402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.784340, 44.250065, 35.060135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420998, 44.345196, 35.197727>,  <45.202991, 44.402275, 35.280285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420998, 44.345196, 35.197727>,  <45.784340, 44.250065, 35.060135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420998, 44.345196, 35.197727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403373, -0.281235, -0.870745,
		-0.110343, -0.929703, 0.351394,
		-0.908358, 0.237823, 0.343984,
		45.148491, 44.416542, 35.300922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.328995, 43.616131, 34.826656>,  <45.784340, 44.250065, 35.060135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.328995, 43.616131, 34.826656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082664, 43.917118, 34.920074>,  <44.934868, 44.097710, 34.976128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082664, 43.917118, 34.920074>,  <45.328995, 43.616131, 34.826656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082664, 43.917118, 34.920074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475821, -0.118933, -0.871464,
		-0.627975, -0.647798, 0.431283,
		-0.615827, 0.752471, 0.233549,
		44.897915, 44.142860, 34.990139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623119, 43.396927, 34.806759>,  <45.328995, 43.616131, 34.826656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623119, 43.396927, 34.806759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636375, 43.787971, 34.723640>,  <44.644329, 44.022598, 34.673771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636375, 43.787971, 34.723640>,  <44.623119, 43.396927, 34.806759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636375, 43.787971, 34.723640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502529, -0.163419, -0.848975,
		-0.863925, 0.132559, 0.485862,
		0.033140, 0.977610, -0.207797,
		44.646317, 44.081253, 34.661301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999592, 43.519665, 34.473251>,  <44.623119, 43.396927, 34.806759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999592, 43.519665, 34.473251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211678, 43.835541, 34.349792>,  <44.338928, 44.025066, 34.275719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211678, 43.835541, 34.349792>,  <43.999592, 43.519665, 34.473251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.211678, 43.835541, 34.349792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389513, -0.096470, -0.915955,
		-0.753093, 0.605877, 0.256444,
		0.530217, 0.789687, -0.308648,
		44.370743, 44.072449, 34.257198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.018173, 43.717800, 46.606361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.076393, 44.105087, 46.524994>,  <46.111324, 44.337460, 46.476173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.076393, 44.105087, 46.524994>,  <46.018173, 43.717800, 46.606361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.076393, 44.105087, 46.524994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206727, -0.171307, -0.963285,
		-0.967512, 0.182254, 0.175223,
		0.145546, 0.968213, -0.203418,
		46.120056, 44.395550, 46.463970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400738, 43.985073, 46.198235>,  <46.018173, 43.717800, 46.606361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400738, 43.985073, 46.198235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.731873, 44.198471, 46.128860>,  <45.930553, 44.326508, 46.087238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.731873, 44.198471, 46.128860>,  <45.400738, 43.985073, 46.198235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731873, 44.198471, 46.128860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219829, 0.024073, -0.975241,
		-0.516109, 0.845462, 0.137206,
		0.827833, 0.533492, -0.173433,
		45.980221, 44.358521, 46.076832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.140511, 44.316540, 45.712967>,  <45.400738, 43.985073, 46.198235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.140511, 44.316540, 45.712967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.533501, 44.382626, 45.678467>,  <45.769295, 44.422276, 45.657768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.533501, 44.382626, 45.678467>,  <45.140511, 44.316540, 45.712967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533501, 44.382626, 45.678467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069123, -0.106764, -0.991879,
		-0.173079, 0.980462, -0.093474,
		0.982479, 0.165212, -0.086251,
		45.828243, 44.432190, 45.652592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782654, 45.038666, 45.703480>,  <45.140511, 44.316540, 45.712967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782654, 45.038666, 45.703480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.403511, 44.912186, 45.687527>,  <44.176025, 44.836296, 45.677956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.403511, 44.912186, 45.687527>,  <44.782654, 45.038666, 45.703480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403511, 44.912186, 45.687527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039116, -0.008758, 0.999196,
		-0.316295, 0.948652, -0.004067,
		-0.947854, -0.316200, -0.039878,
		44.119156, 44.817326, 45.675564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397240, 45.468010, 46.175095>,  <44.782654, 45.038666, 45.703480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397240, 45.468010, 46.175095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.173904, 45.138397, 46.136662>,  <44.039902, 44.940628, 46.113602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.173904, 45.138397, 46.136662>,  <44.397240, 45.468010, 46.175095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173904, 45.138397, 46.136662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236705, 0.047231, 0.970433,
		-0.795129, 0.564572, -0.221423,
		-0.558338, -0.824031, -0.096083,
		44.006405, 44.891190, 46.107838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750759, 45.630592, 46.468239>,  <44.397240, 45.468010, 46.175095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750759, 45.630592, 46.468239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.766914, 45.231785, 46.494522>,  <43.776608, 44.992500, 46.510292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.766914, 45.231785, 46.494522>,  <43.750759, 45.630592, 46.468239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766914, 45.231785, 46.494522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145499, 0.059192, 0.987586,
		-0.988534, -0.049444, -0.142675,
		0.040385, -0.997021, 0.065707,
		43.779030, 44.932678, 46.514233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.217110, 45.518967, 46.925663>,  <43.750759, 45.630592, 46.468239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.217110, 45.518967, 46.925663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.410950, 45.169071, 46.925739>,  <43.527256, 44.959133, 46.925785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.410950, 45.169071, 46.925739>,  <43.217110, 45.518967, 46.925663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.410950, 45.169071, 46.925739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296210, -0.163890, 0.940957,
		-0.823055, -0.456048, -0.338526,
		0.484603, -0.874734, 0.000195,
		43.556332, 44.906651, 46.925797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690060, 45.054104, 47.131023>,  <43.217110, 45.518967, 46.925663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690060, 45.054104, 47.131023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.048172, 44.885731, 47.189392>,  <43.263039, 44.784706, 47.224415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.048172, 44.885731, 47.189392>,  <42.690060, 45.054104, 47.131023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048172, 44.885731, 47.189392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276824, -0.268976, 0.922508,
		-0.349066, -0.866295, -0.357333,
		0.895277, -0.420934, 0.145921,
		43.316757, 44.759453, 47.233170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589264, 44.376102, 47.419449>,  <42.690060, 45.054104, 47.131023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589264, 44.376102, 47.419449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.962006, 44.486115, 47.514114>,  <43.185650, 44.552120, 47.570911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.962006, 44.486115, 47.514114>,  <42.589264, 44.376102, 47.419449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962006, 44.486115, 47.514114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191157, -0.182261, 0.964490,
		0.308397, -0.944002, -0.117266,
		0.931853, 0.275029, 0.236661,
		43.241562, 44.568623, 47.585114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801666, 43.779274, 47.774612>,  <42.589264, 44.376102, 47.419449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801666, 43.779274, 47.774612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.024773, 44.088867, 47.894508>,  <43.158638, 44.274624, 47.966446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.024773, 44.088867, 47.894508>,  <42.801666, 43.779274, 47.774612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.024773, 44.088867, 47.894508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105866, -0.291841, 0.950590,
		0.823219, -0.561939, -0.080840,
		0.557765, 0.773986, 0.299739,
		43.192101, 44.321064, 47.984428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225880, 43.544407, 48.278675>,  <42.801666, 43.779274, 47.774612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225880, 43.544407, 48.278675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.246262, 43.940472, 48.330795>,  <43.258492, 44.178112, 48.362068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.246262, 43.940472, 48.330795>,  <43.225880, 43.544407, 48.278675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246262, 43.940472, 48.330795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146519, -0.121642, 0.981700,
		0.987894, -0.069116, 0.138880,
		0.050958, 0.990165, 0.130297,
		43.261547, 44.237522, 48.369884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644211, 43.659920, 48.877369>,  <43.225880, 43.544407, 48.278675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644211, 43.659920, 48.877369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.429985, 43.993824, 48.826241>,  <43.301449, 44.194168, 48.795563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.429985, 43.993824, 48.826241>,  <43.644211, 43.659920, 48.877369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429985, 43.993824, 48.826241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135536, 0.064435, 0.988675,
		0.833545, 0.546827, 0.078632,
		-0.535568, 0.834763, -0.127825,
		43.269314, 44.244251, 48.787891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.891861, 44.170410, 49.200821>,  <43.644211, 43.659920, 48.877369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.891861, 44.170410, 49.200821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.515320, 44.299988, 49.163033>,  <43.289394, 44.377735, 49.140358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.515320, 44.299988, 49.163033>,  <43.891861, 44.170410, 49.200821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515320, 44.299988, 49.163033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032488, 0.191671, 0.980921,
		0.335867, 0.926459, -0.169905,
		-0.941349, 0.323940, -0.094475,
		43.232914, 44.397171, 49.134689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916100, 44.806713, 49.624401>,  <43.891861, 44.170410, 49.200821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916100, 44.806713, 49.624401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.527634, 44.714596, 49.599724>,  <43.294556, 44.659325, 49.584919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.527634, 44.714596, 49.599724>,  <43.916100, 44.806713, 49.624401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527634, 44.714596, 49.599724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134646, 0.316253, 0.939071,
		-0.196748, 0.920299, -0.338141,
		-0.971165, -0.230290, -0.061693,
		43.236286, 44.645508, 49.581215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617764, 45.429695, 50.010429>,  <43.916100, 44.806713, 49.624401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617764, 45.429695, 50.010429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.324066, 45.158302, 50.001099>,  <43.147846, 44.995464, 49.995499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.324066, 45.158302, 50.001099>,  <43.617764, 45.429695, 50.010429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324066, 45.158302, 50.001099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300969, 0.294515, 0.907016,
		-0.608525, 0.672993, -0.420449,
		-0.734244, -0.678485, -0.023330,
		43.103794, 44.954758, 49.994099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821671, 45.758121, 50.163395>,  <43.617764, 45.429695, 50.010429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821671, 45.758121, 50.163395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.782326, 45.365364, 50.228157>,  <42.758720, 45.129711, 50.267014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.782326, 45.365364, 50.228157>,  <42.821671, 45.758121, 50.163395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.782326, 45.365364, 50.228157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507198, 0.189443, 0.840751,
		-0.856198, 0.000576, -0.516647,
		-0.098359, -0.981892, 0.161909,
		42.752819, 45.070797, 50.276730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183098, 45.799896, 50.370773>,  <42.821671, 45.758121, 50.163395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183098, 45.799896, 50.370773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.290627, 45.431519, 50.483627>,  <42.355145, 45.210491, 50.551338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.290627, 45.431519, 50.483627>,  <42.183098, 45.799896, 50.370773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290627, 45.431519, 50.483627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475883, 0.127676, 0.870192,
		-0.837420, -0.368186, -0.403940,
		0.268819, -0.920944, 0.282131,
		42.371273, 45.155235, 50.568268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594395, 45.418556, 50.558281>,  <42.183098, 45.799896, 50.370773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594395, 45.418556, 50.558281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.874916, 45.217552, 50.760532>,  <42.043228, 45.096951, 50.881882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.874916, 45.217552, 50.760532>,  <41.594395, 45.418556, 50.558281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874916, 45.217552, 50.760532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537413, 0.093330, 0.838139,
		-0.468365, -0.859518, -0.204604,
		0.701300, -0.502512, 0.505629,
		42.085304, 45.066799, 50.912220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149284, 45.061745, 51.035355>,  <41.594395, 45.418556, 50.558281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149284, 45.061745, 51.035355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.532814, 45.082195, 51.147095>,  <41.762932, 45.094467, 51.214138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.532814, 45.082195, 51.147095>,  <41.149284, 45.061745, 51.035355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532814, 45.082195, 51.147095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283416, 0.109724, 0.952699,
		0.018053, -0.992647, 0.119696,
		0.958827, 0.051122, 0.279351,
		41.820461, 45.097534, 51.230900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255573, 44.517406, 51.626163>,  <41.149284, 45.061745, 51.035355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255573, 44.517406, 51.626163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.554100, 44.782696, 51.648605>,  <41.733215, 44.941868, 51.662071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.554100, 44.782696, 51.648605>,  <41.255573, 44.517406, 51.626163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554100, 44.782696, 51.648605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151997, 0.087752, 0.984478,
		0.648006, -0.743258, 0.166299,
		0.746314, 0.663225, 0.056109,
		41.777996, 44.981663, 51.665440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679161, 44.279198, 52.158516>,  <41.255573, 44.517406, 51.626163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679161, 44.279198, 52.158516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.747795, 44.672611, 52.135811>,  <41.788975, 44.908657, 52.122189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.747795, 44.672611, 52.135811>,  <41.679161, 44.279198, 52.158516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747795, 44.672611, 52.135811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004071, 0.058329, 0.998289,
		0.985160, -0.171064, 0.014013,
		0.171589, 0.983532, -0.056767,
		41.799271, 44.967670, 52.118782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172905, 44.307331, 52.624741>,  <41.679161, 44.279198, 52.158516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172905, 44.307331, 52.624741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.025818, 44.672878, 52.555893>,  <41.937565, 44.892208, 52.514584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.025818, 44.672878, 52.555893>,  <42.172905, 44.307331, 52.624741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025818, 44.672878, 52.555893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055379, 0.163239, 0.985031,
		0.928287, 0.371747, -0.009417,
		-0.367719, 0.913870, -0.172120,
		41.915501, 44.947041, 52.504257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522640, 44.793091, 52.990536>,  <42.172905, 44.307331, 52.624741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522640, 44.793091, 52.990536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.190506, 45.003429, 52.916756>,  <41.991226, 45.129631, 52.872486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.190506, 45.003429, 52.916756>,  <42.522640, 44.793091, 52.990536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190506, 45.003429, 52.916756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040534, 0.273129, 0.961123,
		0.555783, 0.805534, -0.205474,
		-0.830338, 0.525847, -0.184452,
		41.941406, 45.161182, 52.861420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701176, 45.435497, 53.297993>,  <42.522640, 44.793091, 52.990536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701176, 45.435497, 53.297993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.304695, 45.399254, 53.259384>,  <42.066807, 45.377506, 53.236217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.304695, 45.399254, 53.259384>,  <42.701176, 45.435497, 53.297993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304695, 45.399254, 53.259384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102656, 0.065656, 0.992548,
		-0.083595, 0.993720, -0.074380,
		-0.991198, -0.090608, -0.096523,
		42.007336, 45.372070, 53.230427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367943, 46.129314, 53.480286>,  <42.701176, 45.435497, 53.297993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367943, 46.129314, 53.480286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.125473, 45.814137, 53.523521>,  <41.979992, 45.625031, 53.549461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.125473, 45.814137, 53.523521>,  <42.367943, 46.129314, 53.480286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125473, 45.814137, 53.523521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156230, 0.251227, 0.955237,
		-0.779833, 0.562157, -0.275390,
		-0.606179, -0.787950, 0.108089,
		41.943619, 45.577751, 53.555946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837555, 46.439720, 53.794392>,  <42.367943, 46.129314, 53.480286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837555, 46.439720, 53.794392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.762497, 46.049393, 53.839218>,  <41.717464, 45.815193, 53.866116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.762497, 46.049393, 53.839218>,  <41.837555, 46.439720, 53.794392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762497, 46.049393, 53.839218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399743, 0.180083, 0.898763,
		-0.897215, 0.123850, -0.423870,
		-0.187643, -0.975823, 0.112065,
		41.706203, 45.756645, 53.872837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174522, 46.361248, 53.851704>,  <41.837555, 46.439720, 53.794392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174522, 46.361248, 53.851704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.350121, 46.047348, 54.026726>,  <41.455479, 45.859009, 54.131737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.350121, 46.047348, 54.026726>,  <41.174522, 46.361248, 53.851704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350121, 46.047348, 54.026726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361966, 0.291253, 0.885524,
		-0.822350, -0.547123, -0.156191,
		0.439000, -0.784747, 0.437552,
		41.481819, 45.811924, 54.157993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758530, 46.098099, 54.310879>,  <41.174522, 46.361248, 53.851704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758530, 46.098099, 54.310879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.096443, 45.930164, 54.443588>,  <41.299191, 45.829403, 54.523212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.096443, 45.930164, 54.443588>,  <40.758530, 46.098099, 54.310879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096443, 45.930164, 54.443588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276389, 0.188558, 0.942367,
		-0.458202, -0.887795, 0.043251,
		0.844784, -0.419840, 0.331775,
		41.349880, 45.804211, 54.543121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548481, 45.578297, 54.829899>,  <40.758530, 46.098099, 54.310879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548481, 45.578297, 54.829899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.924820, 45.672607, 54.927242>,  <41.150623, 45.729195, 54.985649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.924820, 45.672607, 54.927242>,  <40.548481, 45.578297, 54.829899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924820, 45.672607, 54.927242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281966, 0.146517, 0.948171,
		0.187897, -0.960700, 0.204329,
		0.940845, 0.235773, 0.243355,
		41.207073, 45.743340, 55.000248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627495, 45.239525, 55.348156>,  <40.548481, 45.578297, 54.829899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627495, 45.239525, 55.348156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.932121, 45.492630, 55.404205>,  <41.114899, 45.644493, 55.437836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.932121, 45.492630, 55.404205>,  <40.627495, 45.239525, 55.348156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.932121, 45.492630, 55.404205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089585, -0.111361, 0.989734,
		0.641867, -0.766300, -0.028123,
		0.761565, 0.632759, 0.140128,
		41.160591, 45.682457, 55.446243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949924, 44.972157, 55.891811>,  <40.627495, 45.239525, 55.348156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949924, 44.972157, 55.891811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.145363, 45.319710, 55.860004>,  <41.262627, 45.528240, 55.840919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.145363, 45.319710, 55.860004>,  <40.949924, 44.972157, 55.891811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145363, 45.319710, 55.860004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256731, -0.056068, 0.964855,
		0.833885, -0.491838, -0.250462,
		0.488595, 0.868880, -0.079516,
		41.291943, 45.580372, 55.836151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659935, 44.895916, 56.157089>,  <40.949924, 44.972157, 55.891811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659935, 44.895916, 56.157089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.565720, 45.281822, 56.203979>,  <41.509190, 45.513367, 56.232113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.565720, 45.281822, 56.203979>,  <41.659935, 44.895916, 56.157089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565720, 45.281822, 56.203979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261405, -0.053281, 0.963758,
		0.936050, 0.257643, -0.239646,
		-0.235536, 0.964770, 0.117223,
		41.495060, 45.571255, 56.239147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102596, 45.194656, 56.622906>,  <41.659935, 44.895916, 56.157089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102596, 45.194656, 56.622906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.813705, 45.470432, 56.645008>,  <41.640369, 45.635899, 56.658272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.813705, 45.470432, 56.645008>,  <42.102596, 45.194656, 56.622906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.813705, 45.470432, 56.645008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265013, 0.202049, 0.942838,
		0.638867, 0.695590, -0.328637,
		-0.722230, 0.689442, 0.055258,
		41.597034, 45.677265, 56.661587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366467, 45.784332, 56.925312>,  <42.102596, 45.194656, 56.622906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366467, 45.784332, 56.925312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.975769, 45.801357, 57.009369>,  <41.741352, 45.811573, 57.059803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.975769, 45.801357, 57.009369>,  <42.366467, 45.784332, 56.925312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975769, 45.801357, 57.009369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214267, 0.158596, 0.963814,
		0.007692, 0.986426, -0.164027,
		-0.976745, 0.042559, 0.210139,
		41.682747, 45.814125, 57.072411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255672, 46.363186, 57.218262>,  <42.366467, 45.784332, 56.925312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255672, 46.363186, 57.218262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.954781, 46.143860, 57.364410>,  <41.774246, 46.012264, 57.452099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.954781, 46.143860, 57.364410>,  <42.255672, 46.363186, 57.218262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954781, 46.143860, 57.364410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242305, 0.285463, 0.927254,
		-0.612728, 0.786041, -0.081874,
		-0.752231, -0.548316, 0.365373,
		41.729111, 45.979366, 57.474022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 89.760002>,  <89.760002, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 89.760002>,  <89.760002, 0.000000, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <0.000000, 89.760002, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 89.760002, 0.000000>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<89.760002, 0.000000, 89.760002>,  <89.760002, 0.000000, 0.000000>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 89.760002, 0.000000>,  <0.000000, 89.760002, 89.760002>, 0.448800
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
